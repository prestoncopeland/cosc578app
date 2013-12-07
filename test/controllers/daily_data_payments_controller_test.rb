require 'test_helper'

class DailyDataPaymentsControllerTest < ActionController::TestCase
  setup do
    @daily_data_payment = daily_data_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_data_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_data_payment" do
    assert_difference('DailyDataPayment.count') do
      post :create, daily_data_payment: { amount: @daily_data_payment.amount, daily_data_paymentable_id: @daily_data_payment.daily_data_paymentable_id, daily_data_paymentable_type: @daily_data_payment.daily_data_paymentable_type, date: @daily_data_payment.date, hours: @daily_data_payment.hours, notes: @daily_data_payment.notes, partial_payment: @daily_data_payment.partial_payment, payment_type: @daily_data_payment.payment_type, rate: @daily_data_payment.rate, referral_source: @daily_data_payment.referral_source, student_action: @daily_data_payment.student_action }
    end

    assert_redirected_to daily_data_payment_path(assigns(:daily_data_payment))
  end

  test "should show daily_data_payment" do
    get :show, id: @daily_data_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_data_payment
    assert_response :success
  end

  test "should update daily_data_payment" do
    patch :update, id: @daily_data_payment, daily_data_payment: { amount: @daily_data_payment.amount, daily_data_paymentable_id: @daily_data_payment.daily_data_paymentable_id, daily_data_paymentable_type: @daily_data_payment.daily_data_paymentable_type, date: @daily_data_payment.date, hours: @daily_data_payment.hours, notes: @daily_data_payment.notes, partial_payment: @daily_data_payment.partial_payment, payment_type: @daily_data_payment.payment_type, rate: @daily_data_payment.rate, referral_source: @daily_data_payment.referral_source, student_action: @daily_data_payment.student_action }
    assert_redirected_to daily_data_payment_path(assigns(:daily_data_payment))
  end

  test "should destroy daily_data_payment" do
    assert_difference('DailyDataPayment.count', -1) do
      delete :destroy, id: @daily_data_payment
    end

    assert_redirected_to daily_data_payments_path
  end
end
