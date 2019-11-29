<template>
  <div class="box">
    <div class="b-2">
      <p class="p">个 人 主 页</p>
      <div class="head">
        <img style="width:90px;height:90px" src="../../../public/imgs/wyf/head.png" alt />
        <h1>{{uname}}</h1>
      </div>
      <div class="jjk">
        <div>
          <p>12</p>
          <p>作品</p>
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
      <van-tabs v-model="active">
        <van-tab title="收藏">内容 1</van-tab>
        <van-tab title="我的足迹"><cle></cle></van-tab>
      </van-tabs>
    </div>
    <van-button @click="bon" class="b-3" plain type="info" size="large">退出登录</van-button>
  </div>
</template>

<script>
import Circle from "../wz/Circle.vue";
export default {
  components: {
    cle: Circle
  },
  data() {
    return {
      uname: "",
      active: 0,
      list: ["收藏", "我的足迹"]
    };
  },
  methods: {
    pol() {
      var url = "/users/person";
      this.axios.get(url).then(res => {
        this.uname = res.data.uname;
      });
    },
    bon(){
     var url="/users/remove";
      this.axios.get(url).then(res=>{
        if(res.data.code){
          this.uname="未登录";
          // window.location.reload();
          this.$router.push("Login");
         }
      }).catch(err=>{
        console.log(err);
      })
    },

  },
  created() {
    this.pol();
  }
};
</script>
<style scoped>
.d1 {
  width: 140px;
}

.box {
  padding-bottom:55px;
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
  .b-3{
     margin-top: 76%;
  }

h1 {
  margin-top: 20px;
  color: #fff;
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