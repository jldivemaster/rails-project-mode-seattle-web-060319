class UserTrip < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  def add_rating(input)
    self.rating  += input
    self.save
  end

end
