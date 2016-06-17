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
  
  children :members, :root_systems, :functions
    
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