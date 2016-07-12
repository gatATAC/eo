class RmIssueAttributes < ActiveRecord::Migration
  def self.up
    add_column :issue_rms, :subject, :string
    add_column :issue_rms, :description, :text
    add_column :issue_rms, :assignee, :integer
    add_column :issue_rms, :author, :integer
    add_column :issue_rms, :tracker, :integer
    add_column :issue_rms, :start_date, :datetime
    add_column :issue_rms, :due_date, :datetime
    add_column :issue_rms, :done_ratio, :integer
    remove_column :issue_rms, :name
    remove_column :issue_rms, :rm_assignee
  end

  def self.down
    remove_column :issue_rms, :subject
    remove_column :issue_rms, :description
    remove_column :issue_rms, :assignee
    remove_column :issue_rms, :author
    remove_column :issue_rms, :tracker
    remove_column :issue_rms, :start_date
    remove_column :issue_rms, :due_date
    remove_column :issue_rms, :done_ratio
    add_column :issue_rms, :name, :string
    add_column :issue_rms, :rm_assignee, :integer
  end
end
