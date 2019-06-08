<template>
  <div class="container">
    <div class="row"><!--
      <div 
        v-for="(post,i) in pseudoPosts"
        :key="i"
        class="col-md-3">
        <app-content v-bind="post" />
      </div>-->
      <div>
        <app-content v-bind="post" />
        <div/>
      </div>
    </div>
</div></template>
<script>
import AppContent from '~/components/AppContent'
export default {
  components: {
    AppContent
  },
  data() {
    return {
      pseudoPosts: [
        {
          title: '若者に平和のための教育をしたい',
          image: '~/assets/images/<>',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '最先端トレンドのバッグを作りたい',
          image: '~/assets/images/<>',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: 'オーガニックなや野菜を販売する八百屋さんを開きたい',
          image: '~/assets/images/yoon-byungwoo-1614092-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: 'スイスで時計職人になるために修行資金が欲しい',
          image: '~/assets/images/ken-lawrence-22592-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '単独でヨットで世界一周をしたい',
          image: '~/assets/images/markus-spiske-973768-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '完全手作りの最高に履きやすい靴を販売したい',
          image: '~/assets/images/d-ng-tr-n-qu-c-104956-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: 'イタリアの本場のパスタを提供するお店を開店したい',
          image: '~/assets/images/amirali-mirhashemian-1396684-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '最先端の物理の研究資金を求めています',
          image: '~/assets/images/yulia-buchatskaya-1466835-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '砂漠に幻のサボテンを採取しに行きたい',
          image: '~/assets/images/george-pagan-iii-1101115-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '世界一美味しいパンを提供するカフェを作りたい',
          image: '~/assets/images/jonathan-borba-1241847-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '南米で新種のトウモロコシを育てたい',
          image: '~/assets/images/glenn-carstens-peters-108372-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '自転車で世界を一周してみたい',
          image: '~/assets/images/david-marcu-125458-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '人工知能を搭載したスマートデバイスを開発したい',
          image: '~/assets/images/oliur-115920-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: 'オリジナルの映画を作って世界で上映したい',
          image: '~/assets/images/jakob-owens-199505-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '単独でヒマラヤ登山を成功させたい',
          image: '~/assets/images/christopher-burns-208431-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        },
        {
          title: '絶対に挫折させない英会話スクールを開校したい',
          image: '~/assets/images/mimi-thian-737711-unsplash.jpg',
          progress: 80,
          remaining: 14,
          funded: 65.3
        }
      ]
    }
  }
}
</script>
