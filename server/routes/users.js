var express = require("express");
var router = express.Router();
var pool = require("../pool");
// 用户登录
router.get("/login", (req, res) => {
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  var sql = "SELECT uid FROM yxk_login WHERE uname = ? AND upwd = md5(?)";
  pool.query(sql, [uname, upwd], (err, result) => {
    //console.log(1);
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
  var upwd = req.body.upwd;
  var phone = req.body.phone;
  var sql = "insert into yxk_login set uname=?,upwd = md5(?),phone=?";
  pool.query(sql, [uname, upwd, phone], (err, result) => {
    if (err) throw err;
    console.log(result);
    if (result.affectedRows > 0) {
      res.send({ code: 1, msg: "注册成功" });
    } else {
      res.send({ code: -1, msg: "注册失败" });
    }
  })
})
//检测用户是否存在
router.get("/inspect", (req, res) => {
  var uname = req.query.uname;
  var sql = "SELECT uname FROM yxk_login where uname=?";
  pool.query(sql, [uname], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      res.send({ code: -1, msg: "用户名已存在" });
    } else {
      res.send({ code: 1, msg: "用户名可用" });
    }
  })
})
//用户退出登录
router.get("/remove", (req, res) => {
  var session = req.session;
  session.uid = null;
  res.send({ code: 1, msg: "删除成功" });
})
//单用户内容发表
router.get("/circle", (req, res) => {
  var uid = req.session.uid;
  var sql = "SELECT * FROM yxk_upload WHERE uid=?"
  pool.query(sql, [uid], (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      console.log(result);
      res.send({ code: result })
    } else {
      res.send("查询失败")
    }
  })
})
//多用户内容发表
router.get("/circles", (req, res) => {

  var sql = "SELECT * FROM yxk_upload LEFT JOIN yxk_login ON yxk_upload.uid=yxk_login.uid "
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.length > 0) {
      console.log(result);
      res.send({ code: result })
    } else {
      res.send("查询失败")
    }
  })
})

//用户收藏
router.get("/addcart", (req, res) => {
  var login_id = req.session.uid;
  var collect_title = req.query.title;
  var collect_place = req.query.place;
  var collect_season = req.query.season;
  var collect_way=req.query.way
  var sql = "INSERT INTO yxk_collect SET login_id=?,collect_title=?,collect_place=?,collect_season=?,collect_way=?";
  pool.query(sql, [login_id, collect_title, collect_place, collect_season,collect_way], (err, result) => {
    if (err) throw err;
    if (result.affectedRows > 0) {
      res.send({ code: 1, msg: "加入购物车成功" });
    } else {
      res.send({ code: -1, msg: "加入购物车失败" });
    }
  })
})
//查询用户购物车
router.get("/inquiry", (req, res) => {
  var login_id = req.session.uid;
  var sql = "SELECT * FROM yxk_collect WHERE login_id=?"
  pool.query(sql, [login_id], (err, result) => {
    if (err) throw err;
    if(result.length>0){
      console.log(result);
      res.send({code:result})
    }else{
      res.send("查询失败")
    }
  })
})
module.exports = router;