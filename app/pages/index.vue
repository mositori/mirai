<template>
  <div>
    <app-top-image />
    <app-funding-list />
    <app-content-list />
  </div>
</template>
<script>
import AppTopImage from '~/components/AppTopImage.vue'
import AppFundingList from '~/components/AppFundingList.vue'
import AppContentList from '~/components/AppContentList.vue'
export default {
  components: {
    AppTopImage,
    AppFundingList,
    AppContentList
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
