class Admin::AcquisitionStatusesController < Admin::AdminSiteController
  hobo_model_controller

  auto_actions :all, :except => [:new, :create, :index]
  auto_actions_for :acquisition_workflow, [:new,:create]

end
