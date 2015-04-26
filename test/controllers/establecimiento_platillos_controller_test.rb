require 'test_helper'

class EstablecimientoPlatillosControllerTest < ActionController::TestCase
  setup do
    @establecimiento_platillo = establecimiento_platillos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:establecimiento_platillos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create establecimiento_platillo" do
    assert_difference('EstablecimientoPlatillo.count') do
      post :create, establecimiento_platillo: { introduccion: @establecimiento_platillo.introduccion }
    end

    assert_redirected_to establecimiento_platillo_path(assigns(:establecimiento_platillo))
  end

  test "should show establecimiento_platillo" do
    get :show, id: @establecimiento_platillo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @establecimiento_platillo
    assert_response :success
  end

  test "should update establecimiento_platillo" do
    patch :update, id: @establecimiento_platillo, establecimiento_platillo: { introduccion: @establecimiento_platillo.introduccion }
    assert_redirected_to establecimiento_platillo_path(assigns(:establecimiento_platillo))
  end

  test "should destroy establecimiento_platillo" do
    assert_difference('EstablecimientoPlatillo.count', -1) do
      delete :destroy, id: @establecimiento_platillo
    end

    assert_redirected_to establecimiento_platillos_path
  end
end
