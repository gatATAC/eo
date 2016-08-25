class AdaptAcquisitionStatusesToLegend < ActiveRecord::Migration
  def self.up
    
    # Find corresponding workflows
    integ=AcquisitionWorkflow.find_by_name("Integration")
    fab=AcquisitionWorkflow.find_by_name("Fabrication")
    comm=AcquisitionWorkflow.find_by_name("Commercial")
    subc=AcquisitionWorkflow.find_by_name("Subcontract")

    # Create new statuses for fabrication
    AcquisitionStatus.create :name => "Specified", :acquisition_workflow_id => fab.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Prelim. designed", :acquisition_workflow_id => fab.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Prototypes launched", :acquisition_workflow_id => fab.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Break-in done", :acquisition_workflow_id => fab.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Validated", :acquisition_workflow_id => fab.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Conditionally accepted", :acquisition_workflow_id => fab.id, :closed => true, :built => true

    # Create new statuses for integration
    AcquisitionStatus.create :name => "Specified", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Prelim. designed", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Prototypes launched", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Designed", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Deligned", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Integrated", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Break-in done", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Validated", :acquisition_workflow_id => integ.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Conditionally accepted", :acquisition_workflow_id => integ.id, :closed => true, :built => true


    AcquisitionStatus.create :name => "Alternatives found", :acquisition_workflow_id => comm.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Validated", :acquisition_workflow_id => comm.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Conditionally accepted", :acquisition_workflow_id => comm.id, :closed => true, :built => true


    AcquisitionStatus.create :name => "Identified", :acquisition_workflow_id => subc.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Sow launched", :acquisition_workflow_id => subc.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Vendor selected", :acquisition_workflow_id => subc.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Subcontract started", :acquisition_workflow_id => subc.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Received", :acquisition_workflow_id => subc.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Adapted", :acquisition_workflow_id => subc.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Validated", :acquisition_workflow_id => subc.id, :closed => false, :built => true
    AcquisitionStatus.create :name => "Conditionally accepted", :acquisition_workflow_id => subc.id, :closed => true, :built => true

    # Adapt existing statuses to legend
    tmp = fab.acquisition_statuses.find_by_name("Manufacturing")
    tmp.name="Deligned"
    tmp.save
    tmp = fab.acquisition_statuses.find_by_name("Validation")
    tmp.name="Measured"
    tmp.save
    tmp = fab.acquisition_statuses.find_by_name("Rework")
    tmp.name="Rework launched"
    tmp.save
    
    tmp = integ.acquisition_statuses.find_by_name("Integration")
    tmp.name="Subsystems Acquired"
    tmp.save
    tmp = integ.acquisition_statuses.find_by_name("Validation")
    tmp.name="Measured"
    tmp.save
    tmp = integ.acquisition_statuses.find_by_name("Rework")
    tmp.name="Rework launched"
    tmp.save

    tmp = comm.acquisition_statuses.find_by_name("Alternative search")
    tmp.name="Identified"
    tmp.save
    tmp = comm.acquisition_statuses.find_by_name("Validation")
    tmp.name="Adapted"
    tmp.save
    
    # Destroy unused statused not included in legend
    tmp = fab.acquisition_statuses.find_by_name("Cycling")
    tmp.destroy
    tmp = comm.acquisition_statuses.find_by_name("Identifying")
    tmp.destroy
    tmp = comm.acquisition_statuses.find_by_name("Adaptation")
    tmp.destroy
    tmp = comm.acquisition_statuses.find_by_name("Rework")
    tmp.destroy
  end

  def self.down

    # Seems to be unnecesary to undone these changes, as previous migration can be undone
    
  end
end
