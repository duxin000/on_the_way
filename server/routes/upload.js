var express=require("express");
var router=express.Router();
var pool=require("../pool");
var fs = require('fs'); 

//上传
router.post("/upload",(req,res)=>{
  var obj=req.body;
  var t = new Date().getTime();
 // t=t.getFullYear();
  var str="";//
  // console.log(obj.count)
  for(var i=0;i<obj.count;i++){
    var base64Data = obj["content["+i+"]"].replace(/^data:image\/\w+;base64,/, "");
    var dataBuffer = new Buffer(base64Data, 'base64');
    str+="./public/upload/"+t+"_"+(i+1)+".jpg" //图片路径
    fs.appendFile("./public/upload/"+t+"_"+(i+1)+".jpg", dataBuffer, function(err) {
        if(err){
          res.send(err);
        }else{
          console.log("成功")
        }
    });
  }
  var sql='INSERT INTO yxk_upload set uid=?,pdesc=?,psrc=?,upTime=?';
  pool.query(sql,[obj.uid,obj.msg,str,obj.time],(err,result)=>{
    //console.log(result)
    if(err) throw err;
    console.log(result);
    if(result.affectedRows>0){
      res.send({code:2,msg:'成功'})
    }else{
      res.send({code:-3,msg:'失败，请重试'})
    }
  })
})
// 判断用户是否登录
router.get("/isLogin",(req,res)=>{
  // 1.获取session中的uid
  var uid = req.session.uid;
  console.log("uid="+uid)
  // 2.如果uid为空
  // 3.请登录
  if(uid===undefined){
    res.send({code:-1,msg:"请登录"});
    //this.$toast("请登录")
    return;
  }else{
    res.send({code:200,msg:uid});
    return;
  }
})
module.exports=router;