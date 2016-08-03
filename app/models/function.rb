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
  has_many :function_dest_links, :foreign_key => :function_src_id, :inverse_of => :function_src, :class_name => 'FunctionLink'
  has_many :function_src_links, :foreign_key => :function_dest_id, :inverse_of => :function_dest, :class_name => 'FunctionLink'
  has_many :related_functions, :through => :function_dest_links, :source => :function_dest, :class_name => 'Function'
    
    
  acts_as_list :scope => :parent

  children :children,  :related_functions 

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

  def to_xcos_node(doc)
    doc.eofunc do
      # Attributes
      doc.name self.name
      doc.abbrev self.abbrev
      doc.layer self.layer_id
      doc.function_type self.function_type_id
      
      # Children functions
      doc.children do
        self.children.each{|s|
          s.to_eox_node(doc)
        }
      end
      # Related functions
      doc.related do
        self.function_dest_links.each {|rs|
          doc.link do 
            doc.id rs.function_dest.id
            doc.type rs.function_link_type.id
          end
        }
      end
    end 
  end
  
  def to_eox_node(doc)
    doc.eofunc do
      # Attributes
      doc.name self.name
      doc.abbrev self.abbrev
      doc.layer self.layer_id
      doc.function_type self.function_type_id
      
      # Children functions
      doc.children do
        self.children.each{|s|
          s.to_eox_node(doc)
        }
      end
      # Related functions
      doc.related do
        self.function_dest_links.each {|rs|
          doc.link do 
            doc.id rs.function_dest.id
            doc.type rs.function_link_type.id
          end
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
      ret=project.updatable_by?(acting_user)
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
