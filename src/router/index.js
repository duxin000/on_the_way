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
//http://127.0.0.1:8080/#/Jump
//http://127.0.0.1:8080/#/List
//http://127.0.0.1:8080/#/Lunbo_detail
//http://127.0.0.1:8080/#/Landscape
//http://127.0.0.1:8080/#/Top
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
import Circle from "../views/wz/Circle.vue"  //发布内容
import Jump from "../views/wz/Jump.vue"  //发布跳转
import List from "../components/dx/List.vue"  //首页新增推荐
import Circles from '../views/wz/Circles.vue'  //所有上传内容
import Lunbo_detail from '../views/dx/Lunbo_detail.vue'  //首页轮播详情
//import Seek from "../views/dx/Seek.vue"       //详情轮播图
import Comment from '../components/wz/Comment.vue'  //评论组件
import CommentText from '../components/wz/CommentText.vue' //评论显示组件
import Broadcast from '../components/wz/Broadcast.vue' //广播组件
import Landscape from '../components/dx/Landscape.vue' //首页左侧滑动
import Top from '../components/dx/Top.vue' //返回顶部
const routes = [
    // {path: '/Lunbo', component: Lunbo},
    {path:'/Broadcast',component:Broadcast},
    {path:'/CommentText',component:CommentText},
    {path:'/Comment',component:Comment},
    {path: '/Circles',component:Circles}, //所有上传内容
    {path: '/', component: Footer},
    {path: '/Recommend', component: Recommend},
    // {path: '/Title', component: Title},
    // {path: '/Header', component: Header},
    {path: '/index1', component: index},
    {path: '/Upload', component:Upload},
    {path: '/Community_head', component:Community_head},
    {path: '/Detail/:detail_id', component:Detail,props:true},  //详情头部
    {path: '/Login', component:Login},
    {path: '/Personal', component:Personal},
    {path: '/Logon', component:Logon},
    {path: '/Slide', component:Slide},
    {path: '/Detail_lunbo/:detail_id', component:Detail_lunbo,props:true},
    {path: '/Circle',component:Circle}, //发布内容
    {path: '/Seek', component:Seek},
    {path: '/Jump', component:Jump},    //发布跳转
    {path: '/List', component:List},    //首页新增推荐
    {path: '/Lunbo_detail', component:Lunbo_detail},    //首页轮播详情
    {path: '/Landscape', component:Landscape},    //首页左侧滑动
    {path: '/Top', component:Top},    //返回顶部
]
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
  return originalPush.call(this, location).catch(err => err)
}
const router = new VueRouter({
  routes
})
export default router;


