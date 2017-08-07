require 'test_helper'

class RegisterStocksControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get register_stocks_edit_url
    assert_response :success
  end

end
