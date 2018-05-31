class RegistrationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :phone_number, :company_name, :role, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :phone_number, :company_name, :role, :password, :password_confirmation, :current_password)
  end

end
