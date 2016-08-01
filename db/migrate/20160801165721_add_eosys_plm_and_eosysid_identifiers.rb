class AddEosysPlmAndEosysidIdentifiers < ActiveRecord::Migration
  def self.up
    add_column :project_rms, :rm_eosys, :integer, :default => 3
    add_column :project_rms, :rm_eosysid, :integer, :default => 4
    add_column :project_rms, :rm_plm, :string
  end

  def self.down
    remove_column :project_rms, :rm_eosys
    remove_column :project_rms, :rm_eosysid
    remove_column :project_rms, :rm_plm
  end
end
