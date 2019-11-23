<template>
    <div  class="header">
        <div class="top">
            <router-link to="/">
                <img src="../../../public/imgs/dx/fanhui.png" alt="">
            </router-link>
            说&nbsp;走&nbsp;就&nbsp;走&nbsp;的&nbsp;旅&nbsp;行
        </div>
        <div class="main1" v-for="(value,i) of lists" :key="i">
            <div>
                <Detail-lunbo :detail_id="detail_id"></Detail-lunbo>
            </div>
            <div>
                <p class="rec-1">{{value.title}}</p>
                <div class="rec-2">
                    <span>摄影游</span>&lt;丽江集合解散&gt; {{value.subtitle}}
                </div>
            </div>
            <div class="title-1">
                <img src="../../../public/imgs/dx/dingwei.png" alt="">
                <span class="title-1-1">{{value.place}}</span>
                <span class="title-1-2">最佳观赏时间：{{value.season}}</span>
            </div>
            <div  class="title-2">
                <p>{{value.details}}</p>
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
            <div class="title-3">
                <img src="../../../public/imgs/dx/comment.png" alt="">
                评论：网友评价
            </div>
            <div class="title-5">
                <textarea placeholder="请输入要评论的内容"></textarea>
            </div>
            <div class="title-6">
                <button>发布评论</button>
            </div>
            <div class="title-7">
                <div class="tit-left">
                    <router-link to="/" >
                        <img src="../../../public/imgs/dx/shouye.png" alt="">
                    </router-link>
                </div>
                <div class="tit-canter">
                    <button>加入收藏<img src="../../../public/imgs/dx/shoucang.png" alt=""></button>
                </div>
                <div class="tit-right">
                    <button>点赞<img src="../../../public/imgs/dx/dianzan2.png" alt=""></button>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
import Detail_lunbo from "../../components/dx/Detail_lunbo.vue"  //轮播
export default {
    props:["detail_id"],//自动获得地址栏传来的lid参数值
    data() {
        return {
            lists: []
        }
    },
    components:{
        "Detail-lunbo":Detail_lunbo,
    },
    methods: {
        abc() {
            var url = "homepage/list/";
            var obj={detail_id:this.detail_id};
            this.axios.get(url,{params:obj}).then(res => {
                this.lists = res.data;
                console.log(this.lists);
                // console.log(1)
            }).catch(err => {
                console.log(err);
            })
        }
    },
    created() {
        this.abc();
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
    .top img{
        position: absolute;
        left: 10px;
        top: 8px;
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
    .title-5{
        width: 96%;
        height: 80px;
        margin: 0 auto;
        outline: #e0e0e0;
        background-color: #fff;
        font-size: 16px;
        padding: 15px 2px;
        border: 1px solid #fcbc00;
        margin-top: 5px;
    }
    .textarea{
        width: 100%;
    }
    .title-6{
        text-align: center;
        margin-bottom: 20px;
    }
    .title-6 button{
        width: 96%;
        height: 40px;
        background: #fcbc00;
        border: none;
    }
    .title-7{
        width: 100%;
        height: 55px;
        margin-bottom: 10px;
    }
    .tit-left{
        float: left;
        width: 25%;
        text-align: center;
    }
    .tit-left img{
        width: 40px;
        height: 40px;
        margin-bottom: -30px;
    }
    .tit-canter{
        text-align: center;
        width: 50%;
        float: left;
        height: 55px;
    }
    .tit-canter img{
        margin-left: 20px;
        vertical-align: middle;
        padding-bottom: 2px;
    }
    .tit-canter button{
        width: 95%;
        height: 55px;
        border-radius: 8px;
        border: none;
    }
    .tit-right{
        width: 25%;
        float: left;
        text-align: center;
    }
    .tit-right img{
        vertical-align: middle;
        margin-left: 10px;
        padding-bottom: 5px;
    }
    .tit-right button{
        width: 95%;
        height: 55px;
        border-radius: 8px;
        border: none;
    }
</style>
