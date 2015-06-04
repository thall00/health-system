class AppointmentsController < ApplicationController

  def index
    puts "MADE IT TO THE INDEX METHOD"
    @appointments = Appointment.all
    @patients = Patient.all

    respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @appointments }
     end
     @appointments_button_status = "active"
  end


  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @appointment = Appointment.find params[:id]
    puts "MADE IT TO THE SHOW METHOD"
    puts @appointment
    
  end


end
