<template>
  <div class="container">
    <div class="title_span">
      <span>记 住 美 好 瞬 间</span>
    </div>
    <div class="btn">
      <mt-button @click="close">取消</mt-button>
      <mt-button @click="publish">发布</mt-button>
    </div>
    <div class="applyInput">
      <textarea placeholder="这一刻的想法..." maxlength="300" v-model="desc" rows="5"  id="message"/>
      <p>{{t}}/300</p>
    </div>
    <van-uploader
      v-model="fileList"
      multiple
      :max-count="2"
      :after-read="afterRead"
      :before-read="beforeRead"
    />
  </div>
</template>
<script>
export default {
  data() {
      return {
        src:"",
        fileList:[],
        content:[],
        msg:"",
        uid:"",
        time:"",
        count:0,
        desc:"",
        t:0 ,
        uname:""
    }
  },
  created(){
    var url = "upload/isLogin"
    this.axios.get(url)
    .then(res=>{
      console.log(res);
      this.uid = res.data.msg;
      
      console.log("uid="+this.uid)
    })
  },
  methods: {
    p(s) {
    return s < 10 ? '0' + s : s
    },
    getUid(){
      var url = "/users/person";
      this.axios.get(url).then(res=>{
        console.log(res.data);
      })
    },
    publish(){
      console.log(this.fileList)
      var d = new Date();
      var resDate = d.getFullYear() + '-' + this.p((d.getMonth() + 1)) + '-' + this.p(d.getDate());
      var resTime = this.p(d.getHours()) + ':' + this.p(d.getMinutes()) + ':' + this.p(d.getSeconds());
      this.time = resDate+" "+resTime;
      var $message=document.getElementById("message");
      this.msg_1=$message.value;
      var url = "upload/upload";
      // console.log(this.uid);
      // console.log(this.time)
      // console.log(this.msg_1)
      // console.log(this.content.length)
      // console.log(this.uname)
      var obj={count:this.count,uid:this.uid,time:this.time,msg:this.msg_1,content:this.content};
      if(this.msg_1=="" && this.content.length<1){
        this.$messagebox("提示","请传入图片或文字")
      }else{
        this.axios.post(url,this.qs.stringify(obj))
        .then(res=>{
          this.$toast("分享成功！");
          this.$router.push("Jump")
        })
        .catch(err=>{throw err})
        }
    },
    close(){
      this.$messagebox.confirm("是否取消")
      .then(res=>{
        this.desc = ""
      })
    },
    beforeRead(file) {
      if (file.type !== "image/jpeg") {
        this.$toast("请上传图像文件");
        return false;
      }
      return true;
    },
    afterRead(file) {
      // 此时可以自行将文件上传至服务器
        var filesize = file.file.size;
        var filename = file.file.name;
        console.log(filesize)
        // 2,621,440   2M
        if (filesize > 3101440){
            // 图片大于2MB
            this.$tosast("图片过大！");
            return
        }
        console.log(file)
        
      this.content.push(file.content); 
      console.log(this.content)//添加
      this.count=this.content.length;	//
      },
    },
  watch: {
    desc() {
      this.t = this.desc.length;
    }
  }
};
</script>
<style>
.title_span {
  height: 50px;
  background: #2971D5;
  line-height: 50px;
  font-size: 18px;
  font-weight: bold;
  text-align: center;
  color:#fff;
}
.btn {
  display: flex;
  justify-content: space-between;
  margin: 10px;
  border: 0;
}
textarea {
  border: 0;
  margin-top: 10px;
}
.span_num {
  text-align: right;
}
textarea {
  width: 82%;
  margin: 10px 30px 0 30px;
}
.applyInput {
  margin: 10 0px;
}
.applyInput p {
  text-align: right;
  margin-top: 10px;
  margin-right: 30px;
}
.van-uploader__wrapper {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 0 30px;
}
.van-uploader__preview {
  position: relative;
  width: 105px;
  height: 105px;
  margin: 0 8px 3px 0;
}
.van-uploader__preview-image {
  display: block;
  width: 105px;
  height: 105px;
}
.van-uploader__preview-delete {
  position: absolute;
  top: -8;
  right: -8;
  color: #969799;
  font-size: 18px;
  background: #fff;
  border-radius: 100%;
}
.van-uploader__input {
  width: 100px;
  height: 100%px;
}
.van-uploader__upload {
  width: 100px;
  height: 100%px;
}
</style>