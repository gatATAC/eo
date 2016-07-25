class SystemsController < ApplicationController

  hobo_model_controller

  auto_actions :all#, :except => [:new, :create]
  auto_actions_for :parent, [:new,:create]
  auto_actions_for :project, [:new,:create]

  show_action :pending

  
  def new_for_project
    hobo_new do
      if (params[:super_system]) then
        ss = System.find(params[:super_system])
        @project = ss.project
        @this.parent=ss
        @this.project=ss.project
        if (@this.parent.root) then
          @this.root=@this.parent.root
        else
          @this.root=@this.parent
        end
      else
        @project=Project.find(params[:project_id])
        @this.project=@project
      end
      hobo_ajax_response if request.xhr?
    end
  end  
  
  def new
    hobo_new do
      if (params[:super_system]) then
        ss = System.find(params[:super_system])
        @this.parent=ss
        @this.project=ss.project
        if (@this.parent.root) then
          @this.root=@this.parent.root
        else
          @this.root=@this.parent
        end
      end
      hobo_ajax_response if request.xhr?
    end
  end
  
  def show
    @system=find_instance
    hobo_show do |format|
      format.svg
      format.html
      format.eox
      format.tree
    end
  end    
  
  def pending
    @system=find_instance
    hobo_show do |format|
      format.tree
    end
  end    
  
end
