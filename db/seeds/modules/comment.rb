puts "... creating Comments 🔖"

all_posts = Post.ids
all_users = User.ids

500.times do |comment|
  Comment.create!(
    body: Faker::Quote.most_interesting_man_in_the_world,
    user_id: all_users.sample,
    post_id: all_posts.sample
    )
end
