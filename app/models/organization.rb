class Organization < ActiveRecord::Base
  has_many :projects
  has_many :locations, through: :projects
  has_many :categories, through: :projects
  
end
