class Function < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    abbrev :string
    timestamps
  end
  attr_accessible :name, :parent, :root, :parent_id, :root_id, :layer, :layer_id, :abbrev, :project, :project_id, :function_type_id, :function_type


  belongs_to :project, :creator => :true
  belongs_to :root, :class_name => 'Function'
  belongs_to :parent,  :creator => true, :foreign_key => :parent_id, :class_name => 'Function'
  belongs_to :function_type, :inverse_of => :functions
  belongs_to :layer, :inverse_of => :functions

  validates :name, :presence => :true
  validates :abbrev, :presence => :true
  validates :project, :presence => :true
  validates :parent_id, confirmation: true, if: "self.parent_id!=self.id"
  validates :layer, :presence => :true

  has_many :children, -> { order "position" }, :foreign_key => :parent_id, :class_name => 'Function'

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
    if (project) then
      ret=project.updatable_by?(acting_user)
    else
      ret=true
    end
    return ret
  end

  def update_permitted?
    if project then
      ret=project.updatable_by?(acting_user)
    else
      ret=false
    end
    return ret
  end

  def destroy_permitted?
  if project then
      ret=project.destroyable_by?(acting_user)
    else
      ret=false
    end
    return ret
  end

  def view_permitted?(field)
    if project then
      ret=self.project.viewable_by?(acting_user)
      if (!(acting_user.developer? || acting_user.administrator?)) then
        ret=self.project.public || self.layer_visible_by?(acting_user)
      end
    else
      ret=true
    end
    return ret
  end

end
