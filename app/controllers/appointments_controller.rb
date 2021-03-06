class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, only: :index

  def new
    @appointment = Appointment.new
    params[:notice] = 'Appointment created successfully'
    set_pet
  end

  def index
    @appointments = Appointment.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    set_pet
    @appointment.pet = @pet
    @appointment.user = current_user
    if @appointment.save
      params[:notice] = 'Appointment set successfully'
      redirect_to pet_appointment_path(@appointment.pet, @appointment)
    else
      render :new
    end
  end

  def show
    set_appointment
  end

  def destroy
    set_appointment
    if current_user == @appointment.user || current_user.admin
      @appointment.destroy
      params[:notice] = 'Appointment deleted successfully'
    else
      params[:notice] = 'You are not allowed to delete that appointment'
    end
    redirect_to user_path(current_user)
  end

  private

  def set_appointment
    @appointment = Appointment.find_by_id(params[:id])
  end

  def set_pet
    @pet = Pet.find_by_id(params[:pet_id])
  end

  def appointment_params
    params.require(:appointment).permit(:timeslot)
  end
end
