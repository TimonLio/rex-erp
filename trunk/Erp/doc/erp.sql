toc.dat                                                                                             100600  004000  002000  00000031702 11010221704 007271  0                                                                                                    ustar00                                                                                                                                                                                                                                                        PGDMP
       #    $                l            test    8.3.1    8.3.1 6    3           0    0    ENCODING    ENCODING    SET client_encoding = 'UTF8';
                       false         4           0    0 
   STDSTRINGS 
   STDSTRINGS )   SET standard_conforming_strings = 'off';
                       false                     2615    16633    erp    SCHEMA    CREATE SCHEMA erp;
    DROP SCHEMA erp;
             postgres    false         5           0    0    erp    ACL �   REVOKE ALL ON SCHEMA erp FROM PUBLIC;
REVOKE ALL ON SCHEMA erp FROM postgres;
GRANT ALL ON SCHEMA erp TO postgres;
GRANT ALL ON SCHEMA erp TO PUBLIC;
                  postgres    false    7                    1259    16665    order    TABLE �   CREATE TABLE "order" (
    id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    status integer NOT NULL,
    fee real NOT NULL
);
    DROP TABLE erp."order";
       erp         test    false    7                    1259    16673 
   order_item    TABLE �   CREATE TABLE order_item (
    id integer NOT NULL,
    order_id integer NOT NULL,
    ware_id integer NOT NULL,
    cost real NOT NULL,
    number integer NOT NULL
);
    DROP TABLE erp.order_item;
       erp         test    false    7         �           1259    16647    sell    TABLE A  CREATE TABLE sell (
    id integer NOT NULL,
    customer_name character varying(64) NOT NULL,
    customer_address character varying(128) NOT NULL,
    customer_phone1 character varying(64) NOT NULL,
    customer_phone2 character varying(64) NOT NULL,
    customer_postcode character varying(6) NOT NULL,
    fee real NOT NULL,
    fee_real real NOT NULL,
    create_date timestamp without time zone NOT NULL,
    express_id integer NOT NULL,
    customer_wangwang character varying(64),
    comment character varying(64) NOT NULL,
    sender character varying(8) NOT NULL
);
    DROP TABLE erp.sell;
       erp         test    false    7                    1259    16655 	   sell_item    TABLE �   CREATE TABLE sell_item (
    id integer NOT NULL,
    sell_id integer NOT NULL,
    ware_id integer NOT NULL,
    number integer NOT NULL,
    price real DEFAULT 0 NOT NULL
);
    DROP TABLE erp.sell_item;
       erp         test    false    1816    7         �           1259    16636    ware    TABLE �   CREATE TABLE ware (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    cost real DEFAULT 0 NOT NULL,
    price real DEFAULT 0 NOT NULL,
    number integer NOT NULL,
    barcode character varying(16)
);
    DROP TABLE erp.ware;
       erp         test    false    1813    1814    7         6           0    0    COLUMN ware.cost    COMMENT $   COMMENT ON COLUMN ware.cost IS '0';
            erp       test    false    1533                    1259    16681    ware_category    TABLE a   CREATE TABLE ware_category (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);
    DROP TABLE erp.ware_category;
       erp         test    false    7         	           1259    16689    ware_grouping    TABLE }   CREATE TABLE ware_grouping (
    id integer NOT NULL,
    ware_id integer NOT NULL,
    ware_category_id integer NOT NULL
);
    DROP TABLE erp.ware_grouping;
       erp         test    false    7                    1259    16663    order_id_seq    SEQUENCE n   CREATE SEQUENCE order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
     DROP SEQUENCE erp.order_id_seq;
       erp       test    false    7    1539         7           0    0    order_id_seq    SEQUENCE OWNED BY 1   ALTER SEQUENCE order_id_seq OWNED BY "order".id;
            erp       test    false    1538         8           0    0    order_id_seq    SEQUENCE SET 4   SELECT pg_catalog.setval('order_id_seq', 1, false);
            erp       test    false    1538                    1259    16671    order_item_id_seq    SEQUENCE s   CREATE SEQUENCE order_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 %   DROP SEQUENCE erp.order_item_id_seq;
       erp       test    false    7    1541         9           0    0    order_item_id_seq    SEQUENCE OWNED BY 9   ALTER SEQUENCE order_item_id_seq OWNED BY order_item.id;
            erp       test    false    1540         :           0    0    order_item_id_seq    SEQUENCE SET 9   SELECT pg_catalog.setval('order_item_id_seq', 1, false);
            erp       test    false    1540         �           1259    16645    sell_id_seq    SEQUENCE \   CREATE SEQUENCE sell_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
    DROP SEQUENCE erp.sell_id_seq;
       erp       test    false    7    1535         ;           0    0    sell_id_seq    SEQUENCE OWNED BY -   ALTER SEQUENCE sell_id_seq OWNED BY sell.id;
            erp       test    false    1534         <           0    0    sell_id_seq    SEQUENCE SET 3   SELECT pg_catalog.setval('sell_id_seq', 56, true);
            erp       test    false    1534                     1259    16653    sell_item_id_seq    SEQUENCE a   CREATE SEQUENCE sell_item_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 $   DROP SEQUENCE erp.sell_item_id_seq;
       erp       test    false    7    1537         =           0    0    sell_item_id_seq    SEQUENCE OWNED BY 7   ALTER SEQUENCE sell_item_id_seq OWNED BY sell_item.id;
            erp       test    false    1536         >           0    0    sell_item_id_seq    SEQUENCE SET 9   SELECT pg_catalog.setval('sell_item_id_seq', 108, true);
            erp       test    false    1536                    1259    16679    ware_category_id_seq    SEQUENCE v   CREATE SEQUENCE ware_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 (   DROP SEQUENCE erp.ware_category_id_seq;
       erp       test    false    1543    7         ?           0    0    ware_category_id_seq    SEQUENCE OWNED BY ?   ALTER SEQUENCE ware_category_id_seq OWNED BY ware_category.id;
            erp       test    false    1542         @           0    0    ware_category_id_seq    SEQUENCE SET <   SELECT pg_catalog.setval('ware_category_id_seq', 1, false);
            erp       test    false    1542                    1259    16687    ware_grouping_id_seq    SEQUENCE v   CREATE SEQUENCE ware_grouping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 (   DROP SEQUENCE erp.ware_grouping_id_seq;
       erp       test    false    7    1545         A           0    0    ware_grouping_id_seq    SEQUENCE OWNED BY ?   ALTER SEQUENCE ware_grouping_id_seq OWNED BY ware_grouping.id;
            erp       test    false    1544         B           0    0    ware_grouping_id_seq    SEQUENCE SET <   SELECT pg_catalog.setval('ware_grouping_id_seq', 1, false);
            erp       test    false    1544         �           1259    16634    ware_id_seq    SEQUENCE \   CREATE SEQUENCE ware_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
    DROP SEQUENCE erp.ware_id_seq;
       erp       test    false    1533    7         C           0    0    ware_id_seq    SEQUENCE OWNED BY -   ALTER SEQUENCE ware_id_seq OWNED BY ware.id;
            erp       test    false    1532         D           0    0    ware_id_seq    SEQUENCE SET 3   SELECT pg_catalog.setval('ware_id_seq', 48, true);
            erp       test    false    1532                    2604    16668    id    DEFAULT S   ALTER TABLE "order" ALTER COLUMN id SET DEFAULT nextval('order_id_seq'::regclass);
 6   ALTER TABLE erp."order" ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1539    1538    1539                    2604    16747    id    DEFAULT [   ALTER TABLE order_item ALTER COLUMN id SET DEFAULT nextval('order_item_id_seq'::regclass);
 9   ALTER TABLE erp.order_item ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1541    1540    1541                    2604    16650    id    DEFAULT O   ALTER TABLE sell ALTER COLUMN id SET DEFAULT nextval('sell_id_seq'::regclass);
 3   ALTER TABLE erp.sell ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1534    1535    1535                    2604    16748    id    DEFAULT Y   ALTER TABLE sell_item ALTER COLUMN id SET DEFAULT nextval('sell_item_id_seq'::regclass);
 8   ALTER TABLE erp.sell_item ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1536    1537    1537                    2604    16639    id    DEFAULT O   ALTER TABLE ware ALTER COLUMN id SET DEFAULT nextval('ware_id_seq'::regclass);
 3   ALTER TABLE erp.ware ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1533    1532    1533                    2604    16684    id    DEFAULT a   ALTER TABLE ware_category ALTER COLUMN id SET DEFAULT nextval('ware_category_id_seq'::regclass);
 <   ALTER TABLE erp.ware_category ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1542    1543    1543                    2604    16692    id    DEFAULT a   ALTER TABLE ware_grouping ALTER COLUMN id SET DEFAULT nextval('ware_grouping_id_seq'::regclass);
 <   ALTER TABLE erp.ware_grouping ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1544    1545    1545         /          0    16665    order 
   TABLE DATA           8   COPY "order" (id, create_date, status, fee) FROM stdin;
    erp       test    false    1539       1839.dat 0          0    16673 
   order_item 
   TABLE DATA           B   COPY order_item (id, order_id, ware_id, cost, number) FROM stdin;
    erp       test    false    1541       1840.dat -          0    16647    sell 
   TABLE DATA           �   COPY sell (id, customer_name, customer_address, customer_phone1, customer_phone2, customer_postcode, fee, fee_real, create_date, express_id, customer_wangwang, comment, sender) FROM stdin;
    erp       test    false    1535       1837.dat .          0    16655 	   sell_item 
   TABLE DATA           A   COPY sell_item (id, sell_id, ware_id, number, price) FROM stdin;
    erp       test    false    1537       1838.dat ,          0    16636    ware 
   TABLE DATA           ?   COPY ware (id, name, cost, price, number, barcode) FROM stdin;
    erp       test    false    1533       1836.dat 1          0    16681    ware_category 
   TABLE DATA           *   COPY ware_category (id, name) FROM stdin;
    erp       test    false    1543       1841.dat 2          0    16689    ware_grouping 
   TABLE DATA           ?   COPY ware_grouping (id, ware_id, ware_category_id) FROM stdin;
    erp       test    false    1545       1842.dat '           2606    16678    order_lst_p_key 
   CONSTRAINT Q   ALTER TABLE ONLY order_item
    ADD CONSTRAINT order_lst_p_key PRIMARY KEY (id);
 A   ALTER TABLE ONLY erp.order_item DROP CONSTRAINT order_lst_p_key;
       erp         test    false    1541    1541         %           2606    16670    order_p_key 
   CONSTRAINT J   ALTER TABLE ONLY "order"
    ADD CONSTRAINT order_p_key PRIMARY KEY (id);
 :   ALTER TABLE ONLY erp."order" DROP CONSTRAINT order_p_key;
       erp         test    false    1539    1539         #           2606    16660    sell_lst_p_code 
   CONSTRAINT P   ALTER TABLE ONLY sell_item
    ADD CONSTRAINT sell_lst_p_code PRIMARY KEY (id);
 @   ALTER TABLE ONLY erp.sell_item DROP CONSTRAINT sell_lst_p_code;
       erp         test    false    1537    1537         !           2606    16652 
   sell_p_key 
   CONSTRAINT F   ALTER TABLE ONLY sell
    ADD CONSTRAINT sell_p_key PRIMARY KEY (id);
 6   ALTER TABLE ONLY erp.sell DROP CONSTRAINT sell_p_key;
       erp         test    false    1535    1535         )           2606    16686    ware_category_p_key 
   CONSTRAINT X   ALTER TABLE ONLY ware_category
    ADD CONSTRAINT ware_category_p_key PRIMARY KEY (id);
 H   ALTER TABLE ONLY erp.ware_category DROP CONSTRAINT ware_category_p_key;
       erp         test    false    1543    1543         +           2606    16694    ware_grouping_p_key 
   CONSTRAINT X   ALTER TABLE ONLY ware_grouping
    ADD CONSTRAINT ware_grouping_p_key PRIMARY KEY (id);
 H   ALTER TABLE ONLY erp.ware_grouping DROP CONSTRAINT ware_grouping_p_key;
       erp         test    false    1545    1545                    2606    16643 
   ware_p_key 
   CONSTRAINT F   ALTER TABLE ONLY ware
    ADD CONSTRAINT ware_p_key PRIMARY KEY (id);
 6   ALTER TABLE ONLY erp.ware DROP CONSTRAINT ware_p_key;
       erp         test    false    1533    1533                                                                      1839.dat                                                                                            100600  004000  002000  00000000005 11010221704 007100  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1840.dat                                                                                            100600  004000  002000  00000000005 11010221704 007070  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1837.dat                                                                                            100600  004000  002000  00000016025 11010221704 007107  0                                                                                                    ustar00                                                                                                                                                                                                                                                        4	沈昳	上海 上海市 闸北区 三泉路999弄5号602室	13918072251	021-66246282	200443	5	4	2008-04-30 21:54:38.859	0	奥特星		
5	卢业昌	湖北省 襄樊市 樊城区 长征东路45号襄樊工贸	13026121924		441000	10	10	2008-04-30 22:15:38.171	0	sherrylew 		
13	张兰兰	湖北省 宜昌市 西陵区 西坝建设路24-2号	15902163043	0717-6279602	443002	10	10	2008-05-02 01:59:16.546	0	zllwj		
14	黄芹	江苏省 张家港市 港区镇 君秀路49号	13405618680			5	4	2008-05-02 10:16:11.796	0	kongking_tb		
15	徐丹	江苏省 苏州市 平江区 干将西路93号国涛商务大厦521室（苏州创元专利商标事务所）	13913573289	0512-65120387	215002	5	4	2008-05-02 14:37:13.696	0	xudan7283168		
16	王秋霞	江苏省 无锡市 新区 新梅路61号住化工地MIC办公室	13812068382	0510-85322230-8898	214028	5	4	2008-05-02 15:09:16.174	0	kasumiwang		
17	沈晓玲	浙江省 杭州市 江干区 浙江省杭州市江干区九堡镇牛田村一组43号	15958171700		310019	5	4	2008-05-02 20:57:43.414	0	bl狂想麯		
20	胡晓哲	浙江省 杭州市 下城区 杭州市下城区胭脂新村5－2－701	13616543210	0571-85155487	310003	5	4	2008-05-02 21:15:45.617	0	phoebehxz		
29	杨漾羽屏	浙江省 台州市 路桥区 小商品市场箱包9排2号 杨杏素 转	13968661611	0576-82538995	318050	5	4	2008-05-05 00:26:07.031	0	迎风跑的温暖		
10	顾佳明	江苏省 无锡市 南长区 清扬路299号无锡市人民医院门诊药房	13511658038	0510-83111237	214000	5	4	2008-05-01 23:07:56.984	0	lafree		
11	梁琦	上海 上海市 普陀区 武宁路19号丽晶阳光大厦1801室（上海中实公司）	13917135118		200042	5	4	2008-05-01 23:11:42.281	0	solar_system		
12	周慧慧	上海 上海市 浦东新区 上海市金海路2727号28幢103室	13816609248	021-61004121	200120	5	4	2008-05-01 23:13:23.796	0	wichgirl		
9	邵霜霜	江苏省 常州市 钟楼区 江苏技术师范学院209信箱	13915078209	0519-86184410	213001	5	4	2008-05-01 23:03:03.921	0	shaoss008		
18	汪雯斐	四川省 成都市 新都区 新都大道8号西南石油大学外语系06级2班	13980429874	0937-3922280	610500	10	10	2008-05-02 20:59:35.008	0	sakura_juju		
19	谢磊	浙江省 杭州市 江干区 下沙中国工商银行杭州经济技术开发区支行	13735494054		310018	5	4	2008-05-02 21:02:53.195	0	xiaoxuan_sky		
38	项然	浙江省 宁波市 镇海区 渔基路238号	15968467305		315221	5	4	2008-05-05 19:03:57.359	0	sunnyegg035		
28	潘桢	浙江省 杭州市 江干区 下沙经济开发区文泽路99号福雷德广场4栋1单元202室	13738009918		310018	5	4	2008-05-03 23:06:44.859	0	summer_zhen		
21	崔琳	上海 上海市 普陀区 上海市普陀区中山北路3644弄11号405室	13918529033		200063	5	4	2008-05-03 00:56:18.398	0	aimar_yu		
47	刘波	甘肃省 平凉市 崆峒区 中油甘肃平凉销售分公司七里店加油站	13993359099		744000	12	10	2008-05-06 01:25:29.937	6	东邪西独		
25	温伟雄	广东省 深圳市 罗湖区 水贝一路76号深华丽园C座903	13682351193	0755-25533116	518000	10	8	2008-05-03 12:31:20.921	0	jun414880687		
26	顾燕	江苏省 南通市 崇川区 南园路20号2幢504	13626282606	0513-85518629	226001	5	4	2008-05-03 15:20:03.218	0	yanyan00629		
39	王珍	上海市 卢湾区 普安路189号曙光大厦18楼C	13817729485			0	0	2008-05-05 19:05:48.781	0	QQ：85868128 冷感宝贝		
30	郑缨	重庆 重庆市 九龙坡区 九龙坡高新区南方花园C2区嘉兴楼15-2	13808342520	023-68633639	400041	10	8	2008-05-04 19:57:37.14	0	zy11661000		
27	姚瑶	湖南省长沙市芙蓉区远大二路<泉塘>长沙电力职业技术学院	13723896369			10	10	2008-05-03 20:07:56.421	0	妖精瑶pp		
31	冯延兴	天津 天津市 大港区 天津市大港区港明里4-1-501	13312122273		300000	10	10	2008-05-04 20:15:23.171	0	fengyx001		
32	李荣元	四川省 泸州市 江阳区 佳裕路1号2-14号	0830-3102856		646000	10	10	2008-05-04 20:16:18.50	0	sule90		
40	陈婷婷	上海 上海市 浦东新区 新金桥路18号 民航大厦24层 世源科技工程有限公司	13917479888		201206	5	4	2008-05-05 19:09:48.593	0	tracylovemimi		
34	自提					0	0	2008-05-04 20:26:22.812	0			
33	杨志琳	上海 上海市 徐汇区 徐汇区宜山路889号齐来工业区1号楼2楼	13916512771	021-4006205151-5032	200010	5	4	2008-05-05 00:44:37.39	0	yangzl19831127		
41	沈林燕	浙江省 杭州市 西湖区 古墩路政新花园12-101	13205713881		310012	5	4	2008-05-05 19:11:36.312	0	lynnhz		
35	高阳斯筠	江苏省 南京市 江宁区 中国传媒大学南广学院	15950525174		211172	5	4	2008-05-05 18:58:44.437	0	高阳斯筠		
36	马寒杰	浙江省 杭州市 上城区 东坡路23号东方润园贵宾接待中心	13588849605		310002	5	4	2008-05-05 18:59:55.062	0	猫小巫		
37	王珏	江苏省 昆山市 黑龙江北路55号 沪士电子股份有限公司	13915737187	0512-57356311	215301	5	4	2008-05-05 19:01:29.937	0	jasmine_w		
42	梁裕	上海 上海市 徐汇区 龙山新村53号304室	13764545038		200030	5	4	2008-05-05 19:46:43.906	0	lavender_xunxun		
43	温小明	江苏省 扬中市 中电大道188号 中电电气集团设备公司常规变技术部	13775350203		212200	5	4	2008-05-05 20:09:02.031	0	夏雨雪0		
44	粟源	广西壮族自治区 梧州市 蝶山区 文澜路40号添添百货文具商店	13517749537	0774-2182371	543001	12	10	2008-05-05 20:11:11.312	0	夙愿子		
45	张蕾	江苏省 无锡市 崇安区 中山路88号明珠世纪大厦2号门903室	13337906030		214014	5	4	2008-05-06 01:18:54.906	0	zlxka1984		
46	沈岚	浙江省 舟山市 定海区 白虎山路35号三单元305室	13857208151		316000	5	4	2008-05-06 01:19:20.515	0	shenlan_8382		
48	李晓云	广东省 深圳市 罗湖区 太安路百仕达花园4期东郡花园 2栋 27楼D 李晓云 13249886828	13249886828		518002	0	10	2008-05-06 01:37:56.968	0	beautybags		
49	张权华	安徽省 合肥市 蜀山区 望江西路116号华力大夏五楼	15905516079		230031	10	8	2008-05-06 17:09:06.703	0	zqh1225		
50	吕治国	湖南省 长沙市 芙蓉区 芙蓉苑小区甲1栋603房	13508483384		410001	10	10	2008-05-06 17:21:37.171	0	给我优惠一点点		
51	冼芊延	广西壮族自治区 桂林市 秀峰区 广西师范大学王城校区美术学院07级应用环艺班	15977337809		541001	12	10	2008-05-06 17:24:50.062	0	东京拉面哈哈		
52	郑培露	浙江省 杭州市 西湖区 浙江工业大学(屏风校区)	13588466612	0571-85293359	310023	5	4	2008-05-06 18:16:25.578	0	zhengpeilu		
53	张洁敏	浙江省 嵊州市 嵊州市经济开发区天乐路8号(浙江天乐数码电器有限公司)市场部	13221577723	0575-83358188	312400	0	0	2008-05-06 19:15:01.734	0	黄少沛2005 		
54	林瑞祥	江西省 赣州市 章贡区 赣南师范学院科技学院06法学	15970081357		341000	10	10	2008-05-06 19:42:26.062	0	lrxgongjin		
55	齐瑛	山东省 济南市 长清区 山东师范大学长清校区文学院05级广播电视新闻班	13668805077	0531-89613186	250358	10	8	2008-05-06 19:43:09.218	0	qiying5077		
56	程米丽	重庆 重庆市 万州区 重庆市万州区儿童医院30楼3号	13996511111	023-58154666	404000	0	0	2008-05-07 00:33:45.125	0	程米丽		
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1838.dat                                                                                            100600  004000  002000  00000002670 11010221704 007111  0                                                                                                    ustar00                                                                                                                                                                                                                                                        2	4	14	1	200
3	5	15	1	15
4	5	16	1	15
5	5	17	1	40
6	5	18	2	15
9	9	1	1	50
10	10	21	2	15
11	10	20	2	15
12	10	19	2	15
13	11	22	1	15
14	11	18	1	15
15	11	21	2	15
16	11	1	1	50
17	12	22	1	15
18	12	18	1	15
19	13	23	4	15
20	14	18	1	15
21	14	21	1	15
22	14	20	1	15
23	14	24	1	15
24	15	1	1	50
25	16	25	1	65
26	16	1	1	50
27	17	1	1	50
28	18	26	1	15
29	18	27	1	40
30	18	17	1	15
31	19	28	1	15
32	19	1	1	15
33	19	18	1	15
34	19	21	1	15
35	20	19	2	15
36	20	29	1	15
37	20	17	1	15
38	20	24	1	15
39	21	30	3	15
40	21	18	1	15
41	21	19	1	15
42	21	22	1	15
43	25	31	1	95
44	26	1	1	50
45	27	1	1	50
46	28	21	1	15
47	28	20	1	15
48	29	1	1	50
49	29	14	1	200
50	30	18	2	15
51	31	1	1	50
52	32	19	1	15
53	32	24	2	15
54	33	18	2	15
55	34	14	1	200
56	34	32	1	80
57	34	18	1	15
58	34	22	1	15
59	34	26	1	15
60	34	33	1	15
61	35	18	3	15
62	36	34	1	75
63	37	35	1	145
64	37	36	1	65
65	38	21	1	15
66	39	18	2	15
67	39	27	2	15
68	39	20	2	15
69	39	21	2	15
70	39	34	1	75
71	39	37	1	50
72	40	38	1	38
73	40	32	1	80
74	41	18	1	15
75	42	18	1	15
76	42	21	1	15
77	42	20	1	15
78	42	24	1	15
79	43	1	1	50
80	44	19	2	15
81	44	20	2	15
82	45	39	1	88
83	47	18	4	15
84	46	1	1	50
86	46	41	2	15
85	46	40	2	15
87	48	18	5	15
88	48	22	3	15
89	48	42	5	15
90	48	43	6	15
91	48	44	1	65
92	48	45	5	15
93	48	21	8	15
94	48	16	6	15
95	48	46	4	15
96	49	20	1	15
97	50	47	1	88
98	50	35	1	145
99	50	39	1	88
100	51	30	3	15
101	52	1	1	50
102	53	48	1	180
103	54	18	1	15
104	55	1	1	50
105	56	33	5	15
108	56	22	5	15
107	56	45	5	15
106	56	18	5	15
\.


                                                                        1836.dat                                                                                            100600  004000  002000  00000004266 11010221704 007112  0                                                                                                    ustar00                                                                                                                                                                                                                                                        3	大创神奇天然魔芋洗颜棉	3.5	6.8000002	6	4974012236145
14	资生堂安耐晒SPF46脸部防晒霜40g	170	200	2	4901872346189
15	大创氨基酸20天量	11	15	0	4984343392021
16	大创蓝莓20天量	11	15	15	4984343243538
17	大创辅酶Q10 40日量	22	40	45	4940921814798
18	大创胶原蛋白20天量	11	15	41	4984343243484
19	大创甲壳素20天量	11	15	0	4984343243620
20	大创烧化系15日量	11	15	0	4984343299979
21	大创脂吸止系15日量	11	15	0	4984343299986
42	大创无添加亚铁/铁片20天量	11	15	0	4984343243675
23	大创左旋肉碱+CoQ10 15日量	11	15	4	4984343483125
24	大创糖吸止系15日量	11	15	0	4984343299993
25	SonyCP黑眼圈修正液 眼部隔离霜SPF24 PA++ 20g	52	65	0	4515061042990
26	大创青木瓜40天量	22	40	0	4940921811704
27	大创硫辛酸+CoQ10 15天量	11	15	0	4984343483118
28	大创维生素B群20天量	11	15	0	4984343392038
29	大创匙羹藤精华20天量	11	15	0	4984343243583
30	大创大豆异黄酮20天量	11	15	0	4984343541146
31	JUJU玻尿酸+胶原蛋白 面霜50g	85	95	0	4901727600244
22	大创透明质酸20天量	11	15	0	4984343392014
33	大创维生素C片20天量	11	15	1	4984343243521
43	大创玄米黑醋20天量	11	15	0	4984343243590
47	08款Shiseido资生堂Anessa安耐晒SPF50+超强防水防晒霜（金）25ml	0	88	0	
32	JUJU透明质酸+VC 美白化妆水150ml	65	80	0	4901727337171
35	胶原蛋白粉214g/30日分	132	145	0	
48	08款Shiseido资生堂Anessa安耐晒SPF50+防水防晒霜（银）60ml	150	188	0	
36	SANA/莎娜 毛孔职人润色遮瑕隔离乳SPF17 PA++ 25g	54	65	0	
1	曼秀雷敦Acnes防晒隔离SPF50+肌色30g	46	50	10	4987241108862
38	SANA 绢丝氨基酸保湿洗面奶 120g	29	38	0	
39	08款Shiseido资生堂Anessa安耐晒SPF50+防水防晒霜（银）25ml	0	88	0	
45	大创食物纤维20天量	11	15	0	4984343541177
46	大创蜂胶20天量	11	15	0	4984343243569
44	SonyCP ULTRASKIN毛孔修正液 饰底乳 隔离霜SPF24 PA++ 20g	0	65	0	4515061042983
37	JUJU AQUAMOIST透明质酸洗面乳120g	39	50	0	
34	JUJU AQUAMOIST透明质酸化妆水（滋润型）150ml	63	75	0	
40	大创无添加软骨素20天量	11	15	0	4984343243721
41	大创综合维他命/复合维生素 20天量	11	15	0	4984343243514
\.


                                                                                                                                                                                                                                                                                                                                          1841.dat                                                                                            100600  004000  002000  00000000005 11010221704 007071  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1842.dat                                                                                            100600  004000  002000  00000000005 11010221704 007072  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         100600  004000  002000  00000030117 11010221704 010215  0                                                                                                    ustar00                                                                                                                                                                                                                                                        create temporary table pgdump_restore_path(p text);
--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
-- Edit the following to match the path where the
-- tar archive has been extracted.
--
insert into pgdump_restore_path values('/tmp');

--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = erp, pg_catalog;

ALTER TABLE ONLY erp.ware DROP CONSTRAINT ware_p_key;
ALTER TABLE ONLY erp.ware_grouping DROP CONSTRAINT ware_grouping_p_key;
ALTER TABLE ONLY erp.ware_category DROP CONSTRAINT ware_category_p_key;
ALTER TABLE ONLY erp.sell DROP CONSTRAINT sell_p_key;
ALTER TABLE ONLY erp.sell_item DROP CONSTRAINT sell_lst_p_code;
ALTER TABLE ONLY erp."order" DROP CONSTRAINT order_p_key;
ALTER TABLE ONLY erp.order_item DROP CONSTRAINT order_lst_p_key;
ALTER TABLE erp.ware_grouping ALTER COLUMN id DROP DEFAULT;
ALTER TABLE erp.ware_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE erp.ware ALTER COLUMN id DROP DEFAULT;
ALTER TABLE erp.sell_item ALTER COLUMN id DROP DEFAULT;
ALTER TABLE erp.sell ALTER COLUMN id DROP DEFAULT;
ALTER TABLE erp.order_item ALTER COLUMN id DROP DEFAULT;
ALTER TABLE erp."order" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE erp.ware_id_seq;
DROP SEQUENCE erp.ware_grouping_id_seq;
DROP SEQUENCE erp.ware_category_id_seq;
DROP SEQUENCE erp.sell_item_id_seq;
DROP SEQUENCE erp.sell_id_seq;
DROP SEQUENCE erp.order_item_id_seq;
DROP SEQUENCE erp.order_id_seq;
DROP TABLE erp.ware_grouping;
DROP TABLE erp.ware_category;
DROP TABLE erp.ware;
DROP TABLE erp.sell_item;
DROP TABLE erp.sell;
DROP TABLE erp.order_item;
DROP TABLE erp."order";
DROP SCHEMA erp;
--
-- Name: erp; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA erp;


ALTER SCHEMA erp OWNER TO postgres;

SET search_path = erp, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: order; Type: TABLE; Schema: erp; Owner: test; Tablespace: 
--

CREATE TABLE "order" (
    id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    status integer NOT NULL,
    fee real NOT NULL
);


ALTER TABLE erp."order" OWNER TO test;

--
-- Name: order_item; Type: TABLE; Schema: erp; Owner: test; Tablespace: 
--

CREATE TABLE order_item (
    id integer NOT NULL,
    order_id integer NOT NULL,
    ware_id integer NOT NULL,
    cost real NOT NULL,
    number integer NOT NULL
);


ALTER TABLE erp.order_item OWNER TO test;

--
-- Name: sell; Type: TABLE; Schema: erp; Owner: test; Tablespace: 
--

CREATE TABLE sell (
    id integer NOT NULL,
    customer_name character varying(64) NOT NULL,
    customer_address character varying(128) NOT NULL,
    customer_phone1 character varying(64) NOT NULL,
    customer_phone2 character varying(64) NOT NULL,
    customer_postcode character varying(6) NOT NULL,
    fee real NOT NULL,
    fee_real real NOT NULL,
    create_date timestamp without time zone NOT NULL,
    express_id integer NOT NULL,
    customer_wangwang character varying(64),
    comment character varying(64) NOT NULL,
    sender character varying(8) NOT NULL
);


ALTER TABLE erp.sell OWNER TO test;

--
-- Name: sell_item; Type: TABLE; Schema: erp; Owner: test; Tablespace: 
--

CREATE TABLE sell_item (
    id integer NOT NULL,
    sell_id integer NOT NULL,
    ware_id integer NOT NULL,
    number integer NOT NULL,
    price real DEFAULT 0 NOT NULL
);


ALTER TABLE erp.sell_item OWNER TO test;

--
-- Name: ware; Type: TABLE; Schema: erp; Owner: test; Tablespace: 
--

CREATE TABLE ware (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    cost real DEFAULT 0 NOT NULL,
    price real DEFAULT 0 NOT NULL,
    number integer NOT NULL,
    barcode character varying(16)
);


ALTER TABLE erp.ware OWNER TO test;

--
-- Name: COLUMN ware.cost; Type: COMMENT; Schema: erp; Owner: test
--

COMMENT ON COLUMN ware.cost IS '0';


--
-- Name: ware_category; Type: TABLE; Schema: erp; Owner: test; Tablespace: 
--

CREATE TABLE ware_category (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE erp.ware_category OWNER TO test;

--
-- Name: ware_grouping; Type: TABLE; Schema: erp; Owner: test; Tablespace: 
--

CREATE TABLE ware_grouping (
    id integer NOT NULL,
    ware_id integer NOT NULL,
    ware_category_id integer NOT NULL
);


ALTER TABLE erp.ware_grouping OWNER TO test;

--
-- Name: order_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.order_id_seq OWNER TO test;

--
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE order_id_seq OWNED BY "order".id;


--
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('order_id_seq', 1, false);


--
-- Name: order_item_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE order_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.order_item_id_seq OWNER TO test;

--
-- Name: order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE order_item_id_seq OWNED BY order_item.id;


--
-- Name: order_item_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('order_item_id_seq', 1, false);


--
-- Name: sell_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE sell_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.sell_id_seq OWNER TO test;

--
-- Name: sell_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE sell_id_seq OWNED BY sell.id;


--
-- Name: sell_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('sell_id_seq', 56, true);


--
-- Name: sell_item_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE sell_item_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.sell_item_id_seq OWNER TO test;

--
-- Name: sell_item_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE sell_item_id_seq OWNED BY sell_item.id;


--
-- Name: sell_item_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('sell_item_id_seq', 108, true);


--
-- Name: ware_category_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE ware_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.ware_category_id_seq OWNER TO test;

--
-- Name: ware_category_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE ware_category_id_seq OWNED BY ware_category.id;


--
-- Name: ware_category_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('ware_category_id_seq', 1, false);


--
-- Name: ware_grouping_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE ware_grouping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.ware_grouping_id_seq OWNER TO test;

--
-- Name: ware_grouping_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE ware_grouping_id_seq OWNED BY ware_grouping.id;


--
-- Name: ware_grouping_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('ware_grouping_id_seq', 1, false);


--
-- Name: ware_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE ware_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.ware_id_seq OWNER TO test;

--
-- Name: ware_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE ware_id_seq OWNED BY ware.id;


--
-- Name: ware_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('ware_id_seq', 48, true);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE "order" ALTER COLUMN id SET DEFAULT nextval('order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE order_item ALTER COLUMN id SET DEFAULT nextval('order_item_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE sell ALTER COLUMN id SET DEFAULT nextval('sell_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE sell_item ALTER COLUMN id SET DEFAULT nextval('sell_item_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE ware ALTER COLUMN id SET DEFAULT nextval('ware_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE ware_category ALTER COLUMN id SET DEFAULT nextval('ware_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE ware_grouping ALTER COLUMN id SET DEFAULT nextval('ware_grouping_id_seq'::regclass);


--
-- Data for Name: order; Type: TABLE DATA; Schema: erp; Owner: test
--

COPY "order" (id, create_date, status, fee) FROM stdin;
\.
copy "order" (id, create_date, status, fee)  from '$$PATH$$/1839.dat' ;
--
-- Data for Name: order_item; Type: TABLE DATA; Schema: erp; Owner: test
--

COPY order_item (id, order_id, ware_id, cost, number) FROM stdin;
\.
copy order_item (id, order_id, ware_id, cost, number)  from '$$PATH$$/1840.dat' ;
--
-- Data for Name: sell; Type: TABLE DATA; Schema: erp; Owner: test
--

COPY sell (id, customer_name, customer_address, customer_phone1, customer_phone2, customer_postcode, fee, fee_real, create_date, express_id, customer_wangwang, comment, sender) FROM stdin;
\.
copy sell (id, customer_name, customer_address, customer_phone1, customer_phone2, customer_postcode, fee, fee_real, create_date, express_id, customer_wangwang, comment, sender)  from '$$PATH$$/1837.dat' ;
--
-- Data for Name: sell_item; Type: TABLE DATA; Schema: erp; Owner: test
--

COPY sell_item (id, sell_id, ware_id, number, price) FROM stdin;
\.
copy sell_item (id, sell_id, ware_id, number, price)  from '$$PATH$$/1838.dat' ;
--
-- Data for Name: ware; Type: TABLE DATA; Schema: erp; Owner: test
--

COPY ware (id, name, cost, price, number, barcode) FROM stdin;
\.
copy ware (id, name, cost, price, number, barcode)  from '$$PATH$$/1836.dat' ;
--
-- Data for Name: ware_category; Type: TABLE DATA; Schema: erp; Owner: test
--

COPY ware_category (id, name) FROM stdin;
\.
copy ware_category (id, name)  from '$$PATH$$/1841.dat' ;
--
-- Data for Name: ware_grouping; Type: TABLE DATA; Schema: erp; Owner: test
--

COPY ware_grouping (id, ware_id, ware_category_id) FROM stdin;
\.
copy ware_grouping (id, ware_id, ware_category_id)  from '$$PATH$$/1842.dat' ;
--
-- Name: order_lst_p_key; Type: CONSTRAINT; Schema: erp; Owner: test; Tablespace: 
--

ALTER TABLE ONLY order_item
    ADD CONSTRAINT order_lst_p_key PRIMARY KEY (id);


--
-- Name: order_p_key; Type: CONSTRAINT; Schema: erp; Owner: test; Tablespace: 
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT order_p_key PRIMARY KEY (id);


--
-- Name: sell_lst_p_code; Type: CONSTRAINT; Schema: erp; Owner: test; Tablespace: 
--

ALTER TABLE ONLY sell_item
    ADD CONSTRAINT sell_lst_p_code PRIMARY KEY (id);


--
-- Name: sell_p_key; Type: CONSTRAINT; Schema: erp; Owner: test; Tablespace: 
--

ALTER TABLE ONLY sell
    ADD CONSTRAINT sell_p_key PRIMARY KEY (id);


--
-- Name: ware_category_p_key; Type: CONSTRAINT; Schema: erp; Owner: test; Tablespace: 
--

ALTER TABLE ONLY ware_category
    ADD CONSTRAINT ware_category_p_key PRIMARY KEY (id);


--
-- Name: ware_grouping_p_key; Type: CONSTRAINT; Schema: erp; Owner: test; Tablespace: 
--

ALTER TABLE ONLY ware_grouping
    ADD CONSTRAINT ware_grouping_p_key PRIMARY KEY (id);


--
-- Name: ware_p_key; Type: CONSTRAINT; Schema: erp; Owner: test; Tablespace: 
--

ALTER TABLE ONLY ware
    ADD CONSTRAINT ware_p_key PRIMARY KEY (id);


--
-- Name: erp; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA erp FROM PUBLIC;
REVOKE ALL ON SCHEMA erp FROM postgres;
GRANT ALL ON SCHEMA erp TO postgres;
GRANT ALL ON SCHEMA erp TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 