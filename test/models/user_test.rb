require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_user_can_be_created
    user = User.create

    assert_equal true, user.valid?
  end
end
