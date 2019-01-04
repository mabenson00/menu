require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get main_new_url
    assert_response :success
  end

  test "should get create" do
    get main_create_url
    assert_response :success
  end

  test "should get index" do
    get main_index_url
    assert_response :success
  end

end
