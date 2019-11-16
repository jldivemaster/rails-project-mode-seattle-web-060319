require 'rails_helper'

describe 'Homepage' do
  before do
    visit root_path
  end

  it 'can be visited' do
    expect(page.status_code).to eq(200)
  end

  it 'has a link to all projects' do
    click_on("projects-btn")
    expect(current_path).to eq(projects_path)
  end

  it 'has a link to all locations' do
    click_on("locs-btn")
    expect(current_path).to eq(locations_path)
  end

  it 'has a link to all categories' do
    click_on("cats-btn")
    expect(current_path).to eq(categories_path)
  end

  it 'has a link to all organizations' do
    click_on("orgs-btn")
    expect(current_path).to eq(organizations_path)
  end

end
