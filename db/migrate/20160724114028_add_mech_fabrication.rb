class AddMechFabrication < ActiveRecord::Migration
  def self.up
    create_table :mech_system_fab_machines do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :mech_machine_id
      t.integer  :mech_system_id
    end
    add_index :mech_system_fab_machines, [:mech_machine_id]
    add_index :mech_system_fab_machines, [:mech_system_id]

    create_table :mech_machines do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    MechMachine.create :name => "CNC"
    MechMachine.create :name => "Cutter"
    MechMachine.create :name => "Conventional"

    create_table :mech_systems do |t|
      t.string   :file_name
      t.string   :version
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :system_id
      t.integer  :mech_system_type_id
      t.integer  :mech_optical_surface_id
      t.integer  :mech_material_id
      t.integer  :acquisition_workflow_id
      t.integer  :acquisition_status_id
    end
    add_index :mech_systems, [:system_id]
    add_index :mech_systems, [:mech_system_type_id]
    add_index :mech_systems, [:mech_optical_surface_id]
    add_index :mech_systems, [:mech_material_id]
    add_index :mech_systems, [:acquisition_workflow_id]
    add_index :mech_systems, [:acquisition_status_id]

    create_table :mech_system_types do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    MechSystemType.create :name => "Assembly"
    MechSystemType.create :name => "Component"
    
    create_table :mech_optical_surfaces do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    MechOpticalSurface.create :name => "Flat Mirror"
    MechOpticalSurface.create :name => "Spherical Mirror"
    MechOpticalSurface.create :name => "Mask"
    MechOpticalSurface.create :name => "Lens"
    
    create_table :mech_materials do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    MechMaterial.create :name => "Steel"
    MechMaterial.create :name => "Stainless Steel"
    MechMaterial.create :name => "440 C Steel"
    MechMaterial.create :name => "Aluminium"
    MechMaterial.create :name => "Bronze"
    MechMaterial.create :name => "Iron"
    MechMaterial.create :name => "Glass"
    MechMaterial.create :name => "Zerodur"
    MechMaterial.create :name => "Plastic"    

    create_table :acquisition_workflows do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    AcquisitionWorkflow.create :name => "Integration"
    AcquisitionWorkflow.create :name => "Fabrication"
    AcquisitionWorkflow.create :name => "Commercial"
    AcquisitionWorkflow.create :name => "Subcontract"

    create_table :acquisition_statuses do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :acquisition_workflow_id
    end
    add_index :acquisition_statuses, [:acquisition_workflow_id]
    
    add_column :systems, :atomic, :boolean, :default => false
    add_column :systems, :acquired, :boolean, :default => false

    integ=AcquisitionWorkflow.find_by_name("Integration")
    fab=AcquisitionWorkflow.find_by_name("Fabrication")
    comm=AcquisitionWorkflow.find_by_name("Commercial")
    subc=AcquisitionWorkflow.find_by_name("Subcontract")

    AcquisitionStatus.create :name => "Designed", :acquisition_workflow_id => fab.id
    AcquisitionStatus.create :name => "Manufacturing", :acquisition_workflow_id => fab.id
    AcquisitionStatus.create :name => "Manufactured", :acquisition_workflow_id => fab.id
    AcquisitionStatus.create :name => "Cycling", :acquisition_workflow_id => fab.id
    AcquisitionStatus.create :name => "Validation", :acquisition_workflow_id => fab.id
    AcquisitionStatus.create :name => "Rework", :acquisition_workflow_id => fab.id

    AcquisitionStatus.create :name => "Integration", :acquisition_workflow_id => integ.id
    AcquisitionStatus.create :name => "Validation", :acquisition_workflow_id => integ.id
    AcquisitionStatus.create :name => "Rework", :acquisition_workflow_id => integ.id

    AcquisitionStatus.create :name => "Identifying", :acquisition_workflow_id => comm.id
    AcquisitionStatus.create :name => "Alternative search", :acquisition_workflow_id => comm.id
    AcquisitionStatus.create :name => "Purchased", :acquisition_workflow_id => comm.id
    AcquisitionStatus.create :name => "Received", :acquisition_workflow_id => comm.id
    AcquisitionStatus.create :name => "Adaptation", :acquisition_workflow_id => comm.id
    AcquisitionStatus.create :name => "Validation", :acquisition_workflow_id => comm.id
    AcquisitionStatus.create :name => "Rework", :acquisition_workflow_id => comm.id

  end

  def self.down
    remove_column :systems, :atomic
    remove_column :systems, :acquired

    drop_table :mech_system_fab_machines
    drop_table :mech_machines
    drop_table :mech_systems
    drop_table :mech_system_types
    drop_table :mech_optical_surfaces
    drop_table :mech_materials
    drop_table :acquisition_workflows
    drop_table :acquisition_statuses
  end
end
