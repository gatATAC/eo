class AddRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :project_memberships, :role_id, :integer

    add_index :project_memberships, [:role_id]
    
    Role.create :name => "Systems Engineer", :abbrev => "sys"    
    Role.create :name => "Project Manager", :abbrev => "pm"
    Role.create :name => "Principal Investigator", :abbrev => "pi"
    Role.create :name => "Optical Engineer", :abbrev => "opt"    
    Role.create :name => "Mechanical Engineer", :abbrev => "mech"
    Role.create :name => "Electronics Engineer", :abbrev => "hw"
    Role.create :name => "Software Engineer", :abbrev => "sw"
  end

  def self.down
    remove_column :project_memberships, :role_id

    drop_table :roles

    remove_index :project_memberships, :name => :index_project_memberships_on_role_id rescue ActiveRecord::StatementInvalid
  end
end
