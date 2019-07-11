class User < ActiveRecord::Base

  has_secure_password
  validates :username, presence: true, uniqueness: true

  has_many :user_trips
  has_many :projects, through: :user_trips

end
