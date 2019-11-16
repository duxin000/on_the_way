<template>
  <div class="header">
    <!-- 首页头部 -->
    <div class="header_img">
      <img src="../../../public/imgs/dx/logo.jpg" alt="">
    </div>
    <div class="header_input">
      <input type="text">
    </div>
    <div class="header_classily">
      <img id="more" @click="change" src="../../../public/imgs/dx/caidan.png" alt="">
    </div>
    <div class="more_list" style="display:none" v-show="downicon" @click="change">
        <p>更多精彩图集</p >
        <router-link to="">户外</router-link>
        <router-link to="">休闲</router-link>
        <router-link to="">摄影</router-link>
        <router-link to="">外拍</router-link>
    </div>
  </div>
</template>
<script>
export default {
    data(){
        return{
            downicon:false,
        }
    },
    methods:{
        change(){
            this.downicon = !this.downicon;
        }
    }
}
</script>


<style scoped>
  .header{
    display: flex;
    justify-content: space-between;
    background: #fdf4e5;
    align-items: center;
    height: 60px;
  }
  .header_img{
    width: 100px;
    margin-left: 10px;
    text-align: center;
    padding-top: 5px;
    padding-left: 5px;
  }
  .header_img img{
    width: 95%;
    height: 30px;
  }
  .header_input{
    width: 200px;
    text-align: center;
    margin-right: 40px;
  }
  .header_input input{
    width: 100%;
    height: 30px;
    padding: 0 10px;
    border:1px solid #ddd;
    border-radius: 3px;
    background-image: url(../../../public/imgs/dx/sousuo.png);
    background-size: 25px 25px;
    background-repeat:no-repeat;
    background-position: right center;
  }
  .header_classily{
    padding-top: 4px;
    padding-right: 25px;

  }
  .header_classily img{
    width: 25px;
    height: 25px;
  }
  .more_list{
    position:absolute;
    top:60px;
    bottom: 40px;
    width: 100%;
    background:rgba(0, 0, 0,.7);
    z-index: 1;
  }
  .more_list p{
    font-size:32px;
    color:#fff;
    display:block;
    font-weight: bold;
    text-align: center;
  }
  .more_list a{
    display:block;
    width:49%;
    padding-left: 2px;
    height:40px;
    line-height: 40px;
    border:1px solid #fff;
    border-radius: 8px;
    text-decoration: none;
    color:#fff;
    text-align: center;
    margin: 10px auto;

  }
</style>