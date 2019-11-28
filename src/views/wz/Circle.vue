<template>
  <div class="container">
    <!-- 发布内容 -->
    <div class="getuname">
      {{uname}}
    </div>
    <div class="getpdesc">
      <span>{{pdesc}}</span>
    </div>
    <div>
      <img :src="`http://127.0.0.1:5050/${psrc}`" alt="">
    </div>
    <div class="uptime">
      <span>{{upTime}}</span>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      uname:"",
      pdesc:"",
      upTime:"",
      psrc:""
    }
  },
  methods:{
    getUid(){
      var url = "/users/person";
      this.axios.get(url).then(res=>{
        this.uname = res.data.uname;
      })
    },
    getMessage(){
      var url = "/users/circle";
      this.axios.get(url)
      .then(res=>{
        console.log(res);
        this.uid=res.data.code[0].uid;
        this.pdesc=res.data.code[0].pdesc;
        this.psrc=res.data.code[0].psrc;
        this.upTime=res.data.code[0].upTime;
        this.psrc = this.psrc.slice(8);
      })
    }
  },
  created(){
    this.getUid(),
    this.getMessage()
  }
}
</script>
<style scoped>
  .getuname{
    font-size: 30px;
    font-family: "heiti";
    margin-left:10px;
    font-weight: bold;
    color:blue;
  }
  .getpdesc{
    font-size: 20px;
    margin-top: 10px;
    margin-left: 20px;
  }
  .uptime{
    margin-left: 75%;
  }
</style>