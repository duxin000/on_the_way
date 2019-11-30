<template>
    <div>
        <!-- 1.父元素 -->
        <mt-tab-container v-model="active">
            <!-- 2.子元素 -->
            <mt-tab-container-item id="tab1">
                <index></index>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                <community-head></community-head>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
                <upload></upload>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                <circles-show></circles-show> 
            </mt-tab-container-item>
            <mt-tab-container-item id="tab5">
                <personal></personal>
            </mt-tab-container-item>
        </mt-tab-container>

        <mt-tabbar class="footer" fixed v-model="active">
            <!-- 按钮一 -->
            <mt-tab-item id="tab1">
                <!--            图片               文字 -->
                <img slot="icon" src="../../../public/imgs/dx/shouye.png">首页
            </mt-tab-item>
            <mt-tab-item id="tab2">
                <img slot="icon" src="../../../public/imgs/dx/tuijian.png">推荐
            </mt-tab-item>
            <mt-tab-item id="tab3">
                <img @click="upload" slot="icon" src="../../../public/imgs/dx/ziyuan.png">上传
            </mt-tab-item>
            <mt-tab-item id="tab4">
                <img @click="upload" slot="icon" src="../../../public/imgs/dx/shequ.png">社区
            </mt-tab-item>
            <mt-tab-item id="tab5">
                <img @click="click1" slot="icon" src="../../../public/imgs/dx/gerenzhongxin.png"> <span @click="click1">个人中心</span> 
            </mt-tab-item>

        </mt-tabbar>
    </div>
</template>

<script>
    import index from "../../views/dx/index.vue"  //头部导航
    import Recommend from "./Recommend.vue"  //推荐
    import Communityhead from '../../views/dx/Community_head.vue'  //社区
    import Personal from '../../views/wyf/Personal.vue'  //个人主页
    import upload from '../../views/wz/upload.vue'  //个人主页
    import Circles from '../../views/wz/Circles.vue'
    export default {
        data() {
            return {
                active: "tab1"
            }
        },
        methods: {
            getA(event) {
                //功能：获取自定义属性赋值active
                //1.在参数中添加值event
                //2.获取自定义属性id
                var id = event.target.dataset.id;
                //3.将属性值赋值active    
                this.active = id;
            },
            upload() {
                var url = "users/person/";
                this.axios.get(url).then(res => {
                    if (res.data.code == -1) {
                        this.$messagebox('消息', '请先登录');
                        this.$router.push("/Login");
                    }
                })
            },
            click1() {
                var url = "users/person/";
                this.axios.get(url).then(res => {
                    if (res.data.code == -1) {
                        this.$messagebox('消息', '请先登录');
                       this.$router.push("/Login");
                    }
                })
            },
        },
        components: {
            "index": index,
            "recommend": Recommend,
            "community-head": Communityhead,
            "personal": Personal,
            "upload": upload,
            "circles-show":Circles
        }
    }
</script>


<style scoped>
    .footer {
        background: #fdf4e5;
    }
</style>