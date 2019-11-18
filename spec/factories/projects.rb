FactoryBot.define do
  factory :project do
    name { "Project 1" }
    description { "Project1 desc" }
    location
    organization
    category
    available_spots { 15 }
  end

  factory :second_project, class: "Project" do
    name { "Project 2" }
    description { "Project2 desc" }
    location
    organization
    category
    available_spots { 15 }
  end
end
