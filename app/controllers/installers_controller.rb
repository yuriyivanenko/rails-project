class InstallersController < ApplicationController
  def index
    @installers = current_user.territory.installers
  end
end
