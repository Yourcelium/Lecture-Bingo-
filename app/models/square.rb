# == Schema Information
#
# Table name: squares
#
#  id         :integer          not null, primary key
#  theme_id   :integer
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Square < ApplicationRecord
    validates :text, presence: true
    
    belongs_to :theme

    has_many :games, through: :theme

    has_many :builds

    has_many :boards, through: :builds
    
end
