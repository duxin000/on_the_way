<template>
    <div class="rec">
        <div v-for="(value,i) of lists" :key="i">
            <router-link :to="`/Detail/${value.detail_id}`">
                <img class="pic" :src="`http://127.0.0.1:5050/${value.way}`" alt="">
            </router-link>
                <p class="rec-1">{{value.title}}</p>
                <div class="rec-2">
                    <span>摄影游</span>  {{value.subtitle}}
                </div>  
        </div>      
    </div>
</template>

<script>
export default {
    data() {
        return {
            lists: []
        }
    },
    methods: {
        abc() {
            var url = "homepage/listMove/";
            this.axios.get(url).then(res => {
                this.lists = res.data;
                //console.log(this.lists);
                //console.log(1)
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
    .rec{
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }
    .rec>div{
        margin: 0 auto;
        width: 49%;
        margin-bottom: 10px;
        background: #fff;
        float: left;
    }
    .pic{
        width: 100%;
        height: 120px;
        border-radius: 15px;
    }
    .rec-1{
        display: block;
        padding: 0 5px;
        font-size: 16px;
        color: #000;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
    }
    .rec-2{
        padding: 3px 11px 5px 11px;
        font-size: 14px;
        color: #b4b4b4;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
    }
    .rec-2>span{
        color: #fff;
        background: #f68b6e;
        padding: 0 3px;
        margin-right: 5px;
    }
</style>


