class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.new
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
