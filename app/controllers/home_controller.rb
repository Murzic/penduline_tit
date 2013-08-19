class HomeController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @projects = Project.all
    @project = Project.new
  end
end
