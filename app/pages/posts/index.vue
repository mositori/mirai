<template>
  <div class="container">
    <div class="row my-4">
      <div class="col-md-8">
        <post-main-text />>
      </div>
      <div class="col-md-4">
        <post-console />
      </div>
    </div>
  </div>
</template>
<script>
import PostConsole from '~/components/Posts/PostConsole'
import PostMainText from '~/components/Posts/PostMainText'
export default {
  components: {
    PostConsole,
    PostMainText
  }
}
</script>
