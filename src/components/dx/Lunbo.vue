<template>
    <div class="lunbo">
        <mt-swipe :auto="5000"  :show-indicators="false">
            <mt-swipe-item>
                <img src="../../../public/imgs/dx/1.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../../public/imgs/dx/2.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../../public/imgs/dx/3.jpg" alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img src="../../../public/imgs/dx/4.jpg" alt="">
            </mt-swipe-item>
        </mt-swipe>
    </div>
</template> 

<script>
export default {
    data() {
        return {
            
        }  
    },
}
</script>

<style scoped>
    .lunbo{
        margin: 0 auto;
        height: 200px;
        width: 98%;
        margin-top: 5px;
    }
    .lunbo img{
        width: 100%;
        height: 200px;
    }
</style>


