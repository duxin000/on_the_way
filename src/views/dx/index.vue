<template>
    <div>
        <header-show></header-show>
        <div class="main">
            <lunbo></lunbo>
            <title-show></title-show>
            <landscape></landscape>
            <recommend></recommend>
            <list-show></list-show>
            <top-show></top-show>
        </div>   
    </div>
</template>

<script>
import Lunbo from "../../components/dx/Lunbo.vue"  //轮播
import Recommend from "../../components/dx/Recommend.vue"  //推荐
import Title from "../../components/dx/Title.vue"  //标题
import Header from "../../components/dx/Header.vue"  //头部导航
import List from "../../components/dx/List.vue"  //头部导航
import Landscape from "../../components/dx/Landscape.vue"  //横行滑动
import Top from "../../components/dx/Top.vue"  //横行滑动

export default {
    components:{
        "header-show":Header,
        "lunbo":Lunbo,
        "title-show":Title,
        "recommend":Recommend,
        "list-show":List,
        "landscape":Landscape,
        "top-show":Top
    }
}
</script>

<style scoped>

</style>
