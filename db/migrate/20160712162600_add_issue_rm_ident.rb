class AddIssueRmIdent < ActiveRecord::Migration
  def self.up
    add_column :issue_rms, :rm_ident, :integer
  end

  def self.down
    remove_column :issue_rms, :rm_ident
  end
end
