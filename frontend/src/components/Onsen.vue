<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/onsenlist/'>OnsenList</v-btn>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Onsen',
  data () {
    return {
      msg: 'Onsen Page',
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
