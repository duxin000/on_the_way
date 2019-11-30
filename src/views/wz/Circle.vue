<template>
  <div class="container">
    <!-- 发布内容 -->
    <div v-for="(item,i) of lists" :key="i">
      <div class="getuname">
        {{uname}}
      </div>
      <div class="getpdesc">
        <span>{{item.pdesc}}</span>
      </div>
      <div class="img">
        <img :src="`http://127.0.0.1:5050${item.psrc.slice(8)}`" class="show_img">
      </div>
      <div class="uptime">
        <span>{{item.upTime}}</span>
      </div>
      <hr>
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
      psrc:"",
      lists:[],
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
        this.psrc=res.data.code[0].psrc.slice(8);
        console.log(this.psrc);
        this.upTime=res.data.code[0].upTime;
        // this.psrc = this.psrc;
        // console.log(this.psrc);
        this.lists = res.data.code;
        console.log(this.lists);
        console.log(this.lists.pdesc);
        
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
    margin-left:15px;
    font-weight: bold;
    color:blue;
  }
  .img{
    margin-left: 15px;
    margin-top: 15px;
    margin-bottom: 10px;
  }
  .show_img{
    width: 200px;
    height: 200px;
  }
  .getpdesc{
    margin-left: 15px;
    margin-top: 8px;
  }
  .uptime{
    margin-left: 15px;
  }
</style>