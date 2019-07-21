<template>
  <div>
    <v-btn color="blue-grey lighten-1" v-if="voted" @click='voteDown'> 取消 </v-btn>
    <v-btn color="orange darken-2" v-else @click='voteUp'> 投票 </v-btn>
  </div>
</template>

<script>
/* eslint-disable */
import axios from 'axios'

export default {
  props: ['innId'],
  data: () => {
    return {
      voted: false,
      innid: this.innId
    }
  },
  mounted () {
    axios.defaults.headers.common['Authorization'] = 'Token ' + this.$store.state.token
    axios.get('http://localhost:8000/api/votes/exists/?id='+this.innId)
    .then(response => {
      console.log(response.data)
      this.voted = response.data.voted
    })
    .catch(err => {
      console.error(err)
    })
  },
  methods: {
    voteUp () {
      axios.post('http://localhost:8000/api/votes/up/?id='+ this.innId)
      .then(response => {
        console.log(response.data)
        this.voted = true
      })
      .catch(err => {
        console.error(err)
      })
    },
    voteDown () {
      axios.post('http://localhost:8000/api/votes/delete/?id='+this.innId)
      .then(response => {
        console.log(response.data)
        this.voted = false
      })
      .catch((error) => {
        console.log(error);
      })
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
