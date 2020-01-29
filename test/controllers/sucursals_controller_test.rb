require 'test_helper'

class SucursalsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sucursals_create_url
    assert_response :success
  end

  test "should get show" do
    get sucursals_show_url
    assert_response :success
  end

  test "should get edit" do
    get sucursals_edit_url
    assert_response :success
  end

  test "should get new" do
    get sucursals_new_url
    assert_response :success
  end

  test "should get update" do
    get sucursals_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sucursals_destroy_url
    assert_response :success
  end

end
