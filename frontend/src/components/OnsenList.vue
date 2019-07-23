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
                  <v-list-tile v-for="item in items[page]" :key="item.inn_name" @click="goToOnsenPage(item.id)" >
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
      category: 0,
      page: 1,
      items: []
    }
  },

  created (this.getList(this.page)
  ),
  methods(
    getList (page) (
  created () {
    if (this.$route.query.category != null) {
      this.category = this.$route.query.category
    }

    if (this.$route.query.page != null) {
      this.page = this.$route.query.page
    }
    console.log("Called")
    console.log(this.category)
    console.log(this.page)
    for (  var i = 0;  i < 6;  i++  ) {
      axios.get('http://localhost:8000/api/onsen_inns/', {
        params: {
          category: this.category,
          page: i+1,
        },
      })
        .then(response => {
          console.log(response.data.results)
          this.items.push(response.data.results)
        })
        .catch(err => {
          console.error(err)
        })
    }
  },

  methods:{
    goToOnsenPage : function (itemid) {
      this.$router.push({ name: 'Onsen', params: { id: itemid }})
    }
  },
}
</script>

<style scoped>
h1 {
  font-weight: normal;
  font-size: 32px;
}

</style>
