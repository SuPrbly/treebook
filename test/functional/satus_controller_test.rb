require 'test_helper'

class SatusControllerTest < ActionController::TestCase
  setup do
    @satu = satus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:satus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create satu" do
    assert_difference('Satu.count') do
      post :create, satu: { content: @satu.content, name: @satu.name }
    end

    assert_redirected_to satu_path(assigns(:satu))
  end

  test "should show satu" do
    get :show, id: @satu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @satu
    assert_response :success
  end

  test "should update satu" do
    put :update, id: @satu, satu: { content: @satu.content, name: @satu.name }
    assert_redirected_to satu_path(assigns(:satu))
  end

  test "should destroy satu" do
    assert_difference('Satu.count', -1) do
      delete :destroy, id: @satu
    end

    assert_redirected_to satus_path
  end
end
