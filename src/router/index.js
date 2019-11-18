import Vue from 'vue'
import VueRouter from 'vue-router'

//轮播
//http://127.0.0.1:8080/#/Lunbo
//http://127.0.0.1:8080/#/Footer
//http://127.0.0.1:8080/#/Recommend
//http://127.0.0.1:8080/#/Title
//http://127.0.0.1:8080/#/Header
Vue.use(VueRouter)
//子组件
// import Lunbo from "../components/dx/Lunbo.vue"  //轮播
import Footer from "../components/dx/Footer.vue"  //底部
// import Recommend from "../components/dx/Recommend.vue"  //推荐
// import Title from "../components/dx/Title.vue"  //标题
// import Header from "../components/dx/Header.vue"  //头部导航
//页面组件
import index from "../views/dx/index.vue"  //头部导航
import Upload from "../views/wz/Upload.vue"  //上传
const routes = [
    // {path: '/Lunbo', component: Lunbo},
    {path: '/', component: Footer},
    // {path: '/Recommend', component: Recommend},
    // {path: '/Title', component: Title},
    // {path: '/Header', component: Header},
    {path: '/index', component: index},
    {path: '/Upload', component:Upload}
]
const router = new VueRouter({
  routes
})
export default router;


