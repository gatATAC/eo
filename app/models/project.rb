class Project < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    abbrev :string
    description :text
    public :boolean
    timestamps
  end
  
  attr_accessible :name, :owner, :owner_id, :public, :description, :target_id, :target, :abbrev

  belongs_to :owner, :class_name => "User", :creator => true, :inverse_of => :projects 
  
  validates :name, :presence => :true
  validates :owner, :presence => :true
  validates :abbrev, :presence => :true
    
  has_many :project_memberships, :dependent => :destroy, :inverse_of => :project
  has_many :members, :through => :project_memberships, :source => :user
  has_many :contributors, -> { where members:({ contributor: true })}, 
    :through => :members, :source => :joined_projects
  
  has_many :systems, :dependent => :destroy, :inverse_of => :project
  has_many :root_systems, -> { where ({ parent: nil })}, :class_name => "System"
  has_many :functions, :dependent => :destroy, :inverse_of => :project
  has_many :root_functions, -> { where ({ parent: nil })}, :class_name => "Function"
  
  children :members, :root_systems, :functions
    
  def xcos_id
    "root:pr"+id.to_s
  end
  
  def xcos_submodel_id
    xcos_id
  end
  
  def to_xcos_node(doc)
    doc.XcosDiagram background:"-1", title:"SysModel"  do
      doc.mxGraphModel as:"model" do
        doc.root do
          doc.mxCell id:self.xcos_id+"_ext"
          doc.mxCell id:self.xcos_id, parent:self.xcos_id+"_ext"
          childidx=0
          self.root_systems.each {|s|
            s.to_xcos_node(doc,childidx)
            childidx+=1
          }
        end
      end
    end 
  end
    
  def to_eox_node(doc)
    doc.eoproject do
      doc.name self.name
      doc.systems do
        self.root_systems.each {|s|
          s.to_eox_node(doc)
        }
      end
      doc.functions do
        self.root_functions.each {|f|
          f.to_eox_node(doc)
        }
      end
    end   
  end
  
  def to_eox
    # Create the XML tree
    b = Nokogiri::XML::Builder.new do |doc|    
      self.to_eox_node(doc)
    end
    return b.to_xml
  end
  
  def to_xcos
    # Create the XML tree
    b = Nokogiri::XML::Builder.new do |doc|    
      self.to_xcos_node(doc)
    end
    return b.to_xml
  end
  
  # --- Permissions helper --- #
  
  def accepts_changes_from?(user)
    user.administrator? || user == owner || user.in?(contributors)
  end
  
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator? || ((owner_is? acting_user) && acting_user.developer)
  end

  def update_permitted?
    accepts_changes_from?(acting_user) && !owner_changed?
  end

  def destroy_permitted?
    (acting_user.administrator? || owner_is?(acting_user))
  end

  def view_permitted?(field)
    (acting_user.administrator? || acting_user == owner || acting_user.in?(members) || self.public)
  end

end