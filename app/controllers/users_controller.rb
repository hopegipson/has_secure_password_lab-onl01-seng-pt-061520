class UsersController < ApplicationController

    def new
        @user = User.new
    end
  
    def create
        if params[:user][:password] == params[:user][:password_confirmation]
             @user = User.create(user_params)
            return redirect_to new_user_path unless @user.save
             session[:user_id] = @user.id
             redirect_to home_path
        else
            flash[:message] = "Passwords do not match."
            redirect_to new_user_path
        end
    end
  
  
    private
  
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
  
  end