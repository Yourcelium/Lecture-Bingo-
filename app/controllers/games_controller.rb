class GamesController < ApplicationController

    def create
      game = Game.new(creator: current_user, theme: params[:theme_id])

      if game.save
        render json: game
      else
        render json: game.errors
      end
    end

    def update

    end
    
end