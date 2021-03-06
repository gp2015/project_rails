require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get "/"
    assert_response :success
    assert_select "title", "Home"
  end

  test "should get index" do
  	get index_url # :index doesn't work here?
  	assert_response :success
  	assert_select "title", "Home"
  end

end
