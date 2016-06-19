class SystemLinkType < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string    
    timestamps
  end

  attr_accessible 

  has_many :system_links, :inverse_of => :system_link_type  

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
