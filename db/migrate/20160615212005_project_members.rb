class ProjectMembers < ActiveRecord::Migration
  def self.up
    create_table :project_memberships do |t|
      t.boolean  :contributor, :default => false
      t.integer  :maximum_layer, :default => 0
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
      t.integer  :user_id
    end
    add_index :project_memberships, [:project_id]
    add_index :project_memberships, [:user_id]

    create_table :projects do |t|
      t.string   :name
      t.string   :abbrev
      t.text     :description
      t.boolean  :public
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :owner_id
    end
    add_index :projects, [:owner_id]

    add_column :users, :developer, :boolean, :default => false
    change_column :users, :administrator, :boolean, :default => false
  end

  def self.down
    remove_column :users, :developer
    change_column :users, :administrator, :boolean, default: false

    drop_table :project_memberships
    drop_table :projects
  end
end
