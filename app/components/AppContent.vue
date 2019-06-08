<template>
  <div class="row">
    <div class="col-xs-8">
      <!--<li v-for="todo in todos">-->
      <div class="card">
        <img 
          src="../icon.png" 
          class="card-img-top" >
        <div  
          id="app" 
          class="card-body">
          <!--<h3 
            class="card-title">nishida</h3>-->
          <slot 
            class="crad-title" 
            name="head"/>
          <div class="progress">
            <div 
              class="progress-bar bg-success" 
              role="progressbar" 
              style="width: 25%" 
              aria-valuenow="25" 
              aria-valuemin="0" 
              aria-valuemax="100"/>
          </div>
          <h3 id="percent">75%</h3>
        </div>
        <div class="card-footer">
          <ul>
            <li><small 
              id="day" 
              class="text-muted">19日</small></li>
            <li><small 
              id="money" 
              class="text-muted">17.235ETH</small></li>
          </ul>
        </div>
      </div>
      <!--</li>-->
    </div>
  </div>
</template>
<style lang="scss" scoped>
@import '~assets/scss/style';

.card-img-top {
  width: 100%;
  background-position: center center;
}

.card {
  width: 300px;
  left: 100px;
  background-position: center center;
}

.text-muted {
  display: block;
}

#percent {
  text-align: right;
  color: green;
}

#day {
  text-align: left;
}
#money {
  text-align: right;
}
</style>
