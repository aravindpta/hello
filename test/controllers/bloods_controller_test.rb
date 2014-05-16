require 'test_helper'

class BloodsControllerTest < ActionController::TestCase
  setup do
    @blood = bloods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood" do
    assert_difference('Blood.count') do
      post :create, blood: { group: @blood.group, quantity: @blood.quantity }
    end

    assert_redirected_to blood_path(assigns(:blood))
  end

  test "should show blood" do
    get :show, id: @blood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blood
    assert_response :success
  end

  test "should update blood" do
    patch :update, id: @blood, blood: { group: @blood.group, quantity: @blood.quantity }
    assert_redirected_to blood_path(assigns(:blood))
  end

  test "should destroy blood" do
    assert_difference('Blood.count', -1) do
      delete :destroy, id: @blood
    end

    assert_redirected_to bloods_path
  end
end
