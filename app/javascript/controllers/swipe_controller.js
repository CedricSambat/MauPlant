import { Controller } from "@hotwired/stimulus"
import Swiper, { Navigation, Pagination } from 'swiper';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
// Connects to data-controller="swipe"
export default class extends Controller {
  connect() {
    console.log("Hello from our first Stimulus controller")
  }
  }

  const swiper = new Swiper('.swiper', {
    modules: [Navigation, Pagination],

  });
