import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reminder"
export default class extends Controller {
  static targets =["date"]
  connect() {
    console.log("hello");
    //
    // if the reminder is near indicates "you have to water the plants"
    // if reminder is past due date . reminder underline red "water you plant as soon as possible"
    //

  }
}
