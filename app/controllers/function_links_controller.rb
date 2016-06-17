class FunctionLinksController < ApplicationController

  hobo_model_controller

  auto_actions :write_only
  
  auto_actions_for :function_src, [:new, :create]

end
