class AddFunctions < ActiveRecord::Migration
  def self.up
    create_table :functions do |t|
      t.string   :name
      t.string   :abbrev
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :project_id
      t.integer  :root_id
      t.integer  :parent_id
      t.integer  :function_type_id
      t.integer  :layer_id
      t.integer  :position
    end
    add_index :functions, [:project_id]
    add_index :functions, [:root_id]
    add_index :functions, [:parent_id]
    add_index :functions, [:function_type_id]
    add_index :functions, [:layer_id]

    create_table :function_types do |t|
      t.string   :name
      t.string   :abbrev
      t.datetime :created_at
      t.datetime :updated_at
    end
    FunctionType.create :name => "FSM", :abbrev => "fsm"
    FunctionType.create :name => "Ctrl", :abbrev => "ctrl"

    Function.update_all(layer_id: 1)
    
  end

  def self.down
    drop_table :functions
    drop_table :function_types
  end
end
