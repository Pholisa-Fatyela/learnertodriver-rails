import { Controller } from 'stimulus'

export default class extends Controller {

  static targets = ['date'];

  toggle(event) {
      this.menuTarget.classList.toggle('active');
  }
}
