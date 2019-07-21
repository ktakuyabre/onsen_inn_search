<template>
  <div>
    <div>
      <br>
      <h1>あなたが選んだのはチーム{{category}}</h1>
      <br>

      <div>
        <h2>{{ texts[category] }}</h2>
      </div>
    </div>

    <img v-for="path in imgpath[category]" class="box" :src="path" :key="path"/>
    <br>
    <v-btn large href='/#/onsenlist/'>推しを探す</v-btn>
  </div>
</template>

<script>
export default {
  name: 'Category',
  data () {
    return {
      msg: 'Category Page',
      category: this.$route.query.num,
      imgpath: [
        [],
        [],
        [
          require('../assets/images_cate2/download20190702190822.png'),
          require('../assets/images_cate2/download20190702191000.png'),
          require('../assets/images_cate2/download20190702191232.png'),
          require('../assets/images_cate2/download20190702191337.png'),
          require('../assets/images_cate2/download20190702191438.png'),
          require('../assets/images_cate2/download20190702191650.png'),
          require('../assets/images_cate2/download20190702192917.png'),
          require('../assets/images_cate2/download20190702193117.png'),
        ],
        [],
        [],
        [],
        [],
        [],
        [],
        [],
        [],
      ],
      texts: [
        '',
        '',
        [
          '誰だ、止まれ!!',
          'なにぃ、ここに辿り着いただと!?',
          '驚いた……ここにはもうしばらく新規ファンが来ていなかったのだが……',
          'すまないがここのアイドルはどの子も未知数，売りを未だに模索しているんだ……',
          'もしよかったら君がこのアイドルたちの魅力を見つけ出してくれないか!?',
        ],
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
    }
  },

  methods: {
  },

}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
li {
  cursor:pointer;
  padding: 10px;
  border: solid #ddd 1px;
}
img.box{
  zoom: 1.5;
  display: inline-block;
  width: 200px;
}
div.leader {
  display: inline-block;
  width: 200px;
}
</style>
