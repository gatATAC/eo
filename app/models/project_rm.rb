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
  
  # API for iac: abfa968eda36e34fd9014ca305f6973dbd1f586d
  
  def related_issues_txt
    return related_issues.to_s
  end
  
  def reload_issues
    RedmineRest::Models.configure_models apikey:self.rm_apikey, site:self.rm_url
    #RedmineRest::Models.configure_models apikey:"abfa968eda36e34fd9014ca305f6973dbd1f586d", site:self.rm_url
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
                sys=System.find(sysid)
                if (sys) then
                  issue_rm.system=sys
                end
              end
            end
          }
          issue_rm.save
        end
      end
    }

    extra.each {|irm|
      irm.delete
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
