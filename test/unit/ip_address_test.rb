# == Schema Information
#
# Table name: ip_addresses
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class IpAddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
