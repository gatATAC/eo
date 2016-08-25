class AddRmTrackerAndStatusNames < ActiveRecord::Migration
  def self.up
    add_column :project_rms, :rm_tracker_manuf, :string, :default => "Manufacture"
    add_column :project_rms, :rm_tracker_delin, :string, :default => "Delineate"
    add_column :project_rms, :rm_tracker_meas, :string, :default => "Measure"
    add_column :project_rms, :rm_tracker_doc, :string, :default => "Document"
    add_column :project_rms, :rm_tracker_design, :string, :default => "Design"
    add_column :project_rms, :rm_tracker_valid, :string, :default => "Validate"
    add_column :project_rms, :rm_tracker_superv, :string, :default => "Supervise"
    add_column :project_rms, :rm_tracker_fab, :string, :default => "Fabrication"
    add_column :project_rms, :rm_tracker_com, :string, :default => "Commercial"
    add_column :project_rms, :rm_tracker_subc, :string, :default => "Subcontract"
    add_column :project_rms, :rm_tracker_integ, :string, :default => "Integration"
    add_column :project_rms, :rm_status_resolved, :string, :default => "Resolved"
    add_column :project_rms, :rm_status_new, :string, :default => "New"
  end

  def self.down
    remove_column :project_rms, :rm_tracker_manuf
    remove_column :project_rms, :rm_tracker_delin
    remove_column :project_rms, :rm_tracker_meas
    remove_column :project_rms, :rm_tracker_doc
    remove_column :project_rms, :rm_tracker_design
    remove_column :project_rms, :rm_tracker_valid
    remove_column :project_rms, :rm_tracker_superv
    remove_column :project_rms, :rm_tracker_fab
    remove_column :project_rms, :rm_tracker_com
    remove_column :project_rms, :rm_tracker_subc
    remove_column :project_rms, :rm_tracker_integ
    remove_column :project_rms, :rm_status_resolved
    remove_column :project_rms, :rm_status_new
  end
end
