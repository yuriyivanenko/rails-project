class ProjectsController < ApplicationController
  def index
    redirect_to new_user_session_path and return unless current_user

    @projects = current_user.projects
  end
end
