class ProjectIdentifiersUsed < ActiveRecord::Migration
  def self.up
    change_column :project_rms, :rm_project, :string
  end

  def self.down
    change_column :project_rms, :rm_project, :integer
  end
end
