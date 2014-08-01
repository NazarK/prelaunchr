# == Schema Information
#
# Table name: steps
#
#  id            :integer          not null, primary key
#  referer_count :integer
#  html          :string(255)
#  css_class     :string(255)
#  image_url     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
