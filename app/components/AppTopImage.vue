<template>
  <div class="top-image">
    <h1 class="top-image__main-title">みんなのミライに投資しよう</h1>
    <h3 class="top-image__subtitle">トラストレスクラウドファンディング</h3>
    <div class="top-image-logo"/>
    <div class="button">プロジェクトを始める</div>
  </div>
</template>

<style lang="scss" scoped>
@import '~assets/scss/style';

.top-image {
  width: 100%;
  height: 60vh;
  background-image: url('../assets/images/background.png');
  background-size: cover;
  color: $color--white;
  &__main-title {
    font-size: $font-size--xxlarge;
  }
  &__subtitle {
  }
  &__logo {
  }
}

.top-image-logo {
}
</style>
