class AddRoleAbbrev < ActiveRecord::Migration
  def self.up
    change_column :project_memberships, :contributor, :boolean, :default => false
    change_column :project_memberships, :maximum_layer, :integer, :default => 0

    change_column :users, :administrator, :boolean, :default => false
    change_column :users, :developer, :boolean, :default => false

    add_column :roles, :abbrev, :string
  end

  def self.down
    change_column :project_memberships, :contributor, :boolean, default: false
    change_column :project_memberships, :maximum_layer, :integer, default: 0

    change_column :users, :administrator, :boolean, default: false
    change_column :users, :developer, :boolean, default: false

    remove_column :roles, :abbrev
  end
end
