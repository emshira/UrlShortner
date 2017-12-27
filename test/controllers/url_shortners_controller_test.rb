require 'test_helper'

class UrlShortnersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get url_shortners_show_url
    assert_response :success
  end

  test "should get index" do
    get url_shortners_index_url
    assert_response :success
  end

  test "should get new" do
    get url_shortners_new_url
    assert_response :success
  end

  test "should get create" do
    get url_shortners_create_url
    assert_response :success
  end

end
