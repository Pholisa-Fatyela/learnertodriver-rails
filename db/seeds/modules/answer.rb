puts "... creating Answers 🔖"

all_questions = Question.ids

answer_list = [
                ["Northern Region", "bbb" ],
                ["Southern Region", "bbb" ],
                ["Eastern Region", "bbb" ],
                ["Western Region", "bbb" ] 
              ]

answer_list.map do |answer|
  Answer.create!(
    content: answer[0],
    explanation: answer[1],
    question_id: all_questions.sample
    )
end
