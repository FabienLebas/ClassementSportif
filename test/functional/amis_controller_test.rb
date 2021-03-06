require 'test_helper'

class AmisControllerTest < ActionController::TestCase
  setup do
    @ami = amis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ami" do
    assert_difference('Ami.count') do
      post :create, ami: { email1: @ami.email1, email2: @ami.email2 }
    end

    assert_redirected_to ami_path(assigns(:ami))
  end

  test "should show ami" do
    get :show, id: @ami
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ami
    assert_response :success
  end

  test "should update ami" do
    put :update, id: @ami, ami: { email1: @ami.email1, email2: @ami.email2 }
    assert_redirected_to ami_path(assigns(:ami))
  end

  test "should destroy ami" do
    assert_difference('Ami.count', -1) do
      delete :destroy, id: @ami
    end

    assert_redirected_to amis_path
  end
end
