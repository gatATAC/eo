         class FunctionLink < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    timestamps
  end
  attr_accessible :function_link_type

  belongs_to :function_src, :inverse_of => :function_dest_links, :class_name => 'Function', :foreign_key => :function_src_id 
  belongs_to :function_dest, :inverse_of => :function_src_links, :class_name => 'Function', :foreign_key => :function_dest_id
  belongs_to :function_link_type, :inverse_of => :function_links   
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
