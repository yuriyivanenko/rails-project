class InstallersController < ApplicationController
  def index
    return unless user_signed_in?

    @installers = current_user.territory.installers
  end

  def new
    return unless user_signed_in?

    @installer = Installer.new
  end

  def create
    @installer = Installer.new(installer_params)
    if @installer.save
      redirect_to root_path
    else
      render :new, status: 422
    end
  end

  def edit
    @installer = Installer.find(params[:id])
  end

  def update
    installer = Installer.find(params[:id])
    return unless installer.update(installer_params)

    redirect_to installers_path
  end

  def destroy
    installer = Installer.find(params[:id])
    return unless installer.destroy

    redirect_to installers_path
  end

private

  def installer_params
    params.require(:installer).permit(:name, :territory_id)
  end
end
