<template>
  <div>
    <div class="d1" v-for="(item,i) of list" :key="i">
      <div>
        <p class="p1">{{item.collect_title}}</p>
        <p>地点：{{item.collect_place}}</p>
        <p>最佳游玩季节:{{item.collect_season}}</p>
      </div>
      <div>
        <p>{{item.collect_way}}</p>
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
    width: 80%;
    margin: 20px auto;
    border-radius: 10px;
  }

  .p1 {
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
  }
</style>