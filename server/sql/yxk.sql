
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
  title VARCHAR(500),         #主标题
  subtitle VARCHAR(500),      #副标题
  place  VARCHAR(16),         #地点
  season VARCHAR(16),         #季节
  details VARCHAR(500),       #详情介绍
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
  login_id INT,         #用户编号
  collect_title VARCHAR(500),   #主标题
  collect_place VARCHAR(16),    #地点
  collect_season VARCHAR(16),    #季节
  collect_way  VARCHAR(100)   #图片路径
);
/***上传***/
CREATE TABLE yxk_upload(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT(255),           #当前用户
  pdesc VARCHAR(512),     #发表文字
  psrc  VARCHAR(2048),    #图片路径
  upTime VARCHAR(128)     #发表时间
);
/***评论***/
CREATE TABLE yxk_comment(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT(255),
  did int(255),
  pdesc VARCHAR(521),
  time VARCHAR(521),
  uname VARCHAR(521)
);
/***评论***/
CREATE TABLE yxk_comment(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT(255),
  did int(255),
  pdesc VARCHAR(521),
  time VARCHAR(521),
  uname VARCHAR(521)
);
/*---------------------------*/
/***景点分类插入***/
INSERT INTO yxk_sort VALUES
(NULL,'贝加尔湖'),   
(NULL,'布达拉宫'),    
(NULL,'大理'),        
(NULL,'富士山'),   
(NULL,'故宫'),      
(NULL,'哈尔滨'),     
(NULL,'黄山'),    
(NULL,'九寨沟'),     
(NULL,'天鹅泉'),    
(NULL,'香格里拉'),   
(NULL,'长江三峡'),    
(NULL,'中央大街'),    
(NULL,'张家界');       

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
 (NULL,1,'photo/Scenic spot_img/bjeh/1.jpg'),
 (NULL,1,'photo/Scenic spot_img/bjeh/2.jpg'),
 (NULL,1,'photo/Scenic spot_img/bjeh/3.jpg'),
 (NULL,1,'photo/Scenic spot_img/bjeh/4.jpg'),
 (NULL,2,'photo/Scenic spot_img/bdlg/1.jpg'),
 (NULL,2,'photo/Scenic spot_img/bdlg/2.jpg'),
 (NULL,2,'photo/Scenic spot_img/bdlg/3.jpg'),
 (NULL,2,'photo/Scenic spot_img/bdlg/4.jpg'),
 (NULL,3,'photo/Scenic spot_img/lj/1.jpg'),
 (NULL,3,'photo/Scenic spot_img/lj/2.jpg'),
 (NULL,3,'photo/Scenic spot_img/lj/3.jpg'),
 (NULL,3,'photo/Scenic spot_img/lj/4.jpg'),
 (NULL,4,'photo/Scenic spot_img/fss/1.jpg'),
 (NULL,4,'photo/Scenic spot_img/fss/2.jpg'),
 (NULL,4,'photo/Scenic spot_img/fss/3.jpg'),
 (NULL,4,'photo/Scenic spot_img/fss/4.jpg'),
 (NULL,5,'photo/Scenic spot_img/gg/1.jpg'),
 (NULL,5,'photo/Scenic spot_img/gg/2.jpg'),
 (NULL,5,'photo/Scenic spot_img/gg/3.jpg'),
 (NULL,5,'photo/Scenic spot_img/gg/4.jpg'),
 (NULL,6,'photo/Scenic spot_img/heb/1.jpg'),
 (NULL,6,'photo/Scenic spot_img/heb/2.jpg'),
 (NULL,6,'photo/Scenic spot_img/heb/3.jpg'),
 (NULL,6,'photo/Scenic spot_img/heb/4.jpg'),
 (NULL,7,'photo/Scenic spot_img/hs/1.jpg'),
 (NULL,7,'photo/Scenic spot_img/hs/2.jpg'),
 (NULL,7,'photo/Scenic spot_img/hs/3.jpg'),
 (NULL,7,'photo/Scenic spot_img/hs/4.jpg'),
 (NULL,8,'photo/Scenic spot_img/jzg/1.jpg'),
 (NULL,8,'photo/Scenic spot_img/jzg/2.jpg'),
 (NULL,8,'photo/Scenic spot_img/jzg/3.jpg'),
 (NULL,8,'photo/Scenic spot_img/jzg/4.jpg');
 
/***商品详情插入***/
-- INSERT INTO yxk_pic VALUES
INSERT INTO yxk_detail VALUES
(NULL,1,' 贝加尔湖是英文baykal一词的音译，俄语称之为baukaji源出蒙古语，是由saii（富饶的）加kyji（湖泊）转化而来，意为富饶的湖泊，因湖中盛产多种鱼类而得名。',
'贝加尔湖形成迄今已有2500万年历史，是世界上较为古老的湖，同时也是比较深、比较清澈的湖泊，其较深的地方深度可达1642米，透明度深达40.5米。形状为新月形，所以又被誉为“西伯利亚的蓝眼睛”或者“西伯利亚的眼泪”。',
'西伯利亚',
'冬季',
'春天冰雪消融，万物复苏之时，贝加尔湖的能见度非常好，此时湖水湛蓝，清澈见底，整个贝加尔湖如同蓝色的透明玻璃缸，能看到水下40米的植被和生物。而随着季节变化，湖水的颜色也会有所变化，夏天湖水呈现青色，能见度在8-10米之间。每年2月-3月，贝加尔湖大部分湖面会被冰雪覆盖，此时从利斯特维扬卡通向奥尔洪的水上道路被打开，可以开车直接上冰面前往湖中央的岛屿。同样这个季节奥尔洪岛也有大片的蓝冰和罕见的气泡冰，整个贝加尔湖区域银装素裹，分外妖娆。贝加尔湖有许多特有的生物和植物，包括淡水海豹等。除了博物馆和纪录片，你还可以在小岛上看到他们，不过切忌不要随意接近野生动物。在佛教和基督教盛行于欧亚大陆时，贝加尔湖地区成了萨满教的避难所，迄今为止奥尔洪岛依然是萨满教的圣地，所有萨满教的大型祭祀都会在这里进行。每年夏天，萨满教都会在萨满岩的13根经幡柱边进行祭祀活动。',
'photo/Scenic spot_img/bjeh/1.jpg'),
(NULL,2,'布达拉宫，坐落于于中国西藏自治区的首府拉萨市区西北玛布日山上，是世界上海拔最高，集宫殿、城堡和寺院于一体的宏伟建筑，也是西藏最庞大、最完整的古代宫堡建筑群。',
'布达拉宫依山垒砌，群楼重叠，殿宇嵯峨，气势雄伟，是藏式古建筑的杰出代表（据说源于桑珠孜宗堡），中华民族古建筑的精华之作，是第五套人民币50元纸币背面的风景图案 。主体建筑分为白宫和红宫两部分。宫殿高200余米，外观13层，内为9层。布达拉宫前辟有布达拉宫广场，是世界上海拔最高的城市广场。',
'拉萨',
'冬季',
'布达拉宫最初为吐蕃王朝赞普松赞干布为迎娶尺尊公主和文成公主而兴建。1645年（清顺治二年）清朝属国和硕特汗国时期护法王固始汗和格鲁派摄政者索南群培重建布达拉宫之后，成为历代达赖喇嘛冬宫居所，以及重大宗教和政治仪式举办地，也是供奉历世达赖喇嘛灵塔之地，旧时与驻藏大臣衙门共为统治中心。布达拉宫是藏传佛教（格鲁派）的圣地，每年至此的朝圣者及旅游观光客不计其数。1961年3月，国务院列为首批全国重点文物保护单位；1994年12月，联合国教科文组织列其为世界文化遗产；2013年1月，国家旅游局又列为国家AAAAA级旅游景区。',
'photo/Scenic spot_img/bdlg/1.jpg'),
(NULL,3,'洱海公园位于洱海南端，是游览苍山洱海风景区的第一站。公园内有一座椭圆珙的小山，因山的形状而被当地人叫做"团山"。',
'在公元8世纪，这里曾是南诏王的养鹿场，称为息龙山。三五成群的马鹿在山上啮草，呦呦的鹿鸣远近可闻。唐人樊绰在《蛮书》中有"龙足鹿白昼三十五十，群行啮草"的描述。',
'洱海南端',
'夏季',
'这里为什么成为南诏王族养鹿的地方呢？古代的洱海，水域比现在宽广得多，可称得上"烟波浩淼"，团山曾经是洱海南端的一个小岛。山周围的海水是天然的栅栏，马鹿自然得到最有效的监护。据史书记载，南诏王族当时还有很多其他的专业养殖场，如养马场、养鸡场等等，产品专业供皇宫亨用。 随着自然环境的改变，洱海的水域逐渐缩小（但愿不要再缩小了吧）过去的小岛变成了这座紧靠海边平地突起的孤山。整个团山山脉东西长3000余米，志北窄处仅400米左右，成东西走向，与点苍山成垂直方向。山顶最高处海拔2049米，山下海面海拔1971米左右。这里是观苍山洱海景色的最佳位置，可以看到海西岸连绵的点苍山和整个洱海。洱海公园，占地约864亩，水域面积1065亩，山上山下林木繁茂，亭、台、楼、 榭相互呼应，已成为大理市面上市面上内规模最大、设施较低完善的大型综合公园。 洱海公园濒临洱海，是消夏避暑的胜地。近海水浅水地带， 是理想的游泳场所。洱海水温即使在冬夏最泠的时候也在7°C左右，特别适宜冬泳。洱海公园由海心亭长廓、游泳场、望海楼长廊、动物园、植物园、花圃、钓鱼台、游乐场等部分组成，是游客到大理必去的一方胜土。',
'photo/Scenic spot_img/lj/1.jpg'),
(NULL,4,'富士山是日本国内的最高峰，也是世界上最大的活火山之一，主峰海拔高达3776公尺。富士山山体呈圆锥状，太古时代反复喷发堆积形成山体，火山喷发物层层堆积，成为锥状成层火山。山顶有巨大的火山口，直径约800米，深约200米。',
'富士山作为日本民族的象征之一，在全球都享有盛誉。富士山被日本人民誉为“圣岳”，是日本民族引以为傲的象征。',
'日本',
'冬季',
'富士山山体高耸入云，山巅白雪皑皑，放眼望去，富士山是那么的雄伟、壮观、气势磅礴。富士山从山脚到山顶，共划分为10个阶段，每个阶段是一个“合目”，山顶称“十合目”。每合目都设有供游人休息的地方，巴士最高可上到2305米的“五合目”。从“五合目”这里开始登山，一般需要几小时才能登上顶峰。如今，每年的7月-8月只开放一个月的时间可以登顶，其余时间养护都不开放无法登顶。自古以来，这座山的名字就经常出现在日本传统的和歌中。日本诗人曾用“玉扇倒悬东海天”“富士白雪映朝阳”等诗句来赞美它。富士山也是世界上最大的活火山之一，自781年有文字记载以来，富士山共喷发了18次。最后一次喷发是在1707年，此后休眠至今。',
'photo/Scenic spot_img/fss/1.jpg'),
(NULL,5,'故宫位于北京市城区中心，是明、清两代的皇宫，是当今世界上现存规模大、建筑雄伟、保存完整的古代皇家宫殿之一。故宫又叫紫禁城。紫禁城是中国五个多世纪以来的权力中心，它以园林景观和容纳了家具及工艺品的9000个房间的庞大建筑群，成为明清时代中国文明无价的历史见证。1987年，北京故宫被联合国教科文组织列入《世界遗产名录》。',
'故宫宫殿建筑均是木结构、黄琉璃瓦顶、青白石底座，饰以金碧辉煌的彩画。故宫有4个门，正门名午门，东门名东华门，西门名西华门，北门名神武门。面对北门神武门，有用土、石筑成的景山，满山松柏成林。',
'北京',
'冬季',
'故宫座北朝南，开有四条门。故宫的正门叫午门，意思是正午的太阳光芒四射。在10米高的城墙上耸立着五座崇楼，楼顶飞檐翅起，从上面看就象五只展翅欲飞的凤凰，故午门又称五凤楼。它建成于公元1420年，位于端门之北，雄伟壮观。此外午门的门洞为明三暗五，就是说从南面看是有3个门洞，从北面看是5个门洞。　 进入故宫首先出现在面前的是五座汉白玉石桥，它们象征五德，即仁、义、礼、智、信，是皇帝集美好的品质为一身的意思。金水桥下是内金水河，跨过金水桥就来到了太和门广场，这里就是明代皇帝御门听政时百官待驾的地方。',
'photo/Scenic spot_img/gg/1.jpg'),
(NULL,6,'哈尔滨冬季必游之地，荟萃各种冰雕、雪地娱乐项目和主题表演。',
'冰雪大世界是一年一度的冰雪主题嘉年华，从每年的圣诞节至次年三月初期间开放。',
'哈尔滨',
'冬季',
'在这里可欣赏漂亮的冰雕、雪雕以及冰雪城堡，夜间在各色灯光渲染下的冰灯盛宴更是迷人，还可尽享各种雪地娱乐项目。冰雪大世界的娱乐项目众多，你可以登上冰雪城堡、尝试从国内最长的冰滑梯一溜到底的刺激，或是坐坐森林小火车、冰上自行车、雪地卡丁车、雪地摩托车，也可以滑雪滑冰、玩雪圈、冰迷宫、攀冰岩等各种活动，甚至还有冰雪CS、雪地足球、冰面拔河等竞技活动，而且这里大多数的项目都是无需再付费用的。',
'photo/Scenic spot_img/heb/1.jpg'),
(NULL,7,'览黄山秋色处处胜景',
'黄山是世界文化与自然遗产、世界地质公园，是国家级风景名胜区、全国文明风景旅游区、国家5A级旅游景区，与长江、长城、黄河同为中华壮丽山河和灿烂文化的杰出代表，被世人誉为“人间仙境”、“天下第一奇山”，素以奇松、怪石、云海、温泉、冬雪“五绝”著称于世。',
'安徽省',
'冬季',
'境内群峰竞秀，怪石林立，有千米以上高峰88座，“莲花”、“光明顶”、“天都”三大主峰，海拔均逾1800米。明代大旅行家徐霞客曾两次登临黄山，赞叹道：“薄海内外无如徽之黄山，登黄山天下无山，观止矣！”后人据此概括为“五岳归来不看山，黄山归来不看岳”。黄山雄踞于安徽南部黄山市境内，山境南北长约40千米，东西宽约30千米，总面积约1200平方千米。其中，黄山风景区面积160.6平方千米，东起黄狮 ，西至小岭脚，北始二龙桥，南达汤口镇，分为温泉、云谷、玉屏、北海、松谷、钓桥、浮溪、洋湖、福固九个管理区。缓冲区面积490.9平方千米，以与景区相邻的五镇一场（黄山区汤口镇、谭家桥镇、三口镇、耿城镇、焦村镇和洋湖林场）的行政边界为界。',
'photo/Scenic spot_img/hs/1.jpg'),
(NULL,8,'九寨归来不看水',
'九寨沟位于四川省西北部岷山山脉南段的阿坝藏族羌族自治州九寨沟县漳扎镇境内，系长江水系嘉陵江上游白水江源头的一条大支沟，流域面651.34km，因沟内有树正、荷叶、则查洼等九个藏族村寨而得名。',
'四川省',
'冬季',
'九寨沟年均气温6-14℃度，冬无严寒，夏季凉爽，四季景色各异：仲春树绿花艳，盛夏幽湖翠山，金秋尽染山林，隆冬冰塑自然。以翠湖、叠瀑、彩林、雪峰、藏情、蓝冰“六绝”著称于世。九寨沟四周群山耸峙，有雪峰数十座，高插云霄，终年白雪皑皑。河谷地带奇水荟萃，其间有成梯形分布的大小湖泊114个，瀑布群17个，钙华滩流5处，泉水47眼，湍流11段，以1870米的海拨高差，在12座雪峰之间穿林跨谷，珠连玉接，呈Y字型串珠，逶迤近60公里，形成了罕见的以高山湖泊群和瀑 布群以及钙华滩流为主体的风景名胜区。湖泊小者数平方米，最大的长海长达7公里。湖水终年碧蓝澄澈，色彩斑谰，在阳光照射下，呈现出蓝、黄、橙、绿等多种色彩，绚丽夺目。天气晴朗时，蓝天、白云、雪山、森林倒映湖中，水光浮翠，美丽如画，并随季节推移呈现出不同的色彩和风韵，有“九寨归来不看水”之说。',
'photo/Scenic spot_img/jzg/1.jpg');






