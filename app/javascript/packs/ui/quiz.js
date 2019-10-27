document.addEventListener("turbolinks:load", function() {

  let quizContainer = document.getElementById("quiz");

  if (quizContainer) {
    quizContainer.firstElementChild.classList.remove("hidden");

    let questions = document.querySelectorAll('.question-area');

    for ( question in questions) {
      console.log(Array.from(question));
    }

  }
});
