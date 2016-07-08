class XcosBox < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end
  
  belongs_to :system, :inverse_of => :xcos_box, :creator => :true
  
  attr_accessible :system, :system_id


  def xcos_id
    self.system.project.xcos_id+":s"+self.system.id.to_s
  end
  
  def xcos_submodel_id
    xcos_id+"modelchild"
  end
  
  def xcos_parent
    if self.system.parent
      self.system.parent.xcos_box
    else
      self.system.project
    end
  end
  
  def xcos_width_separation
    100.0
  end
  
  def xcos_geom_height
    60.0
  end

  def xcos_geom_width
    100.0
  end
  
  def xcos_xpos(index)
    100.0+(index*(xcos_geom_width+xcos_width_separation))
  end
  def xcos_ypos(index)
    100.0
  end
    
  
  def to_node(doc,index)
    doc.SuperBlock id:self.xcos_id, parent:self.xcos_parent.xcos_submodel_id, simulationFunctionType:"DEFAULT", value:self.system.abbrev do
      doc.SuperBlockDiagram as:"child", background:"-1", title:self.system.abbrev do
        doc.Array as:"context", scilabClass:"String[]" do
          doc.add value:""
        end
        doc.mxGraphModel as:"model" do
          doc.root do
            doc.mxCell id:self.xcos_id+"modelparent"
            doc.mxCell id:self.xcos_id+"modelchild", parent:self.xcos_id+"modelparent"
            childidx=0
            self.system.children.each {|s|
              s.to_xcos_node(doc,childidx)
              childidx+=1
            }
          end
        end
        doc.mxCell as:"defaultParent", id:self.xcos_id+"modelchild", parent:self.xcos_id+"modelparent" 
      end
      doc.Array as:"realParameters", scilabClass:"ScilabMList", varName:"" do
        doc.ScilabString height:"1", width:"5" do
          doc.data column:"0", line:"0", value:"diagram"
          doc.data column:"1", line:"0", value:"props"
          doc.data column:"2", line:"0", value:"objs"
          doc.data column:"3", line:"0", value:"version"
          doc.data column:"4", line:"0", value:"contrib"
        end
        doc.Array scilabClass:"ScilabTList" do
          doc.ScilabString height:"1", width:"11" do
            doc.data column:"0", line:"0", value:"params"
            doc.data column:"1", line:"0", value:"wpar"
            doc.data column:"2", line:"0", value:"title"
            doc.data column:"3", line:"0", value:"tol"
            doc.data column:"4", line:"0", value:"tf"
            doc.data column:"5", line:"0", value:"context"
            doc.data column:"6", line:"0", value:"void1"
            doc.data column:"7", line:"0", value:"options"
            doc.data column:"8", line:"0", value:"void2"
            doc.data column:"9", line:"0", value:"void3"
            doc.data column:"10", line:"0", value:"doc"
          end
          doc.ScilabDouble height:"1", width:"6" do
            doc.data column:"0", line:"0", realPart:"600.0"
            doc.data column:"1", line:"0", realPart:"450.0"
            doc.data column:"2", line:"0", realPart:"0.0"
            doc.data column:"3", line:"0", realPart:"0.0"
            doc.data column:"4", line:"0", realPart:"600.0"
            doc.data column:"5", line:"0", realPart:"450.0"
          end
          doc.ScilabString height:"1", width:"1" do
            doc.data column:"0", line:"0", value:"#{self.system.abbrev}"
          end
          doc.ScilabDouble height:"7", width:"1" do
            doc.data column:"0", line:"0", realPart:"1.0E-6"
            doc.data column:"0", line:"1", realPart:"1.0E-6"
            doc.data column:"0", line:"2", realPart:"1.0E-10"
            doc.data column:"0", line:"3", realPart:"100001.0"
            doc.data column:"0", line:"4", realPart:"0.0"
            doc.data column:"0", line:"5", realPart:"1.0"
            doc.data column:"0", line:"6", realPart:"0.0"
          end          
          doc.ScilabDouble height:"1", width:"1" do
            doc.data column:"0", line:"0", realPart:"100000.0"
          end
          doc.ScilabString height:"1", width:"1" do
            doc.data column:"0", line:"0", value:""
          end
          doc.ScilabDouble height:"0", width:"0"
          doc.Array scilabClass:"ScilabTList" do
            doc.ScilabString height:"1", width:"6" do
              doc.data column:"0", line:"0", value:"scsopt"
              doc.data column:"1", line:"0", value:"3D"
              doc.data column:"2", line:"0", value:"Background"
              doc.data column:"3", line:"0", value:"Link"
              doc.data column:"4", line:"0", value:"ID"
              doc.data column:"5", line:"0", value:"Cmap"
            end
            doc.Array scilabClass:"ScilabList" do
              doc.ScilabBoolean height:"1", width:"1" do
                doc.data column:"0", line:"0", value:"true"
              end
              doc.ScilabDouble height:"1", width:"1" do
                doc.data column:"0", line:"0", realPart:"33.0"
              end
            end
            doc.ScilabDouble height:"1", width:"2" do
              doc.data column:"0", line:"0", realPart:"8.0"
              doc.data column:"1", line:"0", realPart:"1.0"
            end            
            doc.ScilabDouble height:"1", width:"2" do
              doc.data column:"0", line:"0", realPart:"1.0"
              doc.data column:"1", line:"0", realPart:"5.0"
            end
            doc.Array scilabClass:"ScilabList" do
              doc.ScilabDouble height:"1", width:"2" do
                doc.data column:"0", line:"0", realPart:"5.0"
                doc.data column:"1", line:"0", realPart:"1.0"
              end
              doc.ScilabDouble height:"1", width:"2" do
                doc.data column:"0", line:"0", realPart:"4.0"
                doc.data column:"1", line:"0", realPart:"1.0"
              end
            end
            doc.ScilabDouble height:"1", width:"3" do
              doc.data column:"0", line:"0", realPart:"0.8"
              doc.data column:"1", line:"0", realPart:"0.8"
              doc.data column:"2", line:"0", realPart:"0.8"
            end
          end
          doc.ScilabDouble height:"0", width:"0"
          doc.ScilabDouble height:"0", width:"0"
          doc.Array scilabClass:"ScilabList"
        end
        doc.Array scilabClass:"ScilabList" do
          ### This list is expanded if current system has children subsystems
          childindex=0
          self.system.children.each{ |ss|
            doc.Array scilabClass:"ScilabMList", varName:"" do
              doc.ScilabString height:"1", width:"5" do
                doc.data column:"0", line:"0", value:"Block"
                doc.data column:"1", line:"0", value:"graphics"
                doc.data column:"2", line:"0", value:"model"
                doc.data column:"3", line:"0", value:"gui"
                doc.data column:"4", line:"0", value:"doc"
              end
              doc.Array scilabClass:"ScilabMList", varName:"" do
                doc.ScilabString height:"1", width:"19" do
                  doc.data column:"0", line:"0", value:"graphics"
                  doc.data column:"1", line:"0", value:"orig"
                  doc.data column:"2", line:"0", value:"sz"
                  doc.data column:"3", line:"0", value:"flip"
                  doc.data column:"4", line:"0", value:"theta"
                  doc.data column:"5", line:"0", value:"exprs"
                  doc.data column:"6", line:"0", value:"pin"
                  doc.data column:"7", line:"0", value:"pout"
                  doc.data column:"8", line:"0", value:"pein"
                  doc.data column:"9", line:"0", value:"peout"
                  doc.data column:"10", line:"0", value:"gr_i"
                  doc.data column:"11", line:"0", value:"id"
                  doc.data column:"12", line:"0", value:"in_implicit"
                  doc.data column:"13", line:"0", value:"out_implicit"
                  doc.data column:"14", line:"0", value:"in_style"
                  doc.data column:"15", line:"0", value:"out_style"
                  doc.data column:"16", line:"0", value:"in_label"
                  doc.data column:"17", line:"0", value:"out_label"
                  doc.data column:"18", line:"0", value:"style"                  
                end
                doc.ScilabDouble height:"1", width:"2" do
                  doc.data column:"0", line:"0", realPart:"60.0"
                  doc.data column:"1", line:"0", realPart:"-100.0"                  
                end
                doc.ScilabDouble height:"1", width:"2" do
                  doc.data column:"0", line:"0", realPart:"40.0"
                  doc.data column:"1", line:"0", realPart:"40.0"                  
                end
                doc.ScilabBoolean height:"1", width:"1" do
                  doc.data column:"0", line:"0", value:"true"
                end
                doc.ScilabDouble height:"1", width:"1" do
                  doc.data column:"0", line:"0", realPart:"0.0"
                end
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.Array scilabClass:"ScilabList" do
                  doc.ScilabString height:"1", width:"1" do
                    doc.data column:"0", line:"0", value:"xstringb(orig(1),orig(2),\"SUPER_f\",sz(1),sz(2));"
                  end
                  doc.ScilabDouble height:"1", width:"1" do
                    doc.data column:"0", line:"0", realPart:"8.0"
                  end
                end
                doc.ScilabString height:"1", width:"1" do
                  doc.data column:"0", line:"0", value:"#{ss.abbrev}"
                end
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabDouble height:"0", width:"0"
                doc.ScilabString height:"1", width:"1" do
                  
                end
              end
              doc.Array scilabClass:"ScilabMList", varName:"" do
              end
              doc.ScilabString height:"1", width:"1" do
              end
              doc.Array scilabClass:"ScilabList" do
              end
            end
            doc.Array scilabClass:"ScilabMList", varName:"" do
            end
            childindex+=1
          }
        end
        doc.ScilabString height:"1", width:"1" do
          doc.data column:"0", line:"0", value:""
        end
        doc.Array scilabClass:"ScilabList"
      end
      doc.Array as:"oDState", scilabClass:"ScilabList"
      doc.Array as:"equations", scilabClass:"ScilabList"
      doc.mxGeometry as:"geometry", height:"#{self.xcos_geom_height.to_s}", width:"#{self.xcos_geom_width.to_s}", x:"#{self.xcos_xpos(index).to_s}", y:"#{self.xcos_ypos(index).to_s}"
    end
    doc.mxCell connectable:"0", id:self.xcos_id+"#identifier", parent:self.xcos_id, style:"noLabel=0;opacity=0", value:self.system.abbrev, vertex:"1" do
      doc.mxGeometry as:"geometry", relative:"1", x:"0.5", y:"1.1"
    end
  end
  
  
  
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
