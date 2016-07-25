class MechSystemFabMachine < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end
  attr_accessible :mech_system, :mech_system_id, :mech_machine, :mech_machine_id
  
  belongs_to :mech_machine, :inverse_of => :mech_system_fab_machines
  belongs_to :mech_system, :inverse_of => :mech_system_fab_machines, 
    :creator => :true
  
  def to_s
    self.mech_system.to_s + " < " + self.mech_machine.to_s
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
