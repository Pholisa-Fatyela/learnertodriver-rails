puts "... creating Posts 🔖"

all_users = User.ids

300.times do
  Post.create!(
      title: Faker::TvShows::TheFreshPrinceOfBelAir.character,
      content: Faker::TvShows::TheFreshPrinceOfBelAir.quote,
      created_at: Faker::Date.backward(days: 300),
      user_id: all_users.sample
      )
end
