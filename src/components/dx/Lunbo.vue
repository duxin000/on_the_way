<template>
    <div class="lunbo">
        <mt-swipe :auto="5000" :show-indicators="false">
            <mt-swipe-item v-for="(item,i) of list" :key="i">
                <router-link to="/Lunbo_detail">
                    <img :src="`http://127.0.0.1:5050/${item.img}`" alt="">
                </router-link>
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                list: []
            }
        },
        methods: {
            abc() {
                var url = "homepage/home/";
                var obj={chart_id:14};
                this.axios.get(url,{params:obj}).then(res => {
                    this.list = res.data;
                }).catch(err => {
                    console.log(err);
                })
            }
        },
        created() {
            this.abc();
        },
    }
</script>

<style scoped>
    .lunbo {
        margin: 0 auto;
        height: 200px;
        width: 98%;
        margin-top: 3px;
    }
    .lunbo img {
        width: 100%;
        height: 200px;
    }
</style>