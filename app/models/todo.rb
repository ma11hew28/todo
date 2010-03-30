class Todo < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title
  acts_as_list :scope => :user
  # acts_as_nested_set
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
