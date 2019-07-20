import Vue from 'vue'
import Router from 'vue-router'
import OnsenHome from '@/components/OnsenHome'
import Onsen from '@/components/Onsen'
import Tinder from '@/components/Tinder'
import OnsenList from '@/components/OnsenList'
import Login from '@/components/Login'
import NotFound from '@/components/NotFound'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: OnsenHome,
    },
    {
      path: '/onsen/:id',
      name: 'Onsen',
      component: Onsen,
    },
    {
      path: '/tinder',
      component: Tinder,
    },
    {
      path: '/onsenlist',
      name: 'OnsenList',
      component: OnsenList,
    },
    {
      path: '/login',
      component: Login,
    },
    {
      path: '*',
      component: NotFound,
    },
  ],
})
