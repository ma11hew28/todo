class Todo < ActiveRecord::Base
  belongs_to :user
  acts_as_list :scope => :user
end


# == Schema Information
#
# Table name: todos
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  due         :datetime
#  done        :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  position    :integer
#

