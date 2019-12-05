<template>
    <div class="slide">
        <div class="slide-box">
            <div class="slide-item">
                <div class="slide-title">布达拉</div>
            </div>
            <div class="slide-item1">
                <div class="slide-title">蒲甘</div>
            </div>
            <div class="slide-item2">
                <div class="slide-title">肯尼亚</div>
            </div>
            <div class="slide-item3">
                <div class="slide-title">珀斯</div>
            </div>
            <div class="slide-item4">
                <div class="slide-title">普吉岛</div>
            </div>
            <div class="slide-item5">
                <div class="slide-title">南非</div>
            </div>
            <div class="slide-item6">
                <div class="slide-title">埃及</div>
            </div>
            <div class="slide-item7">
                <div class="slide-title">日惹</div>
            </div>
            <div class="slide-item8">
                <div class="slide-title">布道石</div>
            </div>
        </div>
    </div>
</template>


<script>
export default {
    
}
</script>


<style scoped>
    .slide{
        margin-top: 5px;
        margin-bottom: 5px;
    }
    .slide-box { 
        overflow-x: scroll; 
        display: -webkit-box; 
    }
    .slide-item { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/1.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item1 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/2.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item2 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/3.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item3 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/4.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item4 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/5.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item5 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/6.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item6 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/7.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item7 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/8.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-item8 { 
        width: 130px; 
        height: 130px; 
        border: 1px solid #ccc; 
        border-radius: 10px;
        margin-left: 5px;
        margin-right: 5px; 
        background:url(../../../public/imgs/dx/landscape/9.png) no-repeat;
        background-size: cover;
        position: relative;
    }
    .slide-box::-webkit-scrollbar {
        width:0;
        height:0;
        display: none;
    }
    .slide-title{
       color: #fff;
        position: absolute;
        bottom: 0;
        width: 130px;
        height: 25px;
        line-height: 20px;
        background: rgba(0,0,0,.4);
        text-align: center;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden; 
    }
</style>
