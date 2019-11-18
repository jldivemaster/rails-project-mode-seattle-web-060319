require 'rails_helper'

RSpec.describe 'organizations/index' do
  describe 'index page' do
    before do
    assign(:organizations, [
        Organization.create!(:name => "Org1"),
        Organization.create!(:name => "Org2")
      ])
    end

    it 'renders a list of organizations' do
      render
      expect(rendered).to match /Org1/
      expect(rendered).to match /Org2/
    end
  end
end
