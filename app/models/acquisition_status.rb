class AcquisitionStatus < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    keystr :string
    closed :boolean, :default => :false
    built :boolean, :default => :false
    timestamps
  end
  attr_accessible :name, :acquisition_worflow, :acquisition_workflow_id, 
    :closed, :built, :keystr
  
  belongs_to :acquisition_workflow, :inverse_of => :acquisition_statuses,
    :creator => :true
  
  has_many :mech_systems, :inverse_of => :acquisition_status

  children :mech_systems
  
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
