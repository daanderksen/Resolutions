require 'test_helper'

class ResolutionsControllerTest < ActionController::TestCase
  setup do
    @resolution = resolutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resolutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resolution" do
    assert_difference('Resolution.count') do
      post :create, :resolution => @resolution.attributes
    end

    assert_redirected_to resolution_path(assigns(:resolution))
  end

  test "should show resolution" do
    get :show, :id => @resolution.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @resolution.to_param
    assert_response :success
  end

  test "should update resolution" do
    put :update, :id => @resolution.to_param, :resolution => @resolution.attributes
    assert_redirected_to resolution_path(assigns(:resolution))
  end

  test "should destroy resolution" do
    assert_difference('Resolution.count', -1) do
      delete :destroy, :id => @resolution.to_param
    end

    assert_redirected_to resolutions_path
  end
end
