var express = require("express");
var router = express.Router();
var pool = require("../pool");
// 用户登录
router.get("/login", (req, res) => {
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  var sql = "SELECT uid FROM yxk_login WHERE uname = ? AND upwd = md5(?)";
  pool.query(sql, [uname, upwd], (err, result) => {
    console.log(1);
    if (err) throw err;
    if (result.length == 0) {
      res.send({ code: -1, msg: "用户名或密码有误" });
    } else {
      var uid = result[0].uid;
      //将用户id保存session对象
      req.session.uid = uid;
      res.send({ code: 1, msg: "登录成功" });
    }
  })
})
//用户主页
router.get("/person", (req, res) => {
  var uid = req.session.uid;
  if (!uid) {
    //4:返回错误消息 请登录
    res.send({ code: -1, msg: "请登录" });
    return;
  }
  var sql = "SELECT uname FROM yxk_login WHERE uid = ?";
  pool.query(sql, [uid], (err, result) => {
    if (err) throw err;
    res.send(result[0]);
  })
})
//用户注册
router.post("/logon", (req, res) => {
  var uname = req.body.uname;
  var upwd=req.body.upwd;
  var phone=req.body.phone;
  var sql = "insert into yxk_login set uname=?,upwd = md5(?),phone=?";
  pool.query(sql, [uname,upwd,phone], (err, result) => {
    if (err) throw err;
    console.log(result);
    if (result.affectedRows > 0) {
      res.send({ code: 1, msg: "注册成功" });
    } else {
      res.send({ code: -1, msg: "注册失败" });
    }
  })
})
//用户上传/发表

module.exports = router;