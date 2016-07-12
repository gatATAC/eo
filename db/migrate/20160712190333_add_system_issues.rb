class AddSystemIssues < ActiveRecord::Migration
  def self.up
    add_column :issue_rms, :system_id, :integer

    add_index :issue_rms, [:system_id]
  end

  def self.down
    remove_column :issue_rms, :system_id

    remove_index :issue_rms, :name => :index_issue_rms_on_system_id rescue ActiveRecord::StatementInvalid
  end
end
