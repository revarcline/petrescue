class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, only: %i[index update]

  def index
    @users = User.all
  end

  def show
    set_user
    if @user == current_user || current_user.admin
      render :show
    else
      flash[:notice] = 'You are not allowed to see that page'
      redirect_to root_path
    end
  end

  private

  def set_user
    @user = User.find_by_id(params[:id])
  end
end
