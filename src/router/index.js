import Vue from 'vue'
import VueRouter from 'vue-router'

//轮播
//http://127.0.0.1:8081/#/Lunbo
//http://127.0.0.1:8081/#/Footer
//http://127.0.0.1:8081/#/Recommend
//http://127.0.0.1:8081/#/Title
//http://127.0.0.1:8081/#/header
Vue.use(VueRouter)

import Lunbo from "../components/dx/Lunbo.vue"  //轮播
import Footer from "../components/dx/Footer.vue"  //底部
import Recommend from "../components/dx/Recommend.vue"  //推荐
import Title from "../components/dx/Title.vue"  //标题
import header from "../components/dx/header.vue"  //头部导航
import Upload from "../components/wz/Upload.vue"  //上传

const routes = [ 
  {path: '/Lunbo', component: Lunbo},
    {path: '/Footer', component: Footer},
    {path: '/Recommend', component: Recommend},
    {path: '/Title', component: Title},
    {path: '/header', component: header},
    {path: '/Upload', component:Upload}
]

const router = new VueRouter({
  routes
})

export default router;


