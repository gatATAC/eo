class IssueRmsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => [:index, :new, :create]
  # Issues Rm are created by sync between project_rm and Redmine project
  #auto_actions_for :project_rm, [:new,:create]

end
