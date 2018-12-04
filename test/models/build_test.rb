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

require 'test_helper'

class BuildTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
