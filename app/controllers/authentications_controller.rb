class AuthenticationsController < ApplicationController
  def new

  end

  def create
    # render text: request.env['omniauth.auth'].to_yaml
    if params[:email]
      user = User.find_by(email: params[:email])
      user_auth = user && user.authenticate(params[:password])
    else
      auth = request.env["omniauth.auth"]
      user = User.find_by(github_user_name: auth[:info]["nickname"])
      user_auth = true
    end
    if user && user_auth
      session[:user_id] = user.id
      session[:person_type] = user.person_type
      if user.person_type
        redirect_to root_url, notice: "Signed in!"
      else
       redirect_to login_url, notice: "Sorry, we know you have an account but we don't know who you are. Please contact your system administrator to get added to the system."
     end
    else
      flash.now[:notice] = "You need to log in before you can do anything!"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:person_type] = nil
    redirect_to login_path, notice: "Great session, bro."
  end


end
