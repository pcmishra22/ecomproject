require "test_helper"

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get info_about_url
    assert_response :success
  end

  test "should get privacy" do
    get info_privacy_url
    assert_response :success
  end

  test "should get faq" do
    get info_faq_url
    assert_response :success
  end

  test "should get contact" do
    get info_contact_url
    assert_response :success
  end
end
