import Vue from 'vue'
import Router from 'vue-router'
import OnsenHome from '@/components/OnsenHome'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'OnsenHome',
      component: OnsenHome
    }
  ]
})
