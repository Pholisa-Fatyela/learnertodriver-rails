puts "... creating Questions 🔖"

all_quizzes = Quiz.ids

question_list = [
                  ["Heavy Motor Vehicle", "truck", "50 Question Test", "An online mock test for heavy motor vehicles." ],
                  ["Light Motor Vehicle", "car", "50 Question Test", "An online mock test for light motor vehicles."],
                  ["Motorcycle Test", "bike", "50 Question Test", "An online mock test for motorcycles."]
                ]

300.times do
  Question.create!(
      content: Faker::Construction.subcontract_category,
      explanation: Faker::Construction.subcontract_category,
      quiz_id: all_quizzes.sample
      )
end
