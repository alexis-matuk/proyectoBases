require 'test_helper'

class EstablecimientoProveedorsControllerTest < ActionController::TestCase
  setup do
    @establecimiento_proveedor = establecimiento_proveedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:establecimiento_proveedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create establecimiento_proveedor" do
    assert_difference('EstablecimientoProveedor.count') do
      post :create, establecimiento_proveedor: {  }
    end

    assert_redirected_to establecimiento_proveedor_path(assigns(:establecimiento_proveedor))
  end

  test "should show establecimiento_proveedor" do
    get :show, id: @establecimiento_proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @establecimiento_proveedor
    assert_response :success
  end

  test "should update establecimiento_proveedor" do
    patch :update, id: @establecimiento_proveedor, establecimiento_proveedor: {  }
    assert_redirected_to establecimiento_proveedor_path(assigns(:establecimiento_proveedor))
  end

  test "should destroy establecimiento_proveedor" do
    assert_difference('EstablecimientoProveedor.count', -1) do
      delete :destroy, id: @establecimiento_proveedor
    end

    assert_redirected_to establecimiento_proveedors_path
  end
end
