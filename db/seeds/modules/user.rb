puts "... creating Users 🔖"

User.create!(
    name: "Siyanda Maphumulo",
    first_name: "Siyanda",
    last_name: "Maphumulo",
    username: "maphumulops",
    email: "demo@demo.com",
    password: "admin1234",
    confirmed_at: Faker::Date.backward(14),
    bio: "Rails Dev,admin user",
    slug: "maphumulops",
    admin: true
    )

puts "#{ User.count } admin user created"

50.times do |u|
    User.create!(
    name: "",
    first_name: Faker::Name.female_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: "admin1234",
    confirmed_at: Faker::Date.backward(14),
    birthday: Faker::Date.birthday(18,65),
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
    confirmed_at: Faker::Date.backward(14),
    birthday: Faker::Date.birthday(18,65),
    username: "",
    bio: Faker::TvShows::MichaelScott.quote,
    slug: nil,
    admin: false
    )
end
