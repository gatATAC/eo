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
    spreadsheet = open_spreadsheet
    # Layer
    layer=Layer.find_by_name("Implementation")
    # Recurrence Times
    ucanca_sheet=spreadsheet.sheet('EoSystems')
    header = ucanca_sheet.row(1)
    (2..ucanca_sheet.last_row).map do |i|
      row = Hash[[header, ucanca_sheet.row(i)].transpose]
      print "procesamos -----------> "+row.to_s
      # A system MUST have an abbrev
      rabbrev=row["abbrev"]
      if (rabbrev!=nil && rabbrev!="")
        # A system must have a type
        rtype=row["type"]
        if (rtype!=nil && rtype!="") then
          # Locate the system or create a new one
          system = self.project.systems.find_by_abbrev(rabbrev) || System.new
          # Set the "a priori" information
          system.project = self.project
          system.layer=layer
          # Extract the system attributes from the row
          system.attributes = row.to_hash.slice(*System.import_attributes)
          # Locate the system parent
          if (row["parent_abbrev"]!=nil && row["parent_abbrev"]!="") then
            parentsystem = self.project.systems.find_by_abbrev(row["parent_abbrev"])
            system.parent = parentsystem
          end
          # Set the root
          if (system.parent==nil) then
            system.root=system
          else
            system.root=system.parent.root
          end
          if (rtype=="Mechanics") then
            systype=SystemType.find_by_name("Mechanical")
          end
          system.system_type=systype
          if (system.valid?)
            system.save!
            # Per discipline treatment
            if (rtype=="Mechanics") then
              rfile=row["file_name"]
              mechsys=system.mech_systems.find_by_file_name(rfile) || MechSystem.new
              mechsys.system = system
              # Mechanical properties import
              mechsys.file_name = rfile
              mechtype = MechSystemType.find_by_name(row["mech_system_type"])
              mechsys.mech_system_type=mechtype
              opt = MechOpticalSurface.find_by_name(row["optical_surface"])
              mechsys.mech_optical_surface=opt
              mat = MechMaterial.find_by_name(row["material"])
              mechsys.mech_material=mat
              wf = AcquisitionWorkflow.find_by_name(row["workflow"])
              mechsys.acquisition_workflow=wf
              ws = AcquisitionStatus.find_by_name(row["status"])
              mechsys.acquisition_status=ws
              if (mechsys.valid?) then
                mechsys.save!
                # Mech fabrication machines
                rmachine=row["main_machine"]
                mach=MechMachine.find_by_name(rmachine)
                if (mach) then
                  mechmach=mechsys.mech_system_fab_machines.find_by_mech_machine_id(mach.id) || MechSystemFabMachine.new
                  mechmach.mech_system = mechsys
                  mechmach.mech_machine=mach
                  if (mechmach.valid?) then
                    mechmach.save!
                  else
                    mechmach.errors.full_messages.each do |message|
                      errors.add :base, "Row #{i+2}: #{message}"
                    end
                  end
                end
              else
                mechsys.errors.full_messages.each do |message|
                  errors.add :base, "Row #{i+2}: #{message}"
                end
              end
            end
            system
          else
            system.errors.full_messages.each do |message|
              errors.add :base, "Row #{i+2}: #{message}"
            end
          end
        end
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
