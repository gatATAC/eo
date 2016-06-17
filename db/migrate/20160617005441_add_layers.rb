class AddLayers < ActiveRecord::Migration
  def self.up
    create_table :layers do |t|
      t.string   :name
      t.integer  :level
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :systems, :layer_id, :integer
    
    add_index :systems, [:layer_id]
    
    Layer.create :name => "Specification", :level => 1
    Layer.create :name => "Concept", :level => 2
    Layer.create :name => "Design", :level => 3
    Layer.create :name => "Implementation", :level => 4
    System.update_all(layer_id: 1)
  end

  def self.down
    remove_index :systems, :name => :index_systems_on_layer_id rescue ActiveRecord::StatementInvalid    
    remove_column :systems, :layer_id
    drop_table :layers
  end
end
