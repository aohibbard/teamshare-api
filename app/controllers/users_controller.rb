class UsersController < ApplicationController

    before_action :logged_in?
    # before action to verify login?

    def create
        user = user.create(user_params)
        user.save
        render json: UserSerializer.new(user)
    end 

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
    end 

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
    
end
