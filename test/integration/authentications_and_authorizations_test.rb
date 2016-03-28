require 'test_helper'

class AuthenticationsAndAuthorizationsTest < ActionDispatch::IntegrationTest
  test "login as teacher works well" do
    get login_path
    assert_template "new"
    assert_select "#notice", 1
    assert_select "input[type=email]", 1
    assert_select "input[type=password]", 1

    #Log in
    post login_path email: "a@a.com", password: "password"
    assert_redirected_to root_path
    follow_redirect!

    #make sure that I can see Teachers
    get teachers_path
    assert_select "tbody tr", 3

    #Create teacher
    get new_teacher_path
    post teachers_path teacher: {first_name: "Bob"}
    assert teachers_path

    #Make sure that I see another teacher
    get teachers_path
    assert_select "tbody tr", 4

    #log out
    delete logout_path
    assert_redirected_to login_path
  end

  test "login as student works well" do
    get login_path
    assert_template "new"
    assert_select "#notice", 1
    assert_select "input[type=email]", 1
    assert_select "input[type=password]", 1

    #Log in
    post login_path email: "b@b.com", password: "password"
    assert_redirected_to root_path
    follow_redirect!

    #make sure that I can't see Teachers
    get teachers_path
    assert_redirected_to root_path


  end



end
