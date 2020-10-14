require 'test_helper'

class GourmetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gourmets_index_url
    assert_response :success
  end

  test "should get show" do
    get gourmets_show_url
    assert_response :success
  end

  test "should get new" do
    get gourmets_new_url
    assert_response :success
  end

  test "should get edit" do
    get gourmets_edit_url
    assert_response :success
  end

end
