require 'test_helper'

class ReleasesControllerTest < ActionController::TestCase
  setup do
    @release = releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release" do
    assert_difference('Release.count') do
      post :create, release: { artist_id: @release.artist_id, artist_name: @release.artist_name, label_id: @release.label_id, label_name: @release.label_name, name: @release.name, noTracks: @release.noTracks }
    end

    assert_redirected_to release_path(assigns(:release))
  end

  test "should show release" do
    get :show, id: @release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @release
    assert_response :success
  end

  test "should update release" do
    patch :update, id: @release, release: { artist_id: @release.artist_id, artist_name: @release.artist_name, label_id: @release.label_id, label_name: @release.label_name, name: @release.name, noTracks: @release.noTracks }
    assert_redirected_to release_path(assigns(:release))
  end

  test "should destroy release" do
    assert_difference('Release.count', -1) do
      delete :destroy, id: @release
    end

    assert_redirected_to releases_path
  end
end
