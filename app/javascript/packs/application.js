/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import Dropdown from '../dropdown.vue'
import Rails from 'rails-ujs'

Rails.start()

Vue.use(TurbolinksAdapter)

Vue.component('dropdown', Dropdown)

document.addEventListener('DOMContentLoaded', () => {
   // Setup headers of X-CSRF-Token that it grabs from rails generated token in meta tag.
  // axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  const app = new Vue({
    el: '[data-action="vue"]',
  })
})
