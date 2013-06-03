require 'test_helper'

class NewStatusesControllerTest < ActionController::TestCase
  setup do
    @new_status = new_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_status" do
    assert_difference('NewStatus.count') do
      post :create, new_status: { content: @new_status.content, name: @new_status.name }
    end

    assert_redirected_to new_status_path(assigns(:new_status))
  end

  test "should show new_status" do
    get :show, id: @new_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_status
    assert_response :success
  end

  test "should update new_status" do
    put :update, id: @new_status, new_status: { content: @new_status.content, name: @new_status.name }
    assert_redirected_to new_status_path(assigns(:new_status))
  end

  test "should destroy new_status" do
    assert_difference('NewStatus.count', -1) do
      delete :destroy, id: @new_status
    end

    assert_redirected_to new_statuses_path
  end
end
