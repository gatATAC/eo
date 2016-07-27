class ProjectRm < ActiveRecord::Base
  include RedmineRest::Models

  hobo_model # Don't put anything above this

  fields do
    rm_url        :string
    rm_project    :integer
    rm_apikey     :string
    timestamps
  end
  belongs_to :project, :inverse_of => :project_rms 
  
  has_many :issue_rms, :dependent => :destroy, :inverse_of => :project_rm
  
  attr_accessible :rm_url, :rm_project, :rm_apikey, :project, :project_id
  
  children :issue_rms
    
  def reload_issues
    RedmineRest::Models.configure_models apikey:self.rm_apikey, site:self.rm_url

=begin destruye rm y/o incidencias asociadas
    self.issue_rms.each{|rm|
#=begin destruye incidencia del rm
      i=Issue.find_by_id(rm.rm_ident)
      if (i) then
        i.destroy
      end
#=end destruye incidencia del rm
      #=begin destruye rm
      rm.destroy
      #=end destruye rm
    }
=end destruye rm y/o incidencias asociadas
    

=begin destruye todas las incidencias
    print("Empiezo a destruir incidencias\n")
    iss = nil
    while (iss == nil or iss.size > 0) do
      if (iss != nil) then
        print ("\nEmpiezo a destruir "+iss.size.to_s+" incidencias\n")
        iss.each{|i|
          i.destroy
          print("\n2: Destruyo incidencia "+i.id.to_s)
        }
      end
      iss=[]
      all_issues=Issue.all.group_by_project
      all_issues.each{|p,issues|
        if (p.id==self.rm_project.to_s) then
          iss=issues
        end
      }
    end
    print("Acabe de destruir incidencias\n")
=end destruye todas las incidencias
    
    project_identifier="eotest"
    this_project_id=0
    all_projects=RedmineRest::Models::Project.all
    all_projects.each {|t|
      if t.identifier == project_identifier then
        this_project_id=t.id
        break
      end
    }    
    
    pending_issues=true
    pending_offset=0
    extra = []
    extra += self.issue_rms
    while (pending_issues) do
      issues=Issue.where(project_id:this_project_id, offset:pending_offset, order:('id desc'))
      if (issues != nil) then
        print("\n\n\n\n\n\n\n\n\ntengo issues = "+issues.size.to_s)
        pending_offset+=issues.size
        if (issues.size>0) then
          print("\ntengo issues = "+issues.size.to_s)
          issues.each do |issue|
            print("\ntrato la issue "+issue.id.to_s)
            issue_rm=self.issue_rms.find_by_rm_ident(issue.id)
            if (not(issue_rm)) then
              issue_rm=IssueRm.new
              issue_rm.rm_ident=issue.id
              issue_rm.project_rm = self
            else
              extra.delete(issue_rm)
            end
            issue_rm.subject=issue.subject
            issue_rm.description=issue.description
            issue_rm.start_date = issue.start_date
            issue_rm.due_date = issue.due_date
            issue_rm.done_ratio = issue.done_ratio
            if (issue.assigned_to_id) then
              issue_rm.assignee = issue.assigned_to.id
            end
            issue_rm.author = issue.author.id
            issue_rm.tracker = issue.tracker.id
            if (issue.custom_fields) then
              issue.custom_fields.each{|f|
                if f.name=="eosys" then
                  if (f.value=="1") then
                    issue_rm.eosys=true
                  else
                    issue_rm.eosys=false
                  end
                end
                if f.name == "eosysid" then
                  if (f.value) then
                    sysid = Integer(f.value)
                    sys = System.find_by_id(sysid)
                    issue_rm.system = sys
                  end
                end
              }
            end
            issue_rm.save
          end
        else
          pending_issues = false
        end
      else
        pending_issues = false
      end
    end

    extra.each {|irm|
      irm.delete
    }
  end  

  def sync_issues
    RedmineRest::Models.configure_models apikey:self.rm_apikey, site:self.rm_url
    precedents = {:eng => nil, :delin => nil,
      :manuf => nil, :metro => nil, :valid => nil }

=begin destruye rm y/o incidencias asociadas
    self.issue_rms.each{|rm|
#=begin destruye incidencia del rm
      i=Issue.find_by_id(rm.rm_ident)
      if (i) then
        i.destroy
      end
#=end destruye incidencia del rm
#=begin destruye rm
      rm.destroy
#=end destruye rm
    }
=end destruye rm y/o incidencias asociadas
    

=begin destruye todas las incidencias
    print("Empiezo a destruir incidencias\n")
    iss = nil
    while (iss == nil or iss.size > 0) do
      if (iss != nil) then
        print ("\nEmpiezo a destruir "+iss.size.to_s+" incidencias\n")
        iss.each{|i|
          i.destroy
          print("\n2: Destruyo incidencia "+i.id.to_s)
        }
      end
      iss=[]
      all_issues=Issue.all.group_by_project
      all_issues.each{|p,issues|
        if (p.id==self.rm_project.to_s) then
          iss=issues
        end
      }
    end
    print("Acabe de destruir incidencias\n")
=end destruye todas las incidencias
    
    #=begin crea
    all_projects=RedmineRest::Models::Project.all
    pr=nil
    all_projects.each {|t|
      print "Project #{t.name} item:"+t.id.to_s+"\n"
      if t.id.to_i == self.rm_project then
        pr=t
        print ("***** ESTE\n")
      end
    }
    existing_issues=self.issue_rms.clone
    systosync = []
    self.project.systems.each{|sys|
      parentatomic=false
      if (sys.parent) then
        parentatomic=sys.parent.is_part_of_atomic
      end
      if not(sys.is_part_of_acquired) and not(parentatomic) and not(sys.is_part_of_virtual) then
        systosync << sys
      end
    }
    #systosync.order(:hierarchical_priority).all[0..10].each{|sys|
    systosync[0..10].each{|sys|
      prec=sync_issue(pr,sys,existing_issues,precedents)
    }
    #=end crea
  end
    
  def create_issue(pr,ms,prec)
    @patch_already_designed = true
    @id_custom_field_eosys = 1
    @id_custom_field_eosysid = 2
    if (ms.acquisition_workflow) then
      all_trackers=RedmineRest::Models::Tracker.all
      tr=nil
      all_trackers.each {|t|
        print "Tracker #{t.name} item:"+t.id.to_s+"\n"
        if t.name==ms.acquisition_workflow.name then
          tr=t
          print ("***** ESTE\n")
        end
      }

      all_users=RedmineRest::Models::User.all
      us=nil
      all_users.each {|t|
        print "User #{t.login} item:"+t.id.to_s+"\n"
        if t.login=="txinto" then
          us=t
          print ("***** ESTE\n")
        end
      }
      current_date=Time.now
      print "Creamos una issue\n"
      i=Issue.new
      i.project=pr
      i.tracker=tr
      i.subject=tr.name+" of "+ms.to_s
      i.author_id=us
      i.status_id=1
      i.priority_id=1
      i.description="Issue to track " + tr.name+" of "+ms.to_s
      i.custom_fields = []
      i.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
      i.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
      print i.custom_fields.to_s
      done=i.save
      print "Hecho: "+done.to_s+"\n"
      print "Issue:"+i.to_s+"\n"
      print "Tracker:"+i.tracker.id.to_s+"\n"
      print "Project:"+i.project.id.to_s+"\n"
      
      # Creamos las sub issues
      if (ms.acquisition_workflow.name=="Fabrication") then
        if (not(@patch_already_designed)) then
          # Create the spec
          iSpec=Issue.new
          if (prec[:eng]==nil) then
            iSpec.start_date = current_date
            iSpec.due_date = iSpec.start_date
          end
          iSpec.project=pr
          iSpec.tracker=tr
          iSpec.parent=i
          iSpec.subject="Specification"+" of "+ms.to_s
          iSpec.author_id=us
          iSpec.status_id=1
          iSpec.priority_id=1
          iSpec.description="Issue to track " + "specification" + " of "+ms.to_s
          iSpec.custom_fields = []
          iSpec.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
          iSpec.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
          iSpec.estimated_hours=8
          print iSpec.custom_fields.to_s
          done=iSpec.save
          print "Hecho: "+done.to_s+"\n"
          print "Issue:"+iSpec.to_s+"\n"
          print "Tracker:"+iSpec.tracker.id.to_s+"\n"
          print "Project:"+iSpec.project.id.to_s+"\n"        
          if (prec[:eng]) then
            r1=Relation.new
            r1.prefix_options[:issue_id] = prec[:eng].id
            r1.issue_id=prec[:eng].id
            r1.issue_to_id=iSpec.id
            r1.relation_type="precedes"
            done=r1.save
            print "Relation Hecho: "+done.to_s+"\n"        
          end

          # Create the validation plan
          iValP=Issue.new
          iValP.start_date = iSpec.start_date
          iValP.due_date = iSpec.due_date
          iValP.project=pr
          iValP.tracker=tr
          iValP.parent=i
          #i3.blocked_by << i2
          iValP.subject="Validation Plan"+" of "+ms.to_s
          iValP.author_id=us
          iValP.status_id=1
          iValP.priority_id=1
          iValP.description="Issue to track " + "validation plan" + " of "+ms.to_s
          iValP.custom_fields = []
          iValP.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
          iValP.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
          iValP.estimated_hours=8
          print iValP.custom_fields.to_s
          done=iValP.save
          print "Hecho: "+done.to_s+"\n"
          print "Issue:"+iValP.to_s+"\n"
          print "Tracker:"+iValP.tracker.id.to_s+"\n"
          print "Project:"+iValP.project.id.to_s+"\n"        
          if (prec[:eng]) then
            r1=Relation.new
            r1.prefix_options[:issue_id] = prec[:eng].id
            r1.issue_id=prec[:eng].id
            r1.issue_to_id=iValP.id
            r1.relation_type="precedes"
            done=r1.save
            print "Relation Hecho: "+done.to_s+"\n"        
          end
          r1=Relation.new
          r1.prefix_options[:issue_id] = iValP.id
          r1.issue_id=iValP.id
          r1.issue_to_id=iSpec.id
          r1.relation_type="blocks"
          done=r1.save
          print "Relation Hecho: "+done.to_s+"\n"        

          # Create the Design
          iDesign=Issue.new
          iDesign.project=pr
          iDesign.tracker=tr
          iDesign.parent=i
          iDesign.subject="Design"+" of "+ms.to_s
          iDesign.author_id=us
          iDesign.status_id=1
          iDesign.priority_id=1
          iDesign.description="Issue to track " + "design" + " of "+ms.to_s
          iDesign.custom_fields = []
          iDesign.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
          iDesign.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
          iDesign.estimated_hours=8
          print iDesign.custom_fields.to_s
          done=iDesign.save
          print "Hecho: "+done.to_s+"\n"
          print "Issue:"+iDesign.to_s+"\n"
          print "Tracker:"+iDesign.tracker.id.to_s+"\n"
          print "Project:"+iDesign.project.id.to_s+"\n"
          r2=Relation.new
          r2.prefix_options[:issue_id] = iSpec.id
          r2.issue_id=iSpec.id
          r2.issue_to_id=iDesign.id
          r2.relation_type="precedes"
          r2.delay=0
          done=r2.save
          print "Relation Hecho: "+done.to_s+"\n"
          prec[:eng]=iDesign
        else
        end
        # Create the Delineation
        iDelin=Issue.new
        iDelin.project=pr
        iDelin.tracker=tr
        if (@patch_already_designed) then
          if (prec[:delin] == nil) then
            iDelin.start_date = current_date
            iDelin.due_date = iDelin.start_date
          end
        end
        iDelin.parent=i
        iDelin.subject="Delineation"+" of "+ms.to_s
        iDelin.author_id=us
        iDelin.status_id=1
        iDelin.priority_id=1
        iDelin.description="Issue to track " + "delineation" + " of "+ms.to_s
        iDelin.custom_fields = []
        iDelin.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
        iDelin.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
        iDelin.estimated_hours=8
        print iDelin.custom_fields.to_s
        done=iDelin.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+iDelin.to_s+"\n"
        print "Tracker:"+iDelin.tracker.id.to_s+"\n"
        print "Project:"+iDelin.project.id.to_s+"\n"
        if (prec[:delin]) then
          r1=Relation.new
          r1.prefix_options[:issue_id] = prec[:delin].id
          r1.issue_id=prec[:delin].id
          r1.issue_to_id=iDelin.id
          r1.relation_type="precedes"
          done=r1.save
          print "Relation Hecho: "+done.to_s+"\n"        
        end
        if (not(@patch_already_designed)) then
          precissue = iDesign
        else
          precissue = prec[:delin]
        end
        if (precissue) then
          r3=Relation.new
          r3.prefix_options[:issue_id] = precissue.id
          r3.issue_id = precissue.id
          r3.issue_to_id = iDelin.id
          r3.relation_type="precedes"
          r3.delay=0
          done=r3.save
          print "Relation Hecho: "+done.to_s+"\n"
        end  

        # Supervise the delineation
        iDelinSup=Issue.new
        iDelinSup.project=pr
        iDelinSup.tracker=tr
        iDelinSup.parent=i
        iDelinSup.subject="Supervision of Delineation"+" of "+ms.to_s
        iDelinSup.author_id=us
        iDelinSup.status_id=1
        iDelinSup.priority_id=1
        iDelinSup.description="Issue to track " + "delineation supervision" + " of "+ms.to_s
        iDelinSup.custom_fields = []
        iDelinSup.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
        iDelinSup.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
        iDelinSup.estimated_hours=8
        print iDelinSup.custom_fields.to_s
        done=iDelinSup.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+iDelinSup.to_s+"\n"
        print "Tracker:"+iDelinSup.tracker.id.to_s+"\n"
        print "Project:"+iDelinSup.project.id.to_s+"\n"
        if (prec[:delin]) then
          r1=Relation.new
          r1.prefix_options[:issue_id] = prec[:delin].id
          r1.issue_id=prec[:delin].id
          r1.issue_to_id=iDelinSup.id
          r1.relation_type="precedes"
          done=r1.save
          print "Relation Hecho: "+done.to_s+"\n"        
        end
        if (not(@patch_already_designed)) then
          precissue = iDesign
        else
          precissue = prec[:delin]
        end
        if (precissue) then
          r4=Relation.new
          r4.prefix_options[:issue_id] = precissue.id
          r4.issue_id = precissue.id
          r4.issue_to_id = iDelinSup.id
          r4.relation_type="precedes"
          r4.delay=0
          done=r4.save
          print "Relation Hecho: "+done.to_s+"\n"
        end
        r5=Relation.new
        r5.prefix_options[:issue_id] = iDelinSup.id
        r5.issue_id=iDelinSup.id
        r5.issue_to_id=iDelin.id
        r5.relation_type="blocks"
        done=r5.save
        print "Relation Hecho: "+done.to_s+"\n"

        prec[:delin]=iDelin

        # Manufacture it
        iManuf=Issue.new
        iManuf.project=pr
        iManuf.tracker=tr
        iManuf.parent=i
        iManuf.subject="Manufacturing"+" of "+ms.to_s
        iManuf.author_id=us
        iManuf.status_id=1
        iManuf.priority_id=1
        iManuf.description="Issue to track " + "manufacturing" + " of "+ms.to_s
        iManuf.custom_fields = []
        iManuf.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
        iManuf.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
        iManuf.estimated_hours=8
        print iManuf.custom_fields.to_s
        done=iManuf.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+iManuf.to_s+"\n"
        print "Tracker:"+iManuf.tracker.id.to_s+"\n"
        print "Project:"+iManuf.project.id.to_s+"\n"
        if (prec[:manuf]) then
          r1=Relation.new
          r1.prefix_options[:issue_id] = prec[:manuf].id
          r1.issue_id=prec[:manuf].id
          r1.issue_to_id=iManuf.id
          r1.relation_type="precedes"
          done=r1.save
          print "Relation Hecho: "+done.to_s+"\n"        
        end
        r3=Relation.new
        r3.prefix_options[:issue_id] = iDelin.id
        r3.issue_id=iDelin.id
        r3.issue_to_id=iManuf.id
        r3.relation_type="precedes"
        r3.delay=0
        done=r3.save
        print "Relation Hecho: "+done.to_s+"\n"

        # Supervise the manufacturing
        iManufSup=Issue.new
        iManufSup.project=pr
        iManufSup.tracker=tr
        iManufSup.parent=i
        iManufSup.subject="Supervision of Manufacturing"+" of "+ms.to_s
        iManufSup.author_id=us
        iManufSup.status_id=1
        iManufSup.priority_id=1
        iManufSup.description="Issue to track " + "manufacturing supervision" + " of "+ms.to_s
        iManufSup.custom_fields = []
        iManufSup.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
        iManufSup.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
        iManufSup.estimated_hours=8
        print iManufSup.custom_fields.to_s
        done=iManufSup.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+iManufSup.to_s+"\n"
        print "Tracker:"+iManufSup.tracker.id.to_s+"\n"
        print "Project:"+iManufSup.project.id.to_s+"\n"
        if (prec[:manuf]) then
          r1=Relation.new
          r1.prefix_options[:issue_id] = prec[:manuf].id
          r1.issue_id=prec[:manuf].id
          r1.issue_to_id=iManufSup.id
          r1.relation_type="precedes"
          done=r1.save
          print "Relation Hecho: "+done.to_s+"\n"        
        end
        r4=Relation.new
        r4.prefix_options[:issue_id] = iDelin.id
        r4.issue_id=iDelin.id
        r4.issue_to_id=iManufSup.id
        r4.relation_type="precedes"
        r4.delay=0
        done=r4.save
        print "Relation Hecho: "+done.to_s+"\n"
        r5=Relation.new
        r5.prefix_options[:issue_id] = iManufSup.id
        r5.issue_id=iManufSup.id
        r5.issue_to_id=iManuf.id
        r5.relation_type="blocks"
        done=r5.save
        print "Relation Hecho: "+done.to_s+"\n"
        
        # Metrology
        iMetro=Issue.new
        iMetro.project=pr
        iMetro.tracker=tr
        iMetro.parent=i
        iMetro.subject="Metrology"+" of "+ms.to_s
        iMetro.author_id=us
        iMetro.status_id=1
        iMetro.priority_id=1
        iMetro.description="Issue to track " + "metrology" + " of "+ms.to_s
        iMetro.custom_fields = []
        iMetro.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
        iMetro.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
        iMetro.estimated_hours=8
        print iMetro.custom_fields.to_s
        done=iMetro.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+iMetro.to_s+"\n"
        print "Tracker:"+iMetro.tracker.id.to_s+"\n"
        print "Project:"+iMetro.project.id.to_s+"\n"
        if (prec[:manuf]) then
          r1=Relation.new
          r1.prefix_options[:issue_id] = prec[:manuf].id
          r1.issue_id=prec[:manuf].id
          r1.issue_to_id=iMetro.id
          r1.relation_type="precedes"
          done=r1.save
          print "Relation Hecho: "+done.to_s+"\n"        
        end
        if (prec[:metro]) then
          r1=Relation.new
          r1.prefix_options[:issue_id] = prec[:metro].id
          r1.issue_id=prec[:metro].id
          r1.issue_to_id=iMetro.id
          r1.relation_type="precedes"
          done=r1.save
          print "Relation Hecho: "+done.to_s+"\n"        
        end
        r4=Relation.new
        r4.prefix_options[:issue_id] = iDelin.id
        r4.issue_id=iDelin.id
        r4.issue_to_id=iMetro.id
        r4.relation_type="precedes"
        r4.delay=0
        done=r4.save
        print "Relation Hecho: "+done.to_s+"\n"
        r5=Relation.new
        r5.prefix_options[:issue_id] = iManufSup.id
        r5.issue_id=iManufSup.id
        r5.issue_to_id=iMetro.id
        r5.relation_type="blocks"
        done=r5.save
        print "Relation Hecho: "+done.to_s+"\n"
        r5=Relation.new
        r5.prefix_options[:issue_id] = iMetro.id
        r5.issue_id=iMetro.id
        r5.issue_to_id=iManuf.id
        r5.relation_type="blocks"
        done=r5.save
        print "Relation Hecho: "+done.to_s+"\n"

        prec[:manuf]=iManuf
        prec[:metro]=iMetro     

        # Validation
        iVal=Issue.new
        iVal.project=pr
        iVal.tracker=tr
        iVal.parent=i
        iVal.subject="Validation"+" of "+ms.to_s
        iVal.author_id=us
        iVal.status_id=1
        iVal.priority_id=1
        iVal.description="Issue to track " + "validation" + " of "+ms.to_s
        iVal.custom_fields = []
        iVal.custom_fields << {:name => 'eosys', :value => true, :id => @id_custom_field_eosys}
        iVal.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => @id_custom_field_eosysid}
        iVal.estimated_hours=8
        print iVal.custom_fields.to_s
        done=iVal.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+iVal.to_s+"\n"
        print "Tracker:"+iVal.tracker.id.to_s+"\n"
        print "Project:"+iVal.project.id.to_s+"\n"
        r4=Relation.new
        r4.prefix_options[:issue_id] = iManuf.id
        r4.issue_id=iManuf.id
        r4.issue_to_id=iVal.id
        r4.relation_type="precedes"
        r4.delay=0
        done=r4.save
        print "Relation Hecho: "+done.to_s+"\n"
      end
    else
      print("\n************ system without acquisition workflow: "+ms.system.to_s+"\n")
    end
    return prec
  end
    
  def sync_issue(pr,sys,exiss,prec)
    found=false
    # Find correct tracker
    sys.mech_systems.each{ |ms|
=begin borra issues rms duplicados
      exiss.each{ |i|
        if (i.system==ms.system) then
          # TODO: ensure that issues rms deals with several mech_systems
          # for the same system
          exiss.delete(i)
          found=true
        end
      }
=end borra issues rms duplicados
      if (not(found)) then
        # The issue workflow has to be created
        prec=self.create_issue(pr,ms,prec)
      end
    }
    return prec
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
