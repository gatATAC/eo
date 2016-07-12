class AddProjectName < ActiveRecord::Migration
  def self.up
    add_column :issue_rms, :rm_project_name, :string
    add_column :issue_rms, :rm_user_name, :string
  end

  def self.down
    remove_column :issue_rms, :rm_project_name
    remove_column :issue_rms, :rm_user_name
  end

end
