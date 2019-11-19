<template>
    <div  class="header">
        <div class="top">
            说&nbsp;走&nbsp;就&nbsp;走&nbsp;的&nbsp;旅&nbsp;行
        </div>
        <div class="main1">
            <div>
                <lunbo></lunbo>
            </div>
            <div>
                <p class="rec-1">[徒步雨崩]游侠客高海拔徒步TOP1 丽江-梅里雪山-雨崩村-冰湖神瀑-金沙江大拐弯-香格里拉-虎跳峡，5/7日轻装徒步之旅（免费借用登山杖、颁发纪念奖牌、全程标间独卫）</p>
                <div class="rec-2">
                    <span>摄影游</span>&lt;丽江集合解散&gt; 梅里内转，涉足荒野，朝圣神山卡瓦格博
                </div>
            </div>
            <div class="title-1">
                <img src="../../../public/imgs/dx/dingwei.png" alt="">
                <span class="title-1-1">丽江</span>
                <span class="title-1-2">最佳观赏时间：夏季</span>
            </div>
        </div>
    </div>
</template>


<script>
import Lunbo from "../../components/dx/Lunbo.vue"  //轮播
export default {
    components:{
        "lunbo":Lunbo,
    }
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
        background: #fd9231;
        font-size: 18px;
        line-height: 50px;
        height: 50px;
        text-align: center;
        font-weight: bold;
        color: #fff;
    }
    .rec-1{
        display: block;
        padding: 0 10px;
        font-size: 16px;
        color: #000;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
    }
    .rec-2{
        padding: 3px 11px 5px 11px;
        font-size: 16px;
        color:#999;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;

    }
    .rec-2>span{
        color: #fff;
        background: #f68b6e;
        padding: 0 3px;
        margin-right: 5px;
    }
    .title-1{
        height: 32px;
        padding: 5px;
    }
    .title-1 img{
        vertical-align: middle;
        margin-left: 15px;
        padding-bottom: 5px;
        width: 28px;
        height: 28px;
    }
    .title-1-1{
        margin-left: 10px;
    }
    .title-1-2{
        margin-left: 50px;
    }
</style>
