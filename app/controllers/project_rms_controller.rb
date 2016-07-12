class ProjectRmsController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  before_action :reload_issues, :only => :show

  def reload_issues
    @project_rms = find_instance
    find_instance.reload_issues
  end

end
