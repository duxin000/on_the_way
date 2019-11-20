
SET NAMES UTF8;
DROP DATABASE IF EXISTS yxk;
CREATE DATABASE yxk CHARSET=UTF8;
USE yxk;

/***创建用户表yxk_login***/
CREATE TABLE yxk_login(
  uid INT PRIMARY KEY AUTO_INCREMENT,            
  uname VARCHAR(25),
  upwd  VARCHAR(32),
  phone VARCHAR(16)
);

/***首页轮播图***/
CREATE TABLE yxk_chart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  href VARCHAR(128)
);

/***景点分类***/
CREATE TABLE yxk_sort(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  sname VARCHAR(32)
);
-- /***景点图片***/
-- CREATE TABLE yxk_pic(
--   pid INT PRIMARY KEY AUTO_INCREMENT,
--   pic_id INT,                   #景点编号分类
--   lg INT,                       #图片名称
--   pic VARCHAR(128)              #图片路径
-- )

/***收藏车***/
CREATE TABLE yxk_collect(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  login_id INT,       #用户编号
  collect_id INT,     #景点编号
  is_checked BOOLEAN  #是否已勾选，是否删除
);
/***上传***/
CREATE TABLE yxk_upload(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  login_id INT,         #用户编号
  time BIGINT,          #上传时间
  url  VARCHAR(128),    #图片路径
  address VARCHAR(128) #发表文字
)
/*---------------------------*/
/***用户登录数据插入***/
INSERT INTO yxk_login VALUES
(NULL,'tom',md5('123'),'13501234567'),
(NULL,'juery',md5('123'),'13501234567');
 
 /***轮播图插入***/
 /*INSERT INTO yxk_chart VALUES*/
 
