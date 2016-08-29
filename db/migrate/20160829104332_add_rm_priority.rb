class AddRmPriority < ActiveRecord::Migration
  def self.up
    add_column :project_rms, :rm_eosysprio, :integer, :default => 5
    add_column :project_rms, :rm_prio_low, :integer, :default => 1
    add_column :project_rms, :rm_prio_normal, :integer, :default => 2
    add_column :project_rms, :rm_prio_high, :integer, :default => 3
    add_column :project_rms, :rm_prio_urgent, :integer, :default => 4
    add_column :project_rms, :rm_prio_immediate, :integer, :default => 5
    change_column :project_rms, :rm_plm, :integer, :default => 4
  end

  def self.down
    remove_column :project_rms, :rm_eosysprio
    remove_column :project_rms, :rm_prio_low
    remove_column :project_rms, :rm_prio_normal
    remove_column :project_rms, :rm_prio_high
    remove_column :project_rms, :rm_prio_urgent
    remove_column :project_rms, :rm_prio_immediate
    change_column :project_rms, :rm_plm, :string
  end
end
