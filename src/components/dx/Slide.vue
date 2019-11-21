<template>
    <div>
        <slide-verify :l="42"
            :r="10"
            :w="310"
            :h="155"
            @success="onSuccess"
            @fail="onFail"
            @refresh="onRefresh"
            :slider-text="text"
            ></slide-verify>
        <div>{{msg}}</div>
    </div>
</template>



<script>
    export default {
    name: 'App',
        data(){
            return {
                msg: '',
                text: '向右滑',
            }
        },
        methods: {
            onSuccess(){
                this.msg = '请登录'
            },
            onFail(){
                this.msg = ''
            },
            onRefresh(){
                this.msg = ''
            }
        }
    }
</script>


