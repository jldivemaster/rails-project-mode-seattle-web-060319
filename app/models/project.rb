class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :user_trips
  has_many :users, through: :user_trips
  belongs_to :organization
  belongs_to :location
  belongs_to :category

  def less_one_spot
    self.available_spots -= 1
    self.save
  end

  def rating
    rated_trips = UserTrip.all.filter{ |t| (t.rating != nil) && (t.project_id == self.id) }
    rating_sum = (rated_trips.map{ |t| t.rating }).reduce(:+)
    if (rating_sum == nil || rating_sum == 0 || rated_trips.length)
      return 0
    else
      return (rating_sum / rated_trips.length)
    end
  end


end
