<template>
  <div>  
    <textarea class="site" maxlength="200" @input="descInput" rows="5" v-model="desc" placeholder="这一刻的想法..." ></textarea>
    <span class="xianzhi">{{remnant}}/200</span>
    <van-uploader v-model="fileList" multiple :max-count="9"/>
  </div>
</template>
<script>
export default {
  data() {
    return {
      fileList: [],
      remnant: 200
    }
  },
  methods:{
  descInput(){
  var txtVal = this.desc.length;
  this.remnant = 200 - txtVal;
    }
  }
}
</script>
<style>
.site{
  width: 65%;
  padding-left:20px;
  margin-left: 10px;
  border:1px dashed gray;
}
.van-uploader__wrapper{
  display: flex !important;
  flex-wrap: wrap !important;
  justify-content:space-between !important;
  margin: 0 30px !important;
}
.van-uploader__preview {
  position: relative;
  width: 105px !important;
  height: 105px !important;
}
.van-uploader__preview-image {
  display: block;
  width: 105px !important;
  height: 105px !important;
}
.van-uploader__preview-delete {
  position: absolute;
  top: -8px;
  right: -8px;
  color: #969799;
  font-size: 18px;
  background-color: #fff;
  border-radius: 100%;
}
.van-uploader__input{
  width: 100px !important;
  height: 100px !important;
}
.van-uploader__upload{
  width: 100px !important; 
  height: 100px !important;
}
</style>