    <template>
    <div class="d1">
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
                this.msg = '验证成功'
                this.$toast("登录成功");
                this.$router.push("/");
            },
            onFail(){
                this.msg = '验证失败'
                this.$messagebox('消息', "请重新验证"); return;
            },
            onRefresh(){
                this.msg = '请验证'
            }
        }
    }
</script>
<style scoped>
   .d1{
      height: 300px;
      width: 310px;
      margin: 0 auto;
   }
  
</style>

