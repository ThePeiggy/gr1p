require 'test_helper'

class PrelaunchSubscribersControllerTest < ActionController::TestCase
  test "should get presubscription" do
    get :presubscription
    assert_response :success
  end

end
