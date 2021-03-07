class UsersController < ApplicationController
  def show
    set_user
  end

  private

  def set_user
    @user = User.find_by_id(params[:id])
  end
end
