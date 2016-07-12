class FixIdentConvention < ActiveRecord::Migration
  def self.up
    rename_column :project_rms, :rm_project_id, :rm_project
  end

  def self.down
    rename_column :project_rms, :rm_project, :rm_project_id
  end
end
