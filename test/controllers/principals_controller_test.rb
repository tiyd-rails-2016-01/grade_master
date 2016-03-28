require 'test_helper'

class PrincipalsControllerTest < ActionController::TestCase
  setup do
    @principal = principals(:one)
  end

  test "should get index" do
    get :index
    assert_redirected_to root_path
  end

  test "should show principal" do
    get :show, id: @principal.id
    assert_redirected_to root_path
  end
end
