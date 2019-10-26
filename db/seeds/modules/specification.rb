puts "... creating Specifications 🔖"

all_quizzes = Quiz.ids
all_questions = Question.all

Quiz.all.each do |quiz|
  quiz.questions = all_questions
  quiz.save!
end