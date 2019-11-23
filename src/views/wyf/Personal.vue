<template>
  <div class="box">
    <div class="b-2">
      <p class="p">个 人 主 页</p>
      <div class="head">
        <img style="width:90px;height:90px" src="../../../public/imgs/wyf/head.png" alt="">
        <h1>{{uname}}</h1>
      </div>
      <div class="jjk">
        <div>
          <p>12 </p>
          <p>作品 </p>
        </div>
        <div>
          <p>1w+</p>
          <p>粉丝</p>
        </div>
        <div>
          <p>30</p>
          <p>关注</p>
          <p></p>
        </div>
      </div>
    </div>
    <div class="body">
      <van-tabs v-model="active" animated>
        <van-tab v-for="(item,i) of list" :key="i" :title="item ">
          内容 {{ }}
        </van-tab>
      </van-tabs>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        uname: "",
        active: 0,
        list: ["收藏", "我的足迹"],
      }
    },
    methods: {
      pol() {
        var url = "/users/person";
        this.axios.get(url).then(res => {
          this.uname = res.data.uname;
        })
      },
    },
    created() {
      this.pol();
    }
  }
</script>
<style scoped>
  .d1 {
    width: 140px;
  }

  .box {
    text-align: center;
  }

  .p {
    margin-top: 0;
    line-height: 50px;
    font-weight: bold;
    font-size: 18px;
    color: #fff;
  }

  .b-2 {
    background-image: linear-gradient(to bottom, #4188F2, #699FF5);
  }

  h1 {
    margin-top: 20px;
    color:#fff;
  }

  .head {
    padding-top: 20px;
    width: 90%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
  }

  .jjk {
    margin-top: 20px;
    display: flex;
    justify-content: space-around;
    font-size: 20px;
    color: #fff;
  }

  .body {
    margin: 40px auto 0 auto;
  }
</style>