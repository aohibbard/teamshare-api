class UsersController < ApplicationController

    def create
        user = user.create(user_params)
        user.save
        render json: TaskSerializer.new(user)
    end 

    def show
        user = User.find_by(id: params[:id])
        render json: TaskSerializer.new(user)
    end 

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
    
end
