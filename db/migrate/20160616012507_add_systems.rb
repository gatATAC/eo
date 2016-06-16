class AddSystems < ActiveRecord::Migration
  def self.up
    create_table :system_types do |t|
      t.string   :name
      t.string   :abbrev
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :systems do |t|
      t.string   :name
      t.string   :abbrev
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
      t.integer  :root_id
      t.integer  :parent_id
      t.integer  :system_type_id
      t.integer  :position
    end
    add_index :systems, [:project_id]
    add_index :systems, [:root_id]
    add_index :systems, [:parent_id]
    add_index :systems, [:system_type_id]
    
    SystemType.create :name => "Complex", :abbrev => "cplx", :value => 1
    SystemType.create :name => "Optical", :abbrev => "opt", :value => 1
    SystemType.create :name => "Mechanical", :abbrev => "mech", :value => 1
    SystemType.create :name => "Electronics", :abbrev => "hw", :value => 1
    SystemType.create :name => "Software", :abbrev => "sw", :value => 1

  end

  def self.down

    drop_table :system_types
    drop_table :systems
  end
end
