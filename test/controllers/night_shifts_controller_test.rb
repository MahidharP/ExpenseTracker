require 'test_helper'

class NightShiftsControllerTest < ActionController::TestCase
  setup do
    @night_shift = night_shifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:night_shifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create night_shift" do
    assert_difference('NightShift.count') do
      post :create, night_shift: { basicpay_id: @night_shift.basicpay_id, claim: @night_shift.claim, date: @night_shift.date }
    end

    assert_redirected_to night_shift_path(assigns(:night_shift))
  end

  test "should show night_shift" do
    get :show, id: @night_shift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @night_shift
    assert_response :success
  end

  test "should update night_shift" do
    patch :update, id: @night_shift, night_shift: { basicpay_id: @night_shift.basicpay_id, claim: @night_shift.claim, date: @night_shift.date }
    assert_redirected_to night_shift_path(assigns(:night_shift))
  end

  test "should destroy night_shift" do
    assert_difference('NightShift.count', -1) do
      delete :destroy, id: @night_shift
    end

    assert_redirected_to night_shifts_path
  end
end
