class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    set_user
  end

  private

  def set_user
    @user = User.find_by_id(params[:id])
  end
end
