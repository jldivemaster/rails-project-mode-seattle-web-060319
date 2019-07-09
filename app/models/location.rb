class Location < ActiveRecord::Base
  has_many :projects
  has_many :categories, through: :projects
  has_many :organizations, through: :projects

end
