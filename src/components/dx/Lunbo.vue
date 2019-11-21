<template>
    <div class="lunbo">
        <mt-swipe :auto="5000" :show-indicators="false">
            <mt-swipe-item v-for="(item,i) of list" :key="i">
                <img :src="`http://127.0.0.1:5050/${item.img}`" alt="">
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
                this.axios.get(url).then(res => {
                    this.list = res.data;
                    console.log(this.list);
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