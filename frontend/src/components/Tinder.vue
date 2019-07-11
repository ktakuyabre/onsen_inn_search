<template>
  <div>
    <h1>{{ msg }}</h1>
    <div style="position: absolute;" v-drag>
      <img :src="tests[count]"/>
    </div>
    <v-btn @click=increment color="error">Nope</v-btn>
    <v-btn @click=increment color="info">Like</v-btn>
  </div>
</template>

<script>
import drag from '@branu-jp/v-drag'

export default {
  name: 'Tinder',
  directives: {
    drag,
  },
  data () {
    return {
      msg: 'Onsender Page',
      count: 0,
      test: require('../assets/onsen_woman.png'),
      pathes: {
        p1: require('../assets/onsen_woman.png'),
        p2: require('../assets/onei.jpg'),
        p3: require('../assets/logo.png'),
      },
      tests: [
        require('../assets/onsen_woman.png'),
        require('../assets/onei.jpg'),
        require('../assets/logo.png'),
      ],
    }
  },
  methods: {
    // ボタンをクリックしたときのハンドラ
    increment: function () {
      this.count += 1 // 処理は再代入するだけでOK！
    },
  },
}

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  font-weight: normal;
}
li {
  cursor:pointer;
  padding: 10px;
  border: solid #ddd 1px;
}
</style>
