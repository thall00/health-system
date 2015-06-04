class PatientsController < ApplicationController

  def index
    puts "MADE IT TO THE INDEX METHOD"
    @appointments = Appointment.all
    @patients = Patient.all.order(:name)

    respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @patients }
     end
     @patients_button_status = "active"
  end

  def new
    @patient = Patient.new
  end



  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @appointments = Appointment.where(patient: params[:id])
    @vitals = Vital.where(:appointment => @appointments)
    puts "Vitals = "
    puts @vitals


    @height_hash = {}
    @weight_hash = {}
    @pulse_hash = {}
    @bp_systolic_hash = {}
    @bp_diastolic_hash= {}
    @oxygen_level_hash = {}

    puts "@vitals = #{@vitals}"

    @vitals.each do |t|
      puts t
      @pulse_hash[t.appointment.appointment_date] = t.pulse
      @height_hash[t.appointment.appointment_date] = t.height
      @weight_hash[t.appointment.appointment_date] = t.weight
      @bp_systolic_hash[t.appointment.appointment_date] = t.bp_systolic
      @bp_diastolic_hash[t.appointment.appointment_date] = t.bp_diastolic
      @oxygen_level_hash[t.appointment.appointment_date] = t.oxygen_level
    end

    puts @pulse_hash
    
    @patient = Patient.find params[:id]
    puts "MADE IT TO THE SHOW METHOD"
    puts @patient.name   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name)
    end


end
