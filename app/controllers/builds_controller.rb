class BuildsController < ApplicationController

  def update
    build = Build.find(:id)

    if build.checked
      build.checked = false

      render json: {message: "#{build.square.text} unchecked"}
      
    else
      build.checked = true
      
      board = Board.find(build.board_id)
      if board.won?
        render json: {message: "We have a winner!"}
      else
        render json: {message: "#{build.square.text} checked"}
      end
      
    end
  end
end