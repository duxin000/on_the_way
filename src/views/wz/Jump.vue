<template>
    <div  class="container">
        <div class="title_span">
            <span>记 住 美 好 瞬 间</span>
        </div>
        <div>
            <img class="imgs" src="../../../public/imgs/wz/fanhui.png" alt="">
        </div>
        <p class="p1">发布成功</p>
        <div>
            <router-link to="/">
                <mt-button class="button">返回首页</mt-button>
            </router-link>
        </div>
    </div>
</template>


<script>
export default {
    
}
</script>

<style scoped>
    .title_span {
        height: 50px;
        background: #2971D5;
        line-height: 50px;
        font-size: 18px;
        font-weight: bold;
        text-align: center;
        color:#fff;
    }
    .imgs{
        display: block;
        width: 100px;
        
        margin: 0 auto;
        margin-top: 150px;
    }
    .p1{
        text-align: center;
        font-size: 25px;
        color: rgb(81, 69, 185);
    }
    .button{
        position: fixed;
        top: 550px;
        width: 100%;
        height: 50px;
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 10px;
    }
</style>
