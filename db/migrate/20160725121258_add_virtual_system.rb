class AddVirtualSystem < ActiveRecord::Migration
  def self.up
    add_column :systems, :virtual, :boolean, :default => false
  end

  def self.down
    remove_column :systems, :virtual
  end
end
