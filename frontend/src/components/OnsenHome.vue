<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
    </div>
    <template>
  <v-container fluid>
    <v-layout justify-space-around>
      <v-flex xs5>
        <div class="title mb-1">Default (cover)</div>
        <v-layout column>
          <div class="subheading">Matching</div>
          <v-img src="https://picsum.photos/510/300?random" aspect-ratio="1.7"></v-img>
          <div class="subheading pt-3">Too high</div>
          <v-img src="https://picsum.photos/510/300?random" aspect-ratio="2"></v-img>
          <div class="subheading pt-3">Too low</div>
          <v-img src="https://picsum.photos/510/300?random" aspect-ratio="1.4"></v-img>
        </v-layout>
      </v-flex>

      <v-flex xs5>
        <div class="title mb-1">Contain</div>
        <v-layout column>
          <div class="subheading">Matching</div>
          <v-img src="https://picsum.photos/510/300?random" aspect-ratio="1.7" contain></v-img>
          <div class="subheading pt-3">Too high</div>
          <v-img src="https://picsum.photos/510/300?random" aspect-ratio="2" contain></v-img>
          <div class="subheading pt-3">Too low</div>
          <v-img src="https://picsum.photos/510/300?random" aspect-ratio="1.4" contain></v-img>
        </v-layout>
      </v-flex>
    </v-layout>
  </v-container>
</template>
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
