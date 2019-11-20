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
            <div  class="title-2">
                <p>早上自由逛【和顺古镇】静谧的晨曦，适时出发途径【龙江特大桥】（上午桥下有云海的几率较大），抵达【潞江坝】后，开始了真正意义上的怒江之旅，沿江北上，途径怒江自治州州府所在地【六库】，AA午餐。继续前行，精心挑选怒江上宽而惊险的一段，特别安排</p>
            </div>
            <div class="title-3">
                <img src="../../../public/imgs/dx/dianzan.png" alt="">
                摄点：景观详情
            </div>
            <div class="title-4">
                <img src="../../../public/imgs/dx/detail1.jpg" alt="">
                <img src="../../../public/imgs/dx/detail2.jpg" alt="">
                <img src="../../../public/imgs/dx/detail3.jpg" alt="">
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
    .title-2{
        padding-left: 10px;
        padding-right: 10px;
    }
    .title-3{
        width: 96%;
        margin: 0 auto;
        padding-top: 5px;
        padding-bottom: 5px;
        color: #ff9b00;
        border: 1px dashed #fcbc00;
        background: #fffde1;
    }
    .title-3 img{
        vertical-align: middle;
        margin-left: 10px;
        padding-bottom: 5px;
        width: 28px;
        height: 28px;
    }
    .title-4{
        padding-top: 10px;
        width: 98%;
        margin: 0 auto;
    }
    .title-4 img{
        width: 100%;
    }
</style>
