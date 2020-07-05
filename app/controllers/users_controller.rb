class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        session[:user_id] = @user.id 
        if @user.save
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
