<template>
    <div>
        <!-- 1.父元素 -->
        <mt-tab-container v-model="active">
            <!-- 2.子元素 -->
            <mt-tab-container-item id="tab1">
                消息
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                通讯录
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
                上传
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                社区
            </mt-tab-container-item>
            <mt-tab-container-item id="tab5">
                个人中心
            </mt-tab-container-item>
        </mt-tab-container>

        <mt-tabbar class="footer" fixed v-model="active">
            <!-- 按钮一 -->
            <mt-tab-item id="tab1">
                <!--            图片               文字 -->
                <img slot="icon" src="../../../public/imgs/dx/shouye.png">首页
            </mt-tab-item>
            <mt-tab-item id="tab2">
                <img slot="icon" src="../../../public/imgs/dx/shequ.png">社区
            </mt-tab-item>
            <mt-tab-item id="tab3">
                <img slot="icon" src="../../../public/imgs/dx/ziyuan.png">上传
            </mt-tab-item>
            <mt-tab-item id="tab4">
                <img slot="icon" src="../../../public/imgs/dx/shoucang.png">收藏
            </mt-tab-item>
            <mt-tab-item id="tab5">
                <img slot="icon" src="../../../public/imgs/dx/gerenzhongxin.png">个人中心
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>

<script>
export default {
    data() {
        return {
            active:"tab1"
        }
    },
    methods: {
        getA(event){
            //功能：获取自定义属性赋值active
            //1.在参数中添加值event
            //2.获取自定义属性id
            var id=event.target.dataset.id;
            //3.将属性值赋值active    
            this.active=id;
        },
    },
}
</script>


<style scoped>
    .footer{
        background:#fdf4e5;
    }
</style>
