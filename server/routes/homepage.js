const express=require("express");
var router=express.Router();
var pool=require("../pool");
//轮播路径
router.get("/home",(req,res)=>{
   var sql = "SELECT img FROM yxk_chart";
   pool.query(sql,(err,result)=>{
     if (err) throw err;
     res.send(result);
   })
})
module.exports = router;