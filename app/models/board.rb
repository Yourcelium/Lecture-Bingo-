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
end
