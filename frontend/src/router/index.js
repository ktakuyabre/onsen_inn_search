import Vue from 'vue'
import Router from 'vue-router'
import OnsenHome from '@/components/OnsenHome'
import Onsen from '@/components/Onsen'
import Tinder from '@/components/Tinder'
import OnsenList from '@/components/OnsenList'
import NotFound from '@/components/NotFound'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      component: OnsenHome,
    },
    {
      path: '/onsen',
      component: Onsen,
    },
    {
      path: '/tinder',
      component: Tinder,
    },
    {
      path: '/onsenlist',
      component: OnsenList,
    },
    {
      path: '/*',
      component: NotFound,
    },
  ],
})
