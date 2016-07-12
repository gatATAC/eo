class AddRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :project_memberships, :role_id, :integer

    add_index :project_memberships, [:role_id]
  end

  def self.down
    remove_column :project_memberships, :role_id

    drop_table :roles

    remove_index :project_memberships, :name => :index_project_memberships_on_role_id rescue ActiveRecord::StatementInvalid
  end
end
