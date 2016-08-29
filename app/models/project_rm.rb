class ProjectRm < ActiveRecord::Base
  include RedmineRest::Models

  hobo_model # Don't put anything above this

  fields do
    rm_url        :string
    rm_project    :string
    rm_apikey     :string
    rm_eosys    :integer, :default => 3
    rm_eosysid    :integer, :default => 4
    rm_plm    :string
    rm_member_sys :string, :default => "sys"
    rm_member_mech :string, :default => "mech"
    rm_member_pi :string, :default => "pi"
    rm_member_opt :string, :default => "opt"
    rm_member_hw :string, :default => "hw"
    rm_member_sw :string, :default => "sw"
    rm_member_metro :string, :default => "metro"
    rm_member_valid :string, :default => "valid"
    rm_member_workshop :string, :default => "workshop"
    rm_member_delin :string, :default => "draftman"
    rm_tracker_manuf :string, :default => "Manufacture"
    rm_tracker_delin :string, :default => "Delineate"
    rm_tracker_meas :string, :default => "Measure"
    rm_tracker_doc :string, :default => "Document"
    rm_tracker_design :string, :default => "Design"
    rm_tracker_valid :string, :default => "Validate"
    rm_tracker_superv :string, :default => "Supervise"
    rm_tracker_fab :string, :default => "Fabrication"
    rm_tracker_com :string, :default => "Commercial"
    rm_tracker_subc :string, :default => "Subcontract"
    rm_tracker_integ :string, :default => "Integration"
    rm_status_resolved :string, :default => "Resolved"
    rm_status_new :string, :default => "New"

      
    timestamps
  end
  belongs_to :project, :inverse_of => :project_rms 
  
  has_many :issue_rms, :dependent => :destroy, :inverse_of => :project_rm
  
  attr_accessible :rm_url, :rm_project, :rm_apikey, :project, :project_id, 
    :rm_eosys, :rm_eosysid, :rm_plm, :rm_member_sys, :rm_member_mech, 
    :rm_member_pi, :rm_member_opt, :rm_member_hw, :rm_member_sw, 
    :rm_member_metro, :rm_member_valid, :rm_member_workshop,
    :rm_member_delin, :rm_tracker_manuf, :rm_tracker_delin, :rm_tracker_meas,
    :rm_tracker_doc, :rm_tracker_design, :rm_tracker_valid, :rm_tracker_superv,
    :rm_tracker_fab, :rm_tracker_com, :rm_tracker_subc, :rm_tracker_integ,
    :rm_status_resolved, :rm_status_new
  
  children :issue_rms

  def find_rm_project
    pr=nil
    prid=0
    all_projects=RedmineRest::Models::Project.all
    all_projects.each {|t|
      if t.identifier == self.rm_project then
        pr=t
        prid=t.id
        break
      end
    }
    return pr,prid    
  end
  
  
  
  def reload_issues
    RedmineRest::Models.configure_models apikey:self.rm_apikey, site:self.rm_url
  
    pr,prid = self.find_rm_project
    pending_issues=true
    pending_offset=0
    extra = []
    extra += self.issue_rms
    while (pending_issues) do
      issues=Issue.where(project_id:prid, offset:pending_offset, order:('id desc'))
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
            issue_rm.assignee = issue.assigned_to.id
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

  def destroy_rm_issues(destroy_redmine, destroy_local)
    self.issue_rms.each{|rm|
      if (destroy_redmine) then
        i=RedmineRest::Models::Issue.find_by_id(rm.rm_ident)
        if (i) then
          i.destroy
        end
      end
      if (destroy_local) then
        rm.destroy
      end
    }
  end
  
  def destroy_all_issues
    RedmineRest::Models.configure_models apikey:self.rm_apikey, site:self.rm_url
    self.destroy_rm_issues(true,true)
  end
  
  def sync_issues
    RedmineRest::Models.configure_models apikey:self.rm_apikey, site:self.rm_url
    precedents = {:eng => nil, :delin => nil,
      :manuf => nil, :metro => nil, :valid => nil }
    
    # Patch, instead of looking for roles, let's look for individuals
    # TODO: Improve this using team roles instead of login names.
    members = {:sys => nil, :eng => nil, :delin => nil, :manuf => nil,
      :metro => nil, :valid => nil }

    pending_users=true
    pending_offset=0
    while (pending_users) do
      users=RedmineRest::Models::User.where(active:true, offset:pending_offset, order:('id desc'))
      if (users != nil) then
        print("\n\n\n\n\n\n\n\n\ntengo users = "+users.size.to_s)
        pending_offset+=users.size
        if (users.size>0) then
          print("\ntengo users = "+users.size.to_s)
          users.each {|t|
            print "User #{t.login} item:"+t.id.to_s+"\n"
            if t.login == self.rm_member_sys then
              members[:sys] = t
            end
            if t.login == self.rm_member_metro then
              members[:metro] = t
            end
            if t.login == self.rm_member_mech then
              members[:eng] = t
            end
            if t.login == self.rm_member_valid then
              members[:valid] = t
            end
            if t.login == self.rm_member_delin then
              members[:delin] = t
            end
            if t.login == self.rm_member_workshop then
              members[:manuf] = t
            end
          }
        else
          pending_users = false
        end
      else
        pending_users = false
      end
    end
    print ("Users --->"+members.to_s+"\n")
    trackers = { }

    all_trackers=RedmineRest::Models::Tracker.all
    all_trackers.each {|t|
      print "Tracker #{t.name} item:"+t.id.to_s+"\n"
      if t.name==self.rm_tracker_manuf then
        trackers[:manuf] = t
        print ">>> manuf\n"
      else
        if t.name==self.rm_tracker_delin then
          trackers[:delin] = t
          print ">>> delin\n"
        else
          if t.name == self.rm_tracker_meas then
            trackers[:metro] = t
            print ">>> metro\n"
          else
            if t.name == self.rm_tracker_doc then
              trackers[:doc] = t
              print ">>> doc\n"
            else
              if t.name == self.rm_tracker_design then
                trackers[:design] = t
                print ">>> design\n"
              else
                if t.name == self.rm_tracker_valid then
                  trackers[:valid] = t
                  print ">>> valid\n"
                else
                  if t.name == self.rm_tracker_superv then
                    trackers[:superv] = t
                    print ">>> superv\n"
                  else
                    if t.name == self.rm_tracker_fab then
                      trackers[:fab] = t
                      print ">>> fab\n"
                    else
                      if t.name == self.rm_tracker_com then
                        trackers[:comm] = t
                        print ">>> comm\n"
                      else
                        if t.name == self.rm_tracker_subc then
                          trackers[:subctr] = t
                          print ">>> subctr\n"
                        else
                          if t.name == self.rm_tracker_integ then
                            trackers[:integ] = t
                            print ">>> integ\n"
                          else
                            print ">>> not recognized\n"                            
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
        
    }

    statuses = {:resolved => nil, :new => nil}
    all_statuses = RedmineRest::Models::IssueStatus.all
    all_statuses.each {|t|
      print "Statuses #{t.name} item:"+t.id.to_s+"\n"
      if t.name == self.rm_status_resolved then
        statuses[:resolved] = t
        print("---> RESOLVED\n")
      end
      if t.name == self.rm_status_new then
        statuses[:new] = t
        print("---> NEW\n")
      end
      } 

    pr,prid=self.find_rm_project
    existing_issues=self.issue_rms.clone
    systosync = []
    sortedsystems=self.project.systems.sort{|a,b| a.hierarchical_priority <=> b.hierarchical_priority}
    sortedsystems.each{|sys|
      parentatomic=false
      if (sys.parent) then
        parentatomic=sys.parent.is_part_of_atomic
      end
      if not(sys.is_part_of_acquired) and not(parentatomic) and not(sys.is_part_of_virtual) then
        systosync << sys
      end
    }
    systosync.each{|sys|
      prec=self.sync_issue(pr,sys,existing_issues,precedents, trackers, members, statuses)
    }
  end
    
  def create_issue(pr,ms,prec, trackers, members, statuses)
    @patch_already_designed = true
    @patch_dont_create_subcontract = true
    workfltr = nil
    if (ms.acquisition_workflow) then
      workfltr = trackers[ms.acquisition_workflow.keystr.to_sym]
      
      current_date=Time.now
      
      if (@patch_dont_create_subcontract == false || workfltr.name!="Subcontract") 
        i=Issue.new
        i.project=pr
        i.tracker=workfltr
        i.subject=ms.to_s
        i.assigned_to  = members[:sys]
        i.status=statuses[:new]
        i.priority_id=1
        i.description="Issue to track " + workfltr.name+" of "+ms.to_s
        i.custom_fields = []
        i.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
        i.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
        print i.custom_fields.to_s
        done=i.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+i.to_s+"\n"
        print "Tracker:"+i.tracker.id.to_s+"\n"
        print "Project:"+i.project.id.to_s+"\n"
      
        # Creamos las sub issues
        if (ms.acquisition_workflow.name=="Fabrication") then
          if (ms.acquisition_status.name!="Measured") then
            if (ms.acquisition_status.name!="Manufactured") then
              if (ms.acquisition_status.name!="Deligned") then
                if (not(@patch_already_designed) and ms.acquisition_status.name!="Designed") then
                  # TO DO: Import other statuses
                  # Create the spec
                  iSpec=Issue.new
                  if (prec[:eng]==nil) then
                    iSpec.start_date = current_date
                    iSpec.due_date = iSpec.start_date
                  end
                  iSpec.project=pr
                  iSpec.tracker = trackers[:doc]
                  iSpec.parent=i
                  iSpec.subject="Spec " + ms.to_s
                  iSpec.assigned_to =members[:eng]
                  iSpec.status=statuses[:new]
                  iSpec.priority_id=1
                  iSpec.description="Issue to track " + "specification" + " of "+ms.to_s
                  iSpec.custom_fields = []
                  iSpec.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
                  iSpec.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
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
                  iValP.tracker=trackers[:doc]
                  iValP.parent=i
                  #i3.blocked_by << i2
                  iValP.subject="VPlan "+ms.to_s
                  iValP.assigned_to =members[:valid]
                  iValP.status=statuses[:new]
                  iValP.priority_id=1
                  iValP.description="Issue to track " + "validation plan" + " of "+ms.to_s
                  iValP.custom_fields = []
                  iValP.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
                  iValP.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
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
                  if (iSpec) then
                    r1=Relation.new
                    r1.prefix_options[:issue_id] = iValP.id
                    r1.issue_id=iValP.id
                    r1.issue_to_id=iSpec.id
                    r1.relation_type="blocks"
                    done=r1.save
                    print "Relation Hecho: "+done.to_s+"\n"        
                  end
                  # Create the Design
                  iDesign=Issue.new
                  iDesign.project=pr
                  iDesign.tracker=trackers[:design]
                  iDesign.parent=i
                  iDesign.subject=ms.to_s
                  iDesign.assigned_to =members[:eng]
                  iDesign.status=statuses[:new]
                  iDesign.priority_id=1
                  iDesign.description="Issue to track " + "design" + " of "+ms.to_s
                  iDesign.custom_fields = []
                  iDesign.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
                  iDesign.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
                  iDesign.estimated_hours=8
                  print iDesign.custom_fields.to_s
                  done=iDesign.save
                  print "Hecho: "+done.to_s+"\n"
                  print "Issue:"+iDesign.to_s+"\n"
                  print "Tracker:"+iDesign.tracker.id.to_s+"\n"
                  print "Project:"+iDesign.project.id.to_s+"\n"
                  if (iSpec) then
                    r2=Relation.new
                    r2.prefix_options[:issue_id] = iSpec.id
                    r2.issue_id=iSpec.id
                    r2.issue_to_id=iDesign.id
                    r2.relation_type="precedes"
                    r2.delay=0
                    done=r2.save
                    print "Relation Hecho: "+done.to_s+"\n"
                  end
                  prec[:eng]=iDesign
                else
                end
                # Create the Delineation
                iDelin=Issue.new
                iDelin.project=pr
                iDelin.tracker=trackers[:delin]
                if (@patch_already_designed) then
                  if (prec[:delin] == nil) then
                    iDelin.start_date = current_date
                    iDelin.due_date = iDelin.start_date
                  end
                end
                iDelin.parent=i
                iDelin.subject=ms.to_s
                iDelin.assigned_to =members[:delin]
                iDelin.status=statuses[:new]
                iDelin.priority_id=1
                iDelin.description="Issue to track " + "delineation" + " of "+ms.to_s
                iDelin.custom_fields = []
                iDelin.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
                iDelin.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
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
                iDelinSup.project = pr
                iDelinSup.tracker = trackers[:superv]
                if (@patch_already_designed) then
                  if (prec[:delin] == nil) then
                    iDelinSup.start_date = iDelin.start_date
                    iDelinSup.due_date = iDelin.start_date
                  end
                end
                iDelinSup.parent=i
                iDelinSup.subject="Sv Delin "+ms.to_s
                iDelinSup.assigned_to =members[:eng]
                iDelinSup.status=statuses[:new]
                iDelinSup.priority_id=1
                iDelinSup.description="Issue to track " + "delineation supervision" + " of "+ms.to_s
                iDelinSup.custom_fields = []
                iDelinSup.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
                iDelinSup.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
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
                if (iDelin) then
                  r5=Relation.new
                  r5.prefix_options[:issue_id] = iDelinSup.id
                  r5.issue_id=iDelinSup.id
                  r5.issue_to_id=iDelin.id
                  r5.relation_type="blocks"
                  done=r5.save
                  print "Relation Hecho: "+done.to_s+"\n"
                end

                prec[:delin]=iDelin
              end
            end
            # Manufacture it
            iManuf=Issue.new
            iManuf.project=pr
            iManuf.tracker=trackers[:manuf]
            if (iDelin == nil and prec[:manuf] == nil) then
              iManuf.start_date = current_date
              iManuf.due_date = iManuf.start_date
            end
            iManuf.parent=i
            iManuf.subject=ms.to_s
            iManuf.status=statuses[:new]
            iManuf.assigned_to =members[:manuf]
            iManuf.priority_id=1
            iManuf.description="Issue to track " + "manufacturing" + " of "+ms.to_s
            iManuf.custom_fields = []
            iManuf.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
            iManuf.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
            iManuf.estimated_hours=8
            print iManuf.custom_fields.to_s
            done=iManuf.save
            if (ms.acquisition_status.name=="Manufactured") then
              iManuf.status_id = statuses[:resolved].id
              iManuf.done_ratio=100
            end
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
            if (iDelin) then
              r3=Relation.new
              r3.prefix_options[:issue_id] = iDelin.id
              r3.issue_id=iDelin.id
              r3.issue_to_id=iManuf.id
              r3.relation_type="precedes"
              r3.delay=0
              done=r3.save
              print "Relation Hecho: "+done.to_s+"\n"
            end
            # Supervise the manufacturing
            iManufSup=Issue.new
            iManufSup.project = pr
            iManufSup.tracker = trackers[:superv]
            if (iDelin == nil and prec[:manuf] == nil) then
              if (iManuf) then
                iManufSup.start_date = iManuf.start_date
                iManufSup.due_date = iManufSup.due_date
              else
                iManufSup.start_date = current_date
                iManufSup.due_date = iManufSup.start_date
              end
            end
            iManufSup.parent=i
            iManufSup.subject="Sv Manuf "+ms.to_s
            iManufSup.assigned_to =members[:eng]
            iManufSup.status=statuses[:new]
            iManufSup.priority_id=1
            iManufSup.description="Issue to track " + "manufacturing supervision" + " of "+ms.to_s
            iManufSup.custom_fields = []
            iManufSup.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
            iManufSup.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
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
            if (iDelin) then
              r4=Relation.new
              r4.prefix_options[:issue_id] = iDelin.id
              r4.issue_id=iDelin.id
              r4.issue_to_id=iManufSup.id
              r4.relation_type="precedes"
              r4.delay=0
              done=r4.save
              print "Relation Hecho: "+done.to_s+"\n"
            end
            if (iManuf) then
              r5=Relation.new
              r5.prefix_options[:issue_id] = iManufSup.id
              r5.issue_id=iManufSup.id
              r5.issue_to_id=iManuf.id
              r5.relation_type="blocks"
              done=r5.save
              print "Relation Hecho: "+done.to_s+"\n"
            end
        
            # Metrology
            iMetro=Issue.new
            iMetro.project=pr
            iMetro.tracker=trackers[:metro]
            iMetro.parent=i
            iMetro.subject=ms.to_s
            iMetro.assigned_to  = members[:metro]
            iMetro.status=statuses[:new]
            iMetro.priority_id=1
            iMetro.description="Issue to track " + "metrology" + " of "+ms.to_s
            iMetro.custom_fields = []
            iMetro.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
            iMetro.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
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
            if (iDelin) then
              r4=Relation.new
              r4.prefix_options[:issue_id] = iDelin.id
              r4.issue_id=iDelin.id
              r4.issue_to_id=iMetro.id
              r4.relation_type="precedes"
              r4.delay=0
              done=r4.save
              print "Relation Hecho: "+done.to_s+"\n"
            end
            if (iManufSup) then
              r5=Relation.new
              r5.prefix_options[:issue_id] = iManufSup.id
              r5.issue_id=iManufSup.id
              r5.issue_to_id=iMetro.id
              r5.relation_type="blocks"
              done=r5.save
              print "Relation Hecho: "+done.to_s+"\n"
            end
            if (iManuf) then
              r5=Relation.new
              r5.prefix_options[:issue_id] = iMetro.id
              r5.issue_id=iMetro.id
              r5.issue_to_id=iManuf.id
              r5.relation_type="blocks"
              done=r5.save
              print "Relation Hecho: "+done.to_s+"\n"
            end
            prec[:manuf]=iManuf
            prec[:metro]=iMetro     
          else
          
          end
          # Validation
          iVal=Issue.new
          iVal.project=pr
          iVal.tracker=trackers[:valid]
          if (iManuf == nil and prec[:eng] == nil) then
            iVal.start_date = current_date
            iVal.due_date = iVal.start_date
          end
          iVal.parent=i
          iVal.subject=ms.to_s
          iVal.assigned_to = members[:valid]
          iVal.status=statuses[:new]
          iVal.priority_id=1
          iVal.description="Issue to track " + "validation" + " of "+ms.to_s
          iVal.custom_fields = []
          iVal.custom_fields << {:name => 'eosys', :value => true, :id => self.rm_eosys}
          iVal.custom_fields << {:name => 'eosysid', :value => ms.system.id, :id => self.rm_eosysid}
          iVal.estimated_hours=8
          print iVal.custom_fields.to_s
          done=iVal.save
          print "Hecho: "+done.to_s+"\n"
          print "Issue:"+iVal.to_s+"\n"
          print "Tracker:"+iVal.tracker.id.to_s+"\n"
          print "Project:"+iVal.project.id.to_s+"\n"
          if iManuf then
            precissue=iManuf
          else
            precissue=prec[:eng]
          end
          if (precissue) then
            r4=Relation.new
            r4.prefix_options[:issue_id] = precissue.id
            r4.issue_id=precissue.id
            r4.issue_to_id=iVal.id
            r4.relation_type="precedes"
            r4.delay=0
            done=r4.save
            print "Relation Hecho: "+done.to_s+"\n"
          end
        end
      end
    else
      print("\n************ system without acquisition workflow: "+ms.system.to_s+"\n")
    end
    return prec
  end
    
  def sync_issue(pr,sys,exiss,prec, trackers, members, statuses)
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
        prec=self.create_issue(pr,ms,prec, trackers, members, statuses)
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
