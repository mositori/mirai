<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button 
      class="navbar-toggler" 
      type="button" 
      data-toggle="collapse" 
      data-target="#navbarTogglerDemo01" 
      aria-controls="navbarTogglerDemo01" 
      aria-expanded="false" 
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"/>
    </button>
    <div 
      id="navbarTogglerDemo01" 
      class="collapse navbar-collapse">
      <a 
        class="navbar-brand" 
        href="#"><img 
          id="logo" 
          src="~assets/images/logo.png">
      </a>
      <form class="form-inline my-2 my-lg-0">
        <input 
          class="form-control mr-sm-2" 
          type="search" 
          placeholder="Search" 
          aria-label="Search">
      </form>
    </div>

    <div>
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a 
            class="nav-link" 
            href="#">プロジェクトを掲載する<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a 
            class="nav-link" 
            href="..">ミライとは？</a>
        </li>
        <li class="nav-item">
          <a 
            class="nav-link disabled" 
            href="#">ログイン</a>
        </li>
        <li class="nav-item">
          <a 
            class="nav-link disabled" 
            href="#">新規登録</a>
        </li>
      </ul>
    </div>
  </nav>

</template>

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
