<template>
    <div class="header">
        <div class="top">
            推&nbsp;&nbsp;&nbsp;&nbsp;荐
        </div>
        <van-notice-bar class="Notifier" text="人生至少要有两次冲动，一为奋不顾身的爱情，一为说走就走的旅行" left-icon="volume-o"/>
        <div class="body">
            <van-tabs v-model="active" animated>
                <van-tab v-for="(item,i) of list" :key="i" :title="item ">
                    <recommend></recommend>
                </van-tab>
            </van-tabs>
        </div>
    </div>
</template>


<script>
import Recommend from "../../components/dx/Recommend.vue"  //推荐
export default {
    components:{
        "recommend":Recommend,
    },
    data() {
        return {
            active: 0,
            list: ["户外", "休闲"],
        }
    },
}
</script>

<style scoped>
    .header{
        position: relative;
    }
    .top{
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        background: #2971d5;
        font-size: 18px;
        line-height: 50px;
        height: 50px;
        text-align: center;
        font-weight: bold;
        color: #fff;
        z-index: 300;
    }
    .body {
        margin: 0px auto 0 auto;
    }
    .Notifier{
        margin-top:50px;
        z-index: 200;
    }
</style>


