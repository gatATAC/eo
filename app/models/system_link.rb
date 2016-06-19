class SystemLink < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end
  attr_accessible :system_link_type, :system_link_type_id

  belongs_to :system_src, :inverse_of => :system_dest_links, :class_name => 'System', :foreign_key => :system_src_id 
  belongs_to :system_dest, :inverse_of => :system_src_links, :class_name => 'System', :foreign_key => :system_dest_id
  belongs_to :system_link_type, :inverse_of => :system_links   


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
