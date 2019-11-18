<template>
  <div>  
    <textarea name="" id="" cols="30" rows="10"></textarea>
    
    <van-uploader v-model="fileList" multiple :max-count="9"/>
  </div>
</template>
<script>
export default {
  data() {
    return {
      fileList: [],
    }
  },
}
</script>
<style>
</style>