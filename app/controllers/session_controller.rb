class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      # If user's login doesn't work, send them back to the login form.
        render 'new'
      end
    end
  

  def destroy
    session[:user_id] = nil
    redirect_to '/session/new'
  end
end
