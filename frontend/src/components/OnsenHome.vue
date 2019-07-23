<template>
  <div >
    <v-app class="bg" :style="{ 'background-image': 'url(' + assetsImage + ')' }">
      <v-container fluid grid-list-md text-xs-center>
        <v-layout align-between justify-center column fill-height>
          <v-flex xs12>
          </v-flex>
          <v-flex xs12>
            <h1>{{ msg }}</h1>
          </v-flex>
          <v-flex xs12>
            <v-btn large href='/#/tinder/'>Tinder</v-btn>
            <LoginButton></LoginButton>
          </v-flex>
        </v-layout>
      </v-container>
    </v-app>
  </div>
</template>

<script>
/* eslint-disable */
import LoginButton from './LoginButton.vue'

export default {
  name: 'OnsenHome',
  components: {
    LoginButton
  },
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
