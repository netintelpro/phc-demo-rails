class PatientSymptomsController < ApplicationController
  # GET /patient_symptoms
  # GET /patient_symptoms.json
  def index
    @patient_symptoms = PatientSymptom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @patient_symptoms }
    end
  end

  # GET /patient_symptoms/1
  # GET /patient_symptoms/1.json
  def show
    @patient_symptom = PatientSymptom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @patient_symptom }
    end
  end

  # GET /patient_symptoms/new
  # GET /patient_symptoms/new.json
  def new
    @patient_symptom = PatientSymptom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @patient_symptom }
    end
  end

  # GET /patient_symptoms/1/edit
  def edit
    @patient_symptom = PatientSymptom.find(params[:id])
  end

  # POST /patient_symptoms
  # POST /patient_symptoms.json
  def create
    @patient_symptom = PatientSymptom.new(params[:patient_symptom])

    respond_to do |format|
      if @patient_symptom.save
        format.html { redirect_to @patient_symptom, :notice => 'Patient symptom was successfully created.' }
        format.json { render :json => @patient_symptom, :status => :created, :location => @patient_symptom }
      else
        format.html { render :action => "new" }
        format.json { render :json => @patient_symptom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /patient_symptoms/1
  # PUT /patient_symptoms/1.json
  def update
    @patient_symptom = PatientSymptom.find(params[:id])

    respond_to do |format|
      if @patient_symptom.update_attributes(params[:patient_symptom])
        format.html { redirect_to @patient_symptom, :notice => 'Patient symptom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @patient_symptom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_symptoms/1
  # DELETE /patient_symptoms/1.json
  def destroy
    @patient_symptom = PatientSymptom.find(params[:id])
    @patient_symptom.destroy

    respond_to do |format|
      format.html { redirect_to patient_symptoms_url }
      format.json { head :no_content }
    end
  end
end
