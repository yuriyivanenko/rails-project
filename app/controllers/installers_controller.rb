class InstallersController < ApplicationController
  def index
    @installers = current_user.territory.installers
  end

  def new
    @installer = Installer.new
  end

  def create
    @installer = Installer.new(installer_params)
    return unless @installer.save

    redirect_to root_path
  end

  def edit
    @installer = Installer.find(params[:id])
  end

  def update
    installer = Installer.find(params[:id])
    return unless installer.update(installer_params)

    redirect_to installers_path
  end

  def remove
    puts "::::#{params}"
    installer = Installer.find(params[:id])
    return unless installer.destroy

    redirect_to installers_path
  end

private

  def installer_params
    params.require(:installer).permit(:name, :territory_id)
  end
end
