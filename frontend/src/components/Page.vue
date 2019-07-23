<template>
  <v-list>
    <v-list-tile v-for="item in items" :key="item.inn_name" @click="goToOnsenPage(item.id)" >
      <v-list-tile-content>
        <v-list-tile-title v-text="item.inn_name"></v-list-tile-title>
      </v-list-tile-content>
    </v-list-tile>
  </v-list>
</template>

<script>
/* eslint-disable */
import axios from 'axios'

export default {
  props: ['category', 'page'],
  name: 'Page',
  data () {
    return {
      items: [],
    }
  },

  mounted () {
    this.getList()
  },

  methods: {
    getList: function () {
      console.log("Called")
      console.log(this.category)
      console.log(this.page)
      axios.get('http://localhost:8000/api/onsen_inns/', {
        params: {
          category: this.category,
          page: this.page,
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
    goToOnsenPage : function (itemid) {
      this.$router.push({ name: 'Onsen', params: { id: itemid }})
    }
  },
}
</script>
