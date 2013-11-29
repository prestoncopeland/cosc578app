require 'test_helper'

class SiblingsControllerTest < ActionController::TestCase
  setup do
    @sibling = siblings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siblings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sibling" do
    assert_difference('Sibling.count') do
      post :create, sibling: { first_name: @sibling.first_name, grade: @sibling.grade, last_name: @sibling.last_name }
    end

    assert_redirected_to sibling_path(assigns(:sibling))
  end

  test "should show sibling" do
    get :show, id: @sibling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sibling
    assert_response :success
  end

  test "should update sibling" do
    patch :update, id: @sibling, sibling: { first_name: @sibling.first_name, grade: @sibling.grade, last_name: @sibling.last_name }
    assert_redirected_to sibling_path(assigns(:sibling))
  end

  test "should destroy sibling" do
    assert_difference('Sibling.count', -1) do
      delete :destroy, id: @sibling
    end

    assert_redirected_to siblings_path
  end
end
