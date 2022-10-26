import { Controller } from "@hotwired/stimulus"
import Swiper, { Navigation, Pagination } from 'swiper';

// Connects to data-controller="swipe"
export default class extends Controller {
  connect() {
    console.log("Hello from our first Stimulus controller")
  }
  }

  const swiper = new Swiper('.swiper', {
    modules: [Navigation, Pagination],

  });
