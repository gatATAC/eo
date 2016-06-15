class ProjectMembershipsController < ApplicationController

  hobo_model_controller

  auto_actions :write_only
  
  auto_actions_for :project, [:new, :create]

end
