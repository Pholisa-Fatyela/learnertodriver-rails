puts "... creating Responses 🔖"

all_questions = Question.ids
all_answers = Answer.ids

300.times do
  Response.create!(
      question_id: all_questions.sample,
      answer_id: all_answers.sample
      )
end
