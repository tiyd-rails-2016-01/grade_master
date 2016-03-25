class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private def authenticate_user
    if session[:user_id].nil?
      redirect_to root_path, notice: "No really, you need to log in."
    end
  end

  private def authenticate_principal_or_teacher
    redirect_to root_path, notice: "You don't have permission to access that page." unless session[:person_type] == "Principal" || session[:person_type] == "Teacher"
  end

  private def authenticate_principal
    redirect_to root_path, notice: "You don't have permission to access that page." unless session[:person_type] == "Principal"
  end

  private def authenticate_teacher
      redirect_to root_path, notice: "You don't have permission to access that page." unless session[:person_type] == "Teacher"
  end

  private def authenticate_student
      redirect_to root_path, notice: "You don't have permission to access that page." unless session[:person_type] == "Student"
  end

  private def authenticate_parent
      redirect_to root_path, notice: "You don't have permission to access that page." unless session[:person_type] == "Student"
  end


end
