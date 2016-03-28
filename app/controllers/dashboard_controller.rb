class DashboardController < ApplicationController
  def show
    @person = User.find(session[:user_id]).person if session[:user_id]

    if !session[:person_type]
      redirect_to login_path
    elsif session[:person_type] == "Student"
      @student = Student.find(User.find(session[:user_id]).person_id)
    elsif session[:person_type] == "Parent"
      @student = Parent.find(User.find(session[:user_id]).person_id).student
    end

  end
end
