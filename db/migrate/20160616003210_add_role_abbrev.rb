class AddRoleAbbrev < ActiveRecord::Migration
  def self.up
    add_column :roles, :abbrev, :string
  end

  def self.down
    remove_column :roles, :abbrev
  end
end
