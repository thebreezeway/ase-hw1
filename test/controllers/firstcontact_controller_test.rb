require 'test_helper'

class FirstcontactControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get firstcontact_hello_url
    assert_response :success
  end

  test "should get goodbye" do
    get firstcontact_goodbye_url
    assert_response :success
  end

end
