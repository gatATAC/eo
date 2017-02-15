class System < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    abbrev :string
    atomic   :boolean
    acquired :boolean
    acq_priority :integer, :default => 100
    virtual :boolean, :default => false
    timestamps
  end
  attr_accessible :name, :layer, :layer_id, :abbrev, :project, :project_id, :system_type_id, :system_type, :xcos_box, :xcos_box_id,
    :acquired, :atomic, :is_part_of_atomic, :is_part_of_acquired, :virtual, :is_part_of_virtual, :acq_priority, :hierarchical_priority

  belongs_to :project, :creator => :true
  belongs_to :root, :class_name => 'System'
  belongs_to :parent,  :creator => true, :foreign_key => :parent_id, :class_name => 'System', :inverse_of => :children
  belongs_to :system_type, :inverse_of => :systems
  belongs_to :layer, :inverse_of => :systems

  has_one :xcos_box, :inverse_of => :system, :dependent => :destroy

  has_many :mech_systems, :inverse_of => :system, :dependent => :destroy

  validates :name, :presence => :true
  validates :abbrev, :presence => :true
  validates :project, :presence => :true
  validates :parent_id, confirmation: true, if: "self.parent_id!=self.id"
    validates :layer, :presence => :true

    has_many :children, -> { order "position" }, :foreign_key => :parent_id, :class_name => 'System', :inverse_of => :parent
    has_many :system_dest_links, :foreign_key => :system_src_id, :inverse_of => :system_src, :class_name => 'SystemLink'
    has_many :system_src_links, :foreign_key => :system_dest_id, :inverse_of => :system_dest, :class_name => 'SystemLink'

    has_many :related_systems, :through => :system_dest_links, :source => :system_dest, :class_name => 'Function'

    has_many :issue_rms, :inverse_of => :system
    acts_as_list :scope => :parent

    children :children,  :related_systems, :mech_systems

    def hierarchical_priority
      if (self.parent) then
        [self.acq_priority, self.parent.hierarchical_priority].min
      else
        self.acq_priority
      end
    end 

    def is_part_of_acquired
      if self.parent then
        self.acquired || self.parent.is_part_of_acquired
      else
        self.acquired
      end
    end

    def is_part_of_atomic
      if self.parent then
        self.atomic || self.parent.is_part_of_atomic
      else
        self.atomic
      end
    end
  
    def is_part_of_virtual
      if self.parent then
        self.virtual || self.parent.is_part_of_virtual
      else
        self.virtual
      end
    end
  
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

    def self.eox_attributes
      return [:name, :parent_id, :root_id, :layer_id, :abbrev, :project_id, :system_type_id]
    end

    def to_eox_node(doc)
      doc.eosys do
        # Attributes
        doc.name self.name
        doc.abbrev self.abbrev
        doc.layer self.layer_id
        doc.system_type self.system_type_id

        # Children systems
        doc.children do
          self.children.each{|s|
            s.to_eox_node(doc)
          }
        end
        # Related systems
        doc.related do
          self.system_dest_links.each {|rs|
            doc.link do 
              doc.id rs.system_dest.id
              doc.type rs.system_link_type.id
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

    def to_xcos_node(doc,index)
      if not(self.xcos_box) then
        self.xcos_box=XcosBox.new
        self.xcos_box.system=self
        self.xcos_box.save
      end
      self.xcos_box.to_node(doc,index)
    end

    def to_xcos
      # Create the XML tree
      b = Nokogiri::XML::Builder.new do |doc|    
        self.to_xcos_node(doc,0)
      end
      return b.to_xml
    end

    def self.import_attributes
      ret=System.accessible_attributes.clone
      ret.delete("project_id")
      ret.delete("root_id")
      ret.delete("parent_id")
      ret.delete("system_type_id")
      ret.delete("layer_id")
      ret.delete("position")
      ret.delete("")
      return ret
    end  

    def input_flows
      ["uno","dos"]
    end
    def output_flows
      ["tres","cuatro"]
    end
    def connectors
      ["pinout"]
    end

    def to_svg
      # Prepare the values to draw
      scale=5000

      # Create the XML tree
      b = Nokogiri::XML::Builder.new do |doc|
        yporflujo=40
        alturacaracter=10
        anchuracaracter=6
        alturaminconector=12
        maxflujos=[self.input_flows.size,self.output_flows.size,self.connectors.size*(alturaminconector/alturacaracter)].max
        yoffsetcaja=10
        yoffsetflujo=yoffsetcaja*2+alturacaracter*2
        anchuracaja=200+(self.full_name.length*anchuracaracter)
        alturacaja=(yporflujo*(maxflujos))+(alturacaracter*2)
        xoffsetcaja=20
        ycentrocaja=yoffsetflujo+(alturacaja/2)
        xcentrocaja=(anchuracaja/2)+xoffsetcaja
        alturacajaajustada=[alturacaja,yoffsetflujo+yporflujo].max
        alturapagina=alturacajaajustada+yoffsetcaja*2    
        anchuraconector=anchuracaja/4
        xoffsetconectorinput=xoffsetcaja+10
        xcentroconectorinput=xoffsetconectorinput+(anchuraconector/2)
        yoffsetconector=10
        xoffsetconectoroutput=xoffsetcaja+anchuracaja-anchuraconector-10
        xcentroconectoroutput=xoffsetconectoroutput+(anchuraconector/2)

        doc.svg 'xmlns:dc'=>"http://purl.org/dc/elements/1.1/",
          'xmlns:cc'=>"http://creativecommons.org/ns#",
          'xmlns:rdf'=>"http://www.w3.org/1999/02/22-rdf-syntax-ns#",
          'xmlns:svg'=>"http://www.w3.org/2000/svg",
          'xmlns'=>"http://www.w3.org/2000/svg",
          'xmlns:xlink'=>"http://www.w3.org/1999/xlink",
          version:"1.1",
          width:"210mm",height:"#{alturapagina}", id:"svg2" do
          doc.defs id:"defs4"
          doc.metadata id:"metadata7" do
            doc['rdf'].RDF do
              doc['cc'].Work 'rdf:about'=>"" do
                doc['dc'].format "image/svg+xml" do

                end
                doc['dc'].type 'rdf:resource'=>"http://purl.org/dc/dcmitype/StillImage"
                doc['dc'].title
              end
            end
          end
          doc.g id:"layer1" do
            doc.rect width:"#{anchuracaja}", height:"#{alturacajaajustada}",
              x:"#{xoffsetcaja}",
              y:"#{yoffsetcaja}",
              id:"rect_#{self.name}",
              style:"fill:none;stroke:#000000;stroke-width:0.34495062;stroke-opacity:1"
            doc.a id:"link_#{self.full_name}",
              'xlink:href'=>"/systems/#{self.id}",
              'xlink:title'=>"#{self.full_name}", target:"_blank" do
              doc.text_ x:"#{xcentrocaja}", y:"#{ycentrocaja}", id:"text_#{self.name}",
                'xml:space'=>"preserve", 
                style:"font-size:16px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:middle;fill:#000000;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans" do
                doc.tspan x:"#{xcentrocaja}", y:"#{ycentrocaja}", id:"tspan_#{self.full_name}" do
                  doc.text "#{self.full_name}"
                end
              end
            end  

            acuminput=0
            acumoutput=0
=begin
        self.connectors.each {|c|

          contador=acuminput+1;
          c.input_flows.each {|f|
            doc.rect width:"#{anchuracaracter*(f.label.length+2)}", height:"1",
            x:"#{xoffsetcaja-(anchuracaracter*(f.label.length+2))}",
            y:"#{(yporflujo*(contador-1))+yoffsetflujo}",
            id:"line_#{f.label}",
            style:"fill:none;stroke:#000000;stroke-width:0.65142924;stroke-miterlimit:4;stroke-opacity:1;stroke-dasharray:none"
            doc.a 'xlink:href'=>"/flows/#{f.flow.id}", 'xlink:title'=>"#{f.label}", target:"_blank" do
              doc.text_ x:"#{xoffsetcaja-anchuracaracter}",
              y:"#{(yporflujo*(contador-1))+(yoffsetflujo-alturacaracter)}",
              id:"text_#{f.label}",
              'xml:space'=>"preserve",
              style:"font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:end;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:end;fill:#000000;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans" do
                doc.tspan x:"#{xoffsetcaja-anchuracaracter}",
                y:"#{(yporflujo*(contador-1))+(yoffsetflujo-alturacaracter)}"
                id:"tspan_#{f.label}" do
                  doc.text "#{f.label}"
                end     
              end
            end
            contador=contador+1
          }
          alturaconector=((contador-acuminput-1)*yporflujo)-(yoffsetconector/2)
          yoffsetconectorinput=((acuminput*yporflujo)+yoffsetcaja)+(yoffsetconector)
          ycentroconectorinput=yoffsetconectorinput+(alturaconector/2)
          if (acuminput!=contador-1) then
            doc.rect width:"#{anchuraconector}",
            height:"#{alturaconector}", x:"#{xoffsetconectorinput}", y:"#{yoffsetconectorinput}",
            id:"rect_#{c.name}",
            style:"fill:none;stroke:#000000;stroke-width:0.34495062;stroke-opacity:1"
            doc.a id:"link_#{c.full_name}", 'xlink:href'=>"/connectors/#{c.id}", 'xlink:title'=>"#{c.full_name}", target:"_blank" do
              doc.text_ x:"#{xcentroconectorinput}", y:"#{ycentroconectorinput}",
              id:"text_#{c.name}", 'xml:space'=>"preserve",
              style:"font-size:16px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:middle;fill:#000000;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans" do
                doc.tspan x:"#{xcentroconectorinput}", y:"#{ycentroconectorinput}",
                id:"tspan_#{c.name}" do
                  doc.text="#{c.name}"
                end
              end
            end
          end
          acuminput=contador-1
          contador=acumoutput+1;
          c.output_flows.each {|f|
            doc.rect width:"#{anchuracaracter*(f.label.length+2)}",
            height:"1", x:"#{xoffsetcaja+anchuracaja}", y:"#{(yporflujo*(contador-1))+yoffsetflujo}",
            id:"line_#{f.label}", 
            style:"fill:none;stroke:#000000;stroke-width:0.65142924;stroke-miterlimit:4;stroke-opacity:1;stroke-dasharray:none"
            doc.a 'xlink:href'=>"/flows/#{f.flow.id}", 'xlink:title'=>"#{f.label}", target:"_blank" do
              doc.text_ x:"#{xoffsetcaja+anchuracaja+anchuracaracter}",
              y:"#{(yporflujo*(contador-1))+(yoffsetflujo-alturacaracter)}",
              id:"text_#{f.label}", 'xml:space'=>"preserve",
              style:"font-size:10px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:start;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:start;fill:#000000;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans" do
                doc.tspan x:"#{xoffsetcaja+anchuracaja+anchuracaracter}",
                y:"#{(yporflujo*(contador-1))+(yoffsetflujo-alturacaracter)}",
                id:"tspan_#{f.label}" do
                  doc.text "#{f.label}"
                end
              end
            end
            contador=contador+1
          }
          alturaconector=((contador-acumoutput-1)*yporflujo)-(yoffsetconector/2)
          yoffsetconectoroutput=((acumoutput*yporflujo)+yoffsetcaja)+(yoffsetconector)
          ycentroconectoroutput=yoffsetconectoroutput+(alturaconector/2)
          if (acumoutput!=contador-1) then
            doc.rect width:"#{anchuraconector}", height:"#{alturaconector}",
            x:"#{xoffsetconectoroutput}", y:"#{yoffsetconectoroutput}",
            id:"rect_#{c.name}",
            style:"fill:none;stroke:#000000;stroke-width:0.34495062;stroke-opacity:1" do
              doc.a id:"link_#{c.full_name}", 'xlink:href'=>"/connectors/#{c.id}",
              'xlink:title'=>"#{c.full_name}", target:"_blank" do
                doc.text_ x:"#{xcentroconectoroutput}", y:"#{ycentroconectoroutput}",
                id:"text_#{c.name}", 'xml:space'=>"preserve",
                style:"font-size:16px;font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;text-align:center;line-height:100%;letter-spacing:0px;word-spacing:0px;writing-mode:lr-tb;text-anchor:middle;fill:#000000;fill-opacity:1;stroke:none;font-family:Sans;-inkscape-font-specification:Sans" do
                  doc.tspan x:"#{xcentroconectoroutput}", y:"#{ycentroconectoroutput}",
                  id:"tspan_#{c.name} " do 
                    doc.text "#{c.name}"
                  end
                end
              end 
            end   
          end
          acumoutput=contador-1
        }
=end            
          end
        end
      end
      return b.to_xml
    end

    def to_tree_pending(u)
      allowed=true
      if (allowed)
        # Create the XML tree
        b = Nokogiri::XML::Builder.new do |doc|
          #<!DOCTYPE treeview SYSTEM "../../Treeview/treeview.dtd">
          doc.doc.create_internal_subset(
            'treeview',
            nil,
            "../../Treeview/treeview.dtd"
          )
          self.to_tree_int_pending(doc,u)
        end
        xmldoc = b.doc
        treexsl = Nokogiri::XML::ProcessingInstruction.new(xmldoc, "xml-stylesheet", 'type="text/xsl" href="../../Treeview/treeview.xslt"')
        xmldoc.root.add_previous_sibling treexsl
        return b.to_xml
      else
        "Not allowed operation"
      end
    end
  
  
    def to_tree(u)
      allowed=true
      if (allowed)
        # Create the XML tree
        b = Nokogiri::XML::Builder.new do |doc|
          #<!DOCTYPE treeview SYSTEM "../../Treeview/treeview.dtd">
          doc.doc.create_internal_subset(
            'treeview',
            nil,
            "../../Treeview/treeview.dtd"
          )
          self.to_tree_int(doc,u)
        end
        xmldoc = b.doc
        treexsl = Nokogiri::XML::ProcessingInstruction.new(xmldoc, "xml-stylesheet", 'type="text/xsl" href="../../Treeview/treeview.xslt"')
        xmldoc.root.add_previous_sibling treexsl
        return b.to_xml
      else
        "Not allowed operation"
      end
    end

    def to_tree_embedded(u)
      return to_tree(u)
    end


    def to_tree_int(doc,u)
      #allowed=s.view_permitted?
      allowed=true
      if allowed
        doc.treeview title:self.name+" Tree" do
          self.get_tree_data_xml_ss(doc,u){|n|
            #link_to(n.name,{:controller=>'nodes', :action=>'show', :id=>n.id}, :target => "main") }
            doc.a href:"/systems/"+n.id.to_s, target:'main', content:n.name
          }
        end
      else
        "Not allowed operation 2"
      end
    end

    def to_tree_int_pending(doc,u)
      #allowed=s.view_permitted?
      allowed=true
      if allowed
        doc.treeview title:self.name+" Tree" do
          self.get_tree_data_xml_ss_pending(doc,u){|n|
            #link_to(n.name,{:controller=>'nodes', :action=>'show', :id=>n.id}, :target => "main") }
            doc.a href:"/systems/"+n.id.to_s, target:'main', content:n.name
          }
        end
      else
        "Not allowed operation 2"
      end
    end

    def get_tree_data_xml_ss(doc,u)
      if self.viewable_by?(u) then
        if (self.children.size>=1) then
          img_path="../../images/nodes/subsystem.png"
          nodetype=:folder
        else
          img_path="../../images/nodes/component.png"
          nodetype=:leaf
        end
        if (self.is_part_of_atomic) then
          img_path_atom="../../images/nodes/atom.png"
        else
          img_path_atom=""
        end
        if (self.is_part_of_acquired) then
          img_path_done="../../images/nodes/done.png"
        else
          img_path_done=""
        end
        if (self.is_part_of_virtual) then
          virtstr="true"
        else
          virtstr="false"
        end
        remarkstr=""
        if ( self.is_invalid ) then
          invalidstr = "true"
        else
          invalidstr = "false"
        end
        if (nodetype==:folder) then
          doc.folder title:""+self.name,
            type:"systems",
            code:""+self.id.to_s,
            img:img_path,
            img_atom:img_path_atom,
            img_done:img_path_done,
            virtual:virtstr,
            remark:remarkstr,
            invalid:invalidstr,
            action:""+self.id.to_s do
=begin
    self.state_machines.each {|sm|
      ret+=sm.get_tree_data_xml_sm()
    }

    self.connectors.each {|cn|
      ret+=cn.get_tree_data_xml_cn()
    }
=end
            self.children.each {|n|
              n.get_tree_data_xml_ss(doc,u)
            }
=begin
  self.modes.each {|n|
    ret+=get_tree_data_xml_md(n)
  }
=end
          end
        else
          doc.leaf title:""+self.name,
            type:"systems",
            code:""+self.id.to_s,
            img:img_path,
            img_atom:img_path_atom,
            img_done:img_path_done,
            virtual:virtstr,
            remark:remarkstr,
            invalid:invalidstr,
            action:""+self.id.to_s do
          end
        end
      end
    end

    def get_tree_data_xml_ss_pending(doc,u)
      if self.viewable_by?(u) then
        if (not(self.is_part_of_acquired) && not(self.is_part_of_virtual)) then
          if (self.children.size>=1) then
            img_path="../../images/nodes/subsystem.png"
            nodetype=:folder
          else
            img_path="../../images/nodes/component.png"
            nodetype=:leaf
          end
          if (self.is_part_of_atomic) then
            img_path_atom="../../images/nodes/atom.png"
          else
            img_path_atom=""
          end
          if (self.is_part_of_acquired) then
            img_path_done="../../images/nodes/done.png"
          else
            img_path_done=""
          end
          if (self.is_part_of_virtual) then
            virtstr="true"
          else
            virtstr="false"
          end
          if ( self.is_built ) then
            remarkstr = "true"
          else
            remarkstr = "false"
          end
          if ( self.is_invalid ) then
            invalidstr = "true"
          else
            invalidstr = "false"
          end
          if (nodetype==:folder) then
            doc.folder title:""+self.name,
              type:"systems",
              code:""+self.id.to_s,
              img:img_path,
              img_atom:img_path_atom,
              img_done:img_path_done,
              virtual:virtstr,
              remark:remarkstr,
              invalid:invalidstr,
              expanded:true,
              priority:self.hierarchical_priority,
              action:""+self.id.to_s do
=begin
      self.state_machines.each {|sm|
        ret+=sm.get_tree_data_xml_sm()
      }

      self.connectors.each {|cn|
        ret+=cn.get_tree_data_xml_cn()
      }
=end
              if (not(self.is_part_of_atomic)) then
                self.children.each {|n|
                  n.get_tree_data_xml_ss_pending(doc,u)
                }
              end
=begin
    self.modes.each {|n|
      ret+=get_tree_data_xml_md(n)
    }
=end
            end
          else
            doc.leaf title:""+self.name,
              type:"systems",
              code:""+self.id.to_s,
              img:img_path,
              img_atom:img_path_atom,
              img_done:img_path_done,
              virtual:virtstr,
              remark:remarkstr,
              invalid:invalidstr,
              priority:self.hierarchical_priority,
              action:""+self.id.to_s do
            end
          end
        end
      end
    end

    def is_built
      ret = true
      self.mech_systems.each{|ms|
        ret = ret && ms.is_built
      }
      return ret
    end
  
    def is_invalid
      ret = false
      self.mech_systems.each{|ms|
        ret = ret || ms.is_invalid
      }
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
