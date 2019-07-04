<template>
  <div　id='list'>
  <br>
  <h1>{{ msg }}</h1>
  <br>
  <br>
  <v-layout row>
    <v-flex xs12 sm6 offset-sm3>
      <v-card>
        <v-toolbar color="indigo" dark>
          <v-toolbar-side-icon></v-toolbar-side-icon>

          <v-toolbar-title>Inbox</v-toolbar-title>

          <v-spacer></v-spacer>

          <v-btn icon>
            <v-icon>more_vert</v-icon>
          </v-btn>
        </v-toolbar>
        <v-list>
          <v-list-tile
            v-for="item in items"
            :key="item.title"
            avatar
            @click=""
          >
            <v-list-tile-action>
              <v-icon v-if="item.icon" color="pink">star</v-icon>
            </v-list-tile-action>

            <v-list-tile-content>
              <v-list-tile-title v-text="item.title"></v-list-tile-title>
            </v-list-tile-content>

            <v-list-tile-avatar>
              <img :src="item.avatar">
            </v-list-tile-avatar>
          </v-list-tile>
        </v-list>
      </v-card>
    </v-flex>
  </v-layout>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</template>

<script>
export default {
  name: 'OnsenList',
  data () {
    return {
      msg: 'OnsenList Page',
    }
        items: [
          { title: 'ニセコ五色温泉旅館', avatar: 'https://1.bp.blogspot.com/-GWMxdkI0GQs/WTd5HhIXb7I/AAAAAAABEtQ/00aFX7Auf_YtKjyIAmK4E9XjyPIGiS6cQCLcB/s800/stand_onsen_white_woman.png' },
          { title: '高湯温泉旅館　玉子湯', avatar: 'https://2.bp.blogspot.com/-8SXUjho2Q3A/WTd5IbXcdeI/AAAAAAABEtU/lLMy-W__SCol746jtdzKntgpQ4yNw9ggwCLcB/s800/stand_onsen_woman.png' },
          { title: '湯治のふるさと　玉川温泉', avatar: 'https://2.bp.blogspot.com/-w2cc5PFxpDY/WTd5F-_HDcI/AAAAAAABEtE/hLef7WMLdt8Vvugs3Jr4Xkg1uHDxAp6HQCLcB/s800/stand_onsen_girl.png' },
          { title: '日本三秘湯　谷次温泉', avatar: 'https://2.bp.blogspot.com/-KPPWPTS1pOk/UZmCU2fi74I/AAAAAAAATgw/IFd8eUNlvhk/s800/onsen_woman.png' }
        ]
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
