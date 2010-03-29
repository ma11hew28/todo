class User < ActiveRecord::Base
  has_many :todos, :order => :position

  validates_presence_of     :email
  validates_format_of       :email,
                            :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_uniqueness_of   :email
end


# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

