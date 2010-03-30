require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end




# == Schema Information
#
# Table name: todos
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  due         :datetime
#  complete    :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  position    :integer
#  user_id     :integer
#  parent_id   :integer
#  lft         :integer
#  rgt         :integer
#

