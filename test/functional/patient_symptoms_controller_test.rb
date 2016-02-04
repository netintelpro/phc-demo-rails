require 'test_helper'

class PatientSymptomsControllerTest < ActionController::TestCase
  setup do
    @patient_symptom = patient_symptoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_symptoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_symptom" do
    assert_difference('PatientSymptom.count') do
      post :create, :patient_symptom => { :/ => @patient_symptom./, :status => @patient_symptom.status }
    end

    assert_redirected_to patient_symptom_path(assigns(:patient_symptom))
  end

  test "should show patient_symptom" do
    get :show, :id => @patient_symptom
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @patient_symptom
    assert_response :success
  end

  test "should update patient_symptom" do
    put :update, :id => @patient_symptom, :patient_symptom => { :/ => @patient_symptom./, :status => @patient_symptom.status }
    assert_redirected_to patient_symptom_path(assigns(:patient_symptom))
  end

  test "should destroy patient_symptom" do
    assert_difference('PatientSymptom.count', -1) do
      delete :destroy, :id => @patient_symptom
    end

    assert_redirected_to patient_symptoms_path
  end
end
