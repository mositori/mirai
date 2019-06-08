<template>
  <div class="top-image">
    <h1 class="top-image__main-title">みんなのミライに投資しよう</h1>
    <h3 class="top-image__subtitle">トラストレスクラウドファンディング</h3>
    <div class="top-image-logo">
      <img 
        src="~assets/images/logo.png" 
        alt="Logo" 
        class="top-image__logo">
    </div>
    <button class="btn btn-success btn-lg top-image__btn">プロジェクトを支援する</button>
  </div>
</template>

<style lang="scss" scoped>
@import '~assets/scss/style';

.top-image {
  width: 100%;
  margin: 0 auto;
  padding: 120px 0;
  background-image: url('../assets/images/background.png');
  background-size: cover;
  color: $color--white;
  text-align: center;
  & > *:not(:last-child) {
    margin-bottom: 25px;
  }
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
    width: 150px;
  }
  &__btn {
    opacity: 0.8;
  }
}

.top-image-logo {
  text-align: center;
}
</style>
