class AddIssueRms < ActiveRecord::Migration
  def self.up
    create_table :issue_rms do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_rm_id
    end
    add_index :issue_rms, [:project_rm_id]
  end

  def self.down
    drop_table :issue_rms
  end
end
