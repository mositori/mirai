<template>
  <div class="container">
    <h1 class="h1">{{ contract }}</h1>
    <div class="row my-4">
      <div class="col-md-9">
        <post-main-text />
      </div>
      <div class="col-md-3">
        <post-console/>
      </div>
    </div>
    <button 
      class="btn btn-success" 
      @click="show">test</button>
  </div>
</template>
<script>
import { web3, contract } from '~/plugins/web3'
import Vuex from 'vuex'
import PostConsole from '~/components/Posts/PostConsole_'
import PostMainText from '~/components/Posts/PostMainText'
export default {
  components: {
    PostConsole,
    PostMainText
  },
  data() {
    return {
      config: {
        deposited: 0,
        goalAmount: 0,
        numInvestors: 0
      }
    }
  }
}
</script>
