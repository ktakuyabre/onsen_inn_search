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
                <Page v-bind:category="category" v-bind:page="page"></Page>
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
import Page from './Page.vue'

export default {
  name: 'OnsenList',
  components: {
    Page,
  },
  data () {
    return {
      category: this.$route.query.category,
      page: this.$route.query.page
    }
  },

  mounted () {
    if (this.$route.query.page != null) {
      this.page = 1
    }
    if (this.$route.query.category != null){
      this.category = 0
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
