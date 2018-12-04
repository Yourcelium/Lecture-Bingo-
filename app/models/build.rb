# == Schema Information
#
# Table name: builds
#
#  id         :integer          not null, primary key
#  board_id   :integer
#  square_id  :integer
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  checked    :boolean          default(FALSE)
#

class Build < ApplicationRecord
    validates_uniqueness_of :board_id, scope: [:square_id, :position]
    
    belongs_to :board

    belongs_to :square
end
