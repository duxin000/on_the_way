<template>
  <div>
    <textarea placeholder="这一刻的想法..." maxlength="300" v-model="pdesc" rows="5"  id="message"/>
    <button @click="comment">发表评论</button>
  </div>
</template>
<script>
export default {
  data(){
    return{
      pdesc:"",
      uname:'',
    }
  },
  methods:{
    comment(){
      var url = "upload/isLogin"
      this.axios.get(url)
      .then(res=>{
      console.log(res);
      this.code = res.data.code;
      console.log("code="+this.code)
      if(this.code == -1){
        this.$messagebox.consfirm("请登录")
      }else{
        var url = "upload/comment";
        var obj={pdesc : this.pdesc}; console.log(obj)
        this.axios.post(url,this.qs.stringify(obj)).then(res=>{
          console.log("成功");
        })
      }
    })
    }
  }
}
</script>