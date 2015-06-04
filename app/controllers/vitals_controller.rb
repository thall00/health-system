class VitalsController < ApplicationController
  def new
    @patient = Patient.find params[:id]
    # puts "@patient = #{@patient}"
    # puts "@patient.id = #{@patient.id}"
    @appointment = Appointment.create appointment_date: DateTime.now, patient_id: @patient.id
    puts "@appointment before form = #{@appointment}"
    puts "@appointment's patient before form = #{@appointment.patient.id}"
    # puts "@appointment.id = #{@appointment.id}"
    @vital = Vital.new
  end

  def create
    @vital = Vital.create vital_params
    puts "@vital immediately upon create = #{@vital}"
    @appointment = Appointment.find(params[:vital][:appointment])
    # puts "@appointment after form = #{@appointment}"
    puts "@appointment's patient after form = #{@appointment.patient.id}"
    #@patient = Patient.find(params[:vital][:patient])
    #@patient = Patient.find params[:patient_id]
    
    #@patient = @vital params[:patient_id]
    @vital.appointment_id = @appointment.id
    @vital.save

    puts "@vital after appointment assign = #{@vital.appointment.patient}"
    puts "@vital.pulse = #{@vital.pulse}"


    respond_to do |format|
      if @vital.save
        format.html { redirect_to :controller => 'patients', :action => 'show', :id => @appointment.patient.id, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @vital }
      else
        format.html { render :new }
        format.json { render json: @vital.errors, status: :unprocessable_entity }
      end

    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vital
      @vital = Vital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vital_params
      params.require(:vital).permit(:pulse, :bp_systolic, :bp_diastolic, :height, :weight, :oxygen_level)
    end
end
