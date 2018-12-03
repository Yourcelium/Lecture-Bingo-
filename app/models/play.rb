# == Schema Information
#
# Table name: plays
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Play < ApplicationRecord
    belongs_to :user

    belongs_to :game
end
