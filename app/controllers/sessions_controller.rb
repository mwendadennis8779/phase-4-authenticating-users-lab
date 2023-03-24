class SessionsController < ApplicationController
    def create 
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    def destroy
        session.delete(:user_id) # delete the user ID from the session
        head :no_content
    end
end
