class SystemLinkType < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name :string  
    abbrev :string    
    timestamps
  end

  attr_accessible :name, :abbrev 

  has_many :system_links, :inverse_of => :system_link_type
  
  children :system_links

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
