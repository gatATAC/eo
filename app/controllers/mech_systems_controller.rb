class MechSystemsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => [:index, :new, :create]
  auto_actions_for :system, [:new, :create]

end
