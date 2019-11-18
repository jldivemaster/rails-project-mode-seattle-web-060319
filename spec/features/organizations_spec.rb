require 'rails_helper'

RSpec.describe 'organizations', type: :feature do
  describe 'index page' do
    before do
      @org1 = FactoryBot.create(:organization)
      @org2 = FactoryBot.create(:second_organization)
      visit organizations_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'renders a list of orgs by name' do
      expect(page).to have_content(/Test Org/, /Test Org2/)
    end

    it 'has links to each org show page' do
      all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end
      expect(all_link_hrefs).to include("/organizations/#{@org1.id}", "/organizations/#{@org2.id}")
    end
  end

  describe 'show page' do
    before do
      @org1 = FactoryBot.create(:organization)
      @project1 = FactoryBot.create(:project)
      @project2 = FactoryBot.create(:second_project)
      @org1.projects << [@project1, @project2]

      visit organization_path(@org1)
      @all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'displays the name and description of the org' do
      expect(page).to have_content(/Test Org/, /Org 1 description/)
    end

    it 'has links to all associated projects' do
      expect(page).to have_content("#{@project1.name}", "#{@project2.name}")
      expect(@all_link_hrefs).to include("/projects/#{@project1.id}", "/projects/#{@project2.id}")
    end

    it 'has links to all associated locations' do
      expect(page).to have_content("#{@project1.location.name}", "#{@project2.location.name}")
      expect(@all_link_hrefs).to include("/locations/#{@project1.location.id}", "/locations/#{@project2.location.id}")
    end

    it 'has links to all associated categories' do
      expect(page).to have_content("#{@project1.category.name}", "#{@project2.category.name}")
      expect(@all_link_hrefs).to include("/categories/#{@project1.category.id}", "/categories/#{@project2.category.id}")
    end
  end
end
