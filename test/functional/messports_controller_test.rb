require 'test_helper'

class MessportsControllerTest < ActionController::TestCase
  setup do
    @messport = messports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messport" do
    assert_difference('Messport.count') do
      post :create, messport: { email: @messport.email, sport: @messport.sport }
    end

    assert_redirected_to messport_path(assigns(:messport))
  end

  test "should show messport" do
    get :show, id: @messport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messport
    assert_response :success
  end

  test "should update messport" do
    put :update, id: @messport, messport: { email: @messport.email, sport: @messport.sport }
    assert_redirected_to messport_path(assigns(:messport))
  end

  test "should destroy messport" do
    assert_difference('Messport.count', -1) do
      delete :destroy, id: @messport
    end

    assert_redirected_to messports_path
  end
end
