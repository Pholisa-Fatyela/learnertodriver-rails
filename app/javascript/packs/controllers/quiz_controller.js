import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = [ 'question', 'output' ]

  initialize() {
    this.showCurrentQuestion();
    this.updateQuestionNumber();
  }

  next() {
    let lastItem = this.questionTargets.length - 1;
    if (this.index < lastItem ) {
      this.index++
    } else {
        console.log("end of Quiz");
   }
  }

  previous() {
    if (this.index > 0) {
      this.index--
    } else {
        console.log("start Quiz");
    }
  }

  updateQuestionNumber() {
    this.outputTargets.forEach((el, i) => {
      el.innerText = i+1
    })
  }

  showCurrentQuestion() {
    this.questionTargets.forEach((el, i) => {
      el.classList.toggle('active', this.index == i)
    })
  }

  get index() {
    return parseInt(this.data.get('index'))
  }

  set index(value) {
    this.data.set('index', value)
    this.showCurrentQuestion()
  }
}