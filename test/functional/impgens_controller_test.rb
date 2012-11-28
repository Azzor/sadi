require 'test_helper'

class ImpgensControllerTest < ActionController::TestCase
  setup do
    @impgen = impgens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:impgens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create impgen" do
    assert_difference('Impgen.count') do
      post :create, impgen: { impgen: @impgen.impgen }
    end

    assert_redirected_to impgen_path(assigns(:impgen))
  end

  test "should show impgen" do
    get :show, id: @impgen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @impgen
    assert_response :success
  end

  test "should update impgen" do
    put :update, id: @impgen, impgen: { impgen: @impgen.impgen }
    assert_redirected_to impgen_path(assigns(:impgen))
  end

  test "should destroy impgen" do
    assert_difference('Impgen.count', -1) do
      delete :destroy, id: @impgen
    end

    assert_redirected_to impgens_path
  end
end
