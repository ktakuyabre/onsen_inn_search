<template>
  <div>
  <body background="https://www.pakutaso.com/shared/img/thumb/HOTE86_rotenburotobijyo15103631_TP_V.jpg">
  parent {
  /*親要素のwidthを100pxに*/
  width: 1000px;
  height:1000px;
}
    <br>
    <br>
    <br>
    <br>
    <br>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
      <div class="bg" />
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    
  </div>
  </body>
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
