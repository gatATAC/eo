class AddProjectIdToIssueRm < ActiveRecord::Migration
  def self.up
    add_column :issue_rms, :rm_project, :integer
  end

  def self.down
    remove_column :issue_rms, :rm_project
  end
end
