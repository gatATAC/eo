class System < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    abbrev :string
    timestamps
  end
  attr_accessible :name, :parent, :root, :parent_id, :root_id, :layer, :layer_id, :abbrev, :project, :project_id, :system_type_id, :system_type


  belongs_to :project, :creator => :true
  belongs_to :root, :class_name => 'System'
  belongs_to :parent,  :creator => true, :foreign_key => :parent_id, :class_name => 'System', :inverse_of => :children
  belongs_to :system_type, :inverse_of => :systems
  belongs_to :layer, :inverse_of => :systems

  validates :name, :presence => :true
  validates :abbrev, :presence => :true
  validates :project, :presence => :true
  validates :parent_id, confirmation: true, if: "self.parent_id!=self.id"
  validates :layer, :presence => :true
  
  has_many :children, -> { order "position" }, :foreign_key => :parent_id, :class_name => 'System', :inverse_of => :parent

  acts_as_list :scope => :parent

  children :children,:children


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
  
  
  
  def layer_visible_by?(u)
    ret=false
    if self.layer
      if self.project.owner==u then
        ret=true
      else
        self.project.project_memberships.each  {|mb|
          if (mb.user==u) then
            if (mb.maximum_layer == 0 || mb.maximum_layer>=self.layer.level) then
              ret=true
            end
          end
        }
      end
    else
      ret=false
    end
    return ret
  end
  
  
  # --- Permissions --- #

  def create_permitted?
=begin    
    if (project) then
      project.updatable_by?(acting_user)
    else
      true
    end
=end
    true
  end

  def update_permitted?
=begin    
    if project then
      ret=project.updatable_by?(acting_user)
    else
      ret=false
    end
    return ret
=end
    true
  end

  def destroy_permitted?
=begin    
    if project then
      ret=project.destroyable_by?(acting_user)
    else
      ret=false
    end
    return ret
=end
    true
  end

  def view_permitted?(field)
=begin    
    if project then
      ret=self.project.viewable_by?(acting_user)
      if (!(acting_user.developer? || acting_user.administrator?)) then
        ret=self.project.public || self.layer_visible_by?(acting_user)
      end
    else
      ret=false
    end
    return ret
=end
    true
  end

end
