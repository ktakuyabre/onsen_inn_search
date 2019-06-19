<template>
  <div>
    <h1>{{ msg }}</h1>
    <div>
      <v-btn small href='/#/tinder/'>Tinder</v-btn>
    </div>
    <img>
      background-image : url("https://github.com/ktakuyabre/onsen_inn_search/blob/master/frontend/static/UNADJUSTEDNONRAW_thumb_1.jpg?raw=true")
    </img>
  </div>

  <div class="hello">
    <h3>background sample</h3>
    <p class="desc">
      assetsについては、そのままパス入れるパターンと、<br />
      importして使用するパターンを入れてみました
    </p>
    <div class="samples">
      <div class="assets-samples">
        <h4>assets-1-1</h4>
        <p>imgタグ</p>
        <img class="img" src="../assets/img-assets.png" width="100" />
        <h4>assets-1-2</h4>
        <p>
          imgタグ。 変数で指定(importしたassetsImageをdataに突っ込んでv-vind)
        </p>
        <img class="img" :src="assetsImage" width="100" />
        <img class="img" :src="assetsImage_NG" width="100" />
        <h4>assets-2</h4>
        <p>classでstyleタグからbg指定 assetsにimg。 まあ表示されない。</p>
        <div class="bg bg-assets"></div>
        <h4>assets-3-1</h4>
        <p>
          inlineStyleでbg指定 assetsにimg。<br />
          一応考えられるパスを全て入れるが、まあ出ない...
        </p>
        <p>・url(./assets/img-assets.png)</p>
        <div
          class="bg"
          style="{ 'background-image': 'url(./assets/img-assets.png)' }"
        />
        <p>・url(/assets/img-assets.png)</p>
        <div
          class="bg"
          style="{ 'background-image': 'url(/assets/img-assets.png)' }"
        />
        <p>・url(../assets/img-assets.png)</p>
        <div
          class="bg"
          style="{ 'background-image': 'url(../assets/img-assets.png)' }"
        />
        <p>・url(../../assets/img-assets.png)</p>
        <div
          class="bg"
          style="{ 'background-image': 'url(../../assets/img-assets.png)' }"
        />
        <p>・url(./logo.png)</p>
        <div class="bg" :style="{ 'background-image': 'url(./logo.png)' }" />
        <p>・url(~assets/img-assets.png)</p>
        <div
          class="bg"
          style="{ 'background-image': 'url(~assets/img-assets.png)' }"
        />

        <h4>assets-3-2</h4>
        <p>inlineでstyle指定 assetsにimg 。変数で指定</p>
        <div
          class="bg"
          :style="{ 'background-image': 'url(' + assetsImage + ')' }"
        />
        <div
          class="bg"
          :style="{ 'background-image': 'url(' + assetsImage_NG + ')' }"
        />
      </div>

      <div class="static-samples">
        <h4>static-1-1</h4>
        <p>imgタグ</p>
        <img class="img" src="/img-static.png" width="100" />
        <h4>static-1-2</h4>
        <p>imgタグ。変数使用</p>
        <img class="img" :src="staticImage" width="100" />
        <h4>static-2</h4>
        <p>classでstyleタグからbg指定</p>
        <div class="bg bg-static"></div>
        <h4>static-3-1</h4>
        <p>inlineStyleでbg指定。</p>
        <div
          class="bg"
          :style="{ 'background-image': 'url(/img-static.png)' }"
        />
        <h4>static-3-2</h4>
        <p>inlineStyleでbg指定。 変数使用</p>
        <div
          class="bg"
          :style="{ 'background-image': 'url(' + staticImage + ')' }"
        />
        <h2>staticなら全部でる！</h2>
      </div>
    </div>
  </div>
</template>

<script>
import AssetsImage from "@/assets/img-assets.png";
// ↓ こっち記述でも良い
// import AssetsImage from "../assets/img-assets.png";

export default {
  name: "HelloWorld",
  data() {
    return {
      assetsImage: AssetsImage,
      assetsImage_NG: "../assets/img-assets.png",
      staticImage: "/img-static.png"
    };
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1,
h2 {
  font-weight: normal;
}
.desc {
  font-size: 14px;
  line-height: 1.3;
  max-width: 500px;
  width: 100%;
  text-align: left;
  margin: 0 auto;
}
.samples {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
  max-width: 620px;
  margin: 0 auto;
}
.assets-samples,
.static-samples {
  margin-top: 10px;
  background: #eee;
  min-width: 150px;
  max-width: 300px;
  width: 48%;
  box-sizing: border-box;
  padding: 10px;
}
.samples h4 {
  text-align: left;
  line-height: 1.2;
  margin-bottom: 4px;
}
.samples p {
  text-align: left;
  line-height: 1;
  font-size: 12px;
  margin: 4px 0;
}
.img {
  display: block;
  width: 100px;
  // margin: 0 auto;
}
.bg {
  width: 100px;
  height: 100px;
  display: block;
  background-color: #ccc;
  background-size: cover;
  background-position: center;
  // margin: 0 auto;
}
.bg-assets {
  background-image: url("../assets/img-assets.png");
}
.bg-static {
  background-image: url("/img-static.png");
}
</style>


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
