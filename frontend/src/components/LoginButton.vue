<template>
  <div>
    <v-btn large class='primary' v-if="isLoggedIn" @click="logout"> Logout </v-btn>
    <v-btn large class='primary' v-else @click="login"> Login </v-btn>
  </div>
</template>

<script>
/* eslint-disable */
export default {
  data: () => {
    return {
      isLoggedIn: false
    }
  },
  mounted () {
    console.log(this.$store.state.token)
    if (this.$store.state.token != null) {
      console.log('You are loggedin')
      this.isLoggedIn = true
    } else {
      console.log('You are loggedout')
      this.isLoggedIn = false
    }
  },
  methods: {
    login () {
      this.$router.push({ path: "/login" })
    },
    logout () {
      this.$store.commit("SET_TOKEN", null)
      this.isLoggedIn = false
    }
  }
}
</script>

<style scoped>
  h1 {
    margin: 5px 0px;
    font-size: 20px;
  }
</style>
