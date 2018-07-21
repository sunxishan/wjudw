SET NAMES UTF8;
DROP DATABASE IF EXISTS udw;
CREATE DATABASE udw CHARSET=UTF8;
USE udw;
#1 首页轮播图表 (udw_index_carousel)
CREATE TABLE udw_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,	
  img VARCHAR(128),		#图片路径
  title VARCHAR(64),            #图片描述
  href VARCHAR(128)           	#图片链接
);
INSERT INTO udw_index_carousel VALUES (null, 'picture/banner1.jpg', '轮播广告商品1', '#');
INSERT INTO udw_index_carousel VALUES (null, 'picture/banner2.jpg', '轮播广告商品2', 'https://www.taobao.com/');
INSERT INTO udw_index_carousel VALUES (null, 'picture/banner1.jpg', '轮播广告商品3', '#');
INSERT INTO udw_index_carousel VALUES (null, 'picture/banner1.jpg', '轮播广告商品4', '#');
INSERT INTO udw_index_carousel VALUES (null, 'picture/banner1.jpg', '轮播广告商品5', '#');
INSERT INTO udw_index_carousel VALUES (null, 'picture/banner1.jpg', '轮播广告商品6', '#');
INSERT INTO udw_index_carousel VALUES (null, 'picture/banner1.jpg', '轮播广告商品7', '#');
#2 首页商品栏目表 (udw_index_product)
CREATE TABLE udw_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,	
  title VARCHAR(64),		#商品标题
  pic VARCHAR(128),            	#图片
  price DECIMAL(10,2),		#商品价格
  href VARCHAR(128),		
  seq_recommended TINYINT,		
  seq_new_arrival TINYINT,		
  seq_top_sale 	TINYINT
);
INSERT INTO udw_index_product VALUES (null, 'VIP代销商专享链接', 'picture/1512715123.gif', '880.00', 'product_details.html?lid=1', '5', '5', '5');
INSERT INTO udw_index_product VALUES (null, 'A175 春季新款光泽裤修身显瘦打底裤 弹力大码九分小脚裤子女', 'picture/3914006650_109609388.gif', '19.90', 'product_details.html?lid=12', '6', '6', '6');
INSERT INTO udw_index_product VALUES (null, 'B176 春季款轻运动松紧侧条纹松紧腰拼接大码女士打底裤', 'picture/2748086236_109609388.gif', '24.90', 'product_details.html?lid=18', '7', '7', '7');
INSERT INTO udw_index_product VALUES (null, 'B053 春季新款生态兰精棉任意剪破洞打底裤 微压显瘦连裤袜170g', 'picture/3394840771_109609388.gif', '22.90', 'product_details.html?lid=21', '8', '8', '8');
INSERT INTO udw_index_product VALUES (null, '2016秋季新款男士韩版修身长袖圆领t恤男装条纹拼色T恤男', 'picture/3522028647_981664515.gif', '25.90', 'product_details.html?lid=34', '9', '9', '9');
INSERT INTO udw_index_product VALUES (null, '一件代发男式牛仔裤男士韩版修身弹力小脚裤秋季新款黑色男裤子潮', 'picture/3507959219_981664515.gif', '39.90', 'product_details.html?lid=35', '10', '10', '10');
INSERT INTO udw_index_product VALUES (null, '2017秋冬韩版小清新下摆波浪边花朵刺绣宽松蝙蝠袖套头毛衣女学生', 'picture/5460043588_1205206691.gif', '81.00', 'product_details.html?lid=36', '11', '11', '11');
INSERT INTO udw_index_product VALUES (null, '2017秋冬新款韩版小清新弧形前短后长可爱鱼骨印花套头毛衣女学生', 'picture/5459585811_1205206691.gif', '92.00', 'product_details.html?lid=37', '12', '12', '12');
INSERT INTO udw_index_product VALUES (null, '2017秋冬韩版甜美学院风大口袋拼接高领毛衣背心女针织毛线马甲', 'picture/5700954995_1205206691.gif', '91.00', 'product_details.html?lid=38', '13', '13', '13');
INSERT INTO udw_index_product VALUES (null, '2017秋冬新款韩版复古学院风半高领菱形拼色前短后长撞色套头毛衣', 'picture/5759352889_1205206691.gif', '96.00', 'product_details.html?lid=39', '14', '14', '14');
INSERT INTO udw_index_product VALUES (null, '2017秋冬韩版甜美小清新学院风翻领宽松翻领毛呢外套女呢子大衣', 'picture/5810586896_1205206691.gif', '175.00', 'product_details.html?lid=40', '15', '15', '15');
INSERT INTO udw_index_product VALUES (null, '2017冬季新款韩版小清新学院风宽松双排扣马海绒毛呢短外套女上衣', 'picture/5764515576_1205206691.gif', '188.00', 'product_details.html?lid=41', '16', '16', '16');
INSERT INTO udw_index_product VALUES (null, '秋冬韩版小清新宽松大翻领夹棉加厚中长款毛呢外套女羊绒呢大衣', 'picture/5425881647_1205206691.gif', '185.00', 'product_details.html?lid=42', '17', '17', '17');
INSERT INTO udw_index_product VALUES (null, '冬季韩版西装领宽松蝙蝠袖羊毛呢大衣女中长款茧型加厚呢子外套潮', 'picture/4788920098_1205206691.gif', '186.30', 'product_details.html?lid=43', '18', '18', '18');
INSERT INTO udw_index_product VALUES (null, '秋季t恤男长袖纯棉圆领打底衫青年上衣服修身针织衫', 'picture/4735190051_26216797.gif', '79.00', 'product_details.html?lid=44', '19', '19', '19');
INSERT INTO udw_index_product VALUES (null, '秋季男士t恤长袖纯棉修身圆领打底针织衫毛衣男装上衣秋衣', 'picture/4736773407_26216797.gif', '99.00', 'product_details.html?lid=45', '20', '20', '20');
INSERT INTO udw_index_product VALUES (null, '秋季男士毛衣韩版潮流修身圆领学生线衣打底衫长袖针织衫', 'picture/4735280857_26216797.gif', '79.00', 'product_details.html?lid=46', '21', '21', '21');
INSERT INTO udw_index_product VALUES (null, '秋季男士新款立领毛衣修身打底衫毛衫韩版纯色百搭针织衫线衣', 'picture/4583720252_26216797.gif', '89.00', 'product_details.html?lid=47', '22', '22', '22');
INSERT INTO udw_index_product VALUES (null, '冬季外套男2017新款男装棉衣韩版潮修身中长款棉服男冬装', 'picture/5299077996_26216797.gif', '156.00', 'product_details.html?lid=48', '23', '23', '23');
INSERT INTO udw_index_product VALUES (null, '外套男春秋装2017新款韩版潮流帅气休闲薄夹克百搭学生修身外衣服', 'picture/4501865954_26216797.gif', '145.00', 'product_details.html?lid=49', '24', '24', '24');
INSERT INTO udw_index_product VALUES (null, '2017冬季男士韩版修身休闲加厚黑色连帽中长款棉衣男外套', 'picture/5403588309_26216797.gif', '180.00', 'product_details.html?lid=50', '25', '25', '25');
INSERT INTO udw_index_product VALUES (null, '双面穿男士夹克 2017秋冬新款连帽舒适休闲夹克 潮流男装外套男', 'picture/4501145505_26216797.gif', '149.00', 'product_details.html?lid=51', '26', '26', '26');
INSERT INTO udw_index_product VALUES (null, '2017冬季新款儿童加棉韩版棉衣宝宝棉服男女童中小童手塞棉童装潮', 'picture/4935299140_441699346.gif', '112.00', 'product_details.html?lid=52', '27', '27', '27');
INSERT INTO udw_index_product VALUES (null, '冬季儿童棉服韩版男女童手塞棉面包服中小童加厚棉衣潮童装代发', 'picture/5511960453_441699346.gif', '115.00', 'product_details.html?lid=53', '28', '28', '28');
INSERT INTO udw_index_product VALUES (null, '儿童冬季长款羽绒服韩版男女童白鸭绒保暖外套宝宝中小童棉衣代发', 'picture/5385032381_441699346.gif', '106.00', 'product_details.html?lid=54', '29', '29', '29');
INSERT INTO udw_index_product VALUES (null, '2017男童新款韩版冬季长款5字印花棉衣儿童棉服中小童棉袄潮代发', 'picture/5352025652_441699346.gif', '125.0', 'product_details.html?lid=55', '30', '30', '30');
INSERT INTO udw_index_product VALUES (null, '儿童手塞棉衣冬款童装男童韩版贴标棉外套中小童连帽加厚棉袄代发', 'picture/5347794269_441699346.gif', '140.00', 'product_details.html?lid=56', '31', '31', '31');
INSERT INTO udw_index_product VALUES (null, '童装童裤冬季新款加绒休闲裤韩版中小童纯色加厚保暖小脚长裤代发', 'picture/6340330794_441699346.gif', '69.00', 'product_details.html?lid=57', '32', '32', '32');
INSERT INTO udw_index_product VALUES (null, '2017冬季儿童加厚韩版棉衣宝宝棉服男女童手塞棉童装棉袄夹克潮', 'picture/4946528852_441699346.gif', '96.00', 'product_details.html?lid=58', '33', '33', '33');
INSERT INTO udw_index_product VALUES (null, '男童女童迷彩棉服2017童装冬款韩版中小童小怪兽儿童棉衣一件代发', 'picture/4973008753_441699346.gif', '106.00', 'product_details.html?lid=59', '34', '34', '34');
INSERT INTO udw_index_product VALUES (null, '拼色水桶包女2017新款秋冬欧美时尚复古单肩斜跨包包', 'picture/5299058891_696478567.gif', '65.00', 'product_details.html?lid=60', '35', '35', '35');
INSERT INTO udw_index_product VALUES (null, '秋冬新款韩版百搭单肩斜跨毛球迷你小方包时尚手机零钱小包包批发', 'picture/5368046707_696478567.gif', '36.90', 'product_details.html?lid=61', '36', '36', '36');
INSERT INTO udw_index_product VALUES (null, '2017新款韩版时尚百搭女包天鹅绒菱格女包单肩包斜跨女包一件代发', 'picture/5817360118_696478567.gif', '62.00', 'product_details.html?lid=62', '37', '37', '37');
INSERT INTO udw_index_product VALUES (null, '小米胸包男女款休闲运动单肩斜跨包多功能户外跑步运动防水腰包', 'picture/3984878182_1997971990.gif', '67.00', 'product_details.html?lid=63', '38', '38', '38');
INSERT INTO udw_index_product VALUES (null, '博仕康防盗胸包男 时尚潮流斜挎包男单肩包男士包包小背包胸包男', 'picture/4021453896_1997971990.gif', '81.00', 'product_details.html?lid=64', '39', '39', '39');
INSERT INTO udw_index_product VALUES (null, '新款双肩包男士商务电脑背包旅行包大容量书包男中学生包运动休闲', 'picture/3791353717_1997971990.gif', '86.00', 'product_details.html?lid=65', '40', '40', '40');
INSERT INTO udw_index_product VALUES (null, '博仕康商务双肩包男包厚实多功能专业笔记本电脑包男士双肩背包', 'picture/3792389513_1997971990.gif', '85.00', 'product_details.html?lid=66', '41', '41', '41');
INSERT INTO udw_index_product VALUES (null, '秋季小包包女2017新款潮百搭韩版单肩包小清新学生斜挎包流苏小包', 'picture/4855889501_696478567.gif', '41.00', 'product_details.html?lid=67', '42', '42', '42');
INSERT INTO udw_index_product VALUES (null, '2017秋季新款街拍厚底小白鞋百搭学生运动休闲内增高女鞋批发', 'picture/5083444554_1854032813.gif', '81.00', 'product_details.html?lid=68', '43', '43', '43');
INSERT INTO udw_index_product VALUES (null, '跨境2017秋季新款韩版潮鞋男轻便时尚跑步运动鞋青年男士休闲鞋男', 'picture/5108529505_1043532258.gif', '102.00', 'product_details.html?lid=69', '44', '44', '44');
INSERT INTO udw_index_product VALUES (null, '2017秋季新款浅口透气鞋女韩版休闲鞋平底系带小白鞋女鞋批发', 'picture/5318742388_1854032813.gif', '62.00', 'product_details.html?lid=70', '45', '45', '45');
INSERT INTO udw_index_product VALUES (null, '跨境货源2017秋季新款飞织男鞋 轻便透气防滑男士跑步运动休闲鞋', 'picture/5322246849_1043532258.gif', '112.00', 'product_details.html?lid=71', '46', '46', '46');
INSERT INTO udw_index_product VALUES (null, '2017秋冬季新款布洛克男鞋 透气韩版潮流小白鞋男士英伦休闲皮鞋', 'picture/5308608581_1043532258.gif', '112.00', 'product_details.html?lid=72', '47', '47', '47');
INSERT INTO udw_index_product VALUES (null, '2017冬季新款韩版潮鞋男 轻便时尚防滑男子跑步运动鞋男士休闲鞋', 'picture/5426810100_1043532258.gif', '102.00', 'product_details.html?lid=73', '48', '48', '48');
INSERT INTO udw_index_product VALUES (null, '韩版2017春季铆钉侧拉链女鞋隐形内增高休闲女单鞋学生运动鞋批发', 'picture/4889600906_1854032813.gif', '81.00', 'product_details.html?lid=74', '49', '49', '49');
INSERT INTO udw_index_product VALUES (null, '2017春秋新款韩版厚底内增高高帮女单鞋学生休闲运动潮流百搭女鞋', 'picture/4880516434_1854032813.gif', '87.00', 'product_details.html?lid=75', '50', '50', '50');
#3 商品类别表 (udw_product_family)
CREATE TABLE udw_product_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(32),		#类别名称
  pic VARCHAR(128),            	#图片
  href VARCHAR(128)
);
INSERT INTO udw_product_family VALUES (null, '爆款', 'picture/floor_1.jpg', 'products.html?lid=101');
INSERT INTO udw_product_family VALUES (null, '女装', 'picture/floor_2.jpg', 'products.html?lid=102');
INSERT INTO udw_product_family VALUES (null, '男装', 'picture/floor_3.jpg', 'products.html?lid=103');
INSERT INTO udw_product_family VALUES (null, '童装', 'picture/floor_4.jpg', 'products.html?lid=104');
INSERT INTO udw_product_family VALUES (null, '包包', 'picture/floor_5.jpg', 'products.html?lid=105');
INSERT INTO udw_product_family VALUES (null, '鞋靴', 'picture/floor_6.jpg', 'products.html?lid=106');
#4 商品表 (udw_product)
CREATE TABLE udw_product(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,		#所属型号家族编号
  title VARCHAR(128),		#商品标题
  price DECIMAL(10,2),		#价格
  spec VARCHAR(64),           	#规格
  color VARCHAR(64),            #颜色
  pname VARCHAR(32),       	#所属分类
  shelf_time BIGINT,          	#上架时间
  weight VARCHAR(32),           #商品重量
  stock INT,                    #库存
  sold_count INT,             	#人气数量
  eval_count INT,               #评价数量
  integral INT,                 #积分数量
  is_onsale BOOLEAN,          	#是否促销中
  FOREIGN KEY(family_id) REFERENCES udw_product_family(fid)
);
INSERT INTO udw_product VALUES (null, '1', 'VIP代销商专享链接', '880.00', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '517', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'B102 冬季加绒加厚珍珠打底裤黑色外穿大码保暖踩脚一体裤 300g', '29.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'A048 冰丝无痕安全裤 防走光三分裤 蕾丝花边打底裤女 厂家批发', '9.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', '新款秋冬加绒加厚涤棉打底裤 加档高腰保暖裤外穿踩脚一体裤批发', '16.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '320', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '男装 秋季新款长袖t恤 热卖修身织带快手红人同款韩版t恤男式长袖', '27.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '312', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '2016秋冬新款男式T恤纯色圆领长袖韩版时尚修身T恤男装厂家直批', '25.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'A193 春夏新款运动健身瑜伽小背心 美背交叉吊带打底内衣带胸垫', '25.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '196', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'A276 秋冬新款真透肤打底裤 牛奶丝网纱双层加绒超柔踩脚裤160g', '26.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'B006秋季拉绒裤踩脚黑色打底裤加绒薄绒外穿保暖女裤95g', '16.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'F193 春季薄款女士大码打底裤 韩版糖果色弹力显瘦七分裤100g', '15.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'B179 夏季百搭女士背心 纯色修身针织棉吊带背心 打底小吊带 女', '15.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'A175 春季新款光泽裤修身显瘦打底裤 弹力大码九分小脚裤子女', '19.90', 'M', '黑色', '爆款', '2017/12/08', '1kg', '196', '215', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'A079 2015夏装新款半身裙细条纹一步裙弹力修身大码短裙女包臀裙', '12.50', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', 'B057 莫代尔美背裹胸背心防走光一字领镂空内搭小吊带批发', '12.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', 'F525 秋冬新款加绒厚打底裤假透肉女士小脚裤显瘦韩版踩脚裤批发', '21.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '306', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'B218 运动短裤女士夏季速干休闲裤宽松大码跑步热裤糖果色沙滩裤', '19.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '306', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'F274 2016春季新款九分裤 夏季薄款九分打底裤显瘦 七彩色光泽裤', '16.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', 'B176 春季款轻运动松紧侧条纹松紧腰拼接大码女士打底裤', '24.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '386', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '青少年韩版薄款收腿休闲裤学生男款宽松小脚运动哈伦长裤束脚裤', '26.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '秋季流行男条纹卫衣韩版修身套头圆领T恤青年新款潮牌男士外套潮', '29.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '336', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', 'B053 春季新款生态兰精棉任意剪破洞打底裤 微压显瘦连裤袜170g', '22.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '226', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '2017秋冬新款 棉加厚儿童打底裤 英伦风横条纹男女童长裤 婴幼儿', '22.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '466', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '2017春秋新款 棉儿童打底裤 英伦风竖条女童九分裤 中小童裤子', '25.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '266', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '2016秋季新款 抗起球棉儿童蕾丝花边打底裤 女童可爱九分裤', '28.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '96', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '夏季薄款网眼儿童连裤袜 包芯丝防脱散女童纯色打底裤袜舞蹈袜', '15.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '306', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', '儿童二条杠竖条纹中筒袜 棉男女童长筒袜过膝袜 百搭高筒袜', '14.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '354', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', '冬季新款保暖加厚毛圈儿童打底裤袜 全棉抗起球女童舞蹈袜连裤袜', '26.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '376', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '春秋款蝴蝶结儿童中筒袜 菱形网格长筒袜  棉 过膝 女童休闲袜', '13.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '136', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', '夏季新款童裤女童蕾丝三分裤安全裤儿童宝宝防走光舞蹈裤短裤批发', '14.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '0');
INSERT INTO udw_product VALUES (null, '1', '春秋薄款童裤蕾丝暗花PU皮裤女童修身打底裤外穿弹力儿童长裤', '26.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '2017春秋薄款童装儿童百搭修身打底裤仿皮裤女童中大童宝宝皮裤', '19.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '255', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '秋冬新款童裤女童加绒加厚仿皮裤 儿童中大童宝宝紧身弹性打底裤', '28.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '116', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '新款韩版男士衬衫男长袖衬衫商务修身纯白色工装职业男式衬衫批发', '29.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '166', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '2016秋季新款男士韩版修身长袖圆领t恤男装条纹拼色T恤男', '25.90', '均码', '红色', '爆款', '2017/12/08', '196', '1kg', '206', '0', '0', '1');
INSERT INTO udw_product VALUES (null, '1', '一件代发男式牛仔裤男士韩版修身弹力小脚裤秋季新款黑色男裤子潮', '38.90', '均码', '红色', '爆款', '2017/12/08', '1kg', '196', '366', '0', '0', '1');

#5 商品详情图表 (udw_product_pic)
CREATE TABLE udw_product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,		        #商品编号
  sm VARCHAR(128),            		#小图片路径
  md VARCHAR(128),            		#中图片路径
  lg VARCHAR(128),             		#大图片路径
  FOREIGN KEY(product_id) REFERENCES udw_product(lid)
);
INSERT INTO udw_product_pic VALUES (null, '1', 'picture/details/sm/1512715123.gif', 'picture/details/md/1512715123.gif', 'picture/details/lg/1512715123.gif');
INSERT INTO udw_product_pic VALUES (null, '1', 'picture/details/sm/1512715123.gif', 'picture/details/md/1512715123.gif', 'picture/details/lg/1512715123.gif');
INSERT INTO udw_product_pic VALUES (null, '2', 'picture/details/sm/4512335906_109609388.gif', 'picture/details/md/4512335906_109609388.gif', 'picture/details/lg/4512335906_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '3', 'picture/details/sm/3795241253_109609388.gif', 'picture/details/md/3795241253_109609388.gif', 'picture/details/lg/3795241253_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '4', 'picture/details/sm/2412596925_109609388.gif', 'picture/details/md/2412596925_109609388.gif', 'picture/details/lg/2412596925_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '5', 'picture/details/sm/3512411597_981664515.gif', 'picture/details/md/3512411597_981664515.gif', 'picture/details/lg/3512411597_981664515.gif');
INSERT INTO udw_product_pic VALUES (null, '6', 'picture/details/sm/3510842717_981664515.gif', 'picture/details/md/3510842717_981664515.gif', 'picture/details/lg/3510842717_981664515.gif');
INSERT INTO udw_product_pic VALUES (null, '7', 'picture/details/sm/3873258088_109609388.gif', 'picture/details/md/3873258088_109609388.gif', 'picture/details/lg/3873258088_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '8', 'picture/details/sm/3390533475_109609388.gif', 'picture/details/md/3390533475_109609388.gif', 'picture/details/lg/3390533475_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '9', 'picture/details/sm/4592429285_109609388.gif', 'picture/details/md/4592429285_109609388.gif', 'picture/details/lg/4592429285_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '10', 'picture/details/sm/3100566808_109609388.gif', 'picture/details/md/3100566808_109609388.gif', 'picture/details/lg/3100566808_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '11', 'picture/details/sm/2895302506_109609388.gif', 'picture/details/md/2895302506_109609388.gif', 'picture/details/lg/2895302506_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '12', 'picture/details/sm/3914006650_109609388.gif', 'picture/details/md/3914006650_109609388.gif', 'picture/details/lg/3914006650_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '12', 'picture/details/sm/3916833832_109609388.gif', 'picture/details/md/3916833832_109609388.gif', 'picture/details/lg/3916833832_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '12', 'picture/details/sm/3907480092_109609388.gif', 'picture/details/md/3907480092_109609388.gif', 'picture/details/lg/3907480092_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '12', 'picture/details/sm/3906761797_109609388.gif', 'picture/details/md/3906761797_109609388.gif', 'picture/details/lg/3906761797_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '12', 'picture/details/sm/3907471763_109609388.gif', 'picture/details/md/3907471763_109609388.gif', 'picture/details/lg/3907471763_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '12', 'picture/details/sm/3907483232_1096093881.gif', 'picture/details/md/3907483232_1096093881.gif', 'picture/details/lg/3907483232_1096093881.gif');
INSERT INTO udw_product_pic VALUES (null, '13', 'picture/details/sm/1297920879_109609388.gif', 'picture/details/md/1297920879_109609388.gif', 'picture/details/lg/1297920879_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '14', 'picture/details/sm/3031241094_109609388.gif', 'picture/details/md/3031241094_109609388.gif', 'picture/details/lg/3031241094_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '15', 'picture/details/sm/2369880549_109609388.gif', 'picture/details/md/2369880549_109609388.gif', 'picture/details/lg/2369880549_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '16', 'picture/details/sm/2986990768_109609388.gif', 'picture/details/md/2986990768_109609388.gif', 'picture/details/lg/2986990768_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '17', 'picture/details/sm/2852651345_109609388.gif', 'picture/details/md/2852651345_109609388.gif', 'picture/details/lg/2852651345_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '18', 'picture/details/sm/2748086236_109609388.gif', 'picture/details/md/2748086236_109609388.gif', 'picture/details/lg/2748086236_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '19', 'picture/details/sm/3529344212_981664515.gif', 'picture/details/md/3529344212_981664515.gif', 'picture/details/lg/3529344212_981664515.gif');
INSERT INTO udw_product_pic VALUES (null, '20', 'picture/details/sm/3577597987_981664515.gif', 'picture/details/md/3577597987_981664515.gif', 'picture/details/lg/3577597987_981664515.gif');
INSERT INTO udw_product_pic VALUES (null, '21', 'picture/details/sm/3394840771_109609388.gif', 'picture/details/md/3394840771_109609388.gif', 'picture/details/lg/3394840771_109609388.gif');
INSERT INTO udw_product_pic VALUES (null, '22', 'picture/details/sm/4706502812_1708617215.gif', 'picture/details/md/4706502812_1708617215.gif', 'picture/details/lg/4706502812_1708617215.gif');
INSERT INTO udw_product_pic VALUES (null, '23', 'picture/details/sm/4567908615_1708617215.gif', 'picture/details/md/4567908615_1708617215.gif', 'picture/details/lg/4567908615_1708617215.gif');
INSERT INTO udw_product_pic VALUES (null, '24', 'picture/details/sm/3329618551_1708617215.gif', 'picture/details/md/3329618551_1708617215.gif', 'picture/details/lg/3329618551_1708617215.gif');
INSERT INTO udw_product_pic VALUES (null, '25', 'picture/details/sm/3122173986_1708617215.gif', 'picture/details/md/3122173986_1708617215.gif', 'picture/details/lg/3122173986_1708617215.gif');
INSERT INTO udw_product_pic VALUES (null, '26', 'picture/details/sm/2667423080_1708617215.gif', 'picture/details/md/2667423080_1708617215.gif', 'picture/details/lg/2667423080_1708617215.gif');
INSERT INTO udw_product_pic VALUES (null, '27', 'picture/details/sm/2505700586_1708617215.gif', 'picture/details/md/2505700586_1708617215.gif', 'picture/details/lg/2505700586_1708617215.gif');
INSERT INTO udw_product_pic VALUES (null, '28', 'picture/details/sm/2622812850_1708617215.gif', 'picture/details/md/2622812850_1708617215.gif', 'picture/details/lg/2622812850_1708617215.gif');
INSERT INTO udw_product_pic VALUES (null, '29', 'picture/details/sm/3939002601_1349188149.gif', 'picture/details/md/3939002601_1349188149.gif', 'picture/details/lg/3939002601_1349188149.gif');
INSERT INTO udw_product_pic VALUES (null, '30', 'picture/details/sm/2911628171_1349188149.gif', 'picture/details/md/2911628171_1349188149.gif', 'picture/details/lg/2911628171_1349188149.gif');
INSERT INTO udw_product_pic VALUES (null, '31', 'picture/details/sm/2910229288_1349188149.gif', 'picture/details/md/2910229288_1349188149.gif', 'picture/details/lg/2910229288_1349188149.gif');
INSERT INTO udw_product_pic VALUES (null, '32', 'picture/details/sm/3753984134_1349188149.gif', 'picture/details/md/3753984134_1349188149.gif', 'picture/details/lg/3753984134_1349188149.gif');
INSERT INTO udw_product_pic VALUES (null, '33', 'picture/details/sm/3652851671_981664515.gif', 'picture/details/md/3652851671_981664515.gif', 'picture/details/lg/3652851671_981664515.gif');
INSERT INTO udw_product_pic VALUES (null, '34', 'picture/details/sm/3522028647_981664515.gif', 'picture/details/md/3522028647_981664515.gif', 'picture/details/lg/3522028647_981664515.gif');
INSERT INTO udw_product_pic VALUES (null, '35', 'picture/details/sm/3507959219_981664515.gif', 'picture/details/md/3507959219_981664515.gif', 'picture/details/lg/3507959219_981664515.gif');
#6 用户信息表(udw_user)
CREATE TABLE udw_user(
  uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,	#用户的ID，为用户的唯一标识，由系统自动生成
  uname	VARCHAR(32),
  upwd	VARCHAR(32),
  email	VARCHAR(64),
  phone	VARCHAR(16) NOT NULL UNIQUE,	#手机号码
  avatar VARCHAR(128),		        #头像图片路径
  user_name VARCHAR(32),		#用户名，如王小明
  gender INT 		                #性别  0-女  1-男
);
INSERT INTO udw_user VALUES (null, 'dingding', 'D123456', 'ding@qq.com', '13511001100', 'picture/default_avt.png', '丁春秋', '0');
INSERT INTO udw_user VALUES (null, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'picture/default_avt.png', '当当喵', '1');
INSERT INTO udw_user VALUES (null, 'doudou', '123456', 'dou@qq.com', '13501234569', 'picture/default_avt.png', '窦志强', '1');
INSERT INTO udw_user VALUES (null, 'yaya', 'Y123456', 'ya@qq.com', '13501234560', 'picture/default_avt.png', '秦小雅', '0');
INSERT INTO udw_user VALUES (null, '1111', '111111', '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO udw_user VALUES (null, 'ABCD', '123456', '123@qq.com', '13538894495', null, null, null);
INSERT INTO udw_user VALUES (null, 'mohk', '123456', '11@qq.com', '13512312312', null, null, null);
INSERT INTO udw_user VALUES (null, '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO udw_user VALUES (null, '555555', '5555555', '55555555@163.com', '13401331010', null, null, null);
INSERT INTO udw_user VALUES (null, 'xuyong', '123456', '123456789@qq.com', '15525623622', null, null, null);
INSERT INTO udw_user VALUES (null, 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null);
INSERT INTO udw_user VALUES (null, 'siyongbo', '900427', '616188545@qq.com', '18447103998', null, null, null);
INSERT INTO udw_user VALUES (null, 'qwerty', '123456', '1091256014@qq.com', '15617152367', null, null, null);
INSERT INTO udw_user VALUES (null, 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null, null, null);
INSERT INTO udw_user VALUES (null, 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', null, null, null);
INSERT INTO udw_user VALUES (null, 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', null, null, null);
INSERT INTO udw_user VALUES (null, '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', null, null, null);
INSERT INTO udw_user VALUES (null, 'Jessy', 'ac210921', '123456@qq.com', '13523456789', null, null, null);
INSERT INTO udw_user VALUES (null, 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', null, null, null);
INSERT INTO udw_user VALUES (null, '查安军', '025520', '27514172112@qq.com', '18158899905', null, null, null);
#7 用户地址表 (udw_receiver_address)
CREATE TABLE udw_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,	
  user_id INT,		        #用户编号
  receiver VARCHAR(16), 	#接收人姓名
  province VARCHAR(16), 	#省
  city VARCHAR(16),        	#市
  county VARCHAR(16),		#县
  address VARCHAR(128),      	#详细地址
  cellphone VARCHAR(16),	#手机
  fixedphone VARCHAR(16),	#固定电话
  postcode CHAR(6),		#邮编
  tag VARCHAR(16),		#标签名
  is_default BOOLEAN,         	#是否为当前用户的默认收货地址
  FOREIGN KEY(user_id) REFERENCES udw_user(uid)
);
#8 用户购物车表(udw_shopping_item)
CREATE TABLE udw_shopping_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,	
  user_id INT, 		#用户编号
  product_id INT, 	#商品编号
  count	INT, 		#购买数量
  is_checked tinyint(1) default NULL,
  FOREIGN KEY(user_id) REFERENCES udw_user(uid),
  FOREIGN KEY(product_id) REFERENCES udw_product(lid)
);
INSERT INTO udw_shopping_item VALUES (null, '1', '11', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '12', '1', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '13', '3', '9', '0');
INSERT INTO udw_shopping_item VALUES (null, '14', '1', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '20', '1', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '1', '28', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '19', '5', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '18', '19', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '14', '1', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '3', '1', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '16', '20', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '2', '19', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '11', '19', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '1', '5', '15', '1');
INSERT INTO udw_shopping_item VALUES (null, '10', '28', '2', '1');
INSERT INTO udw_shopping_item VALUES (null, '1', '9', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '17', '22', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '9', '1', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '8', '28', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '1', '1', '6', '1');
INSERT INTO udw_shopping_item VALUES (null, '7', '28', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '6', '28', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '15', '5', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '5', '1', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '5', '28', '1', '1');
INSERT INTO udw_shopping_item VALUES (null, '5', '5', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '9', '9', '1', '0');
INSERT INTO udw_shopping_item VALUES (null, '4', '19', '1', '0');
#9 用户订单表 (udw_order)
CREATE TABLE udw_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,		#用户编号
  address_id INT,		
  status INT,           #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消  
  order_time BIGINT,    #下单时间     
  pay_time BIGINT,      #付款时间
  deliver_time BIGINT,  #发货时间      
  received_time BIGINT,  #签收时间
  FOREIGN KEY(user_id) REFERENCES udw_user(uid),
  FOREIGN KEY(address_id) REFERENCES udw_receiver_address(aid)
);
#10 用户订单详情表 (udw_order_detail)
CREATE TABLE udw_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,	
  order_id INT,		#订单编号
  product_id INT,	#产品编号
  count INT,            #购买数量  
  FOREIGN KEY(order_id) REFERENCES udw_order(aid),
  FOREIGN KEY(product_id) REFERENCES udw_product(lid)
);