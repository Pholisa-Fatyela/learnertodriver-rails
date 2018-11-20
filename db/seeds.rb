include Sprig::Helpers

User.delete_all
Quiz.delete_all
Post.delete_all
Comment.delete_all
Question.delete_all

sprig [ User, Quiz, Post, Comment, Question ]
