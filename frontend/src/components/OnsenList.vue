<template>
  <div id='list'>
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
        </v-list>
      </v-card>
    </v-flex>
  </v-layout>
</div>
</template>

<script>
export default {
  name: 'OnsenList',
  data () {
    return {
      msg: 'OnsenList Page',
    }
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

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  font-weight: normal;
}
</style>
