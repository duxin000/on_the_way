<template>
    <div>
        <header-show></header-show>
        <lunbo></lunbo>
        <title-show></title-show>
        <recommend></recommend>
    </div>
</template>

<script>
import Lunbo from "../../components/dx/Lunbo.vue"  //轮播
import Recommend from "../../components/dx/Recommend.vue"  //推荐
import Title from "../../components/dx/Title.vue"  //标题
import Header from "../../components/dx/header.vue"  //头部导航

export default {
    components:{
        "header-show":Header,
        "lunbo":Lunbo,
        "title-show":Title,
        "recommend":Recommend,
    }
}
</script>
