class HomeController < ApplicationController
  # before_filter :authenticate_user!
  def index
    redirect_to new_user_session_path if !user_signed_in?
    @projects = Project.all
    @project = Project.new
  end
end
