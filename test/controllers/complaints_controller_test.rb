require 'test_helper'

class combinisControllerTest < ActionController::TestCase
  setup do
    @combini = combinis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combinis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combini" do
    assert_difference('combini.count') do
      post :create, combini: {  }
    end

    assert_redirected_to combini_path(assigns(:combini))
  end

  test "should show combini" do
    get :show, id: @combini
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combini
    assert_response :success
  end

  test "should update combini" do
    patch :update, id: @combini, combini: {  }
    assert_redirected_to combini_path(assigns(:combini))
  end

  test "should destroy combini" do
    assert_difference('combini.count', -1) do
      delete :destroy, id: @combini
    end

    assert_redirected_to combinis_path
  end
end
