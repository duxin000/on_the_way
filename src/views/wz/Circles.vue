<template>
  <div class="container">
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
        console.log(this.uname);
      })
    },
    getMessage(){
      var url = "/users/circles";
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
    },
  },
  created(){
    this.getUid(),
    this.getMessage()
  },
}
</script>