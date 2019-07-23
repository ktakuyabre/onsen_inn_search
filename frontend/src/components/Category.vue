<template>
  <div>
    <v-app class="base">
      <v-container fluid grid-list-md text-xs-center>
        <v-layout column wrap>

          <v-flex xs12>
            <br>
            <h1 class=display-4>あなたにぴったりなのはチーム{{category}}</h1>
            <br>
          </v-flex>
          <v-flex xs12>
            <h2 class=display-3>現在の神3!!!!!!!</h2>
            <v-layout row wrap>

              <v-flex v-for="i in 3" xs4 :key=i>
                <v-card>
                  <v-layout column wrap>
                    <v-flex xs4>
                      <h1 class=display-2>{{i}}位</h1>
                    </v-flex>
                    <v-flex xs4>
                      <img class="box" :src="imgpath[category][i-1]" :key="path"/>
                    </v-flex>
                    <v-flex xs4>
                      <h1 class=display-2>{{items[i-1]['inn_name']}}</h1>
                    </v-flex>
                    <v-flex xs4>
                    </v-flex>
                    <v-flex xs4>
                      <h1 class=display-1>{{items[i-1]['inn_headline']}}</h1>
                    </v-flex>
                  </v-layout>
                </v-card>
              </v-flex>

            </v-layout>
          </v-flex>
          <v-flex xs12>
            <br>
          </v-flex>
          <v-flex xs12>
            <v-layout align-center justify-center row wrap>
              <v-flex xs6>
                <img class="otaku" :src="require('../assets/otaku.jpg')"/>
                <v-btn class=display-1 block large dark color='deep-orange' :href="'/#/onsenlist/?category=' + category + '&page=1'">推しを見つける</v-btn>
              </v-flex>
              <v-flex xs6>
                <v-card>
                  <h2 class=display-3>{{ texts[category] }}</h2>
                </v-card>
              </v-flex>
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
  name: 'Category',
  data () {
    return {
      msg: 'Category Page',
      category: this.$route.query.num,
      linkTo: '/#/onsenlist/?category=' + this.category + '&page=1',
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
      texts: [
        'フヒヒ……このグループを選ぶとか中々玄人ですな，お宅も……．このグループはマニアックなメンバーが揃ってる．嬉しいのはイベント参加費が安いことなんだよね．ちなみに彼女たちもボク達も古いもの好き，Wi-Fiなんて洒落たもんは探したって無駄なのさ．',
        '誰だ、止まれ!! なにぃ、ここに辿り着いただと!? 驚いた……ここにはもうしばらく新規ファンが来ていなかったのだが… すまないがここのアイドルはどの子も未知数，売りを未だに模索しているんだ… もしよかったら君がこのアイドルたちの魅力を見つけ出してくれないか!?',
        '（∪＾ω＾）わんわんお！　このグループは動物大好きな子たちが集まってるんだ!　もちろんぼく達も動物大好き，イベントにはペットと一緒に行くのが当然さ!　結構会場の調度品壊すかも～みたいな心配する人多いんだけど，その辺意外と気にしないんだってさ．毎回ちょっと不安なんだけどね．',
        'おっ，ここのグループに辿り着くってことは結構スポーツ好きだったりする?　ここのグループ応援してたら結構身体鍛えられるしオススメだ!　応援した後にはマッサージの特典付き，しかも羽毛布団のコスチュームも時々あるんだけど，超絶可愛いんだよな!?',
        'ふぉふぉふぉ，わしの応援するグループはちょっと渋めなんじゃ．イベントでは美味しい夕飯が食べられてのぉ，わしらにも優しいのが嬉しいんじゃ．囲碁や将棋が詳しい子もおるから色々と話も進むしのぉ．どうじゃ，若いの，あんたも興味が出てきたじゃろがい?',
        '俺の推してるグループはもうなんつったって最強よ!　今一番勢いあるし，豪華絢爛?っつーのかな?　勿論俺らナウいからWi-Fiもビュンビュンよｗ　なんでか分かんねーんだけど，会場の近くに結婚式場が多いんだよな，これってもしかしてチャンスあんのかな?',
        'ここまで来たってことは温泉も入りたいけれど応援で体力も使いたいって感じだよね!　運動凄い出来るから大丈夫，会場の近くにはグラウンドとか体育館もあるし何だったらテニス場もあったり!!　え?　お金がないって?　……フフン，何と全部タダだったりするんだよね～!',
        'うちのグループも集客力バチバチ来てるよ!　何せ集まる人多いから!　しかも体育会系アイドル自称してるしｗ　おっと，単なる筋肉馬鹿アイドルと思われちゃ困るんだよなー，囲碁も強いんだよ，アイツらｗ　……麻雀も強いんだけど，結構巻き上げるんだよなぁ……．',
        'フッ，我々が応援しているグループは何て言ったって超セレブなのさ．このグループに辿り着いた君も勿論セレブに違いないな．最高のパフォーマンスの楽しんでくれ．おっと，見どころはそれだけじゃない，自然派な所も売りさ．パラグライダーや乗馬，カヌー……日頃の疲れを癒してくれ．',
      ],
      items: [],
    }
  },

  created () {
    this.getRanks()
  },

  methods: {
    getRanks () {
      axios.get('http://localhost:8000/api/onsen_inns/', {
        params: {
          category: this.category,
          ordering: '-vote_score',
        },
      })
        .then(response => {
          this.items = response.data.results
          console.log(this.items)
        })
        .catch(err => {
          console.error(err)
        })
    },
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
  zoom: 2;
  display: inline-block;
  width: 200px;
}
div.leader {
  display: inline-block;
  width: 200px;
}
</style>
