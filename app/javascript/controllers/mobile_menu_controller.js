import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "menuIcon", "closeIcon", "menu" ]

  toggle() {
    this.menuTarget.classList.toggle("hidden")
    this.menuIconTarget.classList.toggle("hidden")
    this.closeIconTarget.classList.toggle("hidden")
  }
}
