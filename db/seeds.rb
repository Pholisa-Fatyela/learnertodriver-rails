include Sprig::Helpers

puts "... seeds.rb"

Comment.delete_all
Post.delete_all
User.delete_all
Response.delete_all
Answer.delete_all
Question.delete_all
Quiz.delete_all

puts "... cleaned data User, Quiz, Post, Comment"

sprig [ User, Post, Comment, Quiz, Question, Answer, Response ]

puts "new data seeded"