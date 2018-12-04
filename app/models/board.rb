# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Board < ApplicationRecord
    belongs_to :game

    has_one :play,
        through: :game,
        source: :plays

    has_one :player,
        through: :play,
        source: :user

    has_one :player,
        through: :play,
        source: :user

    has_one :theme,
        through: :game,
        source: :theme

    has_many :possible_squares,
        through: :theme,
        source: :squares

    has_many :builds

    has_many :squares,
        through: :builds,
        source: :square
    
        #TODO figure out better way of seeding a "free" square
    def configure!
      shuffled_squares = self.possible_squares.shuffle[0..24]
      shuffled_squares.each_with_index do |square, i| 
        next if i == 12
        Build.create(
            board_id: self.id,
            square_id: shuffled_squares.shift.id,
            position: i
            )
      end
      free = Square.create(
          text: 'Free Space!',
          theme_id: self.theme.id
      )
      Build.create(
        board_id: self.id,
        square_id: free.id,
        position: 12,
        checked: true
        )
    end

    def won?
        builds = self.builds
        winning_col?(builds) || winning_diag?(builds) || winning_row?(builds)
    end

    def winning_row?(builds)
        winning?(builds[0..4]) || winning?(builds[5..9]) || winning?(builds[10..14]) || winning?(builds[15..19]) || winning?(builds[20..24])
    end

    def winning_col?(builds)
        cols = Array.new(5) { Array.new }

        builds.each_with_index { |build, i| cols[i % 5].push(build)}

        cols.any? { |col| winning?(col) }
    end

    def winning_diag?(build)
      winning?([build[0], build[6], build[18], build[24]]) || winning?([build[4], build[8], build[16], build[20]])
    end

    def winning?(set)
        set.all? { |build| build.checked }
    end
end
