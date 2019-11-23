<template>
    <div class="rec">
        <div v-for="(value,i) of lists" :key="i">
            <router-link to="/Detail">
                <img class="pic" src="../../../public/imgs/dx/Recommend1.jpg" alt="">
            </router-link>
                <p class="rec-1">{{value.title}}</p>
                <div class="rec-2">
                    <span>摄影游</span>&lt;丽江集合解散&gt; {{value.subtitle}}
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
            var url = "homepage/list/";
            var obj={detail_id:1};
            this.axios.get(url,{params:obj}).then(res => {
                this.lists = res.data;
                console.log(this.lists);
                console.log(1)
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
    .rec>div{
        margin: 0 auto;
        width: 98%;
        margin-bottom: 10px;
        background: #fff;
    }
    .pic{
        width: 100%;
    }
    .rec-1{
        display: block;
        padding: 0 10px;
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


