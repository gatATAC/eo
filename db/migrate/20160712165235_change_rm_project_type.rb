class ChangeRmProjectType < ActiveRecord::Migration
  def self.up
    change_column :project_rms, :rm_project, :integer
  end

  def self.down
    change_column :project_rms, :rm_project, :string
  end
end
