<template>
    <div class="header">
        <div class="top">
            社&nbsp;&nbsp;区
        </div>
        <div class="main">
            <recommend></recommend>
        </div>
    </div>
</template>


<script>
import Recommend from "../../components/dx/Recommend.vue"  //推荐
export default {
    components:{
        "recommend":Recommend,
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
        background: #fdf4e5;
        font-size: 15px;
        line-height: 50px;
        height: 50px;
        text-align: center;
    }
</style>


