class IssueRm < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    subject :string
    description :text
    rm_ident :integer
    assignee :integer
    author :integer
    tracker :integer
    start_date :datetime
    due_date :datetime
    done_ratio :integer
    eosys :boolean, :default => false
    timestamps
  end
  attr_accessible :name, :project_rm, :project_rm_id, :rm_ident
  
  belongs_to :project_rm, :inverse_of => :issue_rms 
  belongs_to :system, :inverse_of => :issue_rms
  
  def name
    self.subject
  end
  
  def rm_link
    project_rm.rm_url+"/issues/"+rm_ident.to_s
  end
  
  def acquisition_status
    ret=nil
    sys=self.system
    if (sys) then
      ms=sys.mech_systems.first
      if (ms) then
        ret=ms.acquisition_status
      end
    end
    return ret
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
