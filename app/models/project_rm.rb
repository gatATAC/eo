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

    extra = []
    extra += self.issue_rms
    all_issues=Issue.all.group_by_project
    all_issues.each{|p,issues|
      if (p.id==self.rm_project.to_s) then
        issues.each do |issue|
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
              if f.name=="eosysid" then
                if (f.value) then
                  sysid=Integer(f.value)
                  sys=System.find_by_id(sysid)
                  issue_rm.system=sys
                end
              end
            }
          end
          issue_rm.save
        end
      end
    }

    extra.each {|irm|
      irm.delete
    }
  end  

  def create_sample_issue
    all_trackers=RedmineRest::Models::Tracker.all
    tr=nil
    all_trackers.each {|t|
      print "Tracker #{t.name} item:"+t.id.to_s+"\n"
      if t.name=="Feature" then
        tr=t
        print ("***** ESTE\n")
      end
    }
    all_projects=RedmineRest::Models::Project.all
    pr=nil
    all_projects.each {|t|
      print "Project #{t.name} item:"+t.id.to_s+"\n"
      if t.id.to_i == self.rm_project then
        pr=t
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
    
    #Create an Issue
    print "Creamos una issue\n"
    i=Issue.new
    i.project=pr
    i.tracker=tr
    i.subject="Test issue created from Eo"
    i.author_id=us
    i.status_id=1
    i.priority_id=1
    i.description="This is a test"
    i.custom_fields = []
    i.custom_fields << {:name => 'eosys', :value => true, :id => 10}
    i.custom_fields << {:name => 'eosysid', :value => "1", :id => 11}
    print i.custom_fields.to_s
    done=i.save
    print "Hecho: "+done.to_s+"\n"
    print "Issue:"+i.to_s+"\n"
    print "Tracker:"+i.tracker.id.to_s+"\n"
    print "Project:"+i.project.id.to_s+"\n"    
  end
  
  def sync_issues
    self.issue_rms.each{|i|
      rm_issue=Issue.find_by_id(i.rm_ident)
      if (rm_issue) then
        rm_issue.destroy
      end
      i.destroy
    }
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
    systosync[10..20].each{|sys|
      sync_issue(pr,sys,existing_issues)
    }
  end
  
  def create_issue(pr,ms)
    if (not(ms.acquisition_workflow)) then
      print("\n************ system without acquisition workflow: "+ms.system.to_s+"\n")
    end
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
=begin
      i.custom_fields << {:name => 'eosysid', :value => ms.id, :id => 11}
=end      
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
      i.custom_fields << {:name => 'eosys', :value => true, :id => 10}
      i.custom_fields << {:name => 'eosysid', :value => "1", :id => 11}
      print i.custom_fields.to_s
      done=i.save
      print "Hecho: "+done.to_s+"\n"
      print "Issue:"+i.to_s+"\n"
      print "Tracker:"+i.tracker.id.to_s+"\n"
      print "Project:"+i.project.id.to_s+"\n"
      # Creamos las sub issues
      if (ms.acquisition_workflow.name=="Fabrication") then
        # Create the spec
        i2=Issue.new
        i2.project=pr
        i2.tracker=tr
        i2.parent=i
        i2.subject="Specification"+" of "+ms.to_s
        i2.author_id=us
        i2.status_id=1
        i2.priority_id=1
        i2.description="Issue to track " + "specification" + " of "+ms.to_s
        i2.custom_fields = []
        i2.custom_fields << {:name => 'eosys', :value => true, :id => 10}
        i2.custom_fields << {:name => 'eosysid', :value => "1", :id => 11}
        i2.estimated_hours=8
        print i2.custom_fields.to_s
        done=i2.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+i2.to_s+"\n"
        print "Tracker:"+i2.tracker.id.to_s+"\n"
        print "Project:"+i2.project.id.to_s+"\n"        

        # Create the validation plan
        i3=Issue.new
        i3.project=pr
        i3.tracker=tr
        i3.parent=i
        #i3.blocked_by << i2
        i3.subject="Validation Plan"+" of "+ms.to_s
        i3.author_id=us
        i3.status_id=1
        i3.priority_id=1
        i3.description="Issue to track " + "validation plan" + " of "+ms.to_s
        i3.custom_fields = []
        i3.custom_fields << {:name => 'eosys', :value => true, :id => 10}
        i3.custom_fields << {:name => 'eosysid', :value => "1", :id => 11}
        i3.estimated_hours=8
        print i3.custom_fields.to_s
        done=i3.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+i3.to_s+"\n"
        print "Tracker:"+i3.tracker.id.to_s+"\n"
        print "Project:"+i3.project.id.to_s+"\n"        
        r1=Relation.new
        r1.issue_id=i2.id
        r1.issue_to_id=i3.id
        r1.relation_type="blocks"
        r1.prefix_options[:issue_id] = i2.id
        done=r1.save
        print "Relation Hecho: "+done.to_s+"\n"

        # Create the Design
        i4=Issue.new
        i4.project=pr
        i4.tracker=tr
        i4.parent=i
        #i4.preceded_by << i3
        i4.subject="Design"+" of "+ms.to_s
        i4.author_id=us
        i4.status_id=1
        i4.priority_id=1
        i4.description="Issue to track " + "design" + " of "+ms.to_s
        i4.custom_fields = []
        i4.custom_fields << {:name => 'eosys', :value => true, :id => 10}
        i4.custom_fields << {:name => 'eosysid', :value => "1", :id => 11}
        i4.estimated_hours=8
        print i4.custom_fields.to_s
        done=i4.save
        print "Hecho: "+done.to_s+"\n"
        print "Issue:"+i4.to_s+"\n"
        print "Tracker:"+i4.tracker.id.to_s+"\n"
        print "Project:"+i4.project.id.to_s+"\n"
        r2=Relation.new
        r2.issue_id=i3.id
        r2.issue_to_id=i4.id
        r2.relation_type="precedes"
        r2.delay=0
        r2.prefix_options[:issue_id] = i3.id
        done=r2.save
        print "Relation Hecho: "+done.to_s+"\n"
      end
    end 
  end
    
  def sync_issue(pr,sys,exiss)
    found=false
    # Find correct tracker
    sys.mech_systems.each{ |ms|
      exiss.each{ |i|
        if (i.system==ms.system) then
          # TODO: ensure that issues rms deals with several mech_systems
          # for the same system
          exiss.delete(i)
          found=true
        end
      }
      if (not(found)) then
        # The issue workflow has to be created
        self.create_issue(pr,ms)
      end
    }
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
