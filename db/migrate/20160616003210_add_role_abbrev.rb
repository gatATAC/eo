class AddRoleAbbrev < ActiveRecord::Migration
  def self.up
    add_column :roles, :abbrev, :string
    
    
    Role.create :name => "Systems Engineer", :abbrev => "sys"    
    Role.create :name => "Project Manager", :abbrev => "pm"
    Role.create :name => "Principal Investigator", :abbrev => "pi"
    Role.create :name => "Optical Engineer", :abbrev => "opt"    
    Role.create :name => "Mechanical Engineer", :abbrev => "mech"
    Role.create :name => "Electronics Engineer", :abbrev => "hw"
    Role.create :name => "Software Engineer", :abbrev => "sw"
    
  end

  def self.down
    remove_column :roles, :abbrev
  end
end
