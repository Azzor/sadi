require 'test_helper'

class RepDevControllerTest < ActionController::TestCase
  test "should get busca" do
    get :busca
    assert_response :success
  end

  test "should get listado" do
    get :listado
    assert_response :success
  end

end
