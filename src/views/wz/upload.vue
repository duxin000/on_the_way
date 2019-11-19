<template>
  <div class="container">
    <div class="title">
      <span>记 住 美 好 瞬 间</span>
    </div>
    <div class="btn">
      <mt-button class="close">取消</mt-button>
      <mt-button>发布</mt-button>
    </div>

    <div class="applyInput">
      <textarea placeholder="这一刻的想法..." maxlength="300" v-model="desc" rows="5" />
      <p>{{t}}/300</p>
    </div>
    <van-uploader
      v-model="fileList"
      multiple
      :max-count="9"
      :after-read="afterRead"
      :before-read="beforeRead"
    />
  </div>
</template>
<script>
export default {
  data() {
    return {
      fileList: [],
      t: 0,
      desc: ""
    };
  },
  methods: {
    beforeRead(file) {
      if (file.type !== "image/jpeg") {
        this.$toast("请上传 jpg 格式图片");
        return false;
      }
      return true;
    },
    afterRead(file) {
      // 此时可以自行将文件上传至服务器
      console.log(file);
    }
  },
  watch: {
    desc() {
      this.t = this.desc.length;
    }
  }
};
</script>
<style>
.title {
  height: 50px;
  background: #fd9231;
  line-height: 50px;
  font-family: "宋体";
  font-size: 15px;
  text-align: center;
}
.btn {
  display: flex;
  justify-content: space-between;
  margin: 10px;
  border: 0;
}
.close {
  background-color: #000;
}
textarea {
  border: 0;
  margin-top: 10px;
}
.span_num {
  text-align: right;
}
textarea {
  width: 84%;
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