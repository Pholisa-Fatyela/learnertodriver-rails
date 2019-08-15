puts "... creating Quizzes 🔖"

quiz_list = [
              ["Heavy Motor Vehicle", "truck","50 Question Test", "This is a test for those writing the code B test, previously know as code 08. You will have 60 minutes to complete the test consisting on three sections Rules, Signs and Controls, you will need a percentage of to pass." ],
              ["Light Motor Vehicle", "car", "50 Question Test", "This is a test for those writing the code B test, previously know as code 08. You will have 60 minutes to complete the test consisting on three sections Rules, Signs and Controls, you will need a percentage of to pass."],
              ["Motorcycle Test", "bike", "50 Question Test", "This is a test for those writing the code B test, previously know as code 08. You will have 60 minutes to complete the test consisting on three sections Rules, Signs and Controls, you will need a percentage of to pass."]
            ]

quiz_list.map do |quiz|
  Quiz.create!(
    title: quiz[0],
    kind: quiz[1],
    info: quiz[2],
    description: quiz[3]
    )
end
