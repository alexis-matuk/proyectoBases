require 'test_helper'

class EstablecimientoInspectorsControllerTest < ActionController::TestCase
  setup do
    @establecimiento_inspector = establecimiento_inspectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:establecimiento_inspectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create establecimiento_inspector" do
    assert_difference('EstablecimientoInspector.count') do
      post :create, establecimiento_inspector: { fecha: @establecimiento_inspector.fecha, nombre: @establecimiento_inspector.nombre }
    end

    assert_redirected_to establecimiento_inspector_path(assigns(:establecimiento_inspector))
  end

  test "should show establecimiento_inspector" do
    get :show, id: @establecimiento_inspector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @establecimiento_inspector
    assert_response :success
  end

  test "should update establecimiento_inspector" do
    patch :update, id: @establecimiento_inspector, establecimiento_inspector: { fecha: @establecimiento_inspector.fecha, nombre: @establecimiento_inspector.nombre }
    assert_redirected_to establecimiento_inspector_path(assigns(:establecimiento_inspector))
  end

  test "should destroy establecimiento_inspector" do
    assert_difference('EstablecimientoInspector.count', -1) do
      delete :destroy, id: @establecimiento_inspector
    end

    assert_redirected_to establecimiento_inspectors_path
  end
end
