class Todo < ActiveRecord::Base
  :order => :position
  belongs_to :user
  acts_as_list :scope => :user
end
