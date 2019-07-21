<template>
  <div id='list'>
    <v-container fluid grid-list-md text-xs-center>
      <v-layout row wrap>
        <v-flex xs12>
          <v-layout column wrap>

            <v-flex xs12>
              <v-layout column wrap>
                <v-flex xs6>
                  <img class="onei" :src="require('../assets/images_cate0/download20190702162626.png')"/>
                </v-flex>
                <v-flex xs6>
                  好きなの選んでね!
                </v-flex>
              </v-layout>
            </v-flex>

            <v-flex xs6>
              <v-card>
                <v-list>
                  <v-list-tile v-for="item in items" :key="item.inn_name" avatar>
                  <router-link v-bind:to="{ name: 'Onsen', params: { id: item.id }}" >
                    <v-list-tile-content>
                      <v-list-tile-title v-text="item.inn_name"></v-list-tile-title>
                    </v-list-tile-content>
                  </router-link>
                  </v-list-tile>
                </v-list>
                <v-pagination v-model="page" :length="6" ></v-pagination>
              </v-card>
            </v-flex>

          <v-spacer></v-spacer>

          <v-btn icon>
            <v-icon>search</v-icon>
          </v-btn>

          <v-spacer></v-spacer>

          </v-layout>
        </v-flex>
      </v-layout>
    </v-container>
  </div>
</template>

<script>
/* eslint-disable */
import axios from 'axios'

export default {
  name: 'OnsenList',
  data () {
    return {
      category: this.$route.query.category,
      items: [],
    }
  },

  created () {
    this.getList(this.page)
    this.getPathes(this.category)
  },

  methods: {
    getList: function (page) {
      axios.get('http://localhost:8000/api/onsen_inns/', {
        params: {
          category: this.category,
          page: page,
        },
        data: {},
      })
        .then(response => {
          this.items = response.data.results
        })
        .catch(err => {
          console.error(err)
        })
    },
    getPathes: function (category) {
      const path = require('path')
      const fs = require('fs')
      const assetsPath = '../assets/images_cate'

      const dirPath = path.resolve(assetsPath, category)
      console.log(require(dirPath))

      /*
      const list = fs.readdirSync(dirPath)
      list.forEach(console.log)
      */
    },

  },
}
</script>

<style scoped>
h1 {
  font-weight: normal;
  font-size: 32px;
}

</style>
