<template>
  <v-container grid-list-md text-xs-center>
    <v-layout row wrap>
      <v-flex xs6>
        <img :src="icon"/>
      </v-flex>
      <v-flex xs6>
        <v-card>
          <v-card-title primary-title>
          <div>
            <h3 class="headline mb-3">{{ innname }}</h3>
            <div> {{ inn }} </div>
          </div>
          </v-card-title>
          <v-card-actions>
            <v-btn flat color="orange" href='/#/onsenlist/'> 温泉リストに戻る </v-btn>
            <VoteButton v-bind:innId="this.$route.params.id"></VoteButton>
          </v-card-actions>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
/* eslint-disable */
import axios from 'axios'
import VoteButton from './VoteButton.vue'

export default {
  name: 'Onsen',
  components: {
    VoteButton
  },
  data () {
    return {
      msg: 'Onsen Page',
      inn: null,
      innname: '',
      icon: require('../assets/onsen_ashi_ganbanyoku.png'),
    }
  },
  created () {
    axios.get('http://localhost:8000/api/onsen_inns/', {
      params: {
        id: this.$route.params.id,
      },
    })
      .then(response => {
        console.log(response.data)
        this.inn = response.data.results[0]
        this.innname = response.data.results[0].inn_name
      })
      .catch(err => {
        console.error(err)
      })
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  font-weight: normal;
}
</style>
