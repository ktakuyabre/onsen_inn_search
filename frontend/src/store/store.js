/* eslint-disable */
import Vue from 'vue';
import Vuex from 'vuex';
import createPersistedState from "vuex-persistedstate";

Vue.use(Vuex)

export const initialState = {
  token: null
}

const store = new Vuex.Store({
  state: initialState,
  getters: {
    isLoggedIn: state => {
      return state.token != null
    }
  },
  mutations: {
    SET_TOKEN (state, token) {
      state.token = token
    },
    RESET_VUEX_STATE(state) {
      Object.assign(state, JSON.parse(localStorage.getItem('initialState')));
    }
  },
  plugins: [createPersistedState()]
})

export default store;
