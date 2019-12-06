<template>
  <div class="container">
    <!-- title -->
    <div class="title_span">社 区</div>
    <div>
      <broadcast></broadcast>
    </div>
    <!-- 发布内容 -->
    <div v-for="(item,i) of lists" :key="i">
      <p class="getuname">{{item.uname}}</p>
      <p class="getpdesc">{{item.pdesc}}</p>
      <div class="img">
        <img :src="`http://127.0.0.1:5050${item.psrc.slice(8)}`" class="show_img">
      </div>
      <p class="gettime">{{item.upTime}}</p>
    </div>
  </div>
</template>
<script>
import Broadcast from "../../components/wz/Broadcast"
export default {
  components:{
    "broadcast":Broadcast
  },
  data(){
    return{
      uname:"",
      pdesc:"",
      upTime:"",
      psrc:"",
      lists:[],
      uid:"",
    }
  },
  methods:{
    getUid(){
      var url = "/users/person";
      this.axios.get(url).then(res=>{
        this.uname = res.data.uname;
        console.log(this.uname);
      })
    },
    getMessage(){
      var url = "/users/circles";
      this.axios.get(url)
      .then(res=>{
        console.log(res);                  
        this.uid=res.data.code[0].uid;
        this.uname = res.data.code[0].uname;
        this.pdesc=res.data.code[0].pdesc;
        this.psrc=res.data.code[0].psrc.slice(8);
        //console.log(this.psrc);
        this.upTime=res.data.code[0].upTime;
        // this.psrc = this.psrc;
        // console.log(this.psrc);
        this.lists = res.data.code;
        //console.log(this.lists);
        //console.log(this.lists.pdesc);
      })
    },
    
  },
  created(){
    this.getUid(),
    this.getMessage()
  },
}
</script>
<style scoped>
  .title_span{
    height: 50px;
    background: #2971D5;
    line-height: 50px;
    font-size: 18px;
    font-weight: bold;
    text-align: center;
    color:#fff;
  }
  .getuname{
    font-size: 20px;
    color: blue;
    margin-left: 15px;
  }
  .show_img{
    width: 200px;
    height: 200px;
    margin-left: 15px;
  }
  .getpdesc{
    margin-left: 15px;
  }
  .gettime{
     padding-left:15px;
     border-bottom:1px dashed gray;
     margin-bottom: 55px;   
    }
</style>
