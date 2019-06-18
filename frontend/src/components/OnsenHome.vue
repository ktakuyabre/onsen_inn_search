<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
    </div>
    styleItem = {
     'backgroundImage' : 'url(' + require("https://www.pakutaso.com/shared/img/thumb/HOTE86_rotenburotobijyo15103631_TP_V.jpg") + ')'
}
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
