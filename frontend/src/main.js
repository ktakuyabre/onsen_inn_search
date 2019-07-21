// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
/* eslint-disable */

import Vue from 'vue'
import VueRouter from 'vue-router'
import Vuetify from 'vuetify'
import App from './App'
import VeeValidate from 'vee-validate'
import router from './router'
import store from './store/store'
import 'vuetify/dist/vuetify.min.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'
import '@mdi/font/css/materialdesignicons.css'

import { initialState } from './store/store'

Vue.config.productionTip = false
Vue.use(Vuetify)
Vue.use(VueRouter)
Vue.use(VeeValidate)

new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>',
  created() {
    localStorage.setItem('initialState', JSON.stringify(initialState))
  }
})
