<template>
    <div>
        <header-show></header-show>
        <div class="main">
            <lunbo></lunbo>
            <title-show></title-show>
            <recommend></recommend>
        </div> 
    </div>
</template>

<script>
import Lunbo from "../../components/dx/Lunbo.vue"  //轮播
import Recommend from "../../components/dx/Recommend.vue"  //推荐
import Title from "../../components/dx/Title.vue"  //标题
import Header from "../../components/dx/Header.vue"  //头部导航

export default {
    components:{
        "header-show":Header,
        "lunbo":Lunbo,
        "title-show":Title,
        "recommend":Recommend,
    }
}
</script>

<style scoped>

</style>
