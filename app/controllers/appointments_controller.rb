class AppointmentsController < ApplicationController
    before_action :authenticate_user!

    def new
        @appointment = Appointment.new
        @pet = Pet.find_by_id(params[:pet_id])
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.valid?
            @appointment.save
            redirect_to pet_appointment_path(@appointment)
        else
            redirect_to new_pet_appointment_path
        end
    end

    def show
        set_appointment
    end
    
    private

    def set_appointment
        @appointment = Appointment.find_by_id(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(
            :user,
            :pet,
            :start
        )
    end
end
