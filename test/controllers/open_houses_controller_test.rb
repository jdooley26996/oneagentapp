require 'test_helper'

class OpenHousesControllerTest < ActionController::TestCase
  setup do
    @open_house = open_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_house" do
    assert_difference('OpenHouse.count') do
      post :create, open_house: { Are_you_working_with_a_Realtor: @open_house.Are_you_working_with_a_Realtor, Email_address: @open_house.Email_address, How_did_you_here_about_our_open_house: @open_house.How_did_you_here_about_our_open_house, Name: @open_house.Name, Phone_number: @open_house.Phone_number, Realtors_name_and_contact_information: @open_house.Realtors_name_and_contact_information, Would_you_like_to_be_emailed_new_properties: @open_house.Would_you_like_to_be_emailed_new_properties }
    end

    assert_redirected_to open_house_path(assigns(:open_house))
  end

  test "should show open_house" do
    get :show, id: @open_house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_house
    assert_response :success
  end

  test "should update open_house" do
    patch :update, id: @open_house, open_house: { Are_you_working_with_a_Realtor: @open_house.Are_you_working_with_a_Realtor, Email_address: @open_house.Email_address, How_did_you_here_about_our_open_house: @open_house.How_did_you_here_about_our_open_house, Name: @open_house.Name, Phone_number: @open_house.Phone_number, Realtors_name_and_contact_information: @open_house.Realtors_name_and_contact_information, Would_you_like_to_be_emailed_new_properties: @open_house.Would_you_like_to_be_emailed_new_properties }
    assert_redirected_to open_house_path(assigns(:open_house))
  end

  test "should destroy open_house" do
    assert_difference('OpenHouse.count', -1) do
      delete :destroy, id: @open_house
    end

    assert_redirected_to open_houses_path
  end
end
