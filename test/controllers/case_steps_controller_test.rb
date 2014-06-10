require 'test_helper'

class CaseStepsControllerTest < ActionController::TestCase
  setup do
    @case_step = case_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_step" do
    assert_difference('CaseStep.count') do
      post :create, case_step: {  }
    end

    assert_redirected_to case_step_path(assigns(:case_step))
  end

  test "should show case_step" do
    get :show, id: @case_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_step
    assert_response :success
  end

  test "should update case_step" do
    patch :update, id: @case_step, case_step: {  }
    assert_redirected_to case_step_path(assigns(:case_step))
  end

  test "should destroy case_step" do
    assert_difference('CaseStep.count', -1) do
      delete :destroy, id: @case_step
    end

    assert_redirected_to case_steps_path
  end
end
