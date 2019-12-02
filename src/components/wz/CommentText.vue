<template>
  <div>
    <div class="comment">
      <p class="c_name">姓名</p>
      <p class="c_time">10:10</p>
    </div>
    <div class="c_txt">内容</div>
  </div>
</template>
<script>
export default {
  data(){
    return{

    }
  },

}
</script>
<style scoped>
  .comment{
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .c_name{
    margin-left: 15px;
    color: blue;
    font-weight: bold;
    font-size: 20px;
  }
  .c_time{
    margin-right: 15px;
  }
  .c_txt{
    padding-left: 15px;
    padding-bottom: 20px;
    border-bottom: 1px dashed gray;
    font-size: 20px;
    margin: 0;
  }
</style>