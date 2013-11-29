require 'test_helper'

class EmployeeContractsControllerTest < ActionController::TestCase
  setup do
    @employee_contract = employee_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_contract" do
    assert_difference('EmployeeContract.count') do
      post :create, employee_contract: { contract_date: @employee_contract.contract_date, employee_id: @employee_contract.employee_id, pay_rate: @employee_contract.pay_rate, start_date: @employee_contract.start_date, type: @employee_contract.type }
    end

    assert_redirected_to employee_contract_path(assigns(:employee_contract))
  end

  test "should show employee_contract" do
    get :show, id: @employee_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_contract
    assert_response :success
  end

  test "should update employee_contract" do
    patch :update, id: @employee_contract, employee_contract: { contract_date: @employee_contract.contract_date, employee_id: @employee_contract.employee_id, pay_rate: @employee_contract.pay_rate, start_date: @employee_contract.start_date, type: @employee_contract.type }
    assert_redirected_to employee_contract_path(assigns(:employee_contract))
  end

  test "should destroy employee_contract" do
    assert_difference('EmployeeContract.count', -1) do
      delete :destroy, id: @employee_contract
    end

    assert_redirected_to employee_contracts_path
  end
end
