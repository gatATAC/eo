class ProjectImportsController < ApplicationController
  def new
    @project_import = ProjectImport.new(:project_id => @project_id)
  end

  def create
    @project_import = ProjectImport.new(params[:project_import])
    @project_import.project=Project.find(@project_import.project_id)
    if @project_import.save
      redirect_to root_url, notice: "Imported project items successfully."
    else
      render :new
    end
  end
end
