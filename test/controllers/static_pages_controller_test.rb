require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "ROR sample app"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "HOME | ROR sample app"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "HELP | ROR sample app"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "ABOUT | ROR sample app"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "CONTACT | ROR sample app"
  end
end
