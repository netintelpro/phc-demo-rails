class PatientConditionsController < ApplicationController
  # GET /patient_conditions
  # GET /patient_conditions.json
  def index
    @patient_conditions = PatientCondition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @patient_conditions }
    end
  end

  # GET /patient_conditions/1
  # GET /patient_conditions/1.json
  def show
    @patient_condition = PatientCondition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @patient_condition }
    end
  end

  # GET /patient_conditions/new
  # GET /patient_conditions/new.json
  def new
    @patient_condition = PatientCondition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @patient_condition }
    end
  end

  # GET /patient_conditions/1/edit
  def edit
    @patient_condition = PatientCondition.find(params[:id])
  end

  # POST /patient_conditions
  # POST /patient_conditions.json
  def create
    @patient_condition = PatientCondition.new(params[:patient_condition])

    respond_to do |format|
      if @patient_condition.save
        format.html { redirect_to @patient_condition, :notice => 'Patient condition was successfully created.' }
        format.json { render :json => @patient_condition, :status => :created, :location => @patient_condition }
      else
        format.html { render :action => "new" }
        format.json { render :json => @patient_condition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /patient_conditions/1
  # PUT /patient_conditions/1.json
  def update
    @patient_condition = PatientCondition.find(params[:id])

    respond_to do |format|
      if @patient_condition.update_attributes(params[:patient_condition])
        format.html { redirect_to @patient_condition, :notice => 'Patient condition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @patient_condition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_conditions/1
  # DELETE /patient_conditions/1.json
  def destroy
    @patient_condition = PatientCondition.find(params[:id])
    @patient_condition.destroy

    respond_to do |format|
      format.html { redirect_to patient_conditions_url }
      format.json { head :no_content }
    end
  end
end
