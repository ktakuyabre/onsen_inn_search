<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
      <div class="bg" />
    </div>
  </div>
  <div>
    <img src="UNADJUSTEDNONRAW_thumb_1.jpg" alt="ホーム写真" title="温泉">
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
