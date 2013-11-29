require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { amount_paid: @contract.amount_paid, chart_rate: @contract.chart_rate, date: @contract.date, dc_date: @contract.dc_date, dsc: @contract.dsc, dt_amount: @contract.dt_amount, dt_date: @contract.dt_date, enrollment_date: @contract.enrollment_date, est_class_schedule: @contract.est_class_schedule, final_class_date: @contract.final_class_date, final_interim_test: @contract.final_interim_test, hours: @contract.hours, hrs_per_week: @contract.hrs_per_week, new_or_renew: @contract.new_or_renew, paid_hours: @contract.paid_hours, program_explanation: @contract.program_explanation, remaining_hours: @contract.remaining_hours, student_id: @contract.student_id, total_money: @contract.total_money, tuition: @contract.tuition, used_hours: @contract.used_hours }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { amount_paid: @contract.amount_paid, chart_rate: @contract.chart_rate, date: @contract.date, dc_date: @contract.dc_date, dsc: @contract.dsc, dt_amount: @contract.dt_amount, dt_date: @contract.dt_date, enrollment_date: @contract.enrollment_date, est_class_schedule: @contract.est_class_schedule, final_class_date: @contract.final_class_date, final_interim_test: @contract.final_interim_test, hours: @contract.hours, hrs_per_week: @contract.hrs_per_week, new_or_renew: @contract.new_or_renew, paid_hours: @contract.paid_hours, program_explanation: @contract.program_explanation, remaining_hours: @contract.remaining_hours, student_id: @contract.student_id, total_money: @contract.total_money, tuition: @contract.tuition, used_hours: @contract.used_hours }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
