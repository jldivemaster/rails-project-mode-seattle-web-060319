FactoryBot.define do
  factory :location do
    name { "Africa" }
    description { "Africa description" }
  end

  factory :second_location, class: "Location" do
    name { "Asia" }
    description { "Asia description" }
  end
end
