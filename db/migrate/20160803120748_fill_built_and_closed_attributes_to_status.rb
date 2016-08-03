class FillBuiltAndClosedAttributesToStatus < ActiveRecord::Migration
  def self.up
    
    integ=AcquisitionWorkflow.find_by_name("Integration")
    fab=AcquisitionWorkflow.find_by_name("Fabrication")
    comm=AcquisitionWorkflow.find_by_name("Commercial")
    subc=AcquisitionWorkflow.find_by_name("Subcontract")

    AcquisitionStatus.create :name => "Closed", :acquisition_workflow_id => fab.id, :closed => true, :built => true
    AcquisitionStatus.create :name => "Closed", :acquisition_workflow_id => integ.id, :closed => true, :built => true
    AcquisitionStatus.create :name => "Closed", :acquisition_workflow_id => comm.id, :closed => true, :built => true
    AcquisitionStatus.create :name => "Closed", :acquisition_workflow_id => subc.id, :closed => true, :built => true

    tmp = fab.acquisition_statuses.find_by_name("Manufactured")
    tmp.built=true
    tmp.save
    tmp = fab.acquisition_statuses.find_by_name("Cycling")
    tmp.built=true
    tmp.save
    tmp = fab.acquisition_statuses.find_by_name("Validation")
    tmp.built=true
    tmp.save
    tmp = fab.acquisition_statuses.find_by_name("Rework")
    tmp.built=true
    tmp.save
    
    tmp = integ.acquisition_statuses.find_by_name("Validation")
    tmp.built=true
    tmp.save
    tmp = integ.acquisition_statuses.find_by_name("Rework")
    tmp.built=true
    tmp.save

    tmp = comm.acquisition_statuses.find_by_name("Received")
    tmp.built=true
    tmp.save
    tmp = comm.acquisition_statuses.find_by_name("Validation")
    tmp.built=true
    tmp.save
    tmp = comm.acquisition_statuses.find_by_name("Rework")
    tmp.built=true
    tmp.save
  end

  def self.down

    # Seems to be unnecesary to undone these changes, as previous migration can be undone
    
  end
end
