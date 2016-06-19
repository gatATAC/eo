class AddFunctionAndSystemLinks < ActiveRecord::Migration
  def self.up
    create_table :system_links do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :system_src_id
      t.integer  :system_dest_id
      t.integer  :system_link_type_id
    end
    add_index :system_links, [:system_src_id]
    add_index :system_links, [:system_dest_id]
    add_index :system_links, [:system_link_type_id]

    create_table :system_link_types do |t|
      t.string   :name
      t.string   :abbrev
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :function_links do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :function_src_id
      t.integer  :function_dest_id
      t.integer  :function_link_type_id
    end
    add_index :function_links, [:function_src_id]
    add_index :function_links, [:function_dest_id]
    add_index :function_links, [:function_link_type_id]

    create_table :function_link_types do |t|
      t.string   :name
      t.string   :abbrev
      t.datetime :created_at
      t.datetime :updated_at
    end
    
    SystemLinkType.create :name => "Includes", :abbrev => "inc"
    SystemLinkType.create :name => "Extend", :abbrev => "ext"
    FunctionLinkType.create :name => "Includes", :abbrev => "inc"
    FunctionLinkType.create :name => "Extend", :abbrev => "ext"
  end

  def self.down
    drop_table :system_links
    drop_table :system_link_types
    drop_table :function_links
    drop_table :function_link_types
  end
end
