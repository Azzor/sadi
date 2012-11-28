require 'test_helper'

class ImpespsControllerTest < ActionController::TestCase
  setup do
    @impesp = impesps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:impesps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create impesp" do
    assert_difference('Impesp.count') do
      post :create, impesp: {  }
    end

    assert_redirected_to impesp_path(assigns(:impesp))
  end

  test "should show impesp" do
    get :show, id: @impesp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @impesp
    assert_response :success
  end

  test "should update impesp" do
    put :update, id: @impesp, impesp: {  }
    assert_redirected_to impesp_path(assigns(:impesp))
  end

  test "should destroy impesp" do
    assert_difference('Impesp.count', -1) do
      delete :destroy, id: @impesp
    end

    assert_redirected_to impesps_path
  end
end
