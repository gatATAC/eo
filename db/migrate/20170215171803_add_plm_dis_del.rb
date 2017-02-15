class AddPlmDisDel < ActiveRecord::Migration
  def self.up
    rename_column :mech_systems, :id_plm, :id_plm_dis
    rename_column :mech_systems, :id_work, :id_plm_del
    change_column :mech_systems, :id_plm_del, :string
  end

  def self.down
    rename_column :mech_systems, :id_plm_dis, :id_plm
    rename_column :mech_systems, :id_plm_del, :id_work
    change_column :mech_systems, :id_work, :integer
  end
end
