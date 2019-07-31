puts "... creating Quizzes 🔖"

quiz_list = [
                ["Heavy Motor Vehicle", "truck", "50 Question Test", "An online mock test for heavy motor vehicles." ],
                ["Light Motor Vehicle", "car", "50 Question Test", "An online mock test for light motor vehicles."],
                ["Motorcycle Test", "bike", "50 Question Test", "An online mock test for motorcycles."]
              ]

quiz_list.map do |quiz|
  Quiz.create!(
    title: quiz[0],
    kind: quiz[1],
    info: quiz[2],
    description: quiz[3]
    )
end
