class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.assign_attributes(user_params.except(:password))
    @user.assign_attributes(user_params.except(:password_confirmation))
    if @user.save(validate: false)
      redirect_to @user, notice: 'Mise à jour complétée avec succès.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo, :name, :password, :password_confirmation)
  end
end
