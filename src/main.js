import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import MintUI from "mint-ui"
import 'mint-ui/lib/style.css'
Vue.use(MintUI);

import Vant from 'vant';
import 'vant/lib/index.css';
Vue.use(Vant);
import { Uploader } from 'vant';
Vue.use(Uploader);

import { Tab, Tabs } from 'vant';  //引用vant标签页
Vue.use(Tab).use(Tabs);
import { Field } from 'vant';      //引用vant输入框
Vue.use(Field);
Vue.config.productionTip = false

import axios from 'axios'
axios.defaults.baseURL='http://127.0.0.1:5050/'

axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
