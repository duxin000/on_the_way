<template>
  <div class="container">
    <!-- 发布内容 -->
    <div class="cc" v-for="(item,i) of lists" :key="i">
      <div class="img">
        <img :src="`http://127.0.0.1:5050${item.psrc.slice(8)}`" class="show_img">
        <div class="getpdesc">
          <span>{{item.pdesc}}</span>
        </div>
        <span class="uptime">{{item.upTime}}</span>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        uname: "",
        pdesc: "",
        upTime: "",
        psrc: "",
        lists: [],
      }
    },
    methods: {
      getUid() {
        var url = "/users/person";
        this.axios.get(url).then(res => {
          this.uname = res.data.uname;
        })
      },
      getMessage() {
        var url = "/users/circle";
        this.axios.get(url)
          .then(res => {
            // console.log(res);
            this.uid = res.data.code[0].uid;
            this.pdesc = res.data.code[0].pdesc;
            this.psrc = res.data.code[0].psrc.slice(8);
            console.log(this.psrc);
            // this.upTime = res.data.code[0].upTime;
            // this.psrc = this.psrc;
            // console.log(this.psrc);
            this.lists = res.data.code;
            //console.log(this.lists);
            //console.log(this.lists.pdesc);

          })
      }
    },
    created() {
      this.getUid(),
        this.getMessage()
    }
  }
</script>
<style scoped>
  .getuname {
    font-size: 30px;
    font-family: "heiti";
    margin-left: 10px;
    font-weight: bold;
    color: blue;
  }

  .container {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
  }

  .cc {
    width: 45%;
  }

  .img {
    margin-top: 15px;
  }

  .show_img {
    width: 100%;
    height: 50%;
    border-radius: 10%;
  }

  .getpdesc {
    font-size: 20px;
    margin-top: 10px;
    margin-left: 20px;
    font-weight: bold;

  }

  .uptime {
    font-size: 12px;
  }
</style>