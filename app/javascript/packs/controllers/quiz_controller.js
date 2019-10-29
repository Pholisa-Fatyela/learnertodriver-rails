import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = [ 'question', 'output' ]

  initialize() {
    this.showQuestion(0)
  }

  next() {
    this.showQuestion(this.index + 1)
    this.updateProgress()
  }

  previous() {
    this.showQuestion(this.index - 1)
  }

  sumbitQuiz(event) {
    this.endQuiz()
  }

  updateProgress(index) {
    this.outputTarget.textContent = "11"
  }

  endQuiz() {
  }

  showQuestion(index) {
    this.index = index
    this.questionTargets.forEach((el, i) => {
      el.classList.toggle('active', index == i)
    })
  }
}
