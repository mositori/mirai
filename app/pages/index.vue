<template>
  <app-top-image />
</template>
<script>
import AppTopImage from '~/components/AppTopImage.vue'
export default {
  components: {
    AppTopImage
  }
}
</script>


<style style="scss" scoped>
/* Transparent
      /* 
      /*.navbar-default {
      background: none;
      border: none;
      }*/

@media (min-width: 768px) {
  .navbar-nav {
    width: 100%;
    text-align: center;
  }
  .navbar-nav > li {
    float: none;
    display: inline-block;
  }
  .navbar-nav > {
    float: right !important;
  }
}
</style>
