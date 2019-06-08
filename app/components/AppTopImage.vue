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
  margin: 0 auto;
  background-image: url('../assets/images/background.png');
  background-size: cover;
  color: $color--white;
  &__main-title {
    font-size: $font-size--xxxlarge;
    font-weight: 600;
    line-height: 38px;
    text-align: center;
    letter-spacing: 0.21rem;
  }
  &__subtitle {
    font-size: $font-size--large;
    text-align: center;
  }
  &__logo {
  }
}

.top-image-logo {
}
</style>
