<template>
    <div class="d1">
        <van-swipe @change="onChange" :auto="5000" :show-indicators="false">
            <van-swipe-item  v-for="(item,i) of list" :key="i">
                <img :src="`http://127.0.0.1:5050/${item.img}`" alt="">
            </van-swipe-item>
            <div class="custom-indicator" slot="indicator">
                {{ current + 1 }}/4
            </div>
        </van-swipe>
    </div>
</template>

<script>
    export default {
    props:["detail_id"],//自动获得地址栏传来的lid参数值
    data() {
        return {
            current: 0,
            list:[]
        }
    },
    methods: {
        abc() {
            //console.log(this.detail_id);
            var url = "homepage/home/";
            var obj = {chart_id:this.detail_id};
            this.axios.get(url,{params:obj}).then(res => {
                this.list = res.data;
                //console.log(this.list);
            }).catch(err => {
                console.log(err);
            })
        },
        onChange(index) {
        this.current = index;
            }
        },
         created() {
            this.abc();
        }   
    }
</script>

<style scoped>
    .d1{
        width: 98%;
        height: 180px;
        margin: 0 auto;
        position: relative;
        margin-top: 3px;
    }
    .d1 img{
        width: 100%;
        height: 190px;
    }
    .custom-indicator{
        position: absolute;
        right: 10px;
        top: 160px;
    }
</style>


