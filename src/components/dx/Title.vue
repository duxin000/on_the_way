<template>
    <div class="title">
        <div class="title_bg">
            <a href="javascript:;"></a>
        </div>
        <div class="title_text1">
            热门推荐
        </div>
        <div class="title_text2">
            体验最有灵感的摄影风采
        </div>
    </div>
</template>

<script>
export default {
    
}
</script>

<style scoped>
    .title{
        position: relative;
        width: 100%;
        height:80px;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .title_bg{
        position: absolute;
        background-image: url(../../../public/imgs/dx/bg.png);
        width: 90%;
        height: 80px;
        left: 5%;
        background-size: 100%;
        
    }
    .title_text1{
        position: absolute;
        left: 45px;
        top: 13px;
        font-size: 18px;
        color: #fff;
    }
    .title_text2{
        position: absolute;
        top: 43px;
        left: 45px;
        font-size: 15px;
        color: #ddd;
    }
</style>





