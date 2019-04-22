include Sprig::Helpers

puts "seeds.rb"

Quiz.delete_all
Question.delete_all
Comment.delete_all
Post.delete_all
User.delete_all

puts "cleaned data User, Quiz, Post, Comment, Question"

sprig [ User, Quiz, Post, Comment, Question ]

puts "new data seeded"