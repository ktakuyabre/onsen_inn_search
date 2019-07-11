<template>
  <div id='list'>
    <br>
    <h1>{{ msg }}</h1>
    <br>
    <br>
    <v-layout row>
      <v-flex xs12 sm6 offset-sm3>
        <v-card>
          <!--
          <v-toolbar color="indigo" dark>
            <v-toolbar-side-icon></v-toolbar-side-icon>

            <v-toolbar-title>Inbox</v-toolbar-title>

                <v-spacer></v-spacer>

            <v-btn icon>
              <v-icon>more_vert</v-icon>
            </v-btn>
          </v-toolbar>
          -->
          <v-list>
            <v-list-tile
              v-for="item in items"
              :key="item.inn_name"
              avatar
            >
            <router-link v-bind:to="{ name: 'Onsen', params: { id: item.id }}" >
              <v-list-tile-content>
                <v-list-tile-title v-text="item.inn_name"></v-list-tile-title>
              </v-list-tile-content>
              <v-list-tile-avatar>
                <img :src="oneimages[0]">
              </v-list-tile-avatar>
            </router-link>
            </v-list-tile>
          </v-list>
          <v-pagination
            v-model="page"
            :length="6"
          ></v-pagination>
        </v-card>
      </v-flex>
    </v-layout>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'OnsenList',
  data () {
    return {
      oneimages: [
        'https://1.bp.blogspot.com/-GWMxdkI0GQs/WTd5HhIXb7I/AAAAAAABEtQ/00aFX7Auf_YtKjyIAmK4E9XjyPIGiS6cQCLcB/s800/stand_onsen_white_woman.png',
        'https://2.bp.blogspot.com/-8SXUjho2Q3A/WTd5IbXcdeI/AAAAAAABEtU/lLMy-W__SCol746jtdzKntgpQ4yNw9ggwCLcB/s800/stand_onsen_woman.png',
        'https://2.bp.blogspot.com/-w2cc5PFxpDY/WTd5F-_HDcI/AAAAAAABEtE/hLef7WMLdt8Vvugs3Jr4Xkg1uHDxAp6HQCLcB/s800/stand_onsen_girl.png',
        'https://2.bp.blogspot.com/-KPPWPTS1pOk/UZmCU2fi74I/AAAAAAAATgw/IFd8eUNlvhk/s800/onsen_woman.png',
      ],
      items: [],
    }
  },
  created () {
      this.getList(this.page)
  },
  methods: {
    getList (page) {
      axios.get('http://localhost:8000/api/onsen_inns/', {
          params: {
            category: this.category,
            page: page,
          }
      })
      .then(response => {
          console.log(response.data)
          this.items = response.data.results
      })
      .catch(err => {
          console.error(err)
      })
    },
  },
}
</script>
<script>
  export default {
    data () {
      return {
        items: [
          {title: '日本三秘湯谷次温泉', avatar: 'https://2.bp.blogspot.com/-KPPWPTS1pOk/UZmCU2fi74I/AAAAAAAATgw/IFd8eUNlvhk/s800/onsen_woman.png' }
        ]
      }
    }
  }
</script>

<style scoped>
h1 {
  font-weight: normal;
  font-size: 32px;
}

#list {
  background-image: url('https://www.pakutaso.com/shared/img/thumb/kusatuIMG_3514_TP_V.jpg');
}
</style>
