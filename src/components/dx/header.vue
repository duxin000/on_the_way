<template>
  <div class="header">
    <!-- 首页头部 -->
    <div class="header_img">
      <img src="../../../public/imgs/dx/logo.jpg" alt="">
    </div>
    <div class="header_input">
      <input type="text">
    </div>
    <div class="header_classily">
      <img src="../../../public/imgs/dx/anniu.png" alt="">
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>



<style scoped>
  .header{
    display: flex;
    justify-content: space-between;
    background: #fdf4e5;
    align-items: center;
    height: 70px;
  }
  .header_img{
    width: 100px;
    margin-left: 10px;
    text-align: center;
    padding-top: 5px;
    padding-left: 5px;
  }
  .header_img img{
    width: 95%;
    height: 30px;
  }
  .header_input{
    width: 180px;
    text-align: center;
    margin-right: 60px;
  }
  .header_input input{
    width: 100%;
    height: 30px;
    padding: 0 10px;
    border:0;
  }
  .header_classily{
    padding-top: 4px;
    margin-right: 10px;
  }
  .header_classily img{
    width: 25px;
    height: 25px;
  }
</style>