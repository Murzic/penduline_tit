class TimeEntriesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.new
    if current_user.has_role? :admin
      @user = User.find(params[:user_id])
    end

  end

  def create
    @project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.create(time_entry_params)
    current_user.time_entries << @time_entry
    redirect_to :back
  end

  private
  def time_entry_params
    params.require(:time_entry).permit!
  end

end
