class SystemLinksController < ApplicationController

  hobo_model_controller

  auto_actions :write_only
  
  auto_actions_for :system_src, [:new, :create]
end
