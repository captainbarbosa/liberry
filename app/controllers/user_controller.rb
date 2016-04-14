class UsersController < ApplicationController
  def create
    @user = Reservation.create(user_params)
  end

  def user_params
    params.require(:user).permit(:id, :name)
  end
end
