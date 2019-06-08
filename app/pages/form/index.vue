<template>
  <div class="container">
    <div class="row my-4">
      <div class="col-md-9">
        <app-form />
      </div>
      <div class="col-md-3">
        <post-console v-bind="config" />
      </div>
    </div>
    <button 
      class="btn btn-success" 
      @click="show">test</button>
  </div>
</template>
<script>
import AppForm from '~/components/AppForm'
import PostConsole from '~/components/Posts/PostConsole'
export default {
  components: {
    AppForm,
    PostConsole
  }
}
</script>
