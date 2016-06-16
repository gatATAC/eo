class AddRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :project_memberships, :role_id, :integer
    change_column :project_memberships, :contributor, :boolean, :default => false
    change_column :project_memberships, :maximum_layer, :integer, :default => 0

    change_column :users, :administrator, :boolean, :default => false
    change_column :users, :developer, :boolean, :default => false

    add_index :project_memberships, [:role_id]
  end

  def self.down
    remove_column :project_memberships, :role_id
    change_column :project_memberships, :contributor, :boolean, default: false
    change_column :project_memberships, :maximum_layer, :integer, default: 0

    change_column :users, :administrator, :boolean, default: false
    change_column :users, :developer, :boolean, default: false

    drop_table :roles

    remove_index :project_memberships, :name => :index_project_memberships_on_role_id rescue ActiveRecord::StatementInvalid
  end
end
