models =  %w( answer question quiz comment post user)

<<<<<<< HEAD
puts "... deleting all existing data 🗑"

models.each { |m|
  m.camelize.constantize.delete_all
}

# seed_modules

puts "... seeding new data 💾"
models.reverse.each do |data|
  require File.expand_path(File.dirname(__FILE__))+"/seeds/modules/#{ data }.rb"
end
=======
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
