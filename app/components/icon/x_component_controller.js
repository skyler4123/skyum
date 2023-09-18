import { Controller } from "@hotwired/stimulus";

const xSVG = `<svg data-icon--x-component-target="x" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                  <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                </svg>`
const xNode = document.createRange().createContextualFragment(xSVG)
export default class extends Controller {
  static targets = ['x']
  static values = {
    xClass: {type: String, default: "w-3 h-3"}
  }
  connect() {
    // console.log("Hello, Stimulus!", this.element);
  }
  initialize() {
    this.element.appendChild(xNode.cloneNode(true))
    this.xTarget.classList = this.xClassValue
  }
}
