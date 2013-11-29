require 'test_helper'

class StudentHourTransfersControllerTest < ActionController::TestCase
  setup do
    @student_hour_transfer = student_hour_transfers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_hour_transfers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_hour_transfer" do
    assert_difference('StudentHourTransfer.count') do
      post :create, student_hour_transfer: { employee_id: @student_hour_transfer.employee_id, hours_transferred: @student_hour_transfer.hours_transferred }
    end

    assert_redirected_to student_hour_transfer_path(assigns(:student_hour_transfer))
  end

  test "should show student_hour_transfer" do
    get :show, id: @student_hour_transfer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_hour_transfer
    assert_response :success
  end

  test "should update student_hour_transfer" do
    patch :update, id: @student_hour_transfer, student_hour_transfer: { employee_id: @student_hour_transfer.employee_id, hours_transferred: @student_hour_transfer.hours_transferred }
    assert_redirected_to student_hour_transfer_path(assigns(:student_hour_transfer))
  end

  test "should destroy student_hour_transfer" do
    assert_difference('StudentHourTransfer.count', -1) do
      delete :destroy, id: @student_hour_transfer
    end

    assert_redirected_to student_hour_transfers_path
  end
end
