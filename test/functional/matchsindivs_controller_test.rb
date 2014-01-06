require 'test_helper'

class MatchsindivsControllerTest < ActionController::TestCase
  setup do
    @matchsindiv = matchsindivs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matchsindivs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matchsindiv" do
    assert_difference('Matchsindiv.count') do
      post :create, matchsindiv: { email1: @matchsindiv.email1, email2: @matchsindiv.email2, sport: @matchsindiv.sport }
    end

    assert_redirected_to matchsindiv_path(assigns(:matchsindiv))
  end

  test "should show matchsindiv" do
    get :show, id: @matchsindiv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matchsindiv
    assert_response :success
  end

  test "should update matchsindiv" do
    put :update, id: @matchsindiv, matchsindiv: { email1: @matchsindiv.email1, email2: @matchsindiv.email2, sport: @matchsindiv.sport }
    assert_redirected_to matchsindiv_path(assigns(:matchsindiv))
  end

  test "should destroy matchsindiv" do
    assert_difference('Matchsindiv.count', -1) do
      delete :destroy, id: @matchsindiv
    end

    assert_redirected_to matchsindivs_path
  end
end
