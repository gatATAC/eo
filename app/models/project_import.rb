class ProjectImport 
  # switch to ActiveModel::Model in Rails 4
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :file, :project_id, :project

  def initialize(attributes = {})
    attributes.each { |name, value| send("#{name}=", value) }
  end

  def persisted?
    false
  end

  def save
    imported_systems
    true
  end

  def imported_systems
    @imported_systems ||= load_imported_systems
  end

  def imported_systems
    spreadsheet = open_spreadsheet

    # Layer
    layer=Layer.find_by_name("Implementation")
    systype=SystemType.find_by_name("Mechanical")
    # Recurrence Times
    ucanca_sheet=spreadsheet.sheet('EoSystems')
    header = ucanca_sheet.row(1)
    (2..ucanca_sheet.last_row).map do |i|
      row = Hash[[header, ucanca_sheet.row(i)].transpose]
      if (row["abbrev"]!=nil && row["abbrev"]!="")
        system = project.systems.find_by_abbrev(row["abbrev"]) || System.new
        system.attributes = row.to_hash.slice(*System.import_attributes)
        system.project = project
        system.layer=layer
        system.system_type=systype
        print "Row: "+row.to_s
        print "\Importamos: "+system.attributes.to_s
        if (row["parent_abbrev"]!=nil && row["parent_abbrev"]!="") then
          parentsystem = project.systems.find_by_abbrev(row["parent_abbrev"])
          system.parent = parentsystem
        end
        if (system.parent==nil) then
          system.root=system
        else
          system.root=system.parent.root
        end
        if (system.valid?)
          system.save!
          system
        else
          system.errors.full_messages.each do |message|
            errors.add :base, "Row #{i+2}: #{message}"
          end
          nil
        end
        # Let's see if we have to create a subsystem
      else
        nil
      end
    end

  end

  def open_spreadsheet
    case File.extname(file.original_filename)
    when ".csv" then Roo::Csv.new(file.path,{:file_warning => :ignore})
    when ".xls" then Roo::Excel.new(file.path,{:file_warning => :ignore})
    when ".xlsx" then Roo::Excelx.new(file.path,{:file_warning => :ignore})
    when ".ods" then Roo::OpenOffice.new(file.path,{:file_warning => :ignore})
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

end
