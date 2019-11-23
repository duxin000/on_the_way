//使用express构建web服务器 
const express = require('express');
const session = require("express-session");
const bodyParser = require('body-parser');
const cors=require("cors");
var multer=require('multer');
var fs=require('fs');
//引用路由模块
var users=require("./routes/users");
var homepage=require("./routes/homepage");
var upload = require("./routes/upload");
var app = express();

app.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true
}))
app.listen(5050);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
//7:配置session环境
app.use(session({
   secret:"128位安全字符串",
   resave:true,         //请求更新数据
   saveUninitialized:true//保存初始数据
}));
app.use(bodyParser.json({limit: "50mb"}));
app.use(bodyParser.urlencoded({limit: "50mb", extended:true}));
app.use("/users",users);
app.use("/homepage",homepage);
app.use("/upload",upload);
