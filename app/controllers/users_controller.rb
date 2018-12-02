class UsersController < ApplicationController
    def create
      user = User.new(username: params[:user][:username], password: params[:user][:password])

      if user.save
        render json: user
      else
        render json: user.errors.full_messages
    end
end