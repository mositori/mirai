<template>
  <div class="container">
    <h1 class="h1">{{ contract }}</h1>
    <div class="row my-4">
      <div class="col-md-9">
        <post-main-text />>
      </div>
      <div class="col-md-3">
        <post-console v-bind="config" />
      </div>
    </div>
  </div>
</template>
<script>
import { web3, contract } from '~/plugins/web3'
import PostConsole from '~/components/Posts/PostConsole'
import PostMainText from '~/components/Posts/PostMainText'
export default {
  components: {
    PostConsole,
    PostMainText
  },
  data() {
    return {
      config: {
        deposited: 30,
        goalAmount: 50,
        numInvestors: 0
      }
    }
  }
}
</script>
