FactoryGirl.define do
  factory :player do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    born { Faker::Date.birthday(18, 65) }
    team { Team.last}
  end
end
