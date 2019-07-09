class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :user_trips
  has_many :projects, through: :user_trips

end
