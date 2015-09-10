class UsersController < ApplicationController
  
  # form to create new user
  def new
    if current_user
      redirect_to profile_path
    else
      @user = User.new
      render :new
    end
  end

  # creates new user in db
  def create
    if current_user
      redirect_to profile_path
    else
    user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to '/profile'
      else
        redirect_to '/signup'
      end 
    end
  end

  # show current user 
  def show
  	@current_user = User.find(session[:user_id])
  	render :show
  end

  # form to edit user details
  def edit
  end
  
  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
