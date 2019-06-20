<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
      <div class="bg" />
    </div>
  </div>
  <div>
    <ul>
      <li><img src="/Users/admin/Documents/GitHub/onsen_inn_search/frontend/src/components/UNADJUSTEDNONRAW_thumb_1.jpg"/></li>
    </ul>
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
