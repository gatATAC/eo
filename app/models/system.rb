class System < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    abbrev :string
    timestamps
  end
  attr_accessible :name, :parent, :root, :parent_id, :root_id, :abbrev, :project, :project_id, :system_type_id, :system_type


  belongs_to :project, :creator => :true
  belongs_to :root, :class_name => 'System'
  belongs_to :parent,  :creator => true, :foreign_key => :parent_id, :class_name => 'System'
  belongs_to :system_type, :inverse_of => :systems

  validates :name, :presence => :true
  validates :abbrev, :presence => :true
  validates :project, :presence => :true
  validates :parent_id, confirmation: true, if: "self.parent_id!=self.id"
  
  has_many :children, -> { order "position" }, :foreign_key => :parent_id, :class_name => 'System'

  acts_as_list :scope => :parent

  children :children


  def full_name
    ret=abbrev
    p=self
    while (p.parent) do
      ret=p.parent.abbrev+"_"+ret
      p=p.parent
    end
    return ret
  end

  def full_abbrev
    ret=abbrev
    p=self
    while (p.parent) do
      ret=p.parent.abbrev+"_"+ret
      p=p.parent
    end
    return ret
  end

  def self.roots
    ret = []
    self.find(:all).each { |n|
      if not n.has_parents?
        ret << n
      end
    }
    return ret
  end

  def pretree
    ret = []
    ret += parent
    ret += parent.pretree
    return ret
  end

  def subtree
    ret = []
    ret += children
    children.each { |s|
      ret += s.subtree
    }
    return ret
  end

	def has_parents?
    return parent!=nil
  end

	def has_children?
	  return children.size > 0
	end
  # --- Permissions --- #

  def create_permitted?
    if (project) then
      project.updatable_by?(acting_user)
    else
      false
    end
  end

  def update_permitted?
    project.updatable_by?(acting_user)
  end

  def destroy_permitted?
    project.destroyable_by?(acting_user)
  end

  def view_permitted?(field)
    ret=self.project.viewable_by?(acting_user)
    if (!(acting_user.developer? || acting_user.administrator?)) then
      ret=self.project.public || self.layer_visible_by?(acting_user)
    end
    return ret
  end

end
