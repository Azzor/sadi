require 'test_helper'

class RequerimsControllerTest < ActionController::TestCase
  setup do
    @requerim = requerims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requerims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requerim" do
    assert_difference('Requerim.count') do
      post :create, requerim: { asunto: @requerim.asunto, notif_on: @requerim.notif_on, nrequerim: @requerim.nrequerim, resp_on: @requerim.resp_on, venc_on: @requerim.venc_on }
    end

    assert_redirected_to requerim_path(assigns(:requerim))
  end

  test "should show requerim" do
    get :show, id: @requerim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requerim
    assert_response :success
  end

  test "should update requerim" do
    put :update, id: @requerim, requerim: { asunto: @requerim.asunto, notif_on: @requerim.notif_on, nrequerim: @requerim.nrequerim, resp_on: @requerim.resp_on, venc_on: @requerim.venc_on }
    assert_redirected_to requerim_path(assigns(:requerim))
  end

  test "should destroy requerim" do
    assert_difference('Requerim.count', -1) do
      delete :destroy, id: @requerim
    end

    assert_redirected_to requerims_path
  end
end
