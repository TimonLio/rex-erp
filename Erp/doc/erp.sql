toc.dat                                                                                             100600  004000  002000  00000031742 11005217247 007310  0                                                                                                    ustar00                                                                                                                                                                                                                                                        PGDMP
       "    /                l            test    8.3.1    8.3.1 6    3           0    0    ENCODING    ENCODING    SET client_encoding = 'UTF8';
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
       erp         test    false    7         �           1259    16647    sell    TABLE B  CREATE TABLE sell (
    id integer NOT NULL,
    customer_name character varying(64) NOT NULL,
    customer_address character varying(128) NOT NULL,
    customer_phone1 character varying(64) NOT NULL,
    customer_phone2 character varying(64) NOT NULL,
    customer_postcode character(6) NOT NULL,
    fee real NOT NULL,
    fee_real real NOT NULL,
    create_date timestamp without time zone NOT NULL,
    print boolean NOT NULL,
    express_id integer NOT NULL,
    express_barcode integer NOT NULL,
    customer_wangwang character varying(64),
    status integer NOT NULL
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
       erp         test    false    1817    7         �           1259    16636    ware    TABLE �   CREATE TABLE ware (
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
            erp       test    false    1538                    1259    16671    order_lst_id_seq    SEQUENCE r   CREATE SEQUENCE order_lst_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 $   DROP SEQUENCE erp.order_lst_id_seq;
       erp       test    false    7    1541         9           0    0    order_lst_id_seq    SEQUENCE OWNED BY 8   ALTER SEQUENCE order_lst_id_seq OWNED BY order_item.id;
            erp       test    false    1540         :           0    0    order_lst_id_seq    SEQUENCE SET 8   SELECT pg_catalog.setval('order_lst_id_seq', 1, false);
            erp       test    false    1540         �           1259    16645    sell_id_seq    SEQUENCE m   CREATE SEQUENCE sell_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
    DROP SEQUENCE erp.sell_id_seq;
       erp       test    false    1535    7         ;           0    0    sell_id_seq    SEQUENCE OWNED BY -   ALTER SEQUENCE sell_id_seq OWNED BY sell.id;
            erp       test    false    1534         <           0    0    sell_id_seq    SEQUENCE SET 3   SELECT pg_catalog.setval('sell_id_seq', 1, false);
            erp       test    false    1534                     1259    16653    sell_lst_id_seq    SEQUENCE q   CREATE SEQUENCE sell_lst_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 #   DROP SEQUENCE erp.sell_lst_id_seq;
       erp       test    false    7    1537         =           0    0    sell_lst_id_seq    SEQUENCE OWNED BY 6   ALTER SEQUENCE sell_lst_id_seq OWNED BY sell_item.id;
            erp       test    false    1536         >           0    0    sell_lst_id_seq    SEQUENCE SET 7   SELECT pg_catalog.setval('sell_lst_id_seq', 1, false);
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
       erp       test    false    1545    7         A           0    0    ware_grouping_id_seq    SEQUENCE OWNED BY ?   ALTER SEQUENCE ware_grouping_id_seq OWNED BY ware_grouping.id;
            erp       test    false    1544         B           0    0    ware_grouping_id_seq    SEQUENCE SET <   SELECT pg_catalog.setval('ware_grouping_id_seq', 1, false);
            erp       test    false    1544         �           1259    16634    ware_id_seq    SEQUENCE \   CREATE SEQUENCE ware_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
    DROP SEQUENCE erp.ware_id_seq;
       erp       test    false    7    1533         C           0    0    ware_id_seq    SEQUENCE OWNED BY -   ALTER SEQUENCE ware_id_seq OWNED BY ware.id;
            erp       test    false    1532         D           0    0    ware_id_seq    SEQUENCE SET 2   SELECT pg_catalog.setval('ware_id_seq', 7, true);
            erp       test    false    1532                    2604    16668    id    DEFAULT S   ALTER TABLE "order" ALTER COLUMN id SET DEFAULT nextval('order_id_seq'::regclass);
 6   ALTER TABLE erp."order" ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1539    1538    1539                    2604    16676    id    DEFAULT Z   ALTER TABLE order_item ALTER COLUMN id SET DEFAULT nextval('order_lst_id_seq'::regclass);
 9   ALTER TABLE erp.order_item ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1540    1541    1541                    2604    16650    id    DEFAULT O   ALTER TABLE sell ALTER COLUMN id SET DEFAULT nextval('sell_id_seq'::regclass);
 3   ALTER TABLE erp.sell ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1534    1535    1535                    2604    16658    id    DEFAULT X   ALTER TABLE sell_item ALTER COLUMN id SET DEFAULT nextval('sell_lst_id_seq'::regclass);
 8   ALTER TABLE erp.sell_item ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1536    1537    1537                    2604    16639    id    DEFAULT O   ALTER TABLE ware ALTER COLUMN id SET DEFAULT nextval('ware_id_seq'::regclass);
 3   ALTER TABLE erp.ware ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1533    1532    1533                    2604    16684    id    DEFAULT a   ALTER TABLE ware_category ALTER COLUMN id SET DEFAULT nextval('ware_category_id_seq'::regclass);
 <   ALTER TABLE erp.ware_category ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1543    1542    1543                    2604    16692    id    DEFAULT a   ALTER TABLE ware_grouping ALTER COLUMN id SET DEFAULT nextval('ware_grouping_id_seq'::regclass);
 <   ALTER TABLE erp.ware_grouping ALTER COLUMN id DROP DEFAULT;
       erp       test    false    1544    1545    1545         /          0    16665    order 
   TABLE DATA           8   COPY "order" (id, create_date, status, fee) FROM stdin;
    erp       test    false    1539       1839.dat 0          0    16673 
   order_item 
   TABLE DATA           B   COPY order_item (id, order_id, ware_id, cost, number) FROM stdin;
    erp       test    false    1541       1840.dat -          0    16647    sell 
   TABLE DATA           �   COPY sell (id, customer_name, customer_address, customer_phone1, customer_phone2, customer_postcode, fee, fee_real, create_date, print, express_id, express_barcode, customer_wangwang, status) FROM stdin;
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
       erp         test    false    1533    1533                                      1839.dat                                                                                            100600  004000  002000  00000000005 11005217247 007113  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1840.dat                                                                                            100600  004000  002000  00000000005 11005217247 007103  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1837.dat                                                                                            100600  004000  002000  00000000005 11005217247 007111  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1838.dat                                                                                            100600  004000  002000  00000000005 11005217247 007112  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1836.dat                                                                                            100600  004000  002000  00000000252 11005217247 007114  0                                                                                                    ustar00                                                                                                                                                                                                                                                        1	曼秀雷敦Acnes抗痘防晒润色隔离乳SPF50+PA++肌色30g	0	55	2	4987241108862
3	大创神奇天然魔芋洗颜棉 女人我最大推荐	4	6	2	4974012236145
\.


                                                                                                                                                                                                                                                                                                                                                      1841.dat                                                                                            100600  004000  002000  00000000005 11005217247 007104  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1842.dat                                                                                            100600  004000  002000  00000000005 11005217247 007105  0                                                                                                    ustar00                                                                                                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         100600  004000  002000  00000030174 11005217247 010233  0                                                                                                    ustar00                                                                                                                                                                                                                                                        create temporary table pgdump_restore_path(p text);
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
DROP SEQUENCE erp.sell_lst_id_seq;
DROP SEQUENCE erp.sell_id_seq;
DROP SEQUENCE erp.order_lst_id_seq;
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
    customer_postcode character(6) NOT NULL,
    fee real NOT NULL,
    fee_real real NOT NULL,
    create_date timestamp without time zone NOT NULL,
    print boolean NOT NULL,
    express_id integer NOT NULL,
    express_barcode integer NOT NULL,
    customer_wangwang character varying(64),
    status integer NOT NULL
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
-- Name: order_lst_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE order_lst_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.order_lst_id_seq OWNER TO test;

--
-- Name: order_lst_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE order_lst_id_seq OWNED BY order_item.id;


--
-- Name: order_lst_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('order_lst_id_seq', 1, false);


--
-- Name: sell_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE sell_id_seq
    START WITH 1
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

SELECT pg_catalog.setval('sell_id_seq', 1, false);


--
-- Name: sell_lst_id_seq; Type: SEQUENCE; Schema: erp; Owner: test
--

CREATE SEQUENCE sell_lst_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE erp.sell_lst_id_seq OWNER TO test;

--
-- Name: sell_lst_id_seq; Type: SEQUENCE OWNED BY; Schema: erp; Owner: test
--

ALTER SEQUENCE sell_lst_id_seq OWNED BY sell_item.id;


--
-- Name: sell_lst_id_seq; Type: SEQUENCE SET; Schema: erp; Owner: test
--

SELECT pg_catalog.setval('sell_lst_id_seq', 1, false);


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

SELECT pg_catalog.setval('ware_id_seq', 7, true);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE "order" ALTER COLUMN id SET DEFAULT nextval('order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE order_item ALTER COLUMN id SET DEFAULT nextval('order_lst_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE sell ALTER COLUMN id SET DEFAULT nextval('sell_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: erp; Owner: test
--

ALTER TABLE sell_item ALTER COLUMN id SET DEFAULT nextval('sell_lst_id_seq'::regclass);


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

COPY sell (id, customer_name, customer_address, customer_phone1, customer_phone2, customer_postcode, fee, fee_real, create_date, print, express_id, express_barcode, customer_wangwang, status) FROM stdin;
\.
copy sell (id, customer_name, customer_address, customer_phone1, customer_phone2, customer_postcode, fee, fee_real, create_date, print, express_id, express_barcode, customer_wangwang, status)  from '$$PATH$$/1837.dat' ;
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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    