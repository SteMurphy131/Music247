require 'test_helper'

class UserLabelsControllerTest < ActionController::TestCase
  setup do
    @user_label = user_labels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_labels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_label" do
    assert_difference('UserLabel.count') do
      post :create, user_label: { label_id: @user_label.label_id, user_id: @user_label.user_id }
    end

    assert_redirected_to user_label_path(assigns(:user_label))
  end

  test "should show user_label" do
    get :show, id: @user_label
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_label
    assert_response :success
  end

  test "should update user_label" do
    patch :update, id: @user_label, user_label: { label_id: @user_label.label_id, user_id: @user_label.user_id }
    assert_redirected_to user_label_path(assigns(:user_label))
  end

  test "should destroy user_label" do
    assert_difference('UserLabel.count', -1) do
      delete :destroy, id: @user_label
    end

    assert_redirected_to user_labels_path
  end
end
