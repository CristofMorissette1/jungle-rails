class UsersController < ApplicationController
  protect_from_forgery with: :null_session
  def new
  end

  def create
      @user = User.new(user_params)
      if @user.save
          session[:user_id] = @user.id
          redirect_to [:products], notice: 'User created!'
      else
          render :new
      end
  end

  def show
    @user = User.find(params[:name, :email])
  end

  def edit
    @user = User.edit()
  end


private
def user_params
  params.require(:user).permit :name, :email, :password, :password_confirmation
end
end
