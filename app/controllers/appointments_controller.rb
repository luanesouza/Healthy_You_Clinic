class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
    @doctors = Doctor.all
  end

  def new
    @doctors = Doctor.all
    @patients = Patient.all
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointments_params)
    redirect_to appointments_path
  end

  private
  def appointments_params
    params.require(:appointment).permit(
      :date,
      :patient_id,
      :notes,
      :doctor_id
    )
  end

end
