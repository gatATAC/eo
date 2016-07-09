class System < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    abbrev :string
    timestamps
  end
  attr_accessible :name, :parent, :root, :parent_id, :root_id, :layer, :layer_id, :abbrev, :project, :project_id, :system_type_id, :system_type, :xcos_box, :xcos_box_id

  belongs_to :project, :creator => :true
  belongs_to :root, :class_name => 'System'
  belongs_to :parent,  :creator => true, :foreign_key => :parent_id, :class_name => 'System', :inverse_of => :children
  belongs_to :system_type, :inverse_of => :systems
  belongs_to :layer, :inverse_of => :systems
  has_one :xcos_box, :inverse_of => :system, :dependent => :destroy

  validates :name, :presence => :true
  validates :abbrev, :presence => :true
  validates :project, :presence => :true
  validates :parent_id, confirmation: true, if: "self.parent_id!=self.id"
    validates :layer, :presence => :true
  
    has_many :children, -> { order "position" }, :foreign_key => :parent_id, :class_name => 'System', :inverse_of => :parent
    has_many :system_dest_links, :foreign_key => :system_src_id, :inverse_of => :system_src, :class_name => 'SystemLink'
    has_many :system_src_links, :foreign_key => :system_dest_id, :inverse_of => :system_dest, :class_name => 'SystemLink'
    
    has_many :related_systems, :through => :system_dest_links, :source => :system_dest, :class_name => 'Function'
    
    
    acts_as_list :scope => :parent

    children :children,  :related_systems


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
        xoffsetcaja=200
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
              'xlink:href'=>"/sub_systems/#{self.id}",
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
