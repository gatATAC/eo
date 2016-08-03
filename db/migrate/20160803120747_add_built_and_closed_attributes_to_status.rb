class AddBuiltAndClosedAttributesToStatus < ActiveRecord::Migration
  def self.up
    add_column :acquisition_statuses, :closed, :boolean, :default => :false
    add_column :acquisition_statuses, :built, :boolean, :default => :false
  end

  def self.down
    remove_column :acquisition_statuses, :closed
    remove_column :acquisition_statuses, :built
  end
end
