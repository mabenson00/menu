require 'test_helper'

class SideControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get side_new_url
    assert_response :success
  end

  test "should get create" do
    get side_create_url
    assert_response :success
  end

  test "should get index" do
    get side_index_url
    assert_response :success
  end

end
