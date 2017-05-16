require 'test_helper'

class SectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get World" do
    get sections_World_url
    assert_response :success
  end

  test "should get Health" do
    get sections_Health_url
    assert_response :success
  end

  test "should get Sports" do
    get sections_Sports_url
    assert_response :success
  end

end
