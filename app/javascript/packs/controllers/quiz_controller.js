import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = [ 'question', 'questionNumber' ]

  initialize() {
    this.showQuestion(0)
  }

  next() {
    this.showQuestion(this.index + 1)
  }

  previous() {
    this.showQuestion(this.index - 1)
  }

  sumbitQuiz(event) {
    endQuiz();
  }

  showQuestion(index) {
    this.index = index
    this.questionTargets.forEach((el, i) => {
      el.classList.toggle(".active", index == i)
    })
  }
}