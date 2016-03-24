class AuthenticationsController < ApplicationController
  def new

  end

  def create
    # render text: request.env['omniauth.auth'].to_yaml
    auth = request.env["omniauth.auth"]
    user = User.find_by(github_user_name: auth[:info]["nickname"])
    if user
      session[:user_id] = user.id
      session[:person_id] = user.person_id
      session[:person_type] = user.person_type
      redirect_to root_url, :notice => "Signed in!"
    else
      flash.now[:notice] = "You need to log in before you can do anything!"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:person_id] = nil
    session[:person_type] = nil
    redirect_to login_path, notice: "Great session, bro."
  end


end
