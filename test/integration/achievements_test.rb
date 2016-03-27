require 'test_helper'

class AchievementsTest < ActionDispatch::IntegrationTest
  test "teacher can add a new achievement to student" do
    get login_path
    assert_template "new"
    assert_select "#notice", 1
    assert_select "input[type=email]", 1
    assert_select "input[type=password]", 1

    #Log in
    post login_path email: "mason@a.com", password: "password"
    assert_redirected_to root_path
    follow_redirect!

    #make sure that I can see student achievements
    get achievements_path
    assert response.body.include?("Student Achievements")

    get student_achievements_path(id: students(:anjana).id)


    patch student_path(students(:anjana)), student: {id: students(:anjana).id}, achievements: {"#{achievements(:one).id}" => "1"}

    follow_redirect!
    assert_template "show"
    assert response.body.include?("Total points: 400")
  end

end
