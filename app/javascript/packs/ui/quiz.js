document.addEventListener("turbolinks:load", function() {

  let quizContainer = document.getElementById("quiz");

  if (quizContainer) {
    console.log(quizContainer.firstElementChild);
    quizContainer.firstElementChild.classList.remove("hidden");

    // '(quizContainer.firstElementChild.classList.contains("hidden"))' ? remove : console.log("not found");
    let questions = document.querySelectorAll('.question-area');
    console.log( "there are " + questions.length + " questions");
  }


});
