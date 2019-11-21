<template>
    <div class="header">
        <div class="top">
            社&nbsp;&nbsp;&nbsp;&nbsp;区
        </div>
        <van-notice-bar class="Notifier" text="王振是个铁憨憨，王振是个铁憨憨，王振是个铁憨憨王振是个铁憨憨王振是个铁憨憨" left-icon="volume-o"/>
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
            list: ["户外", "休闲","摄影", "外拍"],
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
        background: #1a4e97;
        font-size: 18px;
        line-height: 50px;
        height: 50px;
        text-align: center;
        font-weight: bold;
        color: #fff;
    }
    .body {
        margin: 0px auto 0 auto;
    }
    .Notifier{
        margin-top:50px;
    }
</style>


