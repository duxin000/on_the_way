<template>
  <div class="container">
    <!-- 发布内容 -->
    <div>
      <span>{{pdesc}}</span>
    </div>
    <div>
      <img src="`${psrc}`" alt="">
    </div>
    <div>
      <span>{{upTime}}</span>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      pdesc:"大家好",
      psrc:"../../../serve/public/upload/1574422329972_1.jpg",
      upTime:"2.3"
    }
  }
}
</script>
<style scoped>
  
</style>