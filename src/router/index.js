import Vue from 'vue'
import VueRouter from 'vue-router'

//轮播
//http://127.0.0.1:8080/#/Lunbo
//http://127.0.0.1:8080/#/Footer
//http://127.0.0.1:8080/#/Recommend
//http://127.0.0.1:8080/#/Title
//http://127.0.0.1:8080/#/Header
//http://127.0.0.1:8080/#/Upload
//http://127.0.0.1:8080/#/Community_head
//http://127.0.0.1:8080/#/Detail
//http://127.0.0.1:8080/#/Slide
//http://127.0.0.1:8080/#/Detail_lunbo
//http://127.0.0.1:8080/#/Seek
Vue.use(VueRouter)
//子组件
// import Lunbo from "../components/dx/Lunbo.vue"  //轮播
import Footer from "../components/dx/Footer.vue"  //底部
import Recommend from "../components/dx/Recommend.vue"  //推荐
// import Title from "../components/dx/Title.vue"  //标题
// import Header from "../components/dx/Header.vue"  //头部导航
//页面组件
import index from "../views/dx/index.vue"  //头部导航
import Upload from "../views/wz/upload.vue"  //上传
import Community_head from "../views/dx/Community_head.vue"  //社区头部
import Detail from "../views/dx/Detail.vue"  //详情头部
import Login from "../views/wyf/Login.vue"      //登录
import Personal from "../views/wyf/Personal.vue"  //个人主页
import Logon from "../views/wyf/Logon.vue"       //注册
import Slide from "../components/dx/Slide.vue"       //滑动解锁
import Detail_lunbo from "../components/dx/Detail_lunbo.vue"       //详情轮播图
import Seek from "../views/dx/Seek.vue"       //搜索框
const routes = [
    // {path: '/Lunbo', component: Lunbo},
    {path: '/', component: Footer},
    {path: '/Recommend', component: Recommend},
    // {path: '/Title', component: Title},
    // {path: '/Header', component: Header},
    {path: '/index1', component: index},
    {path: '/Upload', component:Upload},
    {path: '/Community_head', component:Community_head},
    {path: '/Detail', component:Detail,},  //详情头部
    {path: '/Login', component:Login},
    {path: '/Personal', component:Personal},
    {path: '/Logon', component:Logon},
    {path: '/Slide', component:Slide},
    {path: '/Detail_lunbo', component:Detail_lunbo},
    {path: '/Seek', component:Seek},
]
const router = new VueRouter({
  routes
})
export default router;


