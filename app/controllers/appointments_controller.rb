class AppointmentsController < ApplicationController
    before_action :authenticate_user!

    def new
        @appointment = Appointment.new
        set_pet
    end

    def create
        @appointment = Appointment.new(appointment_params)
        set_pet
        @appointment.pet = @pet
        @appointment.user = current_user
        if @appointment.valid?
            @appointment.save
            redirect_to pet_appointment_path(@appointment.pet, @appointment)
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

    def set_pet
        @pet = Pet.find_by_id(params[:pet_id])
    end

    def appointment_params
        params.require(:appointment).permit(:start)
    end
end
