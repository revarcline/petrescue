class ApplicationController < ActionController::Base
def admin_only
    unless current_user.admin
        redirect_to users_show_path(current_user), notice: 
          "Only an administrator may perform that function."
    end
 end
end
