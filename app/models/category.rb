class Category < ActiveRecord::Base
  has_many :projects
  has_many :locations, through: :projects
  has_many :organizations, through: :projects
  
end
