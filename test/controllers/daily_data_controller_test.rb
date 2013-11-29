require 'test_helper'

class DailyDataControllerTest < ActionController::TestCase
  setup do
    @daily_datum = daily_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_datum" do
    assert_difference('DailyDatum.count') do
      post :create, daily_datum: { employee_id: @daily_datum.employee_id, notes: @daily_datum.notes, referral_source: @daily_datum.referral_source, student_action: @daily_datum.student_action, student_id: @daily_datum.student_id }
    end

    assert_redirected_to daily_datum_path(assigns(:daily_datum))
  end

  test "should show daily_datum" do
    get :show, id: @daily_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_datum
    assert_response :success
  end

  test "should update daily_datum" do
    patch :update, id: @daily_datum, daily_datum: { employee_id: @daily_datum.employee_id, notes: @daily_datum.notes, referral_source: @daily_datum.referral_source, student_action: @daily_datum.student_action, student_id: @daily_datum.student_id }
    assert_redirected_to daily_datum_path(assigns(:daily_datum))
  end

  test "should destroy daily_datum" do
    assert_difference('DailyDatum.count', -1) do
      delete :destroy, id: @daily_datum
    end

    assert_redirected_to daily_data_path
  end
end
