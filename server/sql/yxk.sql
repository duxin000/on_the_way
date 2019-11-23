
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

/***轮播图***/
CREATE TABLE yxk_chart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  chart_id INT,      #轮播图分类
  img VARCHAR(128)
);

/***景点分类***/
CREATE TABLE yxk_sort(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  sname VARCHAR(32)
);

/***景点详情***/
CREATE TABLE yxk_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  detail_id INT,              #景点编号分类
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  place  VARCHAR(16),         #地点
  season VARCHAR(16),         #季节
  details VARCHAR(200),       #详情介绍
  way     VARCHAR(128)        #图片路径
);

/***景点图片***/
CREATE TABLE yxk_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pic_id INT,              #景点编号分类
  path VARCHAR(128)        #图片路径
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
(NULL,'张家界'),    
(NULL,'首页轮播');    

/***用户登录数据插入***/
INSERT INTO yxk_login VALUES
(NULL,'tom',md5('123'),'13501234567'),
(NULL,'juery',md5('123'),'13501234567');
 
 /***轮播图插入***/
 INSERT INTO yxk_chart VALUES
 (NULL,14,'photo/lb_img/1.jpg'),
 (NULL,14,'photo/lb_img/2.jpg'),
 (NULL,14,'photo/lb_img/3.jpg'),
 (NULL,14,'photo/lb_img/4.jpg'),
 (NULL,1,'photo/Scenic spot_img/heb/1.jpg'),
 (NULL,1,'photo/Scenic spot_img/heb/2.jpg'),
 (NULL,1,'photo/Scenic spot_img/heb/3.jpg'),
 (NULL,1,'photo/Scenic spot_img/heb/4.jpg');
 
/***商品详情插入***/
-- INSERT INTO yxk_pic VALUES
INSERT INTO yxk_detail VALUES
(NULL,1,'被誉为“西伯利亚的蓝眼睛”或者“西伯利亚的眼泪”','伊尔库茨克大市场下车，市场就有去利斯特杨卡的小巴，假如你不放心，可再往前直走1000米左右，就到了市郊汽车站，车站有按点发往利斯特杨卡的汽车','俄罗斯','冬季','【景色】夏天冰雪消融，万物复苏之时，贝加尔湖的能见度非常好，此时湖水湛蓝，清澈见底，整个贝加尔湖如同蓝色的透明玻璃缸，能看到水下40米的植被和生物。而随着季节变化，湖水的颜色也会有所变化，夏天湖水呈现青色，能见度在8-10米之间','photo/Scenicspot_img/bjeh/1.jpg'),
(NULL,2,'被誉为“西伯利亚的蓝眼睛”或者“西伯利亚的眼泪”','伊尔库茨克大市场下车，市场就有去利斯特杨卡的小巴，假如你不放心，可再往前直走1000米左右，就到了市郊汽车站，车站有按点发往利斯特杨卡的汽车','俄罗斯','冬季','【景色】夏天冰雪消融，万物复苏之时，贝加尔湖的能见度非常好，此时湖水湛蓝，清澈见底，整个贝加尔湖如同蓝色的透明玻璃缸，能看到水下40米的植被和生物。而随着季节变化，湖水的颜色也会有所变化，夏天湖水呈现青色，能见度在8-10米之间','photo/Scenicspot_img/bdlg/1.jpg'),
(NULL,3,'被誉为“西伯利亚的蓝眼睛”或者“西伯利亚的眼泪”','伊尔库茨克大市场下车，市场就有去利斯特杨卡的小巴，假如你不放心，可再往前直走1000米左右，就到了市郊汽车站，车站有按点发往利斯特杨卡的汽车','俄罗斯','冬季','【景色】夏天冰雪消融，万物复苏之时，贝加尔湖的能见度非常好，此时湖水湛蓝，清澈见底，整个贝加尔湖如同蓝色的透明玻璃缸，能看到水下40米的植被和生物。而随着季节变化，湖水的颜色也会有所变化，夏天湖水呈现青色，能见度在8-10米之间','photo/Scenicspot_img/lj/1.jpg'),
(NULL,4,'被誉为“西伯利亚的蓝眼睛”或者“西伯利亚的眼泪”','伊尔库茨克大市场下车，市场就有去利斯特杨卡的小巴，假如你不放心，可再往前直走1000米左右，就到了市郊汽车站，车站有按点发往利斯特杨卡的汽车','俄罗斯','冬季','【景色】夏天冰雪消融，万物复苏之时，贝加尔湖的能见度非常好，此时湖水湛蓝，清澈见底，整个贝加尔湖如同蓝色的透明玻璃缸，能看到水下40米的植被和生物。而随着季节变化，湖水的颜色也会有所变化，夏天湖水呈现青色，能见度在8-10米之间','photo/Scenicspot_img/fss/1.jpg'),
(NULL,5,'被誉为“西伯利亚的蓝眼睛”或者“西伯利亚的眼泪”','伊尔库茨克大市场下车，市场就有去利斯特杨卡的小巴，假如你不放心，可再往前直走1000米左右，就到了市郊汽车站，车站有按点发往利斯特杨卡的汽车','俄罗斯','冬季','【景色】夏天冰雪消融，万物复苏之时，贝加尔湖的能见度非常好，此时湖水湛蓝，清澈见底，整个贝加尔湖如同蓝色的透明玻璃缸，能看到水下40米的植被和生物。而随着季节变化，湖水的颜色也会有所变化，夏天湖水呈现青色，能见度在8-10米之间','photo/Scenicspot_img/gg/1.jpg');






