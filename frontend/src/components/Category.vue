<template>
  <div>
    <v-app>
      <v-container fluid grid-list-md text-xs-center>
        <v-layout column wrap>

          <v-flex xs12>
            <h1>あなたが選んだのはチーム{{category}}</h1>
          </v-flex>
          <v-flex xs12>
            <h1>神3</h1>
            <v-layout row wrap>

              <v-flex v-for="i in 3" xs4 :key=i>
                <v-card>
                  <v-layout column wrap>
                    <v-flex xs4>
                      <h1>top{{i}}</h1>
                    </v-flex>
                    <v-flex xs4>
                      <img class="box" :src="imgpath[category][i-1]" :key="path"/>
                    </v-flex>
                    <v-flex xs4>
                      {{items[i-1]['inn_name']}}
                    </v-flex>
                    <v-flex xs4>
                      {{items[i-1]['inn_headline']}}
                    </v-flex>
                  </v-layout>
                </v-card>
              </v-flex>

            </v-layout>
          </v-flex>
          <v-flex xs12>
            <v-layout row wrap>
              <v-flex xs6>
                <img class="otaku" :src="require('../assets/otaku.jpg')"/>
              </v-flex>
              <v-flex xs6>
                <h2>{{ texts[category] }}</h2>
                <v-btn large href='/#/onsenlist/'>推しを探す</v-btn>
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
      imgpath: [
        [],
        [],
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
