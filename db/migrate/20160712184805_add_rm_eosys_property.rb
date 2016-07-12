class AddRmEosysProperty < ActiveRecord::Migration
  def self.up
    add_column :issue_rms, :eosys, :boolean, :default => false
  end

  def self.down
    remove_column :issue_rms, :eosys
  end
end
