class SystemsController < ApplicationController

  hobo_model_controller

  auto_actions :all#, :except => [:new, :create]
  auto_actions_for :parent, [:new,:create]
  auto_actions_for :project, [:new,:create]

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
    respond_to do |format|
      format.sim {
        "render :inline => find_instance.to_sim"
      }
      format.svg {
        "render :inline => find_instance.to_svg"
      }
      format.html {
        hobo_show
      }
      format.tree {
        "render :inline => find_instance.to_tree"
      }
    end
  end
  
end
