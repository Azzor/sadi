require 'test_helper'

class SolicitudsControllerTest < ActionController::TestCase
  setup do
    @solicitud = solicituds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicituds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post :create, solicitud: { cliente: @solicitud.cliente, devest_on: @solicitud.devest_on, impesp: @solicitud.impesp, importe: @solicitud.importe, ingreso_on: @solicitud.ingreso_on, per1_on: @solicitud.per1_on, per2_on: @solicitud.per2_on, tramite_id: @solicitud.tramite_id, usu_gerente: @solicitud.usu_gerente, usu_junior: @solicitud.usu_junior, usu_senior: @solicitud.usu_senior, usu_socio: @solicitud.usu_socio }
    end

    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should show solicitud" do
    get :show, id: @solicitud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud
    assert_response :success
  end

  test "should update solicitud" do
    put :update, id: @solicitud, solicitud: { cliente: @solicitud.cliente, devest_on: @solicitud.devest_on, impesp: @solicitud.impesp, importe: @solicitud.importe, ingreso_on: @solicitud.ingreso_on, per1_on: @solicitud.per1_on, per2_on: @solicitud.per2_on, tramite_id: @solicitud.tramite_id, usu_gerente: @solicitud.usu_gerente, usu_junior: @solicitud.usu_junior, usu_senior: @solicitud.usu_senior, usu_socio: @solicitud.usu_socio }
    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete :destroy, id: @solicitud
    end

    assert_redirected_to solicituds_path
  end
end
