<template>
  <div class="box2">
    <div class="box">
      <div class="logon">
        <img style="width:70px;height:70px" src="../../../public/img/head.png" alt="">
        <p class="thick">账号密码登录</p>
      </div>
      <mt-field label="用户名" placeholder="请输入用户名" v-model="uname"></mt-field>
      <mt-field label="密码" placeholder="请输入密码" v-model="upwd" type="password"></mt-field>
      <mt-button class="setting"  @click="login">点击登录</mt-button>
    </div>
    <div class="post">
       <p>赶紧的来注册！/ <a style="color:red" href="">立即注册</a></p>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        uname: "",
        upwd: ""
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
              this.$toast("登录成功");
              this.$router.push("/Personal");
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
  .post{
    text-align: center;
    width: 70%;
    padding:20px;
    background: #FEBEB4;
    margin: 0 auto;
    border-bottom-left-radius:5px;
    border-bottom-right-radius:5px; 
    color: #676CA5; 
  }
  .box2{
    height: 100%;
    position: absolute;
    top:0;left: 0;top:0;right: 0;
    background: url("../../../public/img/bodybg.png") no-repeat #ff6148;
  }
  .picture {
    display: flex;
    justify-content: space-around;
    margin-top: 100px;
  }
  .box{
     width: 90%;
     margin: 0 auto;
     background: #FFFFFF;
     border-radius:3%; 
     padding-bottom: 25px;
     margin-top: 50%;   
  }
  .box::before{
    content: "";
    display: table;
  }
  .mint-field {
    margin-bottom: 10px;
  }
  .logon {
    text-align: center;
    margin-bottom: 25px;
     margin-top:-35px;
  }
  .thick {
    font-weight: bold;
  }
  .setting {
    display: block ;
    background: #EB7A38;
    width: 85%;
    border-radius:20px; 
    margin: 0 auto;
    color: #FFFFFF;
  }
</style>