import { Controller } from "stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    flatpickr(".datepicker");
  }
}
