<template>
  <div class="container">
    <div class="row">
      <div class="item">
        <h3 class="item__title">集まっている金額</h3>
        <h2 class="item__main">{{ deposited }} ETH</h2>
        <div class="progress">
          <div 
            :style="{width: progress + '%'}" 
            class="progress-bar bg-success"
            role="progressbar"
            aria-valuenow="`${progress}`" 
            aria-valuemin="0" 
            aria-valuemax="100">{{ progress }}%</div>
        </div>
      </div>
      <div class="item">
        <h3 class="item__title">目標金額</h3>
        <h2 class="item__main">{{ goalAmount }} ETH</h2>
      </div>
      <div class="item">
        <h3 class="item__title">応援している人</h3>
        <h2 class="item__main">{{ numInvestors }} 人</h2>
      </div>
      <div class="item">
        <h3 class="item__title">残り日数</h3>
        <h2 class="item__main">4日</h2>
      </div>
      <button class="btn btn-danger btn-lg item__btn">プロジェクトを支援する</button>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    deposited: {
      type: Number,
      default: 0
    },
    goalAmount: {
      type: Number,
      default: 0
    },
    numInvestors: {
      type: Number,
      default: 0
    }
  },
  computed: {
    progress() {
      if (this.goalAmount == 0) {
        return 0
      }
      if (this.eposited / this.goalAmount > 1) {
        return 100
      }
      return (this.deposited / this.goalAmount) * 100
    }
  }
}
</script>

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
