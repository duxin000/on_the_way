const express=require("express");
var router=express.Router();
var pool=require("../pool");
//轮播路径
router.get("/home",(req,res)=>{
  var chart_id=req.query.id;
   var sql = "SELECT img FROM yxk_chart where chart_id=? ";
   pool.query(sql,[chart_id],(err,result)=>{
     if (err) throw err;
     res.send(result);
   })
})
module.exports = router;