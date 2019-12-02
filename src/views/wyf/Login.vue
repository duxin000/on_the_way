<template>
  <div class="box2">
    <p>
      <router-link to="/">
        <img src="../../../public/imgs/wyf/fh3.png" alt="">
      </router-link>
    </p>
    <div class="box">
      <div class="logon">
        <img style="width:70px;height:70px" src="../../../public/imgs/wyf/head.png" alt="">
        <p class="thick">账号密码登录</p>
      </div>
      <mt-field label="用户名" placeholder="请输入用户名" v-model="uname"></mt-field>
      <mt-field label="密码" placeholder="请输入密码" v-model="upwd" type="password"></mt-field>
      <mt-button class="setting" @click="login">点击登录</mt-button>
    </div>
    <div class="post">
      <p>赶紧的来注册！/
        <router-link to="/Logon">立即注册</router-link>
      </p>
    </div>
    <div v-if="isShow" class="v_code">
      <slide></slide>
    </div>
  </div>
</template>
<script>
  import slide from "../../components/dx/Slide.vue"
  export default {
    components: {
      slide : slide
    },
    data() {
      return {
        uname: "",
        upwd: "",
        isShow:false,
      }
    },
    methods: {
      login() {
        var reg = /^\w{3,12}$/;
        if (!reg.test(this.uname)) {
          this.$messagebox('消息', '用户名格式不正确'); return;
        } else if (!reg.test(this.upwd)) {
          this.$messagebox('消息', '密码格式不正确'); return;
        } else {
          var url = "users/login/";
          var obj = { uname: this.uname, upwd: this.upwd };
          this.axios.get(url, { params: obj }).then(res => {
            if (res.data.code == 1) {
              this.isShow = true;
            } else {
              this.$toast("用户名和密码有误");
            }
          }).catch(err => {
            console.log(err);
          })
        }
      }
    },
  }
</script>
<style scoped>
  /* 验证码样式 */
  .v_code{
    z-index: 1;
    position: absolute;
    top:302px;
    left: 52px;
  }
  .post {
    text-align: center;
    width: 70%;
    padding: 20px;
    background: #5782be;
    margin: 0 auto;
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    color: #fff;
  }

  .box2 {
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    top: 0;
    right: 0;
    background: url("../../../public/imgs/wyf/head1.jpg") no-repeat #1a4e97;
    background-size: 100%;
  }

  .picture {
    display: flex;
    justify-content: space-around;
    margin-top: 100px;
  }

  .box {
    width: 90%;
    margin: 0 auto;
    background: #FFFFFF;
    border-radius: 3%;
    padding-bottom: 25px;
    margin-top: 50%;
  }

  .box::before {
    content: "";
    display: table;
  }

  .mint-field {
    margin-bottom: 10px;
  }

  .logon {
    text-align: center;
    margin-bottom: 25px;
    margin-top: -35px;
  }

  .thick {
    font-weight: bold;
  }

  .setting {
    display: block;
    background-image: linear-gradient(to right, #044094, #2d76dc);
    width: 85%;
    border-radius: 20px;
    margin: 0 auto;
    color: #FFFFFF;
  }
</style>