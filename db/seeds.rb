models =  %w( answer question quiz comment post user)

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
>>>>>>> master

models.each { |m|
  puts "#{ m.camelize.constantize.count } #{ m.pluralize } created"
}
