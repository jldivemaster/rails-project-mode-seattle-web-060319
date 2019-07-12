class UserTrip < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  # def less_one_spot
  #   self.project.available_spots -= 1
  #   self.project.save
  # end

end
