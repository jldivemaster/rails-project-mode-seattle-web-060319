class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :user_trips
  has_many :users, through: :user_trips
  belongs_to :organization
  belongs_to :location
  belongs_to :category


end