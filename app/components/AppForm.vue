<template>
  <div class="container">
    <div class="row">
      <div class="form">
        <h1 class="form__title">若者に平和のための教育をしたい<span>を支援する</span></h1>
        <div class="form-item">
          <h3 class="form-item__title">支援先のETHアドレス</h3>
          <input 
            id="exampleInputEmail1" 
            :placeholder="address" 
            disabled
            type="email" 
            class="form-item__input">
        </div>
        <div class="form-item">
          <h3 class="form-item__title">支援金額</h3>
          <input 
            id="exampleInputEmail1" 
            type="number" 
            class="form-item__input" 
            placeholder="">
        </div>
        <div class="form-item">
          <h3 class="form-item__title">ニックネーム</h3>
          <input 
            id="exampleInputEmail1" 
            type="email" 
            class="form-item__input" 
            placeholder="Enter email">
        </div>
        <div class="form-item">
          <h3 class="form-item__title">メッセージ</h3>
          <input 
            id="exampleInputEmail1" 
            type="email" 
            class="form-item__input" 
            placeholder="Enter email">
        </div>
      </div>
      <div class="button-group my-2">
        <button class="btn btn-secondary btn-lg">戻る</button>
        <button class="btn btn-danger btn-lg">支援金を送る</button>
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
.form {
  width: 100%;
  > *:not(:last-child) {
    margin-bottom: 20px;
  }
  &__title {
    font-size: 30px;
    font-weight: 600;
    > span {
      color: red;
    }
  }
}
.form-item {
  &__title {
    font-size: 14px;
    font-weight: 600;
    margin: 5px 0;
  }
  &__input {
    outline: none;
    width: 100%;
    border: none;
    border-bottom: 2px solid grey;
    padding: 10px;
    background-color: transparent;

    &::placeholder {
      font: Lato;
    }
  }
}
.button-group {
  margin: 0 auto;
}
</style>
