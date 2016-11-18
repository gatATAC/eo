class AddPlmWorkshopTrackingIds < ActiveRecord::Migration
  def self.up
    add_column :mech_systems, :id_plm, :string
    add_column :mech_systems, :id_work, :integer
  end

  def self.down
    remove_column :mech_systems, :id_plm
    remove_column :mech_systems, :id_work
  end
end
