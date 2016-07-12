class AddProjectRm < ActiveRecord::Migration
  def self.up
    create_table :project_rms do |t|
      t.string   :rm_url
      t.string   :rm_project_id
      t.string   :rm_apikey
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
    end
    add_index :project_rms, [:project_id]

  end

  def self.down
    drop_table :project_rms
  end
end
