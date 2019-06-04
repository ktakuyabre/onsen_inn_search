<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small>Tinder</v-btn>
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
