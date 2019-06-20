<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
      <div class="bg" />
    </div>
    <div>
      <style>
      .bg{
      background-image: url("https://github.com/ktakuyabre/onsen_inn_search/blob/master/frontend/static/UNADJUSTEDNONRAW_thumb_1.jpg?raw=true")
      }
      </style>
      <div class="img" />
    </div>
  </div>
</template>


<script>
export default {
  name: 'OnsenHome',
  data () {
    return {
      msg: 'Onsen Home Page',
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
