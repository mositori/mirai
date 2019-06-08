<template>
  <div class="container">
    <div class="row">
      <div class="list-title">
        <h2 class="list-title__title">新着のプロジェクト</h2>
        <div class="list-title__underline" />
      </div>
    </div>
  </div>
</template>
<style lang="scss" scoped>
@import '~assets/scss/style';

.list-title {
  width: 100%;
  padding: 60px 0;
  margin: 0 auto;
  text-align: center;
  &__title {
    font-size: $font-size--xlarge;
    margin-bottom: 20px;
  }
  &__underline {
    width: 40px;
    margin: 0 auto;
    border-top: 1px solid $color-black;
  }
}
</style>
