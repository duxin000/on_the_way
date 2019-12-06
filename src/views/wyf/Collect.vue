<template>
  <div>
    <div class="d1" v-for="(item,i) of list" :key="i">
      <div class="d2">
        <p  class="p1">{{item.collect_title}}</p>
        <p style="font-size:14px">地点：{{item.collect_place}}</p>
        <p style="font-size:14px">最佳游玩季节:{{item.collect_season}}</p>
      </div>
      <div class="d3">
        <img class="i1" :src="`http://127.0.0.1:5050/${item.collect_way}`" alt="">
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        list: []
      }
    },
    methods: {
      begin() {
        var url = "users/inquiry/";
        this.axios.get(url).then(res => {
          console.log(res.data.code);
          this.list = res.data.code
        }).catch(err => {
          console.log(err)
        })
      }
    },
    created() {
      this.begin()
    },
  }
</script>
<style scoped>
  .d1 {
    box-shadow: 0px 0px 25px rgb(224, 221, 221);
    width: 90%;
    margin: 20px auto;
    border-radius: 8px;
    display: flex;
    justify-content:space-between;
  }
  .d2{
    width: 50%;
    padding-left: 10px;
  }
  .d3{
    width: 50%;
  }
  .p1 {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    font-weight: bold;
  }
  .i1{
    width: 160px;
    height:110px;
   margin-top: 5px;
   border-radius: 10px;
  }
</style>