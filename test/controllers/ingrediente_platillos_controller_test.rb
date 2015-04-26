require 'test_helper'

class IngredientePlatillosControllerTest < ActionController::TestCase
  setup do
    @ingrediente_platillo = ingrediente_platillos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingrediente_platillos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingrediente_platillo" do
    assert_difference('IngredientePlatillo.count') do
      post :create, ingrediente_platillo: {  }
    end

    assert_redirected_to ingrediente_platillo_path(assigns(:ingrediente_platillo))
  end

  test "should show ingrediente_platillo" do
    get :show, id: @ingrediente_platillo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingrediente_platillo
    assert_response :success
  end

  test "should update ingrediente_platillo" do
    patch :update, id: @ingrediente_platillo, ingrediente_platillo: {  }
    assert_redirected_to ingrediente_platillo_path(assigns(:ingrediente_platillo))
  end

  test "should destroy ingrediente_platillo" do
    assert_difference('IngredientePlatillo.count', -1) do
      delete :destroy, id: @ingrediente_platillo
    end

    assert_redirected_to ingrediente_platillos_path
  end
end
