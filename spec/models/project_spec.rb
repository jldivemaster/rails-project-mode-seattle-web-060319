require 'rails_helper'

RSpec.describe Project, type: :model do

  before do
    @user = FactoryBot.create(:user)
    @project = FactoryBot.create(:project)
  end

  describe 'creation' do

    it 'can be created successfully' do
      expect(@project).to be_valid
    end

    it 'cannot be created without an organization' do
      @project.organization_id = nil
      expect(@project).to_not be_valid
    end

    it 'cannot be created without a location' do
      @project.location_id = nil
      expect(@project).to_not be_valid
    end

    it 'cannot be created without a category' do
      @project.category_id = nil
      expect(@project).to_not be_valid
    end
  end

    describe 'methods' do
      it 'can subtract an available spot' do
        @project.less_one_spot
        expect(@project.available_spots).to eq(14)
      end

      it 'has a valid rating' do
        trip1 = UserTrip.create(project_id: @project.id, user_id: @user.id, rating: 0)
        trip2 = UserTrip.create(project_id: @project.id, user_id: @user.id, rating: 0)
        trip1.add_rating(4)
        trip2.add_rating(5)

        expect(@project.rating).to eq(4.5)
      end
    end
end
