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
      <img src="`${psrc}`" alt="">
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
      uname:""
    }
  },
  methods:{
    getUid(){
      var url = "/users/person";
      this.axios.get(url).then(res=>{
        this.uname = res.data.uname;
      })
    },
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