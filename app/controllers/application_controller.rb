class ApplicationController < ActionController::Base
def admin_only
    authenticate_user!
    unless current_user.admin
        redirect_to user_path(current_user), notice: 
          "Only an administrator may perform that function."
    end
 end
end
