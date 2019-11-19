<template>
  <div class="box">
    <div class="b-1">
      <p>个人主页</p>
    </div>
    <div class="head">
      <img style="width:90px;height:90px" src="../../../public/img/head.png" alt="">
      <h1>{{uname}}</h1>
    </div>
    <div class="jjk">
      <div>
        <p>12</p>
        <p>作品</p>
      </div>
      <div>
        <p>10</p>
        <p>粉丝</p>
      </div>
      <div>
        <p>30</p>
        <p>关注</p>
        <p></p>
      </div>
    </div>
    <div class="body">
     
        <mt-button class="d1" @click="cc" data-id="tab1"><img src="../../../public/img/sc.png" alt=""></mt-button>
        <mt-button class="d1" @click="cc" data-id="tab2"><img src="../../../public/img/zj.png" alt=""></mt-button>
  
      <mt-tab-container v-model="active">
        <mt-tab-container-item id="tab1">测试一</mt-tab-container-item>
        <mt-tab-container-item id="tab2">测试二</mt-tab-container-item>
      </mt-tab-container>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        uname: "",
        active: ""
      }
    },
    methods: {
      pol() {
        var url = "/users/person";
        this.axios.get(url).then(res => {
          console.log(res.data);
          this.uname = res.data.uname;
        })
      },
      cc() {
        this.active = event.target.dataset.id;
      }
    },
    created() {
      this.pol();
    }
  }
</script>
<style scoped>
  .d1{
    width: 140px;
  }
  .box {
    text-align: center;
  }

  .b-1 {
    font-size: 28px;
    height: 50px;
    border-bottom: 1px solid #F6F6F6;
  }

  h1 {
    margin-top: 20px;
  }

  .head {
    width: 90%;
    margin: 40px auto 0 auto;
    display: flex;
    justify-content: space-between;
  }

  .jjk {
    margin-top: 20px;
    display: flex;
    justify-content: space-around;
    font-size: 20px;
  }

  .body {
    width: 90%;
    margin: 50px auto 0 auto;
    display: flex;
  }
</style>