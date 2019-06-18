<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
    </div>
  </div>
</template>

<style>
  .bg{
    background-image: url("./images/image.png")
  }
</style>
<div class="bg" />

<div style="background-image: url('https://raw.githubusercontent.com/ktakuyabre/onsen_inn_search/master/frontend/static/UNADJUSTEDNONRAW_thumb_1.jpg');" />

<script>
import AssetsImage from "https://raw.githubusercontent.com/ktakuyabre/onsen_inn_search/master/frontend/static/UNADJUSTEDNONRAW_thumb_1.jpg";
export default {
  data() {
    return {
      assetsImage: AssetsImage,
      assetsImage_NG: "https://raw.githubusercontent.com/ktakuyabre/onsen_inn_search/master/frontend/static/UNADJUSTEDNONRAW_thumb_1.jpg",
      staticImage: "https://raw.githubusercontent.com/ktakuyabre/onsen_inn_search/master/frontend/static/UNADJUSTEDNONRAW_thumb_1.jpg"
    };
  }
};
</script>

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
