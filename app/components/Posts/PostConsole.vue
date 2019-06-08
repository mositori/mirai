<template>
  <div class="container">
    <div class="row">
      <div class="item">
        <h3 class="item__title">集まっている金額</h3>
        <h2 class="item__main">254.444 ETH</h2>
        <div class="progress">
          <div 
            class="progress-bar bg-success" 
            role="progressbar" 
            style="width: 25%;" 
            aria-valuenow="25" 
            aria-valuemin="0" 
            aria-valuemax="100">25%</div>
        </div>
      </div>
      <div class="item">
        <h3 class="item__title">目標金額</h3>
        <h2 class="item__main">300 ETH</h2>
      </div>
      <div class="item">
        <h3 class="item__title">応援している人</h3>
        <h2 class="item__main">140 人</h2>
      </div>
      <div class="item">
        <h3 class="item__title">残り日数</h3>
        <h2 class="item__main">4日</h2>
      </div>
      <button class="btn btn-danger btn-lg item__btn">プロジェクトを支援する</button>
    </div>
  </div>
</template>
<style lang="scss" scoped>
@import '~assets/scss/style';

.item {
  display: block;
  width: 100%;
  margin-bottom: 20px;
  &__title {
    font-size: $font-size--smedium;
    margin-bottom: 10px;
    font-weight: 600;
  }
  &__main {
    font-size: $font-size--xxlarge;
    font-weight: 600;
  }
  &__btn {
    display: inline-block;
    margin: 0 auto;
    font-size: 18px;
    width: 100%;
  }
}
</style>
