require 'test_helper'

class X10modulesControllerTest < ActionController::TestCase
  setup do
    @x10module = x10modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:x10modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create x10module" do
    assert_difference('X10module.count') do
      post :create, x10module: @x10module.attributes
    end

    assert_redirected_to x10module_path(assigns(:x10module))
  end

  test "should show x10module" do
    get :show, id: @x10module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @x10module
    assert_response :success
  end

  test "should update x10module" do
    put :update, id: @x10module, x10module: @x10module.attributes
    assert_redirected_to x10module_path(assigns(:x10module))
  end

  test "should destroy x10module" do
    assert_difference('X10module.count', -1) do
      delete :destroy, id: @x10module
    end

    assert_redirected_to x10modules_path
  end
end
