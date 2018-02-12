require 'test_helper'

class BasicpaysControllerTest < ActionController::TestCase
  setup do
    @basicpay = basicpays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basicpays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basicpay" do
    assert_difference('Basicpay.count') do
      post :create, basicpay: { salary: @basicpay.salary }
    end

    assert_redirected_to basicpay_path(assigns(:basicpay))
  end

  test "should show basicpay" do
    get :show, id: @basicpay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basicpay
    assert_response :success
  end

  test "should update basicpay" do
    patch :update, id: @basicpay, basicpay: { salary: @basicpay.salary }
    assert_redirected_to basicpay_path(assigns(:basicpay))
  end

  test "should destroy basicpay" do
    assert_difference('Basicpay.count', -1) do
      delete :destroy, id: @basicpay
    end

    assert_redirected_to basicpays_path
  end
end
