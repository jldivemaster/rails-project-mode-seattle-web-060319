require 'rails_helper'

RSpec.describe "User Trip", type: :model do
  before do
    @user = FactoryBot.create(:user)
    @project = FactoryBot.create(:project)
    @trip = UserTrip.create(user_id: @user.id, project_id: @project.id)
  end

  describe 'creation' do
    it 'can be created successfully' do
      expect(@trip).to be_valid
    end

    it 'cannot be created without an associated user' do
      @trip.user_id = nil
      expect(@trip).to_not be_valid
    end

    it 'cannot be created without an associated project' do
      @trip.project_id = nil
      expect(@trip).to_not be_valid
    end
  end
end
