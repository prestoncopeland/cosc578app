require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { birthdate: @employee.birthdate, career_goals: @employee.career_goals, cell_phone: @employee.cell_phone, city: @employee.city, email: @employee.email, ethnicity: @employee.ethnicity, first_name: @employee.first_name, home_phone: @employee.home_phone, interview_date: @employee.interview_date, last_name: @employee.last_name, middle_name: @employee.middle_name, nickname: @employee.nickname, ssn: @employee.ssn, state: @employee.state, street: @employee.street, type: @employee.type, zip: @employee.zip }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { birthdate: @employee.birthdate, career_goals: @employee.career_goals, cell_phone: @employee.cell_phone, city: @employee.city, email: @employee.email, ethnicity: @employee.ethnicity, first_name: @employee.first_name, home_phone: @employee.home_phone, interview_date: @employee.interview_date, last_name: @employee.last_name, middle_name: @employee.middle_name, nickname: @employee.nickname, ssn: @employee.ssn, state: @employee.state, street: @employee.street, type: @employee.type, zip: @employee.zip }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
