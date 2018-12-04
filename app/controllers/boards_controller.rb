class BuildsController < ApplicatinController
    def create
      board = Board.new(game_id: params[:game_id])

      if board.save
        board.configure!
        builds = board.squares

        return json: builds
      end
    end
end