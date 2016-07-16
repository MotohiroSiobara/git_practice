require 'test_helper'

class RoyalsControllerTest < ActionController::TestCase
  setup do
    @royal = royals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:royals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create royal" do
    assert_difference('Royal.count') do
      post :create, royal: {  }
    end

    assert_redirected_to royal_path(assigns(:royal))
  end

  test "should show royal" do
    get :show, id: @royal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @royal
    assert_response :success
  end

  test "should update royal" do
    patch :update, id: @royal, royal: {  }
    assert_redirected_to royal_path(assigns(:royal))
  end

  test "should destroy royal" do
    assert_difference('Royal.count', -1) do
      delete :destroy, id: @royal
    end

    assert_redirected_to royals_path
  end
end
