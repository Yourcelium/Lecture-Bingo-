class SessionsController < ApplicationController
    def create
      user = User.find_by_cred(username: params[:user][:username])
      if user && user.valid_password?(params[:user][:password])
        log_in(user)
        render json: user
      else
        render json: user.errors.full_messages
      end
    end

    def destroy
      current_user.reset_session_token! if current_user

      session[:session_token] = nil

      @current_user = nil

      render json: {message: 'Logged out'}
    end
    
end