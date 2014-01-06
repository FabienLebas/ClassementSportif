require 'test_helper'

class GolvesControllerTest < ActionController::TestCase
  setup do
    @golf = golves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:golves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create golf" do
    assert_difference('Golf.count') do
      post :create, golf: { classementactuel: @golf.classementactuel, datemeilleurclassement: @golf.datemeilleurclassement, email: @golf.email, meilleurclassement: @golf.meilleurclassement, points: @golf.points }
    end

    assert_redirected_to golf_path(assigns(:golf))
  end

  test "should show golf" do
    get :show, id: @golf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @golf
    assert_response :success
  end

  test "should update golf" do
    put :update, id: @golf, golf: { classementactuel: @golf.classementactuel, datemeilleurclassement: @golf.datemeilleurclassement, email: @golf.email, meilleurclassement: @golf.meilleurclassement, points: @golf.points }
    assert_redirected_to golf_path(assigns(:golf))
  end

  test "should destroy golf" do
    assert_difference('Golf.count', -1) do
      delete :destroy, id: @golf
    end

    assert_redirected_to golves_path
  end
end
