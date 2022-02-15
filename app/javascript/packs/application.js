// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"

import Vue from 'vue/dist/vue.esm';
import TurbolinksAdapter from 'vue-turbolinks';
import Vuetify from 'vuetify';
import 'vuetify/dist/vuetify.min.css';
import './components'
import axios from "axios"

Vue.use(TurbolinksAdapter);
Vue.use(Vuetify);
const vuetify = new Vuetify();

const token = document.querySelector('meta[name="csrf-token"]');
if (token) axios.defaults.headers.common['X-CSRF-Token'] = token.getAttribute('content');


document.addEventListener('turbolinks:load', () => {
  new Vue({
    el: '[data-behavior="vue"]',
    vuetify,
  });
});

Rails.start()
Turbolinks.start()
ActiveStorage.start()
