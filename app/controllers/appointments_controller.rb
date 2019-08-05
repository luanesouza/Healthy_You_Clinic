class AppointmentsController < ApplicationController

  def index
    if params[:search]
      @appointments = Appointment.all.select {|app| app.date.include?(params[:search])}
    else
      @appointments = Appointment.all
    end

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
    byebug
    @appointment = Appointment.create(appointment_params)
    redirect_to appointments_path
  end

  private
  def appointment_params
    params.require(:appointment).permit(
      :date,
      :patient_id,
      :notes,
      :doctor_id
    )
  end

end
