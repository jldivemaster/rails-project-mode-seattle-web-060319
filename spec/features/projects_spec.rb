require 'rails_helper'

RSpec.describe 'projects', type: :feature do
  describe 'index page' do
    before do
      @project1 = FactoryBot.create(:project)
      @project2 = FactoryBot.create(:second_project)
      visit projects_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'renders a list of projects by name' do
      expect(page).to have_content(/Project 1/, /Project 2/)
    end

    it 'has links to each project show page' do
      all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end
      expect(all_link_hrefs).to include("/projects/#{@project1.id}", "/projects/#{@project2.id}")
    end
  end

  describe 'show page' do
    before do
      @project1 = FactoryBot.create(:project)
      # @project2 = FactoryBot.create(:second_project)

      visit project_path(@project1)
      @all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'displays the name and description of the project' do
      expect(page).to have_content(/Project 1/, /Project1 desc/)
    end

    it 'has links to all associated organization' do
      expect(page).to have_content("#{@project1.organization.name}")
      expect(@all_link_hrefs).to include("/organizations/#{@project1.organization.id}")
    end

    it 'displays the associated location' do
      expect(page).to have_content("#{@project1.location.name}")
    end

    it 'displays the associated category' do
      expect(page).to have_content("#{@project1.category.name}")
    end

    it 'has a Register button that redirects if user is not signed in' do
      click_on "Register"
      expect(page).to have_content("You must be logged in to access this page.")
    end
  end

  describe 'user access' do

    before do
      @user = FactoryBot.create(:user)
      visit login_path
      fill_in "login_username", with: @user.username
      fill_in "login[password]", with: @user.password
      click_button("Log In")
      @project1 = FactoryBot.create(:project)
      @project2 = FactoryBot.create(:second_project)
      @user.projects << @project1
    end

    it 'project show page has Register button if signed in user is not registered' do
      visit project_path(@project2)
      click_on "Register"

      expect(page).to have_content("Sign Up Today!")
    end

    it 'project show page does not have Register button if signed in user is already registered' do
      visit project_path(@project1)
      expect(page).to have_content("You are currently signed up for this project!")
    end

    it 'project show page has working Register button if signed in user is not registered' do
      visit project_path(@project2)
      click_on "Register"
      click_on "Register Now!"
      expect(page).to have_content("Congratulations! You have registered for this project!")
      # byebug
      # expect(@project2.available_spots).to eq(14)
    end
  end
end
