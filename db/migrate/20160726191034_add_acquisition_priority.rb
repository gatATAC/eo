class AddAcquisitionPriority < ActiveRecord::Migration
  def self.up
    add_column :systems, :acq_priority, :integer, :default => 100
  end

  def self.down
    remove_column :systems, :acq_priority
  end
end
