class MechSystem < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    file_name        :string
    version   :string
    timestamps
  end
  attr_accessible :file_name, :atomic, :atomic_component, :mech_system_type, 
    :mech_system_type_id,:acquisition_status, :acquisition_status_id,
    :mech_optical_surface, :mech_optical_surface_id,
    :mech_material, :mech_material_id, :acquisition_workflow,
    :acquisition_workflow_id
  
  belongs_to :system, :inverse_of => :mech_systems, :creator => :true
  
  belongs_to :mech_system_type, :inverse_of => :mech_systems
  belongs_to :mech_optical_surface, :inverse_of => :mech_systems
  belongs_to :mech_material, :inverse_of => :mech_systems
  belongs_to :acquisition_workflow, :inverse_of => :mech_systems
  belongs_to :acquisition_status, :inverse_of => :mech_systems

  has_many :mech_system_fab_machines, :inverse_of => :mech_system, 
    :dependent => :destroy
  
  children :mech_system_fab_machines

  def self.import_attributes
    ret=MechSystem.accessible_attributes.clone
    ret.delete("system_id")
    ret.delete("mech_system_type_id")
    ret.delete("mech_optical_surface_id")
    ret.delete("mech_material_id")
    ret.delete("acquisition_workflow_id")
    ret.delete("acquisition_status_id")
    ret.delete("")
    return ret
  end  
  
  def to_s
    self.system.to_s
  end
  
  def is_built
    ret=false
    if (not(self.system.is_part_of_acquired)) then
      if (self.acquisition_status) then
        ret=self.acquisition_status.built
      end
    else
      ret=true
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
