class AddAcqWorkflowStatusKeys < ActiveRecord::Migration
  def self.up
    add_column :acquisition_workflows, :keystr, :string

    add_column :acquisition_statuses, :keystr, :string
    
    integ = AcquisitionWorkflow.find_by_name("Integration")
    fab = AcquisitionWorkflow.find_by_name("Fabrication")
    comm = AcquisitionWorkflow.find_by_name("Commercial")
    subc = AcquisitionWorkflow.find_by_name("Subcontract")

    integ.keystr='integ'
    fab.keystr='fab'
    comm.keystr='comm'
    subc.keystr='subctr'

    integ.save
    fab.save
    comm.save
    subc.save
    
  end

  def self.down
    remove_column :acquisition_workflows, :keystr

    remove_column :acquisition_statuses, :keystr
  end
end
