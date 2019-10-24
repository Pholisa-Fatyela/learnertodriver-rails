puts "... creating Specifications 🔖"

all_quizzes = Quiz.ids
all_questions = Question.all

all_quizzes.each do |quiz|
  quiz.questions = all_questions
end