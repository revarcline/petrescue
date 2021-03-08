class AppointmentsController < ApplicationController
    before_action :authenticate_user!

    def new
        @appointment = Appointment.new
        @pet = Pet.find_by_id(params[:pet_id])
        @user = current_user
    end
    
    private

    def appointment_params
        params.require(:appointment).permit(
            :user_id,
            :pet_id,
            :start
        )
    end
end
