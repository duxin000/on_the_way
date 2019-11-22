
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
  img VARCHAR(128)
);

/***景点分类***/
CREATE TABLE yxk_sort(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  sname VARCHAR(32)
);
/***景点详情图片***/
CREATE TABLE yxk_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT,                 #景点编号分类
  path  VARCHAR(128),         #详情轮播图片路径
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  place  VARCHAR(16),         #地点
  season VARCHAR(16),         #季节
  way  VARCHAR(128)         #图片路径
);

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
);
/*---------------------------*/
/***用户登录数据插入***/
INSERT INTO yxk_login VALUES
(NULL,'tom',md5('123'),'13501234567'),
(NULL,'juery',md5('123'),'13501234567');
 
 /***轮播图插入***/
 INSERT INTO yxk_chart VALUES
 (NULL,'photo/lb_img/1.jpg'),
 (NULL,'photo/lb_img/2.jpg'),
 (NULL,'photo/lb_img/3.jpg'),
 (NULL,'photo/lb_img/4.jpg');
 
/***景点分类插入***/
INSERT INTO yxk_sort VALUES
(NULL,'贝加尔湖'),
(NULL,'布达拉宫'),
(NULL,'大理'),
(NULL,'富士山'),
(NULL,'故宫'),
(NULL,'黄山'),
(NULL,'九寨沟'),
(NULL,'丽江'),
(NULL,'天鹅泉'),
(NULL,'香格里拉'),
(NULL,'长江三峡'),
(NULL,'中央大街'),
(NULL,'张家界');

/***商品详情插入***/
-- INSERT INTO yxk_pic VALUES

