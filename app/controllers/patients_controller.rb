class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
  end

  private
    def patient_params
      params.require(:patient).permit(
        :name,
        :age
      )
    end
end
