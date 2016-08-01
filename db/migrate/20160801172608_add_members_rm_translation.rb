class AddMembersRmTranslation < ActiveRecord::Migration
  def self.up
    add_column :project_rms, :rm_member_sys, :string, :default => "sys"
    add_column :project_rms, :rm_member_mech, :string, :default => "mech"
    add_column :project_rms, :rm_member_pi, :string, :default => "pi"
    add_column :project_rms, :rm_member_opt, :string, :default => "opt"
    add_column :project_rms, :rm_member_hw, :string, :default => "hw"
    add_column :project_rms, :rm_member_sw, :string, :default => "sw"
    add_column :project_rms, :rm_member_metro, :string, :default => "metro"
    add_column :project_rms, :rm_member_valid, :string, :default => "valid"
    add_column :project_rms, :rm_member_workshop, :string, :default => "workshop"
    add_column :project_rms, :rm_member_delin, :string, :default => "draftman"
  end

  def self.down
    remove_column :project_rms, :rm_member_sys
    remove_column :project_rms, :rm_member_mech
    remove_column :project_rms, :rm_member_pi
    remove_column :project_rms, :rm_member_opt
    remove_column :project_rms, :rm_member_hw
    remove_column :project_rms, :rm_member_sw
    remove_column :project_rms, :rm_member_metro
    remove_column :project_rms, :rm_member_valid
    remove_column :project_rms, :rm_member_workshop
    remove_column :project_rms, :rm_member_delin
  end
end
