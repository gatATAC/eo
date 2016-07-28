class ProjectRmsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  web_method :sync_issues
  web_method :destroy_issues
  
  before_action :reload_issues, :only => :show

  def reload_issues
    @project_rm = find_instance
    find_instance.reload_issues
  end
  
  def sync_issues
    @project_rm = find_instance
    @project_rm.sync_issues
    redirect_to this
  end

  def destroy_issues
    @project_rm = find_instance
    @project_rm.destroy_all_issues
    redirect_to this
  end

end
