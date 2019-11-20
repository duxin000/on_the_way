//使用express构建web服务器 
const express = require('express');
const session = require("express-session");
const bodyParser = require('body-parser');
const cors=require("cors");
var multer=require('multer');
var fs=require('fs');
//引用路由模块
var users=require("./routes/users");

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

//创建上传图片保存的路径
var createFolder = function(folder){
  try{
   fs.accessSync(folder); 
  }catch(e){
   fs.mkdirSync(folder);
  } 
 };
 var uploadFolder = './public/upload';
 createFolder(uploadFolder);

// 通过 filename 属性定制
var storage = multer.diskStorage({
  //目标:目录
  destination: function (req, file, cb) {
    cb(null, uploadFolder);    // 保存的路径，
  },
  filename: function (req, file, cb) {
    // 将保存文件名设置为 字段名 + 时间戳
    var idx = file.originalname.lastIndexOf('.');
    var suff = file.originalname.substring(idx);
    cb(null, file.fieldname + '-' + Date.now()+suff); 
  },
});
// 通过 storage 选项来对 上传行为 进行定制化
var upload = multer({ storage: storage })
app.post('/upload', upload.single('logo'), function(req, res, next){
    var file = req.file;
    res.send({ret_code: '0'});
});

app.use("/users",users);
