<template>
  <footer class="footer">
    <div class="container">
      <ul class="footer-navi">
        <li class="footer-logo"><img src="~/assets/images/logo_footer.png"></li>
        <li class="footre-navi-item"><a href="#">運営会社</a></li>
        <li class="footre-navi-item"><a href="#">利用規約</a></li>
        <li class="footre-navi-item"><a href="#">プライバシーポリシー</a></li>
      </ul>
      <p class="copylight">Copylight © Mirai, Inc. All Rights Reserved.</p>
      <div class="row"/>
    </div>
  </footer>  
</template>
<style lang="scss" scoped>
.footer {
  height: 20vh;
  width: 100%;
  margin: 0 auto;
  background-color: #333;
  .container {
    height: 20vh;
    margin: 0 auto;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .footer-navi {
    display: flex;
    justify-content: left;
    align-items: center;
  }
  .footer-logo {
    margin-left: 50px;
    img {
      width: 130px;
    }
  }
  .footre-navi-item {
    a {
      margin-left: 50px;
      color: #ffffff;
      font-size: 12px;
    }
  }
  .copylight {
    color: #ffffff;
    font-size: 12px;
    text-align: right;
  }
}
</style>
