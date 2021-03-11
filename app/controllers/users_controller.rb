class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, only: %i[index update admin_toggle destroy]

  def index
    @users = User.all
  end

  def admin_toggle
    set_user
    if @user == current_user
      flash[:notice] = "Can't remove own admin status"
    elsif @user&.admin?
      @user.admin = false
      flash[:notice] = "#{@user.full_name} is no longer an admin"
    elsif @user&.admin == false
      @user.admin = true
      flash[:notice] = "#{@user.full_name} is now an admin"
    end
    @user.save
    redirect_to users_path
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

  def destroy
    User.destroy(params[:id])
    flash[:notice] = "User deleted"
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find_by_id(params[:id])
  end
end
