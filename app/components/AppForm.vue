<template>
  <div class="container">
    <div class="row">
      <div class="form">
        <h1 class="form__title">若者に平和のための教育をしたい<span>を支援する</span></h1>
        <div class="form-item">
          <h3 class="form-item__title">支援先のETHアドレス</h3>
          <input 
            id="exampleInputEmail1" 
            type="email" 
            class="form-control form-item__input" 
            aria-describedby="emailHelp" 
            placeholder="Enter email">
        </div>
        <div class="form-item">
          <h3 class="form-item__title">支援金額</h3>
          <input 
            id="exampleInputEmail1" 
            type="email" 
            class="form-control form-item__input" 
            aria-describedby="emailHelp" 
            placeholder="Enter email">
        </div>
        <div class="form-item">
          <h3 class="form-item__title">ニックネーム</h3>
          <input 
            id="exampleInputEmail1" 
            type="email" 
            class="form-control form-item__input" 
            aria-describedby="emailHelp" 
            placeholder="Enter email">
        </div>
        <div class="form-item">
          <h3 class="form-item__title">メッセージ</h3>
          <input 
            id="exampleInputEmail1" 
            type="email" 
            class="form-control form-item__input" 
            aria-describedby="emailHelp" 
            placeholder="Enter email">
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      address: '0x1234567890ABCDEF'
    }
  }
}
</script>

<style lang="scss" scoped>
.item {
}
</style>
