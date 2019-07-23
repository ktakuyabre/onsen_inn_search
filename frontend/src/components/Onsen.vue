<template>
  <v-container grid-list-md text-xs-center>
    <v-layout row wrap>
      <v-flex xs6>
        <img :src="imgpath[inn['category']][getRandomInt(8)]"/>
      </v-flex>
      <v-flex xs6>
        <v-card>
          <v-card-title primary-title>
          <div>
            <h3 class=display-3>{{ innname }}</h3>
            <br>
            <div class=display-2> {{ makeText(inn) }} </div>
          </div>
          </v-card-title>
          <v-card-actions>
            <v-btn flat color="orange" @click="goBackToOnsenList(1)"> 温泉リストに戻る </v-btn>
            <VoteButton v-bind:innId="this.$route.params.id"></VoteButton>
          </v-card-actions>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
/* eslint-disable */
import axios from 'axios'
import VoteButton from './VoteButton.vue'

export default {
  name: 'Onsen',
  components: {
    VoteButton
  },
  data () {
    return {
      msg: 'Onsen Page',
      inn: null,
      innname: '',
      category: 0,
      imgpath: [
        [
          require('../assets/images/0/download20190702162626.png'),
          require('../assets/images/0/download20190702162720.png'),
          require('../assets/images/0/download20190702162830.png'),
          require('../assets/images/0/download20190702162935.png'),
          require('../assets/images/0/download20190702163040.png'),
          require('../assets/images/0/download20190702163159.png'),
          require('../assets/images/0/download20190702163320.png'),
          require('../assets/images/0/download20190702163654.png'),
        ],
        [
          require('../assets/images/1/download20190702160655.png'),
          require('../assets/images/1/download20190702160926.png'),
          require('../assets/images/1/download20190702161028.png'),
          require('../assets/images/1/download20190702161145.png'),
          require('../assets/images/1/download20190702161314.png'),
          require('../assets/images/1/download20190702161452.png'),
          require('../assets/images/1/download20190702161609.png'),
          require('../assets/images/1/download20190702161719.png'),
        ],
        [
          require('../assets/images/2/download20190702190822.png'),
          require('../assets/images/2/download20190702191000.png'),
          require('../assets/images/2/download20190702191232.png'),
          require('../assets/images/2/download20190702191337.png'),
          require('../assets/images/2/download20190702191438.png'),
          require('../assets/images/2/download20190702191650.png'),
          require('../assets/images/2/download20190702192917.png'),
          require('../assets/images/2/download20190702193117.png'),
        ],
        [
          require('../assets/images/3/download20190702154224.png'),
          require('../assets/images/3/download20190702154710.png'),
          require('../assets/images/3/download20190702154901.png'),
          require('../assets/images/3/download20190702155109.png'),
          require('../assets/images/3/download20190702155501.png'),
          require('../assets/images/3/download20190702155750.png'),
          require('../assets/images/3/download20190702160019.png'),
          require('../assets/images/3/download20190702160146.png'),
        ],
        [
          require('../assets/images/4/download20190702155543.png'),
          require('../assets/images/4/download20190702155955.png'),
          require('../assets/images/4/download20190702160221.png'),
          require('../assets/images/4/download20190702160657.png'),
          require('../assets/images/4/download20190702160941.png'),
          require('../assets/images/4/download20190702161421.png'),
          require('../assets/images/4/download20190702181647.png'),
          require('../assets/images/4/download20190702181829.png'),
        ],
        [
          require('../assets/images/5/download20190702182749.png'),
          require('../assets/images/5/download20190702182924.png'),
          require('../assets/images/5/download20190702183044.png'),
          require('../assets/images/5/download20190702183651.png'),
          require('../assets/images/5/download20190702183911.png'),
          require('../assets/images/5/download20190702184407.png'),
          require('../assets/images/5/download20190702184607.png'),
          require('../assets/images/5/download20190702184903.png'),
        ],
        [
          require('../assets/images/6/41329_8OvJrEIM.png'),
          require('../assets/images/6/41329_Fyd07c2N.png'),
          require('../assets/images/6/41329_PqOfROth.png'),
          require('../assets/images/6/41329_Rk3xEhLe.png'),
          require('../assets/images/6/41329_VzLvX6JZ.png'),
          require('../assets/images/6/41329_eE6G4Zei.png'),
          require('../assets/images/6/41329_uLG8CKEt.png'),
          require('../assets/images/6/41329_xEyhITAT.png'),
        ],
        [
          require('../assets/images/7/6883_7zvmG9y9.png'),
          require('../assets/images/7/6883_I2K9RxM6.png'),
          require('../assets/images/7/6883_LeNIx2U2.png'),
          require('../assets/images/7/6883_S1LPxZaN.png'),
          require('../assets/images/7/6883_W5GgXGNb.png'),
          require('../assets/images/7/6883_WzRQAhPQ.png'),
          require('../assets/images/7/6883_sajVpAWG.png'),
          require('../assets/images/7/6883_v3HF2oxx.png'),
        ],
        [
          require('../assets/images/8/11906_34klo33w.png'),
          require('../assets/images/8/11906_6nHLpFMo.png'),
          require('../assets/images/8/11906_6ptpEYsj.png'),
          require('../assets/images/8/11906_JGgVpweX.png'),
          require('../assets/images/8/11906_b7vBsVDP.png'),
          require('../assets/images/8/11906_h1uXdzlW.png'),
          require('../assets/images/8/11906_jSjTVQQZ.png'),
          require('../assets/images/8/11906_vTxSBk5M.png'),
        ],
        [
          require('../assets/images/9/46940_AlgnJrJp.png'),
          require('../assets/images/9/46940_DzOQsSnl.png'),
          require('../assets/images/9/46940_IyhQeSF1.png'),
          require('../assets/images/9/46940_NjCaHG1r.png'),
          require('../assets/images/9/46940_SRX0qKom.png'),
          require('../assets/images/9/46940_eSgFjtuC.png'),
          require('../assets/images/9/46940_iJmriYYL.png'),
          require('../assets/images/9/46940_kPWe0030.png'),
        ],
      ],

    }
  },
  created () {
    axios.get('http://localhost:8000/api/onsen_inns/', {
      params: {
        id: this.$route.params.id,
      },
    })
      .then(response => {
        console.log(response.data)
        this.inn = response.data.results[0]
        this.innname = response.data.results[0].inn_name
        this.category = response.data.results[0]
      })
      .catch(err => {
        console.error(err)
      })
  },

  methods: {
    getRandomInt: function (max) {
      return Math.floor(Math.random() * Math.floor(max))
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
        text = text + ' エヘヘ, じゃあ自己紹介させてもらいますね! 私達'
      } else if (category === 1 || category === 2) {
        text = text + ' ウェッ!? 自己紹介ですか……? 参ったなぁ，うちら'
      } else if (category === 4 || category === 6 || category === 8) {
        text = text + ' ウィース，じゃ自己紹介な!　ウチんとこ'
      }

      text = text + ' の所の入場料は'

      if (price >= 10000) {
        text = text + ' 結構高い'
      } else if (price >= 8000) {
        text = text + ' 高い'
      } else if (price >= 7000) {
        text = text + ' 普通な'
      } else if (price >= 6000) {
        text = text + ' 安い'
      } else {
        text = text + ' 結構安い'
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

      text = text + ' て,ファンのみんなに楽しんでもらえる温泉は'

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
    goBackToOnsenList: function (page) {
      this.$router.push({ path: '/onsenlist', params: {
        category: this.category,
        page: page
      }})
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  font-weight: normal;
}
</style>
