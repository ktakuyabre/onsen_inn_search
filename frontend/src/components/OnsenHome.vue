<template>
  <div id='home'>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <h1>{{ msg }}</h1>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div>
      <v-btn large href='/#/tinder/'>Tinder</v-btn>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>
</template>

<script>
export default {
  name: 'OnsenHome',
  data () {
    return {
      msg: 'Onsender♨️',
    }
  },
}
</script>

<style scoped>
h1 {
  font-weight: normal;
  font-size: 64px;
}

#home {
  background-image: url('./assets/onei.jpg');
}
</style>
