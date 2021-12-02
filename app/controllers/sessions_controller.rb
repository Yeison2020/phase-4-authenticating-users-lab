class SessionsController < ApplicationController
  # Need to clear a doubt here:
  #Am i creating session or finding a user sessions
  # What if the user have not been created yet 
    def create
      user = User.find_by(username: params[:username])
      session[:user_id] = user.id
      render json: user
    end
  
    def destroy
      session.delete :user_id
      head :no_content
    end
  
  end
