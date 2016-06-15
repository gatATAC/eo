class ProjectsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :owner, [:new, :create]
  
  def update
    hobo_update do
      respond_to do |format|
        format.js { hobo_ajax_response }
        format.html { redirect_to @project }
      end
    end
  end  
  
  def new
    hobo_new do
      @this.owner=current_user
    end
  end
  
  
end
