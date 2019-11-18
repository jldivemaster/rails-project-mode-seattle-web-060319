require 'rails_helper'

RSpec.describe "Locations", type: :feature do
  before do
    @location = FactoryBot.create(:location)
  end

  describe 'index' do
    before do
      @asia = FactoryBot.create(:second_location)
      visit locations_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'lists all locations' do
      expect(page).to have_content(@location.name, @asia.name)
    end

    it 'has links to the location show page' do
      all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end
      expect(all_link_hrefs).to include("/locations/#{@location.id}", "/locations/#{@asia.id}")
    end
  end

  describe "show" do
    before do
      visit location_path(@location)
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'displays location name and description' do
      expect(page).to have_content(@location.name, @location.description)
    end

    it 'displays project names associated with that location as links' do
      project1 = FactoryBot.create(:project)
      project2 = FactoryBot.create(:second_project)
      @location.projects << [project1, project2]
      visit location_path(@location)
      all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end

      expect(page).to have_content(project1.name, project2.name)
      expect(all_link_hrefs).to include("/projects/#{project1.id}", "/projects/#{project2.id}")
    end
  end
end
