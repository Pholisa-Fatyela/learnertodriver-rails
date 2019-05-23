include Sprig::Helpers

puts "seeds.rb"

Quiz.delete_all
QuizQuestion.delete_all
QuestionOption.delete_all
Comment.delete_all
Post.delete_all
User.delete_all

puts "cleaned data User, Quiz, Post, Comment"

sprig [ User, Quiz, Post, Comment ]

puts "new data seeded"