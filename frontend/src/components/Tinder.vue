<template>
  <div>
    <v-app>
      <v-container fluid grid-list-md text-xs-center>
        <v-layout row wrap>
          <v-flex xs12>
            <h1> 残り {{ 20 - count }} </h1>
            {{items[count]['category']}}
          </v-flex>

          <v-flex xs6>
            <img class="onsenPhoto" :src="items[count]['inn_photo']"/>
            <v-layout column wrap>
              <v-flex xs3>
                <img class="onsenPhoto2" :src="items[count]['inn_photo_2']"/>
                <img class="onsenPhoto2" :src="items[count]['inn_photo_3']"/>
              </v-flex>
            </v-layout>
          </v-flex>

          <v-flex xs6>
            <v-layout column wrap>
              <v-flex xs6>
                <img class="onei" :src="idles[items[count]['category']][0]"/>
              </v-flex>
              <v-flex xs6>
                <v-card dark color="success">
                  <v-card-text v-for="text in makeText(items[count])" :key="text">{{text}}</v-card-text>
                </v-card>
              </v-flex>
            </v-layout>
          </v-flex>

          <v-flex xs12>
            <v-btn large @click="increment('like')" color="info">Like</v-btn>
            <v-btn large @click="increment('nope')" color="error">Nope</v-btn>
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
      ],
      items: [],
      likes: {},
      nopes: {},
      check: {},
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

    getTwenty () {
      for (var i = 0; i < 20; i++) {
        var randId = this.getRandomInt(1000)
        axios.get('http://localhost:8000/api/onsen_inns/', {
          params: {
            id: randId,
          },
        })
          .then(response => {
            console.log(response.data)
            this.items.push(response.data.results[0])
          })
          .catch(err => {
            console.error(err)
          })
      }
      /* var point = true
      while (point) {
        var randId = this.getRandomInt(10000)
        axios.get('http://localhost:8000/api/onsen_inns/', {
          params: {
            id: randId,
          },
        })
          .then(response => {
            var res = response.data.results[0]
            var cate = res['category']
            this.check[cate] = (this.check[cate] || 0) + 1
            if (this.check[cate] < 2) {
              this.items.push(res)
            }
            if (this.items.length > 20) {
              point = false
            }
            console.log(this.check)
            console.log(point)
          })
          .catch(err => {
            console.error(err)
          })
      }
      */
    },

    getImg: function () {
      var category = this.items[this.count]['category']
      var src = this.idles[category][0]
      return src
    },

    makeText: function (oneItem) {
      var price = oneItem['inn_min_price']
      /*
      var capacity = oneItem['rooms_total']
      var bathes = oneItem['baths_total']
      var bathes = oneItem['baths_total']
      var convenience = oneItem['convenience_store']
      var leisure = oneItem['service_leisure']
      */
      var category = oneItem['category']
      var text = []

      if (category === 0 || category === 3 || category === 5 || category === 7 || category === 9 || category === 10) {
        text.push('エヘヘ, じゃあ自己紹介させてもらいますね! 私達')
      } else if (category === 1 || category === 2) {
        text.push('ウェッ!? 自己紹介ですか……? 参ったなぁ，うちら')
      } else if (category === 4 || category === 6 || category === 8) {
        text.push('ウィース，じゃ自己紹介な!　ウチんとこ')
      } else {
        text.push('いがい')
      }

      text.push('の所の入場料は')

      if (price >= 10000) {
        text.push('結構高い')
      } else if (price >= 8000) {
        text.push('高い')
      } else if (price >= 7000) {
        text.push('普通な')
      } else if (price >= 6000) {
        text.push('安い')
      } else {
        text.push('結構安い')
      }

      return text
    },

    count_amenity (oneItem) {
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
  zoom: 1.5
}
img.onei {
  zoom: 0.8
}
</style>
