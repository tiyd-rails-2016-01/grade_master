class DashboardController < ApplicationController
  def show

    if session[:person_type] == "Student"
      @student = Student.find(User.find(session[:user_id]).person_id)
    elsif session[:person_type] == "Parent"
      @student = Parent.find(User.find(session[:user_id]).person_id).student
    end

  end
end
