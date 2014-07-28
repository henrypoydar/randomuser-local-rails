require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest

  test "male headshots are served with the asset pipeline" do
    get "/assets/randomuser_local/portraits/men/9.jpg"
    assert_response :success
  end

  test "female headshots are served with the asset pipeline" do
    get "/assets/randomuser_local/portraits/women/9.jpg"
    assert_response :success
  end

end

