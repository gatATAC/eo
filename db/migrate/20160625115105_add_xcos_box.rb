class AddXcosBox < ActiveRecord::Migration
  def self.up
    create_table :xcos_boxes do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :system_id
    end
    add_index :xcos_boxes, [:system_id]
  end

  def self.down
    drop_table :xcos_boxes
  end
end
