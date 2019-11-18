FactoryBot.define do
  factory :user do
    username { "testuser" }
    password { "asdf" }
    password_confirmation { "asdf" }
    name { "Test User" }
    age { 25 }
    bio { "Bio String" }
    skills { "Skillset" }
    avatar { Faker::Avatar.image }
  end

  factory :duplicate_user, class: "User" do
    username { "testuser" }
    password { "asdf" }
    password_confirmation { "asdf" }
    name { "Test User" }
    age { 25 }
    bio { "Bio String" }
    skills { "Skillset" }
    avatar { Faker::Avatar.image }
  end
end
