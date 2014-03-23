require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { birth_date: @client.birth_date, code: @client.code, gender: @client.gender, hep_b_pos: @client.hep_b_pos, hep_b_screen: @client.hep_b_screen, hep_c_pos: @client.hep_c_pos, hep_c_screen: @client.hep_c_screen, hiv_pos: @client.hiv_pos, hiv_screen: @client.hiv_screen, how_did_you_hear: @client.how_did_you_hear, neighborhood: @client.neighborhood, new: @client.new, register_date: @client.register_date, register_location_name: @client.register_location_name, veterancy: @client.veterancy }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { birth_date: @client.birth_date, code: @client.code, gender: @client.gender, hep_b_pos: @client.hep_b_pos, hep_b_screen: @client.hep_b_screen, hep_c_pos: @client.hep_c_pos, hep_c_screen: @client.hep_c_screen, hiv_pos: @client.hiv_pos, hiv_screen: @client.hiv_screen, how_did_you_hear: @client.how_did_you_hear, neighborhood: @client.neighborhood, new: @client.new, register_date: @client.register_date, register_location_name: @client.register_location_name, veterancy: @client.veterancy }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
