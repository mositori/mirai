<template>
  <div class="container">
    <div class="row my-4">
      <div class="col-md-9">
        <app-form />
      </div>
      <div class="col-md-3">
        <post-console />
      </div>
    </div>
    <button 
      class="btn btn-success" 
      @click="show">test</button>
  </div>
</template>
<script>
import { web3, contract } from '~/plugins/web3'
import AppForm from '~/components/AppForm'
import PostConsole from '~/components/Posts/PostConsole_'
export default {
  components: {
    AppForm,
    PostConsole
  }
}
</script>
<style lang="scss" scoped>
.container {
  height: 80vh;
}
</style>
