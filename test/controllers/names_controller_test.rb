require 'test_helper'

class NamesControllerTest < ActionController::TestCase
  setup do
    @name = names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name" do
    assert_difference('Name.count') do
      post :create, name: { Are_you_working_with_a_Realtor: @name.Are_you_working_with_a_Realtor, Email_address: @name.Email_address, How_did_you_here_about_our_open_house: @name.How_did_you_here_about_our_open_house, Phone_number: @name.Phone_number, Realtors_name_and_contact_information: @name.Realtors_name_and_contact_information, Would_you_like_to_be_emailed_new_properties: @name.Would_you_like_to_be_emailed_new_properties }
    end

    assert_redirected_to name_path(assigns(:name))
  end

  test "should show name" do
    get :show, id: @name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name
    assert_response :success
  end

  test "should update name" do
    patch :update, id: @name, name: { Are_you_working_with_a_Realtor: @name.Are_you_working_with_a_Realtor, Email_address: @name.Email_address, How_did_you_here_about_our_open_house: @name.How_did_you_here_about_our_open_house, Phone_number: @name.Phone_number, Realtors_name_and_contact_information: @name.Realtors_name_and_contact_information, Would_you_like_to_be_emailed_new_properties: @name.Would_you_like_to_be_emailed_new_properties }
    assert_redirected_to name_path(assigns(:name))
  end

  test "should destroy name" do
    assert_difference('Name.count', -1) do
      delete :destroy, id: @name
    end

    assert_redirected_to names_path
  end
end
