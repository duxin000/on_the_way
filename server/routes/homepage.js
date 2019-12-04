const express=require("express");
var router=express.Router();
var pool=require("../pool");
//轮播路径
router.get("/home",(req,res)=>{
  var chart_id=req.query.chart_id;
   var sql = "SELECT img FROM yxk_chart where chart_id=? ";
   pool.query(sql,[chart_id],(err,result)=>{
     if (err) throw err;
     res.send(result);
   })
})
//详情页路径
router.get("/list",(req,res)=>{
  var detail_id=req.query.detail_id;
   var sql = "SELECT title,subtitle,place,season,details,way  FROM yxk_detail where detail_id=?";
   pool.query(sql,[detail_id],(err,result)=>{
     if (err) throw err;
     res.send(result);
   })
})
//查询所有接口路径
router.get("/listMove",(req,res)=>{
   var sql = "SELECT * FROM yxk_detail";
   pool.query(sql,(err,result)=>{
     if (err) throw err;
     res.send(result);
   })
})
//查询景点分类
router.get("/class",(req,res)=>{
   var sql = "SELECT * FROM yxk_sort";
   pool.query(sql,(err,result)=>{
     if (err) throw err;
     res.send(result);
   })
})

module.exports = router;