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
            <h3 class="headline mb-3">{{ onsenname }}</h3>
            <div> {{ onsentext }} </div>
          </div>
          </v-card-title>
          <v-card-actions>
            <v-btn flat color="orange" href='/#/onsenlist/'> 温泉リストに戻る </v-btn>
          </v-card-actions>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  name: 'Onsen',
  data () {
    return {
      msg: 'Onsen Page',
      onsenname: 'ほげ温泉',
      onsentext: '肩こりによく効きます。こんにちは。ほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげほげ',
      icon: require('../assets/onsen_ashi_ganbanyoku.png'),
    }
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  font-weight: normal;
}
</style>
