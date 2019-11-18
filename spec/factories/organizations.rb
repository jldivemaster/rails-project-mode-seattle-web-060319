FactoryBot.define do
  factory :organization do
    name { "Test Org" }
    description { "Org 1 description" }
    website { "www.website1.test" }
  end

  factory :second_organization, class: "Organization" do
    name { "Test Org2" }
    description { "Org 2 description" }
    website { "www.website2.test" }
  end
end
