<template>
<div class="hometop">
  <div class="header">
    <!-- 首页头部 -->
    <div class="header_img">
      <img src="../../../public/imgs/dx/logo2_white.png" alt="">
    </div>
    <div class="header_input">
      <input type="text">
    </div>
    <div class="header_classily">
      <img id="more" @click="change" src="../../../public/imgs/dx/caidan.png" alt="">
    </div>
  </div>
  <div class="more_list" style="display:none" v-show="downicon" @click="change">
      <p>热门推荐</p >
      <router-link  v-for="(value,i) of scenery" :key="i" :to="`/Detail/${value.sid}`">{{value.sname}}</router-link>
  </div>
</div>
  
</template>
<script>
export default {
   props:["detail_id"],//自动获得地址栏传来的lid参数值
    data(){
        return{
            downicon:false,
            lists: [],
            scenery: []     //风景推荐
        }
    },
    methods:{
        abc() {
            var url = "homepage/listMove/";
            this.axios.get(url).then(res => {
                this.lists = res.data;
                //console.log(this.lists);
                //console.log(1)
            }).catch(err => {
                console.log(err);
            })
        },
        acc() {
            var url = "homepage/class/";
            this.axios.get(url).then(res => {
                this.scenery = res.data;
                //console.log(this.eeee);
                //console.log(1)
            }).catch(err => {
                console.log(err);
            })
        },
        change(){
            this.downicon = !this.downicon;
        },
    },
    created() {
        this.abc();
        this.acc();
    }
}
</script>


<style scoped>
  .header{
    position: fixed;
    display: flex;
    justify-content: space-between;
    background: #2971d5;
    align-items: center;
    height: 50px;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1;
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
    width: 200px;
    text-align: center;
    margin-right: 40px;
  }
  .header_input input{
    width: 100%;
    height: 30px;
    padding: 0 10px;
    border:1px solid #ddd;
    border-radius: 3px;
    background-image: url(../../../public/imgs/dx/sousuo.png);
    background-size: 25px 25px;
    background-repeat:no-repeat;
    background-position: right center;
  }
  .header_classily{
    padding-top: 4px;
    padding-right: 25px;

  }
  .header_classily img{
    width: 25px;
    height: 25px;
  }
  .more_list{
    position:fixed;
    top: 50px;
    right: 0;
    bottom: 55px;
    left: 0;
    width: 100%;
    background:rgba(0, 0, 0,.7);
    z-index: 10;
  }
  .more_list p{
    font-size:32px;
    color:#fff;
    display:block;
    font-weight: bold;
    text-align: center;
  }
  .more_list a{
    display:block;
    width:49%;
    padding-left: 2px;
    height:25px;
    line-height: 25px;
    border:1px solid #fff;
    border-radius: 8px;
    text-decoration: none;
    color:#fff;
    text-align: center;
    margin: 10px auto;

  }
</style>