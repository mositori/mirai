<template>
  <div class="container">
    <div class="row">
      <div class="post-main-text">
        <h1 class="post-main-text__title">若者に平和のための教育をしたい</h1>
        <img 
          src="~assets/images/post_1.png" 
          alt="post_1" 
          class="post-main-text__image">
        
        <h2 class="post-main-text__subtitle">平和を築くための取り組み</h2>
        <p class="post-main-text__paragraph">コロンビアでは2016年6月、50年以上にわたる左翼ゲリラとの内戦が停戦合意に達しました。2016年のノーベル平和賞がサントス大統領に授与されたことはまだ記憶に新しい出来事です。</p>
        <p class="post-main-text__paragraph">内戦により20万人以上の人が亡くなり、多くの人々が住む場所を追われ、800万人以上の人々が深刻な犯罪を目にしてきました。家族を殺された人々のなかには、殺人者を罰することを望む人もいます。一方、過去とは一線を画し、新しい社会を築いていきたいと思う人々もいます。</p>
        <p class="post-main-text__paragraph">コロンビアのプラン・インターナショナルは、若者たちを中心に、大人も子どもも互いに信頼し合い、暴力を使わずに問題解決をする、新しい市民社会をともにつくるためのプロジェクトに取り組んでいます。</p>
        <h2 class="post-main-text__subtitle">平和を築くための取り組み</h2>
        <p class="post-main-text__paragraph">コロンビアでは2016年6月、50年以上にわたる左翼ゲリラとの内戦が停戦合意に達しました。2016年のノーベル平和賞がサントス大統領に授与されたことはまだ記憶に新しい出来事です。</p>
        <p class="post-main-text__paragraph">内戦により20万人以上の人が亡くなり、多くの人々が住む場所を追われ、800万人以上の人々が深刻な犯罪を目にしてきました。家族を殺された人々のなかには、殺人者を罰することを望む人もいます。一方、過去とは一線を画し、新しい社会を築いていきたいと思う人々もいます。</p>
        <p class="post-main-text__paragraph">コロンビアのプラン・インターナショナルは、若者たちを中心に、大人も子どもも互いに信頼し合い、暴力を使わずに問題解決をする、新しい市民社会をともにつくるためのプロジェクトに取り組んでいます。</p>
        <button class="post-main-text__button btn btn-lg btn-danger">プロジェクトを支援する</button>
      </div>

    </div>
  </div>
</template>
<style lang="scss" scoped>
@import '~assets/scss/style';

.post-main-text {
  & > *:not(:last-child) {
    margin-bottom: 20px;
  }
  &__title {
    font-size: $font-size--xlarge;
    font-weight: 600;
  }
  &__image {
    width: 100%;
  }
  &__subtitle {
    font-size: 24px;
    font-weight: 600;
  }
  &__paragraph {
    font-size: $font-size--smedium;
  }
  &__button {
    display: block;
    margin: 0 auto;
    text-align: center;
  }
}
</style>
