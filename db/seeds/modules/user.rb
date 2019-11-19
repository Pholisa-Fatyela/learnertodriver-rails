puts "... creating Users 🔖"

50.times do |u|
    User.create!(
    name: "",
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: "admin1234",
    confirmed_at: Faker::Date.backward(days: 14),
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
    username: "",
    bio: Faker::TvShows::NewGirl.quote,
    slug: nil,
    admin: false
    )
end

50.times do |u|
    User.create!(
    name: "",
    first_name: Faker::Name.male_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: "admin1234",
    confirmed_at: Faker::Date.backward(days: 14),
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
    username: "",
    bio: Faker::TvShows::MichaelScott.quote,
    slug: nil,
    admin: false
    )
end
