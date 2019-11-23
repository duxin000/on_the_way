<template>
  <div class="box2">
    <p>
      <router-link to="/Login">
        <img src="../../../public/imgs/wyf/fh3.png" alt="">
      </router-link>
    </p>
    <div class="box">
      <div class="logon">
        <img style="width:70px;height:70px" src="../../../public/imgs/wyf/head.png" alt="">
        <p class="thick">用户注册</p>
      </div>
      <van-cell-group>
        <van-field v-model="username" required clearable label="用户名" right-icon="question-o" placeholder="请输入用户名" @click-right-icon="$toast('这是注册页面这里该写什么你懂的')"
        />
        <van-field v-model="password" type="password" label="密码" placeholder="包含 数字和英文，长度6-20" required />
        <van-field v-model="passwords" type="password" label="重复密码" placeholder="确认登录密码" required />
        <van-field v-model="phone" label="手机号" placeholder="请输入手机号" required />
      </van-cell-group>
      <mt-button class="setting" @click="logon">立即注册</mt-button>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        username: "",
        password: "",
        passwords: "",
        phone: "",
        // sms:""
      }
    },
    methods: {
      logon() {
        var reg = /^\w{3,12}$/;  //用户名验证
        var cpd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;     //密码验证
        var rag = /^[1][3,4,5,7,8][0-9]{9}$/  //手机验证
        if (!reg.test(this.username)) {
          this.$messagebox('消息', '用户名格式不正确'); return;
        } else if (!cpd.test(this.password)) {
          this.$messagebox('消息', '密码格式不正确'); return;
        } else if (!(this.password == this.passwords)) {
          this.$messagebox('消息', '两次密码不一致'); return;
        } else if (!rag.test(this.phone)) {
          this.$messagebox('消息', '手机号格式不正确'); return;
        } else {
          var url = "users/logon/";
          var obj = `uname=${this.username}&upwd=${this.password}&phone=${this.phone}`
          this.axios.post(url, obj).then(res => {
            console.log(res); this.$toast("注册成功");
            this.$router.push("/Login");
          }).catch(err => { console.log(err) })
        }
      }
    },
  }
</script>
<style scoped>
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

  .logon {
    text-align: center;
    margin-bottom: 25px;
    margin-top: -35px;
  }

  .thick {
    font-weight: bold;
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

  .setting {
    display: block;
    background-image: linear-gradient(to right, #044094, #2d76dc);
    width: 85%;
    border-radius: 20px;
    margin: 0 auto;
    color: #FFFFFF;
  }
</style>