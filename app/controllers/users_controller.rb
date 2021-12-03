class UsersController < ApplicationController



    # Here is just the reload page to send back data to the current user, because react when refreshes trhe pages loses the state
    # Why do we use sessions my undersatanding is to find the current user from the sessions using their cookies
    def show 
        user = User.find(session[:user_id])
        render json: user
    end
end
