<template>
  <div>
    <v-app>
      <v-container fluid grid-list-md text-xs-center>
        <v-layout column wrap>
          <v-flex xs12>
            <h1 class=display-1> 残り {{ 20 - count }} </h1>
          </v-flex>

          <v-flex xs12>
              <h1 class=display-2>{{items[count]['inn_name']}}</h1>
              <img class="onei" :src="idles[items[count]['category']][0]"/>
              <v-card>
                <v-card-text class=display-2>{{makeText(items[count])}}</v-card-text>
              </v-card>
            <v-layout row wrap>
              <v-flex xs4>
                <img class="onsenPhoto" :src="items[count]['inn_photo']"/>
              </v-flex>
              <v-flex xs4>
                <img class="onsenPhoto2" :src="items[count]['inn_photo_2']"/>
              </v-flex>
              <v-flex xs4>
                <img class="onsenPhoto2" :src="items[count]['inn_photo_3']"/>
              </v-flex>
            </v-layout>
          </v-flex>

          <v-flex xs12>
            <v-layout row wrap>
              <v-btn block large @click="increment('nope')" color="error">Nope</v-btn>
              <v-btn block large @click="increment('like')" color="info">Like</v-btn>
            </v-layout>
          </v-flex>
        </v-layout>
      </v-container>
    </v-app>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Tinder',
  data () {
    return {
      msg: 'Onsender Page',
      count: 0,
      idles: [
        [
          require('../assets/images/0/download20190702162626.png'),
          require('../assets/images/0/download20190702162720.png'),
        ],
        [
          require('../assets/images/1/download20190702160655.png'),
          require('../assets/images/1/download20190702160926.png'),
        ],
        [
          require('../assets/images/2/download20190702190822.png'),
          require('../assets/images/2/download20190702191000.png'),
        ],
        [
          require('../assets/images/3/download20190702154224.png'),
          require('../assets/images/3/download20190702154710.png'),
        ],
        [
          require('../assets/images/4/download20190702155543.png'),
          require('../assets/images/4/download20190702155955.png'),
        ],
        [
          require('../assets/images/5/download20190702182749.png'),
          require('../assets/images/5/download20190702182924.png'),
        ],
        [
          require('../assets/images/6/41329_8OvJrEIM.png'),
          require('../assets/images/6/41329_Fyd07c2N.png'),
        ],
        [
          require('../assets/images/7/6883_7zvmG9y9.png'),
          require('../assets/images/7/6883_I2K9RxM6.png'),
        ],
        [
          require('../assets/images/8/11906_34klo33w.png'),
          require('../assets/images/8/11906_6nHLpFMo.png'),
        ],
        [
          require('../assets/images/9/46940_AlgnJrJp.png'),
          require('../assets/images/9/46940_DzOQsSnl.png'),
        ],
        [
          require('../assets/images/3/download20190702154224.png'),
          require('../assets/images/3/download20190702154710.png'),
        ],
      ],
      items: [],
      likes: {},
      nopes: {},
    }
  },

  created () {
    this.getTwenty()
  },

  methods: {
    getRandomInt: function (max) {
      return Math.floor(Math.random() * Math.floor(max))
    },

    getMost: function (hash) {
      var tmp = 0
      var maxKey = 0
      for (var key in hash) {
        if (tmp < hash[key]) {
          tmp = hash[key]
          maxKey = key
        }
      }
      return maxKey
    },

    increment: function (st) {
      if (this.count < 21) {
        var categoryNum = this.items[this.count]['category']
        if (st === 'nope') {
          this.nopes[categoryNum] = (this.nopes[categoryNum] || 0) + 1
        } else if (st === 'like') {
          this.likes[categoryNum] = (this.likes[categoryNum] || 0) + 1
        }
        this.count += 1
        if (this.count === 20) {
          var mode = this.getMost(this.likes)
          location.href = '/#/category?' + 'num=' + mode
        }
      }
    },

    getTwenty: function () {
      for (var i = 0; i < 10; i++) {
        for (var j = 0; j < 2; j++) {
          if (i === 3) {
            axios.get('http://localhost:8000/api/onsen_inns/', {
              params: {
                category: i + ',10',
                ordering: '?',
              },
            })
              .then(response => {
                var res = response.data.results
                var len = res.length
                var randId = this.getRandomInt(len)
                this.items.push(res[randId])
              })
              .catch(err => {
                console.error(err)
              })
          } else {
            axios.get('http://localhost:8000/api/onsen_inns/', {
              params: {
                category: i,
                ordering: '?',
              },
            })
              .then(response => {
                var res = response.data.results
                var len = res.length
                var randId = this.getRandomInt(len)
                this.items.push(res[randId])
              })
              .catch(err => {
                console.error(err)
              })
          }
        }
      }
    },

    makeText: function (oneItem) {
      var price = oneItem['inn_min_price']
      var capacity = oneItem['rooms_total']
      var bathes = oneItem['baths_total']
      var convenience = oneItem['convenience_store']
      var leisure = oneItem['service_leisure'].length
      var category = oneItem['category']
      var rate = oneItem['review_room'] + oneItem['review_bath'] + oneItem['review_breakfast'] + oneItem['review_dinner'] + oneItem['review_service'] + oneItem['review_cleaness']
      var text = ''

      if (category === 0 || category === 3 || category === 5 || category === 7 || category === 9 || category === 10) {
        text = text + 'エヘヘ, じゃあ自己紹介させてもらいますね! 私達'
      } else if (category === 1 || category === 2) {
        text = text + 'ウェッ!? 自己紹介ですか…? 参ったなぁ, うちら'
      } else if (category === 4 || category === 6 || category === 8) {
        text = text + 'ウィース, じゃ自己紹介な! ウチんとこ'
      }

      text = text + 'の所の入場料は'

      if (price >= 10000) {
        text = text + '結構高い!'
      } else if (price >= 8000) {
        text = text + '高い!'
      } else if (price >= 7000) {
        text = text + '普通!'
      } else if (price >= 6000) {
        text = text + ' 安い!'
      } else {
        text = text + ' 結構安い!'
      }

      text = text + ' 動員数は毎回'

      if (capacity >= 100) {
        text = text + ' 結構多く'
      } else if (capacity < 100 && capacity >= 70) {
        text = text + ' 多く'
      } else if (capacity < 70 && capacity >= 50) {
        text = text + ' 多くも少なくもなく'
      } else {
        text = text + ' 少なく'
      }

      text = text + 'て, ファンのみんなに楽しんでもらえる温泉は'

      if (bathes >= 100) {
        text = text + ' 種類豊富'
      } else {
        text = text + ' 少数精鋭'
      }

      if (category === 0 || category === 3 || category === 5 || category === 7 || category === 9 || category === 10) {
        text = text + 'なんです'
      } else if (category === 1 || category === 2) {
        text = text + 'んだけど平気かな？'
      } else if (category === 4 || category === 6 || category === 8) {
        text = text + 'って感じだわ'
      } else {
        text = text + 'いがい'
      }

      text = text + '周りにコンビニは'

      if (convenience) {
        text = text + 'ある'
      } else {
        text = text + 'ない'
      }

      if (category === 0 || category === 3 || category === 5 || category === 7 || category === 9 || category === 10) {
        text = text + 'んです!'
      } else if (category === 1 || category === 2) {
        text = text + 'かな、確か'
      } else if (category === 4 || category === 6 || category === 8) {
        text = text + 'って感じか!'
      }

      text = text + 'レジャー施設は'

      if (leisure >= 5) {
        text = text + '充実'
      } else if (leisure < 5 && leisure >= 1) {
        text = text + '多少は充実'
      } else {
        text = text + '無いけどファンも満足'
      }

      if (category === 0 || category === 3 || category === 5 || category === 7 || category === 9 || category === 10) {
        text = text + 'して頂いているんで楽しんでくださいね!'
      } else if (category === 1 || category === 2) {
        text = text + 'してるから安心してほしい…'
      } else if (category === 4 || category === 6 || category === 8) {
        text = text + 'してんだから楽しめよ!'
      }

      text = text + 'ファンの評判は'

      if (rate >= 25) {
        text = text + '上々'
      } else if (rate < 25 && rate >= 20) {
        text = text + 'ぼちぼち'
      } else {
        text = text + 'あんまり良くないけど気にしない'
      }

      if (category === 0 || category === 3 || category === 5 || category === 7 || category === 9 || category === 10) {
        text = text + 'って感じです! ふぅ……これで１通り終わりましたかね? 是非私達に会いに来て下さいね!'
      } else if (category === 1 || category === 2) {
        text = text + 'って感じなのでよろしく… こ,こんな感じでどうかな? もし興味持ったら来てほしい…'
      } else if (category === 4 || category === 6 || category === 8) {
        text = text + 'って感じだからな! どうだ，絶対興味出たろ?　ウチらんとこ絶対来いよ!'
      }

      return text
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
img.onsenPhoto {
  zoom: 3.0
}
img.onsenPhoto2 {
  zoom: 3.0
}
img.onei {
  zoom: 1.0
}
</style>
