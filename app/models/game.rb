# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  theme_id   :integer
#  winner_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  creator_id :integer
#

class Game < ApplicationRecord
    belongs_to :theme

    # belongs_to :winner,
    #     foreign_key: :winner_id,
    #     class_name: :User

    has_many :plays

    has_many :players,
        through: :plays, 
        source: :user

    has_many :boards

    belongs_to :creator,
        foreign_key: :creator_id,
        class_name: :User
    


    def won?
        boards.each do |board|
            return true if board.won?
        end
      
    end
end
