<template>
  <div>
    <h1>{{ msg }}</h1>
    <div style="position: absolute;" v-drag>
      <img :src="items[count]"/>
    </div>
    <v-btn @click=increment color="error">Nope</v-btn>
    <v-btn @click=increment color="info">Like</v-btn>
  </div>
</template>

<script>
import drag from '@branu-jp/v-drag'
import axios from 'axios'

export default {
  name: 'Tinder',
  directives: {
    drag,
  },
  data () {
    return {
      msg: 'Onsender Page',
      count: 0,
      tests: [
        require('../assets/onsen_woman.png'),
        require('../assets/onei.jpg'),
        require('../assets/logo.png'),
      ],
      items: [],
    }
  },
  created () {
    this.getTwenty()
  },
  methods: {
    // ボタンをクリックしたときのハンドラ
    increment: function () {
      this.count += 1
      var x = event.screenX
      var y = event.screenY
      console.log(x)
      console.log(y)
    },

    getRandomInt: function (max) {
      return Math.floor(Math.random() * Math.floor(max))
    },

    getTwenty () {
      for (var i = 0; i < 20; i++) {
        var randId = this.getRandomInt(10)
        console.log(randId)
        axios.get('http://localhost:8000/api/onsen_inns/', {
          params: {
            id: randId,
          },
        })
          .then(response => {
            console.log(response.data)
            this.items = response.data.results
          })
          .catch(err => {
            console.error(err)
          })
      }
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
