class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def new 
        @user = User.new
    end

    def create
        # @user = User.new(user_params)
        @user = User.create(user_params)

        # if @user.save
        if @user.valid?
            redirect_to @user
        else
            # flash[:errors] = @user.errors.full_messages
            render :new
        end
    end

    private 

    def user_params
        params.require(:user).permit(:name)
    end
end
