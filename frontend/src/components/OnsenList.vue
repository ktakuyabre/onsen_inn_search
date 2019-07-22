<template>
  <div id='list'>
    <v-container fluid grid-list-md text-xs-center>
      <v-layout row wrap>
        <v-flex xs12>
          <v-layout column wrap>

            <v-flex xs12>
              <v-layout column wrap>
                <v-flex xs6>
                  <img class="onei" :src="require('../assets/images/0/download20190702162626.png')"/>
                </v-flex>
                <v-flex xs6>
                  好きなの選んでね!
                </v-flex>
              </v-layout>
            </v-flex>

            <v-flex xs6>
              <v-card>
                <v-list>
                  <v-list-tile v-for="item in items" :key="item.inn_name" @click="go(item.id)" >
                    <v-list-tile-content>
                      <v-list-tile-title v-text="item.inn_name"></v-list-tile-title>
                    </v-list-tile-content>
                  </v-list-tile>
                </v-list>
                <v-pagination v-model="page" :length="6" ></v-pagination>
              </v-card>
            </v-flex>
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
      category: 1,
      items: [],
      page: 1
    }
  },

  created () {
    if (this.$route.query.page != null) {
      this.page = this.$route.query.page
    }
    if (this.$route.query.category != null){
      this.category = this.$route.query.category
    }

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
      })
        .then(response => {
          console.log(response.data.results)
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
      const dirPath = path.resolve(assetsPath, category.toString())
      // console.log(dirPath)
      /*
      const list = fs.readdirSync(dirPath)
      list.forEach(console.log)
      */
    },
    go: function (itemid) {
      this.$router.push({ name: 'Onsen', params: { id: itemid }})
    }
  },
  watch: {
    page : function (newNumber) {
      this.$router.push({ path: '/onsenlist', query: { category: this.category, page: newNumber } })
    }
  }
}
</script>

<style scoped>
h1 {
  font-weight: normal;
  font-size: 32px;
}

</style>
