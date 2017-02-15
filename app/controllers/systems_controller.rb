class SystemsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => [:index, :new, :create]
  auto_actions_for :parent, [:new,:create]
  auto_actions_for :project, [:new,:create]

  show_action :pending

  def action_set_url_options
    if ENV['RAILS_RELATIVE_URL_ROOT']
      @host = request.host+":"+request.port.to_s+"/"+ENV['RAILS_RELATIVE_URL_ROOT']
    else
      @host = request.host+":"+request.port.to_s
    end
    Rails.application.routes.default_url_options = { :host => @host}
  end  
  
  def self.url_root
      if ENV['RAILS_RELATIVE_URL_ROOT']
        return ENV['RAILS_RELATIVE_URL_ROOT']+"/"
      else
        return ""
      end
  end
  
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
