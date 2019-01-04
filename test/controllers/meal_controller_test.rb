require 'test_helper'

class MealControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meal_new_url
    assert_response :success
  end

  test "should get create" do
    get meal_create_url
    assert_response :success
  end

  test "should get index" do
    get meal_index_url
    assert_response :success
  end

end
