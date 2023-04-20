class UsersController < ApplicationController
  def index
    @users = User.all 
    render json: @users
  end

  def new
    @user = User.new
  end 

  def create 
    @user = User.new(user_params) 
    if @user.save 
      flash.now[:notice] = "User created successfully" 
      redirect_to @user
    else
      flash.now[:notice] = "User not created, check credentials" 
      render :new, status: :unprocessable_entity
    end 
  end

  def show
    # Run the query if nil else retains value
    @current_user ||= User.find(params[:id])
  end 

  private 
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation) 
    end 
end
