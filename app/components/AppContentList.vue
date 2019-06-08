<template>
  <div class="container">
    <div class="row">
      <div 
        v-for="(post,i) in pseudoPosts"
        :key="i"
        class="col-md-4">
        <app-content v-bind="post" />
      </div>
    </div>
  </div>
</template>
<script>
import AppContent from '~/components/AppContent'
export default {
  components: {
    AppContent
  },
  data() {
    return {
      pseudoPosts: [
        {
          title: '1',
          image: '~/assets/images/post_1.png'
        }
      ]
    }
  }
}
</script>
