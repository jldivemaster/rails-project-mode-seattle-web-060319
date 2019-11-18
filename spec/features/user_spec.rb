require 'rails_helper'

RSpec.describe "Users", type: :feature do
  before do
    @user = FactoryBot.create(:user)
    visit login_path
    fill_in "login_username", with: @user.username
    fill_in "login[password]", with: @user.password
    click_button("Log In")
  end

  describe "show" do
    it 'can be reached successfully by the user after logging in' do
      expect(page).to have_content("Profile", @user.username)
    end

    it 'lists links to registered projects' do
      @proj1 = FactoryBot.create(:project)
      @proj2 = FactoryBot.create(:second_project)
      @user.projects << [@proj1, @proj2]
      visit user_path(@user)
      all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end

      expect(page).to have_content("#{@proj1.name}", "#{@proj2.name}")
      expect(all_link_hrefs).to include("/projects/#{@proj1.id}", "/projects/#{@proj2.id}")
    end

    it 'has a link to edit profile' do
      all_link_hrefs = page.all(:css, "a[href]").map do |element|
        element[:href]
      end
      expect(all_link_hrefs).to include("/users/#{@user.id}/edit")
    end


    # xit 'can only be reached by the same user when logged in' do
    #   # user1 = User.create(username: "testuser", name: "Test User", password: "asdf", password_confirmation: "asdf")
    #   # user2 = User.create(username: "testuser2", name: "Test User2", password: "asdf", password_confirmation: "asdf")
    #   # login_as(user2)
    #   #
    #   # visit user_path(user1)
    #   #
    #   # expect(page.status_code).to eq(200)
    # end
  end

  describe 'user edit page' do
    it 'page can be reached successfully' do
      visit edit_user_path(@user)
      expect(page.status_code).to eq(200)
    end

    it 'has a form to update user profile' do
      visit edit_user_path(@user)
      fill_in "user_age", with: 25
      fill_in "user_bio", with: "Hello"
      click_button "Edit"
      expect(page).to have_content(25, "Hello")
    end

  end
end
