require 'test_helper'

class PatientConditionsControllerTest < ActionController::TestCase
  setup do
    @patient_condition = patient_conditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_conditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_condition" do
    assert_difference('PatientCondition.count') do
      post :create, :patient_condition => { :/ => @patient_condition./, :current => @patient_condition.current, :past => @patient_condition.past, :where => @patient_condition.where }
    end

    assert_redirected_to patient_condition_path(assigns(:patient_condition))
  end

  test "should show patient_condition" do
    get :show, :id => @patient_condition
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @patient_condition
    assert_response :success
  end

  test "should update patient_condition" do
    put :update, :id => @patient_condition, :patient_condition => { :/ => @patient_condition./, :current => @patient_condition.current, :past => @patient_condition.past, :where => @patient_condition.where }
    assert_redirected_to patient_condition_path(assigns(:patient_condition))
  end

  test "should destroy patient_condition" do
    assert_difference('PatientCondition.count', -1) do
      delete :destroy, :id => @patient_condition
    end

    assert_redirected_to patient_conditions_path
  end
end
