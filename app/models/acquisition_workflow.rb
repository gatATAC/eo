class AcquisitionWorkflow < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string
    timestamps
  end
  attr_accessible :name

  has_many :mech_systems, :inverse_of => :acquisition_workflow
  has_many :acquisition_statuses, :inverse_of => :acquisition_workflow,
    :dependent => :destroy
  
  children :acquisition_statuses, :mech_systems
  
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
