puts "... creating Questions 🔖"

all_quizzes = Quiz.ids

question_list = [
                  ["The distance it takes a driver of a motor vehicle to stop is …", "the best way to look at this question is", 1],
                  ["You may cross or enter a public road …", "the best way to look at this question is", 1],
                  ["The fastest speed at which you may tow a vehicle with a rope is … km/h.", "the best way to look at this question is", 1],
                  ["You may pass another vehicle on it’s left hand side if it …", "the best way to look at this question is", 1],
                  ["The furthest that your vehicle’s dim lights may shine in front of you is …. m.", "the best way to look at this question is", 1],
                  ["The last action you must take before moving to another lane is to …", "the best way to look at this question is", 1],
                  ["You may NOT drive into an intersection when ..", "the best way to look at this question is", 1],
                  ["At and intersection …", "the best way to look at this question is", 1],
                  ["If you come to a robot and the red light flashes, you must …", "the best way to look at this question is", 1],
                  ["Unless otherwise shown by a sign, the general speed limit in a town or city is … km/h.", "the best way to look at this question is", 1],
                  ["Your vehicles headlights must be switched on …", "the best way to look at this question is", 1],
                  ["You may on a public road ... ", "the best way to look at this question is", 1],
                  ["A safe following distance is, when the vehicle in front of you suddenly stops, you could ...", "the best way to look at this question is", 2],
                  ["If you only have a learner’s licence for a light motor vehicle…", "the best way to look at this question is", 2],
                  ["Under which circumstances, if any are you allowed to drive your motor vehicle on the right hand side of a public road with traffic moving in both directions ?", "the best way to look at this question is", 2],
                  ["What is true with regards to seat belts?", "the best way to look at this question is", 2],
                  ["You may not obtain a leaner’s licence if ...", "the best way to look at this question is", 2],
                  ["You are not allowed to stop …", "the best way to look at this question is", 3],
                  ["A vehicle of which the brakes are not good, must be towed ", "the best way to look at this question is", 3],
                  ["The thread pattern on your tires may not be less than ... mm. ", "the best way to look at this question is", 3],
                  ["When do you have right of way?", "the best way to look at this question is", 3],
                  ["When may you NOT pass another vehicle ? When you ...", "the best way to look at this question is", 3],
                  ["A vehicle of which the brakes are not good, must be towed ", "the best way to look at this question is", 3],
                  ["Which is ALLOWED when towing another vehicle?", "the best way to look at this question is", 3],
                  ["Which is considered the most important RULE OF THE ROAD in South Africa ?", "the best way to look at this question is", 3],
                  ["The legal speed which you may drive ...", "the best way to look at this question is", 3],
                  ["If you want to turn left with your vehicle, you must", "the best way to look at this question is", 3],
                  ["When you were involved in an accident you", "the best way to look at this question is", 3],
                  ["If you change lanes, you must …", "the best way to look at this question is", 3]
                ]

question_list.map do |question|
  Question.create!(
      content: question[0],
      explanation: question[1],
      quiz_id: all_quizzes.sample
      )
end
