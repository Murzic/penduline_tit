class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  def show
    @project = Project.find(params[:id])
    @users = User.all
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to :back
  end

  def create
    @project = Project.create(project_params)
    redirect_to :back
  end

  private
  def project_params
    params.require(:project).permit!
  end
end
