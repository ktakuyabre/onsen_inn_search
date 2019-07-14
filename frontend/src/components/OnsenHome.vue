<template>
  <div class="bg" :style="{ 'background-image': 'url(' + assetsImage + ')' }">
    <h1>{{ msg }}</h1>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn large href='/#/tinder/'>Tinder</v-btn>
    </div>
  </div>
</template>

<script>
export default {
  name: 'OnsenHome',
  data () {
    return {
      msg: 'Onsender♨️',
      assetsImage: require('../assets/onei.jpg'),
    }
  },
}
</script>

<style scoped>
h1 {
  font-weight: normal;
  font-size: 64px;
}

</style>
