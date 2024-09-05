class ProjectsController < ApplicationController
  def index
    redirect_to new_user_session_path and return unless current_user

    @projects = current_user.projects
                            .joins(:transactions)
                            .select("projects.project_number, SUM(transactions.amount) as total_amount")
                            .group("projects.project_number")
                            .distinct
  end
end
