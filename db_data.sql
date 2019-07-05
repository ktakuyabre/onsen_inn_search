--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3 (Debian 11.3-1.pgdg90+1)
-- Dumped by pg_dump version 11.3 (Debian 11.3-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: onsen_inns_onsen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onsen_inns_onsen (
    id integer NOT NULL,
    onsen_id integer NOT NULL,
    onsen_name character varying(30) NOT NULL,
    onsen_name_kana character varying(40) NOT NULL,
    onsen_address character varying(40),
    region character varying(10) NOT NULL,
    prefecture character varying(10) NOT NULL,
    large_area character varying(30) NOT NULL,
    small_area character varying(30) NOT NULL,
    nature_of_onsen character varying(10) NOT NULL,
    onsen_area_name character varying(20),
    onsen_area_name_kana character varying(30),
    onsen_area_id integer,
    onsen_area_caption text
);


ALTER TABLE public.onsen_inns_onsen OWNER TO postgres;

--
-- Name: onsen_inns_onseninn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.onsen_inns_onseninn (
    id integer NOT NULL,
    inn_id integer NOT NULL,
    inn_name character varying(100) NOT NULL,
    inn_photo character varying(100),
    inn_min_price integer NOT NULL,
    review_room numeric(2,1),
    review_bath numeric(2,1),
    review_breakfast numeric(2,1),
    review_dinner numeric(2,1),
    review_service numeric(2,1),
    review_cleaness numeric(2,1),
    rooms_total integer,
    baths_total integer,
    conditioner boolean,
    convenience_store boolean,
    hand_towel boolean,
    razor boolean,
    bath_towel boolean,
    shampoo boolean,
    dental_amenities boolean,
    bathrobe boolean,
    pajamas boolean,
    yukata boolean,
    free_wifi boolean,
    bar_soap boolean,
    body_wash boolean,
    duvet boolean,
    hairdryer boolean,
    shower_cap boolean,
    cotton_swab boolean,
    onsui_toilet boolean,
    hair_brush boolean,
    onsen_id integer NOT NULL,
    category integer,
    service_leisure character varying(630)
);


ALTER TABLE public.onsen_inns_onseninn OWNER TO postgres;

--
-- Name: onsen_inns_onseninnmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.onsen_inns_onseninnmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.onsen_inns_onseninnmodel_id_seq OWNER TO postgres;

--
-- Name: onsen_inns_onseninnmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.onsen_inns_onseninnmodel_id_seq OWNED BY public.onsen_inns_onseninn.id;


--
-- Name: onsen_inns_onsenmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.onsen_inns_onsenmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.onsen_inns_onsenmodel_id_seq OWNER TO postgres;

--
-- Name: onsen_inns_onsenmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.onsen_inns_onsenmodel_id_seq OWNED BY public.onsen_inns_onsen.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: onsen_inns_onsen id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onsen ALTER COLUMN id SET DEFAULT nextval('public.onsen_inns_onsenmodel_id_seq'::regclass);


--
-- Name: onsen_inns_onseninn id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onseninn ALTER COLUMN id SET DEFAULT nextval('public.onsen_inns_onseninnmodel_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add onsen	7	add_onsen
26	Can change onsen	7	change_onsen
27	Can delete onsen	7	delete_onsen
28	Can view onsen	7	view_onsen
29	Can add onsen inn	8	add_onseninn
30	Can change onsen inn	8	change_onseninn
31	Can delete onsen inn	8	delete_onseninn
32	Can view onsen inn	8	view_onseninn
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$3ZeKX2X5cNO8$7cCfpKZwQp8mPBIxhJNStmvaKubbfEujyLz2pghmwFo=	2019-07-05 04:35:35.361148+00	t	admin			admin@example.com	t	t	2019-07-05 04:33:47.812263+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	onsen_inns	onsen
8	onsen_inns	onseninn
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-07-05 04:33:29.089437+00
2	auth	0001_initial	2019-07-05 04:33:29.177976+00
3	admin	0001_initial	2019-07-05 04:33:29.31389+00
4	admin	0002_logentry_remove_auto_add	2019-07-05 04:33:29.356875+00
5	admin	0003_logentry_add_action_flag_choices	2019-07-05 04:33:29.374572+00
6	contenttypes	0002_remove_content_type_name	2019-07-05 04:33:29.408491+00
7	auth	0002_alter_permission_name_max_length	2019-07-05 04:33:29.428834+00
8	auth	0003_alter_user_email_max_length	2019-07-05 04:33:29.453992+00
9	auth	0004_alter_user_username_opts	2019-07-05 04:33:29.488971+00
10	auth	0005_alter_user_last_login_null	2019-07-05 04:33:29.512882+00
11	auth	0006_require_contenttypes_0002	2019-07-05 04:33:29.520489+00
12	auth	0007_alter_validators_add_error_messages	2019-07-05 04:33:29.538244+00
13	auth	0008_alter_user_username_max_length	2019-07-05 04:33:29.570124+00
14	auth	0009_alter_user_last_name_max_length	2019-07-05 04:33:29.594443+00
15	auth	0010_alter_group_name_max_length	2019-07-05 04:33:29.6183+00
16	auth	0011_update_proxy_permissions	2019-07-05 04:33:29.637962+00
17	onsen_inns	0001_initial	2019-07-05 04:33:29.694113+00
18	onsen_inns	0002_auto_20190531_0620	2019-07-05 04:33:29.877142+00
19	onsen_inns	0003_auto_20190531_0648	2019-07-05 04:33:30.007303+00
20	onsen_inns	0004_auto_20190531_1227	2019-07-05 04:33:30.03395+00
21	onsen_inns	0005_auto_20190601_1638	2019-07-05 04:33:30.092497+00
22	onsen_inns	0006_auto_20190601_1827	2019-07-05 04:33:30.111696+00
23	onsen_inns	0007_auto_20190705_1007	2019-07-05 04:33:30.146227+00
24	sessions	0001_initial	2019-07-05 04:33:30.17067+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
osut020bo7qwdp0bnz4xa2j2pxs2adqe	ZDUzOTI4YjA3NWI5MzdmODE5Nzg5NzY0MjNhZTdjY2Q0NzYwM2Q3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYjNjZmMyM2YzOTkyZWI3NDk5ZTljZjY4YmNjMTQ4ZWEwYmMyMzNlIn0=	2019-07-19 04:35:35.366739+00
\.


--
-- Data for Name: onsen_inns_onsen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.onsen_inns_onsen (id, onsen_id, onsen_name, onsen_name_kana, onsen_address, region, prefecture, large_area, small_area, nature_of_onsen, onsen_area_name, onsen_area_name_kana, onsen_area_id, onsen_area_caption) FROM stdin;
1	1	豊富温泉	とよとみおんせん	北海道天塩郡豊富町豊富温泉			稚内・留萌	稚内	塩化物泉	\N	\N	50651	\N
2	2	稚内温泉	わっかないおんせん	北海道稚内市富士見			稚内・留萌	稚内	塩化物泉	\N	\N	50653	\N
3	3	ぽんぴら温泉	ぽんぴらおんせん	北海道中川郡中川町中川			旭川・層雲峡	名寄	塩化物泉	\N	\N	50716	\N
4	4	歌登温泉	うたのぼりおんせん	北海道枝幸郡歌登町辺毛内3665番10号			稚内・留萌	稚内	炭酸水素塩泉	\N	\N	50651	\N
5	5	天塩川温泉	てしおがわおんせん	北海道天塩郡天塩町字サラキシ５８０７			旭川・層雲峡	名寄	炭酸水素塩泉	\N	\N	50648	\N
6	6	旭温泉	あさひおんせん	北海道天塩郡遠別町旭			稚内・留萌	羽幌	塩化物泉	\N	\N	50648	\N
7	7	日向温泉	ひなたおんせん	北海道士別市多寄町日向			旭川・層雲峡	名寄	含鉄泉	\N	\N	50716	\N
8	8	五味温泉	ごみおんせん	北海道上川郡下川町班渓			旭川・層雲峡	名寄	硫黄泉	\N	\N	50716	\N
9	9	岩尾内温泉	いわおないおんせん	北海道上川郡朝日町岩尾内			旭川・層雲峡	名寄	二酸化炭素泉	\N	\N	50716	\N
10	10	塩狩温泉	しおかりおんせん	北海道上川郡和寒町塩狩			旭川・層雲峡	名寄	硫黄泉	\N	\N	50716	\N
11	11	湯元協和温泉	ゆもときょうわおんせん	北海道上川郡愛別町協和1区			旭川・層雲峡	旭川	含鉄泉	\N	\N	50649	\N
12	12	神居岩温泉	かむいわおんせん	北海道留萌市留萌村字カムイワ			稚内・留萌	留萌・増毛	含鉄泉	\N	\N	50651	\N
13	13	幌新温泉	ほろしんおんせん	北海道雨竜郡沼田町幌新			石狩・空知・千歳	深川・滝川	塩化物泉	\N	\N	\N	\N
14	14	白滝温泉	しらたきおんせん	北海道紋別郡白滝村西区			網走・北見・知床	サロマ・紋別	硫黄泉	\N	\N	\N	\N
15	15	瀬戸瀬温泉	せとせおんせん	北海道紋別郡遠軽町湯の里			網走・北見・知床	サロマ・紋別	硫黄泉	\N	\N	\N	\N
16	16	岩尾別温泉	いわおべつおんせん	北海道斜里郡斜里町岩尾別			網走・北見・知床	斜里・羅臼	単純温泉	\N	\N	50019	\N
17	17	ウトロ温泉	うとろおんせん	北海道斜里郡斜里町ウトロ			網走・北見・知床	斜里・羅臼	単純温泉	\N	\N	50019	\N
18	18	羅臼温泉	らうすおんせん	北海道目梨郡羅臼町湯の沢町			網走・北見・知床	斜里・羅臼	塩化物泉	\N	\N	\N	\N
19	19	オホーツク温泉	おほーつくおんせん	北海道標津郡標津町桜木			釧路・阿寒・根室・川湯・屈斜路	根室	塩化物泉	\N	\N	\N	\N
20	20	野付温泉	のつけおんせん	北海道野付郡別海町尾岱沼			釧路・阿寒・根室・川湯・屈斜路	根室	硫黄泉	\N	\N	\N	\N
21	21	別海温泉	べつかいおんせん	北海道野付郡別海町別海			釧路・阿寒・根室・川湯・屈斜路	根室	塩化物泉	\N	\N	\N	\N
22	22	養老牛温泉	ようろううしおんせん	北海道標津郡中標津町養老牛温泉			釧路・阿寒・根室・川湯・屈斜路	根室	塩化物泉	\N	\N	50023	\N
23	23	網走湖畔温泉	あばしりこはんおんせん	北海道網走市呼人			網走・北見・知床	網走・北見	単純温泉	\N	\N	50018	\N
24	24	女満別温泉	めまんべつおんせん	北海道網走郡女満別町湖畔			網走・北見・知床	網走・北見	硫黄泉	\N	\N	\N	\N
25	25	藻琴山温泉	もことやまおんせん	北海道網走郡東藻琴村末広			網走・北見・知床	網走・北見	塩化物泉	\N	\N	\N	\N
26	26	藻琴山高原温泉	もことやまこうげんおんせん	北海道網走郡東藻琴村山園			網走・北見・知床	網走・北見	単純温泉	\N	\N	\N	\N
27	27	川湯温泉	かわゆおんせん	北海道川上郡弟子屈町川湯			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	単純温泉	\N	\N	50864	\N
28	28	仁伏温泉	にぶしおんせん	北海道川上郡弟子屈町川湯仁伏			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	塩化物泉	\N	\N	50021	\N
29	29	池ノ湯温泉	いけのゆおんせん	北海道川上郡弟子屈町屈斜路			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	炭酸水素塩泉	\N	\N	50021	\N
30	30	和琴温泉	わことおんせん	北海道川上郡弟子屈町屈斜路391－15			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	硫黄泉	\N	\N	50021	\N
31	31	摩周温泉	ましゅうおんせん	北海道川上郡弟子屈町弟子屈			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	単純温泉	\N	\N	50021	\N
32	32	鐺別温泉	とうべつおんせん	北海道川上郡弟子屈町桜丘			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	単純温泉	\N	\N	50021	\N
33	33	阿寒湖畔温泉	あかんこはんおんせん	北海道阿寒郡阿寒町阿寒湖畔			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	炭酸水素塩泉	\N	\N	50022	\N
34	34	雌阿寒温泉	めあかんおんせん	北海道足寄郡足寄町茂足寄			帯広・十勝	十勝・サホロ	単純温泉	\N	\N	\N	\N
35	35	下オソベツ温泉	しもおそべつおんせん	北海道川上郡標茶町下オソツベツ			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	弱アルカリ性低張性泉	\N	\N	\N	\N
36	36	茅沼温泉	かやぬまおんせん	北海道川上郡標茶町茅沼			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	塩化物泉	\N	\N	\N	\N
37	37	鶴居温泉	つるいおんせん	北海道阿寒郡鶴居村			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	単純温泉	\N	\N	50020	\N
38	38	旭岳温泉	あさひだけおんせん	北海道上川郡東川町勇駒別			旭川・層雲峡	層雲峡・天人峡	単純温泉	\N	\N	50016	\N
39	39	天人峡温泉	てんにんきょうおんせん	北海道上川郡東川町天人峡			旭川・層雲峡	層雲峡・天人峡	硫黄泉	\N	\N	50016	\N
40	40	支笏湖温泉	しこつこおんせん	北海道千歳市支笏湖温泉			石狩・空知・千歳	支笏湖・千歳	硫黄泉	\N	\N	50024	\N
41	41	伊藤温泉	いとうおんせん	北海道千歳市幌美内			石狩・空知・千歳	支笏湖・千歳	単純温泉	\N	\N	50024	\N
42	42	丸駒温泉	まるこまおんせん	北海道千歳市幌美内番外地			石狩・空知・千歳	支笏湖・千歳	塩化物泉	\N	\N	50024	\N
43	43	北見温泉	きたみおんせん	北海道北見市端野町２区８２９番地			網走・北見・知床	サロマ・紋別	塩化物泉	\N	\N	50736	\N
44	44	温根湯温泉	おんねゆおんせん	北海道常呂郡留辺蕊町温根湯			網走・北見・知床	サロマ・紋別	硫酸塩泉	\N	\N	50017	\N
45	45	塩別温泉	しおべつおんせん	北海道常呂郡留辺蕊町滝湯			網走・北見・知床	サロマ・紋別	硫酸塩泉	\N	\N	\N	\N
46	46	滝の湯温泉	たきのゆおんせん	北海道常呂郡留辺蕊町滝湯			網走・北見・知床	サロマ・紋別	炭酸水素塩泉	\N	\N	\N	\N
47	47	鹿の子温泉	かのこおんせん	北海道常呂郡置戸町常元			網走・北見・知床	網走・北見	塩化物泉	\N	\N	\N	\N
48	48	層雲峡温泉	そううんきょうおんせん	北海道上川郡上川町層雲峡			旭川・層雲峡	層雲峡・天人峡	塩化物泉	\N	\N	50688	\N
49	49	愛山渓温泉	あいざんけいおんせん	北海道上川郡上川町愛山渓			旭川・層雲峡	層雲峡・天人峡	弱アルカリ性低張性泉	\N	\N	50716	\N
50	50	大雪高原温泉	だいせつこうげんおんせん	北海道上川郡上川町層雲峡			旭川・層雲峡	層雲峡・天人峡	硫黄泉	\N	\N	50688	\N
51	51	トムラウシ温泉	とむらうしおんせん	北海道上川郡新得町屈足			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	\N	\N
52	52	白金温泉	しろがねおんせん	北海道上川郡美瑛町白金			富良野・美瑛・トマム	美瑛	硫黄泉	\N	\N	50015	\N
53	53	吹上温泉	ふきあげおんせん	北海道空知郡上富良野町吹上			富良野・美瑛・トマム	富良野	単純温泉	\N	\N	50752	\N
54	54	十勝岳温泉	とかちだけおんせん	北海道空知郡上富良野町十勝岳温泉			富良野・美瑛・トマム	富良野	単純温泉	\N	\N	50015	\N
55	55	幌加温泉	ほろかおんせん	北海道河東郡上士幌町幌加			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	\N	\N
56	56	芽登温泉	めとうおんせん	北海道足寄郡足寄町芽登			帯広・十勝	十勝・サホロ	炭酸水素塩泉	\N	\N	\N	\N
57	57	ぬかびら源泉郷	ぬかびらげんせんきょう	北海道河東郡上士幌町糠平			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	50026	\N
58	58	然別峡菅野温泉	しかりべつきょうかんのおんせん	北海道河東郡鹿追町然別峡			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	\N	\N
59	59	山田温泉	やまだおんせん	北海道河東郡鹿追町然別			帯広・十勝	十勝・サホロ	硫酸塩泉	\N	\N	\N	\N
60	60	ナイタイ高原温泉	ないたいこうげんおんせん	北海道河東郡上士幌町勢多			帯広・十勝	十勝・サホロ	塩化物泉	\N	\N	\N	\N
61	61	然別湖畔温泉	しかりべつこはんおんせん	北海道河東郡鹿追町然別			帯広・十勝	十勝・サホロ	硫酸塩泉	\N	\N	50027	\N
62	62	オソウシ温泉	おそうしおんせん	北海道上川郡新得町屈足オソウシ			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	\N	\N
63	63	下居辺温泉	しもおりべおんせん	北海道河東郡士幌町下居辺			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	\N	\N
64	64	本別温泉	ほんべつおんせん	北海道中川郡本別町西美里別			帯広・十勝	十勝・サホロ	単純温泉	\N	\N	\N	\N
65	65	本別山渓閣温泉	ほんべつさんけいかくおんせん	北海道中川郡本別町東町			帯広・十勝	十勝・サホロ	塩化物泉	\N	\N	\N	\N
66	66	浦幌留真温泉	うらほろるしんおんせん	北海道十勝郡浦幌町留真			帯広・十勝	十勝・サホロ	単純温泉	\N	\N	\N	\N
67	67	筒井温泉	つついおんせん	北海道河東郡音更町長流枝			帯広・十勝	帯広・十勝川	単純温泉	\N	\N	\N	\N
68	68	十勝川温泉	とかちがわおんせん	北海道河東郡音更町十勝川温泉			帯広・十勝	帯広・十勝川	塩化物泉	\N	\N	50025	\N
69	69	幕別温泉	まくべつおんせん	北海道中川郡幕別町依田			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	50028	\N
70	70	芽室温泉	めむろおんせん	北海道河西郡芽室町北芽室・東芽室			帯広・十勝	帯広・十勝川	単純温泉	\N	\N	\N	\N
71	71	豊頃温泉	とよころおんせん	北海道中川郡豊頃町茂岩			帯広・十勝	十勝・サホロ	単純温泉	\N	\N	\N	\N
72	72	新得温泉	しんとくおんせん	北海道上川郡新得町上佐幌			帯広・十勝	十勝・サホロ	炭酸水素塩泉	\N	\N	\N	\N
73	73	湯の沢温泉	ゆのさわおんせん	北海道勇払郡占冠村湯の沢峡			富良野・美瑛・トマム	トマム	塩化物泉	\N	\N	50752	\N
74	74	ニニウ温泉	ににうおんせん	北海道勇払郡占冠村ニニウ			富良野・美瑛・トマム	美瑛	硫黄泉	\N	\N	50752	\N
75	75	沙流川温泉	さるがわおんせん	北海道沙流郡日高町富岡			日高・えりも	日高・えりも	単純温泉	\N	\N	50029	\N
76	76	静内温泉	しずないおんせん	北海道静内郡静内町浦和			日高・えりも	日高・えりも	塩化物泉	\N	\N	50029	\N
77	77	秩父別温泉	ちっぷべつおんせん	北海道雨竜郡秩父別町			石狩・空知・千歳	深川・滝川	単純温泉	\N	\N	50753	\N
78	78	沖里河温泉	おきりかわおんせん	北海道深川市音江町豊泉			石狩・空知・千歳	深川・滝川	単純温泉	\N	\N	50753	\N
79	79	えべおつ温泉	えべおつおんせん	北海道滝川市江部乙町			石狩・空知・千歳	深川・滝川	塩化物泉	\N	\N	50682	\N
80	80	芦別温泉	あしべつおんせん	北海道芦別市旭町油谷			石狩・空知・千歳	深川・滝川	含鉄泉	\N	\N	50682	\N
81	81	歌志内チロルの湯	うたしないちろるのゆ	北海道歌志内市字中村７８番地３			石狩・空知・千歳	深川・滝川	ナトリウム塩化物泉	\N	\N	50750	\N
82	82	新十津川町温泉	しんとつかわちょうおんせん	北海道樺戸郡新十津川町字総進			石狩・空知・千歳	深川・滝川	鉱泉	\N	\N	50682	\N
83	83	上砂川岳温泉	かみすながわだけおんせん	北海道空知郡上砂川町上砂川			石狩・空知・千歳	深川・滝川	塩化物泉	\N	\N	50682	\N
84	84	島の下温泉	しまのしたおんせん	北海道富良野市島の下			富良野・美瑛・トマム	富良野	硫黄泉	\N	\N	50752	\N
85	85	美唄温泉	びばいおんせん	北海道美唄市東明町			石狩・空知・千歳	夕張・岩見沢	硫黄泉	\N	\N	50750	\N
86	86	桂沢温泉	かつらざわおんせん	北海道三笠市桂沢			石狩・空知・千歳	夕張・岩見沢	塩化物泉	\N	\N	50750	\N
87	87	湯の元温泉	ゆのもとおんせん	北海道三笠市桂沢９４			石狩・空知・千歳	夕張・岩見沢	塩化物泉	\N	\N	50671	\N
88	88	三笠温泉	みかさおんせん	北海道三笠市幾春別栗丘町			石狩・空知・千歳	夕張・岩見沢	塩化物泉	\N	\N	50750	\N
89	89	月形温泉	つきがたおんせん	北海道樺戸郡月形町			石狩・空知・千歳	夕張・岩見沢	硫黄泉	\N	\N	50750	\N
90	90	北村温泉	きたむらおんせん	北海道空知郡北村赤川			石狩・空知・千歳	夕張・岩見沢	ナトリウム塩化物泉	\N	\N	50750	\N
91	91	中小屋温泉	なかごやおんせん	北海道石狩郡当別町中小屋			石狩・空知・千歳	石狩	炭酸水素塩泉	\N	\N	50754	\N
92	92	石狩太美温泉	いしかりふとみおんせん	北海道石狩郡当別町太美町			石狩・空知・千歳	石狩	単純温泉	\N	\N	50754	\N
93	93	江別温泉	えべつおんせん	北海道江別市二条			石狩・空知・千歳	石狩	炭酸水素塩泉	\N	\N	50754	\N
94	94	馬追温泉	うまおいおんせん	北海道夕張郡長沼町11区			石狩・空知・千歳	夕張・岩見沢	硫黄泉	\N	\N	50750	\N
95	95	ながぬま温泉	ながぬまおんせん	北海道夕張郡長沼町東六線北四			石狩・空知・千歳	夕張・岩見沢	炭酸水素塩泉	\N	\N	50750	\N
96	96	竹山高原温泉	たけやまこうげんおんせん	北海道北広島市富ケ岡			石狩・空知・千歳	支笏湖・千歳	硫黄泉	\N	\N	\N	\N
97	97	鴨々川温泉	かもかもがわおんせん	北海道札幌市中央区南7条西3丁目			札幌	ススキノ・大通	硫黄泉	\N	\N	\N	\N
98	98	小金湯温泉	こがねゆおんせん	北海道札幌市南区小金湯			札幌	真駒内	硫黄泉	\N	\N	50002	\N
99	99	定山渓温泉	じょうざんけいおんせん	北海道札幌市南区定山渓温泉			定山渓	定山渓	炭酸水素塩泉	\N	\N	50002	\N
100	100	鶴の湯温泉	つるのゆおんせん	北海道勇払郡早来町北町			洞爺・登別・苫小牧	苫小牧	塩化物泉	\N	\N	50717	\N
101	101	ウトナイ温泉	うとないおんせん	北海道苫小牧市植苗			洞爺・登別・苫小牧	苫小牧	塩化物泉	\N	\N	50717	\N
102	102	平磯温泉	ひらいそおんせん	北海道小樽市桜			小樽・キロロ・積丹	小樽	塩化物泉	\N	\N	50756	\N
103	103	朝里川温泉	あさりがわおんせん	北海道小樽市朝里川温泉			小樽・キロロ・積丹	小樽	単純温泉	\N	\N	50003	\N
104	104	盃温泉郷	さかずきおんせんきょう	北海道古宇郡泊村興志内村字茂岩			小樽・キロロ・積丹	積丹	硫酸塩泉	\N	\N	50755	\N
105	105	いわない温泉	いわないおんせん	北海道岩内郡岩内町野束			ニセコ・ルスツ	ニセコ・倶知安	炭酸水素塩泉	\N	\N	50755	\N
106	106	雷電温泉	らいでんおんせん	北海道岩内郡岩内町敷島内			ニセコ・ルスツ	ニセコ・倶知安	塩化物泉	\N	\N	50755	\N
107	107	朝日温泉	あさひおんせん	北海道岩内郡岩内町敷島内			ニセコ・ルスツ	ニセコ・倶知安	硫黄泉	\N	\N	50755	\N
108	108	ニセコワイス高原温泉　(ニセコ)	にせこわいすこうげんおんせん	北海道虻田郡倶知安町花園			ニセコ・ルスツ	ニセコ・倶知安	硫黄泉	\N	\N	50004	\N
109	109	ワイス温泉　(ニセコ)	わいすおんせん	北海道岩内郡共和町ワイス			ニセコ・ルスツ	ニセコ・倶知安	炭酸水素塩泉	\N	\N	50004	\N
110	110	ひらふ温泉　(ニセコ)	ひらふおんせん	北海道虻田郡倶知安町山田			ニセコ・ルスツ	ニセコ・倶知安	塩化物泉	\N	\N	50004	\N
111	111	ニセコアンヌプリ温泉　(ニセコ)	にせこあんぬぷりおんせん	北海道虻田郡ニセコ町ニセコ			ニセコ・ルスツ	ニセコ・倶知安	硫黄泉	\N	\N	50004	\N
112	112	ニセコ昆布温泉　(ニセコ)	にせここんぶおんせん	北海道磯谷郡蘭越町湯里			ニセコ・ルスツ	ニセコ・倶知安	炭酸水素塩泉	\N	\N	50004	\N
113	113	ニセコ薬師温泉　(ニセコ)	にせこやくしおんせん	北海道磯谷郡蘭越町字日出			ニセコ・ルスツ	ニセコ・倶知安	塩化物泉	\N	\N	50004	\N
114	114	ニセコ五色温泉　(ニセコ)	にせこごしきおんせん	北海道磯谷郡蘭越町湯里			ニセコ・ルスツ	ニセコ・倶知安	塩化物泉	\N	\N	50004	\N
115	115	ニセコ湯本温泉　(ニセコ)	にせこゆもとおんせん	北海道磯谷郡蘭越町湯里			ニセコ・ルスツ	ニセコ・倶知安	硫黄泉	\N	\N	50004	\N
116	116	ニセコ新見温泉　(ニセコ)	にせこにいみおんせん	北海道磯谷郡蘭越町新見			ニセコ・ルスツ	ニセコ・倶知安	硫黄泉	\N	\N	50004	\N
117	117	ニセコ東山温泉　(ニセコ)	にせこひがしやまおんせん	北海道虻田郡ニセコ町東山温泉			ニセコ・ルスツ	ニセコ・倶知安	放射能泉	\N	\N	50004	\N
118	118	昆布川温泉　(ニセコ)	こんぶがわおんせん	北海道磯谷郡蘭越町昆布町			ニセコ・ルスツ	ニセコ・倶知安	炭酸水素塩泉	\N	\N	50004	\N
119	119	ニセコ湯ノ里温泉　(ニセコ)	にせこゆのさとおんせん	北海道磯谷郡蘭越町湯里温泉			ニセコ・ルスツ	ニセコ・倶知安	塩化物泉	\N	\N	50004	\N
120	120	川上温泉	かわかみおんせん	北海道虻田郡京極町更進			ニセコ・ルスツ	ルスツ	塩化物泉	\N	\N	50757	\N
121	121	登川温泉	のぼりかわおんせん	北海道虻田郡留寿都村泉川			ニセコ・ルスツ	ルスツ	硫黄泉	\N	\N	50757	\N
122	122	北湯沢温泉	きたゆざわおんせん	北海道有珠郡大滝村北湯沢温泉			洞爺・登別・苫小牧	洞爺	塩化物泉	\N	\N	50008	\N
123	123	蟠渓温泉	ばんけいおんせん	北海道有珠郡壮瞥町蟠渓			洞爺・登別・苫小牧	洞爺	硫黄泉	\N	\N	50008	\N
124	124	洞爺湖温泉	とうやこおんせん	北海道虻田郡虻田町洞爺湖温泉			洞爺・登別・苫小牧	洞爺	硫黄泉	\N	\N	50009	\N
125	125	壮瞥温泉	そうべつおんせん	北海道有珠郡壮瞥町壮瞥温泉			洞爺・登別・苫小牧	洞爺	塩化物泉	\N	\N	50009	\N
126	126	カルルス温泉	かるるすおんせん	北海道登別市カルルス温泉町			洞爺・登別・苫小牧	登別・室蘭	炭酸水素塩泉	\N	\N	50005	\N
127	127	新登別温泉	しんのぼりべつおんせん	北海道登別市上登別町			洞爺・登別・苫小牧	登別・室蘭	炭酸水素塩泉	\N	\N	50006	\N
128	128	登別温泉	のぼりべつおんせん	北海道登別市登別温泉町			洞爺・登別・苫小牧	登別・室蘭	単純温泉	\N	\N	50006	\N
129	129	虎杖浜温泉郷	こじょうはまおんせんきょう	北海道白老郡白老町虎杖浜			洞爺・登別・苫小牧	登別・室蘭	硫黄泉	\N	\N	50007	\N
130	130	長万部温泉	おしゃまんべおんせん	北海道山越郡長万部町長万部			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
131	131	二股ラジウム温泉	ふたまたらじうむおんせん	北海道山越郡長万部町大峯			函館・大沼・松前	大沼・長万部・江差	硫黄泉	\N	\N	\N	\N
132	132	宮内温泉	ぐうないおんせん	北海道島牧郡島牧村泊			ニセコ・ルスツ	ニセコ・倶知安	硫酸塩泉	\N	\N	50755	\N
133	133	千走川温泉	ちはせがわおんせん	北海道島牧郡島牧村千走			ニセコ・ルスツ	ニセコ・倶知安	硫酸塩泉	\N	\N	50755	\N
134	134	茂津多海岸温泉	もつたかいがんおんせん	北海道島牧郡島牧村栄浜			ニセコ・ルスツ	ニセコ・倶知安	塩化物泉	\N	\N	50755	\N
135	135	奥美利河温泉	おくぴりかおんせん	北海道瀬棚郡今金町美利河			函館・大沼・松前	大沼・長万部・江差	放射能泉	\N	\N	\N	\N
136	136	ねとい温泉	ねといおんせん	北海道瀬棚郡北檜山町丹羽			函館・大沼・松前	大沼・長万部・江差	炭酸水素塩泉	\N	\N	\N	\N
137	137	神威脇温泉	かむいわきおんせん	北海道奥尻郡奥尻町湯浜			函館・大沼・松前	奥尻	炭酸水素塩泉	\N	\N	50765	\N
138	138	臼別温泉	うすべつおんせん	北海道久遠郡大成町宮野			函館・大沼・松前	大沼・長万部・江差	硫黄泉	\N	\N	\N	\N
139	139	貝取澗温泉	かいとりまおんせん	北海道久遠郡大成町貝取澗			函館・大沼・松前	大沼・長万部・江差	単純温泉	\N	\N	50011	\N
140	140	平田内温泉	ひらたないおんせん	北海道爾志郡熊石町平			函館・大沼・松前	大沼・長万部・江差	硫酸塩泉	\N	\N	\N	\N
141	141	見市温泉	けんいちおんせん	北海道爾志郡熊石町大谷			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
142	142	八雲温泉	やくもおんせん	北海道山越郡八雲町浜松			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	50011	\N
143	143	桜野温泉	さくらのおんせん	北海道山越郡八雲町桜野			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
144	144	上の湯(銀婚湯)温泉	かみのゆ（ぎんこんゆ）おんせん	北海道山越郡八雲町上の湯			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
145	145	濁川温泉	にごりかわおんせん	北海道茅部郡森町濁川			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
146	146	ワールド温泉牧場	わーるどおんせんぼくじょう	北海道茅部郡森町駒ヶ岳			函館・大沼・松前	大沼・長万部・江差	単純温泉	\N	\N	\N	\N
147	147	東大沼温泉	ひがしおおぬまおんせん	北海道亀田郡七飯町東大沼			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	50012	\N
148	148	西大沼温泉	にしおおぬまおんせん	北海道亀田郡七飯町大沼町			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	50012	\N
149	149	鹿部温泉	しかべおんせん	北海道茅部郡鹿部町鹿部			函館・大沼・松前	大沼・長万部・江差	硫黄泉	\N	\N	\N	\N
150	150	鹿部ロイヤル温泉	しかべろいやるおんせん	北海道茅部郡鹿部町			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	50012	\N
151	151	水無海浜温泉	みずなしかいひんおんせん	北海道亀田郡椴法華村恵山岬			函館・大沼・松前	函館・湯の川	塩化物泉	\N	\N	\N	\N
152	152	恵山温泉郷	えさんおんせんきょう	北海道亀田郡恵山町柏野			函館・大沼・松前	函館・湯の川	単純温泉	\N	\N	\N	\N
153	153	石田温泉	いしだおんせん	北海道亀田郡恵山町御崎			函館・大沼・松前	函館・湯の川	単純温泉	\N	\N	\N	\N
154	154	湯の川温泉	ゆのかわおんせん	北海道函館市湯川町			函館・大沼・松前	函館・湯の川	塩化物泉	\N	\N	50010	\N
155	155	函館温泉	はこだておんせん	北海道函館市大森町			函館・大沼・松前	函館・湯の川	塩化物泉	\N	\N	\N	\N
156	156	谷地頭温泉	やちがしらおんせん	北海道函館市谷地頭町			函館・大沼・松前	函館・湯の川	塩化物泉	\N	\N	\N	\N
157	157	七重浜温泉	ななえはまおんせん	北海道上磯郡上磯町七重浜			函館・大沼・松前	函館・湯の川	含鉄泉	\N	\N	\N	\N
158	158	俄虫温泉	がむしおんせん	北海道檜山郡厚沢部町上里			函館・大沼・松前	大沼・長万部・江差	単純温泉	\N	\N	\N	\N
159	159	乙部温泉	おとべおんせん	北海道爾志郡乙部町館浦			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
160	160	五厘沢温泉	ごりんざわおんせん	北海道檜山郡江差町字五厘沢			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
161	161	湯ノ岱温泉	ゆのたいおんせん	北海道檜山郡上ノ国町湯ノ岱			函館・大沼・松前	大沼・長万部・江差	塩化物泉	\N	\N	\N	\N
162	162	知内温泉	しりうちおんせん	北海道上磯郡知内町湯の里			函館・大沼・松前	松前	塩化物泉	\N	\N	\N	\N
163	163	津別温泉	つべつおんせん	北海道網走郡津別町上里			網走・北見・知床	網走・北見	単純温泉	\N	\N	\N	\N
164	164	なよろ温泉	なよろおんせん	北海道名寄市字日進			旭川・層雲峡	名寄	硫酸塩泉	\N	\N	50716	\N
165	165	川北温泉	かわきたおんせん	北海道河西郡芽室町北芽室			帯広・十勝	帯広・十勝川	硫酸塩泉	\N	\N	\N	\N
166	166	遊湯館	ゆうゆかん	北海道余市郡赤井川村字常盤			小樽・キロロ・積丹	余市・キロロ	塩化物泉	\N	\N	50756	\N
167	167	すすきの天然温泉湯香郷	すすきのてんねんおんせんとうかきょう	北海道札幌市中央区南７条西３丁目			札幌	ススキノ・大通	塩化物泉	\N	\N	50001	\N
168	2192	ニセコ昆布温泉　(ニセコ)	にせここんぶおんせん	北海道虻田郡ニセコ町ニセコ			ニセコ・ルスツ	ニセコ・倶知安	含鉄泉	\N	\N	\N	\N
169	2197	駒ヶ峯温泉ちゃっぷ林館	こまがねおんせんちゃっぷりんかん	北海道茅部郡森町字駒ケ岳657-16			函館・大沼・松前	大沼・長万部・江差	単純温泉	\N	\N	\N	\N
170	2240	矢野温泉	やのおんせん	北海道松前町福山123			函館・大沼・松前	松前	硫酸塩泉	\N	\N	50014	\N
171	2341	自由ヶ丘温泉	じゆうがおかおんせん	北海道帯広市自由が丘4丁目4-19			帯広・十勝	帯広・十勝川	炭酸水素塩泉	\N	\N	\N	\N
172	2495	江差１号井	えさし１ごうい	北海道檜山郡江差町字尾山町			函館・大沼・松前	大沼・長万部・江差	単純温泉	\N	\N	\N	\N
173	2496	はまとんべつ温泉	はまとんべつおんせん	北海道枝幸郡浜頓別町			稚内・留萌	稚内	含鉄泉	\N	\N	50651	\N
174	2497	峠の湯	とうげのゆ	北海道網走郡美幌町字津橋			網走・北見・知床	網走・北見	塩化物泉	\N	\N	\N	\N
175	2732	紋別温泉（プリンスホテル1号井）	もんべつおんせんぷりんすほてるいちごうい	北海道紋別市本町7-15-1			網走・北見・知床	サロマ・紋別	塩化物泉	\N	\N	\N	\N
176	2751	中標津東中温泉	なかしべつひがしなかおんせん	標津郡中標津町東20条北1丁目3番			釧路・阿寒・根室・川湯・屈斜路	根室	弱アルカリ性低張性泉	\N	\N	50523	\N
177	2752	利尻富士温泉	りしりふじおんせん	北海道利尻郡富士町鴛泊字栄町			離島（利尻・礼文・天売・焼尻）	利尻・礼文	ナトリウム塩化物泉	\N	\N	50524	\N
178	2797	ヌプリオンド温泉	ぬぷりおんどおんせん	北海道川上郡弟子屈町字屈斜路原野基線1番20			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	硫酸塩泉	\N	\N	50021	\N
179	2803	屈斜路温泉	くっしゃろおんせん	北海道川上郡弟子屈町屈斜路336-1			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	アルカリ単純泉	\N	\N	50021	\N
180	2806	山花温泉	やまはなおんせん	北海道釧路市山花14線131番地1			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	弱アルカリ性低張性泉	\N	\N	50020	\N
181	2807	新冠温泉	にいかっぷおんせん	北海道新冠郡新冠町字西泊津16番地3			日高・えりも	日高・えりも	ナトリウム塩化物泉	\N	\N	50029	\N
182	2810	三石温泉	みついしおんせん	北海道日高郡ひだか町字鳬舞163-1			日高・えりも	日高・えりも	炭酸水素塩泉	\N	\N	50029	\N
183	2815	羽幌温泉	はぼろおんせん	北海道苫前郡羽幌町北四条1丁目22番地			稚内・留萌	羽幌	その他	\N	\N	50648	\N
184	2816	東神楽温泉	ひがしかぐらおんせん	北海道上川郡東神楽町字東神楽569番地1			旭川・層雲峡	旭川	弱アルカリ性低張性泉	\N	\N	50649	\N
185	2818	枝幸温泉	えさしおんせん	北海道枝幸郡枝幸町字枝幸7020番地の1			稚内・留萌	稚内	ナトリウム塩化物泉	\N	\N	50651	\N
186	2820	ふれあいの湯	ふれあいのゆ	北海道稚内市大黒2丁目13-11			稚内・留萌	稚内	炭酸水素塩泉	\N	\N	50653	\N
187	2825	ニセコワイス花園温泉	にせこわいすはなぞのおんせん	北海道虻田郡倶知安町字花園79-2			ニセコ・ルスツ	ニセコ・倶知安	ナトリウム塩化物泉	\N	\N	50004	\N
188	2829	おけと湖温泉	おけとこおんせん	北海道常呂郡置戸町字常元483番地の4			網走・北見・知床	網走・北見	炭酸水素塩泉	\N	\N	50660	\N
189	2834	勝山温泉	かつやまおんせん	北海道常呂郡置戸町字常元197番地の6			網走・北見・知床	網走・北見	弱アルカリ性低張性泉	\N	\N	50664	\N
190	2835	石狩天然温泉　番屋の湯	いしかりてんねんおんせんばんやのゆ	北海道石狩市弁天町３４番地			石狩・空知・千歳	石狩	ナトリウム塩化物泉	\N	\N	50754	\N
191	2837	中標津温泉　チロロの湯	なかしべつおんせん　ちろろのゆ	北海道標津郡中標津町東25条南2丁目2			釧路・阿寒・根室・川湯・屈斜路	根室	炭酸水素塩泉	\N	\N	50523	\N
192	2838	後楽園　１号泉・２号泉	こうらくえん　いちごうせん・にごうせん	網走郡美幌町字瑞治１４０番地の６			網走・北見・知床	網走・北見	ナトリウム塩化物泉	\N	\N	50684	\N
193	2843	幣舞の湯	ぬさまいのゆ	北海道釧路市北大通2－12－1			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	弱アルカリ性低張性泉	\N	\N	50677	\N
194	2845	大船上湯温泉	おおふねかみゆおんせん	北海道函館市大船町８３２番地			函館・大沼・松前	函館・湯の川	ナトリウム塩化物泉	\N	\N	50679	\N
195	2846	恵風温泉	けいぷおんせん	函館市恵山岬町61－2			函館・大沼・松前	函館・湯の川	弱アルカリ性低張性泉	\N	\N	50680	\N
196	2848	深川イルム源泉　アグリ工房まあぶ	ふかがわいるむげんせん　あぐりこうぼうまあぶ	北海道深川市音江町音江６００番地			石狩・空知・千歳	深川・滝川	炭酸水素塩泉	\N	\N	50682	\N
197	2849	滝川温泉　滝川ふれ愛の里	たきかわおんせん　たきかわふれあいのさと	北海道滝川市西滝川76番地1			石狩・空知・千歳	深川・滝川	その他	\N	\N	50683	\N
198	2850	女満別温泉　美肌の湯	めまんべつおんせん　びはだのゆ	北海道大空町女満別湖畔３丁目２番３号			網走・北見・知床	網走・北見	塩化物泉	\N	\N	50684	\N
199	2851	くっちゃん温泉	くっちゃんおんせん	北海道虻田郡倶知安町字旭６９番地			ニセコ・ルスツ	ニセコ・倶知安	ナトリウム塩化物泉	\N	\N	50004	\N
200	2856	白老温泉	しらおいおんせん	北海道白老郡白老町字吉原２００－７７			洞爺・登別・苫小牧	登別・室蘭	硫酸塩泉	\N	\N	50007	\N
201	2857	レースイの湯	れーすいのゆ	北海道夕張市高松７番地１			石狩・空知・千歳	夕張・岩見沢	炭酸水素塩泉	\N	\N	50750	\N
202	2864	うらうす温泉	うらうすおんせん	北海道樺戸郡浦臼町キナウスナイ１８８			石狩・空知・千歳	深川・滝川	弱アルカリ性低張性泉	\N	\N	50697	\N
203	2865	北檜山温泉	きたひやまおんせん	北海道久遠郡せたな町北檜山区徳島4番地16			函館・大沼・松前	大沼・長万部・江差	ナトリウム塩化物泉	\N	\N	50698	\N
204	2866	ルスツ温泉・・ことぶきの湯	るすつおんせんことぶきのゆ	北海道虻田郡留寿都村字泉川１５７番１			ニセコ・ルスツ	ルスツ	硫酸塩泉	\N	\N	50757	\N
205	2867	スピカ　スパ　しらおい	すぴか　すぱ　しらおい	北海道白老郡白老町東町４－１－６			洞爺・登別・苫小牧	登別・室蘭	中性低張性高温泉	\N	\N	50007	\N
206	2873	亀田温泉	かめだおんせん	北海道函館市亀田本町５４－１６			函館・大沼・松前	函館・湯の川	弱アルカリ性低張性泉	\N	\N	50707	\N
207	2886	剣淵温泉	けんぶちおんせん	北海道上川郡剣淵町東町５１４１番地			旭川・層雲峡	名寄	ナトリウム塩化物泉	\N	\N	50716	\N
208	2887	樽前の湯	たるまえのゆ	北海道苫小牧市錦町２丁目５４番２			洞爺・登別・苫小牧	苫小牧	弱アルカリ性低張性泉	\N	\N	50717	\N
209	2895	美肌の湯	びはだのゆ	北海道北広島市中の沢316番1			石狩・空知・千歳	支笏湖・千歳	その他	\N	\N	50754	\N
210	2898	モンパル	もんぱる	北海道虻田郡ニセコ町字ニセコ480番4			ニセコ・ルスツ	ニセコ・倶知安	弱アルカリ性低張性泉	\N	\N	50004	\N
211	2902	サロマ湖鶴雅リゾート　ワッカの湯	さろまこつるがりぞーと　わっかのゆ	北海道北見市常呂町栄浦３０６－１			網走・北見・知床	網走・北見	ナトリウム塩化物泉	\N	\N	50736	\N
212	2904	知床の湯	しれとこのゆ	北海道斜里郡斜里町港町16-10			網走・北見・知床	斜里・羅臼	ナトリウム塩化物泉	\N	\N	50019	\N
213	2906	清里温泉	きよさとおんせん	北海道斜里郡清里町字上斜里815-8			網走・北見・知床	網走・北見	ナトリウム塩化物泉	\N	\N	50019	\N
214	2912	妖精の泉	ようせいのいずみ	北海道札幌市北区東茨戸１３２番地			札幌	北大・丘珠	炭酸水素塩泉	\N	\N	50001	\N
215	2913	札幌大通温泉	さっぽろおおどおりおんせん	北海道札幌市中央区南２条西１１丁目３２８番地７			札幌	ススキノ・大通	硫酸塩泉	\N	\N	50001	\N
216	2914	札幌駅温泉	さっぽろえきおんせん	北海道札幌市中央区北５条西３丁目１１番			札幌	ススキノ・大通	中性低張性高温泉	\N	\N	50001	\N
217	2915	ＴＨＥ　ＧＡＲＤＥＮ　ＳＰＡ温泉	ざがーでんすぱおんせん	北海道札幌市中央区南９条西２丁目５－１１			札幌	ススキノ・大通	塩化物泉	\N	\N	50001	\N
218	2916	カルロビ　バリ　スパ　温泉	かるろび　ばり　すぱ　おんせん	北海道札幌市中央区北２条西１丁目１番１０			札幌	ススキノ・大通	含鉄泉	\N	\N	50001	\N
219	2920	シャトレーゼ天然温泉	しゃとれーぜてんねんおんせん	北海道夕張郡栗山町字森９２番地			石狩・空知・千歳	夕張・岩見沢	ナトリウム塩化物泉	\N	\N	50750	\N
220	2921	伏見温泉	ふしみおんせん	北海道夕張郡由仁町伏見125番地			石狩・空知・千歳	夕張・岩見沢	ナトリウム塩化物泉	\N	\N	50750	\N
221	2922	ススキノ温泉	すすきのおんせん	北海道札幌市中央区南５条西７丁目４－３			札幌	ススキノ・大通	ナトリウム塩化物泉	\N	\N	50001	\N
222	2925	びふか温泉	びふかおんせん	北海道中川郡美深町紋穂内139番地			旭川・層雲峡	名寄	ナトリウム塩化物泉	\N	\N	50716	\N
223	2926	稚内声問温泉	わっかないこいといおんせん	北海道稚内市富士見４丁目１８３７－１			稚内・留萌	稚内	ナトリウム塩化物泉	\N	\N	50653	\N
224	2929	富良野温泉	ふらのおんせん	北海道富良野市富良野尻岸馬内2213番			富良野・美瑛・トマム	富良野	ナトリウム塩化物泉	\N	\N	50752	\N
225	2930	パコの湯旭川	ぱこのゆあさひかわ	北海道旭川市1条通7丁目58番			旭川・層雲峡	旭川	ナトリウム塩化物泉	\N	\N	50649	\N
226	2935	礼文うすゆきの湯	れぶんうすゆきのゆ	北海道礼文郡礼文町大字香深村字トンナイ１１６２番地			離島（利尻・礼文・天売・焼尻）	利尻・礼文	鉱泉	\N	\N	50764	\N
227	2936	むかわ温泉　四季の湯	むかわおんせんしきのゆ	北海道勇払郡むかわ町美幸3丁目3-2			洞爺・登別・苫小牧	苫小牧	ナトリウム塩化物泉	\N	\N	50717	\N
228	2937	稚内中央温泉	わっかないちゅうおうおんせん	北海道稚内市中央２丁目１１７－２７			稚内・留萌	稚内	ナトリウム塩化物泉	\N	\N	50653	\N
229	2954	灯の湯	あかりのゆ	北海道小樽市稲穂3丁目57番17			小樽・キロロ・積丹	小樽	ナトリウム塩化物泉	\N	\N	50756	\N
230	2955	運河の宿　おたる　ふる川	うんがのやど　おたる　ふるかわ	北海道小樽市色内１丁目２番１５号			小樽・キロロ・積丹	小樽	炭酸水素塩泉	\N	\N	50756	\N
231	2963	毛陽温泉	もうようおんせん	北海道岩見沢市毛陽町１８３番地			石狩・空知・千歳	夕張・岩見沢	ナトリウム塩化物泉	\N	\N	50750	\N
232	2969	金の湯	きんのゆ	北海道北見市端野町２区８２９番地			網走・北見・知床	網走・北見	炭酸水素塩泉	\N	\N	50736	\N
233	2974	尾岱沼温泉	おだいとうおんせん	野付郡別海町尾岱沼岬町29番１			釧路・阿寒・根室・川湯・屈斜路	根室	ナトリウム塩化物泉	\N	\N	50523	\N
234	2976	美留和温泉	びるわおんせん	北海道川上郡弟子屈町字美留和361番36			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	アルカリ単純泉	\N	\N	50021	\N
235	2977	The Vale Niseko Onsen	ざ　べーる　にせこ　おんせん	北海道虻田郡倶知安町字山田１６６番地９			ニセコ・ルスツ	ニセコ・倶知安	ナトリウム塩化物泉	\N	\N	50004	\N
236	2978	パコ釧路の湯	ぱこくしろのゆ	北海道釧路市末広町2丁目14番地			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	硫酸塩泉	\N	\N	50677	\N
237	2987	まるみ温泉	まるみおんせん	北海道目梨郡羅臼町八木浜町401番地２			網走・北見・知床	斜里・羅臼	ナトリウム塩化物泉	\N	\N	50019	\N
238	2990	別海ふれあい温泉	べっかいふれあいおんせん	北海道野付郡別海町別海141-100			釧路・阿寒・根室・川湯・屈斜路	根室	ナトリウム塩化物泉	\N	\N	50523	\N
239	2992	さっぽろ弥生温泉	さっぽろやよいおんせん	北海道札幌市中央区北3条西12丁目１番地			札幌	ススキノ・大通	弱アルカリ性低張性泉	\N	\N	50001	\N
240	2998	なかふらの温泉	なかふらのおんせん	北海道空知郡中富良野町字中富良野原野７２４番地４			富良野・美瑛・トマム	富良野	ナトリウム塩化物泉	\N	\N	50752	\N
241	3004	とままえ温泉夕陽ヶ丘温泉	とままえおんせんゆうひがおかおんせん	北海道苫前郡苫前町字苫前１１９－１			稚内・留萌	羽幌	硫酸塩泉	\N	\N	50648	\N
242	3011	南幌温泉	なんぽろおんせん	北海道空知郡南幌町南9線西15番地			石狩・空知・千歳	夕張・岩見沢	ナトリウム塩化物泉	\N	\N	50750	\N
243	3024	湯元　帯広温泉	ゆもと　おびひろおんせん	北海道帯広市西1条南11丁目　ホテルパコ帯広（源泉槽）			帯広・十勝	帯広・十勝川	弱アルカリ性低張性泉	\N	\N	50028	\N
244	3026	駅前温泉	えきまえおんせん	北海道川上郡弟子屈町川湯駅前3丁目64番23号			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	炭酸水素塩泉	\N	\N	50021	\N
245	3032	上砂川岳温泉パンケの湯	かみすながわだけおんせんぱんけのゆ	北海道空知郡上砂川町字上砂川65-106			石狩・空知・千歳	深川・滝川	弱アルカリ性低張性泉	\N	\N	50682	\N
246	3034	トーヨーグランドホテル温泉	とーよーぐらんどほてるおんせん	北海道標津郡中標津町東20条北1丁目			釧路・阿寒・根室・川湯・屈斜路	根室	硫酸塩泉	\N	\N	50523	\N
247	3036	奥屈斜路温泉	おくくっしゃろおんせん	北海道網走郡津別町上里738番地			網走・北見・知床	網走・北見	ナトリウム塩化物泉	\N	\N	50021	\N
248	3038	上川の湯	かみかわのゆ	北海道旭川市５条６丁目964番１			旭川・層雲峡	旭川	弱アルカリ性低張性泉	\N	\N	50716	\N
249	3039	空沼の湯	そらぬまのゆ	北海道札幌市中央区南6条西2丁目８－１			札幌	ススキノ・大通	塩化物泉	\N	\N	50001	\N
250	3047	しょさんべつ温泉	しょさんべつおんせん	北海道苫前郡初山別村字豊岬１５３番地			稚内・留萌	羽幌	炭酸水素塩泉	\N	\N	50648	\N
251	3052	丸瀬布温泉	まるせっぷおんせん	北海道紋別郡遠軽町丸瀬布上武利172番地			網走・北見・知床	サロマ・紋別	塩化物泉	\N	\N	50872	\N
252	3053	栗山温泉	くりやまおんせん	北海道夕張郡栗山町湯地91番地			石狩・空知・千歳	夕張・岩見沢	ナトリウム塩化物泉	\N	\N	50750	\N
253	3055	くったり温泉	くったりおんせん	北海道上川郡新得町屈足546番地			帯広・十勝	十勝・サホロ	硫黄泉	\N	\N	50874	\N
254	3058	稚内温泉　やすらぎの湯	わっかないおんせん　やすらぎのゆ	北海道稚内市大黒2丁目7－15			稚内・留萌	稚内	弱アルカリ性低張性泉	\N	\N	50653	\N
255	3061	利尻ふれあい温泉	りしりふれあいおんせん	北海道利尻郡利尻町沓形字富士見町			離島（利尻・礼文・天売・焼尻）	利尻・礼文	ナトリウム塩化物泉	\N	\N	50524	\N
256	3062	美利河温泉	ぴりかおんせん	北海道瀬棚郡今金町字美利河			函館・大沼・松前	大沼・長万部・江差	ナトリウム塩化物泉	\N	\N	50011	\N
257	3066	龍乃湯温泉	たつのゆおんせん	北海道旭川市東旭川町上兵村91番地			旭川・層雲峡	旭川	ナトリウム塩化物泉	\N	\N	50880	\N
258	3067	天然温泉士別ホテル美し乃湯温泉	てんねんおんせんしべつほてるうつくしのゆおんせん	北海道士別市大通東１７丁目３１４３番地			旭川・層雲峡	名寄	ナトリウム塩化物泉	\N	\N	50881	\N
259	3069	稚内温泉　大将の湯	わっかないおんせん　たいしょうのゆ	北海道稚内市大黒1丁目７－１９			稚内・留萌	稚内	ナトリウム塩化物泉	\N	\N	50653	\N
260	3073	薄別温泉	うすべつおんせん	北海道札幌市南区定山渓858番地1			定山渓	定山渓	アルカリ単純泉	\N	\N	50002	\N
261	3075	シララの湯	しららのゆ	北海道積丹郡積丹町大字西河町14番2			小樽・キロロ・積丹	積丹	中性低張性高温泉	\N	\N	50755	\N
262	3077	夫婦善哉	めおとぜんざい	北海道夕張市高松7番地1			石狩・空知・千歳	夕張・岩見沢	炭酸水素塩泉	\N	\N	50750	\N
263	3094	豊浦温泉	とようらおんせん	北海道虻田郡豊浦町浜町地先			洞爺・登別・苫小牧	洞爺	その他	\N	\N	50009	\N
264	3112	しほろ温泉	しほろおんせん	北海道河東郡士幌町字下居辺西２線１３４番地			帯広・十勝	十勝・サホロ	弱アルカリ性低張性泉	\N	\N	50901	\N
265	3128	斜里温泉	しゃりおんせん	北海道斜里郡斜里町西町13番地13			網走・北見・知床	斜里・羅臼	ナトリウム塩化物泉	\N	\N	50911	\N
266	3131	ニセコモイワ山温泉	にせこもいわやまおんせん	北海道虻田郡ニセコ町４４５－３			ニセコ・ルスツ	ニセコ・倶知安	単純温泉	\N	\N	50004	\N
267	3156	小清水町第2源泉井	こしみずちょうだいにげんせんい	北海道斜里郡小清水町字小清水681番地1			網走・北見・知床	網走・北見	アルカリ単純泉	\N	\N	50911	\N
268	3160	ふるさと温泉	ふるさとおんせん	北海道樺戸郡新十津川町総進189-1			石狩・空知・千歳	深川・滝川	弱アルカリ性低張性泉	\N	\N	50682	\N
269	3169	三笠天然温泉	みかさてんねんおんせん	北海道三笠市岡山 1042-20			石狩・空知・千歳	夕張・岩見沢	ナトリウム塩化物泉	\N	\N	50682	\N
270	3175	ピンネシリ温泉	ぴんねしりおんせん	北海道枝幸郡中頓別町字敏音知143番地2			稚内・留萌	稚内	塩化物泉	\N	\N	50651	\N
271	3190	Ki Niseko温泉	き　にせこおんせん	北海道虻田郡倶知安町山田183-43			ニセコ・ルスツ	ニセコ・倶知安	炭酸水素塩泉	\N	\N	50004	\N
272	3194	盃温泉	さかずきおんせん	北海道古宇郡泊村興志内村220-11			小樽・キロロ・積丹	積丹	ナトリウム塩化物泉	\N	\N	50755	\N
273	3196	みなぴりかの湯	みなぴりかのゆ	北海道旭川市宮下通１０丁目5番			旭川・層雲峡	旭川	アルカリ単純泉	\N	\N	50649	\N
274	3210	雄阿寒温泉	おあかんおんせん	釧路市阿寒町字オクルシュベ３－１			釧路・阿寒・根室・川湯・屈斜路	釧路・阿寒	弱アルカリ性低張性泉	\N	\N	50022	\N
275	3217	しんしのつ温泉	しんしのつおんせん	北海道石狩郡新篠津村第４５線北２番地			石狩・空知・千歳	石狩	弱アルカリ性低張性泉	\N	\N	50958	\N
276	3218	温泉　鳳乃舞音更	おんせん　ほうのまいおとふけ	北海道河東郡音更町木野西通17丁目2番44			帯広・十勝	帯広・十勝川	塩化物泉	\N	\N	50028	\N
277	3220	うずら温泉	うずらおんせん	北海道桧山郡厚沢部町鶉町８５３番地			函館・大沼・松前	大沼・長万部・江差	鉱泉	\N	\N	50959	\N
278	3222	天然温泉　天都の湯	てんねんおんせん　てんとのゆ	北海道網走市南２条西３丁目１番地の１			網走・北見・知床	網走・北見	弱アルカリ性低張性泉	\N	\N	50684	\N
279	3223	館浦温泉	たてうらおんせん	北海道爾志郡乙部町字館浦494-1			函館・大沼・松前	大沼・長万部・江差	ナトリウム塩化物泉	\N	\N	50960	\N
280	3234	黄金温泉	こがねおんせん	北海道磯谷郡蘭越町字黄金258番地1			ニセコ・ルスツ	ニセコ・倶知安	ナトリウム塩化物泉	\N	\N	50004	\N
281	3239	寿都温泉	すっつおんせん	北海道寿都郡寿都町字湯別町下湯別425番			ニセコ・ルスツ	ニセコ・倶知安	炭酸水素塩泉	\N	\N	50755	\N
282	3240	湯別温泉	ゆべつのおんせん	北海道寿都郡寿都町字湯別上湯別196番1			ニセコ・ルスツ	ニセコ・倶知安	ナトリウム塩化物泉	\N	\N	50755	\N
283	3250	かぐらの湯　旭川	かぐらのゆ　あさひかわ	北海道旭川市1条通7丁目88番5号			旭川・層雲峡	旭川	炭酸水素塩泉	\N	\N	50649	\N
284	3260	北湯路	きたゆみち	北海道北斗市市渡１丁目１番７号			函館・大沼・松前	函館・湯の川	ナトリウム塩化物泉	\N	\N	50012	\N
285	3264	AYA Niseko 天然温泉	あやにせこてんねんおんせん	北海道虻田郡倶知安町字山田195番地3			ニセコ・ルスツ	ニセコ・倶知安	その他	\N	\N	50004	\N
286	3265	ヒラフ温泉郷　アルペンの湯	ひらふおんせんきょう　あるぺんのゆ	北海道虻田郡倶知安町字山田204番31			ニセコ・ルスツ	ニセコ・倶知安	ナトリウム塩化物泉	\N	\N	50004	\N
287	3281	ナウマン温泉	なうまんおんせん	北海道中川郡幕別町忠類元忠類111番地2			帯広・十勝	十勝・サホロ	ナトリウム塩化物泉	\N	\N	50028	\N
288	3288	湧駒別温泉	ゆこまんべつおんせん	北海道上川郡東川町勇駒別旭岳温泉			旭川・層雲峡	層雲峡・天人峡	炭酸水素塩泉	\N	\N	50016	\N
289	3293	生田原温泉	いくたはらおんせん	北海道紋別郡遠軽町生田原871番地4			網走・北見・知床	サロマ・紋別	ナトリウム塩化物泉	\N	\N	50987	\N
290	3303	天塩温泉	てしおおんせん	北海道天塩郡天塩町更岸8392			稚内・留萌	羽幌	炭酸水素塩泉	\N	\N	50648	\N
291	3306	中標津温泉 モアンの湯	なかしべつおんせん	北海道標津郡中標津町東25条南2丁目2			釧路・阿寒・根室・川湯・屈斜路	根室	炭酸水素塩泉	\N	\N	50523	\N
292	3312	スカイの湯	すかいのゆ	北海道虻田郡倶知安町字山田204番1			ニセコ・ルスツ	ニセコ・倶知安	中性低張性高温泉	\N	\N	50004	\N
293	3313	小樽運河の湯	おたるうんがのゆ	北海道小樽市色内1丁目4‐20			小樽・キロロ・積丹	小樽	ナトリウム塩化物泉	\N	\N	50756	\N
294	3314	hi・bi・ka villa ～日・美・海～	ひびかびら	北海道岩内郡岩内町字野束258番9号			ニセコ・ルスツ	ニセコ・倶知安	弱アルカリ性低張性泉	\N	\N	50755	\N
295	3318	水晶の湯	すいしょうのゆ	北海道川上郡弟子屈町サワンチサップ5‐7			釧路・阿寒・根室・川湯・屈斜路	川湯・屈斜路	ナトリウム塩化物泉	\N	\N	50021	\N
296	168	大鰐温泉	おおわにおんせん	青森県南津軽郡大鰐町			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50458	\N
297	169	下風呂温泉郷	しもふろおんせんきょう	青森県下北郡風間浦村下風呂			下北・三沢	下北半島	硫黄泉	\N	\N	50547	\N
298	170	奥薬研温泉	おくやげんおんせん	青森県下北郡大畑町大畑赤滝山			下北・三沢	下北半島	単純温泉	\N	\N	\N	\N
299	171	薬研温泉	やげんおんせん	青森県下北郡大畑町薬研			下北・三沢	下北半島	単純温泉	\N	\N	50547	\N
300	172	湯野川温泉	ゆのかわおんせん	青森県下北郡川内町川内			下北・三沢	下北半島	単純温泉	\N	\N	\N	\N
301	173	恐山温泉	おそれざんおんせん	青森県むつ市田名部			下北・三沢	下北半島	硫黄泉	\N	\N	\N	\N
302	174	斗南温泉	となみおんせん	青森県むつ市大字田名部字下道			下北・三沢	下北半島	含鉄泉	\N	\N	50547	\N
303	175	下北半島温泉	しもきたはんとうおんせん	青森県下北郡東通村尻屋			下北・三沢	下北半島	単純温泉	\N	\N	\N	\N
304	176	竜飛崎温泉	たっぴざきおんせん	青森県東津軽郡三廐村龍浜			津軽半島	東津軽	塩化物泉	\N	\N	\N	\N
305	177	平舘不老不死温泉	たいらだてふろうふしおんせん	青森県東津軽郡平舘村根岸字湯の沢			津軽半島	東津軽	塩化物泉	\N	\N	\N	\N
306	178	浅虫温泉	あさむしおんせん	青森県青森市浅虫			青森	青森・浅虫・八甲田	硫酸塩泉	\N	\N	50030	\N
307	179	馬門温泉	まかどおんせん	青森県上川郡野辺地町湯沢			下北・三沢	野辺地	硫酸塩泉	\N	\N	50547	\N
308	180	上北町温泉郷	かみきたまちおんせんきょう	青森県上北郡上北町上野字山添			下北・三沢	三沢	含鉄泉	\N	\N	\N	\N
309	181	池の端温泉郷	いけのはたおんせんきょう	青森県上北郡上北町大浦境ノ沢			下北・三沢	野辺地	単純温泉	\N	\N	\N	\N
310	182	古牧温泉	こまきおんせん	青森県三沢市古間木山			下北・三沢	三沢	単純温泉	\N	\N	\N	\N
311	183	六戸温泉	ろくのへおんせん	青森県上北郡六戸町			下北・三沢	三沢	単純温泉	\N	\N	\N	\N
312	184	五戸まきば温泉	ごのへまきばおんせん	青森県三戸郡五戸町苗代沢			八戸	八戸	塩化物泉	\N	\N	\N	\N
313	185	剣吉温泉	けんよしおんせん	青森県三戸郡名川町斗賀加賀			八戸	八戸	塩化物泉	\N	\N	\N	\N
314	186	十和田湖温泉郷	とわだこおんせんきょう	青森県上川郡十和田湖町法量			十和田湖	十和田湖	含鉄泉	\N	\N	50475	\N
315	187	蔦温泉	つたおんせん	青森県上川郡十和田湖町奥瀬			十和田湖	十和田湖	硫黄泉	\N	\N	\N	\N
316	188	猿倉温泉	さるくらおんせん	青森県上川郡十和田湖町奥瀬			十和田湖	十和田湖	硫酸塩泉	\N	\N	\N	\N
317	189	谷地温泉	やちおんせん	青森県上川郡十和田湖町南八甲田			十和田湖	十和田湖	硫黄泉	\N	\N	\N	\N
318	190	八甲田温泉	はっこうだおんせん	青森県青森市駒込			青森	青森・浅虫・八甲田	硫黄泉	\N	\N	\N	\N
319	191	酸ヶ湯温泉	すかゆおんせん	青森県青森市八甲田山			青森	青森・浅虫・八甲田	含鉄泉	\N	\N	\N	\N
320	192	荒川温泉	あらかわおんせん	青森県青森市大字荒川字南荒川山			青森	青森・浅虫・八甲田	硫黄泉	\N	\N	\N	\N
321	193	城ヶ倉温泉	じょうがくらおんせん	青森県青森市荒川			青森	青森・浅虫・八甲田	硫黄泉	\N	\N	\N	\N
322	194	寒水沢温泉	かんすいざわおんせん	青森県青森市荒川字寒水沢			青森	青森・浅虫・八甲田	硫酸塩泉	\N	\N	50031	\N
323	195	雲谷高原温泉	もやこうげんおんせん	青森県青森市大字雲谷			青森	青森・浅虫・八甲田	単純温泉	\N	\N	\N	\N
324	196	金木温泉	かなぎおんせん	青森県北津軽郡金木町朝日山			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
325	197	稲垣温泉	いながきおんせん	青森県西津軽郡稲垣村沼崎			津軽西海岸	西津軽	単純温泉	\N	\N	50032	\N
326	198	五所川原温泉	ごしょがわらおんせん	青森県五所川原市松島町			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
327	199	青陽園温泉	せいようえんおんせん	青森県五所川原市姥萢字船橋			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
328	200	大沢温泉	おおさわおんせん	青森県北津軽郡鶴田町廻堰字大沢			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
329	201	鶴田温泉	つるたおんせん	青森県北津軽郡鶴田町鶴田			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
330	202	夢野温泉	ゆめのおんせん	青森県五所川原市持子沢			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
331	203	高増温泉	たかますおんせん	青森県北津軽郡板柳町大俵和田			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
332	204	長寿温泉	ちょうじゅおんせん	青森県黒石市下山形字村下			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
333	205	温湯温泉　(黒石)	ぬるゆおんせん	青森県黒石市温湯温泉			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
334	206	板留温泉　(黒石)	いたどめおんせん	青森県黒石市板留			弘前	大鰐・碇ヶ関・黒石	単純温泉	\N	\N	50032	\N
335	207	落合温泉　(黒石)	おちあいおんせん	青森県黒石市袋			弘前	大鰐・碇ヶ関・黒石	硫酸塩泉	\N	\N	50032	\N
336	208	青荷温泉　(黒石)	あおにおんせん	青森県黒石市沖浦青荷沢			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
337	209	温川温泉	ぬるかわおんせん	青森県南津軽郡平賀町切明			弘前	大鰐・碇ヶ関・黒石	硫酸塩泉	\N	\N	\N	\N
338	210	古遠部温泉	ふるとうべおんせん	青森県南津軽郡碇ヶ関村西碇ヶ関山			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50859	\N
339	211	碇ヶ関温泉	いかりがせきおんせん	青森県南津軽郡碇ヶ関村碇ヶ関			弘前	大鰐・碇ヶ関・黒石	単純温泉	\N	\N	50859	\N
340	212	相乗温泉	あいのりおんせん	青森県南津軽郡碇ヶ関村西碇ヶ関			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50859	\N
341	213	湯の沢温泉	ゆのさわおんせん	青森県南津軽郡碇ヶ関村湯の沢			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50859	\N
342	214	島田温泉	しまだおんせん	青森県南津軽郡大鰐町島田			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
343	215	唐竹温泉	からたけおんせん	青森県南津軽郡平賀町唐竹			弘前	大鰐・碇ヶ関・黒石	含鉄泉	\N	\N	\N	\N
344	216	南田温泉	みなみだおんせん	青森県南津軽郡平賀町町居字南田			弘前	大鰐・碇ヶ関・黒石	単純温泉	\N	\N	50032	\N
345	217	大坊温泉	だいぼうおんせん	青森県南津軽郡平賀町大坊竹内			弘前	大鰐・碇ヶ関・黒石	硫黄泉	\N	\N	\N	\N
346	218	猿賀温泉	さるかおんせん	青森県南津軽郡尾上町猿賀			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
347	219	緑ヶ丘温泉	みどりがおかおんせん	青森県弘前市旭ヶ丘			弘前	弘前・白神	塩化物泉	\N	\N	\N	\N
348	220	弘前温泉	ひろさきおんせん	青森県弘前市寒沢町			弘前	弘前・白神	硫酸塩泉	\N	\N	\N	\N
349	221	三本柳温泉	さんぼんやなぎおんせん	青森県中津軽郡岩木町百沢			弘前	弘前・白神	塩化物泉	\N	\N	\N	\N
350	222	百沢温泉	ひゃくざわおんせん	青森県中津軽郡岩木町百沢			弘前	弘前・白神	塩化物泉	\N	\N	\N	\N
351	223	嶽温泉	だけおんせん	青森県中津軽郡岩木町常盤野			弘前	弘前・白神	単純温泉	\N	\N	50032	\N
352	224	湯段温泉	ゆだんおんせん	青森県中津軽郡岩木町常盤野			弘前	弘前・白神	硫黄泉	\N	\N	\N	\N
353	225	鯵ヶ沢温泉	あじがさわおんせん	青森県西津軽郡鯵ヶ沢町舞戸町			津軽西海岸	津軽西海岸	塩化物泉	\N	\N	50032	\N
354	226	熊の湯温泉	くまのゆおんせん	青森県西津軽郡鯵ヶ沢町一ツ森町			津軽西海岸	津軽西海岸	塩化物泉	\N	\N	\N	\N
355	227	黄金崎不老不死温泉	こがねざきふろうふしおんせん	青森県西津軽郡深浦町艫作			津軽西海岸	津軽西海岸	炭酸水素塩泉	\N	\N	\N	\N
356	228	みちのく温泉	みちのくおんせん	青森県西津軽郡深浦町艫作			津軽西海岸	津軽西海岸	硫黄泉	\N	\N	\N	\N
357	229	田子温泉	たっこおんせん	青森県三戸郡田子町字道ノ上			八戸	八戸	塩化物泉	\N	\N	\N	\N
358	230	大間温泉	おおまおんせん	青森県下北郡大間町大字大間字内山			下北・三沢	下北半島	塩化物泉	\N	\N	\N	\N
359	2247	鍋石温泉	なべいしおんせん	青森県西津軽郡深浦町大字舟舮作			津軽西海岸	津軽西海岸	塩化物泉	\N	\N	\N	\N
360	2248	しらかみの湯	しらかみのゆ	青森県中津軽郡西目屋村大字田代字神田60-1			弘前	弘前・白神	含鉄泉	\N	\N	\N	\N
361	2680	十和田湖畔温泉	とわだこはんおんせん	秋田県小坂町十和田湖字休平３５			十和田湖	十和田湖	塩化物泉	\N	\N	50475	\N
362	2711	田代温泉	たしろおんせん	青森県中津軽郡西目屋村大字田代字稲元168			弘前	弘前・白神	単純温泉	\N	\N	50032	\N
363	2712	浜子温泉	はまごおんせん	青森県東津軽郡平内町浜子掘替106-4			青森	青森・浅虫・八甲田	塩化物泉	\N	\N	\N	\N
364	2713	尾駮温泉	おぶちおんせん	青森県上北郡六ヶ所村大字尾駮357-1			下北・三沢	野辺地	含鉄泉	\N	\N	\N	\N
365	2728	鷹架温泉	たかほこおんせん	青森県北上郡六ヶ所村大字鷹架字内子内57			下北・三沢	野辺地	ナトリウム塩化物泉	\N	\N	\N	\N
366	2746	小田川温泉	おだがわおんせん	青森県北津軽郡金木町大字嘉瀬字端山崎２６７－５６７			津軽半島	北津軽・五所川原	ナトリウム塩化物泉	\N	\N	50518	\N
367	2760	十和田湖西湖畔温泉	とわだこにしこはんおんせん	秋田県鹿角郡小坂町十和田湖西湖畔			十和田湖	十和田湖	塩化物泉	\N	\N	50475	\N
368	2891	ロマントピア温泉	ろまんとぴあおんせん	青森県弘前市水木在家字桜井113-2			弘前	弘前・白神	炭酸水素塩泉	\N	\N	50722	\N
369	2957	古川温泉	ふるかわおんせん	青森県青森市古川１丁目１０の１４			青森	青森・浅虫・八甲田	その他	\N	\N	50784	\N
370	3056	さわ里の湯	さわさとのゆ	青森県八戸市東白山台1-1-1			八戸	八戸	塩化物泉	\N	\N	50875	\N
371	3057	大秋温泉	おおあきおんせん	青森県中津軽郡西目屋村田代字神田６０－１			弘前	弘前・白神	単純温泉	\N	\N	50032	\N
372	231	金田一温泉	きんたいちおんせん	岩手県二戸市金田一			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50035	\N
373	232	山根温泉	やまねおんせん	岩手県久慈市山根町			三陸海岸	久慈	硫黄泉	\N	\N	\N	\N
374	233	岩泉温泉	いわいずみおんせん	岩手県下閉伊郡岩泉町岩泉			三陸海岸	宮古	硫黄泉	\N	\N	\N	\N
375	234	小田代温泉	こだしろおんせん	岩手県下閉伊郡田老町小田代			三陸海岸	宮古	単純温泉	\N	\N	\N	\N
376	235	小川温泉	こがわおんせん	岩手県釜石市甲子町			三陸海岸	釜石・大船渡	硫黄泉	\N	\N	\N	\N
377	236	七時雨温泉	ななしぐれおんせん	岩手県岩手郡西根町寺田			安比・八幡平・二戸	安比・八幡平・二戸	塩化物泉	\N	\N	\N	\N
378	237	とぴや温泉	とぴやおんせん	岩手県二戸郡安代町細野			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50036	\N
379	238	安比温泉	あっぴおんせん	岩手県二戸郡安代町細野			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50036	\N
380	239	新安比温泉	しんあっぴおんせん	岩手県二戸郡安代町叺田			安比・八幡平・二戸	安比・八幡平・二戸	含鉄泉	\N	\N	50036	\N
381	240	藤七温泉　(八幡平)	とうしちおんせん	岩手県岩手郡松尾村寄木			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
382	241	御在所温泉　(八幡平)	ございしょおんせん	岩手県岩手郡松尾村緑ガ丘			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
383	242	東八幡平温泉　(八幡平)	ひがしはちまんたいおんせん	岩手県岩手郡松尾村寄木			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	50037	\N
384	243	西根温泉	にしねおんせん	岩手県岩手郡西根町大更			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
385	244	岩手山焼走り温泉	いわてさんやきばしりおんせん	岩手県岩手郡西根町平笠			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50037	\N
386	245	松川温泉	まつかわおんせん	岩手県岩手郡松尾村寄木			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
387	246	滝ノ上温泉	たきのうえおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	硫黄泉	\N	\N	\N	\N
388	247	網張温泉	あみはりおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	硫黄泉	\N	\N	50034	\N
389	248	玄武温泉	げんぶおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	ナトリウム塩化物泉	\N	\N	50034	\N
390	249	国見温泉	くにみおんせん	岩手県岩手郡雫石町橋場			雫石	雫石・鶯宿	炭酸水素塩泉	\N	\N	\N	\N
391	250	鶯宿温泉	おうしゅくおんせん	岩手県岩手郡雫石町鶯宿			雫石	雫石・鶯宿	硫黄泉	\N	\N	50034	\N
392	251	繋温泉	つなぎおんせん	岩手県盛岡市繋			盛岡	盛岡・つなぎ	硫黄泉	\N	\N	50033	\N
393	252	矢巾温泉	やはばおんせん	岩手県紫波郡矢巾町煙山			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	\N	\N
394	253	志和稲荷温泉	しわいなりおんせん	岩手県紫波郡紫波町升沢			花巻･北上･遠野	花巻・北上・湯田	放射能泉	\N	\N	\N	\N
395	254	新湯本温泉	しんゆもとおんせん	岩手県花巻市糠塚			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
396	255	花巻温泉　(花巻)	はなまきおんせん	岩手県花巻市湯本			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
397	256	台温泉　(花巻)	だいおんせん	岩手県花巻市湯本			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
398	257	新鉛温泉　(花巻)	しんなまりおんせん	岩手県花巻市鉛			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
399	258	鉛温泉　(花巻)	なまりおんせん	岩手県花巻市鉛			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	50038	\N
400	259	渡り温泉　(花巻)	わたりおんせん	岩手県花巻市湯口字宇佐野			花巻･北上･遠野	花巻・北上・湯田	炭酸水素塩泉	\N	\N	50038	\N
401	260	高倉山温泉　(花巻)	たかくらやまおんせん	岩手県花巻市下シ沢			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	\N	\N
402	261	山の神温泉　(花巻)	やまのかみおんせん (はなまき)	岩手県花巻市下シ沢字中野			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
403	262	大沢温泉（花巻）	おおさわおんせん（はなまき）	岩手県花巻市湯口字大沢181			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	50038	\N
404	263	金矢温泉	かなやおんせん	岩手県花巻市金矢			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	\N	\N
405	264	志戸平温泉　(花巻)	しどたいらおんせん	岩手県花巻市湯口			花巻･北上･遠野	花巻・北上・湯田	アルカリ単純泉	\N	\N	50038	\N
406	265	松倉温泉　(花巻)	まつくらおんせん	岩手県花巻市湯口			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	50038	\N
407	266	大岳温泉	おおだけおんせん	岩手県江刺市簗川			奥州・平泉・一関	奥州・水沢・江刺	硫黄泉	\N	\N	\N	\N
408	267	湯本温泉	ゆもとおんせん	岩手県和賀郡湯田町湯本			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	50039	\N
409	268	湯田薬師温泉	ゆだやくしおんせん	岩手県和賀郡湯田町中山			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	\N	\N
410	269	巣郷温泉	すごうおんせん	岩手県和賀郡湯田町巣郷			花巻･北上･遠野	花巻・北上・湯田	塩化物泉	\N	\N	\N	\N
411	270	湯川温泉	ゆがわおんせん	岩手県和賀郡湯田町湯川			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	50039	\N
412	271	夏油温泉	げとうおんせん	岩手県北上市和賀町岩崎新田			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	50576	\N
413	272	水神温泉	みずかみおんせん	岩手県北上市和賀町岩崎新田			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	\N	\N
414	273	金ヶ崎温泉	かねがさきおんせん	岩手県胆沢郡金ヶ崎町西根和光			奥州・平泉・一関	奥州・水沢・江刺	硫酸塩泉	\N	\N	\N	\N
415	274	永岡温泉	ながおかおんせん	岩手県胆沢郡金ヶ崎町永沢			奥州・平泉・一関	奥州・水沢・江刺	硫黄泉	\N	\N	\N	\N
416	275	須川温泉	すかわおんせん	岩手県一関市厳美町			奥州・平泉・一関	平泉・一関	単純温泉	\N	\N	\N	\N
417	276	真湯温泉	しんゆおんせん	岩手県一関市厳美町須川岳			奥州・平泉・一関	平泉・一関	塩化物泉	\N	\N	\N	\N
418	277	祭畤温泉	まつるべおんせん	岩手県一関市厳美町祭畤			奥州・平泉・一関	平泉・一関	塩化物泉	\N	\N	50578	\N
419	278	奥厳美温泉	おくげんびおんせん	岩手県一関市厳美町槻の木平			奥州・平泉・一関	平泉・一関	含鉄泉	\N	\N	\N	\N
420	279	矢びつ温泉	やびつおんせん	岩手県一関市厳美町下り松			奥州・平泉・一関	平泉・一関	硫酸塩泉	\N	\N	50578	\N
421	280	厳美温泉	げんびおんせん	岩手県一関市厳美町			奥州・平泉・一関	平泉・一関	硫酸塩泉	\N	\N	\N	\N
422	281	厳美渓温泉	げんびけいおんせん	岩手県一関市厳美町			奥州・平泉・一関	平泉・一関	単純温泉	\N	\N	50578	\N
423	282	あづまね温泉	あづまねおんせん	岩手県紫波郡紫波町上松本字内方			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	\N	\N
424	283	宝竜温泉宝の湯	ほうりゅうおんせんたからのゆ	岩手県一関市厳美町宝竜			奥州・平泉・一関	平泉・一関	塩化物泉	\N	\N	\N	\N
425	284	千貫石温泉	せんがんいしおんせん	岩手県胆沢郡金ヶ崎町西根二枚橋			奥州・平泉・一関	奥州・水沢・江刺	塩化物泉	\N	\N	\N	\N
426	285	極楽乃温泉	ごくらくのおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	単純温泉	\N	\N	\N	\N
427	2198	沢内銀河高原温泉	さわうちぎんがこうげんおんせん	岩手県和賀郡沢内村川舟3-647-1			花巻･北上･遠野	花巻・北上・湯田	塩化物泉	\N	\N	\N	\N
428	2343	東和温泉	とうわおんせん	岩手県和賀郡東和町安俵6-135			花巻･北上･遠野	花巻・北上・湯田	炭酸水素塩泉	\N	\N	50038	\N
429	2344	綱取温泉	つなとりおんせん	岩手県北上市和賀町横川目3-17-2			花巻･北上･遠野	花巻・北上・湯田	炭酸水素塩泉	\N	\N	\N	\N
430	2345	しゃくなげの湯っこ五葉温泉	しゃくなげのゆっこごようおんせん	岩手県大船渡市日頃市町字赤坂西風山1-5			三陸海岸	釜石・大船渡	アルカリ単純泉	\N	\N	\N	\N
431	2346	川尻温泉	かわじりおんせん	岩手県和賀郡湯田町川尻40-53			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	\N	\N
432	2347	槻沢温泉	つきさわおんせん	岩手県和賀郡湯田町槻沢25-16-1			花巻･北上･遠野	花巻・北上・湯田	弱アルカリ性低張性泉	\N	\N	\N	\N
433	2348	錦秋湖温泉	きんしゅうこおんせん	岩手県和賀郡湯田町耳取49-2-137			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	\N	\N
434	2349	綿帽子温泉	わたぼうしおんせん	岩手県二戸郡安代町字細野436-1			安比・八幡平・二戸	安比・八幡平・二戸	硫酸塩泉	\N	\N	\N	\N
435	2406	舞鶴の湯温泉	まいづるのゆおんせん	岩手県胆沢郡前沢町徳沢1-45			奥州・平泉・一関	奥州・水沢・江刺	アルカリ単純泉	\N	\N	\N	\N
436	2684	平泉温泉	ひらいずみおんせん	岩手県西磐井郡平泉町平泉長庫１０－５			奥州・平泉・一関	平泉・一関	弱アルカリ性低張性泉	\N	\N	50481	\N
437	2727	ひぃなの丘	ひいなのおか	岩手県盛岡市繋字上野23-26			盛岡	盛岡・つなぎ	ナトリウム塩化物泉	\N	\N	\N	\N
438	2731	ほっとゆだ	ほっとゆだ	岩手県和賀郡湯田町川尻40-53			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	\N	\N
439	2759	雫石高倉温泉	しずくいしたかくらおんせん	岩手県岩手郡雫石町高倉温泉			雫石	雫石・鶯宿	弱アルカリ性低張性泉	\N	\N	50034	\N
440	2798	瀬美温泉	せみおんせん	岩手県北上市和賀町岩崎新田1地割128番地			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	50576	\N
441	2894	南網張ありね温泉	みなみあみはりありねおんせん	岩手県岩手郡雫石町長山猫沢3-6			雫石	雫石・鶯宿	硫酸塩泉	\N	\N	50034	\N
442	3007	八幡平南温泉（湧宝の湯）	はちまんたいみなみおんせん（ゆうほうのゆ）	岩手県八幡平市松尾寄木第１－１３５－２			安比・八幡平・二戸	安比・八幡平・二戸	弱アルカリ性低張性泉	\N	\N	50037	\N
443	3010	八幡平温泉(岩手)	はちまんたいおんせん（いわて）	岩手県八幡平市松尾寄木１－６６８－２６７			安比・八幡平・二戸	安比・八幡平・二戸	ナトリウム塩化物泉	\N	\N	50037	\N
444	3235	一関温泉笹谷ちびぞう源泉	いちのせきおんせんささやちびぞうおんせん	岩手県一関市赤萩字笹谷396-6			奥州・平泉・一関	平泉・一関	硫酸塩泉	\N	\N	50578	\N
445	3238	新花巻温泉　柘榴園（華佗の湯、晃葉の湯）	しんはなまきおんせん　ざくろえん　かだのゆ　こうようのゆ	岩手県花巻市糠塚1-13-21			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	50038	\N
446	3249	奥中山高原温泉	おくなかやまこうげんおんせん	岩手県二戸郡一戸町奥中山字西田子６６２－１			安比・八幡平・二戸	安比・八幡平・二戸	炭酸水素塩泉	\N	\N	50972	\N
447	3256	志賀来温泉（およねの湯）	しがらいおんせん（およねのゆ）	岩手県和賀郡西和賀町沢内字大野17-140			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	50039	\N
448	376	宮沢温泉　(鬼首)	みやざわおんせん	宮城県玉造郡鳴子町鬼首宮沢			鳴子・大崎	鳴子・大崎	塩化物泉	\N	\N	\N	\N
449	377	吹上温泉　(鬼首)	ふきあげおんせん	宮城県玉造郡鳴子町鬼首吹上			鳴子・大崎	鳴子・大崎	塩化物泉	\N	\N	\N	\N
450	378	轟温泉　(鬼首)	とどろきおんせん	宮城県玉造郡鳴子町鬼首轟			鳴子・大崎	鳴子・大崎	単純温泉	\N	\N	\N	\N
451	379	中山平温泉　(鳴子)	なかやまだいらおんせん	宮城県玉造郡鳴子町字星沼			鳴子・大崎	鳴子・大崎	硫黄泉	\N	\N	50041	\N
452	380	鳴子温泉　(鳴子)	なるこおんせん	宮城県玉造郡鳴子町字湯元			鳴子・大崎	鳴子・大崎	酸性泉	\N	\N	50041	\N
453	381	東鳴子温泉　(鳴子)	ひがしなるこおんせん	宮城県玉造郡鳴子町大口字赤湯			鳴子・大崎	鳴子・大崎	硫黄泉	\N	\N	50041	\N
454	382	川渡温泉　(鳴子)	かわたびおんせん	宮城県玉造郡鳴子町大字川端			鳴子・大崎	鳴子・大崎	含鉄泉	\N	\N	50041	\N
455	385	台ヶ森温泉	だいがもりおんせん	宮城県黒川郡大和町吉田台ヶ森			松島・塩竈	黒川	塩化物泉	\N	\N	\N	\N
456	388	作並温泉	さくなみおんせん	宮城県仙台市青葉区作並			仙台	秋保・作並	炭酸水素塩泉	\N	\N	50590	\N
457	389	二口温泉	ふたくちおんせん	宮城県仙台市太白区秋保町馬場			仙台	秋保・作並	塩化物泉	\N	\N	\N	\N
458	390	泉温泉	いずみおんせん	宮城県仙台市泉区福岡芳ノ沢			仙台	仙台	含鉄泉	\N	\N	\N	\N
459	391	広瀬川温泉	ひろせがわおんせん	宮城県仙台市青葉区芋沢			仙台	仙台	硫黄泉	\N	\N	\N	\N
460	392	鳴合温泉	なるあいおんせん	宮城県仙台市青葉区芋沢新田			仙台	仙台	炭酸水素塩泉	\N	\N	\N	\N
461	393	鴻巣温泉	こうのすおんせん	宮城県仙台市太白区秋保町境野中原			仙台	秋保・作並	塩化物泉	\N	\N	\N	\N
462	394	秋保温泉	あきうおんせん	宮城県仙台市太白区秋保町湯元			仙台	秋保・作並	単純温泉	\N	\N	50040	\N
463	395	かんかね温泉	かんかねおんせん	宮城県仙台市太白区秋保町境野			仙台	秋保・作並	硫酸塩泉	\N	\N	\N	\N
464	396	金山温泉	かなやまおんせん	宮城県柴田郡川崎町小野金山			白石・蔵王	白石・蔵王・遠刈田	硫酸塩泉	\N	\N	\N	\N
465	397	湯田河温泉	ゆたがわおんせん	宮城県柴田郡川崎町小野小屋場山			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
466	398	釜房温泉	かまふさおんせん	宮城県柴田郡川崎町大字支倉			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
467	399	茂庭温泉	もにわおんせん	宮城県仙台市太白区茂庭人来田西			仙台	仙台	塩化物泉	\N	\N	\N	\N
468	400	熊野堂温泉	くまのどうおんせん	宮城県名取市高館熊野堂			仙台	名取・岩沼	塩化物泉	\N	\N	\N	\N
469	401	谷山温泉	たにやまおんせん	宮城県柴田郡村田町足立川原			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
470	402	遠刈田温泉	とおがったおんせん	宮城県刈田郡蔵王町遠刈田温泉			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	50042	\N
471	403	青根温泉	あおねおんせん	宮城県柴田郡川崎町青根温泉			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	50573	\N
472	404	峩々温泉	ががおんせん	宮城県柴田郡川崎町前川峩々			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	\N	\N
473	405	鎌先温泉	かまさきおんせん	宮城県白石市福岡蔵本字鎌先			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	50571	\N
474	406	白石温泉	しろいしおんせん	宮城県白石市福岡蔵本薬師堂			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
475	407	小原温泉	おばらおんせん	宮城県白石市小原湯元			白石・蔵王	白石・蔵王・遠刈田	硫酸塩泉	\N	\N	50572	\N
476	408	神次郎温泉	じんじろうおんせん	宮城県角田市神次郎上中田			白石・蔵王	角田	塩化物泉	\N	\N	\N	\N
477	409	野蒜（奥松島）温泉	のびる（おくまつしま）おんせん	宮城県桃生郡鳴瀬町野蒜字南赤崎			松島・塩竈	松島・塩竈	硫酸塩泉	\N	\N	50574	\N
478	410	鬼首高原	おにこうべこうげん	宮城県玉造郡鳴子町鬼首			鳴子・大崎	鳴子・大崎	硫酸塩泉	\N	\N	50041	\N
479	411	釜房湖温泉郷	かまふさこおんせんきょう	宮城県柴田郡川崎町小野			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	\N	\N
480	412	川崎火の塚山温泉	かわさきひのつかやまおんせん	宮城県柴田郡川崎町大字前川字火の塚山			白石・蔵王	白石・蔵王・遠刈田	硫酸塩泉	\N	\N	\N	\N
481	413	桃源の湯	とうげんのゆ	宮城県名取市増田			仙台	名取・岩沼	塩化物泉	\N	\N	\N	\N
482	2590	仙台七郷温泉	せんだいしちごうおんせん	宮城県仙台市若林区蒲町東10			仙台	仙台	塩化物泉	\N	\N	\N	\N
483	2692	南三陸温泉	みなみさんりくおんせん	宮城県本吉郡志津川町黒崎１００蕃の２			石巻・気仙沼	気仙沼・本吉	単純温泉	\N	\N	50489	\N
484	2842	気仙沼温泉	けせんぬまおんせん	宮城県気仙沼市港町4-19			石巻・気仙沼	気仙沼・本吉	硫黄泉	\N	\N	50676	\N
485	2899	松島温泉	まつしまおんせん	宮城県松島町松島			松島・塩竈	松島・塩竈	硫酸塩泉	\N	\N	50731	\N
486	3070	古川温泉	ふるかわおんせん	宮城県大崎市古川駅前大通1-4-18			鳴子・大崎	鳴子・大崎	塩化物泉	\N	\N	50882	\N
487	3152	新湯温泉1号線	しんゆおんせんいちごうせん	宮城県栗原市栗駒沼倉耕英東95-2			栗原・登米	栗原・登米	単純温泉	\N	\N	50932	\N
488	3168	沢乙温泉	さわおとおんせん	宮城県　宮城郡　利府町　菅谷字明神沢1			松島・塩竈	松島・塩竈	単純温泉	\N	\N	50939	\N
489	3213	滝ノ原温泉	たきのはらおんせん	宮城県黒川郡大和町宮床高山１８－１４			松島・塩竈	黒川	塩化物泉	\N	\N	50731	\N
490	286	大滝温泉	おおたきおんせん	秋田県大館市大滝温泉			十和田湖・大館・鹿角	大館	硫酸塩泉	\N	\N	\N	\N
491	287	国民休暇村乳頭の湯	こくみんきゅうかむらにゅうとうのゆ	秋田県仙北市田沢湖駒ケ岳2-1			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
492	288	日景温泉	ひかげおんせん	秋田県大館市長走			十和田湖・大館・鹿角	大館	炭酸水素塩泉	\N	\N	\N	\N
493	289	矢立温泉	やたておんせん	秋田県大館市長走赤湯沢１			十和田湖・大館・鹿角	大館	硫黄泉	\N	\N	\N	\N
494	290	大湯温泉	おおゆおんせん	秋田県鹿角市十和田大湯			十和田湖・大館・鹿角	八幡平・十和田湖	含鉄泉	\N	\N	50044	\N
495	291	ふるさわ温泉	ふるさわおんせん	秋田県大館市下代野新綱			十和田湖・大館・鹿角	大館	硫黄泉	\N	\N	\N	\N
496	292	長瀞温泉	ながとろおんせん	秋田県大館市長瀞			十和田湖・大館・鹿角	大館	塩化物泉	\N	\N	\N	\N
497	293	湯の沢温泉	ゆのさわおんせん	秋田県山本郡藤里町藤琴			白神・男鹿	白神・能代	硫酸塩泉	\N	\N	\N	\N
498	294	切石温泉	きりいしおんせん	秋田県山本郡二ツ井町切石			白神・男鹿	白神・能代	単純温泉	\N	\N	\N	\N
499	295	能代温泉	のしろおんせん	秋田県能代市落合亀谷地			白神・男鹿	白神・能代	塩化物泉	\N	\N	\N	\N
500	296	森岳温泉	もりたけおんせん	秋田県山本郡山本町森岳			白神・男鹿	白神・能代	塩化物泉	\N	\N	\N	\N
501	297	男鹿温泉	おがおんせん	秋田県男鹿市北浦			白神・男鹿	男鹿	単純温泉	\N	\N	50046	\N
502	298	戸賀温泉	とがおんせん	秋田県男鹿市戸賀			白神・男鹿	男鹿	塩化物泉	\N	\N	50521	\N
503	299	金ヶ崎温泉	かねがさきおんせん	秋田県男鹿市戸賀			白神・男鹿	男鹿	塩化物泉	\N	\N	\N	\N
504	300	小倉温泉	おぐらおんせん	秋田県南秋田郡五城目町富津内			白神・男鹿	男鹿	二酸化炭素泉	\N	\N	\N	\N
505	301	滑多羅温泉	なめたらおんせん	秋田県南秋田郡五城目町富津内			白神・男鹿	男鹿	塩化物泉	\N	\N	\N	\N
506	302	秋田温泉	あきたおんせん	秋田県秋田市添川			秋田	秋田	塩化物泉	\N	\N	\N	\N
507	303	湯の沢温泉	ゆのさわおんせん	秋田県北秋田郡森吉町森吉字湯の岱			白神・男鹿	鷹巣・阿仁・森吉	硫黄泉	\N	\N	\N	\N
508	304	大葛温泉	おおくぞおんせん	秋田県北秋田郡比内町大葛			白神・男鹿	鷹巣・阿仁・森吉	炭酸水素塩泉	\N	\N	\N	\N
509	305	湯瀬温泉	ゆぜおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	塩化物泉	\N	\N	50045	\N
510	306	志張温泉　(八幡平)	しばりおんせん	秋田県鹿角市八幡平老沢			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
511	307	銭川温泉　(八幡平)	ぜにかわおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫酸塩泉	\N	\N	\N	\N
512	308	トロコ温泉　(八幡平)	とろこおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	50037	\N
513	309	赤川温泉　(八幡平)	あかがわおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
514	310	澄川温泉　(八幡平)	すみかわおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
515	311	大沼温泉　(八幡平)	おおぬまおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	50037	\N
516	312	蒸ノ湯温泉　(八幡平)	ふけのゆおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
517	313	後生掛温泉　(八幡平)	ごしょがけおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	含鉄泉	\N	\N	\N	\N
518	314	玉川温泉	たまがわおんせん	秋田県仙北郡田沢湖町玉川			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
519	315	新鳩の湯温泉	しんはとのゆおんせん	秋田県仙北郡田沢湖町玉川			田沢湖・角館・大曲	田沢湖・角館	酸性泉	\N	\N	\N	\N
520	316	打当温泉	うつとうおんせん	秋田県北秋田郡阿仁町打当			白神・男鹿	鷹巣・阿仁・森吉	硫黄泉	\N	\N	\N	\N
521	317	鶴の湯温泉	つるのゆおんせん	秋田県仙北市田沢湖田沢字先達沢国有林50			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
522	318	妙乃湯温泉	たえのゆおんせん	秋田県仙北市田沢湖生保内字駒ヶ岳2-1			田沢湖・角館・大曲	田沢湖・角館	含鉄泉	\N	\N	50714	\N
523	319	大釜温泉	おおがまおんせん	秋田県仙北市田沢湖田沢字先達国有林			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
524	320	蟹場温泉	がにばおんせん	秋田県仙北市田沢湖田沢字先達沢国有林			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
525	321	黒湯温泉	くろゆおんせん	秋田県仙北市田沢湖生保内字黒湯沢2-1			田沢湖・角館・大曲	田沢湖・角館	塩化物泉	\N	\N	50714	\N
526	322	孫六温泉	まごろくおんせん	秋田県仙北郡田沢湖町字先達沢国有林			田沢湖・角館・大曲	田沢湖・角館	炭酸水素塩泉	\N	\N	50714	\N
527	323	田沢湖高原温泉郷	たざわここうげんおんせんきょう	秋田県仙北郡田沢湖町生保内			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	50043	\N
528	324	水沢温泉郷	みずさわおんせんきょう	秋田県仙北郡田沢湖町生保内			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	50043	\N
529	325	唐松温泉	からまつおんせん	秋田県仙北郡協和町船岡字東兵衛屋敷			田沢湖・角館・大曲	田沢湖・角館	硫酸塩泉	\N	\N	\N	\N
530	326	西木温泉	にしきおんせん	秋田県仙北郡西木村門屋屋敷田			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	\N	\N
531	327	夏瀬温泉	なつぜおんせん	秋田県仙北郡田沢湖町神代			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	\N	\N
532	328	角館温泉	かくのだておんせん	秋田県仙北郡角館町西長野			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	\N	\N
533	329	強首温泉	こわくびおんせん	秋田県仙北郡西仙北町上野台強首			田沢湖・角館・大曲	田沢湖・角館	鉱泉	\N	\N	\N	\N
534	330	新浪温泉	あらなみおんせん	秋田県河辺郡雄和町新波字新町			秋田	秋田	硫黄泉	\N	\N	\N	\N
535	331	川口温泉	かわぐちおんせん	秋田県仙北郡太田町太田			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
536	332	鹿子温泉	しかごおんせん	秋田県仙北郡太田町川口			田沢湖・角館・大曲	田沢湖・角館	硫酸塩泉	\N	\N	\N	\N
537	333	中里温泉	なかざとおんせん	秋田県仙北郡太田町中里			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	\N	\N
538	334	仙北温泉	せんぼくおんせん	秋田県仙北郡仙北町板見内一ッ森			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	\N	\N
539	335	角間川温泉	かくまがわおんせん	秋田県大曲市角間川町			田沢湖・角館・大曲	大仙・大曲	硫酸塩泉	\N	\N	\N	\N
540	336	湯の神温泉	ゆのかみおんせん	秋田県仙北郡南外村湯神台			田沢湖・角館・大曲	田沢湖・角館	塩化物泉	\N	\N	\N	\N
541	337	岩倉温泉	いわくらおんせん	秋田県仙北郡南外村湯元			田沢湖・角館・大曲	田沢湖・角館	含鉄泉	\N	\N	\N	\N
542	338	滝温泉	たきおんせん	秋田県由利郡大内町滝字湯ノ沢			横手・鳥海	鳥海・本荘・象潟	硫酸塩泉	\N	\N	50575	\N
543	339	かすみ温泉	かすみおんせん	秋田県由利郡大内町葛岡			横手・鳥海	鳥海・本荘・象潟	硫酸塩泉	\N	\N	\N	\N
544	340	三六温泉	みろくおんせん	秋田県本荘市二十六木			横手・鳥海	鳥海・本荘・象潟	単純温泉	\N	\N	\N	\N
545	341	安楽温泉	あんらくおんせん	秋田県本荘市出戸町			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
546	342	金浦温泉	このうらおんせん	秋田県由利郡金浦町前川			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
547	343	羽州温泉	うしゅうおんせん	秋田県由利郡象潟町琴和喜			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
548	344	象潟温泉	きさかたおんせん	秋田県由利郡象潟町才ノ神			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	50575	\N
549	345	湯ノ沢温泉	ゆのさわおんせん	秋田県由利郡鳥海町猿倉湯ノ沢			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
550	346	猿倉温泉	さるくらおんせん	秋田県由利郡鳥海町猿倉			横手・鳥海	鳥海・本荘・象潟	単純温泉	\N	\N	\N	\N
551	347	横手駅前温泉	よこてえきまえおんせん	秋田県横手市駅前町			横手・鳥海	横手・湯沢	含鉄泉	\N	\N	50577	\N
552	348	横手温泉	よこておんせん	秋田県横手市睦成字城付			横手・鳥海	横手・湯沢	含鉄泉	\N	\N	50577	\N
553	349	湯の平温泉	ゆのひらおんせん	秋田県横手市大沢			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	\N	\N
554	350	相野々温泉	あいののおんせん	秋田県平賀郡山内村土淵			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
555	351	三又温泉	みつまたおんせん	秋田県平賀郡山内村三又			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	\N	\N
556	352	戸波鉱泉	となみおんせん	秋田県平賀郡増田町戸波			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
557	353	湯沢温泉	ゆざわおんせん	秋田県湯沢市湯の原			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
558	354	湯の原温泉	ゆのはらおんせん	秋田県湯沢市湯の原			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
559	355	横堀温泉	よこぼりおんせん	秋田県雄勝郡雄勝町横堀			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	50577	\N
560	356	湯ノ沢温泉	ゆのさわおんせん	秋田県雄勝郡雄勝町下院内			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	\N	\N
561	357	木地山高原温泉	きじやまこうげんおんせん	秋田県湯沢市高松字湯尻村下			横手・鳥海	横手・湯沢	硫酸塩泉	\N	\N	\N	\N
562	358	泥湯温泉	どろゆおんせん	秋田県湯沢市高松字泥湯沢			横手・鳥海	横手・湯沢	二酸化炭素泉	\N	\N	\N	\N
563	359	小安峡温泉	おやすきょうおんせん	秋田県雄勝郡皆瀬村畑等字湯元			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
564	360	大湯温泉	おおゆおんせん	秋田県雄勝郡皆瀬村畑等			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
565	361	稲住温泉　(秋の宮)	いなずみおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
566	362	湯ノ岱温泉　(秋の宮)	ゆのたいおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	50577	\N
567	363	鷹ノ湯温泉　(秋の宮)	たかのゆおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
568	364	湯ノ又温泉　(秋の宮)	ゆのまたおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
569	365	温泉ゆぽぽ	おんせんゆぽぽ	秋田県仙北郡田沢湖町神代			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
570	366	休暇村田沢湖高原	きゅうかむらたざわここうげん	秋田県仙北郡田沢湖町駒ヶ岳			田沢湖・角館・大曲	田沢湖・角館	塩化物泉	\N	\N	50043	\N
571	367	千畑温泉	せんはたおんせん	秋田県仙北郡千畑町金沢東根			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
572	368	南郷温泉	なんごうおんせん	秋田県平鹿郡山内村南郷字大払川			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
573	369	大森温泉	おおもりおんせん	秋田県平鹿郡大森町持向			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
574	370	仁賀保温泉	にかほおんせん	秋田県由利郡仁賀保町三森			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	50047	\N
575	2241	ぬく森温泉	ぬくもりおんせん	秋田県仙北郡西仙北町刈和野字山北の沢5-4			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	\N	\N
576	2242	上畑温泉	かみはたおんせん	秋田県平鹿郡増田町狙半内字古家沢口15			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	50577	\N
577	2249	八幡平温泉	はちまんたいおんせん	秋田県鹿角市八幡平字熊沢			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	50037	\N
578	2250	夕陽温泉	ゆうひおんせん	秋田県南秋田郡若美町野石字大場湯沢下			秋田	秋田	硫酸塩泉	\N	\N	\N	\N
579	2407	阿仁前田温泉	あにまえたおんせん	秋田県北秋田郡森吉町小又堂の下21-2			白神・男鹿	鷹巣・阿仁・森吉	炭酸水素塩泉	\N	\N	\N	\N
580	2408	大潟村温泉	おおがたむらおんせん	秋田県南秋田郡大潟村北1-3			白神・男鹿	男鹿	塩化物泉	\N	\N	\N	\N
581	2409	黄桜温泉	きざくらおんせん	秋田県由利郡東由利町老方畑田28			横手・鳥海	鳥海・本荘・象潟	鉱泉	\N	\N	\N	\N
582	2567	天王温泉	てんのうおんせん	秋田県南秋田郡天王町天王字江川上谷地109-2			白神・男鹿	男鹿	ナトリウム塩化物泉	\N	\N	50471	\N
583	2591	みなと温泉	みなとおんせん	秋田県秋田市土崎港中央3-4-42			秋田	秋田	硫酸塩泉	\N	\N	\N	\N
584	2592	いさりび温泉	いさりびおんせん	秋田県山本郡八森町			白神・男鹿	白神・能代	その他	\N	\N	\N	\N
585	2593	男鹿山温泉	おがやまおんせん	秋田県男鹿市北浦字平岱山1			白神・男鹿	男鹿	ナトリウム塩化物泉	\N	\N	\N	\N
586	2594	山の手温泉	やまのておんせん	秋田県大曲市大曲西根字仁応治			田沢湖・角館・大曲	大仙・大曲	硫酸塩泉	\N	\N	\N	\N
587	2714	ホールサムインよこて	ほーるさむいんよこて	秋田県横手市婦気大堤（秋田ふるさと村）			横手・鳥海	横手・湯沢	その他	\N	\N	\N	\N
588	2799	秋の宮温泉郷	あきのみやおんせんきょう	秋田県湯沢市秋の宮字殿上1-36			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
589	3108	切留平温泉(八幡平)	きりとめたいおんせん(はちまんたい)	秋田県鹿角市八幡平字切留平２０－１８			十和田湖・大館・鹿角	八幡平・十和田湖	ナトリウム塩化物泉	\N	\N	50037	\N
590	3141	山内峡温泉	さんないきょうおんせん	秋田県秋田市河辺三内字丸舞１－１			秋田	秋田	硫酸塩泉	\N	\N	50926	\N
591	3177	雪沢温泉	ゆきさわおんせん	秋田県大館市雪沢字小雪沢101			十和田湖・大館・鹿角	大館	ナトリウム塩化物泉	\N	\N	50044	\N
592	3246	伊勢堂岱温泉	いせたいどうおんせん	秋田県北秋田市脇神字平崎川戸沼86-2			白神・男鹿	鷹巣・阿仁・森吉	ナトリウム塩化物泉	\N	\N	50969	\N
593	414	あつみ温泉	あつみおんせん	山形県西田川郡温海町湯温海			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	50052	\N
594	415	湯ノ田温泉	ゆのたおんせん	山形県飽海郡遊佐町大字吹浦字湯ノ田			酒田・鶴岡	酒田・遊佐	硫黄泉	\N	\N	\N	\N
595	416	鳥海温泉	ちょうかいおんせん	山形県飽海郡遊佐町吹浦西浜			酒田・鶴岡	酒田・遊佐	塩化物泉	\N	\N	\N	\N
596	417	辰ヶ湯温泉	たつがゆおんせん	山形県飽海郡松山町土渕湯ノ沢			酒田・鶴岡	酒田・遊佐	塩化物泉	\N	\N	\N	\N
597	419	湯野浜温泉	ゆのはまおんせん	山形県鶴岡市湯野浜			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫黄泉	\N	\N	50053	\N
598	420	火打崎温泉	ひうちざきおんせん	山形県鶴岡市菱津字火打崎			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
599	421	由良温泉	ゆらおんせん	山形県鶴岡市由良			酒田・鶴岡	鶴岡・湯野浜・あつみ	含鉄泉	\N	\N	\N	\N
600	422	波渡崎温泉	はとざきおんせん	山形県鶴岡市堅苔沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫酸塩泉	\N	\N	50583	\N
601	423	湯田川温泉	ゆたがわおんせん	山形県鶴岡市湯田川			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	50582	\N
602	424	新山温泉	にいやまおんせん	山形県鶴岡市高坂字金沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫酸塩泉	\N	\N	\N	\N
603	425	湯の沢温泉	ゆのさわおんせん	山形県東田川郡藤島町添川湯ノ沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫酸塩泉	\N	\N	\N	\N
604	426	羽根沢温泉	はねさわおんせん	山形県最上郡鮭川村中渡			尾花沢・新庄・村山	新庄・最上・肘折	塩化物泉	\N	\N	50846	\N
605	427	草薙温泉	くさなぎおんせん	山形県最上郡戸沢村古口草薙			尾花沢・新庄・村山	新庄・最上・肘折	炭酸水素塩泉	\N	\N	50581	\N
606	428	新庄温泉	しんじょうおんせん	山形県新庄市本合海			尾花沢・新庄・村山	新庄・最上・肘折	硫黄泉	\N	\N	\N	\N
607	429	筍沢温泉	たけのこざわおんせん	山形県東田川郡藤島町添川			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
608	430	川代温泉	かわだいおんせん	山形県東田川郡羽黒町川代中川代			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫黄泉	\N	\N	\N	\N
609	431	今神温泉	いまがみおんせん	山形県最上郡戸沢村角川			尾花沢・新庄・村山	新庄・最上・肘折	硫黄泉	\N	\N	\N	\N
610	432	肘折温泉郷	ひじおりおんせんきょう	山形県最上郡大蔵村南山			尾花沢・新庄・村山	新庄・最上・肘折	炭酸水素塩泉	\N	\N	50845	\N
611	433	月の沢温泉	つきのさわおんせん	山形県東田川郡立川町立谷沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
612	434	湯殿山温泉	ゆどのさんおんせん	山形県東田川郡朝日村田麦俣			酒田・鶴岡	鶴岡・湯野浜・あつみ	酸性泉	\N	\N	\N	\N
613	435	大堀温泉	おおほりおんせん	山形県最上郡最上町大堀			尾花沢・新庄・村山	新庄・最上・肘折	塩化物泉	\N	\N	\N	\N
614	436	瀬見温泉	せみおんせん	山形県最上郡最上町瀬見			尾花沢・新庄・村山	新庄・最上・肘折	単純温泉	\N	\N	50587	\N
615	437	赤倉温泉	あかくらおんせん	山形県最上郡最上町赤倉			尾花沢・新庄・村山	新庄・最上・肘折	塩化物泉	\N	\N	50585	\N
616	438	おもだか温泉	おもだかおんせん	山形県北村山郡大石田町今宿			尾花沢・新庄・村山	尾花沢・銀山	硫酸塩泉	\N	\N	\N	\N
617	439	銀山温泉	ぎんざんおんせん	山形県尾花沢市大字銀山新畑			尾花沢・新庄・村山	尾花沢・銀山	単純温泉	\N	\N	50586	\N
618	440	鶴子温泉	つるこおんせん	山形県尾花沢市鶴子			尾花沢・新庄・村山	尾花沢・銀山	硫黄泉	\N	\N	\N	\N
619	441	湯舟沢温泉	ゆぶねざわおんせん	山形県村山市土生田			尾花沢・新庄・村山	東根・村山	単純温泉	\N	\N	\N	\N
620	442	ゆざ温泉	ゆざおんせん	山形県村山市本飯田			尾花沢・新庄・村山	東根・村山	硫黄泉	\N	\N	\N	\N
621	443	冨本温泉	ふもとおんせん	山形県村山市湯野沢			尾花沢・新庄・村山	東根・村山	単純温泉	\N	\N	\N	\N
622	444	碁点温泉	ごてんおんせん	山形県村山市碁点			尾花沢・新庄・村山	東根・村山	単純温泉	\N	\N	\N	\N
623	445	東根温泉	ひがしねおんせん	山形県東根市温泉町			尾花沢・新庄・村山	東根・村山	塩化物泉	\N	\N	50584	\N
624	446	左沢温泉	あてらざわおんせん	山形県西村山郡大江町左沢			寒河江・月山	月山・朝日	硫黄泉	\N	\N	\N	\N
625	447	高嶋温泉	たかしまおんせん	山形県寒河江市島東			寒河江・月山	寒河江	硫黄泉	\N	\N	\N	\N
626	448	寒河江温泉	さがえおんせん	山形県寒河江市本町			寒河江・月山	寒河江	含鉄泉	\N	\N	50551	\N
627	449	天童温泉	てんどうおんせん	山形県天童市鎌田			山形・蔵王・天童・上山	天童	塩化物泉	\N	\N	50462	\N
628	450	古寺鉱泉	こてらこうせん	山形県西村山郡大江町貫見字古寺			寒河江・月山	月山・朝日	硫酸塩泉	\N	\N	\N	\N
629	451	朝日鉱泉	あさひこうせん	山形県西村山郡朝日町立木			寒河江・月山	月山・朝日	塩化物泉	\N	\N	\N	\N
630	452	白鷹温泉	しらたかおんせん	山形県西置賜郡白鷹町下山			米沢・置賜	長井・置賜	含鉄泉	\N	\N	\N	\N
631	453	大野目温泉	だいのめおんせん	山形県山形市平久保			山形・蔵王・天童・上山	山形	硫黄泉	\N	\N	\N	\N
632	454	中桜田温泉	なかさくらだおんせん	山形県山形市蔵王飯田			山形・蔵王・天童・上山	蔵王	硫酸塩泉	\N	\N	\N	\N
633	455	飯田温泉	いいだおんせん	山形県山形市飯田			山形・蔵王・天童・上山	山形	炭酸水素塩泉	\N	\N	\N	\N
634	456	山形温泉	やまがたおんせん	山形県山形市蔵王成沢			山形・蔵王・天童・上山	蔵王	硫酸塩泉	\N	\N	\N	\N
635	457	黒沢温泉	くろさわおんせん	山形県山形市黒沢			山形・蔵王・天童・上山	山形	硫酸塩泉	\N	\N	\N	\N
636	458	竜王温泉	りゅうおうおんせん	山形県上山市金瓶			山形・蔵王・天童・上山	上山	硫酸塩泉	\N	\N	\N	\N
637	459	上山温泉	かみのやまおんせん	山形県上山市新湯・湯町			山形・蔵王・天童・上山	上山	単純温泉	\N	\N	50049	\N
638	460	高松温泉(上山)	たかまつおんせん（かみのやま）	山形県上山市高松			山形・蔵王・天童・上山	上山	塩化物泉	\N	\N	\N	\N
639	461	河崎温泉（上山）	かわさきおんせん（かみのやま）	山形県上山市河崎			山形・蔵王・天童・上山	上山	塩化物泉	\N	\N	50049	\N
640	462	葉山温泉（上山）	はやまおんせん（かみのやま）	山形県上山市葉山			山形・蔵王・天童・上山	上山	塩化物泉	\N	\N	50049	\N
641	463	蔵王温泉	ざおうおんせん	山形県山形市蔵王温泉			山形・蔵王・天童・上山	蔵王	塩化物泉	\N	\N	50048	\N
642	464	赤湯温泉	あかゆおんせん	山形県南陽市赤湯			米沢・置賜	南陽・赤湯・高畠	硫酸塩泉	\N	\N	50051	\N
643	465	小国温泉	おぐにおんせん	山形県西置賜郡小国町岩井沢麻枯沢			米沢・置賜	長井・置賜	硫黄泉	\N	\N	\N	\N
644	466	泡の湯温泉	あわのゆおんせん	山形県西置賜郡小国町小玉川大谷地			米沢・置賜	長井・置賜	酸性泉	\N	\N	\N	\N
645	467	飯豊温泉	いいでおんせん	山形県西置賜郡小国町小玉川			米沢・置賜	長井・置賜	硫黄泉	\N	\N	\N	\N
646	468	小野川温泉	おのがわおんせん	山形県米沢市小野川町			米沢・置賜	米沢	硫黄泉	\N	\N	50461	\N
647	469	湯の沢温泉	ゆのさわおんせん	山形県米沢市関根			米沢・置賜	米沢	含鉄泉	\N	\N	50855	\N
648	470	笠松温泉	かさまつおんせん	山形県米沢市大沢			米沢・置賜	米沢	放射能泉	\N	\N	\N	\N
649	471	五色温泉	ごしきおんせん	山形県米沢市板谷五色温泉			米沢・置賜	米沢	硫黄泉	\N	\N	50857	\N
650	472	滑川温泉	なめがわおんせん	山形県米沢市大沢滑川			米沢・置賜	米沢	単純温泉	\N	\N	\N	\N
651	473	大平温泉	おおだいらおんせん	山形県米沢市李山			米沢・置賜	米沢	単純温泉	\N	\N	\N	\N
652	474	白布温泉	しらぶおんせん	山形県米沢市関			米沢・置賜	米沢	単純温泉	\N	\N	50050	\N
653	475	新高湯温泉	しんたかゆおんせん	山形県米沢市関			米沢・置賜	米沢	硫黄泉	\N	\N	50858	\N
654	476	姥湯温泉	うばゆおんせん	山形県米沢市峠姥湯			米沢・置賜	米沢	硫黄泉	\N	\N	\N	\N
655	477	ひまわり温泉ゆ・ら・ら	ひまわりおんせんゆらら	山形県東村山郡中山町いずみ			寒河江・月山	寒河江	硫黄泉	\N	\N	\N	\N
656	478	松山温泉観音湯	まつやまおんせんかんのんゆ	山形県飽海郡松山町大字成興字須郷			酒田・鶴岡	酒田・遊佐	硫黄泉	\N	\N	\N	\N
657	479	飯森山温泉	いいもりやまおんせん	山形県酒田市大字宮野浦字飯森山西			酒田・鶴岡	酒田・遊佐	含鉄泉	\N	\N	\N	\N
658	480	なの花温泉	なのはなおんせん	山形県西田川郡温海町湯温海			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
659	2354	川西町浴浴センター　まどか	かわにしまちよくよくせんたー　まどか	山形県東置賜郡川西町大字上小松509536			米沢・置賜	長井・置賜	単純温泉	\N	\N	\N	\N
660	2355	ぽっぽの湯	ぽっぽのゆ	山形県東田川郡藤島町長沼字宮前266-1			酒田・鶴岡	鶴岡・湯野浜・あつみ	単純温泉	\N	\N	\N	\N
661	2356	あったまりランド　深堀	あったまりらんど　ふかほり	山形県北村山郡大石田町大字豊田884-1			尾花沢・新庄・村山	尾花沢・銀山	硫黄泉	\N	\N	\N	\N
662	2357	べに花温泉　ひなの湯	べにばなおんせん　ひなのゆ	山形県西村山郡河北町谷地下野269			尾花沢・新庄・村山	東根・村山	ナトリウム塩化物泉	\N	\N	\N	\N
663	2358	舟唄温泉	ふなうたおんせん	山形県西村山郡大江町大字藤田831-40大江町「テルメ柏陵」健康温泉館			寒河江・月山	月山・朝日	その他	\N	\N	\N	\N
664	2359	りんご温泉	りんごおんせん	山形県西村山郡朝日町大字宮宿1353-1			寒河江・月山	月山・朝日	単純温泉	\N	\N	\N	\N
665	2360	舟形若あゆ温泉	ふながたわかあゆおんせん	山形県最上郡舟形町長沢8067			尾花沢・新庄・村山	新庄・最上・肘折	ナトリウム塩化物泉	\N	\N	\N	\N
666	2361	なの花温泉　田田	なのはなおんせん　でんでん	山形県東田川郡三川町横山堤172-1			酒田・鶴岡	鶴岡・湯野浜・あつみ	弱アルカリ性低張性泉	\N	\N	\N	\N
667	2396	八森温泉　ゆりんこ	はちもりおんせん　ゆりんこ	山形県飽海郡八幡町麓緑沢29-8			酒田・鶴岡	酒田・遊佐	ナトリウム塩化物泉	\N	\N	\N	\N
668	2397	庄内いこいの村温泉	しょうないいこいのむらおんせん	山形県鶴岡市千安京田竜花山1-1			酒田・鶴岡	鶴岡・湯野浜・あつみ	炭酸水素塩泉	\N	\N	\N	\N
669	2410	山形うわの温泉	やまがたうわのおんせん	山形県山形市蔵王上野313-1			山形・蔵王・天童・上山	蔵王	ナトリウム塩化物泉	\N	\N	\N	\N
670	2411	天童最上川温泉	てんどうもがみがわおんせん	山形県天童市藤内新田1620-1			山形・蔵王・天童・上山	天童	ナトリウム塩化物泉	\N	\N	50462	\N
671	2568	月山志津温泉	がっさんしづおんせん	山形県西村山郡西川町大字志津			寒河江・月山	月山・朝日	硫黄泉	\N	\N	50588	\N
672	2595	黄金温泉	こがねおんせん	山形県最上郡大蔵村南山字字金山			尾花沢・新庄・村山	新庄・最上・肘折	その他	\N	\N	\N	\N
673	2596	野口温泉	のぐちおんせん	山形県最上郡戸沢村大字松坂			尾花沢・新庄・村山	新庄・最上・肘折	弱アルカリ性低張性泉	\N	\N	\N	\N
674	2597	白川ダム温泉	しらかわだむおんせん	山形県西置賜郡飯豊町大字数馬宇木落475-12			米沢・置賜	長井・置賜	ナトリウム塩化物泉	\N	\N	\N	\N
675	2598	長井あやめ温泉	ながいあやめおんせん	山形県長井市寺泉4246-13			米沢・置賜	長井・置賜	炭酸水素塩泉	\N	\N	\N	\N
676	2707	新寒河江源泉	しんさがえげんせん	山形県寒河江市大字島字島西1-2			寒河江・月山	寒河江	ナトリウム塩化物泉	\N	\N	\N	\N
677	2709	神室温泉	かむろおんせん	山形県最上郡金山町大字有屋字柳原			尾花沢・新庄・村山	新庄・最上・肘折	ナトリウム塩化物泉	\N	\N	\N	\N
678	2710	まほろば温泉	まほろばおんせん	山形県東置賜郡高畠町山崎			米沢・置賜	南陽・赤湯・高畠	弱アルカリ性低張性泉	\N	\N	\N	\N
679	3123	眺山源泉	ちょうざんげんせん	山形県西置賜郡飯豊町大字添川字東野一 3020-5			米沢・置賜	長井・置賜	鉱泉	\N	\N	50908	\N
680	3146	卯の花温泉	うのはなおんせん	山形県長井市成田2170-2			米沢・置賜	長井・置賜	ナトリウム塩化物泉	\N	\N	50930	\N
681	3178	日山温泉	ひやまおんせん	山形県最上郡最上町大字富沢834-5			尾花沢・新庄・村山	新庄・最上・肘折	ナトリウム塩化物泉	\N	\N	50585	\N
682	3191	広河原温泉	ひろがわらおんせん	山形県西置賜郡飯豊町広河原湯ノ沢448-2			米沢・置賜	長井・置賜	弱アルカリ性低張性泉	\N	\N	50908	\N
683	3243	湯の台温泉	ゆのだいおんせん	山形県酒田市草津字湯ノ台６６－１			酒田・鶴岡	酒田・遊佐	硫酸塩泉	\N	\N	50966	\N
684	481	高湯温泉	たかゆおんせん	福島県福島市町庭坂			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	50699	\N
685	482	鹿狼温泉	かろうおんせん	福島県相馬郡新地町			相馬	相馬	含鉄泉	\N	\N	\N	\N
686	483	蒲庭温泉	かばにわおんせん	福島県相馬市蒲庭字前迫			相馬	相馬	酸性泉	\N	\N	\N	\N
687	484	飯坂温泉	いいざかおんせん	福島県福島市飯坂町			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	50054	\N
688	485	穴原温泉	あなばらおんせん	福島県福島市飯坂町			福島・二本松	福島・飯坂・土湯・高湯	硫酸塩泉	\N	\N	50589	\N
689	486	天王寺温泉	てんのうじおんせん	福島県福島市飯坂町			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	50589	\N
690	487	信夫温泉	しのぶおんせん	福島県福島市桜本本通沢			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	50699	\N
691	488	微温湯温泉	ぬるゆおんせん	福島県福島市桜本温湯			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
692	489	土湯温泉	つちゆおんせん	福島県福島市土湯温泉町字上の町			福島・二本松	福島・飯坂・土湯・高湯	含鉄泉	\N	\N	50055	\N
693	490	不動湯温泉	ふどうゆおんせん	福島県福島市土湯温泉町大笹			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
694	491	奥土湯川上温泉	おくつちゆかわかみおんせん	福島県福島市土湯温泉字川上			福島・二本松	福島・飯坂・土湯・高湯	炭酸水素塩泉	\N	\N	\N	\N
695	492	東海温泉	とうかいおんせん	福島県福島市土湯温泉町川上			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	\N	\N
696	493	幕川温泉	まくがわおんせん	福島県福島市土湯温泉町字鷲倉山			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	\N	\N
697	494	新野地温泉	しんのじおんせん	福島県福島市土湯温泉町野地			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	\N	\N
698	495	赤湯温泉	あかゆおんせん	福島県福島市土湯温泉町鷲倉			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
699	496	野地温泉	のじおんせん	福島県福島市土湯温泉町			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
700	497	鷲倉温泉	わしくらおんせん	福島県福島市土湯温泉町鷲倉			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
701	498	横向温泉	よこむきおんせん	福島県耶麻郡猪苗代町若宮横向山			猪苗代・表磐梯	猪苗代・表磐梯	硫黄泉	\N	\N	\N	\N
702	499	沼尻温泉	ぬまじりおんせん	福島県耶麻郡猪苗代町蚕養沼尻山			猪苗代・表磐梯	猪苗代・表磐梯	含鉄泉	\N	\N	\N	\N
703	500	中ノ沢温泉	なかのさわおんせん	福島県耶麻郡猪苗代町蚕養沼尻山			猪苗代・表磐梯	猪苗代・表磐梯	硫黄泉	\N	\N	\N	\N
704	501	くろがね温泉	くろがねおんせん	福島県二本松市永田国有林			福島・二本松	二本松・岳・大玉	単純温泉	\N	\N	\N	\N
705	502	塩沢温泉	しおざわおんせん	福島県二本松市塩沢温泉			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	\N	\N
706	503	奥岳温泉	おくだけおんせん	福島県二本松市奥岳温泉			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	\N	\N
707	504	岳温泉	だけおんせん	福島県二本松市岳温泉			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	50056	\N
708	505	安達太良温泉	あだたらおんせん	福島県安達郡大玉村玉井前ヶ岳			福島・二本松	二本松・岳・大玉	単純温泉	\N	\N	\N	\N
709	506	大玉温泉	おおたまおんせん	福島県安達郡大玉村大山			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	\N	\N
710	507	白沢温泉	しらさわおんせん	福島県安達郡白沢村長屋宮山			福島・二本松	二本松・岳・大玉	酸性泉	\N	\N	\N	\N
711	508	磐梯熱海温泉	ばんだいあたみおんせん	福島県郡山市熱海町			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	50057	\N
712	509	休石温泉	やすみいしおんせん	福島県郡山市逢瀬町多田野字休石			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	\N	\N
713	510	源田温泉	げんだおんせん	福島県郡山市逢瀬町多田野字源田			郡山	郡山・磐梯熱海・須賀川	含鉄泉	\N	\N	\N	\N
714	511	勝木沢温泉	かちきざわおんせん	福島県郡山市富久山町			郡山	郡山・磐梯熱海・須賀川	硫黄泉	\N	\N	\N	\N
715	512	斉藤の湯温泉	さいとうのゆおんせん	福島県田村郡三春町斉藤			郡山	田村・三春	硫黄泉	\N	\N	\N	\N
716	513	馬場の湯温泉	ばばのゆおんせん	福島県田村郡三春町尼ヶ谷			郡山	田村・三春	単純温泉	\N	\N	50058	\N
717	514	玉の湯温泉	たまのゆおんせん	福島県双葉郡大熊町野上			いわき・双葉	双葉	単純温泉	\N	\N	\N	\N
718	515	岩井戸温泉	いわいどおんせん	福島県双葉郡富岡町上郡山			いわき・双葉	双葉	放射能泉	\N	\N	\N	\N
719	516	折木温泉	おりきおんせん	福島県双葉郡広野町折木			いわき・双葉	双葉	放射能泉	\N	\N	\N	\N
720	517	久の浜温泉	ひさのはまおんせん	福島県いわき市大久町字与平作			いわき・双葉	いわき・平	含鉄泉	\N	\N	\N	\N
721	518	湯沢温泉	ゆざわおんせん	福島県田村郡小野町湯沢			郡山	田村・三春	含鉄泉	\N	\N	\N	\N
722	519	小町温泉	こまちおんせん	福島県田村郡小野町谷津作			郡山	田村・三春	含鉄泉	\N	\N	50536	\N
723	520	日影の湯温泉	ひかげのゆおんせん	福島県田村郡小野町小戸神			郡山	田村・三春	含鉄泉	\N	\N	\N	\N
724	521	中津川温泉	なかつがわおんせん	福島県郡山市田村町糠塚字下滝			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	\N	\N
725	522	守山温泉	もりやまおんせん	福島県郡山市田村町守山			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	\N	\N
726	523	芹沢温泉	せりざわおんせん	福島県須賀川市芹沢			郡山	郡山・磐梯熱海・須賀川	含鉄泉	\N	\N	\N	\N
727	524	マルナカ温泉	まるなかおんせん	福島県岩瀬郡鏡石町鏡田			白河	白河・羽鳥湖	単純温泉	\N	\N	\N	\N
728	525	新菊島温泉	しんきくしまおんせん	福島県岩瀬郡鏡石町久来石			白河	白河・羽鳥湖	単純温泉	\N	\N	\N	\N
729	526	金勝寺温泉	きんしょうじおんせん	福島県白河市金勝寺			白河	白河・羽鳥湖	単純温泉	\N	\N	\N	\N
730	527	母畑温泉	ぼばたおんせん	福島県石川郡石川町母畑			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
731	528	片倉温泉	かたくらおんせん	福島県石川郡石川町字立ヶ岡			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
732	529	猫啼温泉	ねこなきおんせん	福島県石川郡石川町猫啼			白河	棚倉・東白川	放射能泉	\N	\N	\N	\N
733	530	戸倉温泉	とくらおんせん	福島県東白川郡鮫川村西山			白河	棚倉・東白川	放射能泉	\N	\N	\N	\N
734	531	入道の湯	にゅうどうのゆ	福島県石川郡古殿町松川字滝の平			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
735	532	棚倉温泉	たなくらおんせん	福島県東白川郡棚倉町大字関口字一本松			白河	棚倉・東白川	放射能泉	\N	\N	50063	\N
736	533	向山温泉	むこうやまおんせん	福島県東白川郡棚倉町関口			白河	棚倉・東白川	放射能泉	\N	\N	\N	\N
737	534	玉山温泉	たまやまこうせん	福島県いわき市四倉町			いわき・双葉	いわき・平	含鉄泉	\N	\N	\N	\N
738	535	白岩鉱泉	しろいわこうせん	福島県いわき市四倉町			いわき・双葉	いわき・平	放射能泉	\N	\N	\N	\N
739	536	四倉舞子温泉	よつくらまいこおんせん	福島県いわき市四倉町上仁井田			いわき・双葉	いわき・平	単純温泉	\N	\N	\N	\N
740	537	吉野谷鉱泉	よしのやこうせん	福島県いわき市平吉野谷			いわき・双葉	いわき・平	単純温泉	\N	\N	\N	\N
741	538	神白温泉	かじろおんせん	福島県いわき市小名浜上神白追分30			いわき・双葉	いわき・小名浜	炭酸水素塩泉	\N	\N	50059	\N
742	539	地切温泉	じきりおんせん	福島県いわき市永崎			いわき・双葉	いわき・小名浜	酸性泉	\N	\N	\N	\N
743	540	高野温泉	こうやおんせん	福島県いわき市内郷高野町			いわき・双葉	いわき・平	塩化物泉	\N	\N	\N	\N
744	541	いわき湯本温泉	いわきゆもとおんせん	福島県いわき市常磐湯本町			いわき・双葉	いわき・湯本	二酸化炭素泉	\N	\N	50059	\N
745	542	白鳥温泉	しらとりおんせん	福島県いわき市常磐白鳥町			いわき・双葉	いわき・湯本	ナトリウム塩化物泉	\N	\N	\N	\N
746	543	谷川の湯温泉	やかわのゆおんせん	福島県東白川郡塙町大字山形字吉ノ目			白河	棚倉・東白川	炭酸水素塩泉	\N	\N	\N	\N
747	544	志保の湯温泉	しほのゆおんせん	福島県東白川郡塙町木野反			白河	棚倉・東白川	硫酸塩泉	\N	\N	\N	\N
748	545	湯岐温泉	ゆじまたおんせん	福島県東白川郡塙町湯岐			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
749	546	新湯岐温泉	しんゆじまたおんせん	福島県東白川郡塙町湯岐			白河	棚倉・東白川	炭酸水素塩泉	\N	\N	\N	\N
750	547	滝ノ沢温泉	たきのさわおんせん	福島県東白川郡矢祭町			白河	棚倉・東白川	硫黄泉	\N	\N	\N	\N
751	548	熱塩温泉	あつしおおんせん	福島県耶麻郡熱塩加納村熱塩			会津	喜多方・熱塩・山都	塩化物泉	\N	\N	50066	\N
752	549	喜多方温泉	きたかたおんせん	福島県喜多方市岩月町宮津字惣社原			会津	喜多方・熱塩・山都	単純温泉	\N	\N	50068	\N
753	550	相川温泉	あいかわおんせん	福島県耶麻郡山都町相川			会津	喜多方・熱塩・山都	単純温泉	\N	\N	\N	\N
754	551	剣ヶ峰温泉	つるがみねおんせん	福島県耶麻郡北塩原村大字桧原字剣ヶ峰			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	単純温泉	\N	\N	50077	\N
755	552	小野川湖温泉	おのがわおんせん	福島県耶麻郡北塩原村檜原小野川			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	単純温泉	\N	\N	\N	\N
756	553	五色温泉	ごしきおんせん	福島県耶麻郡北塩原村大字檜原字剣ヶ峯			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	単純温泉	\N	\N	50078	\N
757	554	裏磐梯湯平山源泉	うらばんだいゆだいらやまおんせん	福島県耶麻郡北塩原村大字檜原字湯平山			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	塩化物泉	\N	\N	\N	\N
758	555	大塩裏磐梯温泉	おおしおうらばんだいおんせん	福島県耶麻郡北塩原村大塩			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	硫酸塩泉	\N	\N	\N	\N
759	556	磐梯温泉	ばんだいおんせん	福島県耶麻郡磐梯町磐梯			猪苗代・表磐梯	猪苗代・表磐梯	単純温泉	\N	\N	\N	\N
760	557	押立温泉	おつたておんせん	福島県耶麻郡猪苗代町磐根佐賀地			猪苗代・表磐梯	猪苗代・表磐梯	ナトリウム塩化物泉	\N	\N	\N	\N
761	558	表磐梯温泉	おもてばんだいおんせん	福島県耶麻郡猪苗代町綿場			猪苗代・表磐梯	猪苗代・表磐梯	炭酸水素塩泉	\N	\N	50071	\N
762	559	翁島温泉	おきなじまおんせん	福島県耶麻郡猪苗代町磐根			猪苗代・表磐梯	猪苗代・表磐梯	単純温泉	\N	\N	\N	\N
763	560	猪苗代温泉	いなわしろおんせん	福島県耶麻郡猪苗代町川桁天王坂			猪苗代・表磐梯	猪苗代・表磐梯	硫酸塩泉	\N	\N	50072	\N
1215	2722	蛇骨湯	じゃこつゆ	東京都台東区浅草1-11-11			上野・浅草・両国	浅草	ナトリウム塩化物泉	\N	\N	\N	\N
764	561	志田浜温泉	しだはまおんせん	福島県耶麻郡猪苗代町			猪苗代・表磐梯	猪苗代・表磐梯	塩化物泉	\N	\N	50072	\N
765	562	東山温泉	ひがしやまおんせん	福島県会津若松市東山町			会津	会津若松・東山・芦ノ牧	硫黄泉	\N	\N	50064	\N
766	563	津尻温泉	つじりおんせん	福島県河沼郡会津坂下町津尻			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
767	564	坂下温泉	ばんげおんせん	福島県河沼郡会津坂下町宇内			会津	柳津・西会津	単純温泉	\N	\N	\N	\N
768	565	柳津温泉	やないづおんせん	福島県河沼郡柳津町柳津			会津	柳津・西会津	含鉄泉	\N	\N	50069	\N
769	566	西山温泉	にしやまおんせん	福島県河沼郡柳津町砂子原			会津	柳津・西会津	硫黄泉	\N	\N	\N	\N
770	567	宮下温泉	みやしたおんせん	福島県大沼郡三島町宮下			会津	柳津・西会津	単純温泉	\N	\N	\N	\N
771	568	早戸温泉	はやとおんせん	福島県大沼郡三島町早戸			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
772	569	湯倉温泉	ゆくらおんせん	福島県大沼郡金山町本名			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
773	570	橋立温泉	はしたておんせん	福島県大沼郡金山町越川			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
774	571	大塩温泉	おおしおおんせん	福島県大沼郡金山町大塩			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
775	572	八町温泉	はちまちおんせん	福島県大沼郡金山町八町			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
776	573	玉梨温泉	たまなしおんせん	福島県大沼郡金山町玉梨			会津	柳津・西会津	硫黄泉	\N	\N	\N	\N
777	574	昭和温泉	しょうわおんせん	福島県大沼郡昭和村野尻			会津	柳津・西会津	炭酸水素塩泉	\N	\N	\N	\N
778	575	さかい温泉	さかいおんせん	福島県南会津郡南郷村界			南会津	会津高原・湯野上・南会津	塩化物泉	\N	\N	\N	\N
779	576	芦ノ牧温泉	あしのまきおんせん	福島県会津若松市大戸町			会津	会津若松・東山・芦ノ牧	塩化物泉	\N	\N	50065	\N
780	577	湯野上温泉	ゆのかみおんせん	福島県南会津郡下郷町湯野上			南会津	会津高原・湯野上・南会津	塩化物泉	\N	\N	50070	\N
781	578	岩瀬湯本温泉	いわせゆもとおんせん	福島県岩瀬郡天栄村湯本			白河	白河・羽鳥湖	塩化物泉	\N	\N	\N	\N
782	579	天栄温泉	てんえいおんせん	福島県岩瀬郡天栄村牧之内			白河	白河・羽鳥湖	塩化物泉	\N	\N	\N	\N
783	580	二岐温泉	ふたまたおんせん	福島県岩瀬郡天栄村湯本二岐			白河	白河・羽鳥湖	塩化物泉	\N	\N	\N	\N
784	581	新甲子温泉	しんかしおんせん	福島県西白河郡西郷村真船			白河	白河・羽鳥湖	硫酸塩泉	\N	\N	50061	\N
785	582	甲子温泉	かしおんせん	福島県西白河郡西郷村真船			白河	白河・羽鳥湖	硫酸塩泉	\N	\N	\N	\N
786	583	たかつえ温泉　白樺の湯	たかつえおんせん しらかばのゆ	福島県南会津郡舘岩村高杖原４９４－１			南会津	会津高原・湯野上・南会津	アルカリ単純泉	\N	\N	50070	\N
787	584	滝の原温泉	たきのはらおんせん	福島県南会津郡田島町滝原			南会津	会津高原・湯野上・南会津	単純温泉	\N	\N	\N	\N
788	585	湯ノ花温泉	ゆのはなおんせん	福島県南会津郡舘岩村湯ノ花			南会津	会津高原・湯野上・南会津	単純温泉	\N	\N	\N	\N
789	586	木賊温泉	とくさおんせん	福島県南会津郡舘岩村木賊			南会津	会津高原・湯野上・南会津	単純温泉	\N	\N	\N	\N
790	587	尾瀬檜枝岐温泉	おぜひのえまたおんせん	福島県南会津郡檜枝岐村			南会津	桧枝岐・尾瀬・奥会津	単純温泉	\N	\N	\N	\N
791	588	渋沢温泉	しぶさわおんせん	福島県南会津郡檜枝岐村燧ヶ岳			南会津	桧枝岐・尾瀬・奥会津	炭酸水素塩泉	\N	\N	\N	\N
792	590	須賀川温泉	すかがわおんせん	福島県須賀川市岩渕字笠木			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	\N	\N
793	591	相馬・松川浦温泉	そうま・まつかわうらおんせん	福島県相馬市和田中迫			相馬	相馬	単純温泉	\N	\N	\N	\N
794	592	スパリゾートハワイアンズ	すぱりぞーとはわいあんず	福島県いわき市常磐藤原町蕨平			いわき・双葉	いわき・湯本	塩化物泉	\N	\N	50060	\N
795	593	新舞子温泉	しんまいこおんせん	福島県いわき市平下高久字南谷地			いわき・双葉	いわき・平	塩化物泉	\N	\N	\N	\N
796	594	磐梯猪苗代はやま温泉	ばんだいいなわしろはやまおんせん	福島県耶麻郡猪苗代町葉山			猪苗代・表磐梯	猪苗代・表磐梯	塩化物泉	\N	\N	50073	\N
797	595	磐梯清水平温泉	ばんだいしみずだいらおんせん	福島県耶麻郡磐梯町更科			猪苗代・表磐梯	猪苗代・表磐梯	塩化物泉	\N	\N	50074	\N
798	596	片貝温泉	かたがいおんせん	福島県南会津郡南郷村大字界字猛の入			南会津	会津高原・湯野上・南会津	塩化物泉	\N	\N	\N	\N
799	2171	小豆温泉	しょうどおんせん	福島県南会津郡伊南村大字大桃字平沢山			南会津	桧枝岐・尾瀬・奥会津	単純温泉	\N	\N	\N	\N
800	2199	日中温泉	にっちゅうおんせん	福島県耶麻郡熱塩加納村大字熱塩字大畑丙1341-1			会津	喜多方・熱塩・山都	ナトリウム塩化物泉	\N	\N	50067	\N
801	2200	黄連の湯　源泉	おうれんのゆ　げんせん	福島県耶麻郡北塩原村大桧原字南黄連沢山1157-51			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	炭酸水素塩泉	\N	\N	50079	\N
802	2201	羽鳥湖温泉	はとりこおんせん	福島県岩瀬郡天栄村大字羽鳥字高戸屋33番地			白河	白河・羽鳥湖	単純温泉	\N	\N	50062	\N
803	2202	天鏡台温泉	てんきょうだいおんせん	福島県耶麻郡猪苗代町大字長田字中丸3456-30			猪苗代・表磐梯	猪苗代・表磐梯	アルカリ単純泉	\N	\N	50075	\N
804	2362	高郷温泉	たかさとおんせん	福島県耶麻郡高郷村揚津字袖山甲3054-9			会津	喜多方・熱塩・山都	ナトリウム塩化物泉	\N	\N	\N	\N
805	2363	会津本郷温泉	あいづほんごうおんせん	福島県大沼郡会津本郷町字六日町甲4106-1			会津	会津若松・東山・芦ノ牧	炭酸水素塩泉	\N	\N	\N	\N
806	2364	さゆりの湯	さゆりのゆ	福島県耶麻郡西会津町登世島字下小島187			会津	柳津・西会津	アルカリ単純泉	\N	\N	\N	\N
807	2365	新田川温泉	にいだがわおんせん	福島県原町市深野荒戸沢15			相馬	南相馬・原町	硫酸塩泉	\N	\N	\N	\N
808	2366	桜の湯	さくらのゆ	福島県双葉郡富岡町字夜の森北1-32-1			いわき・双葉	双葉	ナトリウム塩化物泉	\N	\N	\N	\N
809	2367	いわき蟹洗温泉	いわきかにあらいおんせん	福島県いわき市四倉町字6-164-2			いわき・双葉	いわき・平	アルカリ単純泉	\N	\N	\N	\N
810	2368	中山温泉	なかやまおんせん	福島県喜多方市松山町鳥見山三町歩5598-1			会津	喜多方・熱塩・山都	塩化物泉	\N	\N	\N	\N
811	2369	桜峠温泉	さくらとうげおんせん	福島県耶麻郡北塩原村大字大塩字桜峠			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	弱アルカリ性低張性泉	\N	\N	\N	\N
812	2370	新鶴温泉	にいつるおんせん	福島県大沼郡新鶴村大字鶴野辺字上長尾			会津	会津若松・東山・芦ノ牧	単純温泉	\N	\N	\N	\N
813	2398	小名浜オーシャン温泉	おなはまおーしゃんおんせん	福島県いわき市泉町下川字大畑200-2			いわき・双葉	いわき・小名浜	その他	\N	\N	50059	\N
814	2419	小滝温泉	こたきおんせん	福島県福島市土湯温泉町字下隠台8			福島・二本松	福島・飯坂・土湯・高湯	ナトリウム塩化物泉	\N	\N	\N	\N
815	2420	磐梯温泉	ばんだいおんせん	福島県耶麻郡猪苗代町字五輪原7136-17			猪苗代・表磐梯	猪苗代・表磐梯	アルカリ単純泉	\N	\N	\N	\N
816	2421	会津河東温泉	あいづかわひがしおんせん	福島県河沼郡河東町大字八田字蛇崩14			会津	会津若松・東山・芦ノ牧	塩化物泉	\N	\N	50076	\N
817	2498	蔵の湯	くらのゆ	福島県喜多方市松山町鳥見山			会津	喜多方・熱塩・山都	ナトリウム塩化物泉	\N	\N	\N	\N
818	2499	会津高郷温泉	あいづたかさとおんせん	福島県耶麻郡高郷村大字揚津字袖山甲			会津	喜多方・熱塩・山都	単純温泉	\N	\N	\N	\N
819	2543	広瀬源泉	ひろせげんせん	福島県福島市飯坂町茂庭字清水川原21-2			福島・二本松	福島・飯坂・土湯・高湯	ナトリウム塩化物泉	\N	\N	\N	\N
820	2599	湖南温泉	こなんおんせん	福島県郡山市湖南町福良字台畠8588			郡山	郡山・磐梯熱海・須賀川	炭酸水素塩泉	\N	\N	\N	\N
821	2698	裏磐梯温泉・湯平山源泉	うらばんだいおんせん・ゆだいらやまげんせん	福島県耶麻郡北塩原村桧原湖畔			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	塩化物泉	\N	\N	50494	\N
822	2702	磐梯山１号湯	ばんだいさん１ごうゆ	福島県耶麻郡猪苗代町清水前9772			猪苗代・表磐梯	猪苗代（会津）	ナトリウム塩化物泉	\N	\N	50500	\N
823	2705	デコ平温泉	でこだいらおんせん	福島県耶麻郡北塩原村大字桧原字荒沢砂山1032			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	硫酸塩泉	\N	\N	50499	\N
824	2736	磐梯宝温泉	ばんだいたからおんせん	福島県耶麻郡猪苗代町字芹沢４０４０－２１			猪苗代・表磐梯	猪苗代・表磐梯	単純温泉	\N	\N	50506	\N
825	2908	三崎温泉	みさきおんせん	福島県いわき市小名浜下神白字番所　10番地の１			いわき・双葉	いわき・小名浜	その他	\N	\N	50059	\N
826	2945	裏磐梯　大府平温泉	うらばんだい　おおぶだいらおんせん	福島県耶麻郡北塩原村大字檜原字大府平1073-153			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	単純温泉	\N	\N	50773	\N
827	2946	神指温泉	こうざしおんせん	福島県会津若松市神指町北四合字東神指77-1			会津	会津若松・東山・芦ノ牧	アルカリ単純泉	\N	\N	50774	\N
828	3044	なりた温泉	なりたおんせん	福島県郡山市安積町成田字車川原２７			郡山	郡山・磐梯熱海・須賀川	弱アルカリ性低張性泉	\N	\N	50861	\N
829	3135	三穂田温泉	みほたおんせん	福島県郡山市堤下町１２－７			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	50925	\N
830	3198	松房温泉	まつぼうおんせん	福島県西白河郡矢吹町松房272			白河	白河・羽鳥湖	アルカリ単純泉	\N	\N	50063	\N
831	3295	郡山療養温泉あさかの湯	こうりやまりょうようおんせんあさかのゆ	福島県郡山市堤下町１２－７			郡山	郡山・磐梯熱海・須賀川	塩化物泉	\N	\N	50988	\N
832	3315	あぶくま温泉	あぶくまおんせん	福島県西白河郡西郷村大字真船字川谷1‐35			白河	白河・羽鳥湖	ナトリウム塩化物泉	\N	\N	50061	\N
833	668	三斗小屋温泉　(那須)	さんどごやおんせん	栃木県黒磯市三斗小屋			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
834	669	北温泉　(那須)	きたおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
835	670	那須高原温泉　(那須)	なすこうげんおんせん	栃木県那須郡那須町那須高原			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
836	671	弁天温泉　(那須)	べんてんおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	硫黄泉	\N	\N	\N	\N
837	672	那須国民休暇村　(那須)	なすこくみんきゅうかむら	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
838	673	大丸温泉　(那須)	おおまるおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
839	674	八幡温泉　(那須)	やはたおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
840	675	高雄温泉　(那須)	たかおおんせん	栃木県那須郡那須町湯本ツムジ平			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
841	676	那須湯本温泉　(那須)	なすゆもとおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	硫黄泉	\N	\N	50081	\N
842	677	新那須温泉　(那須)	しんなすおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	硫黄泉	\N	\N	50081	\N
843	678	板室温泉	いたむろおんせん	栃木県黒磯市板室			那須・板室	那須・板室	含鉄泉	\N	\N	50558	\N
844	679	柳沢鉱泉	やなぎさわこうせん	栃木県那須郡那須町高久乙			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
845	680	大正村幸乃湯温泉	たいしょうむらさちのゆおんせん	栃木県黒磯市百村			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
846	681	黒磯温泉	くろいそおんせん	栃木県黒磯市黒磯			那須・板室	那須・板室	含鉄泉	\N	\N	\N	\N
847	682	小松原温泉	こまつばらおんせん	栃木県那須郡黒羽町中野内			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
848	683	大網温泉　(塩原温泉)	おおあみおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
849	684	塩釜温泉　(塩原温泉)	しおがまおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50082	\N
850	685	福渡温泉　(塩原温泉)	ふくわたおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	50082	\N
851	686	塩の湯温泉　(塩原温泉)	しおのゆおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
852	687	須巻温泉　(塩原温泉)	すまきおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	\N	\N
853	688	中塩原温泉　(塩原温泉)	なかしおばらおんせん	栃木県那須郡塩原町中塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
854	689	古町温泉　(塩原温泉)	ふるまちおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
855	690	門前温泉　(塩原温泉)	もんぜんおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50082	\N
856	691	畑下温泉　(塩原温泉)	はたおりおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50082	\N
857	692	奥塩原新湯温泉　(塩原温泉)	おくしおばらしんゆおんせん	栃木県那須郡塩原町湯本塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
858	693	元湯温泉　(塩原温泉)	もとゆおんせん	栃木県那須郡塩原町湯本塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
859	694	上塩原温泉　(塩原温泉)	かみしおばらおんせん	栃木県那須郡塩原町上塩原			塩原・矢板・大田原・西那須野	塩原	硫黄泉	\N	\N	50082	\N
860	695	湯西川温泉	ゆにしがわおんせん	栃木県塩谷郡栗山村湯西川			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫黄泉	\N	\N	50088	\N
861	696	女夫淵温泉　(奥鬼怒)	めおとぶちおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	塩化物泉	\N	\N	50879	\N
862	697	加仁湯温泉　(奥鬼怒)	かにゆおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	塩化物泉	\N	\N	50879	\N
863	698	八丁の湯温泉　(奥鬼怒)	はっちょうのゆおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	単純温泉	\N	\N	50879	\N
864	699	手白沢温泉　(奥鬼怒)	てしろさわおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	アルカリ単純泉	\N	\N	50879	\N
865	700	平家平温泉	へいけだいらおんせん	栃木県塩谷郡栗山村平家平			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫黄泉	\N	\N	\N	\N
866	701	川俣温泉	かわまたおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫黄泉	\N	\N	50561	\N
867	702	川俣湖温泉	かわまたこおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	単純温泉	\N	\N	\N	\N
868	703	日光湯元温泉	にっこうゆもとおんせん	栃木県日光市湯元			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	硫黄泉	\N	\N	50084	\N
869	704	光徳温泉	こうとくおんせん	栃木県日光市光徳			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	塩化物泉	\N	\N	\N	\N
870	705	日光温泉	にっこうおんせん	栃木県日光市安川町・鉢石町			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	単純温泉	\N	\N	50085	\N
871	706	小来川温泉	おころがわおんせん	栃木県日光市宮小来川			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	単純温泉	\N	\N	\N	\N
872	707	足尾温泉	あしおおんせん	栃木県上都賀郡足尾町銀山平			佐野・小山・足利・鹿沼	鹿沼・足尾	硫黄泉	\N	\N	\N	\N
873	708	かご岩温泉	かごいわおんせん	栃木県塩谷郡藤原町高徳			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	硫黄泉	\N	\N	50975	\N
874	709	鬼怒川温泉	きぬがわおんせん	栃木県塩谷郡藤原町滝・藤原			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	単純温泉	\N	\N	50086	\N
875	710	日向温泉	ひなたおんせん	栃木県塩谷郡栗山村日向下湯原			鬼怒川・川治・湯西川・川俣	湯西川・川俣	単純温泉	\N	\N	\N	\N
876	711	川治温泉	かわじおんせん	栃木県塩谷郡藤原町川治			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	硫酸塩泉	\N	\N	50087	\N
877	712	赤滝鉱泉	あかたきこうせん	栃木県矢板市平野			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
878	713	小滝鉱泉	こたきこうせん	栃木県矢板市平野			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
879	714	寺山鉱泉	てらやまこうせん	栃木県矢板市長井			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
880	715	鳥羽の湯温泉	とばのゆおんせん	栃木県塩谷郡塩谷町鳥羽新田			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	単純温泉	\N	\N	\N	\N
881	716	小砂温泉	こいさごおんせん	栃木県那須郡馬頭町大字小砂			馬頭・茂木・益子・真岡	馬頭・南那須	含鉄泉	\N	\N	50470	\N
882	717	広瀬温泉	ひろせおんせん	栃木県那須郡馬頭町			馬頭・茂木・益子・真岡	馬頭・南那須	含鉄泉	\N	\N	50470	\N
883	718	小口温泉	こぐちおんせん	栃木県那須郡馬頭町小口			馬頭・茂木・益子・真岡	馬頭・南那須	含鉄泉	\N	\N	\N	\N
884	719	喜連川温泉	きつれがわおんせん	栃木県さくら市喜連川			宇都宮・さくら	さくら	塩化物泉	\N	\N	50080	\N
885	720	大金温泉	おおがねおんせん	栃木県那須郡南那須町岩子			馬頭・茂木・益子・真岡	馬頭・南那須	放射能泉	\N	\N	\N	\N
886	721	益子温泉	ましこおんせん	栃木県芳賀郡益子町小宅			馬頭・茂木・益子・真岡	益子・茂木	単純温泉	\N	\N	50562	\N
1262	1010	真木温泉	まぎおんせん	山梨県大月市大月町真木			大月・都留	大月・都留	硫黄泉	\N	\N	50155	\N
887	722	乃木温泉	のぎおんせん	栃木県那須郡西那須野町下永田			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	\N	\N
888	723	大田原温泉	おおたわらおんせん	栃木県大田原市中田原			塩原・矢板・大田原・西那須野	矢板・大田原	硫黄泉	\N	\N	50083	\N
889	724	那須温泉	なすおんせん	栃木県那須郡那須町那須高原			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
890	2207	藤和那須ハイランド温泉	とうわなすはいらんどおんせん	栃木県那須郡那須町高久乙2271番8			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
891	2208	那須高湯温泉混合泉	なすたかゆおんせんこんごうせん	栃木県那須郡那須町大字湯本字那須岳大田原営林署事業区133ホ3林小通			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
892	2239	那須さくら温泉	なすさくらおんせん	栃木県那須郡那須町大字高久字上の原5834-8			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
893	2262	報恩温泉	ほうおんおんせん	栃木県那須郡那須町大字高久乙字上ノ原1886番18			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
894	2371	新東京建物第1号源泉	しんとうきょうたてものだいいちごうげんせん	栃木県那須郡那須町大字高久乙字上の原1873-146			那須・板室	那須・板室	硫黄泉	\N	\N	\N	\N
895	2372	真岡井頭温泉	もおかいがしらおんせん	栃木県真岡市下篭谷21			馬頭・茂木・益子・真岡	益子・茂木	ナトリウム塩化物泉	\N	\N	\N	\N
896	2373	宇都宮温泉	うつのみやおんせん	栃木県宇都宮市新里町丙			宇都宮・さくら	宇都宮	炭酸水素塩泉	\N	\N	\N	\N
897	2374	那須りんどう温泉	なすりんどうおんせん	栃木県那須郡那須町大字漆塚344-25			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
898	2422	相の湯温泉	あいのゆおんせん	栃木県那須郡那須町大字湯本字大丸			那須・板室	那須・板室	炭酸水素塩泉	\N	\N	\N	\N
899	2423	みかえり温泉	みかえりおんせん	栃木県那須郡塩原町関谷西山1425-211			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	\N	\N
900	2424	日光和の代温泉	にっこうわのしろおんせん	栃木県日光市清滝和の代町1726-4			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	硫黄泉	\N	\N	\N	\N
901	2500	恵の湯	めぐみのゆ	栃木県那須郡那須町大字湯本ツムジヶ平603-53			那須・板室	那須・板室	ナトリウム塩化物泉	\N	\N	50081	\N
902	2501	栗山温泉元湯四季の湯	くりやまおんせんもとゆしきのゆ	栃木県塩谷郡栗山村大字黒部向原21			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫酸塩泉	\N	\N	\N	\N
903	2550	中会津屋温泉（塩原温泉）	なかあいづやおんせん（しおばらおんせん）	栃木県那須郡塩原町下塩原925-5			塩原・矢板・大田原・西那須野	塩原	弱アルカリ性低張性泉	\N	\N	50082	\N
904	2664	上栗山温泉	かみくりやまおんせん	栃木県塩谷郡栗山村上栗山			鬼怒川・川治・湯西川・川俣	湯西川・川俣	ナトリウム塩化物泉	\N	\N	\N	\N
905	2665	塩原温泉　華の湯	しおはらおんせん　はなのゆ	栃木県那須郡塩原町上塩原			塩原・矢板・大田原・西那須野	塩原	炭酸水素塩泉	\N	\N	50082	\N
906	2666	大鷹の湯	おおたかのゆ	栃木県那須郡西那須野町井口５４８－３５０			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	\N	\N
907	2671	馬頭温泉	ばとうおんせん	栃木県那須郡馬頭町大字小口１５７２			馬頭・茂木・益子・真岡	馬頭・南那須	単純温泉	\N	\N	50470	\N
908	2696	中禅寺温泉	ちゅうぜんじおんせん	栃木県日光市中宮祠２４８４			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	弱アルカリ性低張性泉	\N	\N	50084	\N
909	2699	日光霧降温泉	にっこうきりふりおんせん	栃木県日光市所野１５３５			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	ナトリウム塩化物泉	\N	\N	50493	\N
910	2719	小山温泉	おやまおんせん	栃木県小山市喜沢			佐野・小山・足利・鹿沼	小山	その他	\N	\N	\N	\N
911	2741	井王野温泉	いおうのおんせん	那須郡那須町大字伊王野２７１０			那須・板室	那須・板室	アルカリ単純泉	\N	\N	50081	\N
912	2747	那須野が原温泉	なすのがはらおんせん	栃木県那須郡塩原町接骨木４９３－３			塩原・矢板・大田原・西那須野	塩原	ナトリウム塩化物泉	\N	\N	50520	\N
913	2774	翠黛卿温泉	すいたいきょうおんせん	栃木県那須郡那須町湯本611-1			那須・板室	那須・板室	塩化物泉	\N	\N	\N	\N
914	2813	鹿沼温泉	かぬまおんせん	栃木県鹿沼市栃窪1255			佐野・小山・足利・鹿沼	鹿沼・足尾	硫酸塩泉	\N	\N	50647	\N
915	2819	那須塩原温泉	なすしおばらおんせん	栃木県那須塩原市下田野字街道東428-40			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50081	\N
916	2833	天原の湯	てんげんのゆ	栃木県那須町高久甲６４３７			那須・板室	那須・板室	弱アルカリ性低張性泉	\N	\N	50081	\N
917	2880	下田野温泉	しもたのおんせん	栃木県那須塩原市下田野５３１－１３			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	50520	\N
918	2910	那須プレリー温泉	なすぷれりーおんせん	栃木県那須郡那須町高久丙２５６４－３			那須・板室	那須・板室	アルカリ単純泉	\N	\N	50745	\N
919	2918	森友温泉	もりともおんせん	栃木県今市市森友１７２－１			日光・霧降高原・奥日光・中禅寺湖・今市	今市	炭酸水素塩泉	\N	\N	50748	\N
920	2951	エピナール那須温泉	えぴなーるなすおんせん	栃木県那須郡那須町高久丙１			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
921	2953	与一の湯	よいちのゆ	栃木県那須塩原市西原町189-1			塩原・矢板・大田原・西那須野	塩原	中性低張性高温泉	\N	\N	50782	\N
922	2962	那須グリーン温泉	なすぐりーんおんせん	栃木県那須郡那須町大字寄居字大田2525			那須・板室	那須・板室	アルカリ単純泉	\N	\N	50081	\N
923	2964	柳の湯	やなぎのゆ	栃木県那須郡那須町湯本２２６－１			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
924	3021	栗山温泉	くりやまおんせん	栃木県日光市野門１９９			鬼怒川・川治・湯西川・川俣	湯西川・川俣	炭酸水素塩泉	\N	\N	50840	\N
925	3084	サンヒルズ温泉	さんひるずおんせん	栃木県宇都宮市上横倉町1000			宇都宮・さくら	宇都宮	ナトリウム塩化物泉	\N	\N	50890	\N
926	3121	秘極の湯　葵	ひごくのゆ　あおい	栃木県那須塩原市塩原778-1			塩原・矢板・大田原・西那須野	塩原	炭酸水素塩泉	\N	\N	50082	\N
927	3122	桝田屋源泉	ますだやげんせん	栃木県那須塩原市塩原729			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	50082	\N
928	3159	塩原秘極の湯　紅	しおばらひごくのゆ　くれない	栃木県那須塩原市塩原720			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
929	3183	鬼怒川秘極の湯　風	きぬがわひごくのゆ　かぜ	栃木県日光市今市本町１			日光・霧降高原・奥日光・中禅寺湖・今市	今市	炭酸水素塩泉	\N	\N	50086	\N
930	3184	奥日光秘極の湯温泉	おくにっこうひごくのゆおんせん	栃木県日光市中宮祠2485			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	弱アルカリ性低張性泉	\N	\N	50084	\N
931	3202	川俣秘極の湯　隠	かわまたひごくのゆ　ふくよ	栃木県日光市川俣584			鬼怒川・川治・湯西川・川俣	湯西川・川俣	ナトリウム塩化物泉	\N	\N	50561	\N
932	3209	那須高湯温泉	なすたかゆおんせん	栃木県那須郡那須町高久乙802			那須・板室	那須・板室	炭酸水素塩泉	\N	\N	50081	\N
933	3225	中三依温泉	なかみよりおんせん	栃木県日光市中三依４２３			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	弱アルカリ性低張性泉	\N	\N	50086	\N
934	3304	もみじの湯	もみじのゆ	栃木県那須郡那須町湯本652‐19			那須・板室	那須・板室	ナトリウム塩化物泉	\N	\N	50082	\N
935	3311	マロニエ源泉	まろにえげんせん	栃木県那須塩原市井口533番4			塩原・矢板・大田原・西那須野	塩原	ナトリウム塩化物泉	\N	\N	\N	\N
936	597	丸沼温泉	まるぬまおんせん	群馬県利根郡片品村東小川			沼田・老神・尾瀬	尾瀬・片品	硫酸塩泉	\N	\N	50893	\N
937	598	白根温泉	しらねおんせん	群馬県利根郡片品村東小川			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
938	599	尾瀬戸倉温泉	おぜとくらおんせん	群馬県利根郡片品村戸倉			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
939	600	土出温泉	つちいでおんせん	群馬県利根郡片品村土出			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
940	601	片品温泉	かたしなおんせん	群馬県利根郡片品村越本			沼田・老神・尾瀬	尾瀬・片品	炭酸水素塩泉	\N	\N	50893	\N
941	602	鎌田温泉	かまたおんせん	群馬県利根郡片品村鎌田			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
942	603	湯の小屋温泉	ゆのこやおんせん	群馬県利根郡水上町藤原			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50096	\N
943	604	宝川温泉	たからがわおんせん	群馬県利根郡水上町藤原			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50097	\N
944	605	湯檜曽温泉	ゆびそおんせん	群馬県利根郡水上町湯檜曽			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50098	\N
945	606	うの瀬温泉	うのせおんせん	群馬県利根郡水上町大穴			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50099	\N
946	607	谷川温泉	たにがわおんせん	群馬県利根郡水上町谷川			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50100	\N
947	608	水上温泉	みなかみおんせん	群馬県利根郡水上町湯原			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	50101	\N
948	609	奈女沢温泉	なめさわおんせん	群馬県利根郡月夜野町奈女沢			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
949	610	上牧温泉	かみもくおんせん	群馬県利根郡月夜野町上牧			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	放射能泉	\N	\N	50102	\N
950	611	武尊温泉	ほたかおんせん	群馬県利根郡川場村川場湯原			沼田・老神・尾瀬	玉原・沼田・老神	硫酸塩泉	\N	\N	50893	\N
951	612	川場温泉	かわばおんせん	群馬県利根郡川場村川場湯原			沼田・老神・尾瀬	玉原・沼田・老神	含鉄泉	\N	\N	50894	\N
952	613	桜川温泉	さくらがわおんせん	群馬県利根郡川場村川場			沼田・老神・尾瀬	玉原・沼田・老神	単純温泉	\N	\N	\N	\N
953	614	塩河原温泉	しおがわらおんせん	群馬県利根郡川場村門前			沼田・老神・尾瀬	玉原・沼田・老神	単純温泉	\N	\N	\N	\N
954	615	老神温泉	おいがみおんせん	群馬県利根郡利根村老神			沼田・老神・尾瀬	玉原・沼田・老神	単純温泉	\N	\N	50108	\N
955	616	川古温泉	かわふるおんせん	群馬県利根郡新治村相俣			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	\N	\N
956	617	法師温泉	ほうしおんせん	群馬県利根郡新治村永井６５０			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	50519	\N
957	618	猿ケ京温泉	さるがきょうおんせん	群馬県利根郡みなかみ町猿ヶ京温泉			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	弱アルカリ性低張性泉	\N	\N	50103	\N
958	619	赤岩温泉	あかいわおんせん	群馬県利根郡新治村布施			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
959	620	湯宿温泉	ゆじゅくおんせん	群馬県利根郡新治村湯宿			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
960	621	奥平温泉	おくだいらおんせん	群馬県利根郡新治村入須川奥平			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
961	622	四万温泉	しまおんせん	群馬県吾妻郡中之条町四万			四万・吾妻・川原湯	四万・吾妻・川原湯	単純温泉	\N	\N	50089	\N
962	623	大塚温泉	おおつかおんせん	群馬県吾妻郡中之条町大塚			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	\N	\N
963	624	新中之条温泉	しんなかのじょうおんせん	群馬県吾妻郡中之条町大字蟻川字塩平			四万・吾妻・川原湯	四万・吾妻・川原湯	単純温泉	\N	\N	\N	\N
964	625	沢渡温泉	さわたりおんせん	群馬県吾妻郡中之条町上沢渡			四万・吾妻・川原湯	四万・吾妻・川原湯	単純温泉	\N	\N	\N	\N
965	626	尻焼温泉	しりやきおんせん	群馬県吾妻郡六合村入山			草津・尻焼・花敷	草津・尻焼・花敷	硫酸塩泉	\N	\N	50091	\N
966	627	花敷温泉	はなしきおんせん	群馬県吾妻郡六合村入山			草津・尻焼・花敷	草津・尻焼・花敷	塩化物泉	\N	\N	50091	\N
967	628	万座温泉	まんざおんせん	群馬県吾妻郡嬬恋村干俣			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	50093	\N
968	629	草津温泉	くさつおんせん	群馬県吾妻郡草津町草津			草津・尻焼・花敷	草津・尻焼・花敷	硫黄泉	\N	\N	50092	\N
969	630	応徳温泉	おうとくおんせん	群馬県吾妻郡六合村小雨			草津・尻焼・花敷	草津・尻焼・花敷	含鉄泉	\N	\N	50522	\N
970	631	湯の平温泉	ゆのたいらおんせん	群馬県吾妻郡六合村入山			草津・尻焼・花敷	草津・尻焼・花敷	硫黄泉	\N	\N	\N	\N
971	632	川中温泉	かわなかおんせん	群馬県吾妻郡吾妻町松谷			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	\N	\N
972	633	松の湯温泉	まつのゆおんせん	群馬県吾妻郡吾妻町松谷			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	\N	\N
973	634	川原湯温泉	かわらゆおんせん	群馬県吾妻郡長野原町川原湯			四万・吾妻・川原湯	四万・吾妻・川原湯	炭酸水素塩泉	\N	\N	50094	\N
974	635	温川温泉	ぬるがわおんせん	群馬県吾妻郡吾妻町須賀尾			四万・吾妻・川原湯	四万・吾妻・川原湯	硫黄泉	\N	\N	\N	\N
975	636	薬師温泉	やくしおんせん	群馬県吾妻郡吾妻町本宿			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	50090	\N
976	637	鳩の湯温泉	はとのゆおんせん	群馬県吾妻郡吾妻町本宿			四万・吾妻・川原湯	四万・吾妻・川原湯	塩化物泉	\N	\N	\N	\N
977	638	吾妻峡温泉	あがつまきょうおんせん	群馬県吾妻郡嬬恋村今井			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	50909	\N
978	639	嬬恋温泉	つまごいおんせん	群馬県吾妻郡嬬恋村大前			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	\N	\N
979	640	鹿沢温泉	かざわおんせん	群馬県吾妻郡嬬恋村田代			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	炭酸水素塩泉	\N	\N	\N	\N
980	641	照月湖温泉	しょうげつこおんせん	群馬県吾妻郡長野原町北軽井沢			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	単純温泉	\N	\N	\N	\N
981	642	霧積温泉	きりづみおんせん	群馬県碓氷郡松井田町坂本			藤岡・碓氷・磯部・妙義	碓氷・磯部	単純温泉	\N	\N	\N	\N
982	643	亀沢倉渕温泉	かめさわくらぶちおんせん	群馬県群馬郡倉渕村			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	炭酸水素塩泉	\N	\N	\N	\N
983	644	榛名湖温泉	はるなこおんせん	群馬県群馬郡榛名町榛名山			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	塩化物泉	\N	\N	\N	\N
984	645	伊香保温泉	いかほおんせん	群馬県北群馬郡伊香保町伊香保			渋川・伊香保	渋川・伊香保	硫酸塩泉	\N	\N	50111	\N
985	646	赤城温泉	あかぎおんせん	群馬県前橋市苗ヶ島町2031			赤城・桐生・渡良瀬	赤城	硫酸塩泉	\N	\N	50535	\N
986	647	忠治温泉	ちゅうじおんせん	群馬県勢多郡宮城村苗ヶ島			赤城・桐生・渡良瀬	赤城	炭酸水素塩泉	\N	\N	\N	\N
987	648	滝沢温泉	たきざわおんせん	群馬県勢多郡粕川村室沢			前橋・高崎・伊勢崎・太田･榛名	前橋	炭酸水素塩泉	\N	\N	\N	\N
988	649	梨木温泉	なしぎおんせん	群馬県勢多郡黒保根村宿廻			赤城・桐生・渡良瀬	桐生・渡良瀬・梨木	炭酸水素塩泉	\N	\N	50109	\N
989	650	やぶ塚温泉	やぶづかおんせん	群馬県新田郡藪塚本町藪塚			前橋・高崎・伊勢崎・太田･榛名	太田	含鉄泉	\N	\N	50110	\N
990	651	五色温泉	ごしきおんせん	群馬県伊勢崎市日乃出町			前橋・高崎・伊勢崎・太田･榛名	伊勢崎	塩化物泉	\N	\N	\N	\N
991	652	坂口温泉	さかぐちおんせん	群馬県多野郡吉井町坂口			藤岡・碓氷・磯部・妙義	藤岡・富岡	炭酸水素塩泉	\N	\N	\N	\N
992	653	湯端温泉	ゆばたおんせん	群馬県高崎市吉井町多比良３３０９－１			藤岡・碓氷・磯部・妙義	藤岡・富岡	含鉄泉	\N	\N	50922	\N
993	654	八塩温泉	やしおおんせん	群馬県多野郡鬼石町大字浄法寺字八塩			藤岡・碓氷・磯部・妙義	藤岡・富岡	塩化物泉	\N	\N	\N	\N
994	655	三波石温泉	さんばせきおんせん	群馬県多野郡鬼石町譲原今里			藤岡・碓氷・磯部・妙義	藤岡・富岡	弱アルカリ性低張性泉	\N	\N	\N	\N
995	656	磯部温泉	いそべおんせん	群馬県安中市磯部			藤岡・碓氷・磯部・妙義	碓氷・磯部	ナトリウム塩化物泉	\N	\N	50113	\N
996	659	塩の沢温泉	しおのさわおんせん	群馬県多野郡上野村塩之沢			藤岡・碓氷・磯部・妙義	多野	塩化物泉	\N	\N	50862	\N
997	660	野栗沢温泉	のくりざわおんせん	群馬県多野郡上野村大字野栗沢			藤岡・碓氷・磯部・妙義	多野	二酸化炭素泉	\N	\N	\N	\N
998	661	浜平温泉	はまだいらおんせん	群馬県多野郡上野村楢原			藤岡・碓氷・磯部・妙義	多野	塩化物泉	\N	\N	\N	\N
999	662	高崎観音山鉱泉	たかさきかんのんやまこうせん	群馬県高崎市石原町			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	塩化物泉	\N	\N	\N	\N
1000	663	高山温泉	たかやまおんせん	群馬県吾妻郡高山村中山			四万・吾妻・川原湯	四万・吾妻・川原湯	塩化物泉	\N	\N	\N	\N
1001	664	浅間清泉温泉	あさませいせんおんせん	群馬県吾妻郡長野原町北軽井沢			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	炭酸水素塩泉	\N	\N	\N	\N
1002	665	浅間高原温泉	あさまこうげんおんせん	群馬県吾妻郡長野原町北軽井沢			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50095	\N
1003	666	新鹿沢温泉	しんかざわおんせん	群馬県吾妻郡嬬恋村田代			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	50546	\N
1004	667	休暇村鹿沢高原雲井の湯	きゅうかむらかざわこうげんくもいのゆ	群馬県吾妻郡嬬恋村鹿沢温泉			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50546	\N
1005	2183	藤岡温泉	ふじおかおんせん	群馬県藤岡市上日野細谷戸			藤岡・碓氷・磯部・妙義	藤岡・富岡	炭酸水素塩泉	\N	\N	50112	\N
1006	2184	向屋温泉	こうやおんせん	群馬県多野郡上野村勝山			藤岡・碓氷・磯部・妙義	多野	炭酸水素塩泉	\N	\N	50862	\N
1007	2193	浅間高原温泉	あさまこうげんおんせん	群馬県吾妻郡長野原町嬬恋村			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	炭酸水素塩泉	\N	\N	\N	\N
1008	2195	月夜野温泉	つきよのおんせん	群馬県利根郡月夜野町後閑			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	アルカリ単純泉	\N	\N	\N	\N
1009	2196	真沢温泉	さなざわおんせん	群馬県利根郡月夜野町月夜野			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	ナトリウム塩化物泉	\N	\N	\N	\N
1010	2502	岩櫃城温泉	いわびつじょうおんせん	群馬県吾妻郡吾妻町			四万・吾妻・川原湯	四万・吾妻・川原湯	炭酸水素塩泉	\N	\N	\N	\N
1011	2503	六合赤岩温泉	くにあかいわおんせん	群馬県吾妻郡六合村大字赤岩			草津・尻焼・花敷	草津・尻焼・花敷	アルカリ単純泉	\N	\N	\N	\N
1012	2504	バラギ高原温泉	ばらぎこうげんおんせん	群馬県吾妻郡嬬恋村千俣			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	弱アルカリ性低張性泉	\N	\N	50483	\N
1013	2505	つつじの湯	つつじのゆ	群馬県吾妻郡嬬恋村			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	鉱泉	\N	\N	\N	\N
1014	2506	温泉センター諏訪の湯	おんせんせんたーすわのゆ	群馬県利根郡水上町高日向			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	その他	\N	\N	\N	\N
1015	2507	花咲温泉越沢の湯	はなさくおんせんこしざわのゆ	群馬県利根郡片品村花咲			沼田・老神・尾瀬	尾瀬・片品	アルカリ単純泉	\N	\N	\N	\N
1016	2508	摺渕温泉	するぶちおんせん	群馬県利根郡利根村			沼田・老神・尾瀬	尾瀬・片品	アルカリ単純泉	\N	\N	\N	\N
1017	2509	寄居山温泉	よりいやまおんせん	群馬県利根郡片品村鎌田			沼田・老神・尾瀬	尾瀬・片品	炭酸水素塩泉	\N	\N	\N	\N
1018	2510	白沢高原温泉	しらさわこうげんおんせん	群馬県利根郡白沢村			沼田・老神・尾瀬	玉原・沼田・老神	その他	\N	\N	\N	\N
1019	2511	富士見温泉見晴らしの湯	ふじみおんせんみはらしのゆ	群馬県勢多郡富士見村大字石井			赤城・桐生・渡良瀬	赤城	硫酸塩泉	\N	\N	\N	\N
1020	2512	猿川温泉	さるかわおんせん	群馬県勢多郡黒保根村			赤城・桐生・渡良瀬	桐生・渡良瀬・梨木	その他	\N	\N	\N	\N
1021	2513	しんとう温泉	しんとうおんせん	群馬県北群馬郡榛東村大字新井			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	\N	\N
1022	2514	船尾の湯	ふなおのゆ	群馬県北群馬郡吉岡町大字漆原			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	\N	\N
1023	2515	渋川温泉きらめきの湯	しぶかわおんせんきらめきのゆ	群馬県渋川市半田			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	\N	\N
1024	2516	小野上温泉	おのがみおんせん	群馬県北群馬郡小野上村村上			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	50111	\N
1025	2517	白井温泉	しろいおんせん	群馬県北群馬郡子持村吹屋			渋川・伊香保	渋川・伊香保	ナトリウム塩化物泉	\N	\N	\N	\N
1026	2518	くらぶち相間川温泉	くらぶちあいまがわおんせん	群馬県高崎市倉渕町水沼27			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	その他	\N	\N	50943	\N
1027	2519	ハルナ温泉	はるなおんせん	群馬県群馬郡榛名町榛名山八本松			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	ナトリウム塩化物泉	\N	\N	\N	\N
1028	2521	峠の湯	とうげのゆ	群馬県碓氷郡松井田町坂本			藤岡・碓氷・磯部・妙義	碓氷・磯部	二酸化炭素泉	\N	\N	\N	\N
1029	2600	鬼押温泉	おにおしおんせん	群馬県吾妻郡嬬恋村鎌原			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50711	\N
1030	2656	奥軽井沢温泉	おくかるいざわおんせん	群馬県吾妻郡嬬恋村大字大前字細原２２７１－１１８			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	ナトリウム塩化物泉	\N	\N	50466	\N
1031	2687	奥嬬恋温泉	おくつまごいおんせん	群馬県吾妻郡嬬恋村大字干俣３８６			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50483	\N
1032	2733	つま恋温泉	つまごいおんせん	群馬県吾妻郡嬬恋村芦生田５３０－５			四万・吾妻・川原湯	四万・吾妻・川原湯	ナトリウム塩化物泉	\N	\N	50504	\N
1033	2750	応徳温泉	おうどくおんせん	群馬県吾妻郡六合村大字小雨乙２１番地１			四万・吾妻・川原湯	四万・吾妻・川原湯	その他	\N	\N	50522	\N
1034	2783	バラギ温泉・湖畔の湯	ばらぎおんせん・こはんのゆ	群馬県吾妻郡嬬恋村大字干俣字熊四郎山2401			四万・吾妻・川原湯	四万・吾妻・川原湯	ナトリウム塩化物泉	\N	\N	50553	\N
1035	2814	奥武尊温泉	おくほたかおんせん	群馬県利根郡片品村大字花咲字武尊山２７９７番地６			沼田・老神・尾瀬	尾瀬・片品	その他	\N	\N	50893	\N
1036	2821	水上高原上の原温泉	みなかみこうげんうえのはらおんせん	群馬県利根郡みなかみ町水上高原上の原温泉			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	アルカリ単純泉	\N	\N	50654	\N
1037	2919	猪ノ田温泉	いのだおんせん	群馬県藤岡市下日野猪ノ田１２５４－１			藤岡・碓氷・磯部・妙義	藤岡・富岡	アルカリ単純泉	\N	\N	50749	\N
1038	2940	赤城高原温泉	あかぎこうげんおんせん	群馬県前橋市　苗ヶ島町1432-2			赤城・桐生・渡良瀬	赤城	鉱泉	\N	\N	50768	\N
1039	2970	敷島温泉	しきしまおんせん	群馬県渋川市赤城町敷島			赤城・桐生・渡良瀬	赤城	その他	\N	\N	50795	\N
1040	3022	東小川温泉	ひがしおがわおんせん	群馬県利根郡片品村大字東小川字宮下510			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
1041	3087	座禅温泉	ざぜんおんせん	群馬県利根郡片品村東小川4658-58			沼田・老神・尾瀬	尾瀬・片品	アルカリ単純泉	\N	\N	50893	\N
1042	3104	半出来温泉	はんできおんせん	群馬県吾妻郡嬬恋村今井97-1			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50093	\N
1043	3110	北軽井沢温泉　相生の湯	きたかるいざわおんせん　あいおいの湯	群馬県吾妻郡長野原町北軽井沢字鼻曲2032-16			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	ナトリウム塩化物泉	\N	\N	50899	\N
1044	3127	妙義温泉（長寿の湯）	みょうぎおんせん（ちょうじゅのゆ）	群馬県　富岡市　妙義町　大字古立字天神山554番地１			藤岡・碓氷・磯部・妙義	藤岡・富岡	単純温泉	\N	\N	50910	\N
1045	3138	川場温泉　弘法の湯	かわばおんせん　こうぼうのゆ	群馬県利根郡川場村谷地２４１９			沼田・老神・尾瀬	玉原・沼田・老神	弱アルカリ性低張性泉	\N	\N	50893	\N
1046	3148	北橘温泉	ほっきつおんせん	群馬県渋川市北橘町下箱田字悪戸570-1			赤城・桐生・渡良瀬	赤城	塩化物泉	\N	\N	\N	\N
1047	3158	倉渕川浦温泉	くらぶちかわうらおんせん	群馬県高崎市倉渕町川浦27-80			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	ナトリウム塩化物泉	\N	\N	50933	\N
1048	3229	秋間温泉あるばとろ湯	あきまおんせんあるばとろゆ	群馬県安中市安中５８５３			藤岡・碓氷・磯部・妙義	碓氷・磯部	炭酸水素塩泉	\N	\N	50113	\N
1049	3284	太田温泉	おおたおんせん	群馬県太田市植木野町６９４－４			前橋・高崎・伊勢崎・太田･榛名	太田	その他	\N	\N	\N	\N
1050	725	大子温泉	だいごおんせん	茨城県久慈郡大子町山田			北茨城・奥久慈・日立	久慈・袋田	硫酸塩泉	\N	\N	50598	\N
1051	726	浅川温泉	あさかわおんせん	茨城県久慈郡大子町浅川			北茨城・奥久慈・日立	久慈・袋田	硫黄泉	\N	\N	\N	\N
1052	727	袋田温泉	ふくろだおんせん	茨城県久慈郡大子町大子			北茨城・奥久慈・日立	久慈・袋田	炭酸水素塩泉	\N	\N	50598	\N
1053	728	月居温泉	つきおりおんせん	茨城県久慈郡大子町小生瀬２８５５－１０			北茨城・奥久慈・日立	久慈・袋田	単純温泉	\N	\N	50598	\N
1054	729	湯沢温泉	ゆざわおんせん	茨城県久慈郡大子町西金			北茨城・奥久慈・日立	久慈・袋田	二酸化炭素泉	\N	\N	\N	\N
1055	730	関山温泉	せきやまおんせん	茨城県北茨城市関本町関山			北茨城・奥久慈・日立	北茨城	硫黄泉	\N	\N	\N	\N
1056	731	平潟港温泉	ひらかたこうおんせん	茨城県北茨城市平潟町			北茨城・奥久慈・日立	北茨城	塩化物泉	\N	\N	50115	\N
1057	732	友の湯温泉	とものゆおんせん	茨城県北茨城市平潟町本町			北茨城・奥久慈・日立	北茨城	硫黄泉	\N	\N	\N	\N
1058	733	五浦温泉	いつうらおんせん	茨城県北茨城市大津町			北茨城・奥久慈・日立	北茨城	塩化物泉	\N	\N	50116	\N
1059	734	湯の網温泉	ゆのあみおんせん	茨城県北茨城市関南町			北茨城・奥久慈・日立	北茨城	含鉄泉	\N	\N	50117	\N
1060	735	常磐うぐいす谷温泉	じょうばんうぐいすだにおんせん	茨城県北茨城市磯原町鶯谷			北茨城・奥久慈・日立	北茨城	塩化物泉	\N	\N	50976	\N
1061	736	磯原温泉	いそはらおんせん	茨城県北茨城市磯原町磯原			北茨城・奥久慈・日立	北茨城	硫黄泉	\N	\N	50597	\N
1062	737	塩ノ沢温泉	しおのさわおんせん	茨城県久慈郡大子町山田			北茨城・奥久慈・日立	久慈・袋田	二酸化炭素泉	\N	\N	\N	\N
1063	738	横川温泉	よこかわおんせん	茨城県常陸太田市折橋町　１４０９			北茨城・奥久慈・日立	久慈・袋田	硫黄泉	\N	\N	50780	\N
1064	739	大菅鉱泉	おおすげおんせん	茨城県久慈郡里美村大菅			北茨城・奥久慈・日立	久慈・袋田	硫黄泉	\N	\N	\N	\N
1065	740	三京温泉	さんきょうおんせん	茨城県多賀郡十王町友部			北茨城・奥久慈・日立	北茨城	炭酸水素塩泉	\N	\N	\N	\N
1066	741	鵜の岬温泉	うのみさきおんせん	茨城県多賀郡十王町伊師浜			北茨城・奥久慈・日立	北茨城	単純温泉	\N	\N	\N	\N
1067	742	鵜の島温泉	うのしまおんせん	茨城県日立市留町			北茨城・奥久慈・日立	日立	二酸化炭素泉	\N	\N	\N	\N
1068	743	多賀温泉	たがおんせん	茨城県日立市大久保町			北茨城・奥久慈・日立	日立	硫黄泉	\N	\N	\N	\N
1069	744	川中子温泉	かわなかごおんせん	茨城県常陸太田市小目町			北茨城・奥久慈・日立	北茨城	炭酸水素塩泉	\N	\N	\N	\N
1070	745	相川温泉	あいかわおんせん	茨城県東茨城郡御前山村下伊勢畑相川			北茨城・奥久慈・日立	久慈・袋田	放射能泉	\N	\N	\N	\N
1071	746	成沢鉱泉	なるさわこうせん	茨城県水戸市成沢			水戸・笠間	水戸	硫黄泉	\N	\N	\N	\N
1072	747	長者ヶ谷津温泉	ちょうじゃがやつおんせん	茨城県ひたちなか市大平			大洗・ひたちなか	大洗・ひたちなか	硫黄泉	\N	\N	\N	\N
1073	748	中根温泉	なかねおんせん	茨城県ひたちなか市中根			大洗・ひたちなか	大洗・ひたちなか	塩化物泉	\N	\N	\N	\N
1074	749	伝正寺温泉	でんしょうじおんせん	茨城県真壁郡真壁町桜井			常総・結城・桜川	下館・真壁・桜川	放射能泉	\N	\N	\N	\N
1075	750	土浦温泉	つちうらおんせん	茨城県土浦市富士崎			霞ヶ浦・土浦・鹿島・潮来	霞ヶ浦・土浦	含鉄泉	\N	\N	\N	\N
1076	751	弘法大師温泉	こうぼうだいしおんせん	茨城県日立市留町			北茨城・奥久慈・日立	日立	含鉄泉	\N	\N	\N	\N
1077	2209	筑波温泉	つくばおんせん	茨城県つくば市筑波			つくば・牛久	つくば	炭酸水素塩泉	\N	\N	50114	\N
1078	2522	石尊鉱泉	せきそんこうせん	茨城県北茨城県大津町			北茨城・奥久慈・日立	北茨城	単純温泉	\N	\N	\N	\N
1079	2523	中郷温泉	なかごうおんせん	茨城県北茨城市中郷町日棚			北茨城・奥久慈・日立	北茨城	鉱泉	\N	\N	\N	\N
1080	2524	大洗温泉	おおあらいおんせん	茨城県東茨城郡大洗町大字大貫字瓜畑			大洗・ひたちなか	大洗・ひたちなか	硫酸塩泉	\N	\N	50596	\N
1081	2525	筑波山温泉	つくばさんおんせん	茨城県つくば市大字筑波字宮脇			つくば・牛久	つくば	ナトリウム塩化物泉	\N	\N	50114	\N
1082	2526	やさと温泉	やさとおんせん	茨城県八郷町小幡			常総・結城・桜川	下館・真壁・桜川	弱アルカリ性低張性泉	\N	\N	\N	\N
1083	2527	鉾田温泉	ほこたおんせん	茨城県鉾田市当間			大洗・ひたちなか	鉾田市	ナトリウム塩化物泉	\N	\N	\N	\N
1084	2528	たいよう温泉	たいようおんせん	茨城県鉾田市上幡木			大洗・ひたちなか	鉾田市	炭酸水素塩泉	\N	\N	\N	\N
1085	2569	鹿島セントラルホテル天然温泉（美人の湯）ゆの華	かしませんとらるほてるてんねんおんせん（びじんのゆ）ゆのはな	茨城県神栖市大野原4-7-1			大洗・ひたちなか	鹿島	その他	\N	\N	\N	\N
1086	2601	北浦宝来温泉つるるんの湯	きたうらほうらいおんせんつるるんのゆ	茨城県行方郡北浦町山田3969			霞ヶ浦・土浦・鹿島・潮来	潮来	アルカリ単純泉	\N	\N	50455	\N
1087	2662	五浦元湯温泉	いつうらもとゆおんせん	茨城県北茨城市平潟町字北作１３９４			北茨城・奥久慈・日立	北茨城	アルカリ単純泉	\N	\N	50116	\N
1088	2663	阿字ヶ浦温泉	あじがうらおんせん	茨城県ひたちなか市阿字ヶ浦町３２９０			大洗・ひたちなか	大洗・ひたちなか	ナトリウム塩化物泉	\N	\N	\N	\N
1089	2757	二眺の湯	にちょうのゆ	茨城県北茨城市磯原町磯原2553番地			北茨城・奥久慈・日立	北茨城	炭酸水素塩泉	\N	\N	50530	\N
1090	2767	いこいの村涸沼温泉	いこいのむらひぬまおんせん	茨城県鉾田市箕輪3604			大洗・ひたちなか	鉾田市	ナトリウム塩化物泉	\N	\N	50539	\N
1091	2900	いそざき温泉	いそざきおんせん	茨城県ひたちなか市磯崎町字磯崎東ノ三4598-1			大洗・ひたちなか	大洗・ひたちなか	ナトリウム塩化物泉	\N	\N	50734	\N
1092	2988	きぬの湯温泉	きぬのゆおんせん	茨城県常総市内守谷町きぬの里1-5-6			常総・結城・桜川	結城・古河	炭酸水素塩泉	\N	\N	50806	\N
1093	3080	湯の澤鉱泉	ゆのさわこうせん	茨城県常陸大宮市山方4849-1			北茨城・奥久慈・日立	久慈・袋田	含鉄泉	\N	\N	50887	\N
1094	3088	つくば温泉　兆寿泉	つくばおんせん　ちょうじゅせん	茨城県つくば市下岩崎７０８－１			つくば・牛久	つくば	ナトリウム塩化物泉	\N	\N	50114	\N
1095	3244	なめかた温泉　玉造の湯	なめかたおんせん　たまつくりのゆ	茨城県行方市浜２７９６－１			霞ヶ浦・土浦・鹿島・潮来	潮来	炭酸鉄泉	\N	\N	50967	\N
1096	3248	御老公天然温泉	ごろうこうてんねんおんせん	茨城県猿島郡境町１３２７－１			常総・結城・桜川	結城・古河	単純炭酸泉	\N	\N	50971	\N
1097	3269	涸沼温泉　美人の湯	ひぬまおんせん　びじんのゆ	茨城県鉾田市箕輪3604			大洗・ひたちなか	鉾田市	ナトリウム塩化物泉	\N	\N	50984	\N
1098	752	百穴温泉	ひゃっけつおんせん	埼玉県比企郡吉見町北吉見			飯能	東松山・森林公園・小川町	単純温泉	\N	\N	\N	\N
1099	753	永久保鉱泉	ながくぼおんせん	埼玉県比企郡玉川村玉川			飯能	飯能	硫黄泉	\N	\N	\N	\N
1100	754	黒山鉱泉	くろやまこうせん	埼玉県入間郡越生町黒山			飯能	飯能	単純温泉	\N	\N	\N	\N
1101	755	名栗温泉	なぐりおんせん	埼玉県入間郡名栗村下名栗			飯能	飯能	放射能泉	\N	\N	\N	\N
1102	756	新木鉱泉	あらきこうせん	埼玉県秩父市山田1538			秩父・長瀞	秩父	アルカリ単純泉	\N	\N	50913	\N
1103	757	和銅鉱泉	わどうこうせん	埼玉県秩父市黒谷822-1			秩父・長瀞	秩父	鉱泉	\N	\N	50913	\N
1104	758	不動の湯温泉	ふどうのゆおんせん	埼玉県秩父市下山田			秩父・長瀞	秩父	弱アルカリ性低張性泉	\N	\N	\N	\N
1105	759	美やま温泉	みやまおんせん	埼玉県秩父市山田1294			秩父・長瀞	秩父	鉱泉	\N	\N	50913	\N
1106	760	山田温泉	やまだおんせん	埼玉県秩父市山田			秩父・長瀞	秩父	単純温泉	\N	\N	\N	\N
1107	761	巴川温泉郷	ともえがわおんせんきょう	埼玉県秩父市久那			秩父・長瀞	秩父	単純温泉	\N	\N	\N	\N
1108	762	千鹿谷鉱泉	ちがやおんせん	埼玉県秩父郡吉田町上吉田			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
1109	763	両神温泉	りょうかみおんせん	埼玉県秩父郡両神村			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
1110	764	日野温泉	ひのおんせん	埼玉県秩父郡荒川村日野			秩父・長瀞	秩父	炭酸水素塩泉	\N	\N	\N	\N
1111	765	柴原温泉	しばはらおんせん	埼玉県秩父郡荒川村柴原			秩父・長瀞	秩父	含鉄泉	\N	\N	50595	\N
1112	766	白久温泉	しろくおんせん	埼玉県秩父郡荒川村白久			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
1113	767	小鹿野温泉大竜寺源泉	おがのおんせんだいりゅうじげんせん	埼玉県秩父郡小鹿野町小鹿野			秩父・長瀞	秩父	硫黄泉	\N	\N	50120	\N
1114	2529	丸山鉱泉	まるやまこうせん	埼玉県秩父郡横瀬町			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
1115	2530	秩父湯元武甲温泉	ちちぶゆもとぶこうおんせん	埼玉県秩父郡横瀬町大字横瀬			秩父・長瀞	秩父	単純温泉	\N	\N	\N	\N
1116	2531	越谷天然温泉美人の湯	こしがやてんねんおんせんびじんのゆ	埼玉県越谷市大間野町			越谷・草加	越谷	鉱泉	\N	\N	\N	\N
1117	2532	かすかべ湯元温泉	かすかべゆもとおんせん	埼玉県春日部市大字大増新田			越谷・草加	越谷	弱アルカリ性低張性泉	\N	\N	\N	\N
1118	2868	彩の国さくらそう温泉	さいのくにさくらそうおんせん	埼玉県さいたま市中央区新都心３－２			川越・さいたま	さいたま	硫黄泉	\N	\N	50701	\N
1119	2966	大滝温泉　三峰神の湯	おおたきおんせん　みつみねかみのゆ	埼玉県秩父市大滝４２７７－２			秩父・長瀞	秩父	ナトリウム塩化物泉	\N	\N	50790	\N
1120	2991	神川温泉	かみかわおんせん	埼玉県児玉郡神川町小浜１３４１			本庄・熊谷	本庄	単純温泉	\N	\N	50809	\N
1121	3074	秩父・四季彩乃湯温泉	ちちぶ　しきさいのゆおんせん	埼玉県秩父市上宮地町上の台5911-1			秩父・長瀞	秩父	弱アルカリ性低張性泉	\N	\N	50884	\N
1122	3129	秩父　小鹿野温泉　高根の湯	ちちぶ　おがのおんせん　たかねのゆ	埼玉県秩父郡小鹿野町小鹿野1853			秩父・長瀞	秩父	その他	\N	\N	50912	\N
1123	3268	四季の湯温泉	ときのゆおんせん	埼玉県熊谷市小江川228			本庄・熊谷	熊谷・深谷	ナトリウム塩化物泉	\N	\N	50983	\N
1124	785	飯岡温泉	いいおかおんせん	千葉県海上郡飯岡町萩園			九十九里・銚子	九十九里	二酸化炭素泉	\N	\N	\N	\N
1125	786	湊温泉	みなとおんせん	千葉県船橋市湊町			舞浜・浦安・船橋・幕張	船橋	単純温泉	\N	\N	\N	\N
1126	787	白子温泉	しらこおんせん	千葉県長生郡白子町古所			九十九里・銚子	九十九里	塩化物泉	\N	\N	50121	\N
1127	788	木更津温泉	きさらづおんせん	千葉県木更津市富士見			木更津・君津・富津	木更津・君津	炭酸水素塩泉	\N	\N	50622	\N
1128	789	青堀温泉	あおほりおんせん	千葉県富津市大堀1571			木更津・君津・富津	富津・鋸南	炭酸水素塩泉	\N	\N	50812	\N
1129	790	鹿野山温泉	かのうざんおんせん	千葉県君津市鹿野山			木更津・君津・富津	木更津・君津	塩化物泉	\N	\N	\N	\N
1130	791	亀山温泉	かめやまおんせん	千葉県君津市豊田			木更津・君津・富津	木更津・君津	塩化物泉	\N	\N	\N	\N
1131	792	養老温泉	ようろうおんせん	千葉県夷隅郡大多喜町葛藤			勝浦・鴨川	勝浦・御宿	塩化物泉	\N	\N	50620	\N
1132	793	勝浦温泉	かつうらおんせん	千葉県勝浦市松野			勝浦・鴨川	勝浦・御宿	塩化物泉	\N	\N	50126	\N
1133	794	御宿温泉	おんじゅくおんせん	千葉県夷隅郡御宿町浜仲之台			勝浦・鴨川	勝浦・御宿	塩化物泉	\N	\N	\N	\N
1134	795	湯場原温泉	ゆばのはらおんせん	千葉県勝浦市貝掛			勝浦・鴨川	勝浦・御宿	炭酸水素塩泉	\N	\N	50126	\N
1135	796	清澄温泉	きよすみおんせん	千葉県君津市黄和田畑湯ヶ滝			木更津・君津・富津	木更津・君津	硫黄泉	\N	\N	\N	\N
1136	797	粟斗温泉	あわとおんせん	千葉県鴨川市粟斗			勝浦・鴨川	鴨川	硫黄泉	\N	\N	\N	\N
1137	798	曽呂温泉	そろおんせん	千葉県鴨川市仲			勝浦・鴨川	鴨川	硫黄泉	\N	\N	\N	\N
1138	799	鋸山金谷温泉	のこぎりやまかなやおんせん	千葉県富津市金谷			木更津・君津・富津	富津・鋸南	塩化物泉	\N	\N	50124	\N
1139	800	岩婦温泉	いわぶおんせん	千葉県安房郡富山町高崎			館山・南房総	富浦・白浜・千倉	硫黄泉	\N	\N	\N	\N
1140	801	弁天鉱泉	べんてんこうせん	千葉県安房郡富山町小浦			館山・南房総	富浦・白浜・千倉	硫黄泉	\N	\N	\N	\N
1141	802	千倉温泉	ちくらおんせん	千葉県安房郡千倉町南朝夷			館山・南房総	富浦・白浜・千倉	硫黄泉	\N	\N	50128	\N
1142	803	白浜温泉	しらはまおんせん	千葉県安房郡白浜町滝口			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50129	\N
1143	804	不老山薬師温泉	ふろうさんやくしおんせん	千葉県館山市布良			館山・南房総	館山	炭酸水素塩泉	\N	\N	\N	\N
1144	805	南館山温泉	みなみたてやまおんせん	千葉県館山市犬石			館山・南房総	館山	単純温泉	\N	\N	50541	\N
1145	806	一宮海岸温泉	いちのみやかいがんおんせん	千葉県長生郡一宮町一宮			九十九里・銚子	九十九里	塩化物泉	\N	\N	\N	\N
1146	807	小湊温泉	こみなとおんせん	千葉県安房郡天津小湊町内浦			勝浦・鴨川	鴨川	塩化物泉	\N	\N	50477	\N
1147	808	鴨川温泉	かもがわおんせん	千葉県鴨川市前原			勝浦・鴨川	鴨川	炭酸水素塩泉	\N	\N	50127	\N
1148	809	ロマンの森温泉	ろまんのもりおんせん	千葉県君津市豊英			木更津・君津・富津	木更津・君津	硫黄泉	\N	\N	\N	\N
1149	2168	千倉海岸温泉	ちくらかいがんおんせん	千葉県安房郡千倉町瀬戸字矢原			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50128	\N
1150	2185	サン・ランド温泉	さん・らんどおんせん	千葉県館山市小沼			館山・南房総	館山	塩化物泉	\N	\N	50541	\N
1151	2186	吉祥龍神の湯	きっしょうりゅうじんのゆ	千葉県館山市大神宮			館山・南房総	館山	炭酸水素塩泉	\N	\N	50541	\N
1152	2188	千倉元湯温泉	ちくらもとゆおんせん	千葉県安房郡千倉町			館山・南房総	富浦・白浜・千倉	硫酸塩泉	\N	\N	50128	\N
1153	2189	千倉海底温泉	ちくらかいていおんせん	千葉県安房郡千倉町			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50128	\N
1154	2190	白浜野島温泉	しらはまのじまおんせん	千葉県安房郡白浜町			館山・南房総	富浦・白浜・千倉	その他	\N	\N	50129	\N
1155	2191	南房総白浜温泉	みなみぼうそうしらはまおんせん	千葉県安房郡白浜町			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50129	\N
1156	2203	犬吠埼温泉	いぬぼうさきおんせん	千葉県銚子市犬吠崎9575			九十九里・銚子	銚子	塩化物泉	\N	\N	50122	\N
1157	2243	安房温泉	あわおんせん	千葉県安房郡鋸南町竜島973			木更津・君津・富津	富津・鋸南	ナトリウム塩化物泉	\N	\N	50125	\N
1158	2244	亀山温泉	かめやまおんせん	千葉県君津市豊田旧菅間田65			木更津・君津・富津	木更津・君津	弱アルカリ性低張性泉	\N	\N	50123	\N
1159	2332	岩井湯元温泉	いわいゆもとおんせん	千葉県安房郡富山町久枝494			館山・南房総	富浦・白浜・千倉	ナトリウム塩化物泉	\N	\N	50619	\N
1160	2399	長生の湯	ちょうせいのゆ	千葉県長生郡長生村一松3445			九十九里・銚子	九十九里	炭酸水素塩泉	\N	\N	50623	\N
1161	2425	一宮温泉	いちのみやおんせん	千葉県長生郡一宮町一宮10226			九十九里・銚子	九十九里	鉱泉	\N	\N	\N	\N
1162	2551	勝浦三日月温泉	かつうらみかづきおんせん	千葉県勝浦市墨名			勝浦・鴨川	勝浦・御宿	ナトリウム塩化物泉	\N	\N	\N	\N
1163	2570	大和の湯	やまとのゆ	千葉県成田市大竹			成田	成田	その他	\N	\N	\N	\N
1164	2571	千倉七浦温泉	ちくらななうらおんせん	千葉県安房郡千倉町大川1211			館山・南房総	富浦・白浜・千倉	ナトリウム塩化物泉	\N	\N	50128	\N
1165	2572	たてやま平砂浦温泉	たてやまへいさうらおんせん	千葉県館山市伊戸1535			館山・南房総	館山	弱アルカリ性低張性泉	\N	\N	50541	\N
1166	2602	白浜女来島温泉	しらはまめらいじまおんせん	千葉県安房郡白浜町白浜3535-5			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50129	\N
1167	2603	館山温泉	たてやまおんせん	千葉県館山市坂井字翁作772-51			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50541	\N
1168	2646	ひかり潮の湯温泉	ひかりしおのゆおんせん	千葉県匝瑳郡光町木戸５１４３－１			九十九里・銚子	九十九里	その他	\N	\N	50621	\N
1169	2679	天津小湊温泉城崎の湯	あまつこみなとおんせんきのさきのゆ	千葉県安房郡天津小湊町天津３２８７			勝浦・鴨川	鴨川	ナトリウム塩化物泉	\N	\N	50477	\N
1170	2688	旭九十九里温泉	あさひくじゅうくりおんせん	千葉県旭市仁玉字塩湯２２７３－３			九十九里・銚子	九十九里	弱アルカリ性低張性泉	\N	\N	50621	\N
1171	2704	福水渓流の湯	ふくすいけいりゅうのゆ	千葉県夷隅郡大多喜町小田代618			勝浦・鴨川	勝浦・御宿	ナトリウム塩化物泉	\N	\N	50497	\N
1172	2753	天然温泉　人魚の湯	てんねんおんせん　にんぎょのゆ	千葉県館山市大賀85-1			館山・南房総	館山	炭酸水素塩泉	\N	\N	50525	\N
1173	2765	休暇村　館山温泉	きゅうかむら　たてやまおんせん	千葉県館山市波佐間字名郷浦6番地1			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50541	\N
1174	2769	しあわせ源泉	しあわせげんせん	千葉県安房郡千倉町川口68			館山・南房総	富浦・白浜・千倉	炭酸水素塩泉	\N	\N	50128	\N
1175	2770	白浜南国温泉	しらはまなんごくおんせん	千葉県安房郡白浜町白浜232			館山・南房総	富浦・白浜・千倉	鉱泉	\N	\N	50129	\N
1176	2771	矢原温泉	やわらおんせん	千葉県安房郡千倉町瀬戸3291			館山・南房総	富浦・白浜・千倉	炭酸水素塩泉	\N	\N	50128	\N
1177	2772	白浜温泉へいすけ源泉	しらはまおんせんへいすけげんせん	千葉県安房郡白浜町乙浜			館山・南房総	富浦・白浜・千倉	含鉄泉	\N	\N	50129	\N
1178	2773	白浜元湯温泉	しらはまもとゆおんせん	千葉県安房郡白浜町白浜7034			館山・南房総	富浦・白浜・千倉	含アルミニウム泉	\N	\N	50129	\N
1179	2791	佐倉温泉	さくらおんせん	千葉県佐倉市表町3-26-1			佐倉・八街	佐倉	炭酸水素塩泉	\N	\N	50610	\N
1180	2795	館山塩見温泉「こがねの湯」	たてやましおみおんせん「こがねのゆ」	千葉県館山市塩見233-4			館山・南房総	館山	含アルミニウム泉	\N	\N	50541	\N
1181	2823	平蔵の湯	へいぞうのゆ	千葉県市原市平蔵2579-1			千葉・市原	市原	含鉄泉	\N	\N	50656	\N
1182	2871	青掘温泉『琥珀の湯（Ｒ）』	あおぼりおんせん『こはくのゆ（Ｒ）』	千葉県富津市大堀１５２８番地			木更津・君津・富津	富津・鋸南	その他	\N	\N	50705	\N
1183	2948	浦安温泉	うらやすおんせん	千葉県浦安市千鳥13-20			舞浜・浦安・船橋・幕張	舞浜・浦安	ナトリウム塩化物泉	\N	\N	50776	\N
1184	2949	白岩温泉	しらいわおんせん	千葉県鴨川市四方木661-17			勝浦・鴨川	鴨川	硫酸塩泉	\N	\N	50777	\N
1185	2956	南房総岩井温泉	みなみぼうそういわいおんせん	千葉県南房総市久枝527-16			館山・南房総	富浦・白浜・千倉	炭酸鉄泉	\N	\N	50783	\N
1186	2967	洲の埼温泉	すのさきおんせん	千葉県館山市洲の埼198-1			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50791	\N
1187	3117	成田温泉　美湯	なりたおんせん　びゅう	千葉県成田市小菅700			成田	成田	ナトリウム塩化物泉	\N	\N	50905	\N
1188	3192	たてやま鏡ヶ浦温泉	たてやまかがみがうらおんせん	千葉県館山市八幡822　			館山・南房総	館山	炭酸水素塩泉	\N	\N	50541	\N
1189	3193	山田温泉　やまゆりの湯	やまだおんせん　やまゆりのゆ	千葉県香取市西田部1309-34			九十九里・銚子	銚子	硫酸塩泉	\N	\N	50952	\N
1190	3215	内浦山温泉　藏の湯	うちうらやまおんせん　くらのゆ	千葉県鴨川市内浦字中奥谷１３８６番２			勝浦・鴨川	鴨川	ナトリウム塩化物泉	\N	\N	50957	\N
1191	3263	季の湯	ときのゆ	千葉県木更津市富士見3‐7‐35			木更津・君津・富津	木更津・君津	炭酸水素塩泉	\N	\N	50981	\N
1192	3290	千里の湯　温泉	せんりのゆ　おんせん	千葉県館山市佐野字外大下517番18			館山・南房総	館山	その他	\N	\N	50541	\N
1193	3291	南房源泉	なんぼうげんせん	千葉県館山市小沼居下352‐1			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50541	\N
1194	768	数馬温泉	かずまおんせん	東京都西多摩郡檜原村数馬			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
1195	769	松乃温泉	まつのおんせん	東京都西多摩郡奥多摩町川井			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
1196	770	岩蔵温泉	いわくらおんせん	東京都青梅市富岡・小曽木			青梅・奥多摩	青梅	硫黄泉	\N	\N	50130	\N
1197	771	網代温泉	あじろおんせん	東京都あきる野市網代			青梅・奥多摩	青梅	単純温泉	\N	\N	\N	\N
1198	772	上野池之端	うえのいけのはた	東京都台東区池之端			上野・浅草・両国	上野	二酸化炭素泉	\N	\N	\N	\N
1199	773	貞千代温泉	さだちよおんせん	東京都台東区浅草			上野・浅草・両国	浅草	含鉄泉	\N	\N	\N	\N
1200	774	大島温泉	おおしまおんせん	東京都大島町泉津			伊豆七島・小笠原	伊豆七島・小笠原	単純温泉	\N	\N	\N	\N
1201	775	新島温泉	にいじまおんせん	東京都新島村字山津山川			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
1202	776	間々下温泉	まましたおんせん	東京都新島村間々下			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
1203	777	湯柱温泉	ゆばしらおんせん	東京都神津島村			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
1204	778	汐間温泉	しおまおんせん	東京都八丈町末吉			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
1205	779	湯浜温泉	ゆはまおんせん	東京都八丈町樫立			伊豆七島・小笠原	伊豆七島・小笠原	硫黄泉	\N	\N	\N	\N
1206	780	氷川郷麻葉の湯	ひかわごうあさはのゆ	東京都奥多摩町氷川			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
1207	781	奥多摩温泉	おくたまおんせん	東京都西多摩郡奥多摩町棚沢			青梅・奥多摩	奥多摩	単純温泉	\N	\N	\N	\N
1208	782	鶴の湯温泉	つるのゆおんせん	東京都西多摩郡奥多摩町川野			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
1209	783	三原山温泉	みはらやまおんせん	東京都大島町泉津字木積場			伊豆七島・小笠原	伊豆七島・小笠原	単純温泉	\N	\N	50131	\N
1210	784	黒潮温泉紅椿の湯	くろしおおんせんべにつばきのゆ	東京都大島町元町			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	50131	\N
1211	2426	麻布十番温泉	あざぶじゅうばんおんせん	東京都港区麻布十番1-5-22			六本木・麻布・赤坂・青山	六本木・麻布・虎ノ門	その他	\N	\N	\N	\N
1212	2651	大江戸温泉	おおえどおんせん	東京都江東区青海２－５７			お台場・汐留・新橋・品川	お台場・汐留・竹芝	ナトリウム塩化物泉	\N	\N	\N	\N
1213	2706	蒲田黒湯温泉	かまたくろゆおんせん	東京都大田区西蒲田8-1-5			蒲田・大森・羽田周辺	蒲田・大森・羽田周辺	その他	\N	\N	50501	\N
1214	2708	地鉈温泉	じなたおんせん	東京都新島村式根島			伊豆七島・小笠原	伊豆七島・小笠原	炭酸水素塩泉	\N	\N	\N	\N
1216	2723	浅草観音温泉	あさくさかんのんおんせん	東京都台東区浅草2-7-26			上野・浅草・両国	浅草	鉱泉	\N	\N	\N	\N
1217	810	飯山温泉	いいやまおんせん	神奈川県厚木市飯山			厚木・海老名	厚木・伊勢原	単純温泉	\N	\N	50811	\N
1218	811	広沢寺温泉　(東丹沢七沢)	こうたくじおんせん	神奈川県厚木市七沢			厚木・海老名	厚木・伊勢原	アルカリ単純泉	\N	\N	\N	\N
1219	812	かぶと湯温泉　(東丹沢七沢)	かぶとゆおんせん	神奈川県厚木市七沢			厚木・海老名	厚木・伊勢原	単純温泉	\N	\N	\N	\N
1220	813	七沢温泉　(東丹沢七沢)	ななさわおんせん	神奈川県厚木市七沢			厚木・海老名	厚木・伊勢原	単純温泉	\N	\N	50548	\N
1221	814	綱島温泉	つなしまおんせん	神奈川県横浜市港北区綱島			横浜	新横浜・青葉	単純温泉	\N	\N	\N	\N
1222	815	阿部倉温泉	あべくらおんせん	神奈川県横須賀市阿部倉町			横須賀・三浦	横須賀	炭酸水素塩泉	\N	\N	\N	\N
1223	816	大楠温泉	おおくすおんせん	神奈川県横須賀市秋谷			横須賀・三浦	横須賀	単純温泉	\N	\N	\N	\N
1224	821	伊勢原温泉	いせはらおんせん	神奈川県伊勢原市上粕屋西富岡			厚木・海老名	厚木・伊勢原	硫黄泉	\N	\N	\N	\N
1225	822	鶴巻温泉	つるまきおんせん	神奈川県秦野市鶴巻北			足柄	秦野	炭酸水素塩泉	\N	\N	\N	\N
1226	823	中川温泉	なかがわおんせん	神奈川県足柄上郡山北町中川			足柄	丹沢	塩化物泉	\N	\N	50147	\N
1227	824	箱根湯本温泉	はこねゆもとおんせん	神奈川県足柄下郡箱根町湯本			箱根	箱根	単純温泉	\N	\N	50134	\N
1228	825	塔之沢温泉	とうのさわおんせん	神奈川県足柄下郡箱根町塔之沢			箱根	箱根	塩化物泉	\N	\N	50135	\N
1229	826	仙石原温泉	せんごくはらおんせん	神奈川県足柄下郡箱根町仙石原			箱根	箱根	単純温泉	\N	\N	50136	\N
1230	827	姥子温泉	うばこおんせん	神奈川県足柄下郡箱根町元箱根			箱根	箱根	硫酸塩泉	\N	\N	50137	\N
1231	828	強羅温泉	ごうらおんせん	神奈川県足柄下郡箱根町強羅			箱根	箱根	含鉄泉	\N	\N	50138	\N
1232	829	宮ノ下温泉	みやのしたおんせん	神奈川県足柄下郡箱根町宮ノ下			箱根	箱根	含鉄泉	\N	\N	50139	\N
1233	830	小涌谷温泉	こわきだにおんせん	神奈川県足柄下郡箱根町小涌谷			箱根	箱根	塩化物泉	\N	\N	50140	\N
1234	831	堂ヶ島温泉	どうがしまおんせん	神奈川県足柄下郡箱根町宮ノ下			箱根	箱根	硫黄泉	\N	\N	50141	\N
1235	832	大平台温泉	おおひらだいおんせん	神奈川県足柄下郡箱根町大平台			箱根	箱根	塩化物泉	\N	\N	50142	\N
1236	833	湯ノ花沢温泉	ゆのはなざわおんせん	神奈川県足柄下郡箱根町湯の花高原			箱根	箱根	塩化物泉	\N	\N	50554	\N
1237	834	芦之湯温泉	あしのゆおんせん	神奈川県足柄下郡箱根町芦之湯			箱根	箱根	塩化物泉	\N	\N	50143	\N
1238	835	蛸川温泉	たこがわおんせん	神奈川県足柄下郡箱根町元箱根			箱根	箱根	塩化物泉	\N	\N	50797	\N
1239	836	芦ノ湖温泉	あしのこおんせん	神奈川県足柄下郡箱根町元箱根			箱根	箱根	硫黄泉	\N	\N	50144	\N
1240	837	奥湯河原温泉	おくゆがわらおんせん	神奈川県足柄下郡湯河原町宮上			湯河原・真鶴・小田原	湯河原・真鶴	硫黄泉	\N	\N	\N	\N
1241	838	湯河原温泉	ゆがわらおんせん	神奈川県足柄下郡湯河原町宮上			湯河原・真鶴・小田原	湯河原・真鶴	硫酸塩泉	\N	\N	50132	\N
1242	839	中里温泉	なかざとおんせん	神奈川県横浜市南区中里			横浜	横浜・ベイエリア	硫酸塩泉	\N	\N	\N	\N
1243	840	三浦マホロバ温泉	みうらまほろばおんせん	神奈川県三浦市南下浦町上宮田			横須賀・三浦	三浦	塩化物泉	\N	\N	50133	\N
1244	841	木賀温泉	きがおんせん	神奈川県足柄下郡箱根町木賀			箱根	箱根	塩化物泉	\N	\N	50139	\N
1245	2204	大涌谷温泉	おおわくだにおんせん	神奈川県足柄下郡箱根町仙石原4251（大湧谷）			箱根	箱根	硫酸塩泉	\N	\N	\N	\N
1246	2205	二ノ平温泉	にのたいらおんせん	神奈川県足柄下郡箱根町二ノ平			箱根	箱根	単純温泉	\N	\N	50145	\N
1247	2206	根府川温泉	ねふかわおんせん	神奈川県小田原市根府川字前横山655-55			湯河原・真鶴・小田原	小田原	塩化物泉	\N	\N	50146	\N
1248	2252	宮城野温泉	みやぎのおんせん	神奈川県足柄下郡箱根町宮城野			箱根	箱根	単純温泉	\N	\N	\N	\N
1249	2400	箱根底倉温泉	はこねそこくらおんせん	神奈川県足柄下郡箱根町底倉240-1			箱根	箱根	硫酸塩泉	\N	\N	50723	\N
1250	2427	やまと温泉	やまとおんせん	神奈川県大和市下鶴間1777-3			厚木・海老名	海老名・大和	酸性泉	\N	\N	\N	\N
1251	2573	野比温泉	のびおんせん	神奈川県横須賀市野比4-3-5			横須賀・三浦	横須賀	ナトリウム塩化物泉	\N	\N	\N	\N
1252	2778	川崎有馬温泉	かわさきありまおんせん	神奈川県川崎市宮前区東有馬3-5-31			川崎	川崎	炭酸水素塩泉	\N	\N	50543	\N
1253	2822	新横浜温泉	しんよこはまおんせん	神奈川県横浜市港北区新横浜2-3-1			横浜	横浜・ベイエリア	硫酸塩泉	\N	\N	50655	\N
1254	2903	元箱根温泉	もとはこねおんせん	神奈川県足柄下郡箱根町湖尻１５９－１５			箱根	箱根	単純温泉	\N	\N	50737	\N
1255	2933	大磯温泉	おおいそおんせん	神奈川県中郡大磯町国府本郷５４６			湘南・鎌倉	平塚・大磯	単純炭酸泉	\N	\N	50762	\N
1256	2965	新姥子温泉	しんうばこおんせん	神奈川県足柄下郡箱根町仙石原			箱根	箱根	ナトリウム塩化物泉	\N	\N	50137	\N
1257	3020	南足柄温泉	みなみあしがらおんせん	神奈川県南足柄市広町１５２０－１			足柄	南足柄・上郡	硫酸塩泉	\N	\N	50839	\N
1258	3109	あしがら温泉	あしがらおんせん	神奈川県足柄上郡大井町柳260			足柄	南足柄・上郡	その他	\N	\N	50839	\N
1259	1007	鶴温泉	つるおんせん	山梨県北都留郡上野原町鶴島			大月・都留	大月・都留	塩化物泉	\N	\N	\N	\N
1260	1008	金山温泉	かなやまおんせん	山梨県大月市賑岡町奥山			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
1261	1009	橋倉鉱泉	はしくらおんせん	山梨県大月市賑岡町奥山			大月・都留	大月・都留	硫酸塩泉	\N	\N	\N	\N
1263	1011	城山温泉	しろやまおんせん	山梨県都留市上谷			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
1264	1012	法能温泉	ほうのうおんせん	山梨県都留市法能			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
1265	1013	湯之沢温泉	ゆのさわおんせん	山梨県都留市夏狩			大月・都留	大月・都留	単純温泉	\N	\N	\N	\N
1266	1014	道志の湯温泉	どうしのゆおんせん	山梨県南都留郡道市村大室指			大月・都留	大月・都留	硫酸塩泉	\N	\N	\N	\N
1267	1015	道志温泉	どうしおんせん	山梨県南都留郡道志村			大月・都留	大月・都留	含鉄泉	\N	\N	\N	\N
1268	1016	富士山温泉	ふじさんおんせん	山梨県富士吉田市上吉田			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	硫酸塩泉	\N	\N	50955	\N
1269	1017	忍野温泉	おしのおんせん	山梨県南都留郡忍野村忍草			山中湖・忍野	山中湖・忍野	単純温泉	\N	\N	\N	\N
1270	1018	田野温泉	たのおんせん	山梨県東山梨郡大和村田野			石和・勝沼・塩山	石和・勝沼・塩山	硫黄泉	\N	\N	\N	\N
1271	1019	嵯峨塩温泉	さがしおおんせん	山梨県塩山市牛奥嵯峨塩			石和・勝沼・塩山	石和・勝沼・塩山	二酸化炭素泉	\N	\N	\N	\N
1272	1020	塩山温泉	えんざんおんせん	山梨県塩山市上於曽			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1273	1021	三条の湯	さんじょうのゆ	山梨県北都留郡丹波山村奥秋			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
1274	1022	天科温泉	あましなおんせん	山梨県東山梨郡三富村上釜口			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1275	1023	川浦温泉	かわうらおんせん	山梨県東山梨郡三富村川浦			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1276	1024	三富温泉	みとみおんせん	山梨県東山梨郡三富村川浦			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50154	\N
1277	1025	岩下温泉	いわしたおんせん	山梨県山梨市上岩下			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1278	1026	春日居温泉	かすがいおんせん	山梨県東山梨郡春日居町寺本			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50154	\N
1279	1027	石和温泉	いさわおんせん	山梨県東八代郡石和町			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50154	\N
1280	1028	積翠寺温泉	せきすいじおんせん	山梨県甲府市上積翠寺町			甲府・湯村・昇仙峡	甲府	含鉄泉	\N	\N	50148	\N
1281	1029	甲府湯村温泉	こうふゆむらおんせん	山梨県甲府市湯村			甲府・湯村・昇仙峡	甲府	単純温泉	\N	\N	50149	\N
1282	1030	甲府温泉	こうふおんせん	山梨県甲府市丸ノ内			甲府・湯村・昇仙峡	甲府	硫黄泉	\N	\N	50150	\N
1283	1031	神の湯温泉	かみのゆおんせん	山梨県北巨摩郡双葉町竜地			甲府・湯村・昇仙峡	甲府	硫酸塩泉	\N	\N	50151	\N
1284	1032	黒森鉱泉	くろもりおんせん	山梨県北巨摩郡須玉町小尾			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	塩化物泉	\N	\N	\N	\N
1285	1033	増富ラジウム温泉	ますとみらじうむおんせん	山梨県北巨摩郡須玉町小尾			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	塩化物泉	\N	\N	50159	\N
1286	1034	塩沢温泉	しおざわおんせん	山梨県北巨摩郡白州町大武川			南アルプス	白州・武川	放射能泉	\N	\N	\N	\N
1287	1035	深沢温泉	ふかさわおんせん	山梨県北巨摩郡長坂町長坂上条			八ヶ岳・小淵沢・清里・大泉	小淵沢	放射能泉	\N	\N	\N	\N
1288	1036	藪の湯温泉	やぶのゆおんせん	山梨県北巨摩郡武川村柳沢			南アルプス	白州・武川	硫黄泉	\N	\N	50160	\N
1289	1037	穴山温泉	あなやまおんせん	山梨県韮崎市穴山町			八ヶ岳・小淵沢・清里・大泉	韮崎	単純温泉	\N	\N	\N	\N
1290	1038	御座石鉱泉	ございしおんせん	山梨県韮崎市円野町御座石山			八ヶ岳・小淵沢・清里・大泉	韮崎	含鉄泉	\N	\N	\N	\N
1291	1039	青木鉱泉	あおきこうせん	山梨県韮崎市清哲町青木			八ヶ岳・小淵沢・清里・大泉	韮崎	炭酸水素塩泉	\N	\N	\N	\N
1292	1040	芦安温泉	あしやすおんせん	山梨県中巨摩郡芦安村芦倉			南アルプス	南アルプス・芦安・白根	含鉄泉	\N	\N	\N	\N
1293	1041	桃の木温泉	もものきおんせん	山梨県中巨摩郡芦安村安通			南アルプス	南アルプス・芦安・白根	含鉄泉	\N	\N	50644	\N
1294	1042	赤石温泉	あかいしおんせん	山梨県南巨摩郡増穂町平林			下部・身延・早川	下部・身延・早川	単純温泉	\N	\N	\N	\N
1295	1043	奈良田温泉	ならだおんせん	山梨県南巨摩郡早川町奈良田			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1296	1044	西山温泉	にしやまおんせん	山梨県南巨摩郡早川町清岡			下部・身延・早川	下部・身延・早川	含鉄泉	\N	\N	\N	\N
1297	1045	十谷温泉	じっこくおんせん	山梨県南巨摩郡鰍沢町十谷			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1298	1046	中富・手打沢温泉	なかとみ・てうちざわおんせん	山梨県南巨摩郡中富町手打沢			下部・身延・早川	下部・身延・早川	硫酸塩泉	\N	\N	\N	\N
1299	1047	常葉温泉	ときわおんせん	山梨県西八代郡下部町常葉			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1300	1048	下部温泉	しもべおんせん	山梨県西八代郡下部町			下部・身延・早川	下部・身延・早川	単純温泉	\N	\N	50158	\N
1301	1049	湯沢温泉	ゆざわおんせん	山梨県西八代郡下部町上之平			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1302	1050	塩之沢温泉	しおのさわおんせん	山梨県南巨摩郡身延町塩之沢			下部・身延・早川	下部・身延・早川	単純温泉	\N	\N	\N	\N
1303	1051	塩沢温泉	しおざわおんせん	山梨県南巨摩郡身延町塩沢			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1304	1052	身延温泉	みのぶおんせん	山梨県南巨摩郡身延町身延			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1305	1053	相又峡温泉	あいまたきょうおんせん	山梨県南巨摩郡身延町相又			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1306	1054	船山温泉	ふなやまおんせん	山梨県南巨摩郡南部町本郷			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1307	1055	十枚荘温泉	じゅうまいそうおんせん	山梨県南巨摩郡南部町成島			下部・身延・早川	下部・身延・早川	二酸化炭素泉	\N	\N	\N	\N
1308	1056	内船温泉	うつふなおんせん	山梨県南巨摩郡南部町内船			下部・身延・早川	下部・身延・早川	含鉄泉	\N	\N	\N	\N
1309	1057	佐野川温泉	さのがわおんせん	山梨県南巨摩郡南部町井出			下部・身延・早川	下部・身延・早川	放射能泉	\N	\N	\N	\N
1310	1058	万沢温泉	まんざわおんせん	山梨県南巨摩郡富沢町万沢			下部・身延・早川	下部・身延・早川	放射能泉	\N	\N	\N	\N
1311	1059	富士河口湖温泉郷	ふじかわぐちこおんせんきょう	山梨県南都留郡河口湖町船津			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	硫黄泉	\N	\N	50157	\N
1312	1060	竜王ラドン温泉	りゅうおうらどんおんせん	山梨県中巨摩郡竜王町富竹新田			甲府・湯村・昇仙峡	甲府	硫黄泉	\N	\N	50152	\N
1313	2210	桔梗温泉	ききょうおんせん	山梨県中巨摩郡敷島町亀沢6949			甲府・湯村・昇仙峡	甲府	単純温泉	\N	\N	50153	\N
1314	2263	スパティオ小淵沢延命の湯	すぱてぃおこぶちざわえんめいのゆ	山梨県北巨摩郡小淵沢町2968-1			八ヶ岳・小淵沢・清里・大泉	小淵沢	塩化物泉	\N	\N	\N	\N
1315	2268	丘の公園　アクアリゾート清里	おかのこうえんあくありぞーときよさと	山梨県北巨摩郡高根町清里念場原3545-5番地			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	単純温泉	\N	\N	\N	\N
1316	2269	富士眺望乃元湯『湯?園』	ふじちょうぼうのもとゆ　ゆ?えん	山梨県南都留郡勝山村3282-2			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	その他	\N	\N	\N	\N
1317	2333	山中湖温泉	やまなかこおんせん	山梨県南都留郡山中湖村			山中湖・忍野	山中湖・忍野	ナトリウム塩化物泉	\N	\N	50156	\N
1318	2375	須玉の湯	すたまのゆ	山梨県北巨摩郡須玉町若神子5248-6			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	炭酸水素塩泉	\N	\N	\N	\N
1319	2428	はやぶさ温泉	はやぶさおんせん	山梨県東山梨郡牧丘町隼818-1			石和・勝沼・塩山	石和・勝沼・塩山	炭酸水素塩泉	\N	\N	\N	\N
1320	2429	芭蕉月待ちの湯	ばしょうつきまちのゆ	山梨県都留市戸沢874			大月・都留	大月・都留	ナトリウム塩化物泉	\N	\N	\N	\N
1321	2430	多摩源流小菅温泉	たまげんりゅうこすげおんせん	山梨県北都留郡小菅村3445			大月・都留	大月・都留	ナトリウム塩化物泉	\N	\N	\N	\N
1322	2431	上九の湯	かみくのゆ	山梨県西八代郡上九一色村小関1174			甲府・湯村・昇仙峡	甲府	塩化物泉	\N	\N	\N	\N
1323	2432	まほらの湯	まほらのゆ	山梨県南巨摩郡増穂町長沢1757-2			下部・身延・早川	下部・身延・早川	鉱泉	\N	\N	\N	\N
1324	2433	なんぶの湯	なんぶのゆ	山梨県南巨摩郡南部町内船8106-1			下部・身延・早川	下部・身延・早川	アルカリ単純泉	\N	\N	\N	\N
1325	2434	草塩温泉	くさしおおんせん	山梨県南巨摩郡早川町草塩321			下部・身延・早川	下部・身延・早川	ナトリウム塩化物泉	\N	\N	\N	\N
1326	2435	奥山温泉	おくやまおんせん	山梨県南巨摩郡富沢町福士26842			下部・身延・早川	下部・身延・早川	炭酸水素塩泉	\N	\N	\N	\N
1327	2436	奈良田の里温泉	ならだのさとおんせん	山梨県南巨摩郡早川町奈良田486			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1328	2437	天恵泉	てんけいせん	山梨県中巨摩郡白根町駒場140-1			南アルプス	南アルプス・芦安・白根	アルカリ単純泉	\N	\N	\N	\N
1329	2438	たかねの湯	たかねのゆ	山梨県北巨摩郡高根町箕輪新町95			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	弱アルカリ性低張性泉	\N	\N	\N	\N
1330	2439	泉温泉健康センター	いずみおんせんけんこうせんたー	山梨県北巨摩郡大泉村戸1880			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	その他	\N	\N	\N	\N
1331	2440	茅の湯	かやのゆ	山梨県北巨摩郡明野村浅尾5259-950			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	アルカリ単純泉	\N	\N	\N	\N
1332	2441	韮崎温泉	にらさきおんせん	山梨県韮崎市中田町中条1800-1			八ヶ岳・小淵沢・清里・大泉	韮崎	その他	\N	\N	\N	\N
1333	2544	八ヶ岳南麓温泉	やつがたけなんろくおんせん	山梨県北巨摩郡大泉村西井出字石堂8240-1039			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	単純温泉	\N	\N	\N	\N
1334	2604	ほったらかし温泉	ほったらかしおんせん	山梨県山梨市矢坪1669-18			石和・勝沼・塩山	石和・勝沼・塩山	その他	\N	\N	\N	\N
1335	2605	みさかの湯	みさかのゆ	山梨県東八代郡御坂町成田2200			石和・勝沼・塩山	石和・勝沼・塩山	硫酸塩泉	\N	\N	\N	\N
1336	2606	丹波山温泉　のめこい湯	たばやまおんせん　のめこいゆ	山梨県北都留郡丹波山村778－2			大月・都留	大月・都留	その他	\N	\N	\N	\N
1337	2607	秋山雛鶴の湯	あきやまひなづるのゆ	山梨県南都留郡秋山村			大月・都留	大月・都留	塩化物泉	\N	\N	\N	\N
1338	2608	いずみの湯	いずみのゆ	山梨県南都留郡足和田村西湖			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	弱アルカリ性低張性泉	\N	\N	\N	\N
1339	2609	むかわの湯	むかわのゆ	山梨県北巨摩郡武川村牧原1322			南アルプス	白州・武川	炭酸水素塩泉	\N	\N	\N	\N
1340	2610	清春温泉	きよはるおんせん	山梨県北巨摩郡長坂町中丸4391			八ヶ岳・小淵沢・清里・大泉	小淵沢	アルカリ単純泉	\N	\N	\N	\N
1341	2611	甲斐大泉温泉	かいおおいずみおんせん	山梨県北巨摩郡大泉村82401			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	その他	\N	\N	\N	\N
1342	2683	富士青木ヶ原樹海温泉	ふじあおきがはらじゅかいおんせん	山梨県南都留郡鳴沢村字ジラゴンノ８５３２－５			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	アルカリ単純泉	\N	\N	50482	\N
1343	2700	甲斐大泉温泉　パノラマの湯	かいおおいずみおんせん　ぱのらまのゆ	山梨県北巨摩郡大泉村西井出８２４０－１			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	弱アルカリ性低張性泉	\N	\N	50491	\N
1344	2715	雨畑湖温泉	あめはたこおんせん	山梨県南巨摩郡早川町雨畑699			下部・身延・早川	下部・身延・早川	その他	\N	\N	\N	\N
1345	2734	山中湖平野温泉	やまなかこひらのおんせん	山梨県南都留郡山中湖村平野字中砂１５４８番			山中湖・忍野	山中湖・忍野	ナトリウム塩化物泉	\N	\N	50505	\N
1346	2796	蓼科温泉　石遊の湯	たてしなおんせん　いしやすのゆ	山梨県北杜市小淵沢町上の原3989-1			八ヶ岳・小淵沢・清里・大泉	小淵沢	炭酸水素塩泉	\N	\N	50193	\N
1347	2812	ふじやま温泉	ふじやまおんせん	山梨県富士吉田市新西原4丁目1524番			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	アルカリ単純泉	\N	\N	50646	\N
1348	2901	笛吹川温泉	ふえふきがわおんせん	山梨県甲州市塩山三日市場2512			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50735	\N
1349	2938	KEEP　温泉	きーぷおんせん	山梨県北杜市大泉町西井出石堂８２４０			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	弱アルカリ性低張性泉	\N	\N	50766	\N
1350	3014	信玄温泉	しんげんおんせん	山梨県甲府市国母８－１－１			甲府・湯村・昇仙峡	甲府	その他	\N	\N	50827	\N
1351	3015	アーティストの湯	あーてぃすとのゆ	山梨県北杜市小淵沢町１０２４９－１			八ヶ岳・小淵沢・清里・大泉	小淵沢	塩化物泉	\N	\N	50828	\N
1352	3098	光源の里温泉	こうげんのさとおんせん	山梨県南巨摩郡早川町大原野651			下部・身延・早川	下部・身延・早川	炭酸水素塩泉	\N	\N	50896	\N
1353	3116	明野温泉　茅の湯	あけのおんせん　かやのゆ	山梨県北杜市明野町浅尾5259-950			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	その他	\N	\N	50904	\N
1354	3166	天然美肌温泉　クララの湯	てんねんびはだおんせん　くららのゆ	山梨県北杜市明野町浅尾5259-950			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	塩化物泉	\N	\N	50937	\N
1355	3176	韮崎船山温泉	にらさきふなやまおんせん	山梨県韮崎市大草町若尾1340			八ヶ岳・小淵沢・清里・大泉	韮崎	炭酸水素塩泉	\N	\N	50942	\N
1356	3266	湧暇李の里 樹園	ゆーかりのさと　じゅえん	山梨県南アルプス市小笠原376番地			南アルプス	南アルプス・芦安・白根	弱アルカリ性低張性泉	\N	\N	50982	\N
1357	3282	富士　弁天温泉	ふじ　べんてんおんせん	山梨県南都留郡富士河口湖町船津字北八ッ倉5156番			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	弱アルカリ性低張性泉	\N	\N	50157	\N
1358	3310	よりみちの湯温泉	よりみちのゆおんせん	山梨県都留市つる1‐13‐31			大月・都留	大月・都留	塩化物泉	\N	\N	50989	\N
1359	842	志賀山温泉	しがやまおんせん	長野県下高井郡山ノ内町志賀高原ジャイアント			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫黄泉	\N	\N	50168	\N
1360	843	熊の湯温泉	くまのゆおんせん	長野県下高井郡山ノ内町志賀高原熊の湯			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫黄泉	\N	\N	50168	\N
1361	844	木戸池温泉	きどいけおおんせん	長野県下高井郡山ノ内町志賀高原木戸池			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50168	\N
1362	845	幕岩温泉	まくいわおんせん	長野県下高井郡山ノ内町平隠			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫黄泉	\N	\N	50168	\N
1363	846	発哺温泉	ほっぽおんせん	長野県下高井郡山ノ内町志賀高原発哺温泉			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50168	\N
1364	847	中条温泉	なかじょうおんせん	長野県下水内郡栄村北信			野沢温泉・木島平・秋山郷	秋山郷	硫黄泉	\N	\N	50166	\N
1365	848	野沢温泉	のざわおんせん	長野県下高井郡野沢温泉村豊郷			野沢温泉・木島平・秋山郷	野沢温泉	単純温泉	\N	\N	50167	\N
1366	849	屋敷温泉	やしきおんせん	長野県下水内郡栄村屋敷			野沢温泉・木島平・秋山郷	秋山郷	硫黄泉	\N	\N	\N	\N
1367	850	湯ノ沢温泉	ゆのさわおんせん	長野県下水内郡栄村上野原			野沢温泉・木島平・秋山郷	秋山郷	硫黄泉	\N	\N	\N	\N
1368	851	和山温泉	わやまおんせん	長野県下水内郡栄村和山			野沢温泉・木島平・秋山郷	秋山郷	硫酸塩泉	\N	\N	\N	\N
1369	852	切明温泉	きりあけおんせん	長野県下水内郡栄村切明			野沢温泉・木島平・秋山郷	秋山郷	塩化物泉	\N	\N	50166	\N
1370	853	黄金の湯鬼島温泉	おうごんのゆきじまおんせん	長野県下高井郡木島平村大字上木島			野沢温泉・木島平・秋山郷	木島平	単純温泉	\N	\N	\N	\N
1371	854	北志賀温泉高社の湯	きたしがこうげんこうしゃのゆ	長野県下高井郡山ノ内町夜間瀬			志賀・北志賀・湯田中渋	北志賀・竜王・奥志賀	塩化物泉	\N	\N	50169	\N
1372	855	穂波温泉	ほなみおんせん	長野県下高井郡山ノ内町佐野穂波			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	50170	\N
1373	856	上林温泉	かんばやしおんせん	長野県下高井郡山ノ内町平穏上林			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	50170	\N
1374	857	地獄谷温泉	じごくだにおんせん	長野県下高井郡山ノ内町平穏			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1375	858	角間温泉	かくまおんせん	長野県下高井郡山ノ内町佐野角間			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫酸塩泉	\N	\N	50170	\N
1376	859	川原小屋温泉	かわちごやおんせん	長野県下高井郡山ノ内町志賀高原			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1377	860	湯田中温泉	ゆだなかおんせん	長野県下高井郡山ノ内町平穏湯田中			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50170	\N
1378	861	新湯田中温泉	しんゆだなかおんせん	長野県下高井郡山ノ内町平穏新湯田中			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50170	\N
1379	862	星川温泉	ほしかわおんせん	長野県下高井郡山ノ内町平穏星川			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	50170	\N
1380	863	安代温泉	あんだいおんせん	長野県下高井郡山ノ内町平穏安代			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫酸塩泉	\N	\N	50170	\N
1381	864	渋温泉	しぶおんせん	長野県下高井郡山ノ内町平穏渋			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫酸塩泉	\N	\N	50170	\N
1382	865	硯川温泉	すずりかわおんせん	長野県下高井郡山ノ内町志賀高原			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1383	866	石の湯温泉	いしのゆおんせん	長野県下高井郡山ノ内町志賀高原石の湯			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1384	867	奥山田温泉	おくやまだおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	塩化物泉	\N	\N	50517	\N
1385	868	七味温泉	しちみおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	単純温泉	\N	\N	50517	\N
1386	869	五色温泉	ごしきおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	硫黄泉	\N	\N	50517	\N
1387	870	山田温泉	やまだおんせん	長野県上高井郡高山村奥山田牛窪			長野・戸隠・小布施	小布施	単純温泉	\N	\N	50517	\N
1388	871	蕨温泉	わらびおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	硫黄泉	\N	\N	50517	\N
1389	872	須坂温泉	すざかおんせん	長野県須坂市大谷町			菅平・峰の原	須坂・菅平・峰の原	硫黄泉	\N	\N	\N	\N
1390	873	仙仁温泉	せにおんせん	長野県須坂市仙仁			菅平・峰の原	須坂・菅平・峰の原	硫黄泉	\N	\N	\N	\N
1391	874	保科温泉	ほしなおんせん	長野県長野市若穂保科			長野・戸隠・小布施	長野・飯綱・戸隠	塩化物泉	\N	\N	\N	\N
1392	875	あずまや温泉	あずまやおんせん	長野県小県郡真田町十の原			菅平・峰の原	須坂・菅平・峰の原	塩化物泉	\N	\N	50176	\N
1393	876	黒姫温泉	くろひめおんせん	長野県上水内郡信濃町野尻山桑			斑尾・飯山・信濃町・黒姫	信濃町・黒姫	単純温泉	\N	\N	50171	\N
1394	877	山の神温泉	やまのかみおんせん	長野県長野市箱清水			長野・戸隠・小布施	長野・飯綱・戸隠	単純温泉	\N	\N	\N	\N
1395	878	善光寺温泉	せんこうじおんせん	長野県長野市芋井広瀬			長野・戸隠・小布施	長野・飯綱・戸隠	硫黄泉	\N	\N	\N	\N
1396	879	中尾山温泉	なかおやまおんせん	長野県長野市篠ノ井小松原			長野・戸隠・小布施	長野・飯綱・戸隠	単純温泉	\N	\N	50944	\N
1397	880	松代温泉	まつしろおんせん	長野県長野市松代町東条			長野・戸隠・小布施	長野・飯綱・戸隠	炭酸水素塩泉	\N	\N	\N	\N
1398	881	森温泉	もりおんせん	長野県更埴市森			戸倉上山田・千曲	戸倉上山田・千曲	単純温泉	\N	\N	\N	\N
1399	882	稲荷山温泉	いなりやまおんせん	長野県更埴市稲荷山			戸倉上山田・千曲	戸倉上山田・千曲	塩化物泉	\N	\N	\N	\N
1400	883	八幡温泉	やわたおんせん	長野県更埴市八幡			戸倉上山田・千曲	戸倉上山田・千曲	硫黄泉	\N	\N	\N	\N
1401	884	小谷温泉	おたりおんせん	長野県北安曇郡小谷村中土			白馬・小谷	栂池・小谷	含鉄泉	\N	\N	\N	\N
1402	885	姫川温泉	ひめかわおんせん	長野県北安曇郡小谷村大字北小谷9922－3			白馬・小谷	栂池・小谷	単純温泉	\N	\N	50918	\N
1403	886	島温泉	しまおんせん	長野県北安曇郡小谷村北小谷島			白馬・小谷	栂池・小谷	硫黄泉	\N	\N	\N	\N
1404	887	来馬温泉	くるまおんせん	長野県北安曇郡小谷村北小谷来馬			白馬・小谷	栂池・小谷	単純温泉	\N	\N	\N	\N
1405	888	奉納温泉	ぶのうおんせん	長野県北安曇郡小谷村奉納			白馬・小谷	栂池・小谷	炭酸水素塩泉	\N	\N	\N	\N
1406	889	下里瀬温泉	くだりせおんせん	長野県北安曇郡小谷村下里瀬			白馬・小谷	栂池・小谷	ナトリウム塩化物泉	\N	\N	\N	\N
1407	890	白馬鑓温泉	はくばやりおんせん	長野県北安曇郡白馬村白馬山国有林内			白馬・小谷	白馬村	炭酸水素塩泉	\N	\N	\N	\N
1408	891	八方温泉	はっぽうおんせん	長野県北安曇郡白馬村八方			白馬・小谷	白馬村	硫黄泉	\N	\N	50182	\N
1409	892	裾花峡温泉	すそばなきょうおんせん	長野県長野市南長野妻科９８			長野・戸隠・小布施	長野・飯綱・戸隠	炭酸水素塩泉	\N	\N	50954	\N
1410	893	不動温泉	ふどうおんせん	長野県上水内郡信州新町日原西			長野・戸隠・小布施	長野・飯綱・戸隠	単純温泉	\N	\N	\N	\N
1411	894	金熊温泉	かなくまおんせん	長野県北安曇郡八坂村矢下			安曇野・大町	大町	塩化物泉	\N	\N	\N	\N
1412	895	木崎湖温泉	きざきこおんせん	長野県大町市平森・山崎			安曇野・大町	大町	炭酸水素塩泉	\N	\N	\N	\N
1413	896	大町温泉郷	おおまちおんせんきょう	長野県大町市平			安曇野・大町	大町	硫黄泉	\N	\N	50184	\N
1414	897	葛温泉	くずおんせん	長野県大町市平高瀬入			安曇野・大町	大町	単純温泉	\N	\N	\N	\N
1415	898	乗鞍高原温泉	のりくらこうげんおんせん	長野県南安曇郡安曇村乗鞍高原			松本市（上高地・乗鞍・白骨・野麦峠）	乗鞍	ナトリウム塩化物泉	\N	\N	50187	\N
1416	900	高峰温泉	たかみねおんせん	長野県小諸市高峰高原			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1417	901	小瀬温泉	こせおんせん	長野県北佐久郡軽井沢町小瀬			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1418	902	軽井沢千ヶ滝温泉	かるいざわせんがたきおんせん	長野県北佐久郡軽井沢町千ヶ滝			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	\N	\N
1419	903	塩壺温泉	しおつぼおんせん	長野県北佐久郡軽井沢町塩壺			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	50178	\N
1420	904	星野温泉	ほしのおんせん	長野県北佐久郡軽井沢町星野			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1421	905	ゆうすげ温泉	ゆうすげおんせん	長野県北佐久郡軽井沢町古宿			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1422	906	塩沢温泉	しおざわおんせん	長野県北佐久郡軽井沢町塩沢			軽井沢・佐久・小諸	佐久・小諸	硫酸塩泉	\N	\N	\N	\N
1423	907	初谷温泉	しょやおんせん	長野県佐久市内山初谷			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	\N	\N
1424	908	内山鉱泉	うちやまこうせん	長野県佐久市内山相立			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	50179	\N
1425	909	洞源湖温泉	どうげんこおんせん	長野県佐久市大字前山字大掘			軽井沢・佐久・小諸	佐久・小諸	二酸化炭素泉	\N	\N	\N	\N
1426	910	不老温泉	ふろうおんせん	長野県南佐久郡臼田町山ノ神			軽井沢・佐久・小諸	佐久・小諸	二酸化炭素泉	\N	\N	\N	\N
1427	911	曽原の湯温泉	そばらのゆおんせん	長野県南佐久郡佐久町曽原			八ヶ岳・富士見・原村・野辺山・小海	野辺山・小海	塩化物泉	\N	\N	\N	\N
1428	913	奈良原温泉	ならはらおんせん	長野県小県郡東部町奈良原			上田・別所・鹿教湯	軽井沢	塩化物泉	\N	\N	\N	\N
1429	914	菱野温泉	ひしのおんせん	長野県小諸市菱野			軽井沢・佐久・小諸	佐久・小諸	二酸化炭素泉	\N	\N	50181	\N
1430	915	布引温泉	ぬのびきおんせん	長野県小諸市大久保			軽井沢・佐久・小諸	佐久・小諸	含鉄泉	\N	\N	50181	\N
1431	916	中棚温泉	なかだなおんせん	長野県小諸市古城区中棚			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	50180	\N
1432	917	湯の瀬温泉	ゆのせおんせん	長野県小諸市大杭			軽井沢・佐久・小諸	佐久・小諸	含鉄泉	\N	\N	\N	\N
1433	918	望月温泉	もちづきおんせん	長野県北佐久郡望月町印内			軽井沢・佐久・小諸	佐久・小諸	含鉄泉	\N	\N	\N	\N
1434	919	春日温泉	かすがおんせん	長野県北佐久郡望月町春日湯沢			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	50181	\N
1435	920	樽ヶ沢温泉	たるがわさおんせん	長野県北佐久郡立科町樽ヶ沢			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	単純温泉	\N	\N	\N	\N
1436	921	新戸倉温泉	しんとぐらおんせん	長野県埴科郡戸倉町戸倉			戸倉上山田・千曲	戸倉上山田・千曲	塩化物泉	\N	\N	\N	\N
1437	922	戸倉上山田温泉	とぐらかみやまだおんせん	長野県埴科郡戸倉町			戸倉上山田・千曲	戸倉上山田・千曲	単純温泉	\N	\N	50177	\N
1438	923	差切峡温泉	さしきりきょうおんせん	長野県東筑摩郡坂北村			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	塩化物泉	\N	\N	\N	\N
1439	924	草湯温泉	くさゆおんせん	長野県東筑摩郡坂井村道平			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	塩化物泉	\N	\N	\N	\N
1440	925	西条温泉	にしじょうおんせん	長野県東筑摩郡本城村西条			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	\N	\N
1441	926	田沢温泉	たざわおんせん	長野県小県郡青木村田沢			上田・別所・鹿教湯	上田・別所・鹿教湯	含鉄泉	\N	\N	50174	\N
1442	927	別所温泉	べっしょおんせん	長野県上田市別所温泉			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	50174	\N
1443	928	沓掛温泉	くつかけおんせん	長野県小県郡青木村沓掛			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	\N	\N
1444	929	明科温泉	あかしなおんせん	長野県東筑摩郡明科町			安曇野・大町	安曇野・穂高	硫黄泉	\N	\N	\N	\N
1445	931	霊泉寺温泉　(丸子)	れいせんじおんせん	長野県小県郡丸子町平井			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	50175	\N
1446	932	鹿教湯温泉　(丸子)	かけゆおんせん	長野県小県郡丸子町西内			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	50175	\N
1447	933	大塩温泉　(丸子)	おおしおおんせん	長野県小県郡丸子町西内			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	\N	\N
1448	934	岳の湯温泉	たけのゆおんせん	長野県小県郡武石村小沢根			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	\N	\N
1449	935	美ヶ原高原温泉	うつくしがはらこうげんおんせん	長野県小県郡和田村美ヶ原高原			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	硫黄泉	\N	\N	50191	\N
1450	936	浅間温泉	あさまおんせん	長野県松本市浅間温泉			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	浅間・美ヶ原	硫黄泉	\N	\N	50189	\N
1451	937	新浅間温泉	しんあさまおんせん	長野県松本市横田			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	浅間・美ヶ原	硫酸塩泉	\N	\N	\N	\N
1452	938	松本温泉	まつもとおんせん	長野県松本市大手			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	\N	\N
1453	939	美ヶ原温泉	うつくしがはらおんせん	長野県松本市里山辺			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	浅間・美ヶ原	単純温泉	\N	\N	50190	\N
1454	940	入山辺温泉	いりやまべおんせん	長野県松本市入山辺			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	放射能泉	\N	\N	\N	\N
1455	941	扉温泉	とびらおんせん	長野県松本市入山辺扉			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	50456	\N
1456	942	崖の湯温泉	がけのゆおんせん	長野県塩尻市片丘・松本市内田			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	含鉄泉	\N	\N	\N	\N
1457	943	毒沢温泉	どくさわおんせん	長野県諏訪郡下諏訪町星が丘			上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	単純温泉	\N	\N	50195	\N
1458	944	みどり湖温泉	みどりこおんせん	長野県塩尻市柿沢			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	\N	\N
1459	945	湯俣温泉	ゆまたおんせん	長野県大町市九日町			安曇野・大町	大町	硫黄泉	\N	\N	\N	\N
1460	947	穂高温泉郷	ほたかおんせんきょう	長野県南安曇郡穂高町有明			安曇野・大町	安曇野・穂高	硫黄泉	\N	\N	50186	\N
1461	949	上高地温泉	かみこうちおんせん	長野県南安曇郡安曇村上高地			松本市（上高地・乗鞍・白骨・野麦峠）	上高地	単純温泉	\N	\N	50579	\N
1462	950	坂巻温泉	さかまきおんせん	長野県南安曇郡安曇村坂巻			松本市（上高地・乗鞍・白骨・野麦峠）	上高地	硫黄泉	\N	\N	\N	\N
1463	951	白骨温泉	しらほねおんせん	長野県南安曇郡安曇村白骨			松本市（上高地・乗鞍・白骨・野麦峠）	白骨	硫黄泉	\N	\N	50559	\N
1464	952	奈川・新奈川温泉	ながわ・しんながわおんせん	長野県南安曇郡奈川村黒川渡			松本市（上高地・乗鞍・白骨・野麦峠）	野麦峠	炭酸水素塩泉	\N	\N	\N	\N
1465	953	渋沢温泉	しぶさわおんせん	長野県南安曇郡奈川村高原			松本市（上高地・乗鞍・白骨・野麦峠）	野麦峠	単純温泉	\N	\N	50580	\N
1466	954	海ノ口温泉	うみのくちおんせん	長野県南佐久郡南牧村海ノ口			八ヶ岳・富士見・原村・野辺山・小海	野辺山・小海	炭酸水素塩泉	\N	\N	50938	\N
1467	955	鹿ノ湯温泉	しかのゆおんせん	長野県南佐久郡南牧村海ノ口			八ヶ岳・富士見・原村・野辺山・小海	野辺山・小海	炭酸水素塩泉	\N	\N	\N	\N
1468	956	稲子湯温泉	いなごゆおんせん	長野県南佐久郡小海町稲子			八ヶ岳・富士見・原村・野辺山・小海	野辺山・小海	二酸化炭素泉	\N	\N	\N	\N
1469	957	赤岳鉱泉	あかだけおんせん	長野県茅野市豊平東岳国有林内			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	含鉄泉	\N	\N	\N	\N
1470	958	本沢温泉	ほんざわおんせん	長野県南佐久郡南牧村海尻			八ヶ岳・富士見・原村・野辺山・小海	野辺山・小海	硫酸塩泉	\N	\N	\N	\N
1471	959	唐沢鉱泉	からさわこうせん	長野県茅野市豊平			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	硫黄泉	\N	\N	50192	\N
1472	960	横谷温泉　(奥蓼科)	よこやおんせん	長野県茅野市北山			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	硫黄泉	\N	\N	\N	\N
1473	961	横谷峡温泉　(奥蓼科)	よこやきょうおんせん	長野県茅野市北山			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	含鉄泉	\N	\N	50192	\N
1474	962	明治温泉　(奥蓼科)	めいじおんせん	長野県茅野市豊平東岳			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	含鉄泉	\N	\N	50192	\N
1475	963	渋川温泉　(奥蓼科)	しぶかわおんせん	長野県茅野市北山			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	含鉄泉	\N	\N	\N	\N
1476	964	蓼科三室温泉	たてしなみむろおんせん	長野県茅野市北山			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	炭酸水素塩泉	\N	\N	50193	\N
1477	965	蓼科温泉	たてしなおんせん	長野県茅野市北山蓼科			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	酸性泉	\N	\N	50193	\N
1478	966	奥蓼科渋温泉　(奥蓼科)	おくたてしなしぶおんせん	長野県茅野市北山			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	単純温泉	\N	\N	\N	\N
1479	967	奥蓼科温泉　(奥蓼科)	おくたてしなおんせん	長野県茅野市北山			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	酸性泉	\N	\N	50192	\N
1480	968	下諏訪温泉	しもすわおんせん	長野県諏訪郡下諏訪町			上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	硫黄泉	\N	\N	50195	\N
1481	969	岡谷温泉	おかやおんせん	長野県岡谷市南宮東			上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	二酸化炭素泉	\N	\N	\N	\N
1482	970	上諏訪温泉	かみすわおんせん	長野県諏訪市上諏訪			上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	硫黄泉	\N	\N	50196	\N
1483	971	渋の湯温泉	しぶのゆおんせん	長野県上伊那郡箕輪町大字中箕輪			伊那・駒ヶ根・飯田・昼神	高遠・伊那・辰野	硫酸塩泉	\N	\N	\N	\N
1484	973	武智鉱泉	たけちこうせん	長野県諏訪郡富士見町先能			八ヶ岳・富士見・原村・野辺山・小海	原村・富士見	単純温泉	\N	\N	\N	\N
1485	974	高遠温泉	たかとおおんせん	長野県上伊那郡高遠町大字西高遠			伊那・駒ヶ根・飯田・昼神	高遠・伊那・辰野	単純温泉	\N	\N	50161	\N
1486	977	駒の湯温泉	こまのゆおんせん	長野県木曽郡木曽福島町			木曽	木曽・御岳	含鉄泉	\N	\N	\N	\N
1487	978	西野温泉	にしのおんせん	長野県木曽郡開田村			木曽	木曽・御岳	塩化物泉	\N	\N	\N	\N
1488	979	鹿ノ瀬温泉	かのせおんせん	長野県木曽郡三岳村瀬戸ノ原			木曽	南木曽・妻籠・馬籠（一部岐阜県）	単純温泉	\N	\N	\N	\N
1489	980	木曽温泉	きそおんせん	長野県木曽郡三岳村瀬戸ノ原			木曽	南木曽・妻籠・馬籠（一部岐阜県）	含鉄泉	\N	\N	\N	\N
1490	981	釜沼温泉	かまぬまおんせん	長野県木曽郡三岳村釜沼			木曽	南木曽・妻籠・馬籠（一部岐阜県）	含鉄泉	\N	\N	\N	\N
1491	982	棧温泉	かけはしおんせん	長野県木曽郡上松町棧			木曽	南木曽・妻籠・馬籠（一部岐阜県）	炭酸水素塩泉	\N	\N	\N	\N
1492	983	灰沢鉱泉	はいざわこうせん	長野県木曽郡上松町灰沢			木曽	南木曽・妻籠・馬籠（一部岐阜県）	炭酸水素塩泉	\N	\N	\N	\N
1493	984	鹿の湯温泉	しかのゆおんせん	長野県木曽郡大桑村殿小川			木曽	南木曽・妻籠・馬籠（一部岐阜県）	硫酸塩泉	\N	\N	50459	\N
1494	985	小渋湖温泉	こしぶこおんせん	長野県上伊那郡中川村大草			伊那・駒ヶ根・飯田・昼神	駒ヶ根	含鉄泉	\N	\N	\N	\N
1495	986	鹿塩温泉	かしおおんせん	長野県下伊那郡大鹿村鹿塩			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	含鉄泉	\N	\N	\N	\N
1496	987	小渋温泉	こしぶおんせん	長野県下伊那郡大鹿村大河原５０４０－５			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	含鉄泉	\N	\N	50725	\N
1497	988	信州まつかわ温泉	しんしゅうまつかわおんせん	長野県下伊那郡松川町大島			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	二酸化炭素泉	\N	\N	\N	\N
1498	989	小川の湯温泉	おがわのゆおんせん	長野県下伊那郡喬木村小川			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	単純温泉	\N	\N	\N	\N
1499	990	川路温泉	かわじおんせん	長野県飯田市川路			伊那・駒ヶ根・飯田・昼神	飯田・天竜峡	塩化物泉	\N	\N	\N	\N
1500	991	天竜峡温泉	てんりゅうきょうおんせん	長野県飯田市川路天竜峡			伊那・駒ヶ根・飯田・昼神	飯田・天竜峡	単純温泉	\N	\N	50162	\N
1501	992	昼神温泉	ひるがみおんせん	長野県下伊那郡阿智村昼神			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	硫黄泉	\N	\N	50163	\N
1502	993	月川温泉	つきかわおんせん	長野県下伊那郡阿智村智里			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	鉱泉	\N	\N	50164	\N
1503	994	南宮温泉	なんぐうおんせん	長野県下伊那郡阿南町中谷			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	放射能泉	\N	\N	\N	\N
1619	1065	潟上温泉	かたかみおんせん	新潟県佐渡郡新穂村潟上			佐渡	佐渡	硫黄泉	\N	\N	\N	\N
1504	995	長峰温泉	ながみねおんせん	長野県中野市田麦			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	\N	\N
1505	996	戸狩温泉	とがりおんせん	長野県飯山市大田瀬木			斑尾・飯山・信濃町・黒姫	斑尾・飯山	含鉄泉	\N	\N	50172	\N
1506	997	布下温泉	ぬのしたおんせん	長野県北佐久郡御牧村布下			軽井沢・佐久・小諸	佐久・小諸	放射能泉	\N	\N	50181	\N
1507	998	佐久一萬里温泉	さくいちまんりおんせん	長野県佐久市中込			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1508	999	白樺湖温泉すずらんの湯	しらかばこおんせんすずらんのゆ	長野県茅野市白樺湖畔			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	炭酸水素塩泉	\N	\N	\N	\N
1509	1000	信州たかもり温泉	しんしゅうたかもりおんせん	長野県下伊那郡高森町牛牧			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	塩化物泉	\N	\N	\N	\N
1510	1001	早太郎温泉	はやたろうおんせん	長野県駒ヶ根市赤穂駒ヶ根高原			伊那・駒ヶ根・飯田・昼神	駒ヶ根	単純温泉	\N	\N	\N	\N
1511	1002	うるぎ温泉	うるぎおんせん	長野県下伊那郡売木村			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	単純温泉	\N	\N	\N	\N
1512	1003	安曇野温泉	あずみのおんせん	長野県南安曇郡豊科町大字田沢			安曇野・大町	安曇野・穂高	塩化物泉	\N	\N	\N	\N
1513	1004	庄兵衛の湯	しょうべいのゆ	長野県北安曇郡白馬村大字北城			白馬・小谷	白馬村	塩化物泉	\N	\N	\N	\N
1514	1005	安曇野蝶ヶ岳温泉	あづみのちょうがたけおんせん	長野県南安曇郡堀金村大字烏川			安曇野・大町	安曇野・穂高	硫酸塩泉	\N	\N	50544	\N
1515	1006	南木曽温泉	なぎそおんせん	長野県木曽郡南木曽町吾妻			木曽	南木曽・妻籠・馬籠（一部岐阜県）	放射能泉	\N	\N	\N	\N
1516	2156	斑尾高原湯元温泉	まだらおこうげんゆもとおんせん	長野県飯山市斑尾高原			斑尾・飯山・信濃町・黒姫	斑尾・飯山	単純温泉	\N	\N	\N	\N
1517	2172	タングラム温泉	たんぐらむおんせん	長野県上水内郡信濃町古海			斑尾・飯山・信濃町・黒姫	信濃町・黒姫	炭酸水素塩泉	\N	\N	50173	\N
1518	2173	斑尾高原温泉	まだらおこうげんおんせん	長野県飯山市斑尾高原			斑尾・飯山・信濃町・黒姫	斑尾・飯山	硫黄泉	\N	\N	50173	\N
1519	2174	白樺湖池の平温泉	しらかばこいけのたいらおんせん	長野県茅野市白樺湖畔			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	単純温泉	\N	\N	50194	\N
1520	2194	戸倉上山田温泉	とぐらかみやまだおんせん	長野県埴科郡上山田町			戸倉上山田・千曲	戸倉上山田・千曲	放射能泉	\N	\N	50177	\N
1521	2211	早太郎温泉	はやたろうおんせん	長野県駒ヶ根市赤穂759-490			伊那・駒ヶ根・飯田・昼神	駒ヶ根	単純温泉	\N	\N	50161	\N
1522	2212	下諏訪温泉	しもすわおんせん	長野県下諏訪町			上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	単純温泉	\N	\N	50195	\N
1523	2245	丸池温泉	まるいけおんせん	長野県下高井郡山ノ町平穏7149			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	弱アルカリ性低張性泉	\N	\N	50168	\N
1524	2246	白馬塩の道温泉	はくばしおのみちおんせん	長野県北安曇郡白馬村北城倉下			白馬・小谷	白馬村	単純温泉	\N	\N	50183	\N
1525	2280	戸隠神告げ温泉	とがくしかみつげおんせん	長野県上水内郡戸隠村大字戸隠3182			長野・戸隠・小布施	長野・飯綱・戸隠	単純温泉	\N	\N	\N	\N
1526	2319	御嶽明神温泉	おんたけみょうじんおんせん	長野県木曽郡開田村大字西野			木曽	木曽・御岳	弱アルカリ性低張性泉	\N	\N	\N	\N
1527	2320	みのわ温泉	みのわおんせん	長野県上伊那郡箕輪字松ヶ久保			伊那・駒ヶ根・飯田・昼神	高遠・伊那・辰野	単純温泉	\N	\N	\N	\N
1528	2321	八ヶ岳海尻温泉	やつがたけうみじりおんせん	長野県南佐久郡牧村海尻字栗谷上日向中			八ヶ岳・富士見・原村・野辺山・小海	野辺山・小海	弱アルカリ性低張性泉	\N	\N	\N	\N
1529	2322	武石温泉	たけしおんせん	長野県小県郡武石村上武石			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	\N	\N
1530	2323	仏岩温泉	ほとけいわおんせん	長野県小県郡長門町大門			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	アルカリ単純泉	\N	\N	\N	\N
1531	2324	独鈷温泉	とっこおんせん	長野県上田市手塚			上田・別所・鹿教湯	上田・別所・鹿教湯	硫酸塩泉	\N	\N	\N	\N
1532	2326	あさしな温泉	あさしなおんせん	長野県北佐久郡浅科村甲			軽井沢・佐久・小諸	佐久・小諸	その他	\N	\N	\N	\N
1533	2328	富士見高原　広原温泉	ふじみこうげん　ひろはらおんせん	長野県諏訪郡富士見町境			八ヶ岳・富士見・原村・野辺山・小海	原村・富士見	単純温泉	\N	\N	\N	\N
1534	2329	白樺湖温泉	しらかばこおんせん	長野県茅野市北山3418-32			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	中性低張性高温泉	\N	\N	50194	\N
1535	2334	白馬八方温泉	はくばはっぽうおんせん	長野県北安曇郡白馬村大字北城			白馬・小谷	白馬村	硫黄泉	\N	\N	\N	\N
1536	2376	小諸温泉	こもろおんせん	長野県小諸市古城1-1-5			軽井沢・佐久・小諸	佐久・小諸	ナトリウム塩化物泉	\N	\N	50181	\N
1537	2377	蓼科牧場温泉	たてしなぼくじょうおんせん	長野県北佐久郡立科町白樺高原			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	炭酸水素塩泉	\N	\N	50193	\N
1538	2418	樽川温泉	たるかわおんせん	新潟県中頸城郡妙高村樽本乙532			野沢温泉・木島平・秋山郷	野沢温泉	単純温泉	\N	\N	50173	\N
1539	2442	むれ温泉	むれおんせん	長野県上水内郡牟礼村川上2755-345			長野・戸隠・小布施	長野・飯綱・戸隠	弱アルカリ性低張性泉	\N	\N	\N	\N
1540	2443	おぶせ温泉	おぶせおんせん	長野県上高井郡小布施町雁田観音下1194-1			長野・戸隠・小布施	小布施	炭酸水素塩泉	\N	\N	\N	\N
1541	2444	松川渓谷温泉	まつかわけいこくおんせん	長野県上高井郡高山村奥山田3681-377			長野・戸隠・小布施	小布施	硫酸塩泉	\N	\N	\N	\N
1542	2445	北野天満温泉	きたのてんまんおんせん	長野県下水内郡栄村北野内			野沢温泉・木島平・秋山郷	秋山郷	その他	\N	\N	\N	\N
1543	2446	馬曲温泉	まぐせおんせん	長野県下高井郡木島平村大字往郷			野沢温泉・木島平・秋山郷	木島平	二酸化炭素泉	\N	\N	\N	\N
1544	2447	元湯箱山温泉	もとゆはこやまおんせん	長野県下高井郡山ノ内町戸狩			志賀・北志賀・湯田中渋	北志賀・竜王・奥志賀	弱アルカリ性低張性泉	\N	\N	\N	\N
1545	2448	みやま温泉	みやまおんせん	長野県下高井郡山ノ内町平穏			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	その他	\N	\N	\N	\N
1546	2449	よませ温泉	よませおんせん	長野県下高井郡山ノ内町夜間瀬			志賀・北志賀・湯田中渋	北志賀・竜王・奥志賀	炭酸水素塩泉	\N	\N	50169	\N
1547	2450	豊田村温泉　もみじ荘	とよだむらおんせん　もみじそう	長野県下水内郡豊田村豊津			志賀・北志賀・湯田中渋	北志賀・竜王・奥志賀	塩化物泉	\N	\N	\N	\N
1548	2451	上境温泉	かみさかいおんせん	長野県飯山市大字一山字川押1898-1			斑尾・飯山・信濃町・黒姫	斑尾・飯山	その他	\N	\N	\N	\N
1549	2452	室賀温泉	むろがおんせん	長野県上田市上室賀			上田・別所・鹿教湯	上田・別所・鹿教湯	ナトリウム塩化物泉	\N	\N	\N	\N
1550	2453	関谷温泉	せきやおんせん	長野県須坂市大字仁礼			菅平・峰の原	須坂・菅平・峰の原	弱アルカリ性低張性泉	\N	\N	\N	\N
1551	2454	尖石温泉	とがりいしおんせん	長野県茅野市豊平			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	その他	\N	\N	\N	\N
1552	2455	和田宿温泉	わだじゅくおんせん	長野県小県郡和田村			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	硫酸塩泉	\N	\N	\N	\N
1553	2456	乙女滝温泉	おとめだきおんせん	長野県茅野市北山			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	その他	\N	\N	\N	\N
1554	2457	長門温泉	ながとおんせん	長野県小県郡長門町古町内			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	単純温泉	\N	\N	\N	\N
1555	2458	石遊温泉	いしやすおんせん	長野県茅野市北山5490-5			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	ナトリウム塩化物泉	\N	\N	\N	\N
1556	2459	富士見温泉	ふじみおんせん	長野県諏訪郡富士見町富士見9547-7			八ヶ岳・富士見・原村・野辺山・小海	原村・富士見	硫酸塩泉	\N	\N	\N	\N
1557	2460	白馬かたくり温泉	はくばかたくりおんせん	長野県北安曇郡白馬村神城内			白馬・小谷	白馬村	アルカリ単純泉	\N	\N	\N	\N
1558	2461	白馬姫川温泉	はくばひめかわおんせん	長野県北安曇郡白馬村北城15848			白馬・小谷	白馬村	アルカリ単純泉	\N	\N	50923	\N
1559	2462	馬羅尾天狗岩温泉	ばろうてんぐいわおんせん	長野県北安曇郡松川村内			安曇野・大町	大町	放射能泉	\N	\N	\N	\N
1560	2464	豊科温泉	とよしなおんせん	長野県南安曇郡豊科町田沢7994			安曇野・大町	安曇野・穂高	その他	\N	\N	\N	\N
1561	2465	安曇野みさと温泉	あずみのみさとおんせん	長野県南安曇郡三郷村			安曇野・大町	安曇野・穂高	炭酸水素塩泉	\N	\N	\N	\N
1562	2466	さわんど温泉	さわんどおんせん	長野県南安曇郡安曇村			松本市（上高地・乗鞍・白骨・野麦峠）	上高地	その他	\N	\N	50457	\N
1563	2467	すずらん温泉	すずらんおんせん	長野県南安曇郡安曇村乗鞍高原			松本市（上高地・乗鞍・白骨・野麦峠）	乗鞍	アルカリ単純泉	\N	\N	50188	\N
1564	2468	久米川温泉	くめがわおんせん	長野県飯田市久米648-2			伊那・駒ヶ根・飯田・昼神	飯田・天竜峡	単純温泉	\N	\N	\N	\N
1565	2469	天然温泉　湯?眠	てんねんおんせん　ゆーみん	長野県飯田市上殿岡628			伊那・駒ヶ根・飯田・昼神	飯田・天竜峡	弱アルカリ性低張性泉	\N	\N	\N	\N
1566	2470	阿寺温泉	あてらおんせん	長野県木曽郡大桑村			木曽	南木曽・妻籠・馬籠（一部岐阜県）	単純温泉	\N	\N	\N	\N
1567	2494	不動温泉　花菱	ふどうおんせん　はなびし	長野県下伊那郡浪合村254-1			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	中性低張性高温泉	\N	\N	50165	\N
1568	2545	八ヶ岳温泉	やつがたけおんせん	長野県諏訪郡原村17217-1729			八ヶ岳・富士見・原村・野辺山・小海	原村・富士見	アルカリ単純泉	\N	\N	\N	\N
1569	2552	小赤沢温泉	こあかさわおんせん	長野県下水内郡栄村小赤沢			野沢温泉・木島平・秋山郷	秋山郷	アルカリ単純泉	\N	\N	\N	\N
1570	2574	池の平温泉	いけのたいらおんせん	長野県下高井郡木島平村上木島4978-1			野沢温泉・木島平・秋山郷	木島平	ナトリウム塩化物泉	\N	\N	\N	\N
1571	2575	菅平温泉	すがだいらおんせん	長野県小県郡真田町長菅平1223-1950			菅平・峰の原	須坂・菅平・峰の原	アルカリ単純泉	\N	\N	\N	\N
1572	2612	ほたる温泉	ほたるおんせん	長野県下高井郡山ノ内町平隠7148			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	ナトリウム塩化物泉	\N	\N	50168	\N
1573	2613	いいやま湯滝温泉	いいやまゆたきおんせん	長野県飯山市大字一山字川押			斑尾・飯山・信濃町・黒姫	斑尾・飯山	弱アルカリ性低張性泉	\N	\N	\N	\N
1574	2614	みづほ温泉	みづほおんせん	長野県小県郡東部町和			上田・別所・鹿教湯	軽井沢	ナトリウム塩化物泉	\N	\N	\N	\N
1575	2615	立科温泉	たてしなおんせん	長野県北佐久郡立科町山部			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	含鉄泉	\N	\N	\N	\N
1576	2616	鷹山源泉	たかやまげんせん	長野県小県郡長門町大門大門山国有林121り小林班内			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	その他	\N	\N	50718	\N
1577	2617	白馬みずばしょう温泉	はくばみずばしょうおんせん	長野県北安曇郡白馬村北城14863－2			白馬・小谷	白馬村	ナトリウム塩化物泉	\N	\N	50917	\N
1578	2618	殿岡温泉	とのおかおんせん	長野県飯田市上殿岡			伊那・駒ヶ根・飯田・昼神	飯田・天竜峡	アルカリ単純泉	\N	\N	\N	\N
1579	2648	籠川渓雲温泉	かごかわけいうんおんせん	長野県大町市平２０２０－２			安曇野・大町	大町	単純温泉	\N	\N	50460	\N
1580	2659	まだらお雲海白海温泉	まだらおうんかいしらうみおんせん	長野県飯山市斑尾温泉			斑尾・飯山・信濃町・黒姫	斑尾・飯山	アルカリ単純泉	\N	\N	50173	\N
1620	1066	佐和田温泉	さわたおんせん	新潟県佐渡郡佐和田町窪田			佐渡	佐渡	炭酸水素塩泉	\N	\N	\N	\N
1581	2660	若栗温泉	わかぐりおんせん	長野県北安曇郡小谷村大字千国１２８５１番地			白馬・小谷	栂池・小谷	単純温泉	\N	\N	50464	\N
1582	2681	わさび沢温泉	わさびさわおんせん	長野県南安曇郡安曇村乗鞍高原４２９８－７			松本市（上高地・乗鞍・白骨・野麦峠）	乗鞍	弱アルカリ性低張性泉	\N	\N	50187	\N
1583	2686	芹ｹ沢温泉	せりがさわおんせん	長野県茅野市北山字水上４７４９－２			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	中性低張性高温泉	\N	\N	50193	\N
1584	2691	下條温泉	しもじょうおんせん	長野県下伊那郡下條村			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	塩化物泉	\N	\N	50485	\N
1585	2694	茶臼山温泉	ちゃうすやまおんせん	長野県下伊那郡売木村			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	ナトリウム塩化物泉	\N	\N	50487	\N
1586	2703	さんぴあ温泉	さんぴあおんせん	長野県佐久市根岸3263-2			軽井沢・佐久・小諸	佐久・小諸	アルカリ単純泉	\N	\N	50496	\N
1587	2724	You遊ランド温泉	ゆうゆうらんどおんせん	長野県上高井郡高山村大字牧73			長野・戸隠・小布施	小布施	中性低張性高温泉	\N	\N	\N	\N
1588	2737	天狗温泉	てんぐおんせん	長野県小諸市野馬鳥			軽井沢・佐久・小諸	佐久・小諸	ナトリウム塩化物泉	\N	\N	50508	\N
1589	2748	倉本温泉	くらもとおんせん	長野県飯山市斑尾高原			斑尾・飯山・信濃町・黒姫	斑尾・飯山	炭酸水素塩泉	\N	\N	50173	\N
1590	2749	菅平高原温泉	すがだいらこうげんおんせん	長野県小県郡真田町			菅平・峰の原	須坂・菅平・峰の原	アルカリ単純泉	\N	\N	50168	\N
1591	2779	白馬しろうま温泉	はくばしろうまおんせん	長野県北安曇郡白馬村大字北城字南川原１２９２１番			白馬・小谷	白馬村	アルカリ単純泉	\N	\N	50549	\N
1592	2781	ぽかぽかランド美麻	ぽかぽからんどみあさ	長野県北安曇郡美麻村16784			白馬・小谷	白馬村	弱アルカリ性低張性泉	\N	\N	50552	\N
1593	2784	久米川温泉	くめがわおんせん	長野県飯田市山本久米646‐1			伊那・駒ヶ根・飯田・昼神	飯田・天竜峡	単純温泉	\N	\N	50555	\N
1594	2790	駒場温泉	こまばおんせん	長野県下伊那郡阿智村駒場2007			伊那・駒ヶ根・飯田・昼神	阿智・昼神・下伊那	中性低張性高温泉	\N	\N	50606	\N
1595	2802	二本木の湯	にほんぎのゆ	長野県木曽郡木曽福島町新開6030-7			木曽	木曽・御岳	ナトリウム塩化物泉	\N	\N	50633	\N
1596	2804	天徳温泉	てんとくおんせん	長野県塩尻市大字片丘東東山9215-198			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	炭酸水素塩泉	\N	\N	50635	\N
1597	2858	上田温泉	うえだおんせん	長野県上田市大手一丁目2番2号			上田・別所・鹿教湯	上田・別所・鹿教湯	単純温泉	\N	\N	50174	\N
1598	2879	布引観音温泉	ぬのびきかんのんおんせん	長野県東御市布下４９８－１			軽井沢・佐久・小諸	佐久・小諸	単純炭酸泉	\N	\N	50181	\N
1599	2888	姫木温泉	ひめきおんせん	長野県小県郡長和町			蓼科・白樺湖・車山・女神湖・姫木平	女神湖・姫木平・東白樺湖	アルカリ単純泉	\N	\N	50724	\N
1600	2924	奥白馬温泉	おくはくばおんせん	長野県北安曇郡小谷村千国乙１２８６０－１			白馬・小谷	栂池・小谷	単純温泉	\N	\N	50751	\N
1601	2931	菱野薬師の湯	ひしのやくしのゆ	長野県小諸市大字菱平740			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	50760	\N
1602	2961	オーナーズヒル軽井沢温泉	おーなーずひるかるいざわおんせん	長野県北佐久郡御代田町大字茂沢392‐3			軽井沢・佐久・小諸	軽井沢	ナトリウム塩化物泉	\N	\N	50178	\N
1603	3005	神戸虎温泉	ごうどとらおんせん	長野県飯山市瑞穂字湯口3487-ロ			斑尾・飯山・信濃町・黒姫	斑尾・飯山	炭酸水素塩泉	\N	\N	50820	\N
1604	3085	八ヶ岳縄文天然温泉　尖石の湯	やつがたけじょうもんてんねんおんせん　とがりいしのゆ	長野県茅野市豊平字東獄１０２４６－２			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	単純温泉	\N	\N	50193	\N
1605	3130	竜島温泉	りゅうしまおんせん	長野県松本市波田竜島３４５２			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	弱アルカリ性低張性泉	\N	\N	50914	\N
1606	3136	軽井沢矢ヶ崎温泉	かるいざわやがさきおんせん	長野県北佐久郡軽井沢町軽井沢			軽井沢・佐久・小諸	軽井沢	弱アルカリ性低張性泉	\N	\N	50178	\N
1607	3197	タカマガハラ温泉	たかまがはらおんせん	長野県下高井郡山ノ内町大字平隠7149			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	含鉄泉	\N	\N	50168	\N
1608	3201	しなの木温泉	しなのきおんせん	長野県上田市住吉86-2			上田・別所・鹿教湯	上田・別所・鹿教湯	鉱泉	\N	\N	50174	\N
1609	3204	旭湯温泉	あさひゆおんせん	長野県佐久市岩村田５５３			軽井沢・佐久・小諸	佐久・小諸	鉱泉	\N	\N	50181	\N
1610	3227	高天ヶ原温泉	たかまがはらおんせん	長野県下高井郡山ノ内町平穏７１４９―１６			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	アルカリ単純泉	\N	\N	50170	\N
1611	3233	梅木鉱泉	うめきこうせん	長野県長野市中条日下野5286			長野・戸隠・小布施	長野・飯綱・戸隠	鉱泉	\N	\N	50965	\N
1612	3236	木曽御岳温泉	きそおんたけおんせん	長野県木曽郡木曽福島町新開6030-7			木曽	木曽・御岳	その他	\N	\N	50633	\N
1613	3299	北アルプス　天望の湯	きたあるぷす　てんぼうのゆ	長野県塩尻市片丘東山９２１５－１４０１			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	50635	\N
1614	3316	白樺湖畔温泉	しらかばこはんおんせん	長野県茅野市北山３４１８－３２			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	アルカリ単純泉	\N	\N	50194	\N
1615	1061	平根崎温泉	ひらねざきおんせん	新潟県佐渡郡相川町戸中			佐渡	佐渡	単純温泉	\N	\N	\N	\N
1616	1062	秋津温泉	あきつおんせん	新潟県両津市大字秋津			佐渡	佐渡	単純温泉	\N	\N	\N	\N
1617	1063	椎崎温泉	しいざきおんせん	新潟県両津市原黒			佐渡	佐渡	塩化物泉	\N	\N	50229	\N
1618	1064	住吉温泉	すみよしおんせん	新潟県両津市住吉			佐渡	佐渡	塩化物泉	\N	\N	\N	\N
1621	1067	八幡温泉	やはたおんせん	新潟県佐渡郡佐和田町八幡			佐渡	佐渡	塩化物泉	\N	\N	50231	\N
1622	1068	小木温泉	おぎおんせん	新潟県佐渡郡小木町			佐渡	佐渡	硫酸塩泉	\N	\N	\N	\N
1623	1069	瀬波温泉	せなみおんせん	新潟県村上市瀬波温泉			瀬波・村上・岩船	瀬波・村上	塩化物泉	\N	\N	50202	\N
1624	1070	湯沢温泉　(荒川峡)	ゆさわおんせん	新潟県岩船郡関川村大字湯沢			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	\N	\N
1625	1071	雲母温泉　(荒川峡)	きらおんせん	新潟県岩船郡関川村上関			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	\N	\N
1626	1072	高瀬温泉　(荒川峡)	たかせおんせん	新潟県岩船郡関川村大字湯沢			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	50203	\N
1627	1073	鷹ノ巣温泉　(荒川峡)	たかのすおんせん	新潟県岩船郡関川村大字湯沢			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	\N	\N
1628	1074	樽ヶ橋温泉	たるがはしおんせん	新潟県北蒲原郡黒川村大字下赤谷			瀬波・村上・岩船	岩船・胎内	単純温泉	\N	\N	\N	\N
1629	1075	胎内温泉	たいないおんせん	新潟県北蒲原郡黒川村夏井			瀬波・村上・岩船	岩船・胎内	単純温泉	\N	\N	\N	\N
1630	1076	貝屋温泉	かいやおんせん	新潟県北蒲原郡加治川村貝屋			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	\N	\N
1631	1077	湯の平温泉	ゆのだいらおんせん	新潟県新発田市滝谷			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	\N	\N
1632	1078	月岡温泉	つきおかおんせん	新潟県北蒲原郡豊浦町月岡			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	50197	\N
1633	1079	出湯温泉　(五頭)	でゆおんせん	新潟県北蒲原郡笹神村出湯			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	単純温泉	\N	\N	50198	\N
1634	1080	今板温泉　(五頭)	いまいたおんせん	新潟県北蒲原郡笹神村今板			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	放射能泉	\N	\N	50198	\N
1635	1081	村杉温泉　(五頭)	むらすぎおんせん	新潟県北蒲原郡笹神村村杉			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	放射能泉	\N	\N	50198	\N
1636	1082	咲花温泉	さきはなおんせん	新潟県五泉市佐取			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	50204	\N
1637	1083	三川温泉	みかわおんせん	新潟県東蒲原郡三川村五十沢			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	\N	\N
1638	1084	角神温泉	つのがみおんせん	新潟県東蒲原郡鹿瀬町鹿瀬			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	炭酸水素塩泉	\N	\N	50205	\N
1639	1085	麒麟山温泉	きりんざんおんせん	新潟県東蒲原郡鹿瀬町鹿瀬			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	50206	\N
1640	1086	御神楽温泉	みかぐらおんせん	新潟県東蒲原郡上川村広谷			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	塩化物泉	\N	\N	\N	\N
1641	1087	金割鉱泉	かねわりこうせん	新潟県中蒲原郡村松町高松			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	単純温泉	\N	\N	\N	\N
1642	1088	湯田上温泉	ゆたがみおんせん	新潟県南蒲原郡田上町田上			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	ナトリウム塩化物泉	\N	\N	50207	\N
1643	1089	白根温泉	しろねおんせん	新潟県白根市引越			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	\N	\N
1644	1090	緒立温泉	おたておんせん	新潟県西蒲原郡黒埼町			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	塩化物泉	\N	\N	\N	\N
1645	1091	湯之腰温泉	ゆのこしおんせん	新潟県西蒲原郡巻町越前浜			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	塩化物泉	\N	\N	\N	\N
1646	1092	岩室温泉	いわむろおんせん	新潟県西蒲原郡岩室村岩室			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	単純温泉	\N	\N	50199	\N
1647	1093	弥彦温泉	やひこおんせん	新潟県西蒲原郡弥彦村弥彦			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	塩化物泉	\N	\N	50200	\N
1648	1094	観音寺温泉	かんのんじおんせん	新潟県西蒲原郡弥彦村観音寺			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	硫黄泉	\N	\N	50201	\N
1649	1095	寺泊海岸温泉	てらどまりかいがんおんせん	新潟県三島郡寺泊町寺泊			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1650	1096	寺泊温泉	てらどまりおんせん	新潟県三島郡寺泊町年友			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1651	1097	越之湯温泉	こしのゆおんせん	新潟県三島郡与板町馬越			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	硫黄泉	\N	\N	\N	\N
1652	1098	越後長野温泉	えちごながのおんせん	新潟県南蒲原郡下田村長野			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	塩化物泉	\N	\N	50492	\N
1653	1099	大野鉱泉	おおのこうせん	新潟県栃尾市大野町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	硫黄泉	\N	\N	\N	\N
1654	1100	荷頃鉱泉	にごろこうせん	新潟県栃尾市北荷頃			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1655	1102	越後東山温泉	えちごひがしやまおんせん	新潟県長岡市水穴町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1656	1103	成願寺温泉	じょうがんじおんせん	新潟県長岡市成願寺町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	炭酸水素塩泉	\N	\N	\N	\N
1657	1104	長岡温泉	ながおかおんせん	新潟県長岡市高畑町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1658	1105	鯨波松島温泉	くじらなみまつしまおんせん	新潟県柏崎市鯨波１８２８			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	単純温泉	\N	\N	50208	\N
1659	1106	長岡かまぶろ温泉	ながおかかまぶろおんせん	新潟県長岡市十日町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	単純温泉	\N	\N	\N	\N
1660	1107	蓬平温泉	よもぎひらおんせん	新潟県長岡市蓬平町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	二酸化炭素泉	\N	\N	\N	\N
1661	1108	守門温泉	すもんおんせん	新潟県北魚沼郡守門村西名新田			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	ナトリウム塩化物泉	\N	\N	\N	\N
1662	1109	木津の湯	きづのゆ	新潟県小千谷市木津			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	弱アルカリ性低張性泉	\N	\N	\N	\N
1663	1110	勝見鉱泉	かつもこうせん	新潟県三島郡出雲崎町勝見			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	塩化物泉	\N	\N	\N	\N
1664	1111	宮本温泉	みやもとおんせん	新潟県長岡市宮本東方町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	単純温泉	\N	\N	\N	\N
1665	1112	三島谷温泉	みしまだにおんせん	新潟県長岡市大積三島谷町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	炭酸水素塩泉	\N	\N	\N	\N
1666	1113	地蔵温泉	ぢぞうおんせん	新潟県刈羽郡西山町坂田			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	二酸化炭素泉	\N	\N	\N	\N
1667	1114	柏崎温泉	かしわざきおんせん	新潟県柏崎市新花町			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	硫黄泉	\N	\N	50208	\N
1668	1115	広田温泉	ひろたおんせん	新潟県柏崎市大広田			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	塩化物泉	\N	\N	\N	\N
1669	1116	葎沢温泉	むぐらさわおんせん	新潟県北魚沼郡湯之谷村葎沢			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	硫黄泉	\N	\N	\N	\N
1670	1117	芋川温泉	いもがわおんせん	新潟県北魚沼郡湯之谷村芋川			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	炭酸水素塩泉	\N	\N	\N	\N
1671	1118	折立温泉	おりたておんせん	新潟県北魚沼郡湯之谷村下折立			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	硫黄泉	\N	\N	\N	\N
1672	1119	栃尾又温泉	とちおまたおんせん	新潟県北魚沼郡湯之谷村栃尾又			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	塩化物泉	\N	\N	50209	\N
1673	1120	大湯温泉	おおゆおんせん	新潟県北魚沼郡湯之谷村大湯			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	塩化物泉	\N	\N	50210	\N
1674	1121	駒の湯温泉	こまのゆおんせん	新潟県北魚沼郡湯之谷村駒の湯			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	単純温泉	\N	\N	\N	\N
1675	1122	浦佐温泉	うらさおんせん	新潟県南魚沼郡大和町浦佐			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	\N	\N
1676	1123	市野江温泉	いちのえおんせん	新潟県南魚沼郡大和町市野江			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	\N	\N
1677	1124	五十沢温泉	いかざわおんせん	新潟県南魚沼郡六日町宮			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	放射能泉	\N	\N	\N	\N
1678	1125	六日町温泉	むいかまちおんせん	新潟県南魚沼郡六日町小栗山			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	50215	\N
1679	1126	二ツ屋温泉	ふたつやおんせん	新潟県十日町市二ツ屋			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	単純温泉	\N	\N	\N	\N
1680	1127	塩之又温泉	しおのまたおんせん	新潟県十日町市塩之又			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	\N	\N
1681	1128	大沢山温泉	おおさわやまおんせん	新潟県南魚沼郡塩沢町大沢			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	50216	\N
1682	1129	上野鉱泉	うわのこうせん	新潟県南魚沼郡塩沢町上野			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	\N	\N
1683	1130	越後湯沢温泉	えちごゆざわおんせん	新潟県南魚沼郡湯沢町湯沢			湯沢・苗場	湯沢	塩化物泉	\N	\N	50217	\N
1684	1131	貝掛温泉	かいかけおんせん	新潟県南魚沼郡湯沢町三俣字貝掛			湯沢・苗場	苗場・かぐら	硫黄泉	\N	\N	50474	\N
1685	1132	赤湯温泉	あかゆおんせん	新潟県南魚沼郡湯沢町三国			湯沢・苗場	苗場・かぐら	単純温泉	\N	\N	\N	\N
1686	1133	清津峡温泉瀬戸口の湯	きよつきょうおんせんせとぐちのゆ	新潟県中魚沼郡中里村西田尻			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫黄泉	\N	\N	50211	\N
1687	1134	清津峡小出温泉	きよつきょうこいでおんせん	新潟県中魚沼郡中里村小出			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫黄泉	\N	\N	\N	\N
1688	1135	グリーンピア津南温泉	ぐりーんぴあつなんおんせん	新潟県中魚沼郡津南町秋成			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	50212	\N
1689	1136	逆巻温泉	さかまきおんせん	新潟県中魚沼郡津南町秋山郷			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	ナトリウム塩化物泉	\N	\N	\N	\N
1690	1137	鹿渡温泉	しかわたりおんせん	新潟県中魚沼郡津南町鹿渡			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	弱アルカリ性低張性泉	\N	\N	\N	\N
1691	1138	辰の口温泉	たつのくちおんせん	新潟県中魚沼郡津南町辰の口			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	\N	\N
1692	1139	小下里温泉	こさがりおんせん	新潟県中魚沼郡津南町小下里			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	\N	\N
1693	1140	田中温泉	たなかおんせん	新潟県中魚沼郡津南町田中			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫黄泉	\N	\N	\N	\N
1694	1141	宮野原温泉	みやのはらおんせん	新潟県中魚沼郡津南町宮野原			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	単純温泉	\N	\N	\N	\N
1695	1142	松之山温泉	まつのやまおんせん	新潟県東頸城郡松之山町湯本			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	50213	\N
1696	1143	月湯女温泉	つきゆめおんせん	新潟県刈羽郡高柳町山中			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	単純温泉	\N	\N	\N	\N
1697	1144	大山温泉	おおやまおんせん	新潟県東頸城郡大島村田麦			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1698	1145	栃窪温泉	とちくぼおんせん	新潟県中頸城郡柿崎町栃窪			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1699	1146	鵜の浜温泉	うのはまおんせん	新潟県中頸城郡大潟町九戸浜			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	50224	\N
1700	1147	宇津俣温泉	うつまたおんせん	新潟県東頸城郡牧村宇津俣			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1701	1148	松ヶ峯温泉	まつがみねおんせん	新潟県中頸城郡中郷村松ヶ峯			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	\N	\N
1702	1149	天然温泉金泉の湯	てんねんおんせん　きんせんのゆ	新潟県妙高市桶海1090			上越・糸魚川・妙高	上越・妙高・鵜の浜	硫黄泉	\N	\N	50732	\N
1703	1150	関温泉	せきおんせん	新潟県中頸城郡妙高村関山			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1704	1151	燕温泉	つばめおんせん	新潟県中頸城郡妙高村関山			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	50225	\N
1705	1152	赤倉温泉	あかくらおんせん	新潟県中頸城郡妙高高原町赤倉			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	50226	\N
1706	1153	池ノ平温泉	いけのたいらおんせん	新潟県中頸城郡妙高高原町池の平			上越・糸魚川・妙高	上越・妙高・鵜の浜	硫黄泉	\N	\N	50227	\N
1707	1154	妙高温泉	みょうこうおんせん	新潟県中頸城郡妙高高原町妙高			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	50228	\N
1708	1155	島道鉱泉	しまみちこうせん	新潟県西頚城郡能生町島道			上越・糸魚川・妙高	糸魚川	アルカリ単純泉	\N	\N	\N	\N
1709	1156	柵口温泉	ませぐちおんせん	新潟県西頚城郡能生町柵口			上越・糸魚川・妙高	糸魚川	硫黄泉	\N	\N	\N	\N
1710	1157	笹倉温泉	ささくらおんせん	新潟県糸魚川市大平5804			上越・糸魚川・妙高	糸魚川	鉱泉	\N	\N	50636	\N
1711	1158	雨飾温泉	あまかざりおんせん	新潟県糸魚川市大字山寺梶山新湯			上越・糸魚川・妙高	糸魚川	含鉄泉	\N	\N	\N	\N
1712	1159	糸魚川温泉	いといがわおんせん	新潟県糸魚川市大野２９８－１			上越・糸魚川・妙高	糸魚川	硫酸塩泉	\N	\N	50514	\N
1713	1160	白馬温泉	はくばおんせん	新潟県糸魚川市大所			上越・糸魚川・妙高	糸魚川	炭酸水素塩泉	\N	\N	\N	\N
1714	1161	蒲原温泉	がまわらおんせん	新潟県糸魚川市大所			上越・糸魚川・妙高	糸魚川	硫黄泉	\N	\N	\N	\N
1715	1162	蓮華温泉	れんげおんせん	新潟県糸魚川市大所蓮華			上越・糸魚川・妙高	糸魚川	炭酸水素塩泉	\N	\N	\N	\N
1716	1163	かのせ温泉	かのせおんせん	新潟県東蒲原郡鹿瀬町大字鹿瀬松ヶ崎			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	塩化物泉	\N	\N	\N	\N
1717	1164	ハツカ石温泉	はつかいしおんせん	新潟県南魚沼郡塩沢町大字石打字土堂			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	硫酸塩泉	\N	\N	50218	\N
1718	1165	舞子温泉	まいこおんせん	新潟県南魚沼郡塩沢町舞子			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	塩化物泉	\N	\N	50219	\N
1719	1166	丸山温泉	まるやまおんせん	新潟県南魚沼郡塩沢町石打			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	50220	\N
1720	1167	ニュー浅草岳温泉	にゅーあさくさたけおんせん	新潟県北魚沼郡入広瀬村大字白川新田			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	硫黄泉	\N	\N	\N	\N
1721	1168	えちご川口温泉	えちごがわぐちおんせん	新潟県長岡市川口中山２５１５－４			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	塩化物泉	\N	\N	50892	\N
1722	1169	柏崎市簡保加入者ホーム	かしわざきしかんぽかにゅうしゃほーむ	新潟県柏崎市寿町			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	塩化物泉	\N	\N	\N	\N
1723	1170	新赤倉温泉	しんああかくらおんせん	新潟県中頸城郡妙高高原町新赤倉			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1724	1171	焼山温泉	やけやまおんせん	新潟県糸魚川市大字大平			上越・糸魚川・妙高	糸魚川	硫酸塩泉	\N	\N	\N	\N
1725	1172	大佐渡温泉	おおさどおんせん	新潟県佐渡郡相川町鹿伏			佐渡	佐渡	単純温泉	\N	\N	50232	\N
1726	1173	鹿伏温泉	かぶせおんせん	新潟県佐渡郡相川町鹿伏			佐渡	佐渡	塩化物泉	\N	\N	50233	\N
1727	1174	長手岬温泉	ながてみさきおんせん	新潟県佐渡郡相川町大字橘			佐渡	佐渡	塩化物泉	\N	\N	\N	\N
1728	2213	岩原観光温泉	いわっぱらかんこうおんせん	新潟県南魚沼郡湯沢町土樽			湯沢・苗場	湯沢	ナトリウム塩化物泉	\N	\N	50221	\N
1729	2214	三国峠温泉　峠の湯	みくにとうげおんせん　とうげのゆ	新潟県南魚沼郡湯沢町三国			湯沢・苗場	苗場・かぐら	単純温泉	\N	\N	50222	\N
1730	2215	浦子の湯	うらこのゆ	新潟県南魚沼郡湯沢町土樽146-2			湯沢・苗場	湯沢	単純温泉	\N	\N	50223	\N
1731	2267	ハツカ石温泉ふれあいの湯石打ユングパルナス	はつかいしおんせんふれあいのゆいしうちゆんぐぱるなす	新潟県南魚沼郡塩沢町大字石打字土堂946			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	アルカリ単純泉	\N	\N	\N	\N
1732	2281	鳥井原温泉	とりいばらおんせん	新潟県南魚沼郡湯沢町大字土樽743			湯沢・苗場	湯沢	弱アルカリ性低張性泉	\N	\N	\N	\N
1733	2286	アクエリア	あくえりあ	新潟県南魚沼郡塩沢町大字樺野沢350-1			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	弱アルカリ性低張性泉	\N	\N	\N	\N
1734	2291	GALA　1号源泉	がーらいちごうげんせん	新潟県南魚沼郡湯沢町大字湯沢茅平1039-2			湯沢・苗場	湯沢	硫酸塩泉	\N	\N	\N	\N
1735	2292	二居温泉	ふたいおんせん	新潟県南魚沼郡湯沢町三国537-1			湯沢・苗場	苗場・かぐら	単純温泉	\N	\N	\N	\N
1736	2293	三俣細越温泉	みつまたほそごえおんせん	新潟県南魚沼郡湯沢町三俣1021			湯沢・苗場	苗場・かぐら	弱アルカリ性低張性泉	\N	\N	\N	\N
1737	2294	金井温泉	かないおんせん	新潟県佐渡郡金井町大字中興乙2822-1			佐渡	佐渡	塩化物泉	\N	\N	\N	\N
1738	2295	相川温泉	あいかわおんせん	新潟県佐渡郡相川町大字栄町21			佐渡	佐渡	ナトリウム塩化物泉	\N	\N	\N	\N
1739	2296	畑野温泉	はたのおんせん	新潟県佐渡郡畑野町大字粟野江1810-4			佐渡	佐渡	アルカリ単純泉	\N	\N	\N	\N
1740	2297	真野温泉	まのおんせん	新潟県佐渡郡真野町大字真野538-1			佐渡	佐渡	ナトリウム塩化物泉	\N	\N	\N	\N
1741	2298	羽茂温泉	はもちおんせん	新潟県佐渡郡羽茂町大字飯岡170-1			佐渡	佐渡	弱アルカリ性低張性泉	\N	\N	\N	\N
1742	2299	小木海岸温泉	おぎかいがんおんせん	新潟県佐渡郡小木町大字小木町1494-6			佐渡	佐渡	ナトリウム塩化物泉	\N	\N	\N	\N
1743	2330	相川七浦温泉	あいかわななうらおんせん	新潟県佐渡郡相川町大浦548-1			佐渡	佐渡	硫黄泉	\N	\N	50234	\N
1744	2378	佐渡加茂湖温泉	さどかもこおんせん	新潟県両津市大字夷261			佐渡	佐渡	アルカリ単純泉	\N	\N	50230	\N
1745	2417	樽川温泉	たるかわおんせん	新潟県中頸城郡妙高村樽本乙532			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1746	2533	芝峠温泉	しばとうげおんせん	新潟県東頸城郡松代町大字蓬平字蓬798番地			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	弱アルカリ性低張性泉	\N	\N	50214	\N
1747	2534	上越市桑取温泉	じょうえつしくわどりおんせん	新潟県上越市			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1748	2546	城山温泉	しろやまおんせん	新潟県新発田市浦城山1			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	弱アルカリ性低張性泉	\N	\N	\N	\N
1749	2547	じょんのび温泉	じょんのびおんせん	新潟県刈羽郡高柳町高尾10-1			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	ナトリウム塩化物泉	\N	\N	\N	\N
1750	2566	鯨波松島温泉	くじらなみまつしまおんせん	新潟県柏崎市鯨波乙1828			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	塩化物泉	\N	\N	\N	\N
1751	2589	両津温泉	りょうつおんせん	新潟県両津市住吉80			佐渡	佐渡	硫酸塩泉	\N	\N	\N	\N
1752	2619	まほろば温泉	まほろばおんせん	新潟県岩船郡朝日村			瀬波・村上・岩船	瀬波・村上	弱アルカリ性低張性泉	\N	\N	\N	\N
1753	2620	塩の湯温泉	しおのゆおんせん	新潟県中蒲原郡中条町村松浜			瀬波・村上・岩船	岩船・胎内	ナトリウム塩化物泉	\N	\N	\N	\N
1754	2621	桂の関温泉	かつらのせきおんせん	新潟県岩船郡関川村			瀬波・村上・岩船	岩船・胎内	ナトリウム塩化物泉	\N	\N	\N	\N
1755	2622	村松さくらんど温泉	むらまつさくらんどおんせん	新潟県中蒲原郡村松町大字木越甲			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	\N	\N
1756	2623	馬下温泉	まおろしおんせん	新潟県五泉市馬下			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	アルカリ単純泉	\N	\N	\N	\N
1757	2624	八木ヶ鼻温泉	やぎがはなおんせん	新潟県南蒲原郡下田村			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	ナトリウム塩化物泉	\N	\N	\N	\N
1758	2625	田上ごまどう温泉	たがみごまどうおんせん	新潟県南蒲原郡田上町田上			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	硫酸塩泉	\N	\N	\N	\N
1759	2626	ちぢみの里	ちぢみのさと	新潟県小千谷市ひ生			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	弱アルカリ性低張性泉	\N	\N	\N	\N
1760	2627	柏崎潮風温泉	かしわざきしおかぜおんせん	新潟県柏崎市北園町			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	弱アルカリ性低張性泉	\N	\N	\N	\N
1761	2628	寿和温泉	すわおんせん	新潟県北魚沼郡八広瀬村穴沢			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	ナトリウム塩化物泉	\N	\N	\N	\N
1762	2629	湯之谷薬師温泉	ゆのたにやくしおんせん	新潟県北魚沼郡湯之谷村大字七日市新田			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	硫酸塩泉	\N	\N	\N	\N
1763	2630	神湯温泉	かみゆおんせん	新潟県北魚沼郡広神村清本			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	炭酸水素塩泉	\N	\N	\N	\N
1764	2631	青島温泉	あおしまおんせん	新潟県北魚沼郡小出町青島			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	弱アルカリ性低張性泉	\N	\N	\N	\N
1765	2632	結東温泉	けっとうおんせん	新潟県中魚沼郡津南町秋山郷結東			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	単純温泉	\N	\N	\N	\N
1766	2633	千手温泉	せんじゅおんせん	新潟県中魚沼郡川西町大字水口沢			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫黄泉	\N	\N	\N	\N
1767	2634	竜ヶ窪温泉	りゅうがくぼおんせん	新潟県中魚沼郡津南町谷内			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	鉱泉	\N	\N	\N	\N
1768	2635	当間高原	あてまこうげん	新潟県十日町市大字馬場葵748-4			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	ナトリウム塩化物泉	\N	\N	50484	\N
1769	2636	大観温泉	たいかんおんせん	新潟県南魚沼郡湯沢町土樽6301-7			湯沢・苗場	湯沢	単純温泉	\N	\N	50217	\N
1770	2637	矢代温泉	やしろおんせん	新潟県新井市西菅沼新田			上越・糸魚川・妙高	上越・妙高・鵜の浜	ナトリウム塩化物泉	\N	\N	\N	\N
1771	2638	柿崎上下浜温泉	かきざきじょうげはまおんせん	新潟県中頸城郡柿崎町上下浜			上越・糸魚川・妙高	上越・妙高・鵜の浜	炭酸水素塩泉	\N	\N	\N	\N
1772	2639	杉野沢温泉	すぎのさわおんせん	新潟県中頸城郡妙高高原町杉野沢			上越・糸魚川・妙高	上越・妙高・鵜の浜	硫酸塩泉	\N	\N	\N	\N
1773	2640	霧ヶ岳温泉	きりがたけおんせん	新潟県東頸城郡浦川原村小谷島			上越・糸魚川・妙高	上越・妙高・鵜の浜	ナトリウム塩化物泉	\N	\N	\N	\N
1774	2641	長峰温泉	ながみねおんせん	新潟県中頸城郡吉川町長峰			上越・糸魚川・妙高	上越・妙高・鵜の浜	弱アルカリ性低張性泉	\N	\N	\N	\N
1775	2655	相川温泉	あいかわおんせん	新潟県佐渡郡相川町鹿伏３３３			佐渡	佐渡	ナトリウム塩化物泉	\N	\N	\N	\N
1776	2674	湯沢温泉　薬師堂の湯	ゆざわおんせん　やくしどうのゆ	新潟県南魚沼郡湯沢町大字神立１５００			湯沢・苗場	湯沢	ナトリウム塩化物泉	\N	\N	50217	\N
1777	2717	秋葉温泉	あきはおんせん	新潟県新津市草水町			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	炭酸水素塩泉	\N	\N	\N	\N
1778	2725	間瀬田ノ浦温泉	まぜたのうらおんせん	新潟県西蒲原郡岩室村大字間瀬田ノ浦			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	弱アルカリ性低張性泉	\N	\N	50502	\N
1779	2745	姫川温泉	ひめかわおんせん	新潟県糸魚川市大字大所８８５－１			上越・糸魚川・妙高	糸魚川	ナトリウム塩化物泉	\N	\N	50514	\N
1780	2777	寺泊岬温泉	てらどまりみさきおんせん	新潟県三島郡寺泊町野積107			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	ナトリウム塩化物泉	\N	\N	50545	\N
1781	2808	花みずき温泉	はなみずきおんせん	新潟県長岡市上岩井6964			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	硫酸塩泉	\N	\N	50642	\N
1782	2831	銀山平温泉	ぎんざんだいらおんせん	新潟県魚沼市宇津野			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	その他	\N	\N	50662	\N
1783	2855	越後ゆきぐに温泉	えちごゆきぐにおんせん	新潟県南魚沼市五郎丸６３６－１			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	弱アルカリ性低張性泉	\N	\N	50219	\N
1784	2905	妙高高原二俣温泉	みょうこうこうげん　ふたまたおんせん	新潟県妙高市大字二俣字ウト山　2105番３			上越・糸魚川・妙高	上越・妙高・鵜の浜	ナトリウム塩化物泉	\N	\N	50739	\N
1785	2911	新発田温泉	しばたおんせん	新発田市五十公野4498-1			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	50746	\N
1786	2941	寺泊野積海岸温泉	てらどまりのづみかいがんおんせん	新潟県長岡市寺泊野積大野積　１１６３０－１７			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	ナトリウム塩化物泉	\N	\N	50769	\N
1787	3016	神の宮温泉	かみのみやおんせん	新潟県妙高市大字神宮寺31-3			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	50829	\N
1788	3051	くびき野温泉	くびきのおんせん	新潟県上越市下門前１６２			上越・糸魚川・妙高	上越・妙高・鵜の浜	硫酸塩泉	\N	\N	50871	\N
1789	3119	新胎内温泉	しんたいないおんせん	新潟県胎内市夏井1191番地3			瀬波・村上・岩船	岩船・胎内	弱アルカリ性低張性泉	\N	\N	50907	\N
1790	3147	宮中島の湯	みやなかじまのゆ	新潟県十日町市宮中			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫酸塩泉	\N	\N	50215	\N
1791	3173	ひなた鉱泉	ひなたこうせん	新潟県上越市三和区宮崎新田115-1			上越・糸魚川・妙高	上越・妙高・鵜の浜	弱アルカリ性低張性泉	\N	\N	50224	\N
1792	3247	ゆきだるま温泉	ゆきだるまおんせん	新潟県上越市安塚区須川2352			上越・糸魚川・妙高	上越・妙高・鵜の浜	ナトリウム塩化物泉	\N	\N	50970	\N
1793	3253	大峯温泉	おおみねおんせん	新潟県上越市木田1丁目1番3号			上越・糸魚川・妙高	上越・妙高・鵜の浜	硫酸塩泉	\N	\N	50977	\N
1794	3270	湯神社温泉	ゆじんじゃおんせん	新潟県西蒲原郡弥彦村大字弥彦字浅尾897番地9			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	中性低張性高温泉	\N	\N	50200	\N
1795	3308	朝日まほろば温泉	あさひまほろばおんせん	新潟県村上市猿沢１２９３			瀬波・村上・岩船	瀬波・村上	ナトリウム塩化物泉	\N	\N	50202	\N
1796	1175	境鉱泉	さかいこうせん	富山県下新川郡朝日町境			立山・黒部・宇奈月	宇奈月・黒部	含鉄泉	\N	\N	\N	\N
1797	1176	宮崎鉱泉	みやざきこうせん	富山県下新川郡朝日町宮崎			立山・黒部・宇奈月	宇奈月・黒部	含鉄泉	\N	\N	\N	\N
1798	1177	小川温泉元湯	おがわおんせんもとゆ	富山県下新川郡朝日町山崎湯の瀬			立山・黒部・宇奈月	宇奈月・黒部	塩化物泉	\N	\N	\N	\N
1799	1178	明日温泉	あけびおんせん	富山県下新川郡入善町舟見			立山・黒部・宇奈月	宇奈月・黒部	炭酸水素塩泉	\N	\N	\N	\N
1800	1179	宇奈月温泉	うなづきおんせん	富山県下新川郡宇奈月町			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	50235	\N
1801	1180	黒薙温泉	くろなぎおんせん	富山県下新川郡宇奈月町黒薙			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1802	1181	鐘釣温泉	かねつりおんせん	富山県下新川郡宇奈月町黒部国有林地内			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1803	1182	欅平温泉	けやきだいらおんせん	富山県下新川郡宇奈月町欅平			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1804	1183	名剣温泉	めいけんおんせん	富山県下新川郡宇奈月町黒部奥山			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1805	1184	祖母谷温泉	ばばだにおんせん	富山県下新川郡宇奈月町祖母谷			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1806	1185	阿曽原温泉	あぞはらおんせん	富山県下新川郡宇奈月町阿曽原			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1807	1186	地獄谷温泉	じごくだにおんせん	富山県中新川郡立山町芦峅寺			立山・黒部・宇奈月	立山	硫黄泉	\N	\N	\N	\N
1808	1187	みくりが池温泉	みくりがいけおんせん	富山県中新川郡立山町室堂平			立山・黒部・宇奈月	立山	硫黄泉	\N	\N	\N	\N
1809	1188	生地温泉	いくじおんせん	富山県黒部市生地吉田新			立山・黒部・宇奈月	宇奈月・黒部	塩化物泉	\N	\N	\N	\N
1810	1189	金太郎温泉	きんたろうおんせん	富山県魚津市天神野新			立山・黒部・宇奈月	滑川・魚津	硫黄泉	\N	\N	50236	\N
1811	1190	天神山温泉	てんじんやまおんせん	富山県魚津市小川寺			立山・黒部・宇奈月	滑川・魚津	塩化物泉	\N	\N	\N	\N
1812	1191	北山鉱泉	きたやまこうせん	富山県魚津市北山			立山・黒部・宇奈月	滑川・魚津	塩化物泉	\N	\N	50237	\N
1813	1192	湯神子温泉	ゆみこおんせん	富山県中新川郡上市町湯神子			立山・黒部・宇奈月	立山	単純温泉	\N	\N	\N	\N
1814	1193	亀谷温泉	かめがいおんせん	富山県上新川郡大山町亀谷			立山・黒部・宇奈月	立山	硫黄泉	\N	\N	\N	\N
1815	1194	粟巣野温泉	あわすのおんせん	富山県上新川郡大山町粟巣野			立山・黒部・宇奈月	立山	単純温泉	\N	\N	50239	\N
1816	1195	富山温泉	とやまおんせん	富山県富山市窪新町			富山	富山・八尾	単純温泉	\N	\N	50239	\N
1817	1196	鯰第一温泉	なまずだいいちおんせん	富山県富山市四方荒屋			富山	富山・八尾	含鉄泉	\N	\N	\N	\N
1818	1197	鯰温泉	なまずおんせん	富山県富山市今市			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1819	1198	雨晴温泉	あまはらしおんせん	富山県高岡市太田８８－１			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1820	1199	岩井戸温泉	いわいどおんせん	富山県氷見市波			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1821	1200	ひみ阿尾の浦温泉	ひみあおのうらおんせん	富山県氷見市阿尾			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1822	1201	氷見九殿浜温泉	ひみくでんはまおんせん	富山県氷見市姿			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1823	1202	桑ノ院鉱泉	くわのいんこうせん	富山県氷見市桑院			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	\N	\N
1824	1203	宮島温泉	みやじまおんせん	富山県小矢部市名ヶ滝			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1825	1204	太閤山温泉	たいこうやまおんせん	富山県射水郡小杉町太閤山			高岡・氷見・砺波	氷見・高岡	含鉄泉	\N	\N	\N	\N
1826	1205	寺尾温泉	てらおおんせん	富山県砺波市井栗谷			高岡・氷見・砺波	小矢部・砺波	硫黄泉	\N	\N	\N	\N
1827	1206	春日温泉	かすがおんせん	富山県上新川郡大沢野町春日			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1828	1207	越中八尾温泉	えつちゅうやつおおんせん	富山県婦負郡八尾町高熊			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1829	1208	音川温泉	おとがわおんせん	富山県婦負郡婦中町牛滑			富山	富山・八尾	単純温泉	\N	\N	\N	\N
1830	1209	山田温泉	やまだおんせん	富山県婦負郡山田村湯			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1831	1210	雄神温泉	おがみおんせん	富山県砺波市上中野			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1832	1211	庄川温泉郷	しょうがわおんせんごう	富山県東礪波郡庄川町金屋			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	50241	\N
1833	1212	薬師温泉	やくしおんせん	富山県東礪波郡庄川町金屋			高岡・氷見・砺波	小矢部・砺波	二酸化炭素泉	\N	\N	\N	\N
1834	1213	新大牧温泉	しんおおまきおんせん	富山県東礪波郡利賀村下原			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1835	1214	大牧温泉	おおまきおんせん	富山県東礪波郡利賀村大牧			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1836	1215	観音温泉	かんのんおんせん	富山県東礪波郡福野町安居			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1837	1216	安田温泉	やすだおんせん	富山県東礪波郡福野町安居			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1838	1217	高窪温泉	たかくぼおんせん	富山県西礪波郡福光町高窪			高岡・氷見・砺波	小矢部・砺波	放射能泉	\N	\N	\N	\N
1839	1218	湯谷温泉	ゆだにおんせん	富山県西礪波郡福光町湯谷			高岡・氷見・砺波	小矢部・砺波	硫黄泉	\N	\N	\N	\N
1840	1219	ふくみつ華山温泉	ふくみつはなやまおんせん	富山県西礪波郡福光町川西			高岡・氷見・砺波	小矢部・砺波	硫黄泉	\N	\N	50242	\N
1841	1220	川合田温泉	かわいだおんせん	富山県西礪波郡福光町川合田			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1842	1221	法林寺温泉	ほうりんじおんせん	富山県西礪波郡福光町法林寺			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1843	1222	五箇山温泉	ごかやまおんせん	富山県東礪波郡平村田向大平			高岡・氷見・砺波	小矢部・砺波	硫酸塩泉	\N	\N	\N	\N
1844	1223	利賀そばの郷温泉	とがそばのさとおんせん	富山県東礪波郡利賀村坂上			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1845	1224	呉羽山温泉	くれはやまおんせん	富山県富山市呉羽町			富山	富山・八尾	単純温泉	\N	\N	50240	\N
1846	1225	青井谷温泉	あおいだにおんせん	富山県射水郡小杉町青井谷			高岡・氷見・砺波	氷見・高岡	単純温泉	\N	\N	\N	\N
1847	1226	桜ヶ池温泉	さくらがいけおんせん	富山県東礪波郡城端町立野原			高岡・氷見・砺波	小矢部・砺波	含鉄泉	\N	\N	\N	\N
1848	1227	牛岳温泉	うしだけおんせん	富山県婦負郡山田村小谷字中根			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1849	2216	立山山麓温泉	たてやまさんろくおんせん	富山県上新川郡大山町			立山・黒部・宇奈月	立山	塩化物泉	\N	\N	50238	\N
1850	2775	床鍋鉱泉	とこなべこうせん	富山県氷見市床鍋56			高岡・氷見・砺波	氷見・高岡	アルカリ単純泉	\N	\N	50542	\N
1851	3059	越中となみ野温泉	えっちゅうとなみのおんせん	富山県砺波市安川字天皇３３０番地			高岡・氷見・砺波	小矢部・砺波	弱アルカリ性低張性泉	\N	\N	50241	\N
1852	3071	吉峰温泉	よしみねおんせん	富山県中新川郡立山町吉峰野開１２			立山・黒部・宇奈月	立山	炭酸水素塩泉	\N	\N	50238	\N
1853	3078	庄川峡　長崎温泉	しょうがわきょう　ながさきおんせん	富山県南砺市利賀村北原1番１７			高岡・氷見・砺波	小矢部・砺波	その他	\N	\N	50241	\N
1854	3125	五ヶ山温泉	ごかやまおんせん	富山県南砺市田向３３３－１			高岡・氷見・砺波	小矢部・砺波	ナトリウム塩化物泉	\N	\N	50241	\N
1855	3163	アローザ温泉	あろーざおんせん	富山県南砺市才川七荒山9-5 			高岡・氷見・砺波	小矢部・砺波	アルカリ単純泉	\N	\N	50936	\N
1856	3171	こぶしヶ丘温泉	こぶしがおかおんせん	富山県高岡市福岡町五位57－2			高岡・氷見・砺波	氷見・高岡	弱アルカリ性低張性泉	\N	\N	50941	\N
1857	3179	氷見温泉	ひみおんせん	富山県氷見市阿尾45			高岡・氷見・砺波	氷見・高岡	アルカリ単純泉	\N	\N	50542	\N
1858	3199	神通峡岩稲温泉	じんづうきょういわいねおんせん	富山県富山市岩稲字中ノ谷1285			富山	富山・八尾	単純温泉	\N	\N	50239	\N
1859	1228	山代温泉	やましろおんせん	石川県加賀市山代温泉			加賀・小松・辰口	加賀	硫酸塩泉	\N	\N	50249	\N
1860	1229	禄剛崎温泉	ろくごうさきおんせん	石川県珠洲市狼煙町ヲ			輪島・能登	輪島・能登	含鉄泉	\N	\N	\N	\N
1861	1230	葭ヶ浦温泉	よしがうらおんせん	石川県珠洲市三崎町寺家			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1862	1231	広谷温泉	ひろたにおんせん	石川県珠洲市上戸町寺社			輪島・能登	輪島・能登	含鉄泉	\N	\N	\N	\N
1863	1232	谷崎温泉	たにざきおんせん	石川県珠洲市宝立町谷崎			輪島・能登	輪島・能登	含鉄泉	\N	\N	\N	\N
1864	1233	珠洲温泉	すずおんせん	石川県珠洲市宝立町鵜飼			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1865	1234	恋路温泉	こいじおんせん	石川県鳳珠郡能登町恋路海岸			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1866	1235	柳田温泉	やなぎだおんせん	石川県鳳珠郡能登町柳田知部			輪島・能登	輪島・能登	硫酸塩泉	\N	\N	\N	\N
1867	1236	ねぶた温泉	ねぶたおんせん	石川県輪島市大野町鶴ヶ池			輪島・能登	輪島・能登	単純温泉	\N	\N	50248	\N
1868	1237	湯川温泉	ゆがわおんせん	石川県七尾市湯川町			和倉・七尾	和倉・七尾	塩化物泉	\N	\N	\N	\N
1869	1238	赤崎温泉	あかさきおんせん	石川県七尾市大田町			和倉・七尾	和倉・七尾	塩化物泉	\N	\N	\N	\N
1870	1239	和倉温泉	わくらおんせん	石川県七尾市和倉町			和倉・七尾	和倉・七尾	塩化物泉	\N	\N	50246	\N
1871	1240	能登中島温泉	のとなかじまおんせん	石川県七尾市中島町塩津			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1872	1241	志賀の郷温泉	しかのさとおんせん	石川県羽咋郡志賀町矢蔵谷			輪島・能登	輪島・能登	塩化物泉	\N	\N	50778	\N
1873	1242	倶利伽羅温泉	くりからおんせん	石川県河北郡津幡町坂戸			金沢・羽咋	羽咋・かほく	硫黄泉	\N	\N	\N	\N
1874	1243	津幡温泉	つばたおんせん	石川県河北郡津幡町庄			金沢・羽咋	羽咋・かほく	単純温泉	\N	\N	\N	\N
1875	1244	内灘砂丘放水路温泉	うちなださきゅうほうすいろおんせん	石川県河北郡内灘町宮坂			金沢・羽咋	羽咋・かほく	塩化物泉	\N	\N	\N	\N
1876	1245	森本温泉	もりもとおんせん	石川県金沢市観法寺町			金沢・羽咋	金沢・湯涌	炭酸水素塩泉	\N	\N	\N	\N
1877	1246	深谷温泉	ふかたにおんせん	石川県金沢市深谷町チ95			金沢・羽咋	金沢・湯涌	ナトリウム塩化物泉	\N	\N	50889	\N
1878	1248	白鳥路温泉	はくちょうろおんせん	石川県金沢市丸の内			金沢・羽咋	金沢・湯涌	炭酸水素塩泉	\N	\N	\N	\N
1879	1249	犀川峡金沢温泉	さいがわきょうかなざわおんせん	石川県金沢市末町			金沢・羽咋	金沢・湯涌	硫黄泉	\N	\N	\N	\N
1880	1250	湯涌温泉	ゆわくおんせん	石川県金沢市湯涌町			金沢・羽咋	金沢・湯涌	塩化物泉	\N	\N	50605	\N
1881	1251	鶴来温泉	つるぎおんせん	石川県白山市鶴来日詰町			白山	白山	硫酸塩泉	\N	\N	50254	\N
1882	1252	辰口温泉	たつのくちおんせん	石川県能美市辰口町			加賀・小松・辰口	粟津・小松・辰口	塩化物泉	\N	\N	50244	\N
1883	1253	美川温泉	みかわおんせん	石川県白山市			白山	白山	含鉄泉	\N	\N	\N	\N
1884	1254	涌泉寺温泉	ゆうせんじおんせん	石川県小松市みどり町			加賀・小松・辰口	粟津・小松・辰口	単純温泉	\N	\N	\N	\N
1885	1255	赤穂谷温泉	あかほだにおんせん	石川県小松市中海町			加賀・小松・辰口	粟津・小松・辰口	塩化物泉	\N	\N	\N	\N
1886	1256	加賀八幡温泉	かがやわたおんせん	石川県小松市加賀八幡			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1887	1257	木場温泉	きばおんせん	石川県小松市木場町			加賀・小松・辰口	粟津・小松・辰口	単純温泉	\N	\N	\N	\N
1888	1258	粟津温泉	あわづおんせん	石川県小松市粟津町			加賀・小松・辰口	粟津・小松・辰口	塩化物泉	\N	\N	50250	\N
1889	1259	瀬領温泉	せりょうおんせん	石川県小松市瀬領温泉			加賀・小松・辰口	粟津・小松・辰口	二酸化炭素泉	\N	\N	\N	\N
1890	1260	赤瀬温泉	あかぜおんせん	石川県小松市赤瀬町			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1891	1261	手取温泉	てどりおんせん	石川県白山市上野町			白山	白山	硫酸塩泉	\N	\N	\N	\N
1892	1262	千丈温泉	せんじょうおんせん	石川県白山市河内町内尾口65番地			白山	白山	単純温泉	\N	\N	50886	\N
1893	1263	中宮温泉	ちゅうぐうおんせん	石川県白山市中宮			白山	白山	塩化物泉	\N	\N	\N	\N
1894	1264	新岩間温泉	しんいわまおんせん	石川県白山市尾添			白山	白山	アルカリ単純泉	\N	\N	\N	\N
1895	1265	白山一里野温泉	はくさんいちりのおんせん	石川県白山市尾添			白山	白山	塩化物泉	\N	\N	50255	\N
1896	1266	白峰温泉	しらみねおんせん	石川県白山市白峰			白山	白山	塩化物泉	\N	\N	50256	\N
1897	1267	片山津温泉	かたやまづおんせん	石川県加賀市片山津温泉			加賀・小松・辰口	加賀	塩化物泉	\N	\N	50251	\N
1898	1268	加賀橋立温泉	かがはしだておんせん	石川県加賀市橋立町			加賀・小松・辰口	加賀	炭酸水素塩泉	\N	\N	\N	\N
1899	1269	加賀三谷温泉	かがみたにおんせん	石川県加賀市直下			加賀・小松・辰口	加賀	塩化物泉	\N	\N	\N	\N
1900	1270	山中温泉	やまなかおんせん	石川県江沼郡山中町西桂木町			加賀・小松・辰口	加賀	塩化物泉	\N	\N	50252	\N
1901	1271	うさみ温泉	うさみおんせん	石川県小松市大領町			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1902	1272	小松温泉	こまつおんせん	石川県小松市本折町			加賀・小松・辰口	粟津・小松・辰口	単純温泉	\N	\N	50253	\N
1903	1273	小松グリーン温泉	こまつぐりーんおんせん	石川県小松市小島町			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1904	1274	サンピア小松温泉	さんぴあこまつおんせん	石川県小松市長崎町			加賀・小松・辰口	粟津・小松・辰口	中性低張性高温泉	\N	\N	\N	\N
1905	1275	能登金剛温泉	のとこんごうおんせん	石川県羽咋郡志賀町富来生神			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1906	1276	門前温泉じんのびの湯	もんぜんじんのびのゆ	石川県鳳至郡門前町千代			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1907	1277	杉平鉱泉	すぎひらこうせん	石川県輪島市杉平町矢田			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1908	1278	湯元能登輪島温泉	ゆもとのとわじまおんせん	石川県輪島市塚田町			輪島・能登	輪島・能登	塩化物泉	\N	\N	50247	\N
1909	1279	輪島温泉郷	わじまおんせんきょう	石川県輪島市河井町			輪島・能登	輪島・能登	放射能泉	\N	\N	50248	\N
1910	2471	金沢松島温泉	かなざわまつしまおんせん	石川県金沢市松島町17			金沢・羽咋	金沢・湯涌	含鉄泉	\N	\N	\N	\N
1911	2535	ひょっこり温泉	ひょっこりおんせん	石川県鹿島郡能登町字向田3部1番地			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1912	2690	サウナ片町温泉	さうなかたまちおんせん	石川県金沢市片町１－５－２４			金沢・羽咋	金沢・湯涌	塩化物泉	\N	\N	50486	\N
1913	2860	瀬女温泉	せなおんせん	石川県白山市瀬戸卯４３－３			白山	白山	ナトリウム塩化物泉	\N	\N	50693	\N
1914	2861	柴山温泉	しばやまおんせん	石川県加賀市柴山町と5番地１			加賀・小松・辰口	加賀	ナトリウム塩化物泉	\N	\N	50694	\N
1915	2877	金沢駅前温泉	かなざわえきまえおんせん	石川県金沢市堀川新町2-25			金沢・羽咋	金沢・湯涌	その他	\N	\N	50709	\N
1916	2878	千里浜やわらぎ温泉	ちりはまやわらぎおんせん	石川県羽咋郡宝達志水町敷浪5号48-2			金沢・羽咋	羽咋・かほく	ナトリウム塩化物泉	\N	\N	50710	\N
1917	2889	はまなす温泉	はまなすおんせん	石川県羽咋市千里浜町タ1番26			金沢・羽咋	羽咋・かほく	硫酸塩泉	\N	\N	50719	\N
1918	2896	なかじま猿田彦温泉	なかじまさるたひこおんせん	石川県七尾市中島町小牧井部55番地			和倉・七尾	和倉・七尾	ナトリウム塩化物泉	\N	\N	50729	\N
1919	2958	観音温泉	かんのんおんせん	石川県加賀市作見町観音山１－１			加賀・小松・辰口	加賀	ナトリウム塩化物泉	\N	\N	50785	\N
1920	3023	なみなみの湯	なみなみのゆ	石川県羽咋市羽咋町オ70			金沢・羽咋	羽咋・かほく	ナトリウム塩化物泉	\N	\N	50843	\N
1921	3025	寺井温泉	てらいおんせん	石川県能美市石子町ハ147番地1			加賀・小松・辰口	粟津・小松・辰口	炭酸水素塩泉	\N	\N	50844	\N
1922	3076	松任ＣＣＺ温泉	まっとうしーしーぜっとおんせん	石川県白山市徳光町3149番地1			白山	白山	ナトリウム塩化物泉	\N	\N	50885	\N
1923	3106	白山里温泉	はくさんりおんせん	石川県白山市瀬波子51-5			白山	白山	炭酸水素塩泉	\N	\N	50898	\N
1924	3114	岩間温泉	いわまおんせん	石川県白山市尾添ム４－１			白山	白山	ナトリウム塩化物泉	\N	\N	50902	\N
1925	3189	金沢藤江温泉	かなざわふじえおんせん	石川県金沢市藤江南3丁目23番地1			金沢・羽咋	金沢・湯涌	ナトリウム塩化物泉	\N	\N	50951	\N
1926	3200	能登黒川温泉	のとくろかわおんせん	石川県鳳珠郡能登町字黒川7-4-2			輪島・能登	輪島・能登	ナトリウム塩化物泉	\N	\N	50248	\N
1927	1280	越前玉川温泉	えちぜんたまがわおんせん	福井県丹生郡越前町玉川			越前	越前	単純温泉	\N	\N	50257	\N
1928	1281	越前厨温泉	えちぜんくりやおんせん	福井県丹生郡越前町厨地区の温泉			越前	越前	炭酸水素塩泉	\N	\N	50257	\N
1929	1282	東尋坊温泉	とうじんぼうおんせん	福井県坂井郡三国町緑ガ丘			三国・あわら	三国	アルカリ単純泉	\N	\N	50668	\N
1930	1283	あわら温泉	あわらおんせん	福井県坂井郡芦原町温泉			三国・あわら	あわら	塩化物泉	\N	\N	50261	\N
1931	1284	佐野温泉	さのおんせん	福井県福井市佐野町			福井・奥越前	福井・鯖江	硫酸塩泉	\N	\N	\N	\N
1932	1285	大安寺温泉	だいあんじおんせん	福井県福井市天菅生町			福井・奥越前	福井・鯖江	単純温泉	\N	\N	\N	\N
1933	1286	福井ならはら温泉	ふくいならはらおんせん	福井県福井市南楢原町字春日平			福井・奥越前	福井・鯖江	単純温泉	\N	\N	50258	\N
1934	1287	杉山温泉	すぎやまおんせん	福井県勝山市北谷町杉山			福井・奥越前	奥越前・池田	放射能泉	\N	\N	\N	\N
1935	1288	横倉鉱泉	よこくらこうせん	福井県勝山市郡町			福井・奥越前	奥越前・池田	含鉄泉	\N	\N	\N	\N
1936	1289	勝山温泉	かつやまおんせん	福井県勝山市片瀬町			福井・奥越前	奥越前・池田	含鉄泉	\N	\N	50263	\N
1937	1290	鳩ヶ湯温泉	はとがゆおんせん	福井県大野市上打波			福井・奥越前	奥越前・池田	塩化物泉	\N	\N	\N	\N
1938	1291	美山森林温泉	みやましんりんおんせん	福井県足羽郡美山町市波			福井・奥越前	福井・鯖江	硫黄泉	\N	\N	\N	\N
1939	1292	上河内鉱泉	かみこうちこうせん	福井県鯖江市上河内町			福井・奥越前	福井・鯖江	硫酸塩泉	\N	\N	\N	\N
1940	1293	渓流温泉	けいりゅうおんせん	福井県今立郡池田町志津原			福井・奥越前	奥越前・池田	含鉄泉	\N	\N	\N	\N
1941	1294	三六温泉	さんろくおんせん	福井県鯖江市神明町			福井・奥越前	福井・鯖江	炭酸水素塩泉	\N	\N	\N	\N
1942	1295	天谷鉱泉	あまだにこうせん	福井県丹生郡朝日町天谷			越前	越前	単純温泉	\N	\N	\N	\N
1943	1296	織田温泉	おたおんせん	福井県丹生郡織田町織田			越前	越前	硫酸塩泉	\N	\N	\N	\N
1944	1297	敦賀トンネル温泉	つるがとんねるおんせん	福井県敦賀市吉河			若狭	敦賀・若狭	放射能泉	\N	\N	50876	\N
1945	1298	美浜温泉	みはまおんせん	福井県美方郡美浜町久々子			若狭	敦賀・若狭	硫黄泉	\N	\N	\N	\N
1946	1299	虹岳島温泉	こがしまおんせん	福井県三方郡三方町気山切追			若狭	敦賀・若狭	放射能泉	\N	\N	\N	\N
1947	1300	三方五湖ラドン温泉	みかたごこらどんおんせん	福井県三方郡三方町生倉			若狭	敦賀・若狭	炭酸水素塩泉	\N	\N	\N	\N
1948	1301	河内温泉	かわちおんせん	福井県遠敷郡上中町河内			若狭	敦賀・若狭	放射能泉	\N	\N	\N	\N
1949	1302	丸岡温泉	まるおかおんせん	福井県坂井郡丸岡町山竹田			三国・あわら	三国	硫黄泉	\N	\N	\N	\N
1950	1303	九頭竜温泉	くずりゅうおんせん	福井県大野郡和泉村下山			福井・奥越前	奥越前・池田	硫酸塩泉	\N	\N	\N	\N
1951	2253	三国温泉	みくにおんせん	福井県坂井郡三国町宿			三国・あわら	三国	単純温泉	\N	\N	50262	\N
1952	2331	鷹巣温泉	たかすおんせん	福井県福井市蓑町22字17番1			福井・奥越前	福井・鯖江	ナトリウム塩化物泉	\N	\N	50259	\N
1953	2379	福井温泉	ふくいおんせん	福井県福井市順化1-2003			福井・奥越前	福井・鯖江	硫酸塩泉	\N	\N	50260	\N
1954	2932	北潟温泉	きたがたおんせん	福井県あわら市北潟211			三国・あわら	あわら	アルカリ単純泉	\N	\N	50761	\N
1955	2968	花はす温泉	はなはすおんせん	福井県越前市南越前町中小屋60-1			越前	越前	アルカリ単純泉	\N	\N	50792	\N
1956	2999	かわだ温泉	かわだおんせん	福井県鯖江市上河内町１９－３７－２			福井・奥越前	福井・鯖江	塩化物泉	\N	\N	50815	\N
1957	3063	天然みかた温泉	てんねんみかたおんせん	福井県三方上中郡若狭町中央1号5番地			若狭	敦賀・若狭	その他	\N	\N	50876	\N
1958	3242	越前南部温泉	えちぜんなんぶおんせん	福井県丹生郡越前町高佐32-13-1			越前	越前	炭酸鉄泉	\N	\N	50257	\N
1959	3320	浄土寺温泉	じょうどじおんせん	福井県勝山市村岡町浄土寺３０－１１			福井・奥越前	奥越前・池田	硫酸塩泉	\N	\N	50263	\N
1960	1637	土肥温泉	といおんせん	静岡県田方郡土肥町土肥			西伊豆	戸田・土肥	硫酸塩泉	\N	\N	50282	\N
1961	1638	伊豆山温泉	いずさんおんせん	静岡県熱海市伊豆山			熱海	熱海	硫酸塩泉	\N	\N	50265	\N
1962	1639	熱海温泉	あたみおんせん	静岡県熱海市熱海			熱海	熱海	塩化物泉	\N	\N	50265	\N
1963	1640	スプリングス温泉	すぷりんぐすおんせん	静岡県田方郡函南町桑原			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1964	1641	竹倉温泉	たけくらおんせん	静岡県三島市竹倉			沼津・三島	三島	含鉄泉	\N	\N	\N	\N
1965	1642	畑毛温泉	はたけおんせん	静岡県田方郡函南町畑毛			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	50288	\N
1966	1643	奈古谷温泉	なごやおんせん	静岡県田方郡韮山町奈古谷			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1967	1644	駒の湯温泉	こまのゆおんせん	静岡県田方郡韮山町奈古谷			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1968	1645	韮山温泉	にらやまおんせん	静岡県田方郡韮山町南条			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1969	1646	伊豆長岡温泉	いずながおかおんせん	静岡県田方郡伊豆長岡町長岡・古奈			中伊豆	伊豆長岡・大仁・韮山	弱アルカリ性低張性泉	\N	\N	50289	\N
1970	1647	網代温泉	あじろおんせん	静岡県熱海市下多賀			熱海	南熱海・多賀・網代	単純温泉	\N	\N	50265	\N
1971	1648	宇佐美温泉	うさみおんせん	静岡県伊東市宇佐美			伊東・宇佐美・川奈	伊豆高原	塩化物泉	\N	\N	50267	\N
1972	1649	伊東温泉	いとうおんせん	静岡県伊東市			伊東・宇佐美・川奈	伊豆高原	硫酸塩泉	\N	\N	50267	\N
1973	1650	白岩温泉	しらいわおんせん	静岡県田方郡中伊豆町上白岩			中伊豆	修善寺・天城湯ヶ島・中伊豆	塩化物泉	\N	\N	50290	\N
1974	1651	柳瀬温泉	やなせおんせん	静岡県田方郡中伊豆町八幡			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	\N	\N
1975	1652	大仁温泉	おおひとおんせん	静岡県田方郡大仁町大仁			中伊豆	伊豆長岡・大仁・韮山	塩化物泉	\N	\N	\N	\N
1976	1653	修善寺温泉	しゅぜんじおんせん	静岡県田方郡修善寺町修善寺			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50291	\N
1977	1654	月ヶ瀬温泉	つきがせおんせん	静岡県田方郡天城湯ヶ島町月ヶ瀬			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50789	\N
1978	1655	船原温泉	ふなばらおんせん	静岡県田方郡天城湯ヶ島町上船原			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50292	\N
1979	1656	吉奈温泉	よしなおんせん	静岡県伊豆市吉奈101			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50292	\N
1980	1657	嵯峨沢温泉	さがさわおんせん	静岡県嵯峨沢温泉			中伊豆	修善寺・天城湯ヶ島・中伊豆	塩化物泉	\N	\N	50292	\N
1981	1658	湯ヶ島温泉	ゆがしまおんせん	静岡県田方郡天城湯ヶ島町湯ヶ島			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50292	\N
1982	1659	伊豆高原温泉	いずこうげんおんせん	静岡県伊東市八幡野			伊豆高原	伊豆高原	硫酸塩泉	\N	\N	50268	\N
1983	1661	伊豆城ヶ崎温泉	いずじょうがさきおんせん	静岡県伊東市富戸			伊豆高原	伊豆高原	単純温泉	\N	\N	50269	\N
1984	1662	浮山温泉郷	うきやまおんせんきょう	静岡県伊東市八幡野			伊豆高原	伊豆高原	その他	\N	\N	50454	\N
1985	1663	赤沢温泉	あかざわおんせん	静岡県伊東市赤沢			伊豆高原	伊豆高原	単純温泉	\N	\N	50270	\N
1986	1664	大川温泉	おおかわおんせん	静岡県賀茂郡東伊豆町大川			東伊豆	大川・北川・熱川	硫酸塩泉	\N	\N	50271	\N
1987	1665	北川温泉	ほっかわおんせん	静岡県賀茂郡東伊豆町奈良本			東伊豆	大川・北川・熱川	単純温泉	\N	\N	50272	\N
1988	1666	熱川温泉	あたがわおんせん	静岡県賀茂郡東伊豆町奈良本			東伊豆	大川・北川・熱川	塩化物泉	\N	\N	50273	\N
1989	1667	白田温泉	しらだおんせん	静岡県賀茂郡東伊豆町白田			東伊豆	片瀬・白田	単純温泉	\N	\N	50274	\N
1990	1668	片瀬温泉	かたせおんせん	静岡県賀茂郡東伊豆町片瀬			東伊豆	片瀬・白田	塩化物泉	\N	\N	50274	\N
1991	1669	稲取温泉	いなとりおんせん	静岡県賀茂郡東伊豆町稲取			東伊豆	稲取	単純温泉	\N	\N	50275	\N
1992	1670	今井浜温泉	いまいはまおんせん	静岡県賀茂郡河津町今井浜			東伊豆	河津・今井浜	単純温泉	\N	\N	50276	\N
1993	1671	河津浜温泉	かわづはまおんせん	静岡県賀茂郡河津町浜			東伊豆	河津・今井浜	塩化物泉	\N	\N	50277	\N
1994	1672	谷津温泉	やつおんせん	静岡県賀茂郡河津町谷津			東伊豆	河津・今井浜	塩化物泉	\N	\N	50277	\N
1995	1673	峰温泉	みねおんせん	静岡県賀茂郡河津町峰			東伊豆	河津・今井浜	硫酸塩泉	\N	\N	50277	\N
1996	1674	湯ヶ野温泉	ゆがのおんせん	静岡県賀茂郡河津町湯ヶ野			東伊豆	河津・今井浜	塩化物泉	\N	\N	50277	\N
1997	1675	小鍋温泉	こなべおんせん	静岡県賀茂郡河津町小鍋			東伊豆	河津・今井浜	硫酸塩泉	\N	\N	\N	\N
1998	1676	大滝・七滝温泉	おおだる・ななだるおんせん	静岡県賀茂郡河津町梨本			東伊豆	河津・今井浜	塩化物泉	\N	\N	50278	\N
1999	1677	宇久須温泉	うぐすおんせん	静岡県賀茂郡賀茂村宇久須			西伊豆	堂ヶ島・宇久須	塩化物泉	\N	\N	50284	\N
2000	1678	禰宜ノ畑温泉	ねぎのはたおんせん	静岡県賀茂郡西伊豆町大沢里			西伊豆	堂ヶ島・宇久須	単純温泉	\N	\N	\N	\N
2001	1679	猪乃湯温泉	いのゆおんせん	静岡県賀茂郡西伊豆町大沢里			西伊豆	堂ヶ島・宇久須	塩化物泉	\N	\N	\N	\N
2002	1680	浮島温泉	ふとうおんせん	静岡県賀茂郡西伊豆町浮島			西伊豆	堂ヶ島・宇久須	硫酸塩泉	\N	\N	\N	\N
2003	1681	堂ヶ島温泉	どうがしまおんせん	静岡県賀茂郡西伊豆町仁科堂ヶ島			西伊豆	堂ヶ島・宇久須	塩化物泉	\N	\N	50285	\N
2004	1682	大沢温泉	おおさわおんせん	静岡県賀茂郡松崎町大沢			西伊豆	松崎・雲見	単純温泉	\N	\N	\N	\N
2005	1683	桜田温泉	さくらだおんせん	静岡県賀茂郡松崎町桜田			西伊豆	松崎・雲見	塩化物泉	\N	\N	50721	\N
2006	1684	松崎温泉	まつざきおんせん	静岡県賀茂郡松崎町			西伊豆	松崎・雲見	塩化物泉	\N	\N	50286	\N
2007	1685	岩地温泉	いわちおんせん	静岡県賀茂郡松崎町岩地			西伊豆	松崎・雲見	塩化物泉	\N	\N	\N	\N
2008	1686	雲見温泉	くもみおんせん	静岡県賀茂郡松崎町雲見			西伊豆	松崎・雲見	塩化物泉	\N	\N	50287	\N
2009	1687	石部温泉	いしぶおんせん	静岡県賀茂郡松崎町石部			西伊豆	松崎・雲見	塩化物泉	\N	\N	\N	\N
2010	1688	観音温泉	かんのんおんせん	静岡県下田市横川			下田・白浜	下田・白浜	硫酸塩泉	\N	\N	50842	\N
2011	1689	横川温泉	よこかわおんせん	静岡県下田市横川			下田・白浜	下田・白浜	硫酸塩泉	\N	\N	\N	\N
2012	1690	蓮台寺温泉	れんだいじおんせん	静岡県下田市蓮台寺河内			下田・白浜	下田・白浜	硫酸塩泉	\N	\N	50841	\N
2013	1691	下田温泉	しもだおんせん	静岡県下田市柿崎			下田・白浜	下田・白浜	塩化物泉	\N	\N	50279	\N
2014	1692	弓ヶ浜温泉	ゆみがはまおんせん	静岡県賀茂郡南伊豆町湊			南伊豆	弓ヶ浜	硫酸塩泉	\N	\N	50280	\N
2015	1693	下賀茂温泉	しもかもおんせん	静岡県賀茂郡南伊豆町下賀茂			南伊豆	下賀茂	硫酸塩泉	\N	\N	50281	\N
2016	1694	伊豆湯河原温泉	いずゆがわらおんせん	静岡県熱海市泉			熱海	熱海	硫酸塩泉	\N	\N	\N	\N
2017	1695	原温泉	はらおんせん	静岡県沼津市原			沼津・三島	沼津	硫酸塩泉	\N	\N	\N	\N
2018	1697	梅ヶ島金山温泉	うめがしまきんざんおんせん	静岡県静岡市梅ヶ島			静岡・清水	静岡	塩化物泉	\N	\N	\N	\N
2019	1698	コンヤ温泉	こんやおんせん	静岡県静岡市葵区梅ヶ島			静岡・清水	静岡	塩化物泉	\N	\N	50614	\N
2020	1699	接岨峡温泉	せっそきょうおんせん	静岡県榛原郡本川根町梅地			大井川・寸又峡・川根	大井川・寸又峡・川根	塩化物泉	\N	\N	\N	\N
2021	1700	寸又峡温泉	すまたきょうおんせん	静岡県榛原郡本川根町寸又峡			大井川・寸又峡・川根	大井川・寸又峡・川根	単純温泉	\N	\N	50300	\N
2022	1701	白沢温泉	しらさわおんせん	静岡県榛原郡本川根町奥泉			大井川・寸又峡・川根	大井川・寸又峡・川根	単純温泉	\N	\N	\N	\N
2023	1702	わらびの温泉	わらびのおんせん	静岡県静岡市蕨野			静岡・清水	静岡	単純温泉	\N	\N	\N	\N
2024	1703	油山温泉	ゆやまおんせん	静岡県静岡市油山			静岡・清水	静岡	単純温泉	\N	\N	50298	\N
2025	1704	平山温泉	ひらやまおんせん	静岡県静岡市平山			静岡・清水	静岡	塩化物泉	\N	\N	\N	\N
2026	1705	北沼上温泉	きたぬまかみおんせん	静岡県静岡市主長尾			静岡・清水	静岡	塩化物泉	\N	\N	\N	\N
2027	1706	やいづ黒潮温泉	やいづくろしおおんせん	静岡県焼津市本町・栄町・浜当目			焼津・御前崎	焼津	硫酸塩泉	\N	\N	50299	\N
2028	1707	志太温泉	しだおんせん	静岡県藤枝市志太600-2-2			焼津・御前崎	藤枝	硫黄泉	\N	\N	50628	\N
2029	1708	倉真温泉	くらみおんせん	静岡県掛川市倉真			磐田・袋井・掛川	掛川	炭酸水素塩泉	\N	\N	50638	\N
2030	1709	法泉寺温泉	ほうせんじおんせん	静岡県掛川市上西郷			磐田・袋井・掛川	掛川	硫黄泉	\N	\N	50639	\N
2031	1710	渋川温泉	しぶかわおんせん	静岡県引佐郡引佐町渋川			浜松・浜名湖	浜名湖	炭酸水素塩泉	\N	\N	\N	\N
2032	1711	三ヶ日温泉	みつかびおんせん	静岡県引佐郡三ヶ日町下尾奈字瀬戸			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	50294	\N
2033	1712	舘山寺温泉	かんざんじおんせん	静岡県浜松市舘山寺町			浜松・浜名湖	浜松・浜北	炭酸水素塩泉	\N	\N	50295	\N
2034	1713	雄踏温泉	ゆうとうおんせん	静岡県浜名郡雄踏町山崎			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	50296	\N
2035	1714	弁天島温泉	てんてんじまおんせん	静岡県浜名郡舞阪町舞阪弁天島			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	50297	\N
2036	1715	新居浜温泉	あらいはまおんせん	静岡県浜名郡新居町新居弁天			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	\N	\N
2037	2155	戸田温泉	へだおんせん	静岡県田方郡戸田村戸田			西伊豆	戸田・土肥	含鉄泉	\N	\N	50283	\N
2038	2221	掛川つま恋温泉	かけがわつまごいおんせん	静岡県掛川市満水2000			磐田・袋井・掛川	掛川	塩化物泉	\N	\N	50293	\N
2039	2222	小室温泉　混合泉	こむろおんせん　こんごうせん	静岡県伊東市吉田字西初平治山843			伊豆高原	伊豆高原	ナトリウム塩化物泉	\N	\N	50268	\N
2040	2223	修善寺大平温泉	しゅぜんじおおだいらおんせん	静岡県田方郡修善寺町大平			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	\N	\N
2041	2224	青羽根温泉	あおはねおんせん	静岡県田方郡天城湯ヶ島町青羽根			中伊豆	修善寺・天城湯ヶ島・中伊豆	硫黄泉	\N	\N	\N	\N
2042	2238	梅ヶ島新田温泉	うめがしましんでんおんせん	静岡県静岡市梅ヶ島5342-3			静岡・清水	静岡	単純温泉	\N	\N	\N	\N
2043	2472	須走温泉	すばしりおんせん	静岡県駿東郡小山町須走			御殿場・富士	御殿場	硫黄泉	\N	\N	\N	\N
2044	2473	新稲子川温泉	しんいなこがわおんせん	静岡県富士郡芝川町上稲子1219			御殿場・富士	富士・富士宮・朝霧	単純温泉	\N	\N	\N	\N
2045	2474	静岡温泉	しずおかおんせん	静岡県静岡市篭上			静岡・清水	静岡	単純温泉	\N	\N	\N	\N
2046	2475	西里温泉　やませみの湯	にしさとおんせん　やませみのゆ	静岡県清水市西里			静岡・清水	清水	塩化物泉	\N	\N	\N	\N
2047	2476	御前崎温泉	おまえざきおんせん	静岡市榛原郡御前崎町			焼津・御前崎	御前崎・牧之原	塩化物泉	\N	\N	\N	\N
2048	2477	川根温泉	かわねおんせん	静岡県川根町笠間渡220			大井川・寸又峡・川根	大井川・寸又峡・川根	塩化物泉	\N	\N	\N	\N
2049	2478	大東温泉シートピア	だいとうおんせんしーとぴあ	静岡県小笠郡大東町国安			磐田・袋井・掛川	掛川	塩化物泉	\N	\N	\N	\N
2050	2479	小笠山天然温泉	おがさやまてんねんおんせん	静岡県磐田郡浅羽町諸井			磐田・袋井・掛川	磐田・袋井	硫酸塩泉	\N	\N	\N	\N
2051	2667	混合泉	こんごうせん	静岡県田方郡修善寺町瓜生野４１０－１			中伊豆	修善寺・天城湯ヶ島・中伊豆	ナトリウム塩化物泉	\N	\N	\N	\N
2052	2668	沼津温泉	ぬまづおんせん	静岡県沼津市岡の宮１２６５－３			沼津・三島	沼津	弱アルカリ性低張性泉	\N	\N	\N	\N
2053	2669	中伊豆温泉　志太源泉１号	なかいずおんせん　しだげんせん１ごう	静岡県伊豆市下白岩1434			中伊豆	修善寺・天城湯ヶ島・中伊豆	弱アルカリ性低張性泉	\N	\N	50637	\N
2054	2672	飛図温泉	とびずおんせん	静岡県富士郡芝川町上稲子飛図２４５３－１			御殿場・富士	富士・富士宮・朝霧	その他	\N	\N	50469	\N
2055	2718	沼津駿河の湯	ぬまづするがのゆ	静岡県沼津市岡宮1265-3			沼津・三島	沼津	アルカリ単純泉	\N	\N	\N	\N
2056	2743	口坂本温泉	くちさかもとおんせん	静岡県静岡市口坂本			静岡・清水	静岡	その他	\N	\N	50515	\N
2057	2744	梅ヶ島温泉	うめがしまおんせん	静岡県静岡市梅ヶ島			静岡・清水	静岡	アルカリ単純泉	\N	\N	50513	\N
2058	2768	冷川温泉　冷川5号	ひえかわおんせん　ひえかわごごう	静岡県伊豆市冷川字上尾995-4			中伊豆	修善寺・天城湯ヶ島・中伊豆	ナトリウム塩化物泉	\N	\N	50540	\N
2059	2792	磐田天神の湯	いわたてんじんのゆ	静岡県磐田市岩井2280			磐田・袋井・掛川	磐田・袋井	その他	\N	\N	50612	\N
2060	2801	三保はごろも温泉	みほはごろもおんせん	静岡県静岡市清水区三保2108			静岡・清水	清水	塩化物泉	\N	\N	50629	\N
2061	2830	御殿場乙女温泉　乙女2号泉	ごてんばおとめおんせん　おとめにごうせん	静岡県御殿場市深沢字永尾２５７１			御殿場・富士	御殿場	ナトリウム塩化物泉	\N	\N	50661	\N
2062	2832	梅木温泉	うめきおんせん	静岡県伊豆市梅木			中伊豆	修善寺・天城湯ヶ島・中伊豆	含銅一鉄泉	\N	\N	50663	\N
2063	2852	中伊豆温泉　八幡１号	なかいずおん　はつまいちごう	静岡県伊豆市八幡１００１－７			中伊豆	修善寺・天城湯ヶ島・中伊豆	アルカリ単純泉	\N	\N	50685	\N
2064	2973	大室温泉	おおむろおんせん	静岡県伊東市富戸先原　１３１７－８９			伊豆高原	伊豆高原	ナトリウム塩化物泉	\N	\N	50798	\N
2065	2982	富士 田貫湖温泉	ふじ たぬきこおんせん	静岡県富士宮市佐折６３４			御殿場・富士	富士・富士宮・朝霧	硫酸塩泉	\N	\N	50803	\N
2066	3001	芝川苑	しばかわえん	静岡県富士郡芝川町内房１３９１			御殿場・富士	富士・富士宮・朝霧	ナトリウム塩化物泉	\N	\N	50817	\N
2067	3013	千頭温泉	せんずおんせん	静岡県榛原郡川根本町千頭			大井川・寸又峡・川根	大井川・寸又峡・川根	硫酸塩泉	\N	\N	50826	\N
2068	3035	蓬来温泉	ほうらいおんせん	静岡県焼津市栄町3丁目７－１６			焼津・御前崎	焼津	弱アルカリ性低張性泉	\N	\N	50851	\N
2069	3037	御殿場東田中温泉	ごてんばひがしたなかおんせん	静岡県御殿場市東田中字便船塚1089番			御殿場・富士	御殿場	硫酸塩泉	\N	\N	50853	\N
2070	3065	駿河太古の湯	するがたいこのゆ	静岡県静岡市清水区興津東町1234			静岡・清水	清水	その他	\N	\N	50878	\N
2071	3068	梅ヶ島コンヤ温泉	うめがしまこんやおんせん	静岡県静岡市葵区梅ヶ島字大ノ木４２１０－１			静岡・清水	静岡	アルカリ単純泉	\N	\N	50513	\N
2072	3099	高室山温泉	たかむろやまおんせん	静岡県伊東市富戸字高室1316			伊豆高原	伊豆高原	アルカリ単純泉	\N	\N	50267	\N
2073	3132	瓜島温泉	うりじまおんせん	静岡県富士宮市内房385			御殿場・富士	富士・富士宮・朝霧	単純温泉	\N	\N	50920	\N
2074	3203	木太刀の湯	きだちのゆ	静岡県伊豆市湯ヶ島2821-4			中伊豆	修善寺・天城湯ヶ島・中伊豆	弱アルカリ性低張性泉	\N	\N	50292	\N
2075	3255	南熱海温泉	みなみあたみおんせん	静岡県伊東市宇佐美字留田3594-854			伊東・宇佐美・川奈	伊東・宇佐美・川奈	その他	\N	\N	50265	\N
2076	3319	倉澤温泉	くらさわおんせん	静岡県熱海市伊豆山字倉澤200‐19			熱海	熱海	単純温泉	\N	\N	50265	\N
2077	1742	白川温泉	しらかわおんせん	岐阜県加茂郡白川町河岐			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	硫黄泉	\N	\N	50308	\N
2078	1743	新白川温泉	しんしらかわおんせん	岐阜県加茂郡白川町河東３４９４			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	単純温泉	\N	\N	\N	\N
2079	1744	新穂高温泉	しんほだかおんせん	岐阜県吉城郡上宝村神坂巾平・中尾			奥飛騨	奥飛騨	硫黄泉	\N	\N	50302	\N
2080	1745	栃尾温泉	とちおおんせん	岐阜県高山市奥飛騨温泉栃尾448			奥飛騨	奥飛騨	単純温泉	\N	\N	50627	\N
2081	1746	新平湯温泉	しんひらゆおんせん	岐阜県高山市奥飛騨温泉郷一重ヶ根			奥飛騨	奥飛騨	塩化物泉	\N	\N	50303	\N
2082	1747	福地温泉	ふくじおんせん	岐阜県吉城郡上宝村福地			奥飛騨	奥飛騨	硫黄泉	\N	\N	50304	\N
2083	1748	平湯温泉	ひらゆおんせん	岐阜県吉城郡上宝村平湯			奥飛騨	奥飛騨	単純温泉	\N	\N	50465	\N
2084	1749	飛騨数河温泉	ひだすごうおんせん	岐阜県飛騨市古川町数河			飛騨・高山	飛騨古川・荘川・清見	炭酸水素塩泉	\N	\N	\N	\N
2085	1750	飛騨高山温泉	ひだたかやまおんせん	岐阜県高山市西之一色町			飛騨・高山	飛騨高山・丹生川	硫黄泉	\N	\N	50301	\N
2086	1751	越後温泉	えちごおんせん	岐阜県高山市越後町			飛騨・高山	飛騨高山・丹生川	炭酸水素塩泉	\N	\N	\N	\N
2087	1752	臥龍温泉	がりゅうおんせん	岐阜県大野郡宮村			飛騨・高山	飛騨高山・丹生川	塩化物泉	\N	\N	\N	\N
2088	1753	白川郷平瀬温泉	しらかわごうひらせおんせん	岐阜県大野郡白川村平瀬			白川郷	白川郷	単純温泉	\N	\N	50807	\N
2089	1754	塩沢温泉	しおざわおんせん	岐阜県大野郡高根村上ヶ洞			飛騨・高山	飛騨高山・丹生川	単純温泉	\N	\N	\N	\N
2090	1755	秋神温泉	あきがみおんせん	岐阜県大野郡朝日村胡桃島			飛騨・高山	飛騨高山・丹生川	単純温泉	\N	\N	\N	\N
2091	1756	濁河温泉	にごりごおんせん	岐阜県益田郡小坂町落合濁河温泉			下呂・南飛騨	下呂・南飛騨	単純温泉	\N	\N	50305	\N
2092	1757	下島温泉	したじまおんせん	岐阜県益田郡小坂町落合			下呂・南飛騨	下呂・南飛騨	硫黄泉	\N	\N	\N	\N
2093	1758	湯屋温泉	ゆやおんせん	岐阜県益田郡小坂町湯屋			下呂・南飛騨	下呂・南飛騨	炭酸水素塩泉	\N	\N	50306	\N
2094	1759	乗政温泉	のりまさおんせん	岐阜県益田郡下呂町乗政			下呂・南飛騨	下呂・南飛騨	二酸化炭素泉	\N	\N	\N	\N
2095	1760	萩原温泉	はぎはらおんせん	岐阜県益田郡萩原町上村			下呂・南飛騨	下呂・南飛騨	硫酸塩泉	\N	\N	\N	\N
2096	1761	下呂温泉	げろおんせん	岐阜県益田郡下呂町湯之島・森・幸田			下呂・南飛騨	下呂・南飛騨	二酸化炭素泉	\N	\N	50307	\N
2097	1762	渡合温泉	どあいおんせん	岐阜県恵那郡加子母村			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	二酸化炭素泉	\N	\N	\N	\N
2098	1763	越原温泉	おっぱらおんせん	岐阜県加茂郡東白川村越原			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	炭酸水素塩泉	\N	\N	\N	\N
2099	1764	付知温泉	つけちおんせん	岐阜県恵那郡付知町中田			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	単純温泉	\N	\N	\N	\N
2100	1765	栗本温泉	くりもとおんせん	岐阜県恵那郡福岡町福岡馬場平			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	単純温泉	\N	\N	\N	\N
2101	1766	くつかけの湯温泉	くつかけのゆおんせん	岐阜県恵那郡坂下町上野字小野沢			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	二酸化炭素泉	\N	\N	\N	\N
2102	1767	湯之島ラヂウムローソク温泉	ゆのしまらぢうむろーそくおんせん	岐阜県恵那郡福岡町高山			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	硫黄泉	\N	\N	\N	\N
2103	1768	中津川ラヂウム温泉	なかつがわらぢうむおんせん	岐阜県中津川市苗木高森			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
2104	1769	岩寿温泉	いわすおんせん	岐阜県中津川市蛭川4467-4			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	50867	\N
2105	1770	東山温泉	ひがしやまおんせん	岐阜県恵那郡蛭川村一之瀬			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
2106	1771	紅岩温泉	べにいわおんせん	岐阜県恵那郡蛭川村奥渡			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
2107	1772	恵那峡湯元温泉	えなきょうゆもとおんせん	岐阜県恵那市大井町286番地25			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	50869	\N
2108	1773	釜戸温泉	かまどおんせん	岐阜県瑞浪市釜戸町中大島			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	その他	\N	\N	\N	\N
2109	1774	白狐温泉	びゃっこおんせん	岐阜県瑞浪市釜戸町			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
2110	1775	鬼岩温泉	おにいわおんせん	岐阜県瑞浪市日吉町			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	50868	\N
2111	1776	あけ世温泉	あけよおんせん	岐阜県瑞浪市明世町月吉			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	ナトリウム塩化物泉	\N	\N	\N	\N
2112	1777	稲荷温泉	いなりおんせん	岐阜県瑞浪市稲津町小里			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	その他	\N	\N	\N	\N
2113	1778	山神温泉	やまがみおんせん	岐阜県土岐市下石町山神			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	放射能泉	\N	\N	\N	\N
2114	1779	柿野温泉	かきのおんせん	岐阜県土岐市鶴里町柿野			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	放射能泉	\N	\N	\N	\N
2115	1780	初音温泉	はつねおんせん	岐阜県郡上郡八幡町初音			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	放射能泉	\N	\N	\N	\N
2116	1781	高畑温泉	たかはたおんせん	岐阜県郡上郡八幡町那比高畑			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	鉱泉	\N	\N	\N	\N
2117	1782	湯の洞温泉	ゆのほらおんせん	岐阜県美濃市立花			郡上・美濃・関	美濃・関	放射能泉	\N	\N	\N	\N
2118	1783	長良川温泉	ながらがわおんせん	岐阜県岐阜市長良			岐阜・大垣・養老	岐阜・羽島	放射能泉	\N	\N	50309	\N
2119	1784	羽島温泉	はしまおんせん	岐阜県羽島市桑原町牛南			岐阜・大垣・養老	岐阜・羽島	放射能泉	\N	\N	\N	\N
2120	1785	海津温泉	かいづおんせん	岐阜県海津郡海津町福江			岐阜・大垣・養老	大垣・養老・揖斐	放射能泉	\N	\N	\N	\N
2121	2254	鷲ヶ岳温泉	わしがだけおんせん	岐阜県郡上郡高鷲村大鷲3262-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	放射能泉	\N	\N	\N	\N
2122	2380	桜香の湯	おうかのゆ	岐阜県高山市荘川町猿丸			飛騨・高山	飛騨古川・荘川・清見	硫黄泉	\N	\N	\N	\N
2123	2381	飛騨金山温泉	ひだかなやまおんせん	岐阜県益田郡金山町金山973-2			下呂・南飛騨	下呂・南飛騨	硫黄泉	\N	\N	\N	\N
2124	2382	飛騨古川桃源郷温泉	ひだふるかわとうげんきょうおんせん	岐阜県飛騨市古川町黒内1407			飛騨・高山	飛騨古川・荘川・清見	含鉄泉	\N	\N	\N	\N
2125	2383	明宝温泉	めいほうおんせん	岐阜県郡上市明宝奥住3428-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	塩化物泉	\N	\N	50870	\N
2126	2480	飛騨にゅうかわ温泉	ひだにゅうかわおんせん	岐阜県大野郡丹生川村久手446-1			飛騨・高山	飛騨高山・丹生川	塩化物泉	\N	\N	\N	\N
2127	2481	湯の平温泉	ゆのひらおんせん	岐阜県郡上郡高鷲村大鷲1787-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	単純温泉	\N	\N	\N	\N
2128	2654	真正温泉ぬくいの湯	しんせいおんせんぬくいのゆ	岐阜県本巣郡真正町政田下西浦			岐阜・大垣・養老	岐阜・羽島	弱アルカリ性低張性泉	\N	\N	\N	\N
2129	2661	馬瀬川温泉	まぜがわおんせん	岐阜県益田郡馬瀬村西村１６９５番地			下呂・南飛騨	下呂・南飛騨	炭酸水素塩泉	\N	\N	50468	\N
2130	2678	恵那峡奥戸温泉	えなきょうおくどおんせん	岐阜県恵那市大井町2709-77			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	その他	\N	\N	50478	\N
2131	2689	焼岳温泉	やけだけおんせん	岐阜県吉城郡上宝村一重ケ根２４９８－１			奥飛騨	奥飛騨	アルカリ単純泉	\N	\N	50303	\N
2132	2693	奥美濃長良川温泉	おくみのながらがわおんせん	岐阜県郡上市八幡町			下呂・南飛騨	下呂・南飛騨	単純温泉	\N	\N	50488	\N
2133	2785	神明温泉	しんめいおんせん	岐阜県関市板取4838			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	弱アルカリ性低張性泉	\N	\N	50556	\N
2134	2788	養老温泉	ようろうおんせん	岐阜県養老郡養老町押越字除下1522-1			岐阜・大垣・養老	大垣・養老・揖斐	アルカリ単純泉	\N	\N	50603	\N
2135	2789	池田さくら温泉	いけださくらおんせん	岐阜県養老郡養老町養老534			岐阜・大垣・養老	大垣・養老・揖斐	放射能泉	\N	\N	50604	\N
2136	2824	大白川温泉	おおじらかわおんせん	岐阜県大野郡白川村平瀬字地獄谷			白川郷	白川郷	炭酸水素塩泉	\N	\N	50657	\N
2137	2947	下呂大江戸温泉	げろおおえどおんせん	岐阜県下呂市森2458			下呂・南飛騨	下呂・南飛騨	その他	\N	\N	50775	\N
2138	2989	トヨタ白川郷自然学校温泉	とよたしらかわごうしぜんがっこうおんせん	岐阜県大野郡白川村馬狩			飛騨・高山	白川郷	塩化物泉	\N	\N	50808	\N
2139	2993	飛騨位山温泉	ひだくらいやまおんせん	岐阜県高山市一之宮町八ツ橋			飛騨・高山	飛騨高山・丹生川	炭酸水素塩泉	\N	\N	50810	\N
2140	3054	多治見　旅人の湯	たじみ　たびびとのゆ	岐阜県多治見市若松町4-1-30			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	その他	\N	\N	50873	\N
2141	3150	高山龍神温泉	たかやまりゅうじんおんせん	岐阜県高山市荘川町新渕字二俣瀬888-596			飛騨・高山	飛騨古川・荘川・清見	アルカリ単純泉	\N	\N	50301	\N
2142	3174	薬師温泉	やくしおんせん	岐阜県高山市奥飛騨温泉郷新平湯温泉208番48			奥飛騨	奥飛騨	アルカリ単純泉	\N	\N	50303	\N
2143	3188	満天の湯	まんてんのゆ	岐阜県郡上市白鳥町石徹白峠山1-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	塩化物泉	\N	\N	50950	\N
2144	3221	胡桃島温泉	くるみしまおんせん	岐阜県高山市朝日町胡桃島8			飛騨・高山	飛騨高山・丹生川	ナトリウム塩化物泉	\N	\N	50301	\N
2145	3231	ふたこえ温泉	ふたこえおんせん	岐阜県郡上市高鷲町鷲見48-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	塩化物泉	\N	\N	50963	\N
2146	1716	岩屋堂温泉	いわやどうおんせん	愛知県瀬戸市岩屋町			尾張・犬山・小牧	瀬戸・日進	二酸化炭素泉	\N	\N	\N	\N
2147	1717	猿投温泉	さなげおんせん	愛知県豊田市加納町馬道通			三河	西三河	放射能泉	\N	\N	50312	\N
2148	1718	笹戸温泉	ささどおんせん	愛知県豊田市笹戸町			三河	西三河	単純温泉	\N	\N	50630	\N
2149	1719	小渡温泉	おどおんせん	愛知県東加茂郡旭町大字小渡			三河	西三河	硫黄泉	\N	\N	\N	\N
2150	1720	榊野温泉	さかきのおんせん	愛知県東加茂郡旭町大字榊野			三河	西三河	放射能泉	\N	\N	\N	\N
2151	1721	川怒温泉	かわぬおんせん	愛知県東加茂郡足助町川面			三河	西三河	硫黄泉	\N	\N	\N	\N
2152	1722	足助温泉	あすけおんせん	愛知県東加茂郡足助町大字野林			三河	西三河	硫黄泉	\N	\N	\N	\N
2153	1723	白鷺温泉	しらさぎおんせん	愛知県豊田市篭林町塩平21番地			三河	西三河	硫黄泉	\N	\N	50632	\N
2154	1724	夏焼温泉	なつやけおんせん	愛知県北設楽郡稲武町武節町田ノ洞			三河	西三河	弱アルカリ性低張性泉	\N	\N	\N	\N
2155	1725	添沢温泉	そえざわおんせん	愛知県北設楽郡設楽町田口			三河	奥三河・新城・湯谷	鉱泉	\N	\N	\N	\N
2156	1726	塩津温泉	しおつおんせん	愛知県北設楽郡設楽町清崎早稲田			三河	奥三河・新城・湯谷	炭酸水素塩泉	\N	\N	\N	\N
2157	1727	千代姫温泉	ちよひめおんせん	愛知県北設楽郡東栄町中設楽西向			三河	奥三河・新城・湯谷	炭酸水素塩泉	\N	\N	\N	\N
2158	1728	湯谷温泉	ゆやおんせん	愛知県南設楽郡鳳来町豊岡滝上			三河	奥三河・新城・湯谷	炭酸水素塩泉	\N	\N	50310	\N
2159	1729	赤引温泉	あかひきおんせん	愛知県南設楽郡鳳来町大野中楠			三河	奥三河・新城・湯谷	含鉄泉	\N	\N	50311	\N
2160	1730	岩津温泉	いわつおんせん	愛知県岡崎市岩津町東山			三河	西三河	塩化物泉	\N	\N	\N	\N
2161	1731	中京温泉	ちゅうきょうおんせん	愛知県名古屋市中村区日吉町			名古屋	名古屋駅・名古屋城周辺	放射能泉	\N	\N	\N	\N
2162	1732	尾張温泉	おわりおんせん	愛知県海部郡蟹江町西ノ森長瀬下			尾張・犬山・小牧	稲沢・津島	含鉄泉	\N	\N	\N	\N
2163	1733	衣浦温泉	きぬうらおんせん	愛知県碧南市山神町			三河	西三河	単純温泉	\N	\N	\N	\N
2164	1734	坂井温泉	さかいおんせん	愛知県常滑市坂井			知多	知多半島	硫黄泉	\N	\N	\N	\N
2165	1735	内海温泉	うつみおんせん	愛知県知多郡南知多町内海海岸			知多	知多半島	単純温泉	\N	\N	50317	\N
2166	1736	南知多温泉	みなみちたおんせん	愛知県知多郡南知多町大字山海字橋詰			知多	知多半島	含鉄泉	\N	\N	50317	\N
2167	1737	吉良温泉	きらおんせん	愛知県幡豆郡吉良町宮崎			三河	蒲郡・吉良・幡豆	ナトリウム塩化物泉	\N	\N	50534	\N
2168	1738	形原温泉	かたはらおんせん	愛知県蒲郡市金平町寺中			三河	蒲郡・吉良・幡豆	塩化物泉	\N	\N	50314	\N
2169	1739	西浦温泉	にしうらおんせん	愛知県蒲郡市西浦町大山			三河	蒲郡・吉良・幡豆	放射能泉	\N	\N	50315	\N
2170	1740	三谷温泉	みやおんせん	愛知県蒲郡市三谷町鳶欠			三河	蒲郡・吉良・幡豆	硫黄泉	\N	\N	50316	\N
2171	1741	田原温泉	たはらおんせん	愛知県渥美郡田原町吉胡蔵王			三河	渥美半島・伊良湖	含鉄泉	\N	\N	\N	\N
2172	2536	飛島温泉	とびしまおんせん	愛知県海部郡飛島村飛島新田竹之郷			尾張・犬山・小牧	稲沢・津島	塩化物泉	\N	\N	\N	\N
2173	2657	犬山温泉　白帝の湯	いぬやまおんせん　はくていのゆ	愛知県犬山市犬山北古券１０７－１　名鉄犬山ホテル敷地内			尾張・犬山・小牧	犬山・小牧・一宮	塩化物泉	\N	\N	50467	\N
2174	2761	蒲郡温泉	がまごおりおんせん	愛知県蒲郡市竹島町			三河	蒲郡・吉良・幡豆	アルカリ単純泉	\N	\N	50533	\N
2175	3072	あいち健康の森温泉	あいちけんこうのもりおんせん	愛知県知多郡東浦町森岡源吾山１－１			知多	知多半島	中性低張性高温泉	\N	\N	50883	\N
2176	3205	三谷温泉　曙光の湯	みやおんせん　しょこうのゆ	愛知県蒲郡市三谷町正迫16番地			三河	蒲郡・吉良・幡豆	その他	\N	\N	50316	\N
2177	3206	三谷温泉　千歳の湯	みやおんせん　ちとせのゆ	愛知県蒲郡市三谷町田尻71番地１			三河	蒲郡・吉良・幡豆	アルカリ単純泉	\N	\N	50316	\N
2178	3207	三谷温泉　美白泉	みやおんせん　びはくせん	愛知県蒲郡市三谷町門立45-2			三河	蒲郡・吉良・幡豆	アルカリ単純泉	\N	\N	50316	\N
2179	3224	南知多天然温泉　まるはうめ乃湯	みなみちたてんねんおんせん　まるはうめのゆ	愛知県知多郡南知多町大字豊浜字峠8			知多	知多半島	ナトリウム塩化物泉	\N	\N	50317	\N
2180	1496	鍋田川温泉	なべたがわおんせん	三重県桑名郡木曽岬町新加路戸30			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	ナトリウム塩化物泉	\N	\N	50949	\N
2181	1497	長島温泉	ながしまおんせん	三重県桑名市長島町浦安333			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	アルカリ単純泉	\N	\N	50715	\N
2182	1498	湯の山温泉	ゆのやまおんせん	三重県三重郡菰野町菰野			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	放射能泉	\N	\N	50318	\N
2183	1499	坂部温泉	さかべおんせん	三重県四日市市西坂部町			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	単純温泉	\N	\N	\N	\N
2184	1500	伊賀温泉	いがおんせん	三重県上野市西高倉			伊賀・上野・名張	上野	含鉄泉	\N	\N	\N	\N
2185	1501	榊原温泉	さかきばらおんせん	三重県久居市榊原町			津・久居・美杉・松阪	久居・榊原	アルカリ単純泉	\N	\N	50320	\N
2186	1502	磨洞温泉	まどうおんせん	三重県津市半田			津・久居・美杉・松阪	津	単純温泉	\N	\N	50319	\N
2187	1503	赤目温泉山の湯	あかめおんせんやまのゆ	三重県名張市赤目町柏原			伊賀・上野・名張	名張・赤目四十八滝・青山	放射能泉	\N	\N	\N	\N
2188	1504	赤目温泉隠れの湯	あかめおんせんかくれのゆ	三重県名張市赤目町長坂682番地			伊賀・上野・名張	名張・赤目四十八滝・青山	放射能泉	\N	\N	50953	\N
2189	1505	香落渓温泉	こおちだにおんせん	三重県名張市青蓮寺峯の山			伊賀・上野・名張	名張・赤目四十八滝・青山	放射能泉	\N	\N	\N	\N
2190	1506	答志島温泉	とうしじまおんせん	三重県鳥羽市答志町和具浦			鳥羽	鳥羽	塩化物泉	\N	\N	50821	\N
2191	1507	鳥羽本浦温泉	とばもとうらおんせん	三重県鳥羽市浦村町			南鳥羽	南鳥羽	単純温泉	\N	\N	50821	\N
2192	1508	奥香肌峡温泉	おくかはだきょうおんせん	三重県飯南郡飯高町森			津・久居・美杉・松阪	松阪	塩化物泉	\N	\N	\N	\N
2193	1509	阿曽温泉	あそおんせん	三重県度会郡大紀町阿曽片山245			奥伊勢	奥伊勢	炭酸水素塩泉	\N	\N	50793	\N
2194	1510	浜島温泉	はまじまおんせん	三重県志摩郡浜島町浜島出湯			志摩	志摩（浜島・阿児・磯部）	ナトリウム塩化物泉	\N	\N	50822	\N
2195	1511	新湯の口温泉	しんゆのくちおんせん	三重県南牟婁郡紀和町小川口			東紀州	尾鷲・熊野	炭酸水素塩泉	\N	\N	50706	\N
2196	1512	霧生温泉	きりゅうおんせん	三重県名賀郡青山町霧生			伊賀・上野・名張	名張・赤目四十八滝・青山	塩化物泉	\N	\N	\N	\N
2197	1513	二見温泉	ふたみおんせん	三重県渡会郡二見町大字西字北浜			伊勢・二見	伊勢・二見	単純温泉	\N	\N	50321	\N
2198	1514	鳥羽グランドホテル温泉	とばぐらんどほてるおんせん	三重県鳥羽市小浜町			鳥羽	鳥羽	含鉄泉	\N	\N	50821	\N
2199	1515	奥志摩温泉　合歓の郷　潮騒の湯	おくしまおんせん  ねむのさと  しおさいのゆ	三重県志摩郡浜島町大崎半島			志摩	志摩（浜島・阿児・磯部）	炭酸水素塩泉	\N	\N	50822	\N
2200	2157	大山田温泉	おおやまだおんせん	三重県阿山郡大山田村大字上阿波			伊賀・上野・名張	阿山・伊賀	塩化物泉	\N	\N	\N	\N
2201	2158	伊賀上野温泉	いがうえのおんせん	三重県上野市西明寺			伊賀・上野・名張	上野	炭酸水素塩泉	\N	\N	\N	\N
2202	2159	一志温泉	いちしおんせん	三重県一志郡一志町大字井関			津・久居・美杉・松阪	白山・美杉	塩化物泉	\N	\N	\N	\N
2203	2160	玉城弘法温泉	たまきこうぼうおんせん	三重県度会郡玉城町原			伊勢・二見	伊勢・二見	単純温泉	\N	\N	\N	\N
2204	2161	片岡温泉	かたおかおんせん	三重県三重郡菰野町大字菰野字片倉			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	単純温泉	\N	\N	\N	\N
2205	2162	猪の倉温泉	いのくらおんせん	三重県津市白山町佐田2562-1			津・久居・美杉・松阪	白山・美杉	塩化物泉	\N	\N	50772	\N
2206	2163	鈴鹿さつき温泉	すずかさつきおんせん	三重県鈴鹿市津賀町			桑名・長島・四日市・湯の山・鈴鹿	鈴鹿・亀山	単純温泉	\N	\N	\N	\N
2207	2164	鈴鹿サーキット天然温泉	すずかさーきっとてんねんおんせん	三重県鈴鹿市稲生町			桑名・長島・四日市・湯の山・鈴鹿	鈴鹿・亀山	アルカリ単純泉	\N	\N	50557	\N
2208	2165	奥伊勢宮川温泉	おくいせみやがわおんせん	三重県多気郡宮川村薗			奥伊勢	奥伊勢	単純温泉	\N	\N	\N	\N
2209	2166	火の谷温泉	ひのたにおんせん	三重県一志郡美杉村八知美杉リゾート			津・久居・美杉・松阪	白山・美杉	単純温泉	\N	\N	\N	\N
2210	2217	新･浜島温泉	しん･はまじまおんせん	三重県志摩郡浜島町			志摩	志摩（浜島・阿児・磯部）	単純温泉	\N	\N	50822	\N
2211	2218	浦村温泉　権現の湯	うらむらおんせん　けんげんのゆ	三重県鳥羽市浦村町字鍋谷口146番地1			南鳥羽	南鳥羽	炭酸水素塩泉	\N	\N	50821	\N
2212	2219	南勢桜山温泉	なんせいさくらやまおんせん	三重県度会郡南勢町大字神津字中河内427番地			志摩	南伊勢	ナトリウム塩化物泉	\N	\N	50331	\N
2213	2220	神代温泉	じんだいおんせん	三重県鳥羽市国崎町字小田谷737番			南鳥羽	南鳥羽	単純温泉	\N	\N	50821	\N
2214	2482	伊勢志摩温泉「ともやまの湯」	いせしまおんせんともやまのゆ	三重県志摩郡大王町船越字小起3240			志摩	志摩（志摩・大王）	アルカリ単純泉	\N	\N	50822	\N
2215	2553	鳥羽シーサイド温泉「さらさ」	とばしーさいどおんせん「さらさ」	三重県鳥羽市安楽島町1084			鳥羽	鳥羽	ナトリウム塩化物泉	\N	\N	50821	\N
2216	2554	石鏡温泉　岬の湯	いじかおんせん　みさきのゆ	三重県鳥羽市石鏡町字磯山368-2			南鳥羽	南鳥羽	弱アルカリ性低張性泉	\N	\N	\N	\N
2217	2576	加茂川船津温泉　行者の湯	かもがわふなつおんせん　ぎょうじゃのゆ	三重県鳥羽市船津町字小石代1150			鳥羽	鳥羽	ナトリウム塩化物泉	\N	\N	\N	\N
2218	2645	磯部わたかの温泉	いそべわたかのおんせん	三重県志摩郡磯部町渡鹿野			志摩	志摩（浜島・阿児・磯部）	その他	\N	\N	50822	\N
2219	2735	志摩の国温泉	しまのくにおんせん	三重県志摩郡阿児町甲賀４５７８－１			志摩	志摩（浜島・阿児・磯部）	単純温泉	\N	\N	50822	\N
2220	2740	きいながしま古里温泉	きいながしまふるさとおんせん	三重県北牟婁郡紀伊長島町海野字タキノハナ８１６番地			東紀州	紀伊長島	弱アルカリ性低張性泉	\N	\N	50511	\N
2221	2754	木曽岬温泉	きそざきおんせん	三重県桑名郡木曽岬町源緑輪中794番地			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	ナトリウム塩化物泉	\N	\N	50526	\N
2222	2756	安楽島温泉	あらしまおんせん	三重県鳥羽市安楽島町1061-9			鳥羽	鳥羽	アルカリ単純泉	\N	\N	50821	\N
2223	2758	香肌峡温泉	かはだきょうおんせん	三重県松坂市飯高町宮前177			津・久居・美杉・松阪	松阪	ナトリウム塩化物泉	\N	\N	50531	\N
2224	2762	志摩スペイン村　ひまわりの湯	しますぺいんむら　ひまわりのゆ	三重県志摩市磯部町坂崎字下山952番23			志摩	志摩（浜島・阿児・磯部）	ナトリウム塩化物泉	\N	\N	50822	\N
2225	2811	近鉄賢島温泉	きんてつかしこじまおんせん	三重県志摩市阿児町賢島			志摩	志摩（浜島・阿児・磯部）	炭酸水素塩泉	\N	\N	50822	\N
2226	2872	入鹿温泉	いるかおんせん	三重県熊野市紀和町小川口158			東紀州	尾鷲・熊野	鉱泉	\N	\N	50706	\N
2227	2897	六石高原温泉	ろっこくこうげんおんせん	三重県いなべ市北勢町東村小山1392			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	炭酸水素塩泉	\N	\N	50730	\N
2228	2917	平城湯	ならゆ	三重県一志郡白山町大字川口字佛谷6582-2			津・久居・美杉・松阪	白山・美杉	鉱泉	\N	\N	50747	\N
2229	2928	きほく千年温泉	きほくせんねんおんせん	三重県北牟婁郡紀北町紀伊長島区東長島字城ノ浜3043-10			東紀州	紀伊長島	単純温泉	\N	\N	50758	\N
2230	2981	鳥羽小浜温泉	とばおはまおんせん	三重県鳥羽市小浜町272-46			鳥羽	鳥羽	アルカリ単純泉	\N	\N	50821	\N
2231	3046	多度温泉	たどおんせん	三重県桑名市多度町古野2692			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	弱アルカリ性低張性泉	\N	\N	50863	\N
2232	3144	伊勢外宮参道温泉	いせげくうさんどうおんせん	三重県伊勢市本町１－１			伊勢・二見	伊勢・二見	ナトリウム塩化物泉	\N	\N	50929	\N
2233	3170	朝妻温泉	あさづまおんせん 	三重県伊賀市寺脇721			伊賀・上野・名張	名張・赤目四十八滝・青山	二酸化炭素泉	\N	\N	50953	\N
2234	3283	熊野温泉	くまのおんせん	三重県熊野市井戸町1020‐7			東紀州	尾鷲・熊野	鉱泉	\N	\N	50706	\N
2235	3287	かんぽ温泉鳥羽潮香の湯	かんぽおんせんとばしおかのゆ	三重県鳥羽市安楽島町1200‐7			鳥羽	鳥羽	アルカリ単純泉	\N	\N	50821	\N
2236	3297	英虞湾温泉	あごわんおんせん	三重県志摩市浜島町迫子2619番地1			志摩	志摩（浜島・阿児・磯部）	弱アルカリ性低張性泉	\N	\N	50822	\N
2237	1516	マキノ白谷温泉	まきのしらたにおんせん	滋賀県高島市マキノ町白谷北海道			湖西	高島	放射能泉	\N	\N	50833	\N
2238	1517	須賀谷温泉	すがたにおんせん	滋賀県長浜市須賀谷町36番地			彦根・長浜	長浜	炭酸鉄泉	\N	\N	50703	\N
2239	1518	尾上温泉	おのえおんせん	滋賀県長浜市湖北町尾上312			彦根・長浜	長浜	単純温泉	\N	\N	50702	\N
2240	1519	長浜太閤温泉	ながはまたいこうおんせん	滋賀県長浜市公園町			彦根・長浜	長浜	炭酸水素塩泉	\N	\N	50335	\N
2241	1520	あど川宝船温泉	あどかわたからぶねおんせん	滋賀県高島市安曇川町下小川			湖西	高島	含鉄泉	\N	\N	\N	\N
2242	1521	白滝温泉	しらたきおんせん	滋賀県志賀郡志賀町木戸			雄琴・堅田	雄琴・堅田	含鉄泉	\N	\N	\N	\N
2243	1522	近江温泉	おおみおんせん	滋賀県愛知郡愛東町百済寺			草津・守山・近江八幡	近江八幡	放射能泉	\N	\N	\N	\N
2244	1523	今浜温泉	いまはまおんせん	滋賀県守山市今浜町			草津・守山・近江八幡	草津・守山	単純温泉	\N	\N	\N	\N
2245	1524	おごと温泉	おごとおんせん	滋賀県大津市雄琴			雄琴・堅田	雄琴・堅田	単純温泉	\N	\N	50334	\N
2246	1525	びわ湖温泉	びわこおんせん	滋賀県大津市茶ヶ崎			大津	大津	単純温泉	\N	\N	50332	\N
2247	1526	石山温泉	いしやまおんせん	滋賀県大津市螢谷			大津	大津	炭酸水素塩泉	\N	\N	50333	\N
2248	1527	南郷温泉	なんごうおんせん	滋賀県大津市南郷5-15-7			大津	大津	放射能泉	\N	\N	50333	\N
2249	1528	甲南温泉	こうなんおんせん	滋賀県甲賀郡甲南町深川			甲賀・信楽	甲賀・信楽	放射能泉	\N	\N	\N	\N
2250	1529	塩野温泉	しおのおんせん	滋賀県甲賀郡甲南町塩野			甲賀・信楽	甲賀・信楽	塩化物泉	\N	\N	\N	\N
2251	1530	宮乃温泉	みやのおんせん	滋賀県甲賀郡甲南町杉谷			甲賀・信楽	甲賀・信楽	塩化物泉	\N	\N	50336	\N
2252	1531	宝船温泉	たからぶねおんせん	滋賀県高島市安曇川町下小川			湖西	高島	塩化物泉	\N	\N	\N	\N
2253	2401	信楽温泉多羅尾の湯	しがらきおんせんたらおのゆ	滋賀県甲賀郡信楽町多羅尾1番地			甲賀・信楽	甲賀・信楽	含鉄泉	\N	\N	50337	\N
2254	2537	十二坊温泉	じゅうにぼうおんせん	滋賀県甲賀郡甲西町			甲賀・信楽	甲賀・信楽	単純温泉	\N	\N	\N	\N
2255	2538	朽木温泉	くつきおんせん	滋賀県高島市朽木柏			湖西	高島	弱アルカリ性低張性泉	\N	\N	50832	\N
2256	2548	信楽たぬき温泉	しがらきたぬきおんせん	滋賀県甲賀郡設楽町大字黄瀬2320-1			甲賀・信楽	甲賀・信楽	弱アルカリ性低張性泉	\N	\N	50831	\N
2257	2869	彦根千乃松原温泉	ひこねせんのまつばらおんせん	滋賀県彦根市松原町3759			彦根・長浜	彦根	放射能泉	\N	\N	50704	\N
2258	2870	雄琴天然温泉　美肌の湯	おごとてんねんおんせん　びはだのゆ	滋賀県大津市苗鹿3丁目9-5			雄琴・堅田	雄琴・堅田	アルカリ単純泉	\N	\N	50334	\N
2259	2875	宮ヶ浜の湯	みやがはまのゆ	滋賀県近江八幡市沖島町宮ヶ浜			草津・守山・近江八幡	近江八幡	弱アルカリ性低張性泉	\N	\N	50708	\N
2260	2909	比良招福温泉	ひらしょうふくおんせん	滋賀県大津市北比良948-10			雄琴・堅田	雄琴・堅田	ナトリウム塩化物泉	\N	\N	50742	\N
2261	3008	古琵琶湖ラドンの湯	こびわこらどんのゆ	滋賀県大津市月輪一丁目９－１８			大津	大津	炭酸水素塩泉	\N	\N	50836	\N
2262	3012	瑠璃温泉	るりおんせん	滋賀県大津市浜町３番５号			大津	大津	塩化物泉	\N	\N	50838	\N
2263	3245	甲賀温泉やっぽんぽんの湯	こうがおんせんやっぽんぽんのゆ	滋賀県甲賀市土山町黒川1711			甲賀・信楽	甲賀・信楽	単純温泉	\N	\N	50968	\N
2264	3267	美崎温泉	みさきおんせん	滋賀県守山市今浜町字十軒家2876番85			草津・守山・近江八幡	草津・守山	アルカリ単純泉	\N	\N	50708	\N
2265	1532	丹後琴引温泉	たんごことびきおんせん	京都府竹野郡網野町遊			大原・鞍馬・貴船	丹後	単純温泉	\N	\N	\N	\N
2266	1533	夕日ヶ浦温泉	ゆうひがうらおんせん	京都府竹野郡網野町浜詰			丹後・久美浜	丹後	単純温泉	\N	\N	50340	\N
2267	1534	木津温泉	きつおんせん	京都府竹野郡網野町木津			大原・鞍馬・貴船	丹後	単純温泉	\N	\N	50341	\N
2268	1535	久美の浜温泉郷	くみのはまおんせんきょう	京都府熊野郡久美浜町平田			大原・鞍馬・貴船	久美浜・小天橋	塩化物泉	\N	\N	50348	\N
2269	1536	岩滝温泉	いわたきおんせん	京都府与謝郡岩滝町男山			丹後・久美浜	丹後	硫黄泉	\N	\N	50339	\N
2270	1537	ゆらゆら温泉郷	ゆらゆらおんせんきょう	京都府宮津市由良			天橋立・宮津・舞鶴	天橋立・宮津	硫黄泉	\N	\N	50339	\N
2271	1538	くらま温泉	くらまおんせん	京都府京都市左京区鞍馬本町			大原・鞍馬・貴船	大原・鞍馬・貴船	単純温泉	\N	\N	\N	\N
2272	1539	湯の花温泉	ゆのはなおんせん	京都府亀岡市稗田野町柿花宮奥			湯の花・丹波・美山	亀岡・湯の花・丹波	放射能泉	\N	\N	50338	\N
2273	1540	嵐山温泉	あらしやまおんせん	京都府京都市西京区嵐山元禄山町			嵯峨野・嵐山・高雄	嵯峨野・嵐山・高雄	単純温泉	\N	\N	50490	\N
2274	1541	北白川天然ラジウム温泉	きたしらかわてんねんらじうむおんせん	京都府京都市左京区北白川地蔵谷			祇園・東山・北白川周辺	岡崎・北白川	放射能泉	\N	\N	\N	\N
2275	1542	桃山温泉	ももやまおんせん	京都府京都市伏見区桃山町安長老			京都駅周辺	京都駅近郊・山科	単純温泉	\N	\N	50835	\N
2276	1543	笠置温泉	かさぎおんせん	京都府相楽郡笠置町浜			京都南部（宇治・長岡京・山崎）	相楽	含鉄泉	\N	\N	\N	\N
2277	1544	夢絃峡温泉	むげんきょうおんせん	京都府相楽郡南山城村田山ツルギ			京都南部（宇治・長岡京・山崎）	相楽	単純温泉	\N	\N	\N	\N
2278	1545	天然嵐山嵯峨野温泉	てんねんあらしやまさがのおんせん	京都府京都市右京区嵯峨天龍寺芒ノ馬場町			嵯峨野・嵐山・高雄	嵯峨野・嵐山・高雄	弱アルカリ性低張性泉	\N	\N	\N	\N
2279	1546	宮津羽衣温泉	みやづはごろもおんせん	京都府宮津市宇田井小字岩本			天橋立・宮津・舞鶴	天橋立・宮津	炭酸水素塩泉	\N	\N	\N	\N
2280	1547	奥伊根温泉	おくいねおんせん	京都府与謝郡伊根町字六万部			大原・鞍馬・貴船	天橋立・宮津	単純温泉	\N	\N	\N	\N
2281	2167	天の橋立温泉	あまのはしだておんせん	京都府宮津市字文珠小字宮ﾉ下			天橋立・宮津・舞鶴	天橋立・宮津	炭酸水素塩泉	\N	\N	50339	\N
2282	2169	浜詰温泉	はまづめおんせん	京都府竹野郡網野町浜詰			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	50340	\N
2283	2175	丹後温泉	たんごおんせん	京都府竹野郡丹後町間人			大原・鞍馬・貴船	丹後	弱アルカリ性低張性泉	\N	\N	50342	\N
2284	2176	鳴き砂温泉	なきすなおんせん	京都府竹野郡網野町字掛津小字馬場田			大原・鞍馬・貴船	丹後	ナトリウム塩化物泉	\N	\N	50343	\N
2285	2177	二塚温泉	ふたつかおんせん	京都府竹野郡網野町三津			大原・鞍馬・貴船	丹後	硫酸塩泉	\N	\N	50344	\N
2286	2178	浅茂川浦島温泉	あさもがわうらしまおんせん	京都府竹野郡網野町字浅茂川			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	50345	\N
2287	2384	八丁浜小浜温泉	はっちょうはまこはまおんせん	京都府竹野郡網野町字小浜小字上屋敷496			大原・鞍馬・貴船	丹後	弱アルカリ性低張性泉	\N	\N	50346	\N
2288	2385	木橋温泉	きばしおんせん	京都府竹野郡弥栄町字木橋小字遠処146			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	50347	\N
2289	2402	丹後町間人温泉郷　鴻の鶴温泉	たんごちょうたいざおんせんきょう　こうのつるおんせん	京都府竹野郡丹後町間人小字鴻鶴場5133			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	\N	\N
2290	2412	ひよし温泉	ひよしおんせん	京都府船井郡日吉町字中小字宮ノ向8			湯の花・丹波・美山	亀岡・湯の花・丹波	ナトリウム塩化物泉	\N	\N	\N	\N
2291	2555	成相観音温泉	なりあいかんのんおんせん	京都府宮津市字国分			天橋立・宮津・舞鶴	天橋立・宮津	その他	\N	\N	50339	\N
2292	2676	小天橋温泉きららの湯	しょうてんきょうおんせんきららのゆ	京都府熊野郡久美浜町字湊宮小字長砂２０４９			大原・鞍馬・貴船	久美浜・小天橋	アルカリ単純泉	\N	\N	50479	\N
2293	2677	丹後はなれ湖温泉	たんごはなれこおんせん	京都府竹野郡網野町字小浜小字大谷５８４			大原・鞍馬・貴船	丹後	ナトリウム塩化物泉	\N	\N	50480	\N
2294	2685	宮津温泉	みやづおんせん	京都府宮津市魚屋１００１－１			天橋立・宮津・舞鶴	天橋立・宮津	その他	\N	\N	50339	\N
2332	1608	日和山温泉	ひよりやまおんせん	兵庫県豊岡市瀬戸			城崎・竹野・豊岡	城崎	塩化物泉	\N	\N	\N	\N
2295	2726	大原温泉	おおはらおんせん	京都府京都市左京区大原			大原・鞍馬・貴船	大原・鞍馬・貴船	アルカリ単純泉	\N	\N	50503	\N
2296	2739	橘の郷　上野温泉	きのさと　うえのおんせん	京都府京丹後市網野町木津			丹後・久美浜	丹後	弱アルカリ性低張性泉	\N	\N	50510	\N
2297	2742	るり渓温泉	るりけいおんせん	京都府船井郡園部町			湯の花・丹波・美山	亀岡・湯の花・丹波	ナトリウム塩化物泉	\N	\N	50512	\N
2298	2971	蒲井温泉	かまいおんせん	京都府京丹後市久美浜町蒲井５２２番１			丹後・久美浜	久美浜・小天橋	弱アルカリ性低張性泉	\N	\N	50796	\N
2299	2984	宇川温泉	うかわおんせん	京都府京丹後市丹後町久僧１５６２			丹後・久美浜	丹後	ナトリウム塩化物泉	\N	\N	50804	\N
2300	2985	天山の湯	てんざんのゆ	京都府京都市左京区鞍馬貴船町17番			大原・鞍馬・貴船	大原・鞍馬・貴船	硫黄泉	\N	\N	50805	\N
2301	2997	京都東山温泉	きょうとひがしやまおんせん	京都府京都市東山区清閑寺霊山町7番地			祇園・東山・北白川周辺	祇園・東山	ナトリウム塩化物泉	\N	\N	50814	\N
2302	3006	京都竹の郷温泉	きょうとたけのさとおんせん	京都府京都市西京区大原野東境谷町2丁目4番地			嵯峨野・嵐山・高雄	嵯峨野・嵐山・高雄	単純温泉	\N	\N	50834	\N
2303	3009	スパ・トリニテ	すぱ・とりにて	京都府京都市中京区烏丸三条南			河原町・烏丸・大宮周辺	烏丸通・四条通	弱アルカリ性低張性泉	\N	\N	50837	\N
2304	3090	タンゴ峰山温泉	たんごみねやまおんせん	京都府京丹後市峰山町新町１７９８			丹後・久美浜	丹後	単純温泉	\N	\N	50339	\N
2305	3118	久美浜温泉	くみはまおんせん	京都府京丹後市久美浜町武蔵谷２７９１－１			丹後・久美浜	久美浜・小天橋	アルカリ単純泉	\N	\N	50355	\N
2306	3185	京都温泉	きょうとおんせん	京都府京都市下京区西洞院通塩小路下ル南不動町803番			京都駅周辺	京都駅近郊・山科	単純温泉	\N	\N	50947	\N
2307	3232	京丹後温泉	きょうたんごおんせん	京都府京丹後市網野町三津小宇牛ヶ立271			丹後・久美浜	丹後	弱アルカリ性低張性泉	\N	\N	50964	\N
2308	3275	金温泉・銀温泉	きんおんせん・ぎんおんせん	京都府宮津市日置３１００－８			天橋立・宮津・舞鶴	天橋立・宮津	中性低張性高温泉	\N	\N	50339	\N
2309	3307	銀温泉	ぎんおんせん	京都府宮津市字江尻小字申谷1480番			天橋立・宮津・舞鶴	天橋立・宮津	アルカリ単純泉	\N	\N	50339	\N
2310	1568	樫田温泉	かしだおんせん	大阪府高槻市田能的谷			大阪北部（茨木・高槻・箕面・伊丹空港）	茨木・高槻・枚方	単純温泉	\N	\N	\N	\N
2311	1569	花の里温泉	はなのさとおんせん	大阪府高槻市原			大阪北部（茨木・高槻・箕面・伊丹空港）	茨木・高槻・枚方	放射能泉	\N	\N	\N	\N
2312	1570	伏尾温泉	ふしおおんせん	大阪府池田市伏尾町			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	放射能泉	\N	\N	50349	\N
2313	1571	箕面温泉	みのおおんせん	大阪府箕面市温泉町			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	放射能泉	\N	\N	50974	\N
2314	1572	石切温泉	いしきりおんせん	大阪府東大阪市上石切町			大阪東部（寝屋川・守口・門真・東大阪）	東大阪・八尾	炭酸水素塩泉	\N	\N	\N	\N
2315	1573	長野温泉	ながのおんせん	大阪府河内長野市末広町3-25			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	放射能泉	\N	\N	50691	\N
2316	1574	天見温泉	あまみおんせん	大阪府河内長野市天見158			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	ナトリウム塩化物泉	\N	\N	50641	\N
2317	1575	犬鳴山温泉	いぬなきやまおんせん	大阪府泉佐野市大木			大阪南部（堺・岸和田・関西空港）	関空・泉佐野・岬	その他	\N	\N	\N	\N
2318	2255	牛滝温泉　いよやかの郷	うしたきおんせん　いよやかのさと	大阪府岸和田市大沢町1156番地			大阪南部（堺・岸和田・関西空港）	岸和田・貝塚	炭酸水素塩泉	\N	\N	\N	\N
2319	2256	犬鳴温泉センター	いぬなきおんせんせんたー	大阪府泉佐野市大木2238番地			大阪南部（堺・岸和田・関西空港）	関空・泉佐野・岬	ナトリウム塩化物泉	\N	\N	\N	\N
2320	2257	奥水間温泉	おくみずまおんせん	大阪府貝塚市木積3752-5			大阪南部（堺・岸和田・関西空港）	岸和田・貝塚	硫黄泉	\N	\N	\N	\N
2321	2258	千亀利の湯	ちきりのゆ	大阪府岸和田市並松町25-17			大阪南部（堺・岸和田・関西空港）	岸和田・貝塚	その他	\N	\N	\N	\N
2322	2483	世界の大温泉	せかいのだいおんせん	大阪府大阪市浪速区恵美須東3-4-24			心斎橋・なんば・四ツ橋	心斎橋・なんば・四ツ橋	アルカリ単純泉	\N	\N	\N	\N
2323	2484	奥天野温泉	おくあまのおんせん	大阪府河内長野市日野1520			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	単純温泉	\N	\N	\N	\N
2324	2485	さやま天然温泉	さやまてんねんおんせん	大阪府大阪狭山市岩室1-334-1			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	単純温泉	\N	\N	\N	\N
2325	2578	大和川矢田温泉	やまとがわやだおんせん	大阪府大阪市東住吉区矢田			上本町・天王寺・市内南部	住吉・長居公園	その他	\N	\N	\N	\N
2326	2836	能勢温泉	のせおんせん	大阪府豊能郡能勢町山辺４０９－８１			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	その他	\N	\N	50667	\N
2327	2839	生駒山龍間温泉	いこまさんりゅうまおんせん	大阪府大東市大字龍間２６６－８			大阪東部（寝屋川・守口・門真・東大阪）	寝屋川・守口・門真・四條畷	ナトリウム塩化物泉	\N	\N	50673	\N
2328	3276	能勢アートレイク温泉	のせあーとれいくおんせん	大阪府豊能郡能勢町野間出野566番			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	その他	\N	\N	50667	\N
2329	1605	城崎温泉	きのさきおんせん	兵庫県城崎郡城崎町湯島			城崎・竹野・豊岡	城崎	塩化物泉	\N	\N	50355	\N
2330	1606	湯村温泉	ゆむらおんせん	兵庫県美方郡浜坂町			香住・浜坂・湯村	浜坂	炭酸水素塩泉	\N	\N	50360	\N
2331	1607	うずしお温泉	うずしおおんせん	兵庫県三原郡西淡町伊加利湯ノ川			淡路島	南あわじ	炭酸水素塩泉	\N	\N	50354	\N
2333	1609	香住温泉	かすみおんせん	兵庫県城崎郡香住町下浜			香住・浜坂・湯村	香住	単純温泉	\N	\N	50358	\N
2334	1610	浜坂温泉郷	はまさかおんせんきょう	兵庫県美方郡浜坂町			香住・浜坂・湯村	浜坂	塩化物泉	\N	\N	50361	\N
2335	1611	小代温泉	おじろおんせん	兵庫県美方郡美方町大谷			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	硫酸塩泉	\N	\N	\N	\N
2336	1612	中間温泉	なかまおんせん	兵庫県養父郡大屋町中間			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	単純温泉	\N	\N	\N	\N
2337	1613	波賀温泉	はがおんせん	兵庫県宍栗郡波賀町原			尼崎・宝塚・三田・篠山	三田・篠山	硫黄泉	\N	\N	\N	\N
2338	1614	栃原温泉	とちわらおんせん	兵庫県朝来市生野町栃原			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	放射能泉	\N	\N	\N	\N
2339	1615	草山温泉	くさやまおんせん	兵庫県多紀郡西紀町遠方			尼崎・宝塚・三田・篠山	三田・篠山	含鉄泉	\N	\N	\N	\N
2340	1616	国領温泉	こくりょうおんせん	兵庫県氷上郡春日町国領			尼崎・宝塚・三田・篠山	三田・篠山	塩化物泉	\N	\N	\N	\N
2341	1617	籠坊温泉	かごぼうおんせん	兵庫県多紀郡篠山町後川新田			尼崎・宝塚・三田・篠山	三田・篠山	二酸化炭素泉	\N	\N	\N	\N
2342	1618	宝塚温泉	たからづかおんせん	兵庫県宝塚市湯本町			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	50352	\N
2343	1619	武田尾温泉	たけだおおんせん	兵庫県西宮市塩瀬町名塩			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	50353	\N
2344	1620	鹿の子温泉	かのこおんせん	兵庫県神戸市北区長尾町宅原			神戸・有馬・明石	有馬	単純温泉	\N	\N	\N	\N
2345	1621	有馬温泉	ありまおんせん	兵庫県神戸市北区有馬町			神戸・有馬・明石	有馬	硫黄泉	\N	\N	50350	\N
2346	1622	大沢温泉	おおぞおんせん	兵庫県神戸市北区大沢町上大沢			神戸・有馬・明石	有馬	含鉄泉	\N	\N	\N	\N
2347	1623	須磨温泉	すまおんせん	兵庫県神戸市須磨区須磨寺町			神戸・有馬・明石	須磨・舞子・明石	塩化物泉	\N	\N	\N	\N
2348	1624	やしろ夢園温泉	やしろゆめぞのおんせん	兵庫県加東郡社町家原			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	放射能泉	\N	\N	\N	\N
2349	1625	中村温泉	なかむらおんせん	兵庫県神崎郡香寺町中村			姫路・赤穂・播磨	姫路・加古川	塩化物泉	\N	\N	\N	\N
2350	1626	塩田温泉	しおたおんせん	兵庫県飾磨郡夢前町塩田			姫路・赤穂・播磨	姫路・加古川	含鉄泉	\N	\N	50516	\N
2351	1627	加古川温泉	かこがわおんせん	兵庫県加古川市上荘町井ノ口			姫路・赤穂・播磨	姫路・加古川	塩化物泉	\N	\N	\N	\N
2352	1628	赤穂温泉	あこうおんせん	兵庫県赤穂市御崎			姫路・赤穂・播磨	赤穂・相生・たつの	炭酸水素塩泉	\N	\N	50351	\N
2353	1629	岩屋温泉	いわやおんせん	兵庫県津名郡淡路町岩屋			淡路島	淡路	単純温泉	\N	\N	50354	\N
2354	1630	小倉山温泉	おぐらやまおんせん	兵庫県津名郡北淡町富島字小倉山			淡路島	淡路	放射能泉	\N	\N	\N	\N
2355	1631	洲本温泉	すもとおんせん	兵庫県洲本市山手			淡路島	淡路	放射能泉	\N	\N	50354	\N
2356	1632	南淡温泉	なんだんおんせん	兵庫県三原郡南淡町福良			淡路島	南あわじ	単純温泉	\N	\N	50354	\N
2357	1633	石道温泉	いしみちおんせん	兵庫県川西市石道下垣内			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	\N	\N
2358	1634	神鍋温泉	かんなべおんせん	兵庫県城崎郡日高町			神鍋・鉢伏・養父・和田山	神鍋・江原	二酸化炭素泉	\N	\N	50359	\N
2359	1635	出石温泉	いずしおんせん	兵庫県豊岡市出石町福住811番地			城崎・竹野・豊岡	豊岡・出石	炭酸水素塩泉	\N	\N	50921	\N
2360	1636	淡路島一宮温泉	あわじしまいちのみやおんせん	兵庫県津名郡一宮温泉			淡路島	淡路	塩化物泉	\N	\N	50354	\N
2361	2170	竹野温泉	たけのおんせん	兵庫県城崎郡竹野町竹野字引舟			城崎・竹野・豊岡	竹野	単純温泉	\N	\N	50357	\N
2362	2179	城崎円山川温泉	きのさきまるやまがわおんせん	兵庫県豊岡市小島			城崎・竹野・豊岡	城崎	弱アルカリ性低張性泉	\N	\N	50356	\N
2363	2225	佐津温泉	さづおんせん	兵庫県城崎郡香住町訓谷			香住・浜坂・湯村	香住	炭酸水素塩泉	\N	\N	50358	\N
2364	2226	柴山温泉	しばやまおんせん	兵庫県城崎郡香住町浦上			香住・浜坂・湯村	香住	単純温泉	\N	\N	50358	\N
2365	2642	かもめの湯温泉	かもめのゆおんせん	兵庫県西宮市鳴尾浜3-13			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	\N	\N
2366	2682	黒川温泉	くろかわおんせん	兵庫県朝来市生野町黒川			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	アルカリ単純泉	\N	\N	\N	\N
2367	2780	ジェノバ温泉	じぇのばおんせん	兵庫県津名郡北淡町野島蟇ノ浦150番地			淡路島	淡路	ナトリウム塩化物泉	\N	\N	50354	\N
2368	2793	ハチ北温泉	はちきたおんせん	兵庫県美方郡香美町村岡区大笹129-1			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	硫酸塩泉	\N	\N	50613	\N
2369	2794	七釜温泉	しちかまおんせん	兵庫県美方郡新温泉町七釜524			香住・浜坂・湯村	浜坂	アルカリ単純泉	\N	\N	50361	\N
2370	2805	シルク温泉	しるくおんせん	\N			城崎・竹野・豊岡	豊岡・出石	放射能泉	\N	\N	50640	\N
2371	2890	石井温泉	いしいおんせん	兵庫県美方郡村岡区村岡２５９７－４			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	単純温泉	\N	\N	50720	\N
2372	2892	あまるべ温泉	あまるべおんせん	兵庫県香美町香住区余部808-2			香住・浜坂・湯村	香住	弱アルカリ性低張性泉	\N	\N	50358	\N
2373	2907	やぶ温泉	やぶおんせん	兵庫県養父市上野299番地			神鍋・鉢伏・養父・和田山	ハチ高原・養父・和田山	単純温泉	\N	\N	50741	\N
2374	3101	サンライズ温泉	さんらいずおんせん	兵庫県南あわじ市広田広田1466-1			淡路島	南あわじ	アルカリ単純泉	\N	\N	50354	\N
2375	3107	南淡路温泉郷　潮崎温泉	みなみあわじおんせんきょう　しおざきおんせん	兵庫県南あわじ阿万西町字大谷1061番地			淡路島	南あわじ	弱アルカリ性低張性泉	\N	\N	50354	\N
2376	3115	東山温泉	ひがしやまおんせん	兵庫県宍粟市波賀町上野上東山１７９９－６			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	弱アルカリ性低張性泉	\N	\N	50903	\N
2377	3124	天然温泉　東浦花の湯	てんねんおんせん　ひがしうらはなのゆ	兵庫県淡路市久留麻2743番地			淡路島	淡路	放射能泉	\N	\N	50354	\N
2378	3145	毘沙門鉱泉	びしゃもんこうせん	兵庫県西宮市越水社家郷山1-27			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	ナトリウム塩化物泉	\N	\N	50903	\N
2379	3167	神戸六甲温泉	こうべろっこうおんせん	神戸市東灘区向洋町中2-13（六甲アイランド）			神戸・有馬・明石	六甲アイランド	硫酸塩泉	\N	\N	50350	\N
2380	3208	香寺温泉	こうでらおんせん	兵庫県姫路市香寺町恒屋1470			姫路・赤穂・播磨	姫路・加古川	含銅一鉄泉	\N	\N	50903	\N
2381	3237	瑞穂の湯	みずほのゆ	兵庫県三木市細川町垂穂894番地の60号			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	放射能泉	\N	\N	50516	\N
2382	3251	こうのとり温泉	こうのとりおんせん	兵庫県豊岡市小島1220			城崎・竹野・豊岡	豊岡・出石	単純温泉	\N	\N	50356	\N
2383	3277	天然温泉　さとわき湧玉の湯	てんねんおんせん　さとわきわくたまのゆ	兵庫県三木市口吉川町里脇８２１－３			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	弱アルカリ性低張性泉	\N	\N	50516	\N
2384	3300	南あわじ温泉	みなみあわじおんせん	兵庫県南あわじ市阿万吹上町字船城1433番2			淡路島	南あわじ	アルカリ単純泉	\N	\N	50354	\N
2385	3301	南あわじ温泉郷　南あわじ温泉	みなみあわじおんせんきょう　みなみあわじおんせん	兵庫県南あわじ市福良甲１５２９－７			淡路島	南あわじ	弱アルカリ性低張性泉	\N	\N	50354	\N
2386	1548	天平の湯温泉	てんぴょうのゆおんせん	奈良県奈良市法華寺町			奈良・斑鳩・天理	奈良・大和郡山	炭酸水素塩泉	\N	\N	50362	\N
2387	1549	宝来温泉	ほうらいおんせん	奈良県奈良市宝来4丁目18番1号			奈良・斑鳩・天理	奈良・大和郡山	単純温泉	\N	\N	50915	\N
2388	1550	信貴山温泉	しぎさんおんせん	奈良県生駒郡三郷町信貴山西２－４０			奈良・斑鳩・天理	生駒・信貴山	単純温泉	\N	\N	50916	\N
2389	1551	長谷寺温泉	はせでらおんせん	奈良県桜井市初瀬			飛鳥・橿原・三輪	飛鳥・橿原・三輪	単純温泉	\N	\N	\N	\N
2390	1552	奥香落温泉	おくこおちおんせん	奈良県宇陀郡曽爾村今井			飛鳥・橿原・三輪	室生・宇陀	炭酸水素塩泉	\N	\N	\N	\N
2391	1553	宮滝温泉	みやたきおんせん	奈良県吉野郡吉野町宮滝			吉野・奥吉野	吉野・天川・洞川	塩化物泉	\N	\N	\N	\N
2392	1554	吉野山温泉	よしのやまおんせん	奈良県吉野郡吉野町吉野山937			吉野・奥吉野	吉野・天川・洞川	鉱泉	\N	\N	50788	\N
2393	1555	吉野温泉	よしのおんせん	奈良県吉野郡吉野町吉野山			吉野・奥吉野	吉野・天川・洞川	含鉄泉	\N	\N	\N	\N
2394	1556	下市温泉	しもいちおんせん	奈良県吉野郡下市町			吉野・奥吉野	吉野・天川・洞川	炭酸水素塩泉	\N	\N	\N	\N
2395	1557	二見温泉	ふたみおんせん	奈良県五條市二見川端			吉野・奥吉野	吉野・天川・洞川	塩化物泉	\N	\N	\N	\N
2396	1558	西吉野温泉	にしよしのおんせん	奈良県吉野郡西吉野村城戸			吉野・奥吉野	吉野・天川・洞川	塩化物泉	\N	\N	\N	\N
2397	1559	大峯山洞川温泉	おおみねさんどろがわおんせん	奈良県吉野郡天川村洞川			吉野・奥吉野	吉野・天川・洞川	単純温泉	\N	\N	50363	\N
2398	1560	新湯盛温泉	しんゆもりおんせん	奈良県吉野郡川上村迫６９５ 			吉野・奥吉野	吉野・天川・洞川	単純温泉	\N	\N	50825	\N
2399	1561	入之波温泉	しおのはおんせん	奈良県吉野郡川上村入之波			吉野・奥吉野	吉野・天川・洞川	二酸化炭素泉	\N	\N	\N	\N
2400	1562	小処温泉	こどころおんせん	奈良県吉野郡上北山村小橡			吉野・奥吉野	奥吉野・十津川	硫黄泉	\N	\N	\N	\N
2401	1563	野迫川温泉	のせがわおんせん	奈良県吉野郡野迫川村北今西			吉野・奥吉野	奥吉野・十津川	単純温泉	\N	\N	\N	\N
2402	1564	湯泉地温泉	とうせんじおんせん	奈良県吉野郡十津川村武蔵			吉野・奥吉野	奥吉野・十津川	硫黄泉	\N	\N	50802	\N
2403	1565	十津川温泉	とつがわおんせん	奈良県吉野郡十津川村			吉野・奥吉野	奥吉野・十津川	ナトリウム塩化物泉	\N	\N	50743	\N
2404	1566	天然大和温泉	てんねんやまとおんせん	奈良県天理市嘉播町			奈良・斑鳩・天理	斑鳩・天理	塩化物泉	\N	\N	\N	\N
2405	1567	天辻大師温泉	てんつじだいしおんせん	奈良県吉野郡大塔村大字天辻			吉野・奥吉野	奥吉野・十津川	単純温泉	\N	\N	\N	\N
2406	2579	天の川温泉	あまのがわおんせん	奈良県吉野郡天川村坪内			吉野・奥吉野	吉野・天川・洞川	ナトリウム塩化物泉	\N	\N	\N	\N
2407	2827	金剛乃湯	こんごうのゆ	奈良県五條市新町2-1-33			吉野・奥吉野	吉野・天川・洞川	炭酸水素塩泉	\N	\N	50658	\N
2408	2828	大塔温泉	おおとうおんせん	奈良県五條市大塔町阪本249			吉野・奥吉野	吉野・天川・洞川	炭酸水素塩泉	\N	\N	50659	\N
2409	2853	平城宮温泉	へいじょうきゅうおんせん	奈良県奈良市二条町３丁目９番地１号			奈良・斑鳩・天理	奈良・大和郡山	その他	\N	\N	50686	\N
2410	2854	大和平群温泉	やまとへぐりおんせん	奈良県生駒郡平群町上庄2-16-1			奈良・斑鳩・天理	生駒・信貴山	炭酸水素塩泉	\N	\N	50687	\N
2411	2863	かしはらの湯	かしはらのゆ	奈良県橿原市久米町652－2			飛鳥・橿原・三輪	飛鳥・橿原・三輪	二酸化炭素泉	\N	\N	50696	\N
2412	2939	飛鳥の湯	あすかのゆ	奈良県大和郡山市杉町201番1			奈良・斑鳩・天理	奈良・大和郡山	弱アルカリ性低張性泉	\N	\N	50767	\N
2413	2952	上北山温泉	かみきたやまおんせん	奈良県吉野郡上北山村河合552-2			吉野・奥吉野	奥吉野・十津川	ナトリウム塩化物泉	\N	\N	50781	\N
2414	2959	新吉野温泉	しんよしのおんせん	奈良県吉野郡吉野町吉野山４０３			吉野・奥吉野	吉野・天川・洞川	単純温泉	\N	\N	50786	\N
2415	3042	美榛温泉	みはるおんせん	奈良県宇陀市榛原区福地２５５			飛鳥・橿原・三輪	室生・宇陀	弱アルカリ性低張性泉	\N	\N	50860	\N
2416	3082	下北山温泉　きなりの湯	しもきたやまおんせん　きなりのゆ	奈良県吉野郡下北山村上池原２８２			吉野・奥吉野	奥吉野・十津川	ナトリウム塩化物泉	\N	\N	50888	\N
2417	3157	さくら咲く温泉	さくらさくおんせん	奈良県吉野郡東吉野村小川876			吉野・奥吉野	奥吉野・十津川	その他	\N	\N	50934	\N
2418	3286	朱雀の湯	すざくのゆ	奈良県　奈良市　八条　５丁目３４０番地の１			奈良・斑鳩・天理	奈良・大和郡山	炭酸水素塩泉	\N	\N	\N	\N
2419	3321	本郷温泉	ほんごうおんせん	奈良県宇陀市大宇陀本郷267			飛鳥・橿原・三輪	室生・宇陀	単純温泉	\N	\N	50969	\N
2420	3325	奈良温泉　若草の湯	ならおんせん　わかくさのゆ	奈良県奈良市三条本町1098番地			奈良・斑鳩・天理	奈良・大和郡山	二酸化炭素泉	\N	\N	50934	\N
2421	1576	龍神温泉	りゅうじんおんせん	和歌山県日高郡龍神村龍神			白浜・龍神	龍神	炭酸水素塩泉	\N	\N	50365	\N
2422	1577	紀伊見温泉	きいみおんせん	和歌山県橋本市矢倉脇			福井・奥越前	高野山・橋本	二酸化炭素泉	\N	\N	\N	\N
2423	1578	加太淡嶋温泉	かだあわしまおんせん	和歌山県和歌山市深山			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	炭酸水素塩泉	\N	\N	50529	\N
2424	1579	花山温泉	はなやまおんせん	和歌山県和歌山市鳴神			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	塩化物泉	\N	\N	50713	\N
2425	1580	美里温泉	みさとおんせん	和歌山県海草郡美里町菅沢			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	ナトリウム塩化物泉	\N	\N	\N	\N
2426	1581	清水温泉	しみずおんせん	和歌山県有田郡清水町清水			有田・御坊・日高	有田	その他	\N	\N	50563	\N
2427	1582	大谷温泉	おおたにおんせん	和歌山県有田郡吉備町大谷			有田・御坊・日高	有田	炭酸水素塩泉	\N	\N	50563	\N
2428	1583	有田温泉	ありだおんせん	和歌山県有田市宮崎町			有田・御坊・日高	有田	炭酸鉄泉	\N	\N	50364	\N
2429	1584	湯浅温泉	ゆあさおんせん	和歌山県有田郡湯浅町湯浅			有田・御坊・日高	有田	硫黄泉	\N	\N	50563	\N
2430	1585	みなべ温泉	みなべおんせん	和歌山県日高郡南部町埴田南部海岸			白浜・龍神	白浜・南部・田辺	塩化物泉	\N	\N	50563	\N
2431	1586	南紀の台温泉	なんきのだいおんせん	和歌山県田辺市神島台			白浜・龍神	白浜・南部・田辺	炭酸水素塩泉	\N	\N	\N	\N
2432	1587	白浜温泉	しらはまおんせん	和歌山県西牟婁郡白浜町			白浜・龍神	白浜・南部・田辺	単純温泉	\N	\N	50366	\N
2433	1588	椿温泉	つばきおんせん	和歌山県西牟婁郡白浜町椿			白浜・龍神	白浜・南部・田辺	炭酸水素塩泉	\N	\N	50631	\N
2434	1589	すさみ温泉	すさみおんせん	和歌山県西牟婁郡すさみ町周参見			勝浦・串本・すさみ	串本・すさみ	炭酸水素塩泉	\N	\N	50367	\N
2435	1590	湯の花温泉	ゆのはなおんせん	和歌山県東牟婁郡古座川町添野川			勝浦・串本・すさみ	那智勝浦・太地	塩化物泉	\N	\N	\N	\N
2436	1591	串本温泉	くしもとおんせん	和歌山県西牟婁郡串本町串本			勝浦・串本・すさみ	串本・すさみ	塩化物泉	\N	\N	50368	\N
2437	1592	月野瀬温泉	つきのせおんせん	和歌山県東牟婁郡古座川町月野瀬			勝浦・串本・すさみ	那智勝浦・太地	炭酸水素塩泉	\N	\N	\N	\N
2438	1593	湯川温泉	ゆかわおんせん	和歌山県東牟婁郡那智勝浦町湯川			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	50369	\N
2439	1594	太地温泉	たいぢおんせん	和歌山県東牟婁郡太地町太地常渡			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	50369	\N
2440	1595	夏山温泉	なつさおんせん	和歌山県東牟婁郡太地町夏山			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	\N	\N
2441	1596	勝浦温泉	かつうらおんせん	和歌山県東牟婁郡那智勝浦町勝浦			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	50369	\N
2442	1597	目覚め温泉	めざめおんせん	和歌山県東牟婁郡那智勝浦町宇久井			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	\N	\N
2443	1598	湯の峰温泉	ゆのみねおんせん	和歌山県東牟婁郡本宮町湯の峰			本宮・新宮・中辺路	本宮	硫黄泉	\N	\N	50370	\N
2444	1599	渡瀬温泉	わたぜおんせん	和歌山県東牟婁郡本宮町渡瀬			本宮・新宮・中辺路	本宮	塩化物泉	\N	\N	50565	\N
2445	1600	川湯温泉	かわゆおんせん	和歌山県東牟婁郡本宮町川湯			本宮・新宮・中辺路	本宮	硫黄泉	\N	\N	50371	\N
2446	1601	和歌の浦温泉萬葉の湯	わかのうらおんせんまんようのゆ	和歌山県和歌山市新和歌浦			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	硫黄泉	\N	\N	50818	\N
2447	1602	田辺温泉	たなべおんせん	和歌山県田辺市新庄町			白浜・龍神	白浜・南部・田辺	塩化物泉	\N	\N	50563	\N
2448	1603	中津温泉あやめの湯	なかつおんせんあやめのゆ	和歌山県日高郡中津村大字高津尾			有田・御坊・日高	御坊・日高	硫黄泉	\N	\N	\N	\N
2449	1604	湯ノ谷温泉	ゆのたにおんせん	和歌山県東牟婁郡古座町田原			勝浦・串本・すさみ	那智勝浦・太地	炭酸水素塩泉	\N	\N	\N	\N
2450	2539	鶴の湯温泉	つるのゆおんせん	和歌山県日高郡南部川村熊瀬川47			白浜・龍神	白浜・南部・田辺	単純温泉	\N	\N	\N	\N
2451	2540	富里温泉	とみさとおんせん	和歌山県西牟婁郡大塔村下川下982			本宮・新宮・中辺路	中辺路・大塔	塩化物泉	\N	\N	\N	\N
2452	2643	紀州黒潮温泉	きしゅうくろしおおんせん	和歌山県和歌山市毛見151７			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	炭酸水素塩泉	\N	\N	50713	\N
2453	2652	小又川温泉	こまたかわおんせん	和歌山県日高郡龍神村龍神			有田・御坊・日高	御坊・日高	硫黄泉	\N	\N	\N	\N
2454	2653	まぶゆ温泉	まぶゆおんせん	和歌山県西牟婁郡白浜町８６４			白浜・龍神	白浜・南部・田辺	硫黄泉	\N	\N	\N	\N
2455	2675	美女湯温泉	みめゆおんせん	和歌山県東牟婁郡古座川町長追２５７			勝浦・串本・すさみ	那智勝浦・太地	弱アルカリ性低張性泉	\N	\N	50472	\N
2456	2716	東谷温泉	ひがしだにおんせん	和歌山県西牟婁郡白浜町2727-2			白浜・龍神	白浜・南部・田辺	アルカリ単純泉	\N	\N	\N	\N
2670	2042	阿武川温泉	あぶがわおんせん	山口県萩市川上			萩・長門	萩	塩化物泉	\N	\N	50568	\N
2457	2841	だるま湯	だるまゆ	和歌山県海草郡紀美野町滝の川７３			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	単純温泉	\N	\N	50675	\N
2458	2844	ゆの里温泉	ゆのさとおんせん	和歌山県橋本市神野々898			高野山	高野山・橋本	中性低張性高温泉	\N	\N	50678	\N
2459	2847	日置川温泉	ひきがわおんせん	和歌山県西牟婁郡白浜町日置			白浜・龍神	白浜・南部・田辺	アルカリ単純泉	\N	\N	50681	\N
2460	2884	紀三井寺温泉　花の湯	きみいでらおんせん　はなのゆ	和歌山県和歌山市紀三井寺673			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	その他	\N	\N	50713	\N
2461	3002	和歌の浦温泉　天石の湯	わかのうらおんせん　てんせきのゆ	和歌山県和歌山市田野８２			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	ナトリウム塩化物泉	\N	\N	50818	\N
2462	3003	かわべ温泉　きさくの湯	かわべおんせん　きさくのゆ	和歌山県日高郡日高川町平川８４９－１			有田・御坊・日高	御坊・日高	硫黄泉	\N	\N	50819	\N
2463	3091	龍門山温泉	りゅうもんざんおんせん	和歌山県和歌山市美園町３丁目３６番			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	弱アルカリ性低張性泉	\N	\N	50713	\N
2464	3096	美山温泉　	みやまおんせん	和歌山県日高郡日高川町初湯川２０２			有田・御坊・日高	御坊・日高	ナトリウム塩化物泉	\N	\N	50563	\N
2465	3100	栖原温泉	すはらおんせん	和歌山県有田郡湯浅町大字栖原小字長尾1364-2			有田・御坊・日高	有田	炭酸水素塩泉	\N	\N	50563	\N
2466	3126	紀州みなべ千里浜温泉	きしゅうみなべせんりはまおんせん	和歌山県日高郡みなべ町山内目津355番地の1			有田・御坊・日高	有田	塩化物泉	\N	\N	50563	\N
2467	3153	藤乃湯	ふじのゆ	和歌山県西牟婁郡白浜町３７４６番地			白浜・龍神	白浜・南部・田辺	炭酸水素塩泉	\N	\N	50366	\N
2468	3155	かつらぎ温泉	かつらぎおんせん	和歌山県伊都郡かつらぎ町佐野702			高野山	高野山・橋本	ナトリウム塩化物泉	\N	\N	50713	\N
2469	3172	衝幹湯	つくもとゆ	和歌山県西牟婁郡白浜町大浦2646			白浜・龍神	白浜・南部・田辺	二酸化炭素泉	\N	\N	50366	\N
2470	3216	加太淡嶋温泉　天空の湯	かだあわしまおんせん　てんくうのゆ	和歌山県和歌山市深山483			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	鉱泉	\N	\N	50529	\N
2471	3309	垣谷２源泉の混合泉	かきたに２げんせんのこんごうせん	和歌山県西牟婁郡白浜町3354‐4			白浜・龍神	白浜・南部・田辺	アルカリ単純泉	\N	\N	50366	\N
2472	1355	岩井温泉	いわいおんせん	鳥取県岩美郡岩美町岩井			鳥取・岩美	岩美	硫酸塩泉	\N	\N	50373	\N
2473	1356	鳥取温泉	とっとりおんせん	鳥取県鳥取市永楽温泉町			鳥取・岩美	鳥取	硫酸塩泉	\N	\N	50372	\N
2474	1357	吉岡温泉	よしおかおんせん	鳥取県鳥取市吉岡温泉町			鳥取・岩美	鳥取	単純温泉	\N	\N	50607	\N
2475	1358	浜村温泉	はまむらおんせん	鳥取県気高郡気高町浜村			鳥取・岩美	浜村・鹿野	塩化物泉	\N	\N	50374	\N
2476	1359	鹿野温泉	しかのおんせん	鳥取県気高郡鹿野町今市			鳥取・岩美	浜村・鹿野	単純温泉	\N	\N	50375	\N
2477	1360	東郷温泉	とうごうおんせん	鳥取県東伯郡東郷町旭			倉吉・三朝・湯梨浜	はわい・東郷	塩化物泉	\N	\N	50376	\N
2478	1361	はわい温泉	はわいおんせん	鳥取県東伯郡羽合町上浅津			倉吉・三朝・湯梨浜	はわい・東郷	塩化物泉	\N	\N	50377	\N
2479	1362	三朝温泉	みささおんせん	鳥取県東伯郡三朝町三朝			倉吉・三朝・湯梨浜	三朝	放射能泉	\N	\N	50378	\N
2480	1363	関金温泉	せきがねおんせん	鳥取県東伯郡関金町関金宿			倉吉・三朝・湯梨浜	倉吉・関金	塩化物泉	\N	\N	50379	\N
2481	1364	大山温泉	だいせんおんせん	鳥取県西伯郡岸本町丸山			米子・皆生・大山	大山	放射能泉	\N	\N	50608	\N
2482	1365	日吉津温泉	ひえづおんせん	鳥取県西伯郡日吉津村今吉			米子・皆生・大山	米子・皆生・境港	放射能泉	\N	\N	50608	\N
2483	1366	皆生温泉	かいけおんせん	鳥取県米子市皆生			米子・皆生・大山	米子・皆生・境港	塩化物泉	\N	\N	50380	\N
2484	2227	奥日野温泉	おくひのおんせん	鳥取県日野郡日南町花口字小倉原山1009-2			米子・皆生・大山	大山	塩化物泉	\N	\N	50608	\N
2485	2228	みなと温泉	みなとおんせん	鳥取県境港市竹内団地			米子・皆生・大山	米子・皆生・境港	放射能泉	\N	\N	50608	\N
2486	2229	上淀温泉	かみよどおんせん	鳥取県米子市淀江町福岡			米子・皆生・大山	米子・皆生・境港	ナトリウム塩化物泉	\N	\N	50608	\N
2487	2386	中山温泉	なかやまおんせん	鳥取県西伯郡大山町赤坂708			米子・皆生・大山	大山	アルカリ単純泉	\N	\N	50608	\N
2488	2403	砂丘温泉	さきゅうおんせん	鳥取県鳥取市福部町海士1013-1			鳥取・岩美	鳥取	アルカリ単純泉	\N	\N	50608	\N
2489	2404	船岡美人温泉	ふなおかびじんおんせん	鳥取県八頭郡八頭町船岡1832-5			鳥取・岩美	八頭	ナトリウム塩化物泉	\N	\N	50608	\N
2490	2405	湯原温泉	ゆはらおんせん	鳥取県八頭郡若桜町大字湯原字宮ノ元637			鳥取・岩美	八頭	硫酸塩泉	\N	\N	50608	\N
2491	2413	美肌の湯	びはだのゆ	鳥取県西伯郡大山町			米子・皆生・大山	大山	その他	\N	\N	50608	\N
2492	2720	岸本温泉	きしもとおんせん	鳥取県西伯郡岸本町大殿1010			米子・皆生・大山	大山	炭酸水素塩泉	\N	\N	50608	\N
2493	2721	湧くわく天然温泉　ラピスパ	わくわくてんねんおんせん　らぴすぱ	鳥取県米子市淀江町淀江2-38			米子・皆生・大山	米子・皆生・境港	その他	\N	\N	50608	\N
2494	2980	大山の湯	だいせんのゆ	鳥取県米子市2-38			米子・皆生・大山	米子・皆生・境港	単純温泉	\N	\N	50608	\N
2495	3137	大山伽羅温泉	だいせんきゃらおんせん	鳥取県西伯郡大山町鈑戸字大野１５２５－１１			米子・皆生・大山	大山	アルカリ単純泉	\N	\N	50381	\N
2496	3154	鳥取市有泉	とっとりしゆうせん	鳥取県鳥取市金沢字坂津口396-1			鳥取・岩美	鳥取	アルカリ単純泉	\N	\N	50372	\N
2497	3280	ブランナールみささ	ぶらんなーるみささ	鳥取県東伯郡三朝町三朝371‐1			倉吉・三朝・湯梨浜	三朝	単純温泉	\N	\N	50378	\N
2498	1367	松江しんじ湖温泉	まつえしんじこおんせん	島根県松江市千鳥町			松江・安来・玉造・奥出雲	松江・美保関・玉造	硫酸塩泉	\N	\N	50382	\N
2499	1368	三瓶温泉	さんべおんせん	島根県大田市三瓶町志学			出雲・大田・石見銀山	大田・温泉津	硫酸塩泉	\N	\N	50566	\N
2500	1369	天倫寺温泉	てんりんじおんせん	島根県松江市国屋町			松江・安来・玉造・奥出雲	松江・美保関・玉造	放射能泉	\N	\N	50609	\N
2501	1370	鷺の湯温泉	さぎのゆおんせん	島根県安来市さぎの湯温泉			松江・安来・玉造・奥出雲	安来	塩化物泉	\N	\N	50609	\N
2502	1371	玉造温泉	たまつくりおんせん	島根県八束郡玉湯町玉造			松江・安来・玉造・奥出雲	松江・美保関・玉造	硫酸塩泉	\N	\N	50383	\N
2503	1372	八雲温泉	やくもおんせん	島根県松江市八雲町熊野			松江・安来・玉造・奥出雲	松江・美保関・玉造	硫酸塩泉	\N	\N	50609	\N
2504	1373	海潮温泉	うしおおんせん	島根県大原郡大東町中湯石			松江・安来・玉造・奥出雲	奥出雲・雲南	硫酸塩泉	\N	\N	50609	\N
2505	1374	出雲湯村温泉	いずもゆむらおんせん	島根県雲南市木次町湯村			松江・安来・玉造・奥出雲	奥出雲・雲南	単純温泉	\N	\N	50609	\N
2506	1375	きまち温泉	きまちおんせん	島根県松江市宍道町上来待			松江・安来・玉造・奥出雲	松江・美保関・玉造	単純温泉	\N	\N	50609	\N
2507	1376	湯の川温泉	ゆのかわおんせん	島根県簸川郡斐川町学頭			出雲・大田・石見銀山	出雲・大社・湯の川	単純温泉	\N	\N	50609	\N
2508	1377	立久恵峡温泉	たちくえきょうおんせん	島根県出雲市乙立町			出雲・大田・石見銀山	出雲・大社・湯の川	塩化物泉	\N	\N	50609	\N
2509	1378	不老温泉	ふろうおんせん	島根県出雲市大社町修理免			出雲・大田・石見銀山	出雲・大社・湯の川	炭酸水素塩泉	\N	\N	50566	\N
2510	1379	湖陵温泉	こりょうおんせん	島根県出雲市湖陵町二部			出雲・大田・石見銀山	出雲・大社・湯の川	硫酸塩泉	\N	\N	50609	\N
2511	1380	華蔵温泉	はなくらおんせん	島根県出雲市多伎町久村			出雲・大田・石見銀山	出雲・大社・湯の川	放射能泉	\N	\N	50566	\N
2512	1381	小田温泉	おだおんせん	島根県 出雲市多伎町小田			出雲・大田・石見銀山	出雲・大社・湯の川	硫酸塩泉	\N	\N	50566	\N
2513	1382	用田温泉	もちだおんせん	島根県大田市長久町用田			出雲・大田・石見銀山	大田・温泉津	単純温泉	\N	\N	50566	\N
2514	1383	池田ラジウム温泉	いけだらじうむおんせん	島根県大田市三瓶町池田			出雲・大田・石見銀山	大田・温泉津	放射能泉	\N	\N	50566	\N
2515	1384	小屋原温泉	こやはらおんせん	島根県大田市三瓶町小屋原			出雲・大田・石見銀山	大田・温泉津	塩化物泉	\N	\N	50566	\N
2516	1385	湯抱温泉	ゆがかいおんせん	島根県邑智郡美郷町湯抱			出雲・大田・石見銀山	大田・温泉津	塩化物泉	\N	\N	50566	\N
2517	1386	潮温泉	うしおおんせん	島根県邑智郡美郷町長藤			出雲・大田・石見銀山	大田・温泉津	放射能泉	\N	\N	50566	\N
2518	1387	湯迫温泉	ゆざこおんせん	島根県大田市仁摩町天河内			出雲・大田・石見銀山	大田・温泉津	塩化物泉	\N	\N	50566	\N
2519	1388	温泉津温泉	ゆのつおんせん	島根県迩摩郡温泉津町温泉津			出雲・大田・石見銀山	大田・温泉津	単純温泉	\N	\N	50384	\N
2520	1389	上津井温泉	かんづいおんせん	島根県江津市松川町上津井			益田・浜田・津和野	浜田・江津・有福	炭酸水素塩泉	\N	\N	50566	\N
2521	1390	断魚温泉	だんぎょおんせん	島根県邑智郡邑南町井原			益田・浜田・津和野	浜田・江津・有福	炭酸水素塩泉	\N	\N	50566	\N
2522	1391	有福温泉	ありふくおんせん	島根県江津市有福温泉町			益田・浜田・津和野	浜田・江津・有福	単純温泉	\N	\N	50473	\N
2523	1392	美又温泉	みまたおんせん	島根県那賀郡金城町追原			益田・浜田・津和野	浜田・江津・有福	単純温泉	\N	\N	50566	\N
2524	1393	旭温泉	あさひおんせん	島根県那賀郡旭町木田			益田・浜田・津和野	浜田・江津・有福	単純温泉	\N	\N	50566	\N
2525	1394	荒磯温泉	あらいそおんせん	島根県益田市西平原町			益田・浜田・津和野	津和野・益田	単純温泉	\N	\N	50566	\N
2526	1395	多田温泉	ただおんせん	島根県益田市多田町			益田・浜田・津和野	津和野・益田	含鉄泉	\N	\N	50566	\N
2527	1396	大谷温泉	おおたにおんせん	島根県益田市大谷町			益田・浜田・津和野	津和野・益田	含鉄泉	\N	\N	50566	\N
2528	1397	柿木温泉	かきのきおんせん	島根県鹿足郡吉賀町柿木村柿木			益田・浜田・津和野	津和野・益田	塩化物泉	\N	\N	50566	\N
2529	1398	美都温泉	みとおんせん	島根県益田市美都町宇津川			益田・浜田・津和野	津和野・益田	単純温泉	\N	\N	50566	\N
2530	1399	木部谷温泉	きべだにおんせん	島根県鹿足郡吉賀町柿木村木部谷			益田・浜田・津和野	津和野・益田	塩化物泉	\N	\N	50566	\N
2531	2261	いわみ温泉	いわみおんせん	島根県邑智郡邑南町矢上8532-2			益田・浜田・津和野	浜田・江津・有福	アルカリ単純泉	\N	\N	50566	\N
2532	2335	出雲平成温泉	いずもへいせいおんせん	島根県出雲市平成町			出雲・大田・石見銀山	出雲・大社・湯の川	ナトリウム塩化物泉	\N	\N	50566	\N
2533	2336	多伎温泉	たきおんせん	島根県出雲市多伎町久村654			出雲・大田・石見銀山	出雲・大社・湯の川	硫酸塩泉	\N	\N	50566	\N
2534	2342	おろちゆったり館	おろちゆったりかん	島根県雲南市木次町東日登			松江・安来・玉造・奥出雲	奥出雲・雲南	硫酸塩泉	\N	\N	50609	\N
2535	2414	木次温泉	きすきおんせん	島根県雲南市木次町東日登			松江・安来・玉造・奥出雲	奥出雲・雲南	その他	\N	\N	50609	\N
2536	2416	風の国温泉	かぜのくにおんせん	島根県邑智郡桜江町長谷2696			益田・浜田・津和野	浜田・江津・有福	ナトリウム塩化物泉	\N	\N	50566	\N
2537	2729	名賀温泉	なよしおんせん	島根県鹿足郡津和町大字鷲原字瀬戸イ170-1			益田・浜田・津和野	津和野・益田	アルカリ単純泉	\N	\N	50566	\N
2538	2787	津和野温泉	つわのおんせん	島根県鹿足郡津和野町後田口82番地2			益田・浜田・津和野	津和野・益田	アルカリ単純泉	\N	\N	50560	\N
2539	2927	亀嵩温泉	かめだけおんせん	島根県仁多郡奥出雲町亀嵩3609-1			松江・安来・玉造・奥出雲	奥出雲・雲南	アルカリ単純泉	\N	\N	50609	\N
2540	3081	美保関温泉	みほのせきおんせん	島根県松江市美保関町福浦303			松江・安来・玉造・奥出雲	松江・美保関・玉造	放射能泉	\N	\N	50609	\N
2541	3093	比田温泉	ひだおんせん	島根県安来市広瀬町東比田１３７３			松江・安来・玉造・奥出雲	安来	ナトリウム塩化物泉	\N	\N	50609	\N
2542	3113	大社温泉	たいしゃおんせん	島根県出雲市大社町修理免８１８番５			出雲・大田・石見銀山	出雲・大社・湯の川	炭酸水素塩泉	\N	\N	50609	\N
2543	3212	石州の湯	せきしゅうのゆ	島根県江津市桜江町長谷1272番地5			益田・浜田・津和野	浜田・江津・有福	アルカリ単純泉	\N	\N	50566	\N
2544	3317	出雲須佐温泉	いずもすさおんせん	島根県出雲市佐田町原田737			出雲・大田・石見銀山	出雲・大社・湯の川	放射能泉	\N	\N	50609	\N
2545	3324	湯屋温泉	ゆやおんせん	島根県浜田市金城町下来原294‐2			益田・浜田・津和野	浜田・江津・有福	ナトリウム塩化物泉	\N	\N	50566	\N
2546	1304	湯郷温泉	ゆのごうおんせん	岡山県英田郡美作町湯郷			津山・美作三湯・蒜山	美作・湯郷	塩化物泉	\N	\N	50389	\N
2547	1305	あわくら温泉	あわくらおんせん	岡山県英田郡西粟倉村影石			津山・美作三湯・蒜山	美作・湯郷	放射能泉	\N	\N	50601	\N
2548	1306	倉見温泉	くらみおんせん	岡山県津山市加茂町倉見			津山・美作三湯・蒜山	津山・奥津	放射能泉	\N	\N	50601	\N
2549	1307	百々温泉	どうどうおんせん	岡山県津山市加茂町小中原			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2550	1308	上斎原温泉	かみさいばらおんせん	岡山県苫田郡上斎原村			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2551	1309	奥津温泉	おくつおんせん	岡山県苫田郡奥津町奥津			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50388	\N
2552	1310	津黒高原温泉	つぐろこうげんおんせん	岡山県真庭市蒜山下和			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50601	\N
2553	1311	湯原温泉　(湯原)	ゆばらおんせん	岡山県真庭郡湯原町湯本			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50387	\N
2554	1312	郷緑温泉　(湯原)	ごうろくおんせん	岡山県真庭市本庄			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50601	\N
2555	1313	足温泉　(湯原)	たるおんせん	岡山県真庭市都喜足			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50387	\N
2556	1314	真賀温泉　(湯原)	まがおんせん	岡山県真庭市仲間			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50387	\N
2557	1315	湯免温泉	ゆめおんせん	岡山県赤磐市塩木			津山・美作三湯・蒜山	美作・湯郷	硫黄泉	\N	\N	50601	\N
2558	1316	八幡温泉	やはたおんせん	岡山県岡山市北区建部町建部上			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2559	1317	小森温泉	こもりおんせん	岡山県加賀郡吉備中央町小森			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2560	1318	湯の瀬温泉	ゆのせおんせん	岡山県加賀郡吉備中央町豊岡下			津山・美作三湯・蒜山	津山・奥津	硫黄泉	\N	\N	50601	\N
2561	1319	井倉温泉	いくらおんせん	岡山県新見市井倉			高梁・新見・吉備高原	新見・阿哲	単純温泉	\N	\N	50601	\N
2562	1320	鷺の巣温泉	さぎのすおんせん	岡山県上房郡賀陽町竹荘			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	\N	\N
2563	1321	月の原温泉	つきのはらおんせん	岡山県上房郡賀陽町上竹			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	\N	\N
2564	1322	粟井温泉	あわいおんせん	岡山県岡山市粟井			岡山・玉野・牛窓	岡山・玉野	放射能泉	\N	\N	50600	\N
2565	1323	苫田温泉	とまだおんせん	岡山県岡山市栢谷			岡山・玉野・牛窓	岡山・玉野	放射能泉	\N	\N	50600	\N
2566	1324	湯迫温泉	ゆばおんせん	岡山県岡山市湯迫			岡山・玉野・牛窓	岡山・玉野	硫黄泉	\N	\N	50600	\N
2567	1325	怒塚山温泉	いかつやまおんせん	岡山県岡山市郡			岡山・玉野・牛窓	岡山・玉野	単純温泉	\N	\N	\N	\N
2568	1326	瀬戸大橋温泉	せとおおはしおんせん	岡山県倉敷市下庄			倉敷・総社・井笠	倉敷・児島・鷲羽山	塩化物泉	\N	\N	50600	\N
2569	1327	由加温泉	ゆがおんせん	岡山県倉敷市児島由加			倉敷・総社・井笠	倉敷・児島・鷲羽山	放射能泉	\N	\N	50600	\N
2570	1328	瀬戸大橋たまの温泉	せとおおはしたまのおんせん	岡山県玉野市渋川2-12-1			岡山・玉野・牛窓	岡山・玉野	ナトリウム塩化物泉	\N	\N	50600	\N
2571	1329	鷲羽山吹上温泉	わしゆうざんふきあげおんせん	岡山県倉敷市下津井吹上			倉敷・総社・井笠	倉敷・児島・鷲羽山	放射能泉	\N	\N	50600	\N
2572	1330	総社温泉	そうじゃおんせん	岡山県総社市井尻野			倉敷・総社・井笠	総社・井原・笠岡	放射能泉	\N	\N	50386	\N
2573	1331	遙照山温泉	ようしょうざんおんせん	岡山県浅口郡金光町上竹			倉敷・総社・井笠	総社・井原・笠岡	放射能泉	\N	\N	\N	\N
2574	1332	井原温泉	いばらおんせん	岡山県井原市井原町向町			倉敷・総社・井笠	総社・井原・笠岡	硫黄泉	\N	\N	\N	\N
2575	1333	倉敷王子が岳温泉	くらしきおおじがたけおんせん	岡山県倉敷市児島唐琴町			倉敷・総社・井笠	倉敷・児島・鷲羽山	弱アルカリ性低張性泉	\N	\N	50600	\N
2576	2486	下湯原温泉	しもゆばらおんせん	岡山県真庭市下湯原24-1			津山・美作三湯・蒜山	湯原・蒜山高原	アルカリ単純泉	\N	\N	50387	\N
2577	2487	神郷温泉	しんごうおんせん	岡山県阿哲郡神郷町高瀬			高梁・新見・吉備高原	新見・阿哲	放射能泉	\N	\N	50601	\N
2578	2488	新見千屋温泉	にいみちやおんせん	岡山県新見市千屋花見			高梁・新見・吉備高原	新見・阿哲	弱アルカリ性低張性泉	\N	\N	50601	\N
2579	2701	津山温泉	つやまおんせん	岡山県津山市大田５９１－４			津山・美作三湯・蒜山	津山・奥津	アルカリ単純泉	\N	\N	50601	\N
2580	2817	東吉備高原温泉	ひがしきびこうげんおんせん	岡山県和気郡佐伯町南山方金山向146			津山・美作三湯・蒜山	美作・湯郷	単純温泉	\N	\N	50650	\N
2581	2893	岡山桃太郎温泉	おかやまももたろうおんせん	岡山県岡山市牟佐2915-1			岡山・玉野・牛窓	岡山・玉野	弱アルカリ性低張性泉	\N	\N	50727	\N
2582	3028	薬寿の湯	やくじゅのゆ	岡山県津山市阿波1200			津山・美作三湯・蒜山	津山・奥津	その他	\N	\N	50601	\N
2583	3064	朝霧温泉	あさぎりおんせん	岡山県高梁市松原市神原2281－4			高梁・新見・吉備高原	高梁・川上・成羽	アルカリ単純泉	\N	\N	50601	\N
2584	3151	宮本武蔵温泉	みやもとむさしおんせん	岡山県美作市宮本字九反田101-3			津山・美作三湯・蒜山	美作・湯郷	単純温泉	\N	\N	50389	\N
2585	3165	愛の村温泉「ゆ・ら・り・あ」	あいのむらおんせん「ゆ・ら・り・あ」	岡山県美作市後山1872			津山・美作三湯・蒜山	美作・湯郷	弱アルカリ性低張性泉	\N	\N	50389	\N
2586	3241	作州武蔵温泉	さくしゅうむさしおんせん	岡山県美作市大町水谷長蔵口962番地			津山・美作三湯・蒜山	美作・湯郷	弱アルカリ性低張性泉	\N	\N	50389	\N
2587	3272	大芦高原温泉	おおあしこうげんおんせん	岡山県美作市上山１７３５			津山・美作三湯・蒜山	美作・湯郷	弱アルカリ性低張性泉	\N	\N	50389	\N
2588	3278	のとろ温泉	のとろおんせん	岡山県苫田郡鏡野町富西谷2078－6			津山・美作三湯・蒜山	津山・奥津	ナトリウム塩化物泉	\N	\N	50601	\N
2589	3327	吉備路温泉	きびじおんせん	岡山県総社市三須８２５‐１			倉敷・総社・井笠	総社・井原・笠岡	単純温泉	\N	\N	50600	\N
2590	1334	比婆山温泉	ひばやまおんせん	広島県比婆郡西城町油木			庄原・三次・芸北	庄原・帝釈峡・神石高原	放射能泉	\N	\N	\N	\N
2591	1335	比和温泉	ひわおんせん	広島県比婆郡比和町比和			庄原・三次・芸北	庄原・帝釈峡・神石高原	塩化物泉	\N	\N	\N	\N
2592	1336	東城温泉	とうじょうおんせん	広島県比婆郡東城町東城			庄原・三次・芸北	庄原・帝釈峡・神石高原	単純温泉	\N	\N	\N	\N
2593	1337	矢野温泉	やのおんせん	広島県甲奴郡上下町矢野			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50569	\N
2594	1338	本郷温泉	ほんごうおんせん	広島県福山市本郷町			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	\N	\N
2595	1339	神勝寺温泉	しんしょうじおんせん	広島県沼隅郡沼隅町中山南			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	\N	\N
2596	1340	養老温泉	ようろうおんせん	広島県尾道市美ノ郷町三成			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50390	\N
2597	1341	くのしま温泉	くのしまおんせん	広島県竹原市忠海町大久野島			福山・尾道	三原・竹原・東広島	放射能泉	\N	\N	\N	\N
2598	1342	湯坂温泉	ゆさかおんせん	広島県竹原市西野町西湯坂			福山・尾道	三原・竹原・東広島	放射能泉	\N	\N	\N	\N
2599	1343	千代田温泉	ちよだおんせん	広島県山県郡千代田町南方額田部			庄原・三次・芸北	芸北	放射能泉	\N	\N	50695	\N
2600	1344	温井温泉	ぬくいおんせん	広島県山県郡加計町温井			庄原・三次・芸北	芸北	放射能泉	\N	\N	50695	\N
2601	1345	三段峡温泉	さんだんきょうおんせん	広島県山県郡戸河内町竜川			庄原・三次・芸北	芸北	放射能泉	\N	\N	50695	\N
2602	1346	湯の山温泉	ゆのやまおんせん	広島県佐伯郡湯来町和田温田			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2603	1347	湯来温泉	ゆきおんせん	広島県佐伯郡湯来町多田			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2604	1348	潮原温泉	うしおばらおんせん	広島県佐伯郡吉和村潮原			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2605	1349	岩倉温泉	いわくらおんせん	広島県佐伯郡佐伯町津田			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2606	1350	羅漢温泉	らかんおんせん	広島県佐伯郡佐伯町栗栖			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2607	1351	宮浜温泉	みやはまおんせん	広島県佐伯郡大野町宮浜温泉			広島・宮島	宮島・廿日市	放射能泉	\N	\N	50823	\N
2608	1352	小瀬川温泉	おぜがわおんせん	広島県佐伯郡佐伯町栗栖			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2609	1353	女鹿平温泉	めがひらおんせん	広島県廿日市市吉和			広島・宮島	広島	単純温泉	\N	\N	50567	\N
2610	1354	君田温泉森の泉	きみたおんせんもりのいずみ	広島県双三郡君田村泉吉田			庄原・三次・芸北	三次	その他	\N	\N	\N	\N
2611	2259	能美温泉	のうみおんせん	広島県佐伯郡能美町中町			福山・尾道	呉・江田島	ナトリウム塩化物泉	\N	\N	\N	\N
2612	2260	倉橋温泉	くらはしおんせん	広島県安芸郡倉橋町431			福山・尾道	呉・江田島	放射能泉	\N	\N	\N	\N
2613	2489	五日市温泉	いつかいちおんせん	広島県広島市佐伯区利松			広島・宮島	広島	その他	\N	\N	50567	\N
2614	2490	桂浜温泉	かつらがはまおんせん	広島県安芸郡倉橋町			福山・尾道	呉・江田島	塩化物泉	\N	\N	\N	\N
2615	2549	鞆の浦温泉	とものうらおんせん	広島県福山市鞆の浦			福山・尾道	福山・尾道・しまなみ	ナトリウム塩化物泉	\N	\N	50569	\N
2616	2859	ホリスリゾート温泉	ほりすりぞーとおんせん	広島県江田島市大柿町深江字沖野島			福山・尾道	呉・江田島	放射能泉	\N	\N	50692	\N
2617	2862	芸北温泉	げいほくおんせん	広島県山県郡北広島町細見145-104			庄原・三次・芸北	芸北	弱アルカリ性低張性泉	\N	\N	50695	\N
2618	3018	宮島温泉	みやじまおんせん	広島県廿日市市宮島町			広島・宮島	宮島・廿日市	放射能泉	\N	\N	50823	\N
2619	3019	広島温泉	ひろしまおんせん	広島県広島市南区元宇品23-1			広島・宮島	広島	単純温泉	\N	\N	50823	\N
2620	3027	龍温泉2	りゅうおんせんに	広島県山県郡北広島町南方３６５９			庄原・三次・芸北	芸北	ナトリウム塩化物泉	\N	\N	50695	\N
2621	3048	神の湯	かみのゆ	広島県廿日市市宮島町字魚之棚534			広島・宮島	宮島・廿日市	放射能泉	\N	\N	50823	\N
2622	3079	君田温泉	きみたおんせん	広島県三次市君田町泉吉田311-3			庄原・三次・芸北	三次	弱アルカリ性低張性泉	\N	\N	50695	\N
2623	3095	浦島の湯	うらしまのゆ	広島県尾道市美ノ郷町三成2500			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50390	\N
2624	3103	おおあさ鳴滝露天温泉	おおあさなるてきろてんおんせん	広島県山県郡北広島町大朝5111			庄原・三次・芸北	芸北	鉱泉	\N	\N	50695	\N
2625	3161	若宮温泉	わかみやおんせん	広島県廿日市市宮島町345-1			広島・宮島	宮島・廿日市	その他	\N	\N	50823	\N
2626	3164	鷹の湯温泉	たかのゆおんせん	広島県福山市山野町久賀山国有林780い林小班			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50569	\N
2627	3214	The SPA SHION	ざすぱしおん	広島県東広島市河内町入野獅子伏山1296-72			三原・竹原・東広島・呉	三原・竹原・東広島	ナトリウム塩化物泉	\N	\N	50956	\N
2628	3252	高宮温泉	たかみやおんせん	広島県安芸高田市高宮町原田１７８７‐１			庄原・三次・芸北	三次	放射能泉	\N	\N	50695	\N
2629	3259	極楽寺山温泉	ごくらくてらやまおんせん	広島県廿日市市原２２１０			三原・竹原・東広島・呉	三原・竹原・東広島	鉱泉	\N	\N	50823	\N
2630	3261	尾道温泉	おのみちおんせん	広島県尾道市久保一丁目3-37			福山・尾道	福山・尾道・しまなみ	塩化物泉	\N	\N	50569	\N
2631	1400	雙津峡温泉	そうづきょうおんせん	山口県岩国市錦町深川			岩国・柳井・周南	岩国	放射能泉	\N	\N	50568	\N
2632	1401	錦帯橋温泉	きんたいきょうおんせん	山口県岩国市岩国			岩国・柳井・周南	岩国	放射能泉	\N	\N	50568	\N
2633	1402	由宇温泉	ゆうおんせん	山口県岩国市由宇町			岩国・柳井・周南	岩国	放射能泉	\N	\N	50568	\N
2634	1403	三丘温泉	みつおおんせん	山口県周南市小松原			岩国・柳井・周南	周南・湯野	硫黄泉	\N	\N	50568	\N
2635	1404	呼鶴温泉	よびづるおんせん	山口県周南市大字安田1814			岩国・柳井・周南	周南・湯野	放射能泉	\N	\N	50568	\N
2636	1405	湯野温泉	ゆのおんせん	山口県徳山市湯野			岩国・柳井・周南	周南・湯野	放射能泉	\N	\N	50568	\N
2637	1406	むつみ温泉	むつみおんせん	山口県萩市高佐下			萩・長門	萩	放射能泉	\N	\N	50392	\N
2638	1407	萩本陣温泉	はぎほんじんおんせん	山口県萩市椿東			萩・長門	萩	放射能泉	\N	\N	50527	\N
2639	1408	湯の瀬温泉	ゆのせおんせん	山口県萩市川上			萩・長門	萩	塩化物泉	\N	\N	50568	\N
2640	1409	湯免温泉	ゆめんおんせん	山口県大津郡三隅町湯免			萩・長門	長門	放射能泉	\N	\N	50570	\N
2641	1410	黄波戸温泉	きわどおんせん	山口県大津郡日置町日置上黄波戸			萩・長門	長門	放射能泉	\N	\N	50570	\N
2642	1411	長門湯本温泉	ながとゆもとおんせん	山口県長門市深川湯本			萩・長門	長門	単純温泉	\N	\N	50394	\N
2643	1412	俵山温泉	たわらやまおんせん	山口県長門市俵山			萩・長門	長門	単純温泉	\N	\N	50570	\N
2644	1413	油谷湾温泉	ゆやわんおんせん	山口県大津郡油谷町伊上			萩・長門	長門	単純温泉	\N	\N	50570	\N
2645	1414	滝部温泉	たきべおんせん	山口県下関市豊北町滝部			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2646	1415	津波敷温泉	つばしきおんせん	山口県下関市豊北町神田上			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2647	1416	大河内温泉	おおかわちおんせん	山口県下関市豊浦町宇賀			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2648	1417	わいた温泉	わいたおんせん	山口県下関市豊浦町涌田後地			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2649	1418	川棚温泉	かわたなおんせん	山口県豊浦郡豊浦町川棚			下関・宇部	下関・長府・川棚	塩化物泉	\N	\N	50396	\N
2650	1419	荒木温泉	あらきおんせん	山口県下関市豊田町荒木			下関・宇部	下関・長府・川棚	塩化物泉	\N	\N	50396	\N
2651	1420	一ノ俣温泉	いちのまたおんせん	山口県下関市一の俣			下関・宇部	下関・長府・川棚	硫黄泉	\N	\N	50824	\N
2652	1421	於福温泉	おふくおんせん	山口県美祢市於福町古屋			山口・秋芳	秋芳	硫黄泉	\N	\N	50568	\N
2653	1422	湯田温泉	ゆだおんせん	山口県山口市湯田温泉			山口・秋芳	山口・湯田・防府	単純温泉	\N	\N	50392	\N
2654	1423	湯ノ口温泉	ゆのくちおんせん	山口県美祢郡美東町湯ノ口			山口・秋芳	秋芳	単純温泉	\N	\N	50392	\N
2655	1424	阿知須温泉	あじすおんせん	山口県吉敷郡阿知須町源河			山口・秋芳	山口・湯田・防府	放射能泉	\N	\N	50568	\N
2656	1425	片倉温泉	かたくらおんせん	山口県宇部市西岐波区下片倉			下関・宇部	宇部	放射能泉	\N	\N	50568	\N
2657	1426	持世寺温泉	じせいじおんせん	山口県宇部市厚東区持世寺			下関・宇部	宇部	放射能泉	\N	\N	50568	\N
2658	1427	宗方温泉	むなかたおんせん	山口県宇部市東万倉			下関・宇部	宇部	放射能泉	\N	\N	50568	\N
2659	1428	江汐湖温泉	えじおこおんせん	山口県小野田市千崎東			下関・宇部	宇部	単純温泉	\N	\N	50568	\N
2660	1429	湯谷温泉	ゆたにおんせん	山口県下関市吉田			下関・宇部	下関・長府・川棚	塩化物泉	\N	\N	50570	\N
2661	1430	周防大島温泉	すおうおおしまおんせん	山口県大島郡周防大島町小松			岩国・柳井・周南	柳井・周防大島	放射能泉	\N	\N	50568	\N
2662	1431	片添ヶ浜温泉	かたぞえがはまおんせん	山口県大島郡周防大島町片添			岩国・柳井・周南	柳井・周防大島	放射能泉	\N	\N	50568	\N
2663	2035	宮野温泉	みやのおんせん	山口県山口市宮野上			山口・秋芳	山口・湯田・防府	放射能泉	\N	\N	50392	\N
2664	2036	玉泉湖温泉	ぎょくせんこおんせん	山口県防府市大崎江良			山口・秋芳	山口・湯田・防府	アルカリ単純泉	\N	\N	50568	\N
2665	2037	江汐温泉	えじおおんせん	山口県小野田市千崎東			下関・宇部	宇部	その他	\N	\N	50568	\N
2666	2038	湯ノ峠温泉	ゆうのとうおんせん	山口県山陽小野田市			下関・宇部	宇部	塩化物泉	\N	\N	50568	\N
2667	2039	豊田温泉	とよだおんせん	山口県下関市豊田町西市			下関・宇部	下関・長府・川棚	その他	\N	\N	50396	\N
2668	2040	菊川温泉	きくがわおんせん	山口県下関市菊川町			下関・宇部	下関・長府・川棚	その他	\N	\N	50396	\N
2669	2041	願成就温泉	がんじょうじゅおんせん	山口県山口市阿東			萩・長門	萩	炭酸水素塩泉	\N	\N	50568	\N
2671	2043	竜崎温泉	じゅうざきおんせん	山口県大島郡周防大島町			岩国・柳井・周南	柳井・周防大島	炭酸水素塩泉	\N	\N	50568	\N
2672	2044	田万川温泉	たまがわおんせん	山口県萩市江崎			萩・長門	萩	アルカリ単純泉	\N	\N	50568	\N
2673	2230	下関マリン温泉	しものせきまりんおんせん	山口県下関市長府外浦町3454			下関・宇部	下関・長府・川棚	その他	\N	\N	50396	\N
2674	2697	萩温泉弘法寺	はぎおんせんこうほうじ	山口県萩市古萩町２５（萩グランドホテル内）			萩・長門	萩	塩化物泉	\N	\N	50527	\N
2675	2755	はぎ温泉	はぎおんせん	山口県萩市大字椿東字釜屋6089-4			萩・長門	萩	ナトリウム塩化物泉	\N	\N	50527	\N
2676	2782	千春楽泉	せんしゅんらくせん	山口県萩市堀内字西ノ浜59-5			萩・長門	萩	放射能泉	\N	\N	50527	\N
2677	2826	源河の湯	げんがのゆ	山口県山口市阿知須7418-8			山口・秋芳	山口・湯田・防府	ナトリウム塩化物泉	\N	\N	50398	\N
2678	3060	萩指月温泉	はぎしづきおんせん	山口県萩市堀内菊ヶ浜485			萩・長門	萩	その他	\N	\N	50527	\N
2679	3139	下関つくの温泉	しものせきつくのおんせん	山口県下関市豊北町神田２０４５			下関・宇部	下関・長府・川棚	放射能泉	\N	\N	50396	\N
2680	3140	秋穂温泉	あいおおんせん	山口県山口市秋穂東７６８－１３			山口・秋芳	山口・湯田・防府	塩化物泉	\N	\N	50392	\N
2681	1445	鳴門温泉	なるとおんせん	徳島県鳴門市鳴門町土佐泊浦字大毛			徳島・鳴門	鳴門	塩化物泉	\N	\N	\N	\N
2682	1446	御所温泉	ごしょおんせん	徳島県板野郡土成町平間			大歩危・祖谷・剣山	脇町・阿波・美馬	硫黄泉	\N	\N	50626	\N
2683	1447	清水温泉	しみずおんせん	徳島県美馬市脇町（西俣名）			大歩危・祖谷・剣山	脇町・阿波・美馬	炭酸水素塩泉	\N	\N	50618	\N
2684	1448	土柱休養村温泉	どちゅうきゅうようむらおんせん	徳島県阿波郡阿波町北正広			大歩危・祖谷・剣山	脇町・阿波・美馬	硫黄泉	\N	\N	50626	\N
2685	1449	美馬温泉	みまおんせん	徳島県美馬市美馬町清田			大歩危・祖谷・剣山	脇町・阿波・美馬	硫黄泉	\N	\N	50618	\N
2686	1450	ふいご温泉	ふいごおんせん	徳島県吉野川市山川町久宗			大歩危・祖谷・剣山	脇町・阿波・美馬	含鉄泉	\N	\N	50625	\N
2687	1451	神山塩水温泉	かみやまえんすいおんせん	徳島県名西郡神山町下分			大歩危・祖谷・剣山	剣山・那賀	塩化物泉	\N	\N	50618	\N
2688	1452	月ヶ谷温泉	つきがたにおんせん	徳島県勝浦郡上勝町福原平間			大歩危・祖谷・剣山	剣山・那賀	硫黄泉	\N	\N	50618	\N
2689	1453	もみじ川温泉	もみじかわおんせん	徳島県那賀郡相生町大久保西納野			大歩危・祖谷・剣山	剣山・那賀	硫黄泉	\N	\N	50618	\N
2690	1454	千羽温泉	せんばおんせん	徳島県海部郡日和佐町奥河内寺前			阿南・日和佐・宍喰	阿南・日和佐	硫黄泉	\N	\N	50618	\N
2691	1455	宍喰温泉	ししくいおんせん	徳島県海部郡宍喰町松原			阿南・日和佐・宍喰	宍喰・海南・牟岐	塩化物泉	\N	\N	50618	\N
2692	1456	白地温泉	はくちおんせん	徳島県三好郡池田町白地			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫酸塩泉	\N	\N	\N	\N
2693	1457	祖谷温泉	いやおんせん	徳島県三好郡池田町松尾松本			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2694	1458	新祖谷温泉	しんいやおんせん	徳島県三好郡西祖谷山村善徳			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2695	1459	大歩危温泉	おおぼけおんせん	徳島県三好郡山城町西宇			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2696	2306	東山鉱山鉱泉	ひがしやまこうざんこうせん	徳島県吉野川市美郷川俣			大歩危・祖谷・剣山	脇町・阿波・美馬	その他	\N	\N	50625	\N
2697	2307	鬼ヶ岩屋温泉	おにがいわやおんせん	徳島県海部郡牟岐町橘			阿南・日和佐・宍喰	宍喰・海南・牟岐	その他	\N	\N	50618	\N
2698	2308	線麻川温泉	ゆうまがわおんせん	徳島県美馬郡つるぎ町貞光			大歩危・祖谷・剣山	脇町・阿波・美馬	その他	\N	\N	50618	\N
2699	2387	紅葉温泉	もみじおんせん	徳島県三好郡三野町加茂野宮			大歩危・祖谷・剣山	大歩危・祖谷・池田	その他	\N	\N	\N	\N
2700	2491	秘境温泉	ひきょうおんせん	徳島県三好市西祖谷山村尾井ノ内391			大歩危・祖谷・剣山	大歩危・祖谷・池田	アルカリ単純泉	\N	\N	50625	\N
2701	2580	船瀬温泉	ふなせおんせん	徳島県阿南市船瀬			阿南・日和佐・宍喰	阿南・日和佐	その他	\N	\N	50618	\N
2702	2581	四季美谷温泉	しきびたにおんせん	徳島県那賀郡木沢村横谷夏切			大歩危・祖谷・剣山	剣山・那賀	単純温泉	\N	\N	50618	\N
2703	2881	祖谷峡温泉	いやきょうおんせん	徳島県三好市西祖谷山村善徳９－３			大歩危・祖谷・剣山	大歩危・祖谷・池田	弱アルカリ性低張性泉	\N	\N	50625	\N
2704	2882	祖谷渓温泉	いやけいおんせん	徳島県三好市西祖谷山村尾井ノ内401			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2705	2883	大歩危祖谷阿波温泉	おおぼけいやあわおんせん	徳島県三好市池田町白地本名165番地6			大歩危・祖谷・剣山	大歩危・祖谷・池田	その他	\N	\N	50625	\N
2706	3043	神山温泉	かみやまおんせん	徳島県名西郡神山町神領本上角80-2			大歩危・祖谷・剣山	剣山・那賀	アルカリ単純泉	\N	\N	50618	\N
2707	1432	オーキド温泉	おーきどおんせん	香川県小豆郡土庄町甲			小豆島	小豆島	塩化物泉	\N	\N	50402	\N
2708	1433	庵治温泉	あじおんせん	香川県木田郡庵治町			高松・東讃	高松・屋島	硫黄泉	\N	\N	50399	\N
2709	1435	本島温泉	ほんじまおんせん	香川県丸亀市本島町泊			琴平・丸亀・坂出	丸亀	放射能泉	\N	\N	50599	\N
2710	1436	湯元さぬき瀬戸大橋温泉	ゆもとさぬきせとおおはしおんせん	香川県坂出市常盤町常盤公園内			琴平・丸亀・坂出	坂出・宇多津	放射能泉	\N	\N	50399	\N
2711	1437	城山温泉	きやまおんせん	香川県坂出市府中町			琴平・丸亀・坂出	坂出・宇多津	含鉄泉	\N	\N	50599	\N
2712	1438	空港温泉	くうこうおんせん	香川県高松市香南町由佐			高松・東讃	高松・屋島	単純温泉	\N	\N	50399	\N
2713	1439	塩江温泉郷	しおのえおんせんきょう	香川県香川郡塩江町安原上東			高松・東讃	高松・屋島	硫黄泉	\N	\N	50399	\N
2714	1440	こんぴら温泉郷	こんぴらおんせんきょう	香川県仲多度郡琴平町			琴平・丸亀・坂出	琴平・善通寺	アルカリ単純泉	\N	\N	50400	\N
2715	1441	みかど温泉	みかどおんせん	香川県仲多度郡まんのう町川東			琴平・丸亀・坂出	琴平・善通寺	塩化物泉	\N	\N	50599	\N
2716	1442	美合温泉	みあいおんせん	香川県仲多度郡琴南町勝浦			琴平・丸亀・坂出	琴平・善通寺	炭酸水素塩泉	\N	\N	50599	\N
2717	2180	小豆島温泉	しょうどしまおんせん	香川県小豆郡土庄町			小豆島	小豆島	硫黄泉	\N	\N	50402	\N
2718	2313	いやだに温泉	いやだにおんせん	香川県三豊市三野町大見乙74			琴平・丸亀・坂出	観音寺	硫黄泉	\N	\N	50599	\N
2719	2315	琴弾回廊	ことひきかいろう	香川県観音寺市有明町			琴平・丸亀・坂出	観音寺	弱アルカリ性低張性泉	\N	\N	50599	\N
2720	2316	オリーブ温泉	おりーぶおんせん	香川県小豆郡土庄町字半の池			小豆島	小豆島	アルカリ単純泉	\N	\N	50402	\N
2721	2318	高松花樹海温泉	たかまつはなじゅかいおんせん	香川県高松市西宝町3-5-10			高松・東讃	高松・屋島	その他	\N	\N	50399	\N
2722	2337	はくちょう温泉	はくちょうおんせん	香川県高松市国分寺町新名			高松・東讃	高松・屋島	その他	\N	\N	50399	\N
2723	2492	ほっこり温泉　神様の湯	ほっこりおんせん　かみさまのゆ	香川県高松市神在川窪町18-6			高松・東讃	高松・屋島	弱アルカリ性低張性泉	\N	\N	50399	\N
2724	2582	香南楽湯	こうなんらくゆ	香川県高松市香南町横井			高松・東讃	高松・屋島	単純温泉	\N	\N	50399	\N
2725	2644	津田温泉	つだおんせん	香川県さぬき市津田町鶴羽薬師堂			高松・東讃	さぬき市・津田	鉱泉	\N	\N	50599	\N
2726	2730	たからだの里　環の湯　3号線	たからだのさと　たまきのゆ　さんごうせん	香川県三豊市財田町財田上7521-12			琴平・丸亀・坂出	観音寺	弱アルカリ性低張性泉	\N	\N	50599	\N
2727	3045	四国高松温泉	しこくたかまつおんせん	香川県高松市通町２番２			高松・東讃	高松・屋島	その他	\N	\N	50399	\N
2728	3181	母神温泉	はがみおんせん	香川県観音寺市池之尻町1101-4			琴平・丸亀・坂出	観音寺	弱アルカリ性低張性泉	\N	\N	50599	\N
2729	3195	瓦町ぎおん温泉	かわらまちぎおんおんせん	香川県高松市瓦町2-1-7			高松・東讃	高松・屋島	塩化物泉	\N	\N	50399	\N
2730	3296	屋島灘温泉	やしまなだおんせん	香川県高松市西宝町3丁目5番10号			高松・東讃	高松・屋島	ナトリウム塩化物泉	\N	\N	50399	\N
2731	3323	凪温泉	なぎおんせん	香川県高松市川東下字山脇1884番地１			高松・東讃	高松・屋島	鉱泉	\N	\N	50399	\N
2732	1477	別子温泉	べつしおんせん	愛媛県新居浜市立川町			新居浜・東予	新居浜・伊予三島	塩化物泉	\N	\N	50615	\N
2733	1478	湯之谷温泉	ゆのたにおんせん	愛媛県西条市湯之谷			新居浜・東予	西条・東予・石鎚山	単純温泉	\N	\N	50615	\N
2734	1479	ひうちなだ温泉	ひうちなだおんせん	愛媛県東予市河原津			新居浜・東予	西条・東予・石鎚山	単純温泉	\N	\N	\N	\N
2735	1480	湯ノ浦温泉	ゆのうらおんせん	愛媛県今治市湯ノ浦			今治・しまなみ海道	今治	単純温泉	\N	\N	50404	\N
2736	1481	鈍川温泉	にぶかわおんせん	愛媛県越智郡玉川町鈍川			今治・しまなみ海道	今治	単純温泉	\N	\N	50405	\N
2737	1482	鹿島温泉	かしまおんせん	愛媛県北条市辻			松山・道後	松山	塩化物泉	\N	\N	\N	\N
2738	1483	権現温泉	ごんげんおんせん	愛媛県松山市権現町甲			松山・道後	松山	単純温泉	\N	\N	50617	\N
2739	1484	奥道後温泉	おくどうごおんせん	愛媛県松山市末町			松山・道後	松山	単純温泉	\N	\N	50617	\N
2740	1485	道後温泉	どうごおんせん	愛媛県松山市道後鷺谷町			松山・道後	道後	単純温泉	\N	\N	50403	\N
2741	1486	星の岡温泉	ほしのおかおんせん	愛媛県松山市星岡町乙			松山・道後	松山	単純温泉	\N	\N	50617	\N
2742	1487	たかの子温泉	たかのこおんせん	愛媛県松山市鷹子町			松山・道後	松山	単純温泉	\N	\N	50617	\N
2743	1488	古岩屋温泉	ふるいわやおんせん	愛媛県上浮穴郡久万高原町直瀬			松山・道後	伊予	単純温泉	\N	\N	50615	\N
2744	1489	龍王温泉	りゅうおうおんせん	愛媛県喜多郡内子町五十崎古田			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2745	1490	小藪温泉	おやぶおんせん	愛媛県大洲市肱川町宇和川			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2746	1491	深瀬温泉	ふかせおんせん	愛媛県大洲市肱川町山鳥坂			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2747	1492	宝泉坊温泉	ほうせんぼうおんせん	愛媛県西予市城川町高野子			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2748	1493	成川温泉	なるかわおんせん	愛媛県北宇和郡鬼北町奈良			南予・宇和島	宇和島	単純温泉	\N	\N	50615	\N
2749	1494	一本松温泉	いっぽんまつおんせん	愛媛県南宇和郡一本松町増田			南予・宇和島	宇和島	硫黄泉	\N	\N	\N	\N
2750	1495	今治温泉	いまばりおんせん	愛媛県今治市旭町			今治・しまなみ海道	今治	塩化物泉	\N	\N	50615	\N
2751	2300	媛彦温泉	ひめひこおんせん	愛媛県松山市畑寺			松山・道後	松山	アルカリ単純泉	\N	\N	50617	\N
2752	2301	多々羅温泉	たたらおんせん	愛媛県越智郡上浦町大字井口			今治・しまなみ海道	しまなみ海道	その他	\N	\N	\N	\N
2753	2302	武稜温泉	ぶりょうおんせん	愛媛県大洲市平野町			南予・宇和島	内子・大洲・佐田岬	その他	\N	\N	50615	\N
2754	2303	薬師温泉	やくしおんせん	愛媛県宇和島市川内			南予・宇和島	宇和島	アルカリ単純泉	\N	\N	\N	\N
2755	2304	本谷温泉	ほんだにおんせん	愛媛県東予市河之内			新居浜・東予	西条・東予・石鎚山	その他	\N	\N	\N	\N
2756	2305	見奈良天然温泉利楽	みならてんねんおんせんりらく	愛媛県温泉郡重信町見奈良			松山・道後	松山	その他	\N	\N	50617	\N
2882	1814	島原温泉	しまばらおんせん	長崎県島原市湊町			島原・雲仙・小浜	島原	炭酸水素塩泉	\N	\N	50420	\N
2757	2390	文治ヶ駄馬温泉	ぶんじがだばおんせん	愛媛県東宇和郡宇和町明間			南予・宇和島	内子・大洲・佐田岬	その他	\N	\N	\N	\N
2758	2583	川内町ふるさと交流館さくらの湯	かわうちちょうふるさとこうりゅうかんさくらのゆ	愛媛県東温市北方			松山・道後	松山	炭酸水素塩泉	\N	\N	50617	\N
2759	2584	清正乃湯	きよまさのゆ	愛媛県今治市高橋			今治・しまなみ海道	今治	放射能泉	\N	\N	50617	\N
2760	2585	大門温泉	だいもんおんせん	愛媛県北宇和郡松野町松丸			南予・宇和島	宇和島	炭酸水素塩泉	\N	\N	50615	\N
2761	2586	熱田温泉	あつたおんせん	愛媛県宇和島市津島町高田			南予・宇和島	宇和島	弱アルカリ性低張性泉	\N	\N	50615	\N
2762	2587	西条天然温泉　ひうちの湯	さいじょうてんねんおんせん　ひうちのゆ	愛媛県西条市船屋			新居浜・東予	西条・東予・石鎚山	炭酸水素塩泉	\N	\N	50615	\N
2763	2840	スーパーホテル　伊予の湯	すーぱーほてる　いよのゆ	愛媛県新居浜市高木町３番７号			新居浜・東予	新居浜・伊予三島	弱アルカリ性低張性泉	\N	\N	50674	\N
2764	3083	霧の森温泉	きりのもりおんせん	愛媛県四国中央市新宮町馬立４４９１―１			新居浜・東予	新居浜・伊予三島	炭酸水素塩泉	\N	\N	50615	\N
2765	3089	川渡温泉	かわとおんせん	愛媛県南宇和郡愛南町増田５４７０			南予・宇和島	宇和島	弱アルカリ性低張性泉	\N	\N	50615	\N
2766	3102	天然温泉　東予の湯	てんねんおんせん　とうよのゆ	愛媛県四国中央市下柏町852-1			新居浜・東予	新居浜・伊予三島	ナトリウム塩化物泉	\N	\N	50615	\N
2767	3180	グランド温泉	ぐらんどおんせん	愛媛県松山市二番町3丁目5－3			松山・道後	松山	ナトリウム塩化物泉	\N	\N	50945	\N
2768	3273	エリエールゴルフクラブ松山温泉	えりえーるごるふくらぶまつやまおんせん	愛媛県松山市柳谷町乙４５番地１			松山・道後	松山	ナトリウム塩化物泉	\N	\N	50403	\N
2769	3302	大洲鉱泉	おおずこうせん	愛媛県大洲市東大洲1487			南予・宇和島	内子・大洲・佐田岬	炭酸水素塩泉	\N	\N	50617	\N
2770	3305	道後さや温泉	どうごさやおんせん	愛媛県松山市高岡町130			松山・道後	松山	硫黄泉	\N	\N	50617	\N
2771	1460	北川温泉	きたがわおんせん	高知県安芸郡北川村小島			安芸・室戸	安芸	炭酸水素塩泉	\N	\N	50407	\N
2772	1461	馬路温泉	うまじおんせん	高知県安芸郡馬路村馬路			安芸・室戸	安芸	炭酸水素塩泉	\N	\N	50407	\N
2773	1462	べふ峡温泉	べふきょうおんせん	高知県香美市物部町別府			高知・須崎・南国	南国・香美	炭酸水素塩泉	\N	\N	50406	\N
2774	1463	猪野沢温泉	いのさわおんせん	高知県香美市香北町猪野々			高知・須崎・南国	南国・香美	硫黄泉	\N	\N	50406	\N
2775	1464	千舞温泉	せんまいおんせん	高知県香美郡香我美町末清			高知・須崎・南国	南国・香美	硫黄泉	\N	\N	\N	\N
2776	1465	夢の温泉	ゆめのおんせん	高知県香美郡土佐山田町宮の口			高知・須崎・南国	南国・香美	硫黄泉	\N	\N	50406	\N
2777	1466	円行寺温泉	えんぎょうじおんせん	高知県高知市円行寺			高知・須崎・南国	高知・春野	硫黄泉	\N	\N	50406	\N
2778	1467	中追渓谷温泉	なかおいけいこくおんせん	高知県吾川郡いの町中追			高知・須崎・南国	高知・春野	硫黄泉	\N	\N	50406	\N
2779	1468	蘇鶴温泉	そかくおんせん	高知県吾川郡いの町大内			高知・須崎・南国	高知・春野	硫黄泉	\N	\N	50406	\N
2780	1469	松葉川温泉	まつばかわおんせん	高知県高岡郡窪川町日野地			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2781	1470	佐賀温泉	さがおんせん	高知県幡多郡黒潮町拳ノ川			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2782	1471	一の又渓谷温泉	いちのまたけいこくおんせん	高岡郡四万十町大正			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2783	1472	用井温泉	もちいおんせん	高知県四万十市西土佐用井			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2784	1473	新安並温泉	しんやすなみおんせん	高知県中村市安並			足摺・四万十	中村・四万十・大方	単純温泉	\N	\N	50624	\N
2785	1474	よさこい温泉	よさこいおんせん	高知県安芸郡芸西村西分甲			安芸・室戸	安芸	単純温泉	\N	\N	50407	\N
2786	1475	本陣温泉	ほんじんおんせん	高知県高岡郡中土佐町久礼			高知・須崎・南国	須崎・土佐・仁淀川	単純温泉	\N	\N	50624	\N
2787	1476	井ノ岬温泉	いのみさきおんせん	高知県幡多郡黒潮町伊田			足摺・四万十	中村・四万十・大方	単純温泉	\N	\N	50624	\N
2788	2181	あしずり温泉郷	あしずりおんせんきょう	高知県土佐清水市足摺岬			足摺・四万十	足摺・土佐清水・宿毛	弱アルカリ性低張性泉	\N	\N	50498	\N
2789	2182	高知三翠園温泉	こうちさんすいえんおんせん	高知県高知市鷹匠町			高知・須崎・南国	高知・春野	ナトリウム塩化物泉	\N	\N	50406	\N
2790	2309	桑田山温泉	そうだやまおんせん	高知県須崎市桑田山			高知・須崎・南国	須崎・土佐・仁淀川	その他	\N	\N	50406	\N
2791	2310	温泉こまどり	おんせんこまどり	高知県安芸市大井			安芸・室戸	安芸	その他	\N	\N	50407	\N
2792	2311	雲の上の温泉	くものうえのおんせん	高知県高岡郡檮原町太郎川			足摺・四万十	中村・四万十・大方	炭酸水素塩泉	\N	\N	50624	\N
2793	2312	天然の湯ながおか温泉	てんねんのゆながおかおんせん	高知県南国市下末松			高知・須崎・南国	南国・香美	ナトリウム塩化物泉	\N	\N	50406	\N
2794	2391	木の香温泉	このかおんせん	高知県吾川郡いの町桑瀬			高知・須崎・南国	高知・春野	ナトリウム塩化物泉	\N	\N	50406	\N
2795	2392	ゆの森温泉	ゆのもりおんせん	高知県吾川郡仁淀川町名野川			高知・須崎・南国	高知・春野	その他	\N	\N	50406	\N
2796	2541	はるのの湯	はるののゆ	高知県高知市春野町西分657-1			高知・須崎・南国	高知・春野	塩化物泉	\N	\N	50406	\N
2797	2542	黒潮温泉龍馬の湯	くろしおおんせんりょうまのゆ	高知県香美郡野市町東野1630			高知・須崎・南国	南国・香美	ナトリウム塩化物泉	\N	\N	50407	\N
2884	1816	高浜温泉	たかはまおんせん	長崎県西彼杵郡野母崎町高浜			長崎	長崎	塩化物泉	\N	\N	\N	\N
2798	2588	井の岬温泉	いのみさきおんせん	高知県中村市佐岡			足摺・四万十	中村・四万十・大方	ナトリウム塩化物泉	\N	\N	50624	\N
2799	2647	龍河温泉	りゅうがおんせん	高知県香美郡土佐山田町佐古藪４３０－１			高知・須崎・南国	南国・香美	弱アルカリ性低張性泉	\N	\N	50406	\N
2800	3030	ニュー佐賀温泉	にゅーさがおんせん	高知県幡多郡黒潮町拳ノ川２２００－６９			足摺・四万十	中村・四万十・大方	その他	\N	\N	50624	\N
2801	3097	土佐龍温泉	とさりゅうおんせん	高知県土佐市宇佐町竜504-1			高知・須崎・南国	須崎・土佐・仁淀川	アルカリ単純泉	\N	\N	50406	\N
2802	3211	四万十温泉山みず木	しまんとおんせんやまみずき	高知県四万十市名鹿432番地			足摺・四万十	中村・四万十・大方	アルカリ単純泉	\N	\N	50624	\N
2803	1786	柿下温泉	かきしたおんせん	福岡県田川郡香春町柿下			北九州	飯塚・田川	放射能泉	\N	\N	\N	\N
2804	1787	庄内温泉	しょうないおんせん	福岡県嘉穂郡庄内町仁保高尾			北九州	飯塚・田川	放射能泉	\N	\N	\N	\N
2805	1788	伊川温泉	いかわおんせん	福岡県飯塚市伊川			北九州	飯塚・田川	放射能泉	\N	\N	\N	\N
2806	1789	脇田温泉	わきたおんせん	福岡県鞍手郡若宮町脇田			太宰府・宗像	若宮・遠賀・直方	アルカリ単純泉	\N	\N	50410	\N
2807	1790	薬王寺温泉	やくおうじおんせん	福岡県粕屋郡古賀町薬王寺			太宰府・宗像	宗像・玄海	放射能泉	\N	\N	\N	\N
2808	1791	芥屋大門温泉	けやおおとおんせん	福岡県糸島郡志摩町芥屋			糸島・前原	糸島・前原	放射能泉	\N	\N	\N	\N
2809	1792	博多温泉	はかたおんせん	福岡県福岡市南区横手			福岡市（博多駅周辺・天神周辺）	福岡市（天神周辺・百道浜）	塩化物泉	\N	\N	50906	\N
2810	1793	二日市温泉	ふつかいちおんせん	福岡県筑紫野市武蔵			太宰府・宗像	太宰府・二日市	単純温泉	\N	\N	50854	\N
2811	1794	筑後川温泉	ちくごがわおんせん	福岡県浮羽郡浮羽町古川			久留米・原鶴・筑後川	原鶴・筑後川	放射能泉	\N	\N	50602	\N
2812	1795	原鶴温泉	はらづるおんせん	福岡県朝倉郡杷木町原鶴			久留米・原鶴・筑後川	原鶴・筑後川	単純温泉	\N	\N	50408	\N
2813	1796	吉井温泉	よしいおんせん	福岡県浮羽郡吉井町千年			久留米・原鶴・筑後川	久留米	含鉄泉	\N	\N	\N	\N
2814	1797	片の瀬温泉	かたのせおんせん	福岡県久留米市田主丸町菅原2251-2			久留米・原鶴・筑後川	久留米	弱アルカリ性低張性泉	\N	\N	50744	\N
2815	1798	星野温泉	ほしのおんせん	福岡県八女郡星野村麻生			柳川・八女・筑後	柳川・八女・筑後	ナトリウム塩化物泉	\N	\N	\N	\N
2816	1799	グリーンピア八女温泉	ぐりーんぴあやめおんせん	福岡県八女郡黒木町木屋			柳川・八女・筑後	柳川・八女・筑後	炭酸水素塩泉	\N	\N	\N	\N
2817	1800	長門石温泉	ながといしおんせん	福岡県久留米市長門石町			久留米・原鶴・筑後川	久留米	単純温泉	\N	\N	\N	\N
2818	1801	船小屋温泉	ふなごやおんせん	福岡県筑後市船小屋温泉			柳川・八女・筑後	柳川・八女・筑後	単純温泉	\N	\N	50409	\N
2819	1802	新船小屋温泉	しんふなごやおんせん	福岡県山門郡瀬高町長田			柳川・八女・筑後	柳川・八女・筑後	炭酸水素塩泉	\N	\N	\N	\N
2820	1803	柳川温泉	やながわおんせん	福岡県柳川市弥四郎町			柳川・八女・筑後	柳川・八女・筑後	含鉄泉	\N	\N	50779	\N
2821	1983	久山温泉	ひさやまおんせん	福岡県糟屋郡久山町			太宰府・宗像	宗像・玄海	含鉄泉	\N	\N	\N	\N
2822	1984	久留米温泉	くるめおんせん	福岡県久留米市			久留米・原鶴・筑後川	久留米	塩化物泉	\N	\N	\N	\N
2823	1985	玄海さつき温泉	げんかいさつきおんせん	福岡県宗像市田野1303			太宰府・宗像	宗像・玄海	アルカリ単純泉	\N	\N	50733	\N
2824	1986	黒木平温泉	くろきだいらおんせん	福岡県八女郡黒木町木屋			柳川・八女・筑後	柳川・八女・筑後	弱アルカリ性低張性泉	\N	\N	\N	\N
2825	1987	天名水温泉	てんめいすいおんせん	福岡県福岡市早良区椎原			福岡市（博多駅周辺・天神周辺）	福岡市（天神周辺・百道浜）	アルカリ単純泉	\N	\N	50611	\N
2826	1988	米山温泉	べいざんおんせん	福岡県糟屋郡篠栗町			太宰府・宗像	宗像・玄海	単純温泉	\N	\N	\N	\N
2827	1989	上津天然温泉	かみつてんねんおんせん	福岡県久留米市藤光町			久留米・原鶴・筑後川	久留米	弱アルカリ性低張性泉	\N	\N	\N	\N
2828	1990	八女天然温泉	やめてんねんおんせん	福岡県八女市			柳川・八女・筑後	柳川・八女・筑後	鉱泉	\N	\N	\N	\N
2829	1991	大木町温泉	おおぎまちおんせん	福岡県三猪郡大木町			柳川・八女・筑後	柳川・八女・筑後	単純温泉	\N	\N	\N	\N
2830	1992	豊前温泉	ぶぜんおんせん	福岡県豊前市			北九州	苅田・行橋・豊前	弱アルカリ性低張性泉	\N	\N	\N	\N
2831	1993	伊川温泉	いかわおんせん	福岡県飯塚市			北九州	飯塚・田川	アルカリ単純泉	\N	\N	\N	\N
2832	1994	英彦山温泉	ひこさんおんせん	福岡県田川郡川崎町			北九州	飯塚・田川	弱アルカリ性低張性泉	\N	\N	\N	\N
2833	2233	田主丸河童温泉	たぬしまるかっぱおんせん	福岡県福岡市博多区寿町3-4-15			福岡市（博多駅周辺・天神周辺）	福岡市（博多駅周辺・香椎・海の中道）	ナトリウム塩化物泉	\N	\N	\N	\N
2834	2264	筑紫温泉	ちくしおんせん	福岡県筑紫野市大字原田832-1			太宰府・宗像	太宰府・二日市	炭酸水素塩泉	\N	\N	\N	\N
2835	2340	新宮温泉	しんぐうおんせん	福岡県粕屋郡新宮町三代762			太宰府・宗像	宗像・玄海	アルカリ単純泉	\N	\N	\N	\N
2836	2393	東田温泉	ひがしだおんせん	福岡県北九州市八幡東区東田5-2-7			北九州	北九州市（小倉・八幡・門司）	単純温泉	\N	\N	\N	\N
2837	2943	休暇村　志賀島温泉	きゅうかむら　しかのしまおんせん	福岡県福岡市東区大字勝馬1819			福岡市（博多駅周辺・天神周辺）	福岡市（博多駅周辺・香椎・海の中道）	その他	\N	\N	50771	\N
2838	2950	柳川温泉　輝泉の湯	やながわおんせん　きせんのゆ	福岡県柳川市三橋町柳河874			柳川・八女・筑後	柳川・八女・筑後	その他	\N	\N	50779	\N
2883	1815	原城温泉	はらじょうおんせん	長崎県南高来郡南有馬町			島原・雲仙・小浜	雲仙・小浜	単純温泉	\N	\N	\N	\N
2839	3049	天然温泉　月の雫	てんねんおんせん　つきのしずく	福岡県大牟田市大字甘木甘木山1203-116			柳川・八女・筑後	柳川・八女・筑後	弱アルカリ性低張性泉	\N	\N	50865	\N
2840	3092	秋月温泉	あきづきおんせん	福岡県朝倉市秋月１０５８			久留米・原鶴・筑後川	原鶴・筑後川	塩化物泉	\N	\N	50895	\N
2841	3142	若松ひびき温泉	わかまつひびきおんせん	福岡県北九州市若松区大字有毛字２８２９番			北九州	北九州市（小倉・八幡・門司）	炭酸水素塩泉	\N	\N	50927	\N
2842	3322	博多・都の湯	はかたみやこのゆ	福岡県福岡市博多区博多駅東２－１－１			福岡市（博多駅周辺・天神周辺）	福岡市（博多駅周辺・香椎・海の中道）	単純温泉	\N	\N	50906	\N
2843	1819	熊の川温泉	くまのかわおんせん	佐賀県佐賀郡富士町上熊の川湯の原			佐賀・古湯・熊の川	佐賀・古湯・熊の川	放射能泉	\N	\N	\N	\N
2844	1820	古湯温泉	ふるゆおんせん	佐賀県佐賀郡富士町古湯			佐賀・古湯・熊の川	佐賀・古湯・熊の川	単純温泉	\N	\N	50411	\N
2845	1821	小城温泉	おぎおんせん	佐賀県小城郡小城町岩蔵			佐賀・古湯・熊の川	佐賀・古湯・熊の川	単純温泉	\N	\N	50848	\N
2846	1822	佐里温泉	さりおんせん	佐賀県東松浦郡相知町佐里			唐津・呼子	唐津・呼子・玄海	単純温泉	\N	\N	50416	\N
2847	1823	寺浦温泉	てらうらおんせん	佐賀県東松浦郡肥前町			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2848	1824	満越温泉	みつこしおんせん	佐賀県東松浦郡肥前町満越			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2849	1825	伊万里温泉	いまりおんせん	佐賀県伊万里市二里町大里甲			伊万里・有田	伊万里・有田	炭酸水素塩泉	\N	\N	\N	\N
2850	1826	武雄温泉	たけおおんせん	佐賀県武雄市武雄町本町温泉通り			嬉野・武雄	武雄	炭酸水素塩泉	\N	\N	50413	\N
2851	1827	嬉野温泉	うれしのおんせん	佐賀県藤津郡嬉野町下宿乙			嬉野・武雄	嬉野	塩化物泉	\N	\N	50414	\N
2852	1828	平谷温泉	ひらたにおんせん	佐賀県鹿島市能古見本城丙			太良	太良	単純温泉	\N	\N	\N	\N
2853	1829	太良嶽温泉	たらだけおんせん	佐賀県藤津郡太良町道越			太良	太良	単純温泉	\N	\N	50415	\N
2854	2007	太良竹崎温泉	たらたけざきおんせん	佐賀県藤津郡太良町			太良	太良	鉱泉	\N	\N	50415	\N
2855	2008	神埼温泉	かんざきおんせん	佐賀県神埼郡神埼町			佐賀・古湯・熊の川	鳥栖・神埼	その他	\N	\N	\N	\N
2856	2009	三瀬温泉	みつせおんせん	佐賀県神埼郡三瀬村			佐賀・古湯・熊の川	佐賀・古湯・熊の川	単純温泉	\N	\N	\N	\N
2857	2010	七山温泉	ななやまおんせん	佐賀県東松浦郡七山村			唐津・呼子	唐津・呼子・玄海	その他	\N	\N	\N	\N
2858	2011	多久天然温泉	たくてんねんおんせん	佐賀県多久市北多久町			嬉野・武雄	武雄	単純温泉	\N	\N	\N	\N
2859	2012	川上峡温泉	かわかみきょうおんせん	佐賀県佐賀郡大和町			佐賀・古湯・熊の川	佐賀・古湯・熊の川	アルカリ単純泉	\N	\N	50412	\N
2860	2013	野田温泉	のだおんせん	佐賀県東松浦郡浜玉町			唐津・呼子	唐津・呼子・玄海	塩化物泉	\N	\N	\N	\N
2861	2014	玄海温泉	げんかいおんせん	佐賀県東松浦郡玄海町			唐津・呼子	唐津・呼子・玄海	その他	\N	\N	\N	\N
2862	2015	厳木温泉	きうらぎおんせん	佐賀県東松浦郡厳木町			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2863	2016	高串温泉	たかくしおんせん	佐賀県東松浦郡肥前町			唐津・呼子	唐津・呼子・玄海	鉱泉	\N	\N	\N	\N
2864	2017	鹿島温泉	かしまおんせん	佐賀県鹿島市能古見本城丙			太良	太良	炭酸水素塩泉	\N	\N	\N	\N
2865	2018	虹の松原温泉	にじのまつばらおんせん	佐賀県東松浦郡浜玉町			唐津・呼子	唐津・呼子・玄海	アルカリ単純泉	\N	\N	\N	\N
2866	2338	相知温泉	おうちおんせん	佐賀県東松浦郡相知町大字相知字和田2550-1			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2867	2415	上伊万里温泉	かみいまりおんせん	佐賀県伊万里市大坪町丙1210-1			伊万里・有田	伊万里・有田	その他	\N	\N	50417	\N
2868	2809	唐津温泉	からつおんせん	佐賀県唐津市大名小路5-10			唐津・呼子	唐津・呼子・玄海	その他	\N	\N	50643	\N
2869	3143	佐賀大和温泉	さがやまとおんせん	佐賀県佐賀市大和町久池井３６６７			佐賀・古湯・熊の川	佐賀・古湯・熊の川	アルカリ単純泉	\N	\N	50928	\N
2870	3285	天山多久温泉	てんざんたくおんせん	佐賀県多久市北多久町小侍４６４４－１			嬉野・武雄	武雄	弱アルカリ性低張性泉	\N	\N	50848	\N
2871	3298	唐津シーサイド温泉	からつしーさいどおんせん	佐賀県唐津市東唐津４丁目１８２番			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	50643	\N
2872	1804	湯ノ本温泉	ゆのもとおんせん	長崎県壱岐郡勝本町湯ノ本浦			壱岐・対馬	壱岐	塩化物泉	\N	\N	50423	\N
2873	1805	郷ノ浦温泉	ごうのうらおんせん	長崎県壱岐郡郷ノ浦町			壱岐・対馬	壱岐	単純温泉	\N	\N	\N	\N
2874	1806	福島温泉	ふくしまおんせん	長崎県北松浦郡福島町喜内瀬免			平戸・松浦・田平	松浦・田平	塩化物泉	\N	\N	\N	\N
2875	1807	田の浦温泉	たのうらおんせん	長崎県平戸市大久保町			平戸・松浦・田平	平戸	含鉄泉	\N	\N	50419	\N
2876	1808	波佐見温泉	はさみおんせん	長崎県東彼杵郡波佐見町長野郷			佐世保・ハウステンボス	佐世保	炭酸水素塩泉	\N	\N	\N	\N
2877	1809	大崎温泉	おおさきおんせん	長崎県東彼杵郡川棚町小串郷			佐世保・ハウステンボス	佐世保	塩化物泉	\N	\N	\N	\N
2878	1810	西海橋温泉	さいかいばしおんせん	長崎県佐世保市針尾東町			佐世保・ハウステンボス	佐世保	塩化物泉	\N	\N	50418	\N
2879	1811	唐比温泉	からこおんせん	長崎県北高来郡森山町唐比西名			長崎	諫早・大村	塩化物泉	\N	\N	\N	\N
2880	1812	小浜温泉	おばまおんせん	長崎県南高来郡小浜町北本町			島原・雲仙・小浜	雲仙・小浜	塩化物泉	\N	\N	50421	\N
2881	1813	雲仙温泉	うんぜんおんせん	長崎県南高来郡小浜町雲仙			島原・雲仙・小浜	雲仙・小浜	含鉄泉	\N	\N	50422	\N
2885	1817	曽根温泉	そねおんせん	長崎県南松浦郡新魚目町小串郷			五島列島	上五島	単純温泉	\N	\N	\N	\N
2886	1818	荒川温泉	あらかわおんせん	長崎県南松浦郡玉之浦町荒川郷			五島列島	下五島	塩化物泉	\N	\N	\N	\N
2887	1995	口之津白浜温泉	くちのつしらはまおんせん	長崎県南高来郡口之津町			島原・雲仙・小浜	雲仙・小浜	塩化物泉	\N	\N	\N	\N
2888	1996	時津温泉	とぎつおんせん	長崎県西彼杵郡時津町			長崎	長崎	含鉄泉	\N	\N	\N	\N
2889	1997	稲佐山中腹温泉	いなさやまちゅうふくおんせん	長崎県長崎市曙町			長崎	長崎	その他	\N	\N	\N	\N
2890	1998	ハウステンボス温泉	はうすてんぼすおんせん	長崎県佐世保市ハウステンボス町			佐世保・ハウステンボス	ハウステンボス	塩化物泉	\N	\N	50418	\N
2891	1999	千里ヶ浜温泉	せんりがはまおんせん	長崎県平戸市川内町			平戸・松浦・田平	平戸	塩化物泉	\N	\N	50419	\N
2892	2000	鬼岳温泉	おにだけおんせん	長崎県福江市上大津町			五島列島	下五島	炭酸水素塩泉	\N	\N	\N	\N
2893	2001	長崎温泉	ながさきおんせん	長崎県長崎市伊王島町1丁目3277-7 			長崎	長崎	その他	\N	\N	50852	\N
2894	2002	道の尾温泉	みちのおおんせん	長崎県西彼杵郡長与町高田郷			長崎	長崎	ナトリウム塩化物泉	\N	\N	\N	\N
2895	2003	富江温泉	とみえおんせん	長崎県南松浦郡富江町			五島列島	下五島	単純温泉	\N	\N	\N	\N
2896	2004	平戸温泉	ひらどおんせん	長崎県平戸市			平戸・松浦・田平	平戸	その他	\N	\N	50419	\N
2897	2005	させぼ温泉	させぼおんせん	長崎県佐世保市谷郷町５－３２			佐世保・ハウステンボス	佐世保	塩化物泉	\N	\N	50418	\N
2898	2006	天然温泉「ばってんの湯」	てんねんおんせん「ばってんのゆ」	長崎県佐世保市南風崎町			佐世保・ハウステンボス	佐世保	その他	\N	\N	\N	\N
2899	2237	九十九島温泉	くじゅうくしまおんせん	長崎県佐世保市鹿子前1129			佐世保・ハウステンボス	佐世保	炭酸水素塩泉	\N	\N	50418	\N
2900	2944	うずしお温泉	うずしおおんせん	長崎県佐世保市崎岡町853-12			佐世保・ハウステンボス	佐世保	弱アルカリ性低張性泉	\N	\N	50418	\N
2901	2975	陽の岬温泉	ひのみさきおんせん	長崎県長崎市野母町692-1			長崎	長崎	炭酸水素塩泉	\N	\N	50852	\N
2902	2983	平戸たびら温泉	ひらどたびらおんせん	長崎県平戸市田平町野田免210-6			平戸・松浦・田平	平戸	塩化物泉	\N	\N	50419	\N
2903	3111	新魚目温泉	しんうおのめおんせん	長崎県南松浦郡新上五島町			五島列島	上五島	ナトリウム塩化物泉	\N	\N	50900	\N
2904	3182	雲仙小地獄温泉	うんぜんこじごくおんせん	長崎県雲仙市小浜町雲仙			島原・雲仙・小浜	雲仙・小浜	含鉄泉	\N	\N	50422	\N
2905	3271	九十九島温泉花みずきSASPA	くじゅうくしまおんせんはなみずきさすぱ	長崎県佐世保市鹿子前町1090番地			佐世保・ハウステンボス	佐世保	その他	\N	\N	50418	\N
2906	3292	稲佐山温泉	いなさやまおんせん	長崎県長崎市大鳥町５２３			長崎	長崎	弱アルカリ性低張性泉	\N	\N	50852	\N
2907	1877	山鹿温泉	やまがおんせん	熊本県山鹿市山鹿			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50425	\N
2908	1878	杖立温泉	つえたておんせん	熊本県阿蘇郡小国町下城杖立			黒川・杖立・わいた	杖立・わいた	塩化物泉	\N	\N	50919	\N
2909	1879	はげの湯温泉	はげのゆおんせん	熊本県阿蘇郡小国町西里			黒川・杖立・わいた	杖立・わいた	硫黄泉	\N	\N	50919	\N
2910	1880	山川温泉	やまかわおんせん	熊本県阿蘇郡小国町北里山川			黒川・杖立・わいた	杖立・わいた	硫黄泉	\N	\N	50919	\N
2911	1881	田の原温泉	たのはるおんせん	熊本県阿蘇郡南小国町満願寺田ノ原温泉			黒川・杖立・わいた	黒川・小田・田の原・満願寺	塩化物泉	\N	\N	50430	\N
2912	1882	満願寺温泉	まんがんじおんせん	熊本県阿蘇郡南小国町満願寺志津			黒川・杖立・わいた	黒川・小田・田の原・満願寺	単純温泉	\N	\N	\N	\N
2913	1883	黒川温泉	くろかわおんせん	熊本県阿蘇郡南小国町北黒川			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	50431	\N
2914	1884	産山温泉	うぶやまおんせん	熊本県阿蘇郡産山村大字大利			阿蘇	阿蘇・内牧	ナトリウム塩化物泉	\N	\N	50429	\N
2915	1885	阿蘇内牧温泉	あそうちのまきおんせん	熊本県阿蘇郡阿蘇町内牧			阿蘇	阿蘇・内牧	硫酸塩泉	\N	\N	50429	\N
2916	1886	阿蘇赤水温泉	あそあかみずおんせん	熊本県阿蘇郡阿蘇町赤水温泉			阿蘇	阿蘇・内牧	単純温泉	\N	\N	50429	\N
2917	1887	湯田巻狩温泉	ゆだまきがりおんせん	熊本県阿蘇郡阿蘇町大字赤水字湯田			阿蘇	阿蘇・内牧	硫酸塩泉	\N	\N	\N	\N
2918	1888	湯の谷温泉	ゆのたにおんせん	熊本県阿蘇郡長陽村湯の谷			阿蘇	南阿蘇	硫酸塩泉	\N	\N	\N	\N
2919	1889	栃木温泉	とちのきおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	硫酸塩泉	\N	\N	50429	\N
2920	1890	垂玉温泉	たるたまおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	硫黄泉	\N	\N	\N	\N
2921	1891	地獄温泉	じごくおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	炭酸水素塩泉	\N	\N	\N	\N
2922	1892	栃木原温泉	とちのきばるおんせん	熊本県阿蘇郡長陽村栃木			阿蘇	南阿蘇	硫黄泉	\N	\N	\N	\N
2923	1893	奥菊池温泉	おくきくちおんせん	熊本県菊池市原			玉名・山鹿・菊池	菊池	硫黄泉	\N	\N	\N	\N
2924	1894	菊池温泉	きくちおんせん	熊本県菊池市隈府			玉名・山鹿・菊池	菊池	炭酸水素塩泉	\N	\N	50428	\N
2925	1895	菊鹿温泉	きくかおんせん	熊本県鹿本郡菊鹿町大字池永			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50425	\N
2926	1896	合瀬川温泉	あわせがわおんせん	熊本県鹿本郡菊鹿町松尾横枕			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	\N	\N
2927	1897	平山温泉	ひらやまおんせん	熊本県山鹿市平山			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50973	\N
2928	1898	熊入温泉	くまいりおんせん	熊本県山鹿市熊入町			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	\N	\N
3196	1976	川尻温泉	かわしりおんせん	鹿児島県揖宿郡開聞町川尻			南薩・指宿	指宿	含鉄泉	\N	\N	\N	\N
2929	1899	宮原温泉	みやばるおんせん	熊本県鹿本郡植木町宮原温泉			玉名・山鹿・菊池	山鹿・平山・植木	硫黄泉	\N	\N	\N	\N
2930	1900	植木温泉	うえきおんせん	熊本県鹿本郡植木町米塚			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50426	\N
2931	1901	七城温泉	しちじょうおんせん	熊本県菊池市七城町林原			玉名・山鹿・菊池	菊池	含鉄泉	\N	\N	50428	\N
2932	1902	合志温泉	こうしおんせん	熊本県合志市栄			熊本	熊本	単純温泉	\N	\N	\N	\N
2933	1903	菊南温泉	きくなんおんせん	熊本県熊本市鶴羽田町			熊本	熊本	単純温泉	\N	\N	50424	\N
2934	1904	神園温泉	こうぞのおんせん	熊本県熊本市長嶺町			熊本	熊本	炭酸水素塩泉	\N	\N	\N	\N
2935	1905	玉名温泉	たまなおんせん	熊本県玉名市立願寺			玉名・山鹿・菊池	荒尾・玉名	単純温泉	\N	\N	50427	\N
2936	1906	小天温泉	おあまおんせん	熊本県玉名郡天水町小天			玉名・山鹿・菊池	荒尾・玉名	単純温泉	\N	\N	\N	\N
2937	1907	河内温泉	かわちおんせん	熊本県熊本市河内町船津温泉			熊本	熊本	単純温泉	\N	\N	\N	\N
2938	1908	赤瀬温泉	あかせおんせん	熊本県宇土市赤瀬町			熊本	宇土・益城	単純温泉	\N	\N	\N	\N
2939	1909	金桁温泉	かなけたおんせん	熊本県宇土郡三角町中村			熊本	宇土・益城	塩化物泉	\N	\N	\N	\N
2940	1910	松島温泉	まつしまおんせん	熊本県天草郡松島町合津			天草	天草上島・松島	炭酸水素塩泉	\N	\N	50434	\N
2941	1911	下田温泉	しもだおんせん	熊本県天草郡天草町下田北			天草	天草下島・下田	含鉄泉	\N	\N	50434	\N
2942	1912	日奈久温泉	ひなぐおんせん	熊本県八代市日奈久上西町			八代・水俣・湯の児	八代・水俣・湯の児	塩化物泉	\N	\N	\N	\N
2943	1913	吉尾温泉	よしおおんせん	熊本県芦北郡芦北町吉尾			八代・水俣・湯の児	八代・水俣・湯の児	塩化物泉	\N	\N	\N	\N
2944	1914	鶴木山温泉	つるぎやまおんせん	熊本県芦北郡芦北町鶴木山			八代・水俣・湯の児	八代・水俣・湯の児	単純温泉	\N	\N	\N	\N
2945	1915	湯浦温泉	ゆのうらおんせん	熊本県芦北郡芦北町湯浦			八代・水俣・湯の児	八代・水俣・湯の児	単純温泉	\N	\N	\N	\N
2946	1916	湯の児温泉	ゆのこおんせん	熊本県水俣市浜			八代・水俣・湯の児	八代・水俣・湯の児	放射能泉	\N	\N	50432	\N
2947	1917	湯の鶴温泉	ゆのつるおんせん	熊本県水俣市湯出			八代・水俣・湯の児	八代・水俣・湯の児	単純温泉	\N	\N	\N	\N
2948	1918	人吉温泉	ひとよしおんせん	熊本県人吉市市内			人吉・球磨	人吉・球磨	炭酸水素塩泉	\N	\N	50433	\N
2949	1919	湯山温泉	ゆやまおんせん	熊本県球磨郡水上村湯山			人吉・球磨	人吉・球磨	硫黄泉	\N	\N	\N	\N
2950	2045	奥黒川温泉	おくくろかわおんせん	熊本県阿蘇郡南小国東奥黒川			黒川・杖立・わいた	黒川・小田・田の原・満願寺	炭酸水素塩泉	\N	\N	\N	\N
2951	2046	奥満願寺温泉	おくまんがんじおんせん	熊本県阿蘇郡南小国満願寺金山			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	\N	\N
2952	2047	扇温泉	おおぎおんせん	熊本県阿蘇郡南小国満願寺			黒川・杖立・わいた	黒川・小田・田の原・満願寺	その他	\N	\N	\N	\N
2953	2048	小田温泉	おたおんせん	熊本県阿蘇郡南小国町小田			黒川・杖立・わいた	黒川・小田・田の原・満願寺	炭酸水素塩泉	\N	\N	50430	\N
2954	2049	大谷温泉	おおたにおんせん	熊本県阿蘇郡南小国町大谷山			黒川・杖立・わいた	黒川・小田・田の原・満願寺	その他	\N	\N	50430	\N
2955	2050	下鶴温泉	しもづるおんせん	熊本県阿蘇郡南小国町下鶴			黒川・杖立・わいた	黒川・小田・田の原・満願寺	弱アルカリ性低張性泉	\N	\N	\N	\N
2956	2051	枝立温泉	つえたておんせん	熊本県阿蘇郡南小国町杖立温泉			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	\N	\N
2957	2052	岳の湯温泉	たけのゆおんせん	熊本県阿蘇郡南小国町西里岳の湯			黒川・杖立・わいた	黒川・小田・田の原・満願寺	アルカリ単純泉	\N	\N	\N	\N
2958	2053	火の鳥温泉	ひのとりおんせん	熊本県阿蘇郡長陽村長野			阿蘇	南阿蘇	その他	\N	\N	50429	\N
2959	2054	乙姫さま温泉	おとひめさまおんせん	熊本県阿蘇郡阿蘇町乙姫			阿蘇	阿蘇・内牧	アルカリ単純泉	\N	\N	50429	\N
2960	2055	白水温泉	はくすいおんせん	熊本県阿蘇郡白水村			阿蘇	南阿蘇	炭酸水素塩泉	\N	\N	50429	\N
2961	2056	南阿蘇俵山温泉	みなみあそたわらやまおんせん	熊本県阿蘇郡九木野村			阿蘇	南阿蘇	硫酸塩泉	\N	\N	\N	\N
2962	2057	西原温泉	にしはらおんせん	熊本県阿蘇郡西原村			阿蘇	南阿蘇	アルカリ単純泉	\N	\N	\N	\N
2963	2058	天水温泉	てんすいおんせん	熊本県玉名郡天水町			玉名・山鹿・菊池	荒尾・玉名	その他	\N	\N	\N	\N
2964	2059	託麻温泉	たくまおんせん	熊本県熊本市長嶺町			熊本	熊本	アルカリ単純泉	\N	\N	\N	\N
2965	2060	水前寺温泉	すいぜんじおんせん	熊本県熊本市上水前寺			熊本	熊本	その他	\N	\N	\N	\N
2966	2061	熊本空港温泉	くまもとくうこうおんせん	熊本県上益城郡益城町			熊本	宇土・益城	アルカリ単純泉	\N	\N	\N	\N
2967	2062	南関温泉	なんかんおんせん	熊本県玉名郡南関町			玉名・山鹿・菊池	荒尾・玉名	単純温泉	\N	\N	50424	\N
2968	2063	あらお温泉	あらおおんせん	熊本県荒尾市			玉名・山鹿・菊池	荒尾・玉名	アルカリ単純泉	\N	\N	\N	\N
2969	2064	桃李温泉	とうりおんせん	熊本県人吉市			人吉・球磨	人吉・球磨	塩化物泉	\N	\N	\N	\N
2970	2065	湯前温泉	ゆまえおんせん	熊本県球磨郡湯前町			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2971	2066	神城温泉	しんじょうおんせん	熊本県球磨郡錦町			人吉・球磨	人吉・球磨	アルカリ単純泉	\N	\N	\N	\N
2972	2067	山江温泉	やまえおんせん	熊本県球磨郡山江村			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2973	2068	一勝地温泉	いっしょうちおんせん	熊本県球磨郡球磨村一勝地			人吉・球磨	人吉・球磨	塩化物泉	\N	\N	\N	\N
2974	2069	さゆり温泉	さゆりおんせん	熊本県球磨郡相良村			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2975	2070	天草パール温泉	あまくさぱーるおんせん	熊本県天草郡大矢野町中			天草	天草上島・松島	炭酸水素塩泉	\N	\N	50434	\N
2976	2071	弓ヶ浜温泉	ゆみがはまおんせん	熊本県天草郡大矢野町上弓ヶ浜			天草	天草上島・松島	塩化物泉	\N	\N	50434	\N
2977	2072	柳港温泉	やなぎみなとおんせん	熊本県天草郡大矢野町中柳			天草	天草上島・松島	弱アルカリ性低張性泉	\N	\N	50434	\N
2978	2073	市原温泉	いちはらおんせん	熊本県阿蘇郡南小国町赤馬場			黒川・杖立・わいた	黒川・小田・田の原・満願寺	その他	\N	\N	\N	\N
2979	2074	北里温泉	きたざとおんせん	熊本県阿蘇郡南小国町北里			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	\N	\N
2980	2075	鹿本温泉	かもとおんせん	熊本県鹿本郡鹿本町			玉名・山鹿・菊池	山鹿・平山・植木	アルカリ単純泉	\N	\N	\N	\N
2981	2076	泗水温泉	しすいおんせん	熊本県菊池市泗水町			玉名・山鹿・菊池	菊池	炭酸水素塩泉	\N	\N	\N	\N
2982	2077	旭志温泉	きょくしおんせん	熊本県菊池市旭志麓			玉名・山鹿・菊池	菊池	その他	\N	\N	\N	\N
2983	2078	御立岬温泉	おたちみさきおんせん	熊本県芦北郡田浦町			八代・水俣・湯の児	八代・水俣・湯の児	塩化物泉	\N	\N	\N	\N
2984	2079	つなぎ温泉	つなぎおんせん	熊本県芦北郡津奈木町			八代・水俣・湯の児	八代・水俣・湯の児	その他	\N	\N	\N	\N
2985	2080	坊中温泉	ぼうちゅうおんせん	熊本県阿蘇郡阿蘇町坊中			阿蘇	阿蘇・内牧	塩化物泉	\N	\N	\N	\N
2986	2081	阿蘇健康火山温泉	あそけんこうかざんおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	その他	\N	\N	50429	\N
2987	2082	長陽温泉	ちょうようおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	単純温泉	\N	\N	\N	\N
2988	2083	久木野温泉	くぎのおんせん	熊本県阿蘇郡九木野村			阿蘇	南阿蘇	炭酸水素塩泉	\N	\N	\N	\N
2989	2084	高森温泉	たかもりおんせん	熊本県阿蘇郡高森			阿蘇	南阿蘇	その他	\N	\N	\N	\N
2990	2085	大津温泉	おおづおんせん	熊本県菊池郡大津			玉名・山鹿・菊池	菊池	炭酸水素塩泉	\N	\N	\N	\N
2991	2086	熊本城温泉	くまもとじょうおんせん	熊本県熊本市上熊本			熊本	熊本	アルカリ単純泉	\N	\N	\N	\N
2992	2087	草枕温泉	くさまくらおんせん	熊本県玉名郡天水町			玉名・山鹿・菊池	荒尾・玉名	その他	\N	\N	\N	\N
2993	2088	天然グリーンランド温泉	てんねんぐりーんらんどおんせん	熊本県荒尾市本井手長谷			玉名・山鹿・菊池	荒尾・玉名	その他	\N	\N	\N	\N
2994	2089	さかもと温泉	さかもとおんせん	熊本県八代郡坂本村			八代・水俣・湯の児	八代・水俣・湯の児	炭酸水素塩泉	\N	\N	\N	\N
2995	2090	城南温泉	じょうなんおんせん	熊本県下益城郡城南町			熊本	宇土・益城	その他	\N	\N	\N	\N
2996	2091	千丁温泉	せんちょうおんせん	熊本県八代郡千丁町			八代・水俣・湯の児	八代・水俣・湯の児	炭酸水素塩泉	\N	\N	\N	\N
2997	2092	不知火温泉	しらぬいおんせん	熊本県宇土郡不知火町			熊本	宇土・益城	その他	\N	\N	\N	\N
2998	2093	えびす温泉	えびすおんせん	熊本県球磨郡多良木町			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2999	2094	牛深温泉	うしぶかおんせん	熊本県牛深市			天草	天草下島・下田	アルカリ単純泉	\N	\N	50434	\N
3000	2095	吉尾温泉	よしおおんせん	熊本県芦北郡芦北町吉尾			八代・水俣・湯の児	八代・水俣・湯の児	硫酸塩泉	\N	\N	\N	\N
3001	2096	やまなみ温泉	やまなみおんせん	熊本県阿蘇郡産山村大利			阿蘇	阿蘇・内牧	その他	\N	\N	\N	\N
3002	2232	米塚温泉	こめづかおんせん	熊本県阿蘇郡阿蘇町赤水米塚温泉			阿蘇	阿蘇・内牧	アルカリ単純泉	\N	\N	50429	\N
3003	2234	天草温泉	あまくさおんせん	熊本県天草郡大矢野町上鳩の釜			天草	天草上島・松島	アルカリ単純泉	\N	\N	50434	\N
3004	2274	アゼリア21	あぜりあにじゅういち	熊本県阿蘇郡一の宮町宮地5812			阿蘇	阿蘇・内牧	塩化物泉	\N	\N	\N	\N
3005	2275	寺尾野温泉	てらおのおんせん	熊本県阿蘇郡小国町上田寺尾野			黒川・杖立・わいた	杖立・わいた	炭酸水素塩泉	\N	\N	\N	\N
3006	2276	苓北町温泉センター麟泉の湯	れいほくまちおんせんせんたーりんせんのゆ	熊本県天草郡苓北町志岐1281			天草	天草下島・下田	アルカリ単純泉	\N	\N	50434	\N
3007	2277	奴留湯温泉	ぬるゆおんせん	熊本県阿蘇郡小国町北里奴留湯			黒川・杖立・わいた	杖立・わいた	硫黄泉	\N	\N	\N	\N
3008	2278	石段の郷　佐俣の湯	いしだんのさと　さまたのゆ	熊本県下益城郡中央町佐俣705			熊本	宇土・益城	アルカリ単純泉	\N	\N	\N	\N
3009	2289	菊池わくわく温泉	きくちわくわくおんせん	熊本県菊池市大字亘37-5			玉名・山鹿・菊池	菊池	弱アルカリ性低張性泉	\N	\N	\N	\N
3010	2290	天草本渡温泉	あまくさほんどおんせん	熊本県本渡市本渡町広瀬996番地			天草	天草下島・下田	弱アルカリ性低張性泉	\N	\N	50434	\N
3011	2339	一勝池温泉	いっしょうちおんせん	熊本県球磨郡球磨村一勝池39-2			人吉・球磨	人吉・球磨	アルカリ単純泉	\N	\N	\N	\N
3012	2394	月廻り温泉	つきまわりおんせん	熊本県阿蘇郡高森町月廻り月廻り温泉			阿蘇	南阿蘇	炭酸水素塩泉	\N	\N	\N	\N
3013	2556	健軍の湯　一休	けんぐんのゆ　いっきゅう	熊本県熊本市佐土原2-2-1			熊本	熊本	アルカリ単純泉	\N	\N	\N	\N
3014	2557	大野温泉	おおのおんせん	熊本県葦北郡芦北町天月1000			八代・水俣・湯の児	八代・水俣・湯の児	アルカリ単純泉	\N	\N	\N	\N
3015	2558	有明温泉　さざ波の湯	ありあけおんせん　さざなみのゆ	熊本県天草郡有明町上津浦1955			天草	天草上島・松島	単純温泉	\N	\N	50434	\N
3016	2763	火の山温泉	ひのやまおんせん	熊本県阿蘇郡南阿蘇村下野			阿蘇	南阿蘇	アルカリ単純泉	\N	\N	50429	\N
3017	2786	永浦温泉	ながうらおんせん	熊本県上天草市松島町合津6465-2			天草	天草上島・松島	弱アルカリ性低張性泉	\N	\N	50434	\N
3018	2885	南阿蘇温泉	みなみあそおんせん	熊本県阿蘇郡南阿蘇村立野541-8			阿蘇	南阿蘇	アルカリ単純泉	\N	\N	50429	\N
3019	2923	休暇村温泉「色見の湯」	きゅうかむらおんせん「しきみのゆ」	熊本県阿蘇郡高森町高森3219			阿蘇	南阿蘇	ナトリウム塩化物泉	\N	\N	50429	\N
3020	2979	白川温泉	しらかわおんせん	熊本県阿蘇郡南小国町大字満願寺白川			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫酸塩泉	\N	\N	50430	\N
3021	2986	日平温泉	ひびらおんせん	熊本県阿蘇郡小国町北里字日平１４３５－３			黒川・杖立・わいた	杖立・わいた	ナトリウム塩化物泉	\N	\N	50919	\N
3022	3017	菊池渓谷温泉	きくちけいこくおんせん	熊本県菊池市重味2224-8			玉名・山鹿・菊池	菊池	硫酸塩泉	\N	\N	50830	\N
3023	3040	姫石の湯	ひめいしのゆ	熊本県上天草市姫戸町姫浦3043-12			天草	天草上島・松島	アルカリ単純泉	\N	\N	50434	\N
3024	3086	花房台温泉	はなぶさだいおんせん	熊本県菊池市出田2121-185			玉名・山鹿・菊池	菊池	ナトリウム塩化物泉	\N	\N	50891	\N
3025	3120	蔵迫温泉	くらさこおんせん	熊本県阿蘇郡南小国町満願寺蔵迫２８４９―１			黒川・杖立・わいた	黒川・小田・田の原・満願寺	その他	\N	\N	50430	\N
3026	3149	天然温泉　火の国　美肌の湯	てんねんおんせん　ひのくに　びはだのゆ	熊本県熊本市中央区魚屋町1-30-1			熊本	熊本	単純温泉	\N	\N	50424	\N
3027	3186	松島オレンジ温泉	まつしまおれんじおんせん	熊本県上天草市松島町合津6466番地			天草	天草上島・松島	アルカリ単純泉	\N	\N	50434	\N
3028	3228	ゆのまえ温泉	ゆのまえ	熊本県球磨郡湯前町１５８８－７			人吉・球磨	人吉・球磨	ナトリウム塩化物泉	\N	\N	50433	\N
3029	3258	さがら温泉	さがらおんせん	熊本県球磨郡相良村			人吉・球磨	人吉・球磨	単純温泉	\N	\N	50980	\N
3030	3274	山鹿灯籠の湯	やまがとうろうのゆ	熊本県山鹿市鹿校通2‐5‐9			玉名・山鹿・菊池	山鹿・平山・植木	弱アルカリ性低張性泉	\N	\N	50425	\N
3031	3326	仙酔峡温泉	せんすいきょうおんせん	熊本県阿蘇市一の宮町宮地５９３６			阿蘇	阿蘇・内牧	ナトリウム塩化物泉	\N	\N	50429	\N
3032	1830	赤根温泉	あかねおんせん	大分県東国東郡国見町赤根			中津・国東	国東・杵築	硫黄泉	\N	\N	\N	\N
3033	1831	真玉温泉	またまおんせん	大分県西国東郡真玉町城前			中津・国東	国東・杵築	塩化物泉	\N	\N	\N	\N
3034	1832	千代の湯温泉	ちよのゆおんせん	大分県宇佐市大字出光			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
3035	1833	鴨良温泉	しぎらおんせん	大分県下毛郡耶馬渓町深耶馬鴫良温泉			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
3036	1834	折戸温泉	おりとおんせん	大分県下毛郡耶馬渓町深耶馬折戸			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
3037	1835	深耶馬温泉	しんやばおんせん	大分県下毛郡耶馬渓町深耶馬			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
3038	1837	日田温泉	ひたおんせん	大分県日田市隈			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純温泉	\N	\N	50440	\N
3039	1838	天ヶ瀬温泉	あまがせおんせん	大分県日田郡天瀬町湯山			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	硫黄泉	\N	\N	50441	\N
3040	1839	湯の釣温泉	ゆのつるおんせん	大分県日田郡天瀬町赤岩			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純温泉	\N	\N	\N	\N
3041	1840	玖珠温泉	くすおんせん	大分県玖珠郡玖珠町春日町			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	\N	\N
3042	1841	杵築温泉	きつきおんせん	大分県杵築市大字杵築			中津・国東	国東・杵築	単純温泉	\N	\N	50439	\N
3043	1842	日出温泉	ひじおんせん	大分県速見郡日出町大神			別府	別府	塩化物泉	\N	\N	50436	\N
3044	1843	別府・鉄輪温泉	かんなわおんせん	大分県別府市鉄輪			別府	別府	単純温泉	\N	\N	50437	\N
3045	1844	別府・亀川温泉	かめがわおんせん	大分県別府市亀川浜田町			別府	別府	塩化物泉	\N	\N	50437	\N
3046	1845	別府・堀田温泉	べっぷ・ほりたおんせん	大分県別府市堀田			別府	別府	含鉄泉	\N	\N	50437	\N
3047	1846	別府・柴石温泉	しばせきおんせん	大分県別府市亀川城の内			別府	別府	単純温泉	\N	\N	\N	\N
3048	1847	別府・明礬温泉	みょうばんおんせん	大分県別府市明礬町			別府	別府	塩化物泉	\N	\N	50437	\N
3049	1848	別府温泉	べっぷおんせん	大分県別府市中央町			別府	別府	その他	\N	\N	50437	\N
3050	1849	別府・浜脇温泉	はまわきおんせん	大分県別府市浜脇			別府	別府	含鉄泉	\N	\N	50437	\N
3051	1850	別府・観海寺温泉	かんかいじおんせん	大分県別府市南立石			別府	別府	硫黄泉	\N	\N	50437	\N
3052	1851	城島温泉	きじまおんせん	大分県別府市東山			別府	別府	含鉄泉	\N	\N	50437	\N
3053	1852	大分市内温泉	おおいたしないおんせん	大分県大分市金池町			大分	大分	塩化物泉	\N	\N	50435	\N
3054	1853	塚野鉱泉	つかのこうせん	大分県大分市廻栖野			大分	大分	炭酸水素塩泉	\N	\N	\N	\N
3055	1854	陣屋温泉	じんやおんせん	大分県大分郡挾間町鬼瀬			湯布院	湯布院・湯平	単純温泉	\N	\N	\N	\N
3056	1855	六ヶ迫温泉	ろっかさここうせん	大分県臼杵市六ヶ迫			大分	臼杵・佐伯	単純温泉	\N	\N	\N	\N
3057	1856	塚原温泉	つかはらおんせん	大分県大分郡湯布院町塚原温泉			湯布院	湯布院・湯平	塩化物泉	\N	\N	50438	\N
3058	1857	由布院温泉	ゆふいんおんせん	大分県大分郡湯布院町大字川上			湯布院	湯布院・湯平	塩化物泉	\N	\N	50438	\N
3059	1858	山下湖温泉	やましたこおんせん	大分県大分郡湯布院町川西			湯布院	湯布院・湯平	炭酸水素塩泉	\N	\N	\N	\N
3060	1859	湯平温泉	ゆのひらおんせん	大分県大分郡湯布院町湯平			湯布院	湯布院・湯平	塩化物泉	\N	\N	50438	\N
3061	1860	壁湯温泉	かべゆおんせん	大分県玖珠郡九重町町田			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50442	\N
3062	1861	宝泉寺温泉	ほうせんじおんせん	大分県玖珠郡九重町町田			九重・久住・竹田・長湯	九重	塩化物泉	\N	\N	50442	\N
3063	1862	川底温泉	かわそこおんせん	大分県玖珠郡九重町菅原			九重・久住・竹田・長湯	九重	硫黄泉	\N	\N	\N	\N
3064	1863	筌の口温泉	うけのくちおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	\N	\N
3065	1864	長者原温泉	ちょうじゃばるおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
3066	1865	星生温泉	ほつしょうおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	塩化物泉	\N	\N	50592	\N
3067	1866	寒の地獄温泉	かんのじごくおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
3068	1867	牧ノ戸温泉	まきのとおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
3069	1868	筋湯温泉	すじゆおんせん	大分県玖珠郡九重町湯坪筋湯			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50443	\N
3070	1869	大岳温泉	おおたけおんせん	大分県玖珠郡九重町湯坪			九重・久住・竹田・長湯	九重	炭酸水素塩泉	\N	\N	\N	\N
3071	1870	生竜温泉	いきりゅうおんせん	大分県玖珠郡九重町町田			九重・久住・竹田・長湯	九重	含鉄泉	\N	\N	50592	\N
3072	1871	法華院温泉	ほっけいんおんせん	大分県直入郡久住町有氏			九重・久住・竹田・長湯	久住・長湯・竹田	含鉄泉	\N	\N	\N	\N
3073	1872	久住温泉	くじゅうおんせん	大分県直入郡久住町メリーファーム			九重・久住・竹田・長湯	久住・長湯・竹田	硫黄泉	\N	\N	50444	\N
3074	1873	七里田温泉	しちりだおんせん	大分県直入郡久住町有氏七里田			九重・久住・竹田・長湯	久住・長湯・竹田	硫黄泉	\N	\N	50444	\N
3075	1874	長湯温泉	ながゆおんせん	大分県直入郡直入町長湯			九重・久住・竹田・長湯	久住・長湯・竹田	単純温泉	\N	\N	50445	\N
3076	1875	湯坪温泉	ゆつぼおんせん	大分県玖珠郡九重町湯坪　			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50591	\N
3077	1876	竹田温泉	たけたおんせん	大分県竹田市竹田			九重・久住・竹田・長湯	久住・長湯・竹田	アルカリ単純泉	\N	\N	\N	\N
3078	2019	赤川温泉	あかがわおんせん	大分県直入郡久住町			九重・久住・竹田・長湯	久住・長湯・竹田	硫黄泉	\N	\N	50444	\N
3079	2021	国見温泉	くにみおんせん	大分県東国東郡国見町			中津・国東	国東・杵築	単純温泉	\N	\N	\N	\N
3080	2022	宇佐温泉	うさおんせん	大分県宇佐市川部			中津・国東	中津・耶馬渓・宇佐	炭酸水素塩泉	\N	\N	50593	\N
3081	2023	狭間温泉	はざまおんせん	大分県大分郡狭間			湯布院	湯布院・湯平	炭酸水素塩泉	\N	\N	\N	\N
3082	2024	九酔渓温泉	きゅうすいけいおんせん	大分県玖珠郡九重町			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
3083	2025	九重温泉	ここのえおんせん	大分県玖珠郡九重町			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
3084	2026	院内温泉	いんないおんせん	大分県宇佐郡院内町			中津・国東	中津・耶馬渓・宇佐	その他	\N	\N	\N	\N
3085	2027	安心院温泉	あじむおんせん	大分県宇佐郡安心院			中津・国東	中津・耶馬渓・宇佐	その他	\N	\N	\N	\N
3086	2028	かいがけ温泉	かいがけおんせん	大分県大分郡狭間町			湯布院	湯布院・湯平	炭酸水素塩泉	\N	\N	\N	\N
3087	2029	宇目温泉	うめおんせん	大分県南海部郡宇目町			大分	大野	アルカリ単純泉	\N	\N	\N	\N
3088	2030	直川温泉	なおかわおんせん	大分県南海部郡直川村			大分	大野	その他	\N	\N	\N	\N
3089	2031	竜門温泉	りゅうもんおんせん	大分県玖珠郡九重町大字松木竜門			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
3090	2032	白水鉱泉	はくすいこうせん	大分県大分郡庄内町大字阿蘇野			湯布院	湯布院・湯平	塩化物泉	\N	\N	\N	\N
3091	2033	つえ温泉	つえおんせん	大分県日田郡上津江村			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	塩化物泉	\N	\N	\N	\N
3092	2034	湯の釣温泉	ゆのつりおんせん	大分県日田郡天瀬町			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純温泉	\N	\N	50441	\N
3093	2266	夢幻の里	むげんのさと	大分県別府市堀田6組			別府	別府	その他	\N	\N	\N	\N
3094	2271	駅前高等温泉	えきまえこうとうおんせん	大分県別府市駅前町13-14			別府	別府	単純温泉	\N	\N	\N	\N
3095	2273	温泉若山	おんせんわかやま	大分県下毛郡耶馬渓町深耶馬3263			中津・国東	中津・耶馬渓・宇佐	鉱泉	\N	\N	\N	\N
3096	2279	湯布院町営健康温泉館クアージュゆふいん	ゆふいんちょうえいけんこうおんせんかんくあーじゅゆふいん	大分県大分郡湯布院町大字川上字城2863番地			湯布院	湯布院・湯平	単純温泉	\N	\N	\N	\N
3097	2282	レゾネイトクラブくじゅう紅殻の湯	れぞねいとくらぶくじゅうべんがらのゆ	大分県直入郡久住町有氏広内1773			九重・久住・竹田・長湯	久住・長湯・竹田	炭酸水素塩泉	\N	\N	\N	\N
3098	2283	直入町温泉療養文化館御前湯	なおいりまちおんせんりょうようぶんかかんごぜんゆ	大分県直入郡直入町大字長湯7962-1			九重・久住・竹田・長湯	久住・長湯・竹田	硫酸塩泉	\N	\N	\N	\N
3099	2284	竹瓦温泉	たけがわらおんせん	大分県別府市元町16-13			別府	別府	単純温泉	\N	\N	\N	\N
3100	2287	ゑびすや温泉	えびすやおんせん	大分県別府市明礬4組			別府	別府	単純温泉	\N	\N	\N	\N
3101	2559	由布岳温泉	ゆふだけおんせん	大分県大分郡湯布院町川上宮尻2426-3			湯布院	湯布院・湯平	硫黄泉	\N	\N	50438	\N
3102	2560	三隈川温泉	みくまがわおんせん	大分県日田市中ノ島町685-6			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純炭酸泉	\N	\N	\N	\N
3103	2561	満天望温泉	まんてんぼうおんせん	大分県直入郡久住町白丹7571-23			九重・久住・竹田・長湯	久住・長湯・竹田	単純炭酸泉	\N	\N	\N	\N
3104	2649	馬子草温泉	まごそうおんせん	大分県久重町大字旧野馬子草１７３２			九重・久住・竹田・長湯	九重	硫黄泉	\N	\N	50592	\N
3105	2650	梅の香温泉	うめのかおりおんせん	大分県日田郡大山町大字西山４６６７			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	アルカリ単純泉	\N	\N	50594	\N
3106	2972	水分温泉	みずわけおんせん	大分県玖珠郡九重町大字野上3737-2			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
3107	2996	長者の郷湯	ちょうじゃのさとゆ	大分県玖珠郡九重町大字田野１６６６－４７１			九重・久住・竹田・長湯	九重	弱アルカリ性低張性泉	\N	\N	50813	\N
3108	3041	山香温泉	やまがおんせん	大分県杵築市山香町大字倉成3003番地			中津・国東	国東・杵築	炭酸水素塩泉	\N	\N	50856	\N
3109	3050	大在温泉	おおざいおんせん	大分県大分市大在北1丁目４－７			大分	大分	炭酸水素塩泉	\N	\N	50866	\N
3110	3133	瀬の本温泉	せのもとおんせん	大分県玖珠郡九重町大字湯坪瀬の本			九重・久住・竹田・長湯	九重	硫黄泉	\N	\N	50592	\N
3111	3328	奥日田温泉	おくひたおんせん	大分県日田市大山町大字西大山4667番地			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	ナトリウム塩化物泉	\N	\N	50440	\N
3112	1920	西都温泉	さいとおんせん	宮崎県西都市大字調殿			宮崎・青島・日南	西都	炭酸水素塩泉	\N	\N	\N	\N
3113	1921	高屋温泉	たかやおんせん	宮崎県西都市都於郡町高屋			宮崎・青島・日南	西都	塩化物泉	\N	\N	50449	\N
3114	1922	佐土原温泉	さどわらおんせん	宮崎県宮崎郡佐土原町下那珂			宮崎・青島・日南	宮崎・青島・シーガイア	塩化物泉	\N	\N	\N	\N
3115	1923	綾温泉	あやおんせん	宮崎県東諸県郡綾町南俣			宮崎・青島・日南	宮崎・青島・シーガイア	塩化物泉	\N	\N	\N	\N
3116	1924	吉田温泉	よしだおんせん	宮崎県えびの市昌明寺			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
3117	1925	京町温泉	きょうまちおんせん	宮崎県えびの市向江京町			えびの・都城	えびの・都城	単純温泉	\N	\N	50670	\N
3118	1926	白鳥温泉	しらとりおんせん	宮崎県えびの市末永			えびの・都城	えびの・都城	単純温泉	\N	\N	\N	\N
3119	1927	えびの高原温泉	えびのこうげんおんせん	宮崎県えびの市末永			えびの・都城	えびの・都城	含鉄泉	\N	\N	\N	\N
3120	1928	阿母ヶ平温泉	あばがひらおんせん	宮崎県小林市堤			えびの・都城	えびの・都城	単純温泉	\N	\N	\N	\N
3121	1929	蓮太郎温泉	はすたろうおんせん	宮崎県西諸県郡高原町西麓			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
3122	1930	湯之元温泉	ゆのもとおんせん	宮崎県西諸県郡高原町蒲牟田			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
3123	1931	常盤温泉	ときわおんせん	宮崎県北諸県郡山田町中霧島			えびの・都城	えびの・都城	含鉄泉	\N	\N	50448	\N
3124	1932	青井岳温泉	あおいだけおんせん	宮崎県北諸県郡山之口町青井岳			えびの・都城	えびの・都城	含鉄泉	\N	\N	\N	\N
3125	1933	長日川温泉	ながひがわおんせん	宮崎県宮崎郡田野町			宮崎・青島・日南	宮崎・青島・シーガイア	単純温泉	\N	\N	\N	\N
3126	1934	曽山寺温泉	そさんじおんせん	宮崎県宮崎市加江田			宮崎・青島・日南	宮崎・青島・シーガイア	硫黄泉	\N	\N	\N	\N
3127	1935	青島温泉	あおしまおんせん	宮崎県宮崎市青島			宮崎・青島・日南	宮崎・青島・シーガイア	単純温泉	\N	\N	50985	\N
3128	1936	北郷温泉	きたごうおんせん	宮崎県南那珂郡北郷町大藤甲			宮崎・青島・日南	日南海岸	硫黄泉	\N	\N	50446	\N
3129	1937	日南温泉	にちなんおんせん	宮崎県日南市風田			宮崎・青島・日南	日南海岸	炭酸水素塩泉	\N	\N	\N	\N
3130	2097	湯ノ木場温泉	ゆのこばおんせん	宮崎県えびの市東長江浦			えびの・都城	えびの・都城	塩化物泉	\N	\N	\N	\N
3131	2098	加久藤温泉	かくとうおんせん	宮崎県えびの市大字西長江浦152‐2			えびの・都城	えびの・都城	塩化物泉	\N	\N	\N	\N
3132	2099	田野温泉	たのおんせん	宮崎県宮崎郡田野町			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
3133	2100	小林温泉	こばやしおんせん	宮崎県小林市			えびの・都城	えびの・都城	単純温泉	\N	\N	\N	\N
3134	2101	高原温泉	たかはらおんせん	宮崎県西諸県郡高原町			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
3135	2102	安久温泉	やすひさおんせん	宮崎県都城市安久町			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
3136	2103	都城温泉	みやこのじょうおんせん	宮崎県都城市			えびの・都城	えびの・都城	塩化物泉	\N	\N	\N	\N
3137	2104	山之口温泉	やまのぐちおんせん	宮崎県北諸県郡山之口町			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
3138	2105	山田温泉	やまだおんせん	宮崎県北諸県郡山田町			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
3139	2106	日之影温泉	ひのかげおんせん	宮崎県西臼杵郡日之影町			日向・延岡・高千穂	高千穂	その他	\N	\N	\N	\N
3140	2107	宮崎温泉	みやざきおんせん	宮崎県宮崎市			宮崎・青島・日南	宮崎・青島・シーガイア	炭酸水素塩泉	\N	\N	\N	\N
3141	2108	清武温泉	きよたけおんせん	宮崎県宮崎郡清武町			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
3142	2109	木花温泉	きはなおんせん	宮崎県宮崎市学園木花台南			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
3143	2110	串間温泉	くしまおんせん	宮崎県串間市			宮崎・青島・日南	日南海岸	アルカリ単純泉	\N	\N	\N	\N
3144	2111	高崎温泉	たかざきおんせん	宮崎県北諸県郡高崎町			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
3145	2112	高千穂温泉	たかちほおんせん	宮崎県西臼杵郡高千穂町			日向・延岡・高千穂	高千穂	炭酸水素塩泉	\N	\N	\N	\N
3146	2113	新富温泉	しんとみおんせん	宮崎県児湯郡新富町			宮崎・青島・日南	西都	その他	\N	\N	\N	\N
3147	2114	宮崎リゾート温泉	みやざきりぞーとおんせん	宮崎県宮崎市			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	50447	\N
3148	2235	青島温泉	あおしまおんせん	宮崎市青島			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
3149	2270	高岡温泉やすらぎの郷	たかおかおんせんやすらぎのさと	宮崎県東諸県郡高岡町大字小山田1953番地			宮崎・青島・日南	宮崎・青島・シーガイア	弱アルカリ性低張性泉	\N	\N	\N	\N
3195	1975	伏目温泉	ふしめおんせん	鹿児島県揖宿郡山川町福元字一本松			南薩・指宿	指宿	塩化物泉	\N	\N	\N	\N
3150	2272	日南海岸青島温泉青島サンクマール	にちなんかいがんあおしまおんせんあおしまさんくまーる	宮崎県宮崎市大字折生迫7408			宮崎・青島・日南	宮崎・青島・シーガイア	炭酸水素塩泉	\N	\N	\N	\N
3151	2285	西米良温泉･カリコボーズの湯『ゆた?と』	にしめらおんせん･かりこぼーずのゆ『ゆた?と』	宮崎県児湯郡西米良村大字村所260-8			宮崎・青島・日南	西都	塩化物泉	\N	\N	\N	\N
3152	2562	すきむらんど温泉　かじかの湯	すきむらんどおんせん　かじかのゆ	宮崎県西諸県郡須木村			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
3153	2563	南郷温泉	なんごうおんせん	宮崎県東臼杵郡南郷村			日向・延岡・高千穂	日向	炭酸水素塩泉	\N	\N	\N	\N
3154	2564	天岩戸温泉	あまのいわとおんせん	宮崎県西臼杵郡高千穂町岩戸			日向・延岡・高千穂	高千穂	その他	\N	\N	\N	\N
3155	2934	極楽温泉	ごくらくおんせん	宮崎県西諸県郡高原町大字蒲牟田7449			えびの・都城	えびの・都城	その他	\N	\N	50763	\N
3156	2960	フェニックスリゾート温泉	ふぇにっくすりぞーとおんせん	宮崎県宮崎市山崎町浜山415番87			宮崎・青島・日南	宮崎・青島・シーガイア	塩化物泉	\N	\N	50787	\N
3157	3033	ごかせ温泉	ごかせおんせん	宮崎県西臼杵郡五ヶ瀬町大字三ケ所字広木野９２２３－１			日向・延岡・高千穂	高千穂	アルカリ単純泉	\N	\N	50850	\N
3158	3262	神の郷温泉	かんのごうおんせん	宮崎県小林市細野５２７３―１９			えびの・都城	えびの・都城	ナトリウム塩化物泉	\N	\N	\N	\N
3159	3289	神話の湯	しんわのゆ	宮崎県宮崎市青島2丁目100‐7番地			宮崎・青島・日南	宮崎・青島・シーガイア	炭酸水素塩泉	\N	\N	50985	\N
3160	1938	白木川内温泉	しらきがわうちおんせん	鹿児島県出水市上大川内			北薩・川内	出水・阿久根	硫黄泉	\N	\N	\N	\N
3161	1939	湯川内温泉	ゆがわちおんせん	鹿児島県出水市武本			北薩・川内	出水・阿久根	硫黄泉	\N	\N	\N	\N
3162	1940	阿久根温泉	あくねおんせん	鹿児島県阿久根市大丸町			北薩・川内	出水・阿久根	塩化物泉	\N	\N	\N	\N
3163	1941	川内温泉	せんだいおんせん	鹿児島県川内市湯田町			北薩・川内	川内・いちき串木野	硫黄泉	\N	\N	\N	\N
3164	1943	紫尾温泉	しびおんせん	鹿児島県薩摩郡鶴田町紫尾			北薩・川内	川内・いちき串木野	硫黄泉	\N	\N	\N	\N
3165	1944	宮之城温泉	みやのじょうおんせん	鹿児島県薩摩郡宮之城町湯田			北薩・川内	川内・いちき串木野	硫黄泉	\N	\N	50452	\N
3166	1945	市比野温泉	いちひのおんせん	鹿児島県薩摩郡樋脇町市比野			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	50452	\N
3167	1946	入来温泉	いりきおんせん	鹿児島県薩摩郡入来町副田			北薩・川内	川内・いちき串木野	塩化物泉	\N	\N	\N	\N
3168	1947	諏訪温泉	すわおんせん	鹿児島県薩摩郡入来町浦之名			北薩・川内	川内・いちき串木野	塩化物泉	\N	\N	\N	\N
3169	1948	藺牟田温泉	いむたおんせん	鹿児島県薩摩郡祁答院町藺牟田			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	\N	\N
3170	1949	吉松温泉郷	よしまつおんせんきょう	鹿児島県姶良郡吉松町鶴丸			霧島	霧島	単純温泉	\N	\N	\N	\N
3171	1950	湯之尾温泉	ゆのおおんせん	鹿児島県伊佐郡菱刈町川北			北薩・川内	大口	炭酸水素塩泉	\N	\N	\N	\N
3172	1951	栗野岳温泉	くりのだけおんせん	鹿児島県姶良郡栗野町木場			霧島	霧島	硫黄泉	\N	\N	\N	\N
3173	1952	関平温泉	せきびらおんせん	鹿児島県姶良郡牧園町三体堂			霧島	霧島	単純温泉	\N	\N	\N	\N
3174	1953	丸尾温泉	まるおおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	50451	\N
3175	1954	湯之谷温泉	ゆのたにおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
3176	1955	硫黄谷温泉	いおうだにおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	\N	\N
3177	1956	林田温泉	はやしだおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	\N	\N
3178	1957	新湯温泉	しんゆおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	\N	\N
3179	1958	霧島神宮温泉郷	きりしまじんぐうおんせんきょう	鹿児島県姶良郡霧島町田口			霧島	霧島	硫黄泉	\N	\N	50451	\N
3180	1959	天降川温泉	あもりがわおんせん	鹿児島県姶良郡牧園町宿窪田			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
3181	1961	日当山温泉	ひなたやまおんせん	鹿児島県姶良郡隼人町姫城			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
3182	1962	あいら温泉	あいらおんせん	鹿児島県姶良郡姶良町鍋倉			霧島	霧島	単純温泉	\N	\N	\N	\N
3183	1963	サンピアあいら温泉	さんぴああいらおんせん	鹿児島県姶良郡姶良町東餅田			霧島	霧島	塩化物泉	\N	\N	\N	\N
3184	1964	市来温泉	いちきおんせん	鹿児島県日置郡市来町湊町			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	\N	\N
3185	1965	鹿児島温泉	かごしまおんせん	鹿児島県鹿児島市			鹿児島・桜島	鹿児島・桜島	塩化物泉	\N	\N	\N	\N
3186	1966	桜島マグマ温泉	さくらじままぐまおんせん	鹿児島県鹿児島郡桜島町横山			鹿児島・桜島	鹿児島・桜島	単純温泉	\N	\N	\N	\N
3187	1967	古里温泉	ふるさとおんせん	鹿児島県鹿児島市古里町			鹿児島・桜島	鹿児島・桜島	含鉄泉	\N	\N	\N	\N
3188	1968	海潟温泉	かいがたおんせん	鹿児島県垂水市海潟			垂水・大隅	垂水・大隅	塩化物泉	\N	\N	\N	\N
3189	1969	垂水温泉	たるみずおんせん	鹿児島県垂水市錦江町			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
3190	1970	大隅温泉	おおすみおんせん	鹿児島県鹿屋市打馬			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
3191	1971	岸良温泉	きしらおんせん	鹿児島県肝属郡内之浦町岸良			垂水・大隅	垂水・大隅	炭酸水素塩泉	\N	\N	\N	\N
3192	1972	吹上温泉	ふきあげおんせん	鹿児島県日置市吹上町吹上温泉			南薩・指宿	伊集院・東市来・吹上浜	単純温泉	\N	\N	50450	\N
3193	1973	指宿温泉	いぶすきおんせん	鹿児島県指宿市十二町			南薩・指宿	指宿	単純温泉	\N	\N	50450	\N
3194	1974	成川温泉	なりかわおんせん	鹿児島県揖宿郡山川町成川			南薩・指宿	指宿	硫黄泉	\N	\N	\N	\N
3197	1977	種子島温泉	たねがしまおんせん	鹿児島県熊毛郡中種子町坂井塩屋			離島（利尻・礼文・天売・焼尻）	種子島	塩化物泉	\N	\N	\N	\N
3198	1978	屋久島温泉	やくしまおんせん	鹿児島県熊毛郡屋久町尾之間			離島（利尻・礼文・天売・焼尻）	屋久島	塩化物泉	\N	\N	\N	\N
3199	1979	尾之間温泉	おのあいだおんせん	鹿児島県熊毛郡屋久町尾之間			離島（利尻・礼文・天売・焼尻）	屋久島	塩化物泉	\N	\N	\N	\N
3200	2115	妙見温泉	みょうけんおんせん	鹿児島県姶良郡牧園町			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
3201	2116	鰻温泉	うなぎおんせん	鹿児島県揖宿郡山川町成川			南薩・指宿	指宿	硫黄泉	\N	\N	\N	\N
3202	2117	開聞温泉	かいもんおんせん	鹿児島県揖宿郡開聞町川尻			南薩・指宿	指宿	硫黄泉	\N	\N	50450	\N
3203	2118	湯之元温泉	ゆのもとおんせん	鹿児島県日置郡東市来町湯之元			南薩・指宿	伊集院・東市来・吹上浜	炭酸水素塩泉	\N	\N	\N	\N
3204	2119	祁答院温泉	けどういんおんせん	鹿児島県薩摩郡祁答院町下手			北薩・川内	川内・いちき串木野	その他	\N	\N	\N	\N
3205	2120	川内高城温泉	せんだいたきおんせん	鹿児島県川内市湯田町			北薩・川内	川内・いちき串木野	アルカリ単純泉	\N	\N	\N	\N
3206	2121	薩摩温泉	さつまおんせん	鹿児島県薩摩郡薩摩町			北薩・川内	川内・いちき串木野	塩化物泉	\N	\N	\N	\N
3207	2122	木曽の滝温泉	そぎのたきおんせん	鹿児島県大口市宮人			北薩・川内	大口	硫黄泉	\N	\N	\N	\N
3208	2123	出水温泉	いずみおんせん	鹿児島県出水市向江			北薩・川内	出水・阿久根	アルカリ単純泉	\N	\N	\N	\N
3209	2124	長島温泉	ながしまおんせん	鹿児島県出水郡長島町蔵元			北薩・川内	出水・阿久根	弱アルカリ性低張性泉	\N	\N	\N	\N
3210	2125	鹿屋温泉	かのやおんせん	鹿児島県鹿屋市新生町			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
3211	2126	福山温泉	ふくやまおんせん	鹿児島県姶良郡福山町			霧島	霧島	単純温泉	\N	\N	\N	\N
3212	2127	志布志温泉	しぶしおんせん	鹿児島県曽於郡志布志町			垂水・大隅	垂水・大隅	弱アルカリ性低張性泉	\N	\N	\N	\N
3213	2128	根占温泉	ねじめおんせん	鹿児島県肝属郡根占町			垂水・大隅	垂水・大隅	炭酸水素塩泉	\N	\N	\N	\N
3214	2129	内之浦温泉	うちのうらおんせん	鹿児島県肝属郡内之浦町南方			垂水・大隅	垂水・大隅	炭酸水素塩泉	\N	\N	\N	\N
3215	2131	南種子温泉	みなみたねがしまおんせん	鹿児島県熊毛郡南種子町中之上			離島	種子島	その他	\N	\N	\N	\N
3216	2132	甑島温泉	こしきしまおんせん	鹿児島県薩摩郡里村里			離島	甑島列島	炭酸水素塩泉	\N	\N	\N	\N
3217	2133	枕崎温泉	まくらざきおんせん	鹿児島県枕崎市			南薩・指宿	知覧・南さつま	その他	\N	\N	\N	\N
3218	2134	頴娃温泉	えいおんおんせん	鹿児島県揖宿郡頴娃町			南薩・指宿	知覧・南さつま	炭酸水素塩泉	\N	\N	\N	\N
3219	2135	加世田温泉	かせだおんせん	鹿児島県加世田市高橋			南薩・指宿	知覧・南さつま	塩化物泉	\N	\N	\N	\N
3220	2136	川辺温泉	かわべおんせん	鹿児島県川辺郡川辺町			南薩・指宿	知覧・南さつま	硫黄泉	\N	\N	\N	\N
3221	2137	喜入温泉	きいれおんせん	鹿児島県揖宿郡喜入町			南薩・指宿	指宿	アルカリ単純泉	\N	\N	\N	\N
3222	2138	高野尾温泉	たかおのおんせん	鹿児島県出水郡高尾野町			北薩・川内	出水・阿久根	塩化物泉	\N	\N	\N	\N
3223	2139	東温泉	あずまおんせん	鹿児島県出水郡東町鷹巣			北薩・川内	出水・阿久根	アルカリ単純泉	\N	\N	\N	\N
3224	2140	松山温泉	まつやまおんせん	鹿児島県曽於郡松山町			垂水・大隅	垂水・大隅	アルカリ単純泉	\N	\N	\N	\N
3225	2141	佐多温泉	さたおんせん	鹿児島県肝属郡佐田町伊座敷			垂水・大隅	垂水・大隅	単純温泉	\N	\N	\N	\N
3226	2142	平内温泉	ひらうちおんせん	鹿児島県熊毛郡屋久町尾之間			離島	屋久島	硫黄泉	\N	\N	\N	\N
3227	2143	湯泊温泉	ゆどまりおんせん	鹿児島県熊毛郡屋久町湯泊			離島	屋久島	アルカリ単純泉	\N	\N	\N	\N
3228	2144	白浜温泉	しらはまおんせん	鹿児島県鹿児島郡桜島町			鹿児島・桜島	鹿児島・桜島	アルカリ単純泉	\N	\N	\N	\N
3229	2146	松元温泉	まつもとおんせん	鹿児島県日置郡松元町			鹿児島・桜島	鹿児島・桜島	塩化物泉	\N	\N	\N	\N
3230	2147	平川郷温泉	ひらかわのさとおんせん	鹿児島県薩摩郡宮之城町平川			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	\N	\N
3231	2148	楠川温泉	くすがわおんせん	鹿児島県熊毛郡上屋久町楠川			離島	屋久島	塩化物泉	\N	\N	\N	\N
3232	2149	一湊温泉	いちみなとおんせん	鹿児島県熊毛郡上屋久町一湊			離島	屋久島	硫黄泉	\N	\N	\N	\N
3233	2150	硫黄島温泉	いおうじまおんせん	鹿児島県鹿児島郡三島村硫黄島			離島	大隈諸島	硫黄泉	\N	\N	\N	\N
3234	2151	中種子温泉	なかたねおんせん	鹿児島県熊毛郡中種子町坂井			離島	種子島	塩化物泉	\N	\N	\N	\N
3235	2152	霧島温泉郷	きりしまおんせんきょう	鹿児島県姶良郡牧園町高千穂			霧島	霧島	アルカリ単純泉	\N	\N	50451	\N
3236	2153	鹿児島市内温泉	かごしましないおんせん	鹿児島県鹿児島市			鹿児島・桜島	鹿児島・桜島	アルカリ単純泉	\N	\N	\N	\N
3237	2154	古里温泉	ふるさとおんせん	鹿児島県鹿児島市古里町			鹿児島・桜島	鹿児島・桜島	硫黄泉	\N	\N	\N	\N
3238	2236	城山温泉	しろやまおんせん	鹿児島県国分市上小川4256			霧島	霧島	その他	\N	\N	50451	\N
3239	2265	北薩温泉	ほくさつおんせん	鹿児島県出水市六月田町941			北薩・川内	出水・阿久根	その他	\N	\N	\N	\N
3240	2288	霧島温泉	きりしまおんせん	鹿児島県姶良郡牧園町万膳626			霧島	霧島	単純温泉	\N	\N	50451	\N
3241	2395	猿ヶ城温泉	さるがじょうおんせん	鹿児島県垂水市高城1374			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
3242	2565	坂本温泉	さかもとおんせん	鹿児島県鹿児島郡三島村硫黄島			離島	吐喝喇列島	単純温泉	\N	\N	\N	\N
3243	3029	有村温泉	ありむらおんせん	鹿児島県鹿児島市古里町1078-64			鹿児島・桜島	鹿児島・桜島	塩化物泉	\N	\N	50847	\N
3244	3219	桃晃温泉	とうこうおんせん	鹿児島県出水市昭和町１１－２２			北薩・川内	出水・阿久根	その他	\N	\N	50452	\N
3245	3226	東郷温泉	とうごうおんせん	鹿児島県薩摩川内市東郷町斧渕１９４０番地１			北薩・川内	川内・いちき串木野	炭酸水素塩泉	\N	\N	50961	\N
3246	3230	奄美温泉　奄美の湯	あまみおんせん　あまみのゆ	鹿児島県大島郡瀬戸内町蘇刈９７０			離島	奄美大島	ナトリウム塩化物泉	\N	\N	50962	\N
3247	3254	財宝温泉	ざいほうおんせん	鹿児島県垂水市新観堂			垂水・大隅	垂水・大隅	アルカリ単純泉	\N	\N	50978	\N
3248	3279	財宝天神温泉	ざいほうてんじんおんせん	鹿児島県鹿屋市天神町３５６４－３			垂水・大隅	垂水・大隅	単純温泉	\N	\N	50978	\N
3249	1980	山田温泉	やまだおんせん	沖縄県国頭郡恩納村山田			西海岸・東海岸	西海岸	硫黄泉	\N	\N	50453	\N
3250	1981	三重城温泉	みいぐすくおんせん	沖縄県那覇市西3－2－1			那覇	那覇	塩化物泉	\N	\N	50946	\N
3251	1982	サザンリンクスリゾートホテル温泉	さざんりんくすりぞーとほてるおんせん	沖縄県島尻郡具志頭村字玻名城			南部	島尻	中性低張性高温泉	\N	\N	\N	\N
3252	2493	西表島温泉	いりおもてじまおんせん	沖縄県八重山郡竹富町高那243			離島	西表島・小浜島・竹富島	ナトリウム塩化物泉	\N	\N	50759	\N
3253	3000	シギラ黄金温泉	しぎらおうごんおんせん	沖縄県宮古島市上野字新里西本島１４０５－２２３			離島	宮古島	硫酸塩泉	\N	\N	50816	\N
3254	3105	天然温泉さしきの猿人の湯	てんねんおんせんさしきのえんじんのゆ	沖縄県南城市佐敷字新里1688			南部	島尻	弱アルカリ性低張性泉	\N	\N	50897	\N
3255	3134	琉球温泉	りゅうきゅうおんせん	沖縄県豊見城市瀬長１７４番地５２			南部	糸満	ナトリウム塩化物泉	\N	\N	50924	\N
3256	3162	ジュラ紀温泉　美ら海の湯	じゅらきおんせん　ちゅらうみのゆ	沖縄県国頭郡本部町字備瀬小浜原136番地1			本部・名護・国頭	本部・伊江島・水納島	ナトリウム塩化物泉	\N	\N	50935	\N
3257	3187	ちゃたん恵み温泉　美浜の湯	ちゃたんめぐみおんせん　みはまのゆ	沖縄県中頭郡北谷町字美浜2番地			沖縄市（コザ）・北谷・宜野湾	北谷・嘉手納	ナトリウム塩化物泉	\N	\N	50948	\N
3258	3257	伊計島天然温泉 ～黒潮の湯～	いけいじまてんねんおんせん　くろしおのゆ	沖縄県うるま市与那城伊計１２８６ 			西海岸・東海岸	東海岸	ナトリウム塩化物泉	\N	\N	50979	\N
3259	3294	西表島温泉　カンパネルラの湯	いりおもてじまおんせん　かんぱねるらのゆ	沖縄県八重山郡竹富町字南風見508‐205			離島	西表島・小浜島・竹富島	炭酸水素塩泉	\N	\N	50759	\N
\.


--
-- Data for Name: onsen_inns_onseninn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.onsen_inns_onseninn (id, inn_id, inn_name, inn_photo, inn_min_price, review_room, review_bath, review_breakfast, review_dinner, review_service, review_cleaness, rooms_total, baths_total, conditioner, convenience_store, hand_towel, razor, bath_towel, shampoo, dental_amenities, bathrobe, pajamas, yukata, free_wifi, bar_soap, body_wash, duvet, hairdryer, shower_cap, cotton_swab, onsui_toilet, hair_brush, onsen_id, category, service_leisure) FROM stdin;
2	304472	ホテルニュー幸林	images/inn_image_304472.jpg	5277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
3	350276	ホテル神居岩	images/inn_image_350276.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
4	353632	天然温泉天北の湯ドーミーイン稚内	images/inn_image_353632.jpg	3236	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
5	336525	ホテルおかべ汐彩亭	images/inn_image_336525.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
6	331800	ホテル奥田屋	images/inn_image_331800.jpg	4583	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
7	387192	稚内グランドホテル	images/inn_image_387192.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
8	328140	稚内温泉ホテル大将	images/inn_image_328140.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
9	399980	風の宿宗谷パレス	images/inn_image_399980.jpg	4814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
10	340866	稚内温泉ホテル喜登	images/inn_image_340866.jpg	3768	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
11	301516	ホテル御園	images/inn_image_301516.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
12	359660	ホテル滝川	images/inn_image_359660.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
13	394942	天然温泉神威の湯ドーミーイン旭川	images/inn_image_394942.jpg	2865	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	3	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
14	301108	剣淵温泉レークサイド桜岡	images/inn_image_301108.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	3	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
15	388190	五味温泉	images/inn_image_388190.jpg	4370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	3	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
16	357250	とままえ温泉ふわっと	images/inn_image_357250.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	5	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
17	393665	てしお温泉夕映	images/inn_image_393665.jpg	5907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	5	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
18	380791	旭温泉	images/inn_image_380791.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	5	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
19	319963	はぼろ温泉サンセットプラザ	images/inn_image_319963.jpg	9629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	5	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
20	373826	しょさんべつ温泉岬の湯	images/inn_image_373826.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	5	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
21	357858	音威子府住民保養センター天塩川温泉	images/inn_image_357858.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	5	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
22	327425	天然温泉 プレミアホテル-CABIN-旭川(旧ホテルパコ旭川)	images/inn_image_327425.jpg	1990	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	11	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
23	319959	森のゆ・花神楽	images/inn_image_319959.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	11	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
24	320246	北こぶし知床ホテル＆リゾート	images/inn_image_320246.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
26	365748	KIKI知床ナチュラルリゾート	images/inn_image_365748.jpg	8666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
27	372051	ホテル清さと	images/inn_image_372051.jpg	20064	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
28	317499	ホテル地のはて	images/inn_image_317499.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
29	316661	ホテル知床	images/inn_image_316661.jpg	7740	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
30	320778	知床天然温泉 ルートイングランティア知床 -斜里駅前-	images/inn_image_320778.jpg	5277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
31	317028	【世界自然遺産の宿】しれとこ村つくだ荘	images/inn_image_317028.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
32	359680	ホテル緑清荘	images/inn_image_359680.jpg	5018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
33	358302	ホテル季風クラブ知床	images/inn_image_358302.jpg	7638	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
34	342340	温泉民宿 酋長の家	images/inn_image_342340.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
35	361610	流氷の宿海に桂田（旧夕映えの宿国民宿舎桂田）	images/inn_image_361610.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
36	359672	知床ノーブルホテル	images/inn_image_359672.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
37	320084	知床夕陽のあたる家 ONSEN HOSTEL	images/inn_image_320084.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
38	347594	民宿たんぽぽ	images/inn_image_347594.jpg	4490	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
39	323464	羅臼の宿まるみ	images/inn_image_323464.jpg	5240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
40	300776	湯宿だいいち	images/inn_image_300776.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	22	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
41	327628	北天の丘あばしり湖鶴雅リゾート	images/inn_image_327628.jpg	11712	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	23	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
42	307968	オーベルジュ北の暖暖	images/inn_image_307968.jpg	13148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	23	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
43	347994	ホテル網走湖荘	images/inn_image_347994.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	23	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
44	309521	天都の宿網走観光ホテル（BBHホテルグループ）	images/inn_image_309521.jpg	4148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	23	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
45	325949	温泉旅館もとよし	images/inn_image_325949.jpg	4490	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	23	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
46	316599	お宿欣喜湯（旧川湯ホテルプラザ）	images/inn_image_316599.jpg	4537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	27	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
47	301574	川湯温泉ＫＫＲかわゆ（国家公務員共済組合連合会川湯保養所）	images/inn_image_301574.jpg	2759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	27	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
48	337273	川湯観光ホテル	images/inn_image_337273.jpg	4768	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	27	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
50	390232	温泉浪漫の宿湯の閣池田屋	images/inn_image_390232.jpg	12500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	27	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
51	360866	国民宿舎ホテル川湯パーク	images/inn_image_360866.jpg	3888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	27	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
52	346076	名湯の森ホテルきたふくろう	images/inn_image_346076.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	27	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
53	334293	屈斜路プリンスホテル	images/inn_image_334293.jpg	5462	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
54	340226	小さなオーベルジュてぃんくる	images/inn_image_340226.jpg	12037	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
55	317884	ペンションBirao	images/inn_image_317884.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
56	323776	ガストホフぱぴりお	images/inn_image_323776.jpg	6435	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
57	313098	奥屈斜路温泉ランプの宿森つべつ	images/inn_image_313098.jpg	8731	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
58	346967	きらの宿すばる	images/inn_image_346967.jpg	9074	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
59	312141	三香温泉	images/inn_image_312141.jpg	4351	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
60	325285	ホテルパークウェイ	images/inn_image_325285.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
61	360915	ワッカＢＢＢ	images/inn_image_360915.jpg	31000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
62	366033	ワッカヌプリ	images/inn_image_366033.jpg	35925	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
63	331888	屈斜路原野ユースゲストハウス	images/inn_image_331888.jpg	3611	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
64	348264	摩周温泉ホテル摩周	images/inn_image_348264.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
65	356869	にぶし温泉屈斜路湖荘	images/inn_image_356869.jpg	4537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
66	340046	湖畔の宿 屈斜路湖ホテル	images/inn_image_340046.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
67	398548	温泉民宿摩湖	images/inn_image_398548.jpg	2129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	28	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
68	332582	あかん遊久の里鶴雅	images/inn_image_332582.jpg	12833	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
69	364256	カムイの湯ラビスタ阿寒川	images/inn_image_364256.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
70	324579	ニュー阿寒ホテル	images/inn_image_324579.jpg	6814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
71	361192	あかん湖鶴雅ウイングス	images/inn_image_361192.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
72	334472	あかん鶴雅別荘鄙の座	images/inn_image_334472.jpg	27500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
74	322834	ホテル阿寒湖荘	images/inn_image_322834.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
75	386166	ホテル御前水	images/inn_image_386166.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
76	388627	温泉民宿山口	images/inn_image_388627.jpg	4305	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
77	341612	山水荘	images/inn_image_341612.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
78	311194	サークルハウス赤いベレー	images/inn_image_311194.jpg	3805	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
79	311625	阿寒湖温泉東邦館	images/inn_image_311625.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
80	387149	ホテルグリーンパークつるい	images/inn_image_387149.jpg	8750	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	37	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
81	377370	釧路山花温泉リフレ	images/inn_image_377370.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	37	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
82	315840	ラビスタ大雪山	images/inn_image_315840.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	38	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
83	341740	旭岳温泉湯元湧駒荘	images/inn_image_341740.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	38	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
84	333764	旭岳温泉ホテルディアバレー	images/inn_image_333764.jpg	6759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	38	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
85	331218	旭岳温泉ホテルベアモンテ	images/inn_image_331218.jpg	6759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	38	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
86	342210	御やどしきしま荘	images/inn_image_342210.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	38	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
87	356698	アートヴィレッジ杜季	images/inn_image_356698.jpg	18138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	38	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
88	395279	しこつ湖鶴雅リゾートスパ水の謌	images/inn_image_395279.jpg	16296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	40	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
89	317358	支笏湖第一寶亭留翠山亭	images/inn_image_317358.jpg	11550	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	40	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
90	341087	丸駒温泉旅館	images/inn_image_341087.jpg	6800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	40	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
91	303828	レイクサイドヴィラ翠明閣	images/inn_image_303828.jpg	25972	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	40	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
92	337480	休暇村支笏湖	images/inn_image_337480.jpg	8537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	40	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
93	367212	しこつ湖鶴雅別荘碧の座	images/inn_image_367212.jpg	67000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	40	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
94	330181	サロマ湖鶴雅リゾート	images/inn_image_330181.jpg	8148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	43	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
95	302884	北見天然温泉ホテルルートインＧｒａｎｄ北見駅前	images/inn_image_302884.jpg	4004	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	43	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
96	389965	北見天然温泉 ホテルルートイン北見大通西	images/inn_image_389965.jpg	3287	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	43	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
98	368955	北見温泉（ポンユ）三光荘	images/inn_image_368955.jpg	4694	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	43	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
99	354918	美白の湯宿大江本家	images/inn_image_354918.jpg	7361	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	44	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
100	303646	温根湯ホテル四季平安の館	images/inn_image_303646.jpg	5703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	44	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
101	331194	層雲峡朝陽亭	images/inn_image_331194.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
102	351084	層雲峡温泉朝陽リゾートホテル	images/inn_image_351084.jpg	8657	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
103	308034	ホテル大雪	images/inn_image_308034.jpg	9303	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
104	311723	層雲峡温泉ペンション銀河	images/inn_image_311723.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
105	325564	湯元銀泉閣	images/inn_image_325564.jpg	5300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
106	398560	層雲峡温泉 層雲峡観光ホテル	images/inn_image_398560.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
107	314351	ホテルノーザンロッジ	images/inn_image_314351.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
108	328745	層雲閣グランドホテル	images/inn_image_328745.jpg	7214	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
109	317415	天然温泉１００％マウントビューホテル	images/inn_image_317415.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
110	327106	HOTELKUMOI	images/inn_image_327106.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	48	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
111	330474	白金温泉郷森の旅亭びえい	images/inn_image_330474.jpg	18333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
112	310138	白金四季の森ホテルパークヒルズ	images/inn_image_310138.jpg	3564	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
113	312613	十勝岳温泉カミホロ荘	images/inn_image_312613.jpg	11574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
114	329401	大雪山白金観光ホテル	images/inn_image_329401.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
115	337872	湯元白金温泉ホテル	images/inn_image_337872.jpg	6620	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
116	394585	温泉ゲストハウス、美瑛白金の湯	images/inn_image_394585.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
117	399072	十勝岳温泉湯元凌雲閣	images/inn_image_399072.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
118	338168	フロンティア フラヌイ温泉	images/inn_image_338168.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	52	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
119	385336	新富良野プリンスホテル	images/inn_image_385336.jpg	7722	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	53	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
120	345283	SPA＆HOTELRESORTふらのラテール	images/inn_image_345283.jpg	8055	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	53	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
122	369383	ハイランドふらの	images/inn_image_369383.jpg	5400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	53	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
123	345549	占冠 湯の沢温泉森の四季	images/inn_image_345549.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	53	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
124	342622	山の旅籠 山湖荘	images/inn_image_342622.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	57	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
125	340961	糠平舘観光ホテル	images/inn_image_340961.jpg	4490	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	57	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
126	336226	糠平温泉ホテル	images/inn_image_336226.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	57	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
127	312051	東大雪ぬかびらユースホステル	images/inn_image_312051.jpg	4398	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	57	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
128	357650	ぬかびら温泉郷コテージプライマルステージ	images/inn_image_357650.jpg	7314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	57	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
129	309652	然別湖畔温泉ホテル風水	images/inn_image_309652.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	61	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
130	342509	十勝川温泉第一ホテル	images/inn_image_342509.jpg	9166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
131	311115	十勝川温泉富士ホテル	images/inn_image_311115.jpg	5231	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
132	334418	十勝川温泉観月苑	images/inn_image_334418.jpg	9675	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
133	310650	十勝川温泉三余庵	images/inn_image_310650.jpg	29944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
134	310011	笹井ホテル	images/inn_image_310011.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
135	361575	ホテルテトラリゾート十勝川	images/inn_image_361575.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
136	333397	ホテル大平原	images/inn_image_333397.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
137	328376	十勝川国際ホテル筒井	images/inn_image_328376.jpg	6111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	68	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
138	302871	天然温泉プレミアホテル-CABIN-帯広(旧ホテルパコ帯広)	images/inn_image_302871.jpg	2337	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	69	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
139	366268	十勝幕別天然温泉 十勝幕別温泉 グランヴィリオホテル	images/inn_image_366268.jpg	5694	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	69	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
140	312438	十勝ナウマン温泉ホテルアルコ	images/inn_image_312438.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	69	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
141	395438	幕別パークホテル悠湯館	images/inn_image_395438.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	69	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
142	323110	天然モール温泉ホテルルートイン帯広駅前	images/inn_image_323110.jpg	4050	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	69	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
143	390664	天然温泉ホテル鳳乃舞音更	images/inn_image_390664.jpg	3888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	69	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
144	358120	みついし昆布温泉蔵三	images/inn_image_358120.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	75	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
146	353695	天然温泉さくらの湯ホテルローレル	images/inn_image_353695.jpg	2759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	75	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
147	366540	沙流川温泉ひだか高原荘	images/inn_image_366540.jpg	4537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	75	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
148	330227	秩父別温泉 ちっぷ・ゆう＆ゆ	images/inn_image_330227.jpg	7138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	77	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
150	369832	満天の星空を堪能するリゾート芦別温泉スターライトホテル	images/inn_image_369832.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	79	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
151	392820	アグリ工房まあぶ	images/inn_image_392820.jpg	4050	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	79	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
152	358267	上砂川岳温泉パンケの湯	images/inn_image_358267.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	79	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
153	366910	グリーンパークしんとつかわ	images/inn_image_366910.jpg	5694	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	79	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
154	316306	青の洞窟温泉ピパの湯ゆ〜りん館	images/inn_image_316306.jpg	8240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
155	382490	ログホテルメープルロッジ	images/inn_image_382490.jpg	7300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
156	356504	ユンニの湯	images/inn_image_356504.jpg	5879	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
157	375340	なんぽろ温泉ハート＆ハート(南幌温泉)	images/inn_image_375340.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
158	345776	月形温泉ホテル	images/inn_image_345776.jpg	3333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
159	390628	北村温泉ホテル	images/inn_image_390628.jpg	4138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
160	394630	ながぬま温泉	images/inn_image_394630.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
161	369912	栗山温泉ホテルパラダイスヒルズ	images/inn_image_369912.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
162	376817	ホテルマウントレースイ	images/inn_image_376817.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
163	328201	うたしないチロルの湯	images/inn_image_328201.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
164	389960	シャトレーゼゴルフ＆スパリゾートホテル栗山	images/inn_image_389960.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	81	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
165	354184	湯の元温泉旅館	images/inn_image_354184.jpg	6092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	87	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
166	397526	札幌北広島クラッセホテル	images/inn_image_397526.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	91	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
167	393154	石狩天然温泉番屋の湯	images/inn_image_393154.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	91	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
168	350089	ふとみ銘泉万葉の湯	images/inn_image_350089.jpg	7038	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	91	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
170	319724	定山渓万世閣ホテルミリオーネ	images/inn_image_319724.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
171	319212	定山渓第一寶亭留 翠山亭	images/inn_image_319212.jpg	13125	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
172	315689	花もみじ	images/inn_image_315689.jpg	11648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
173	322254	定山渓ビューホテル	images/inn_image_322254.jpg	6388	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
174	352535	定山渓鶴雅リゾートスパ森の謌	images/inn_image_352535.jpg	15277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
175	339087	厨翠山	images/inn_image_339087.jpg	14175	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
176	333676	章月グランドホテル	images/inn_image_333676.jpg	12500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
177	384168	翠山亭倶楽部定山渓	images/inn_image_384168.jpg	15750	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
178	327601	奥定山渓温泉佳松御苑	images/inn_image_327601.jpg	20500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
179	326706	定山渓グランドホテル瑞苑	images/inn_image_326706.jpg	6620	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
180	368445	美味しい宿敷島定山渓別邸	images/inn_image_368445.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
181	350625	悠久の宿白糸	images/inn_image_350625.jpg	6805	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
182	387280	温泉旅館錦和荘	images/inn_image_387280.jpg	4259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
183	334650	女性のための宿翠蝶館	images/inn_image_334650.jpg	9975	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
184	341867	ホテル鹿の湯	images/inn_image_341867.jpg	6666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
185	352779	湯元旬の御宿まつの湯	images/inn_image_352779.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
186	316281	定山渓ホテル	images/inn_image_316281.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
187	359064	旅籠屋定山渓商店	images/inn_image_359064.jpg	6825	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
188	359412	ホテル山渓苑	images/inn_image_359412.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
189	385688	天然温泉樽前の湯ドーミーイン苫小牧	images/inn_image_385688.jpg	3375	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	100	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
190	313313	ホテル四季の風	images/inn_image_313313.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	100	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
191	399518	天然温泉灯の湯ドーミーインＰＲＥＭＩＵＭ小樽	images/inn_image_399518.jpg	4162	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	102	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
192	322040	運河の宿おたるふる川	images/inn_image_322040.jpg	8888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	102	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
194	311380	キロロ トリビュートポートフォリオホテル 北海道	images/inn_image_311380.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	102	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
195	335042	料亭湯宿銀鱗荘	images/inn_image_335042.jpg	34000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	102	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
196	343347	おたる宏楽園	images/inn_image_343347.jpg	17314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	103	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
197	336996	小樽朝里クラッセホテル	images/inn_image_336996.jpg	5601	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	103	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
198	329257	小樽・朝里川温泉ウィンケルビレッジ	images/inn_image_329257.jpg	5669	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	103	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
199	318192	小樽朝里川温泉ホテル武蔵亭	images/inn_image_318192.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	103	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
200	357124	小樽旅亭藏群	images/inn_image_357124.jpg	39000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	103	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
201	348376	朝里川温泉かんぽの宿小樽	images/inn_image_348376.jpg	6342	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	103	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
202	318685	ペンションシャドウクラッセ	images/inn_image_318685.jpg	6111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	103	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
203	361475	コテージアリスの里	images/inn_image_361475.jpg	5250	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	104	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
204	377914	いわない温泉ホテルグリーンパークいわない	images/inn_image_377914.jpg	10509	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	104	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
205	346240	いわない温泉おかえりなさい	images/inn_image_346240.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	104	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
206	307584	いわない高原ホテル	images/inn_image_307584.jpg	5879	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	104	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
207	379832	全室海側の宿盃温泉潮香荘	images/inn_image_379832.jpg	4250	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	104	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
208	360392	日・美・海villa	images/inn_image_360392.jpg	26800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	104	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
209	333020	ニセコノーザンリゾート・アンヌプリ	images/inn_image_333020.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
210	362483	月美の宿紅葉音	images/inn_image_362483.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
211	368020	ニセコ昆布温泉鶴雅別荘杢の抄	images/inn_image_368020.jpg	18333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
212	326792	湯元ニセコプリンスホテルひらふ亭	images/inn_image_326792.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
213	301953	木ニセコ	images/inn_image_301953.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
214	390965	ニセコ昆布温泉ホテル甘露の森	images/inn_image_390965.jpg	7409	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
215	387993	ニセコ東急リゾートホテルニセコアルペン	images/inn_image_387993.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
216	314410	湯ごもりの宿アダージョ	images/inn_image_314410.jpg	3888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
218	349293	ニセコ五色温泉旅館	images/inn_image_349293.jpg	3538	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
219	343035	綾ニセコ	images/inn_image_343035.jpg	7049	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
220	369954	ＴｈｅＶａｌｅＮｉｓｅｋｏ（ザ・ヴェール・ニセコ）	images/inn_image_369954.jpg	7870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
221	377858	ワン・ニセコ・リゾート・タワーズ	images/inn_image_377858.jpg	5101	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
222	337990	ＣｈａｌｅｔＩｖｙ（シャレーアイビー）	images/inn_image_337990.jpg	7777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
223	334677	ニセコアンヌプリ温泉湯心亭	images/inn_image_334677.jpg	5537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
224	318312	蘭越町交流促進センター幽泉閣	images/inn_image_318312.jpg	5138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
225	393676	旬の宿ニセコグランドホテル	images/inn_image_393676.jpg	5925	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
226	330955	スカイニセコ	images/inn_image_330955.jpg	10231	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
227	394492	くっちゃん温泉ホテルようてい	images/inn_image_394492.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
228	336210	ザ・グリーンリーフ・ニセコビレッジ	images/inn_image_336210.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
229	326328	ペンション＆コテージ 風みどり	images/inn_image_326328.jpg	8066	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
230	316561	ペンションティンカーベル	images/inn_image_316561.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
231	346832	ルスツリゾートホテル＆コンベンション	images/inn_image_346832.jpg	7777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	120	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
232	367792	ウェスティン ルスツリゾート	images/inn_image_367792.jpg	7842	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	120	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
233	322984	緑の風リゾートきたゆざわ	images/inn_image_322984.jpg	12578	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	122	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
234	342514	きたゆざわ森のソラニワ	images/inn_image_342514.jpg	10450	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	122	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
235	327710	湯元ホロホロ山荘	images/inn_image_327710.jpg	7650	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	122	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
236	314667	ばんけい温泉湯人家	images/inn_image_314667.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	122	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
237	350920	北湯沢温泉温泉民宿たかはし	images/inn_image_350920.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	122	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
238	326385	洞爺サンパレスリゾート＆スパ	images/inn_image_326385.jpg	8800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
239	384352	ザレイクビューＴＯＹＡ乃の風リゾート	images/inn_image_384352.jpg	15277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
264	349342	登別石水亭	images/inn_image_349342.jpg	8800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
241	301556	ザ・ウィンザーホテル洞爺リゾート＆スパ	images/inn_image_301556.jpg	12277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
242	332029	絶景の湯宿洞爺湖畔亭	images/inn_image_332029.jpg	8148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
243	327111	洞爺観光ホテル	images/inn_image_327111.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
244	352222	ザ・レイクスイート湖の栖	images/inn_image_352222.jpg	20925	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
245	380118	ゆとりろ洞爺湖	images/inn_image_380118.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
246	345588	洞爺湖温泉北海ホテル	images/inn_image_345588.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
247	371838	洞爺温泉ホテル華美	images/inn_image_371838.jpg	7685	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
248	394497	グランヴィレッヂ洞爺大和旅館アネックス	images/inn_image_394497.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
249	358567	天然豊浦温泉しおさい	images/inn_image_358567.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
250	341256	ホテルグランドトーヤ	images/inn_image_341256.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
251	307789	源泉の湯宿洞爺ごきらく亭	images/inn_image_307789.jpg	4053	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
252	359814	温泉旅館いこい荘	images/inn_image_359814.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
253	303038	昭和新山ユースホステル	images/inn_image_303038.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
254	327306	ホテル中の島	images/inn_image_327306.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
255	301648	湯宿大和旅館	images/inn_image_301648.jpg	3888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
256	336659	登別カルルス温泉湯元オロフレ荘	images/inn_image_336659.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	126	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
257	337848	深山の庵いわい	images/inn_image_337848.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	126	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
258	328059	登別カルルス温泉【 山静館-さんせいかん】〜源泉掛け流しの宿〜	images/inn_image_328059.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	126	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
259	322133	カルルス温泉鈴木旅館	images/inn_image_322133.jpg	4138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	126	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
260	364904	第一滝本館	images/inn_image_364904.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
261	311972	望楼ＮＯＧＵＣＨＩ登別	images/inn_image_311972.jpg	30092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
262	331184	登別温泉登別グランドホテル	images/inn_image_331184.jpg	9166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
263	318454	ホテルまほろば	images/inn_image_318454.jpg	11574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
266	320864	登別温泉郷滝乃家	images/inn_image_320864.jpg	28000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
267	312948	ホテルゆもと登別	images/inn_image_312948.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
268	319527	名湯の宿パークホテル雅亭	images/inn_image_319527.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
269	321916	登別万世閣	images/inn_image_321916.jpg	6222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
270	318626	御やど清水屋	images/inn_image_318626.jpg	14814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
271	304099	滝乃家別館玉乃湯	images/inn_image_304099.jpg	11800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
272	311313	旅亭花ゆら	images/inn_image_311313.jpg	22685	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
273	340692	滝本イン	images/inn_image_340692.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
274	383423	大型貸別荘優雅	images/inn_image_383423.jpg	100000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
275	340836	心のリゾート海の別邸ふる川	images/inn_image_340836.jpg	21157	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	129	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
276	377160	ピリカレラホテル	images/inn_image_377160.jpg	35000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	129	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
277	337532	ホテルルートインＧｒａｎｄ室蘭	images/inn_image_337532.jpg	5324	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	129	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
278	302836	ホテルいずみ	images/inn_image_302836.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	129	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
279	378390	虎杖浜温泉ホテル	images/inn_image_378390.jpg	4837	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	129	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
280	336191	虎杖浜天然温泉ホテルルートイン東室蘭駅前	images/inn_image_336191.jpg	5324	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	129	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
281	319802	ホテルオーシャン	images/inn_image_319802.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	129	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
282	374992	八雲温泉おぼこ荘	images/inn_image_374992.jpg	10370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	139	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
283	316197	クアプラザピリカ	images/inn_image_316197.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	139	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
284	398995	国民宿舎あわび山荘	images/inn_image_398995.jpg	4768	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	139	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
285	343475	見市温泉旅館	images/inn_image_343475.jpg	3333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	139	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
286	307266	温泉ホテル 八雲遊楽亭	images/inn_image_307266.jpg	6666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	139	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
287	352475	函館大沼 鶴雅リゾート エプイ	images/inn_image_352475.jpg	11203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
288	347970	ホテル・ラ・ジェント・プラザ函館北斗	images/inn_image_347970.jpg	2638	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
290	309788	函館大沼プリンスホテル	images/inn_image_309788.jpg	4256	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
291	348787	グリーンピア大沼	images/inn_image_348787.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
292	377314	東大沼温泉旅館留の湯	images/inn_image_377314.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
293	324568	湯の川プリンスホテル渚亭	images/inn_image_324568.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
294	399316	函館・湯の川温泉ホテル万惣	images/inn_image_399316.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
295	355415	ＨＡＫＯＤＡＴＥ海峡の風	images/inn_image_355415.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
296	393705	望楼ＮＯＧＵＣＨＩ函館	images/inn_image_393705.jpg	14051	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
297	377298	割烹旅館若松	images/inn_image_377298.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
298	335845	純和風旅館一乃松	images/inn_image_335845.jpg	12129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
299	348359	平成館海羊亭	images/inn_image_348359.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
300	329988	湯元啄木亭	images/inn_image_329988.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
301	312243	函館・湯の川温泉花びしホテル	images/inn_image_312243.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
302	355230	平成館しおさい亭別館花月	images/inn_image_355230.jpg	25925	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
303	320921	竹葉新葉亭	images/inn_image_320921.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
304	364258	湯の川温泉笑 函館屋	images/inn_image_364258.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
305	342256	平成館しおさい亭	images/inn_image_342256.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
306	306452	イマジン ホテル＆リゾート函館	images/inn_image_306452.jpg	7388	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
307	348863	函館湯の川温泉ホテル河畔亭	images/inn_image_348863.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
308	331966	湯の川観光ホテル祥苑【伊東園ホテルズ】	images/inn_image_331966.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
309	377188	湯の川温泉ホテル雨宮館	images/inn_image_377188.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
310	379227	ＫＫＲはこだて（国家公務員共済組合連合会湯の川保養所）	images/inn_image_379227.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
311	371975	大黒屋旅館	images/inn_image_371975.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
312	300095	ホテルテトラ湯の川温泉	images/inn_image_300095.jpg	2962	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
314	375336	湯の川温泉ホテルかもめ館	images/inn_image_375336.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
315	324771	函館市湯の川湯元漁火館	images/inn_image_324771.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
316	326427	湯川温泉新松	images/inn_image_326427.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
317	356072	リバーサイドホテル	images/inn_image_356072.jpg	3981	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
318	340565	札幌プリンスホテル	images/inn_image_340565.jpg	3305	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
319	327602	JRタワーホテル日航札幌	images/inn_image_327602.jpg	8842	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
320	313982	天然温泉プレミアホテル-CABIN-札幌(旧ホテルパコJrススキノ)	images/inn_image_313982.jpg	3287	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
321	301014	シャトレーゼ ガトーキングダムサッポロ ホテル＆スパリゾート	images/inn_image_301014.jpg	8055	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
322	335982	ジャスマックプラザホテル	images/inn_image_335982.jpg	8796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
323	329923	ホテルマイステイズプレミア札幌パーク（旧アートホテルズ札幌）	images/inn_image_329923.jpg	3958	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
324	328431	ホテルモントレエーデルホフ札幌	images/inn_image_328431.jpg	4814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
325	328874	ホテルさっぽろ弥生	images/inn_image_328874.jpg	2731	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	167	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
326	344121	温泉旅館矢野	images/inn_image_344121.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	170	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
327	380254	楠旅館	images/inn_image_380254.jpg	11111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	176	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
328	366554	ホテルモアン	images/inn_image_366554.jpg	7592	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	176	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
329	318946	湯元尾岱沼温泉シーサイドホテル	images/inn_image_318946.jpg	8100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	176	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
330	399082	べっかい郊楽苑	images/inn_image_399082.jpg	5648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	176	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
331	351376	アイランドインリシリ	images/inn_image_351376.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	177	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
332	366032	ホテル利尻	images/inn_image_366032.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	177	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
333	361763	田中家ひなげし館	images/inn_image_361763.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	177	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
334	390332	旅館雪国	images/inn_image_390332.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	177	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
335	310722	利尻富士観光ホテル	images/inn_image_310722.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	177	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
336	312026	利尻マリンホテル	images/inn_image_312026.jpg	11203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	177	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
338	363985	天然温泉天都の湯ドーミーイン網走	images/inn_image_363985.jpg	3467	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	192	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
339	379944	湯元ホテル山水美肌の湯	images/inn_image_379944.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	192	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
340	363688	天然温泉幣舞の湯ラビスタ釧路川（ドーミーインチェーン）	images/inn_image_363688.jpg	3699	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	193	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
341	303000	天然温泉ホテルパコ釧路	images/inn_image_303000.jpg	2314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	193	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
342	365457	ホテル函館ひろめ荘	images/inn_image_365457.jpg	9814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	194	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
343	398267	温泉ホテルきたひやま	images/inn_image_398267.jpg	5300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	203	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
344	310605	花れぶん	images/inn_image_310605.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	226	12	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
345	380800	ホテル礼文	images/inn_image_380800.jpg	11111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	226	12	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
346	385905	礼文島プチホテル コリンシアン	images/inn_image_385905.jpg	18333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	226	12	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
347	348108	マウレ山荘（２０１８年夏本館リニューアル）	images/inn_image_348108.jpg	16203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	251	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
348	377830	湯宿くったり温泉レイクイン	images/inn_image_377830.jpg	5740	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	253	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
349	399088	龍乃湯温泉	images/inn_image_399088.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	257	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
350	363796	ホテル美し乃湯温泉	images/inn_image_363796.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	258	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
351	316390	しほろ温泉「プラザ緑風」	images/inn_image_316390.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	264	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
352	313170	スーパーホテルＰｒｅｍｉｅｒ帯広駅前拓聖の湯(8/8オープン)	images/inn_image_313170.jpg	2546	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	264	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
353	388061	斜里温泉湯元館	images/inn_image_388061.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	265	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
354	316649	しんしのつ温泉たっぷの湯	images/inn_image_316649.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	275	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
355	379646	うずら温泉	images/inn_image_379646.jpg	4292	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	277	12	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
356	316505	バリアフリーホテルあすなろ	images/inn_image_316505.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	279	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
357	336165	ホテルノースキング	images/inn_image_336165.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	289	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
358	316513	星野リゾート界 津軽	images/inn_image_316513.jpg	8657	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	296	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
359	322350	大鰐温泉不二やホテル	images/inn_image_322350.jpg	5694	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	296	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
360	355700	正観湯温泉旅館	images/inn_image_355700.jpg	4750	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	296	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
362	347590	温泉民宿ヤマニ分館	images/inn_image_347590.jpg	4490	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	296	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
363	320212	むつグランドホテル	images/inn_image_320212.jpg	5790	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	297	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
364	339686	坪田旅館	images/inn_image_339686.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	297	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
365	359544	まかど観光ホテル	images/inn_image_359544.jpg	8800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	297	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
366	335070	ホテルニュー下風呂	images/inn_image_335070.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	297	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
367	329211	下風呂温泉かどや旅館	images/inn_image_329211.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	297	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
368	334257	薬研温泉薬研荘	images/inn_image_334257.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	297	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
369	331520	民宿あすなろ	images/inn_image_331520.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	297	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
370	325111	南部屋・海扇閣（なんぶや・かいせんかく）	images/inn_image_325111.jpg	6620	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
371	380010	棟方志功ゆかりの宿椿館	images/inn_image_380010.jpg	6175	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
372	333379	津軽藩本陣の宿旅館柳の湯	images/inn_image_333379.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
373	323677	絶景の宿浅虫さくら観光ホテル	images/inn_image_323677.jpg	10800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
374	324328	宿屋つばき	images/inn_image_324328.jpg	5319	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
375	344450	浅虫温泉辰巳館（たつみかん）	images/inn_image_344450.jpg	8796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
376	323968	ホテル秋田屋	images/inn_image_323968.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
377	370809	浅虫温泉旅館すみれ荘	images/inn_image_370809.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	306	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
378	307225	星野リゾート奥入瀬渓流ホテル	images/inn_image_307225.jpg	12500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
379	312853	野の花焼山荘	images/inn_image_312853.jpg	5601	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
380	317731	十和田プリンスホテル	images/inn_image_317731.jpg	3907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
381	330586	十和田湖レークビューホテル	images/inn_image_330586.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
382	344779	奥入瀬森のホテル	images/inn_image_344779.jpg	13500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
383	346069	十和田湖畔温泉とわだこ賑山亭	images/inn_image_346069.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
384	316734	ホテル十和田荘	images/inn_image_316734.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
386	305624	奥入瀬グリーンホテル	images/inn_image_305624.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
387	317852	十和田湖レークサイドホテル	images/inn_image_317852.jpg	6425	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
388	366382	民宿春山荘	images/inn_image_366382.jpg	6046	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
389	348282	十和田湖畔温泉十和田湖山荘	images/inn_image_348282.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
390	384891	十和田湖温泉遊魚荘	images/inn_image_384891.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
391	310596	寒水沢温泉八甲田リゾートホテル	images/inn_image_310596.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	322	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
392	325838	ホテルグランメール山海荘	images/inn_image_325838.jpg	6620	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
393	329068	鰺ヶ沢温泉水軍の宿	images/inn_image_329068.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
394	382696	ロックウッド・ホテル＆スパ	images/inn_image_382696.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
395	320773	津軽のお宿南田温泉ホテルアップルランド	images/inn_image_320773.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
396	312508	花禅の庄	images/inn_image_312508.jpg	13287	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
397	358086	山のホテル	images/inn_image_358086.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
398	339163	黒石温泉郷落合温泉かねさだ旅館	images/inn_image_339163.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
399	340404	ホテルあずまし屋	images/inn_image_340404.jpg	5900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
400	312987	旅の宿斉川	images/inn_image_312987.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
401	321716	大秋温泉ブナの里白神館	images/inn_image_321716.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
402	311408	＜落合温泉＞小さなお宿南風館	images/inn_image_311408.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
403	311978	稲垣温泉ホテル花月亭	images/inn_image_311978.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	325	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
404	315134	羽州路の宿あいのり	images/inn_image_315134.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	338	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
405	315884	星と森のロマントピア	images/inn_image_315884.jpg	6100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	368	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
406	373484	Ｈｏｔｅｌ＆Ｓｐａ青森センターホテル	images/inn_image_373484.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	369	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
407	398604	座敷わらし伝説の宿緑風荘	images/inn_image_398604.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	372	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
408	328295	金田一温泉仙養舘	images/inn_image_328295.jpg	7598	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	372	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
410	356664	きたぐに旅館	images/inn_image_356664.jpg	4150	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	372	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
411	345672	ホテル安比グランド本館＆タワー	images/inn_image_345672.jpg	5833	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	378	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
412	336916	塩の湯笑顔で若返る新安比温泉静流閣	images/inn_image_336916.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	378	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
413	321693	モルデンの湯ラビスタ安比高原	images/inn_image_321693.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	378	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
414	324250	安比ヒルズ白樺の森（旧安比グランドヴィラ）	images/inn_image_324250.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	378	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
415	326514	安比八幡平の食の宿四季館彩冬	images/inn_image_326514.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
416	383251	八幡平ハイツ	images/inn_image_383251.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
417	378018	旬菜フレンチ＆貸切温泉の小さな宿Beaverビーバー	images/inn_image_378018.jpg	11500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
418	322063	八幡平リゾート八幡平マウンテンホテル	images/inn_image_322063.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
419	328262	アクティブリゾーツ 岩手八幡平	images/inn_image_328262.jpg	5833	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
420	344746	天然温泉の宿安暖庭(アンダンテ)	images/inn_image_344746.jpg	7870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
421	359474	岩手山焼走り温泉いこいの村岩手	images/inn_image_359474.jpg	8518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
422	364426	八幡平南温泉旭日之湯	images/inn_image_364426.jpg	3657	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
423	362806	八幡平大沼茶屋湖	images/inn_image_362806.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
424	375104	クボタロッジ	images/inn_image_375104.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
425	313734	ペンションアドバンテージ	images/inn_image_313734.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
426	351859	温泉ゲストハウスやすもり	images/inn_image_351859.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
427	353792	ペンションあんとる・ど・めえる	images/inn_image_353792.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
428	314094	ペンション日の出	images/inn_image_314094.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
429	321264	温泉＆グルメパレット	images/inn_image_321264.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
430	337108	ペンションムース	images/inn_image_337108.jpg	6700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
431	322395	ペンションフレンズ	images/inn_image_322395.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
432	301590	天然温泉付ペンション＆貸別荘レンガ館	images/inn_image_301590.jpg	46296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
434	342713	ホテル森の風鶯宿	images/inn_image_342713.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
435	310728	雫石プリンスホテル	images/inn_image_310728.jpg	3629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
436	354125	ゆこたんの森	images/inn_image_354125.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
437	328961	休暇村岩手網張温泉	images/inn_image_328961.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
438	354280	長栄館-生まれたての「美肌の湯」を愉しむ-源泉かけ流し100%	images/inn_image_354280.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
439	344748	鶯宿温泉 ホテル加賀助	images/inn_image_344748.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
440	381610	健康と美のラドン岩盤浴鶯宿温泉赤い風車	images/inn_image_381610.jpg	5070	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
441	361602	鶯宿温泉元湯源泉かけ流しの宿川長（旧：川長山荘）	images/inn_image_361602.jpg	4900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
442	332277	鶯宿温泉レムナント鴬宿	images/inn_image_332277.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
443	342522	ホテル偕楽苑	images/inn_image_342522.jpg	6342	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
444	333697	ロッヂたちばな	images/inn_image_333697.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
445	349128	寿広園	images/inn_image_349128.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
446	340037	温泉民宿あけぼの荘	images/inn_image_340037.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
447	368240	ニュー鶯山荘	images/inn_image_368240.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
448	346305	温泉民宿栄弥	images/inn_image_346305.jpg	2666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
449	332367	ペンションさんりんしゃ	images/inn_image_332367.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
450	315624	鶯宿温泉清光荘	images/inn_image_315624.jpg	5400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
451	326094	民宿とちない	images/inn_image_326094.jpg	4438	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
452	315107	小枝旅館	images/inn_image_315107.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	388	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
453	346304	盛岡つなぎ温泉ホテル紫苑	images/inn_image_346304.jpg	6981	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
454	343029	別荘佳景	images/inn_image_343029.jpg	22400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
455	355716	四季亭	images/inn_image_355716.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
456	320890	盛岡つなぎ温泉愛真館	images/inn_image_320890.jpg	5900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
458	322430	菅旅舘	images/inn_image_322430.jpg	4097	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
459	314228	つなぎ温泉 癒しの宿 ロデム	images/inn_image_314228.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
460	334220	旅染屋山いち	images/inn_image_334220.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
461	308715	温泉民宿山新	images/inn_image_308715.jpg	2314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
462	397784	地方職員共済組合繋保養所清温荘	images/inn_image_397784.jpg	4619	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
463	310458	結びの宿愛隣館 (あいりんかん)	images/inn_image_310458.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
464	397230	花巻温泉郷山の神温泉優香苑	images/inn_image_397230.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
466	324827	游泉志だて	images/inn_image_324827.jpg	12152	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
467	315233	千二百年湯めぐりの里大沢温泉「山水閣」	images/inn_image_315233.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
468	373645	【鉛温泉・藤三旅館】岩手花巻温泉郷	images/inn_image_373645.jpg	3200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
469	364940	湯の杜ホテル志戸平	images/inn_image_364940.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
470	343370	花巻温泉ホテル紅葉館（こうようかん）	images/inn_image_343370.jpg	5462	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
471	373729	「藤三旅館・別邸」 鉛温泉心の刻十三月	images/inn_image_373729.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
472	314822	悠の湯風の季	images/inn_image_314822.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
473	302506	花巻温泉ホテル千秋閣(せんしゅうかく）	images/inn_image_302506.jpg	5277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
474	305012	湯めぐりの宿花巻温泉ホテル花巻３つのホテルで温泉三昧	images/inn_image_305012.jpg	5277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
475	306272	中嶋旅館	images/inn_image_306272.jpg	5231	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
476	314129	花巻温泉郷台温泉やまゆりの宿	images/inn_image_314129.jpg	12800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
477	312260	観光荘	images/inn_image_312260.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
478	331960	千二百年の湯めぐり大沢温泉賢治ゆかりの自炊部「湯治屋」	images/inn_image_331960.jpg	2514	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
479	316984	渡り温泉別邸楓	images/inn_image_316984.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
480	323777	味めぐりの宿割烹旅館廣美亭	images/inn_image_323777.jpg	9074	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
482	310847	朝夕個室食と貸切風呂の宿花巻台温泉松田屋旅館	images/inn_image_310847.jpg	3870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
483	338042	花巻・台温泉吉野屋旅館	images/inn_image_338042.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
484	363939	旅館かねがや	images/inn_image_363939.jpg	3938	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
485	394250	岩手花巻台温泉旅館ほっと・彩そめや	images/inn_image_394250.jpg	3361	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
486	397832	渡り温泉ホテルさつき	images/inn_image_397832.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
487	302565	【山人-yamado-】温泉と森の滋味を愉しむ大人の隠れ宿	images/inn_image_302565.jpg	19000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
488	333244	四季彩の宿ふる里	images/inn_image_333244.jpg	6759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
489	361750	世寿美屋旅館	images/inn_image_361750.jpg	10138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
490	392060	湯川温泉食べる宿萬鷹旅館	images/inn_image_392060.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
491	380196	高繁旅館	images/inn_image_380196.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
492	389212	湯川温泉新清館	images/inn_image_389212.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
493	332403	湯田温泉峡湯本温泉ホテル対滝閣（たいりゅうかく）	images/inn_image_332403.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
494	395920	せせらぎの宿吉野屋	images/inn_image_395920.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
495	353937	御宿末広	images/inn_image_353937.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
496	379160	湯川温泉春山荘本館	images/inn_image_379160.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
497	355280	旅館一城	images/inn_image_355280.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	408	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
498	314662	【３種の異なる泉質と四季の郷土料理】美人の湯瀬美温泉	images/inn_image_314662.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	412	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
499	328968	夏油温泉観光ホテル	images/inn_image_328968.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	412	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
500	314062	夏油温泉元湯夏油	images/inn_image_314062.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	412	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
501	322667	夏油高原スキー場スキーヤーズベット兎森の湯	images/inn_image_322667.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	412	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
502	359954	美人の湯山王山温泉瑞泉郷（旧：矢びつ温泉 瑞泉閣）	images/inn_image_359954.jpg	5600	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	418	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
503	305721	祭畤温泉（まつるべ温泉）かみくら	images/inn_image_305721.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	418	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
504	324525	厳美渓温泉いつくし園	images/inn_image_324525.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	418	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
506	354254	ホテル奥中山高原	images/inn_image_354254.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	446	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
507	367842	鳴子温泉湯元吉祥	images/inn_image_367842.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
508	321778	大江戸温泉物語鳴子温泉ますや	images/inn_image_321778.jpg	6574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
509	373124	鳴子ホテル	images/inn_image_373124.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
510	335435	大江戸温泉物語鳴子温泉幸雲閣	images/inn_image_335435.jpg	7156	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
511	336972	伝統の宿旅館すがわら	images/inn_image_336972.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
512	316351	元祖「うなぎ湯」の宿ゆさや旅館	images/inn_image_316351.jpg	12777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
513	372635	越後屋旅館	images/inn_image_372635.jpg	5600	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
514	311615	東五郎の湯高東旅館	images/inn_image_311615.jpg	3929	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
515	342408	旅館大沼	images/inn_image_342408.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
516	351952	源蔵の湯鳴子観光ホテル	images/inn_image_351952.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
517	322547	名湯秘湯うなぎ湯の宿旬樹庵琢ひで	images/inn_image_322547.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
518	375215	旅館三之亟湯（さんのじょうゆ）	images/inn_image_375215.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
519	374784	大人の隠れ家鳴子風雅	images/inn_image_374784.jpg	5055	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
520	319539	東鳴子温泉旅館紅せん	images/inn_image_319539.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
521	344900	ペンション森りんこ	images/inn_image_344900.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
522	339912	こはく湯の宿中鉢	images/inn_image_339912.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
523	334620	リゾートパークホテルオニコウベ	images/inn_image_334620.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
524	399060	山ふところの宿みやま	images/inn_image_399060.jpg	4300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
525	326460	旅館ゆさ	images/inn_image_326460.jpg	6400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
526	391225	旅館東多賀の湯	images/inn_image_391225.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
527	395907	旅館なんぶ屋	images/inn_image_395907.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
528	316059	扇屋	images/inn_image_316059.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
530	386010	仙庄館	images/inn_image_386010.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
531	369168	久田旅館	images/inn_image_369168.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
532	328545	天恵の名湯いさぜん旅館	images/inn_image_328545.jpg	3600	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
533	366316	鳴子やすらぎ荘(船員保険保養所)	images/inn_image_366316.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
534	339147	旅館弁天閣	images/inn_image_339147.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
535	321624	鳴子温泉郷勘七湯	images/inn_image_321624.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
536	374655	湯治宿黒湯の高友旅館	images/inn_image_374655.jpg	4064	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
537	318287	湯あみの宿 ぬまくら	images/inn_image_318287.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
538	391697	４種の源泉鳴子温泉義経ゆかりの湯姥の湯	images/inn_image_391697.jpg	1700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
539	371942	なかやま山荘	images/inn_image_371942.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
540	395182	民宿旅館二宮荘	images/inn_image_395182.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
541	346462	檜風呂の宿星の湯旅館	images/inn_image_346462.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
542	313268	ホテルニューあらお	images/inn_image_313268.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
543	334470	鳴子パールホテルいで湯亭	images/inn_image_334470.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
544	348735	作並温泉ゆづくしＳａｌｏｎ一の坊	images/inn_image_348735.jpg	15800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	456	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
545	320320	作並温泉【創作料理と展望露天＆総大理石風呂の宿】湯の原ホテル	images/inn_image_320320.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	456	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
546	389931	仙台・作並温泉鷹泉閣岩松旅館	images/inn_image_389931.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	456	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
547	321312	仙台・作並Ｌａ楽リゾートホテル グリーングリーン	images/inn_image_321312.jpg	7962	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	456	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
548	321727	かたくりの宿	images/inn_image_321727.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	456	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
549	309236	仙台秋保温泉ホテル瑞鳳（ずいほう）	images/inn_image_309236.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
550	318193	伝承千年の宿佐勘	images/inn_image_318193.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
551	320759	仙台・秋保温泉篝火の湯緑水亭	images/inn_image_320759.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
552	382760	仙台秋保温泉迎賓館櫻離宮	images/inn_image_382760.jpg	13888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
554	323578	秋保温泉ホテルニュー水戸屋	images/inn_image_323578.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
555	356472	仙台 秋保温泉ホテルきよ水	images/inn_image_356472.jpg	12962	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
556	378924	奥州秋保温泉蘭亭	images/inn_image_378924.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
557	313607	仙台・秋保温泉ホテル華乃湯	images/inn_image_313607.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
558	395778	創業寛永二年仙台秋保温泉岩沼屋	images/inn_image_395778.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
559	364023	秋保リゾートホテルクレセント	images/inn_image_364023.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
560	379728	秋保の郷ばんじ家	images/inn_image_379728.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
561	320649	こころ和む名湯の宿佐藤屋旅館	images/inn_image_320649.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
562	309678	ＫＹＯＵＢＡＲＬＯＵＮＧＥ＆ＩＮＮ	images/inn_image_309678.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
563	374720	ホテルニュー水戸屋アネックス	images/inn_image_374720.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
564	356409	秋保温泉茶寮宗園	images/inn_image_356409.jpg	35000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
566	313826	「蔵王の森」がつくる美と健康の温泉宿ゆと森倶楽部	images/inn_image_313826.jpg	16738	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
567	375724	星灯りの宿まほろば	images/inn_image_375724.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
568	302396	温泉山荘だいこんの花	images/inn_image_302396.jpg	20000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
569	376226	竹泉荘Ｍｔ．ＺａｏＯｎｓｅｎＲｅｓｏｒｔ＆Ｓｐａ	images/inn_image_376226.jpg	17962	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
570	320753	遠刈田温泉バーデン家壮鳳	images/inn_image_320753.jpg	6222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
571	321069	オーベルジュ別邸山風木	images/inn_image_321069.jpg	23000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
572	315325	蔵王連峰230度の眺望＆12の温泉 かっぱの宿 旅館三治郎	images/inn_image_315325.jpg	10862	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
573	324254	旬菜湯宿大忠	images/inn_image_324254.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
574	315027	アクティブリゾーツ 宮城蔵王	images/inn_image_315027.jpg	4074	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
575	313230	大沼旅館	images/inn_image_313230.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
576	360984	たまや旅館	images/inn_image_360984.jpg	6200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
578	386650	蔵王四季亭	images/inn_image_386650.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
579	335926	遠刈田温泉旅館源兵衛	images/inn_image_335926.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
580	327040	たびの邸宅蔵王みやぎＨＯＭＡＮＮＣＯＮＣＥＰＴ	images/inn_image_327040.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
581	343152	ペンションどんぐり	images/inn_image_343152.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
582	327891	コットンくらぶ	images/inn_image_327891.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
583	315917	湯遊び宿旬樹庵さんさ亭	images/inn_image_315917.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
584	337126	ペンションそらまめ	images/inn_image_337126.jpg	5833	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
585	381461	一宿一飯湯坊旬樹庵さんさ亭げんぶ館	images/inn_image_381461.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
586	322683	Ｔロッジ遠刈田ＧＲＡＮ	images/inn_image_322683.jpg	12962	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
587	312522	流辿別邸観山聴月（かんざんちょうげつ）	images/inn_image_312522.jpg	19000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	471	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
588	393809	青根温泉一棟温泉宿星月	images/inn_image_393809.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	471	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
589	317413	山景の宿流辿（りゅうせん）	images/inn_image_317413.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	471	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
590	355965	湯元不忘閣	images/inn_image_355965.jpg	16500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	471	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
591	392184	朝夕個室料亭で＜森の晩餐＞をいただく美食宿時音の宿湯主一條	images/inn_image_392184.jpg	15138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	473	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
592	399110	四季の宿みちのく庵	images/inn_image_399110.jpg	16666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	473	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
593	335291	にごり湯の宿湯守木村屋	images/inn_image_335291.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	473	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
594	344086	鎌先温泉すゞきや旅館（すずきや）	images/inn_image_344086.jpg	5100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	473	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
595	353654	最上屋旅館	images/inn_image_353654.jpg	4400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	473	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
596	365049	ホテルいづみや	images/inn_image_365049.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	475	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
597	308160	南三陸ホテル観洋	images/inn_image_308160.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	483	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
598	338076	気仙沼プラザホテル	images/inn_image_338076.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	484	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
599	310253	サンマリン気仙沼ホテル観洋	images/inn_image_310253.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	484	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
600	320167	大江戸温泉物語松島温泉ホテル壮観	images/inn_image_320167.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
602	312632	絹肌の湯松島温泉松島センチュリーホテル	images/inn_image_312632.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
603	312115	松島温泉小松館好風亭	images/inn_image_312115.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
604	328928	松島温泉元湯ホテル海風土	images/inn_image_328928.jpg	18518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
605	352936	ホテル絶景の館	images/inn_image_352936.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
606	390648	旅亭雲静庵	images/inn_image_390648.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
607	307647	ホテル大松荘	images/inn_image_307647.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
608	319019	滝ノ原温泉四季の味宿割烹ちどり荘	images/inn_image_319019.jpg	9074	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
609	305062	古川天然温泉ホテルルートイン古川駅前(宮城県)	images/inn_image_305062.jpg	4513	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	486	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
610	336928	ハイルザーム栗駒	images/inn_image_336928.jpg	6574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	487	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
611	371459	新湯温泉くりこま荘	images/inn_image_371459.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	487	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
612	392834	沢乙温泉里山旬味うちみ旅館	images/inn_image_392834.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	488	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
613	368565	乳頭温泉郷妙乃湯	images/inn_image_368565.jpg	12100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	491	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
614	330512	山の宿	images/inn_image_330512.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	491	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
615	399043	孫六温泉	images/inn_image_399043.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	491	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
616	312043	大釜温泉	images/inn_image_312043.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	491	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
617	347591	縄文のふる里大湯温泉ホテル鹿角	images/inn_image_347591.jpg	5800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	494	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
618	338650	５つの源泉掛け流し和風宿岡部荘	images/inn_image_338650.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	494	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
619	373412	大館雪沢温泉郷清風荘	images/inn_image_373412.jpg	4259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	494	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
620	360372	雪沢温泉大雪	images/inn_image_360372.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	494	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
621	383150	宿花海館	images/inn_image_383150.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	494	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
622	355064	御宿馬ぶち	images/inn_image_355064.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	494	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
623	324840	男鹿温泉結いの宿別邸つばき	images/inn_image_324840.jpg	9450	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	501	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
624	318288	元湯雄山閣	images/inn_image_318288.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	501	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
626	335193	男鹿ホテル	images/inn_image_335193.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	501	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
627	360962	セイコーグランドホテル	images/inn_image_360962.jpg	5400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	501	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
628	314606	男鹿萬盛閣	images/inn_image_314606.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	501	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
629	323257	温泉旅館ゆもと（旧湯本ホテル）	images/inn_image_323257.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	501	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
630	321613	海と入り陽の宿帝水秋田男鹿半島戸賀湾を望む温泉旅館	images/inn_image_321613.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	502	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
631	319164	四季彩り秋田づくし湯瀬ホテル	images/inn_image_319164.jpg	7222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	509	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
632	396598	ホテルグランド天空(旧ウェルハートピア田沢湖）	images/inn_image_396598.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
633	322452	休暇村乳頭温泉郷	images/inn_image_322452.jpg	11500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
634	316275	駒ヶ岳温泉	images/inn_image_316275.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
635	341614	天然温泉田沢湖レイクリゾート(旧：ホテル森の風田沢湖)	images/inn_image_341614.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
636	320848	ロッジアイリス	images/inn_image_320848.jpg	5416	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
637	324014	ヒュッテビルケ	images/inn_image_324014.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
638	314286	田沢湖高原リゾートホテルニュースカイ	images/inn_image_314286.jpg	8194	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
639	326136	田沢湖高原水沢温泉郷温泉旅館青荷山荘	images/inn_image_326136.jpg	6800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
640	322771	田沢高原ホテル	images/inn_image_322771.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
641	331246	湯治湯坊旬樹庵ハイランドホテル山荘	images/inn_image_331246.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
642	322216	プラザホテル山麓荘別館四季彩	images/inn_image_322216.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
643	349030	ペンション白い星	images/inn_image_349030.jpg	8287	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
644	399626	プラザホテル山麓荘	images/inn_image_399626.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
645	307786	露天風呂水沢温泉	images/inn_image_307786.jpg	3615	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
646	315805	駒ケ岳グランドホテル	images/inn_image_315805.jpg	7268	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
647	395931	ロッヂヨーデル	images/inn_image_395931.jpg	6342	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
648	319338	どんぐり山荘	images/inn_image_319338.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
650	322210	ホテル湖心亭	images/inn_image_322210.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
651	326392	象潟夕日の宿さんねむ温泉	images/inn_image_326392.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	542	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
652	355645	象潟温泉 たつみ寛洋ホテル	images/inn_image_355645.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	542	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
653	302794	ホテルプラザアネックス横手	images/inn_image_302794.jpg	4722	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
654	324228	旅館多郎兵衛	images/inn_image_324228.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
655	369366	小安峡温泉湯の宿元湯くらぶ	images/inn_image_369366.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
656	337419	横手温泉ホテルプラザ迎賓	images/inn_image_337419.jpg	6800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
657	306052	ホテルウェルネス横手路（HMIホテルグループ）	images/inn_image_306052.jpg	5833	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
658	307019	小安峡温泉お宿山の抄	images/inn_image_307019.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
659	311336	上畑温泉さわらび	images/inn_image_311336.jpg	3138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
660	309104	スパ＆リゾートホテル秋の宮山荘	images/inn_image_309104.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
661	300539	龍門亭千葉旅館	images/inn_image_300539.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
662	347670	南郷（夢）温泉共林荘	images/inn_image_347670.jpg	5925	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
663	394324	山の民宿鳳	images/inn_image_394324.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
664	314195	新五郎湯	images/inn_image_314195.jpg	4200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
665	353962	小安峡の宿こまくさ	images/inn_image_353962.jpg	7777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
666	314624	旅館松葉館	images/inn_image_314624.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	551	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
667	319776	いちゑ	images/inn_image_319776.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	574	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
668	325531	伊勢堂岱温泉縄文の湯	images/inn_image_325531.jpg	4712	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	592	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
669	301671	創業参百五十年五つ星の宿萬国屋	images/inn_image_301671.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	593	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
670	310710	認定5つ星緑と人の優しさに包まれる癒しの湯宿たちばなや	images/inn_image_310710.jpg	8250	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	593	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
671	391660	高見屋別邸 久遠 -KUON-	images/inn_image_391660.jpg	7300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	593	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
672	397130	かしわや旅館	images/inn_image_397130.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	593	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
674	379066	癒しの源泉かけ流しの宿温海荘	images/inn_image_379066.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	593	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
675	311789	絶景の夕陽に心癒され庄内の美味を堪能游水亭いさごや	images/inn_image_311789.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
676	392100	海辺のお宿一久	images/inn_image_392100.jpg	15100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
677	322274	愉海亭みやじま	images/inn_image_322274.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
678	320732	亀や	images/inn_image_320732.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
679	339322	ホテル満光園	images/inn_image_339322.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
680	374838	湯野浜温泉竹屋ホテル	images/inn_image_374838.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
681	370257	はまあかり潮音閣	images/inn_image_370257.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
682	320926	華夕美日本海	images/inn_image_320926.jpg	4953	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
683	307848	龍の湯	images/inn_image_307848.jpg	7700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
684	393244	海辺の宿都屋	images/inn_image_393244.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
685	372090	海辺の宿福住	images/inn_image_372090.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
686	365056	福宝館漁師の宿	images/inn_image_365056.jpg	6319	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
687	303760	湯野浜温泉 源泉かけ流しの温泉民宿 真砂子屋	images/inn_image_303760.jpg	4027	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
688	312483	湯野浜温泉うしお荘	images/inn_image_312483.jpg	9048	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
689	322576	温泉民宿しらはま屋	images/inn_image_322576.jpg	3935	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
690	317151	湯野浜温泉割烹旅館湯野浜ホテル	images/inn_image_317151.jpg	4490	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
691	352476	ホテルテトラリゾート鶴岡(旧海麓園）	images/inn_image_352476.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	597	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
692	338460	源泉かけ流しと手づくり料理を楽しむ湯宿湯田川温泉九兵衛旅館	images/inn_image_338460.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	601	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
693	351061	湯田川温泉つかさや旅館	images/inn_image_351061.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	601	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
694	313076	貸切風呂と手づくり美食の宿湯田川温泉九兵衛別館珠玉や	images/inn_image_313076.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	601	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
695	388744	隼人旅館	images/inn_image_388744.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	601	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
696	378331	湯どの庵	images/inn_image_378331.jpg	10500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	601	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
698	370239	湯田川温泉古代檜貸切風呂ますや旅館	images/inn_image_370239.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	601	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
699	373744	美神の湯松葉荘	images/inn_image_373744.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	604	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
700	398039	加登屋旅館	images/inn_image_398039.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	604	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
701	397734	ホテル紅葉館	images/inn_image_397734.jpg	4759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	604	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
702	333612	高見屋最上川別邸紅-ＢＥＮＩ-	images/inn_image_333612.jpg	10500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	605	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
703	347278	大友屋旅館	images/inn_image_347278.jpg	5277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
704	352185	肘折温泉丸屋	images/inn_image_352185.jpg	16657	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
705	358347	いろりと源泉の宿湯宿元河原湯	images/inn_image_358347.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
706	367910	肘折温泉旅館勇蔵	images/inn_image_367910.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
707	309325	西本屋旅館	images/inn_image_309325.jpg	4537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
708	312770	肘折温泉若松屋村井六助	images/inn_image_312770.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
709	314556	優心の宿観月	images/inn_image_314556.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
710	305364	いやしの宿3つの貸切温泉松井旅館	images/inn_image_305364.jpg	5925	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
711	350442	ゑびす屋	images/inn_image_350442.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
712	314604	四季の宿松屋	images/inn_image_314604.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
713	315355	つたや肘折ホテル	images/inn_image_315355.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
714	310967	肘折温泉金生舘	images/inn_image_310967.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
715	326112	三春屋旅館	images/inn_image_326112.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	610	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
716	323753	山形の旬を里山会席で味わう瀬見温泉ゆめみの宿観松館	images/inn_image_323753.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	614	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
717	335984	瀬見温泉四季の宿まごろく	images/inn_image_335984.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	614	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
718	304560	旅館小川屋	images/inn_image_304560.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	614	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
719	380271	喜至楼別館	images/inn_image_380271.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	614	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
720	312654	おふろ好きの宿旅館しゃくなげ荘	images/inn_image_312654.jpg	11018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
722	300408	いづみ荘	images/inn_image_300408.jpg	3700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
723	303620	赤倉温泉湯守の宿三之亟	images/inn_image_303620.jpg	3000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
724	363930	赤倉温泉みどりや旅館	images/inn_image_363930.jpg	11388	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
725	311858	悠湯の宿湯澤屋	images/inn_image_311858.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
726	399505	ひやま山荘	images/inn_image_399505.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
727	325058	赤倉温泉旅館最上荘	images/inn_image_325058.jpg	3700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
728	316868	滝と蕎麦の宿瀧見館	images/inn_image_316868.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
729	311571	旅館藤屋	images/inn_image_311571.jpg	22879	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
730	314994	銀山温泉仙峡の宿銀山荘	images/inn_image_314994.jpg	19027	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
731	373763	銀山温泉古勢起屋別館	images/inn_image_373763.jpg	15327	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
732	331048	味とまごころの宿昭和館	images/inn_image_331048.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
733	380332	銀山温泉御宿やなだ屋	images/inn_image_380332.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
734	319755	銀山温泉旅館永澤平八	images/inn_image_319755.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
735	356689	古山閣新館クラノバ	images/inn_image_356689.jpg	22000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
736	313120	旅館松本	images/inn_image_313120.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	617	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
737	352235	東根温泉のゝか本郷館	images/inn_image_352235.jpg	9648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
738	314237	さくらんぼ東根温泉よし田川別館	images/inn_image_314237.jpg	6444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
739	311236	東根グランドホテル	images/inn_image_311236.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
740	308071	石亭小松	images/inn_image_308071.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
741	396048	心あたたまりの湯宿たかはし	images/inn_image_396048.jpg	4259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
742	311090	さくらんぼ東根温泉来山荘	images/inn_image_311090.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
743	339635	花の湯ホテル	images/inn_image_339635.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
744	302802	青松館	images/inn_image_302802.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
745	364044	あづまや	images/inn_image_364044.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
747	313413	美人の湯寒河江温泉ホテルシンフォニー本館	images/inn_image_313413.jpg	4953	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	626	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
748	372576	ホテルシンフォニーアネックス	images/inn_image_372576.jpg	6342	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	626	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
749	346350	割烹旅館吉本	images/inn_image_346350.jpg	5250	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	626	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
750	311870	天童温泉 松伯亭 あづま荘	images/inn_image_311870.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
751	399104	ほほえみの宿滝の湯	images/inn_image_399104.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
752	334295	ほほえみの空湯舟つるや	images/inn_image_334295.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
753	352092	美味求真の宿天童ホテル	images/inn_image_352092.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
754	362424	桜桃の花湯坊いちらく	images/inn_image_362424.jpg	6185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
755	313326	おいしい山形牛が食べられるお宿天童グランドホテル舞鶴荘	images/inn_image_313326.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
756	310434	ホテル王将	images/inn_image_310434.jpg	8055	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
757	329978	湯の香松の湯	images/inn_image_329978.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
758	377328	天童荘	images/inn_image_377328.jpg	28000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
759	359094	湯楽・食楽・気楽三つの「楽」がある宿屋栄屋ホテル	images/inn_image_359094.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
760	365512	雅びの宿花月楼	images/inn_image_365512.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	627	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
761	315216	日本の宿古窯	images/inn_image_315216.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
762	353842	花明りの宿月の池	images/inn_image_353842.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
763	340878	はたごの心橋本屋	images/inn_image_340878.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
764	313186	果実の山あづま屋（かみのやまあづまや）	images/inn_image_313186.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
765	375761	葉山舘	images/inn_image_375761.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
766	307764	5つの温泉貸切風呂が楽しめる宿有馬館	images/inn_image_307764.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
767	328580	おやど森の音	images/inn_image_328580.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
768	310472	彩花亭時代屋	images/inn_image_310472.jpg	9120	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
769	347512	季節のこだわりバイキングと美肌の湯の宿 仙渓園 月岡ホテル	images/inn_image_347512.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
771	306255	旅館静山荘	images/inn_image_306255.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
772	330870	かみのやま温泉名月荘	images/inn_image_330870.jpg	11500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
773	391814	かみのやま温泉はたや旅館	images/inn_image_391814.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
774	371724	別館ふじや旅館	images/inn_image_371724.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
775	313070	旅館三恵	images/inn_image_313070.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
776	343891	かみのやま温泉寒河江屋旅館	images/inn_image_343891.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
777	309590	蔵王国際ホテル	images/inn_image_309590.jpg	9800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
778	335940	蔵王温泉 松金や −MATSUKANEYA ANNEX−	images/inn_image_335940.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
779	322447	蔵王四季のホテル	images/inn_image_322447.jpg	6400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
780	341866	五感の湯つるや	images/inn_image_341866.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
781	316011	最上高湯善七乃湯（旧大平ホテル）	images/inn_image_316011.jpg	4953	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
782	338565	蔵王温泉おおみや旅館	images/inn_image_338565.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
783	314797	蔵王・岩清水料理の宿季の里	images/inn_image_314797.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
784	334773	和歌（うた）の宿わかまつや	images/inn_image_334773.jpg	10500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
785	316848	蔵王温泉たかみや瑠璃倶楽リゾート‐RURIKURARESORT‐	images/inn_image_316848.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
786	321744	深山荘 高見屋  −MIYAMASO TAKAMIYA−	images/inn_image_321744.jpg	16800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
787	331969	蔵王温泉 ルーセント タカミヤ	images/inn_image_331969.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
788	325153	ホテル喜らく	images/inn_image_325153.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
789	314747	森のホテル ヴァルトベルク −ＷａｌｄＢｅｒｇ−	images/inn_image_314747.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
790	344747	蔵王温泉ホテルオークヒル	images/inn_image_344747.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
791	332556	蔵王温泉タカミヤヴィレッジホテル樹林 -JURIN-	images/inn_image_332556.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
792	374010	蔵王つららぎの宿花ゆらん	images/inn_image_374010.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
793	396378	蔵王温泉名湯舎創‐MEITOYASO‐	images/inn_image_396378.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
795	353340	源泉湯宿蔵王プラザホテル	images/inn_image_353340.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
796	333065	蔵王温泉えびや旅館	images/inn_image_333065.jpg	5740	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
797	348951	こけしの宿  招仙閣	images/inn_image_348951.jpg	4200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
798	337588	吉田屋旅館	images/inn_image_337588.jpg	4814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
799	304776	蔵王温泉ＺＡＯセンタープラザ	images/inn_image_304776.jpg	3796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
800	348320	蔵王温泉ホテルハモンドたかみや	images/inn_image_348320.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
801	377732	ペンションステラ	images/inn_image_377732.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
802	393448	ＫＫＲ蔵王 白銀荘（国家公務員共済組合連合会蔵王保養所）	images/inn_image_393448.jpg	8148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
803	323346	蔵王温泉すゞのや	images/inn_image_323346.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
804	328232	ル・ベール蔵王	images/inn_image_328232.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
805	308551	ＳＡＮＧＯＲＯＯＮＳＥＮＬＯＤＧＥ	images/inn_image_308551.jpg	55555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
806	322777	蔵王温泉ぼくのうち	images/inn_image_322777.jpg	3479	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
807	321384	赤湯温泉上杉の御湯御殿守	images/inn_image_321384.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
808	390528	鶴の湯松島館	images/inn_image_390528.jpg	21203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
809	308843	森の湯	images/inn_image_308843.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
810	346918	山形座瀧波	images/inn_image_346918.jpg	24150	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
811	380193	赤湯温泉丹泉ホテル	images/inn_image_380193.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
812	374115	赤湯温泉大正ロマン香る癒しの宿丹波館	images/inn_image_374115.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
813	360722	赤湯温泉美術館のような宿旅館大和屋	images/inn_image_360722.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
814	330184	旅館大文字屋	images/inn_image_330184.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	642	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
815	328483	美湯美食の離れ宿小野川温泉・河鹿荘（ＫＡＪＩＫＡＳＯ）	images/inn_image_328483.jpg	8200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
816	315046	小野川温泉名湯の宿吾妻荘	images/inn_image_315046.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
817	322780	五つの心の宿高砂屋	images/inn_image_322780.jpg	9166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
819	316267	バリアフリーで車いすの家族旅行も安心鈴の宿登府屋旅館	images/inn_image_316267.jpg	7870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
820	347448	小野川温泉うめや旅館	images/inn_image_347448.jpg	6666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
821	343688	小野川温泉寿宝園	images/inn_image_343688.jpg	5740	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
822	312473	小町ゆかりのホタルの里美肌の湯と旬菜の宿亀屋万年閣	images/inn_image_312473.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
823	317762	小野川温泉旭屋旅館	images/inn_image_317762.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
824	357370	やな川屋旅館	images/inn_image_357370.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
825	382360	中屋別館 不動閣	images/inn_image_382360.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	652	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
826	362785	本場米沢牛と３ｍの滝湯の宿白布温泉東屋	images/inn_image_362785.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	652	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
827	303948	湯滝の宿西屋	images/inn_image_303948.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	652	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
828	324692	別邸山の季- YAMANOKI -	images/inn_image_324692.jpg	21000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	652	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
829	351924	新高湯温泉五つの絶景露天風呂吾妻屋旅館	images/inn_image_351924.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	653	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
830	355114	雪のふるさと変若水の湯つたや	images/inn_image_355114.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	671	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
831	319202	月山の宿かしわや	images/inn_image_319202.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	671	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
832	311635	月山志津温泉旅館仙台屋	images/inn_image_311635.jpg	13500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	671	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
833	312718	湖畔の宿月山志津温泉清水屋旅館	images/inn_image_312718.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	671	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
834	301524	いいで添川温泉しらさぎ荘	images/inn_image_301524.jpg	5648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	679	12	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
835	369100	安達屋旅館	images/inn_image_369100.jpg	11500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	684	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
836	332919	高湯温泉のんびり館	images/inn_image_332919.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	684	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
837	329904	高湯温泉旅館玉子湯	images/inn_image_329904.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	684	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
838	396780	高湯温泉花月ハイランドホテル	images/inn_image_396780.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	684	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
839	337336	信夫温泉のんびり館	images/inn_image_337336.jpg	8277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	684	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
840	323325	飯坂ホテル聚楽（じゅらく）	images/inn_image_323325.jpg	8796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
841	352097	祭屋湯左衛門	images/inn_image_352097.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
843	317881	伊勢屋	images/inn_image_317881.jpg	3009	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
844	304327	飯坂温泉 摺上亭 大鳥	images/inn_image_304327.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
845	310381	ごちそう様の宿ホテル天竜閣	images/inn_image_310381.jpg	6555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
846	329242	松島屋旅舘	images/inn_image_329242.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
847	307542	橋本舘	images/inn_image_307542.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
848	330170	飯坂温泉旅館小松や	images/inn_image_330170.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
849	329711	伊東園ホテル飯坂叶や	images/inn_image_329711.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
850	343028	くつろぎの宿 華滝	images/inn_image_343028.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
851	348124	喜久屋旅館	images/inn_image_348124.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
852	322483	福住旅館	images/inn_image_322483.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
853	395144	飯坂温泉あづま荘	images/inn_image_395144.jpg	8009	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
854	377850	旅館千歳	images/inn_image_377850.jpg	5638	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
855	329843	季粋の宿新松葉	images/inn_image_329843.jpg	4074	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
856	378078	飯坂温泉展望露天風呂の宿湯乃家	images/inn_image_378078.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
857	355317	昭泉閣	images/inn_image_355317.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
858	318061	飯坂温泉源泉かけ流しの宿ホテル翠月	images/inn_image_318061.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
859	315358	旅館なりた	images/inn_image_315358.jpg	4700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
860	338671	つたや旅館	images/inn_image_338671.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
861	317824	お帰りなさいが似合う清流の宿飯坂温泉花乃湯	images/inn_image_317824.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
862	355524	湯葉と貸切の湯新亀	images/inn_image_355524.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
863	301033	匠のこころ吉川屋	images/inn_image_301033.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	688	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
864	330858	渓苑花の瀬	images/inn_image_330858.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	688	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
865	322833	穴原温泉ペットと泊まれる宿おきな旅館	images/inn_image_322833.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	688	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
890	316729	萩姫の湯栄楽館	images/inn_image_316729.jpg	7222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
867	320418	山房月之瀬	images/inn_image_320418.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	688	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
868	317727	土湯温泉山水荘	images/inn_image_317727.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
869	316381	渓流展望貸切露天の宿 奥土湯温泉峡 小滝温泉	images/inn_image_316381.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
870	322456	はるみや旅館	images/inn_image_322456.jpg	11550	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
871	359605	土湯温泉向瀧旅館	images/inn_image_359605.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
872	302826	福うさぎ	images/inn_image_302826.jpg	2500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
873	335125	土湯温泉ニュー扇屋源泉湯庵（8つの湯巡りと郷土料理の宿）	images/inn_image_335125.jpg	7870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
874	350088	土湯温泉山根屋旅館	images/inn_image_350088.jpg	4351	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
875	388694	おもてなしの宿松雲閣	images/inn_image_388694.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
876	332722	辰巳屋山荘 里の湯	images/inn_image_332722.jpg	26018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
877	303226	御とめ湯り	images/inn_image_303226.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
878	319882	ＹＵＭＯＲＩＯＮＳＥＮＨＯＳＴＥＬ	images/inn_image_319882.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	692	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
879	337640	あだたらの宿扇や	images/inn_image_337640.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
880	326233	陽日の郷あづま館	images/inn_image_326233.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
881	330241	岳温泉ながめの館光雲閣	images/inn_image_330241.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
882	342442	櫟平ホテル〜くぬぎだいらほてる〜	images/inn_image_342442.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
883	352720	静流とやすらぎの宿喜ら里	images/inn_image_352720.jpg	9675	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
884	338232	お宿 花かんざし	images/inn_image_338232.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
885	301765	鏡が池碧山亭【伊東園ホテルズ】	images/inn_image_301765.jpg	5800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
886	398442	空の庭リゾート	images/inn_image_398442.jpg	8800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
887	383372	mt.innマウントイン	images/inn_image_383372.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	707	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
888	369192	ホテル華の湯30種類の湯船が人気の宿	images/inn_image_369192.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
889	308232	磐梯熱海温泉 離れの隠れ宿 オーベルジュ鈴鐘	images/inn_image_308232.jpg	24953	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
892	331337	磐梯熱海温泉 金蘭荘花山   〜ｋｉｎｒａｎｓｏ花山〜	images/inn_image_331337.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
893	321090	全10室 銘酒と季節会席の露天付客室 あたたかい記憶が宿る守田屋	images/inn_image_321090.jpg	15698	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
894	344976	ほのぼのするお宿湯のやど楽山	images/inn_image_344976.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
895	360668	紅葉館 きらくや	images/inn_image_360668.jpg	4600	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
896	390574	をりふしの宿昭月	images/inn_image_390574.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
897	362287	伊東園ホテル磐梯向滝	images/inn_image_362287.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
898	391150	かんぽの宿郡山	images/inn_image_391150.jpg	10046	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
899	383808	離れの宿よもぎ埜	images/inn_image_383808.jpg	24000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
900	349080	熱海荘	images/inn_image_349080.jpg	17037	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
901	399904	清稜山倶楽部	images/inn_image_399904.jpg	5438	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
902	318587	福島県 磐梯熱海温泉 八景園	images/inn_image_318587.jpg	3972	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
903	343238	浅香荘	images/inn_image_343238.jpg	18000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
904	354284	健康温泉水林亭	images/inn_image_354284.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
905	319909	若松屋旅館	images/inn_image_319909.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	716	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
906	341788	ルネサンス棚倉	images/inn_image_341788.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	735	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
907	345532	棚倉田舎倶楽部	images/inn_image_345532.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	735	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
908	329202	ホテルパームスプリング	images/inn_image_329202.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
909	347399	松柏館	images/inn_image_347399.jpg	6138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
910	340578	小名浜オーシャンホテル＆ゴルフクラブ	images/inn_image_340578.jpg	5842	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
911	346557	雨情の宿新つた	images/inn_image_346557.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
912	304246	湯の宿美笹	images/inn_image_304246.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
913	347872	月へと照らす海の道ホテル花天	images/inn_image_347872.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
914	341176	いわき湯本温泉 ホテル 浜とく	images/inn_image_341176.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
916	323818	心やわらぐ宿岩惣	images/inn_image_323818.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
917	335663	元禄彩雅宿古滝屋	images/inn_image_335663.jpg	3564	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
918	317919	魚々彩々旬味の宿うお昭	images/inn_image_317919.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
919	300926	いわき湯本温泉鮮の宿柏	images/inn_image_300926.jpg	6479	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
920	343735	いわき湯本温泉旅館こいと	images/inn_image_343735.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
921	336521	ホテル美里	images/inn_image_336521.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
922	306824	スパホテルスミレ館	images/inn_image_306824.jpg	3657	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
923	317720	いわき湯本温泉ホテル浜とく別邸	images/inn_image_317720.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
924	311700	神白温泉国元屋	images/inn_image_311700.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
925	327583	伊勢屋旅館	images/inn_image_327583.jpg	6805	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
926	324003	スパリゾートハワイアンズウイルポート	images/inn_image_324003.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
927	320088	いわき湯本温泉郷白鳥山温泉喜楽苑	images/inn_image_320088.jpg	5046	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
928	310244	桜と欅の宿ホテル住乃江	images/inn_image_310244.jpg	4333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
929	331704	旅館遊湯亭	images/inn_image_331704.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
930	395686	いわき 湯本温泉美風の宿	images/inn_image_395686.jpg	2166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
931	328670	ホテルいづみや	images/inn_image_328670.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
932	341763	熱塩温泉創作料理が自慢の宿山形屋	images/inn_image_341763.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	751	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
933	324916	ふじや	images/inn_image_324916.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	751	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
934	329849	ペンションフレージェ	images/inn_image_329849.jpg	9077	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	754	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
935	319944	クラシックインロビンソン	images/inn_image_319944.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	754	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
936	387056	ペンション絵夢	images/inn_image_387056.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	754	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
937	343543	サイズリゾートホテル裏磐梯	images/inn_image_343543.jpg	3938	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	756	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
938	331419	アクティブリゾーツ 裏磐梯	images/inn_image_331419.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	756	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
940	324402	静楓亭	images/inn_image_324402.jpg	31481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	761	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
941	326729	ペンション森のバスケット	images/inn_image_326729.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	761	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
942	325946	猪苗代リゾートホテル	images/inn_image_325946.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	761	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
943	346116	ホテルリステル猪苗代ウイングタワー	images/inn_image_346116.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	763	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
944	315363	フォレストリゾート猪苗代四季の里	images/inn_image_315363.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	763	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
946	361080	ホテルリステル猪苗代本館コンドミニアム	images/inn_image_361080.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	763	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
947	309135	くつろぎ宿新滝	images/inn_image_309135.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
948	337292	絶景露天風呂と貸切風呂が自慢の宿東山温泉庄助の宿瀧の湯	images/inn_image_337292.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
949	340443	【郷土色豊かなバイキング・絶景露天が自慢】御宿 東鳳	images/inn_image_340443.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
950	352180	くつろぎ宿千代滝	images/inn_image_352180.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
951	322068	いろりの宿芦名	images/inn_image_322068.jpg	9900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
952	301364	会津東山温泉おやど東山	images/inn_image_301364.jpg	4259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
953	384702	大江戸温泉物語会津東山温泉東山グランドホテル	images/inn_image_384702.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
954	305557	料理旅館今昔亭	images/inn_image_305557.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
955	330880	自家源泉の宿原瀧	images/inn_image_330880.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
956	343826	向瀧	images/inn_image_343826.jpg	18000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
957	358674	客室専用露天風呂付のスイートルームはなれ松島閣	images/inn_image_358674.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
958	394194	有馬屋旅館	images/inn_image_394194.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
959	357960	東山パークホテル新風月【伊東園ホテルズ】	images/inn_image_357960.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
960	323735	会津東山温泉月のあかり	images/inn_image_323735.jpg	3000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	765	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
961	324983	瀞流の宿かわち	images/inn_image_324983.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	768	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1010	382672	ペンションどんぐり	images/inn_image_382672.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	824	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
963	396221	柳津温泉つきみが丘町民センター	images/inn_image_396221.jpg	4231	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	768	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
964	330922	会津芦ノ牧温泉丸峰別館川音	images/inn_image_330922.jpg	8300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
965	329092	絶景露天風呂と美食懐石が自慢の老舗旅館 会津芦ノ牧温泉 大川荘	images/inn_image_329092.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
966	376174	会津芦ノ牧温泉芦ノ牧グランドホテル	images/inn_image_376174.jpg	4900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
967	369683	【源泉100％掛け流しの宿】会津芦ノ牧温泉不動館 小谷の湯	images/inn_image_369683.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
968	310865	会津芦ノ牧温泉丸峰本館	images/inn_image_310865.jpg	7300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
969	355668	渓流の宿渓山	images/inn_image_355668.jpg	8240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
970	367089	会津芦ノ牧温泉離れ山翠	images/inn_image_367089.jpg	13888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
971	384012	芦ノ牧温泉芦ノ牧プリンスホテル	images/inn_image_384012.jpg	4900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	779	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
972	318536	藤龍館	images/inn_image_318536.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
973	363938	湯季の郷紫泉	images/inn_image_363938.jpg	5370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
974	397890	湯野上温泉こぼうしの湯洗心亭	images/inn_image_397890.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
975	326720	ぬくもりのいろり宿民宿いなりや	images/inn_image_326720.jpg	7222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
976	337610	一期一会のおもてなし湯宿にしきや	images/inn_image_337610.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
977	342934	ホテル大島	images/inn_image_342934.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
978	305816	湯楽の宿ひらのや	images/inn_image_305816.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
979	347248	温泉民宿赤ひげ	images/inn_image_347248.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
980	336861	会津湯野上温泉ホテル大坂屋	images/inn_image_336861.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
981	363762	温泉民宿山形屋	images/inn_image_363762.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
982	336463	湯野上温泉まごころの宿美加登屋	images/inn_image_336463.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
983	321631	藤の湯えびす屋	images/inn_image_321631.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
984	320941	会津湯野上温泉民宿橋本屋	images/inn_image_320941.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
985	371194	民宿みやもと屋	images/inn_image_371194.jpg	4722	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
987	360877	スパホテルあぶくま	images/inn_image_360877.jpg	4398	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	784	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
988	318300	新甲子温泉 五峰荘	images/inn_image_318300.jpg	9100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	784	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
989	325860	元湯大露天風呂みやま荘	images/inn_image_325860.jpg	5250	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	784	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
990	331074	スパリゾートハワイアンズモノリスタワー	images/inn_image_331074.jpg	11851	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	794	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
991	337214	スパリゾートハワイアンズ	images/inn_image_337214.jpg	8148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	794	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
992	315256	はやま温泉コージーイン	images/inn_image_315256.jpg	10500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	796	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
993	329543	囲炉裏と温泉露天風呂コッヘル磐梯	images/inn_image_329543.jpg	8324	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	796	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
994	334942	ペンションKOGETSU	images/inn_image_334942.jpg	8611	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	796	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
995	320839	ほりい荘	images/inn_image_320839.jpg	3287	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	796	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
996	372113	レイクビュー猪苗代荘	images/inn_image_372113.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	796	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
997	322725	ヴィライナワシロ	images/inn_image_322725.jpg	3796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	796	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
998	334462	猪苗代観光ホテル	images/inn_image_334462.jpg	3000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	796	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
999	316954	星野リゾート磐梯山温泉ホテル	images/inn_image_316954.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	797	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1000	306624	日中温泉ゆもとや	images/inn_image_306624.jpg	10925	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	800	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1001	310670	エンゼルフォレスト那須白河	images/inn_image_310670.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	802	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1002	325741	温泉ペンションメリーキングス	images/inn_image_325741.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	802	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1003	385734	プチホテルあいづ天鏡台温泉	images/inn_image_385734.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	803	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1004	314473	リフレッシングインウエルカム・ウエルカム	images/inn_image_314473.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	803	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1005	394592	裏磐梯レイクリゾート本館五色の森・旧裏磐梯猫魔ホテル	images/inn_image_394592.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	821	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1006	319173	休暇村裏磐梯	images/inn_image_319173.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	821	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1007	313486	裏磐梯グランデコ東急ホテル	images/inn_image_313486.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	823	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1008	310004	Lake side inn Beehive(びーはいぶ）	images/inn_image_310004.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	824	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1009	321906	御もてなしの宿悠ゆ亭	images/inn_image_321906.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	824	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1012	313596	ペンションレラ	images/inn_image_313596.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	824	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1013	323665	ホテリ・アアルト	images/inn_image_323665.jpg	26851	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	826	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1014	300184	大江戸温泉物語会津神指温泉あいづ	images/inn_image_300184.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	827	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1015	342020	なりた温泉	images/inn_image_342020.jpg	5462	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	828	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1016	305401	街なか100％天然温泉ホテルシーアンドアイ郡山	images/inn_image_305401.jpg	3287	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	831	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1017	339312	ホテルエピナール那須	images/inn_image_339312.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1018	320920	恋する二人の露天風呂付お部屋でフルコースの宿アクアスイート	images/inn_image_320920.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1019	340492	那須いちやホテル	images/inn_image_340492.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1020	386820	那須の温泉隠れ宿昔日オールドデイズ	images/inn_image_386820.jpg	21277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1021	331120	ホテルサンバレー那須	images/inn_image_331120.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1022	397016	ぬくもりに心なごむ湯宿星のあかり	images/inn_image_397016.jpg	18500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1023	303456	ホテル森の風那須(2018年10月11日グランドオープン)	images/inn_image_303456.jpg	18000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1024	325658	ウェルネスの森那須	images/inn_image_325658.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1025	322459	合歓林（ネムリン）オリエンタル	images/inn_image_322459.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1026	367278	那須ノ宿縁〈ENISHI〉	images/inn_image_367278.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1027	386876	ホテル四季の館那須(2018年10月11日グランドオープン)	images/inn_image_386876.jpg	30000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1028	382671	大丸温泉旅館	images/inn_image_382671.jpg	16296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1029	335440	ロイヤルホテル 那須	images/inn_image_335440.jpg	6600	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1030	379786	ペット＆スパホテル那須ワン	images/inn_image_379786.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1031	385024	ペンシオーネサライ	images/inn_image_385024.jpg	9537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1032	360925	ホテルフォレストヒルズ那須	images/inn_image_360925.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1033	306188	那須温泉山楽	images/inn_image_306188.jpg	20444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1034	386065	真奈邸那須	images/inn_image_386065.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1036	334706	ペットといっしょに貸切温泉メゾンドブラン	images/inn_image_334706.jpg	8240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1037	339815	那須高原ホテルビューパレス	images/inn_image_339815.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1038	316348	那須湯菜の宿芽瑠鼓	images/inn_image_316348.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1039	355966	那須和牛の宿プチペンションラ・ハーユ	images/inn_image_355966.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1040	302392	THE KEY HIGHLAND NASU	images/inn_image_302392.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1041	334957	ペンション散歩道	images/inn_image_334957.jpg	6666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1042	344924	御宿なか田	images/inn_image_344924.jpg	25000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1043	308252	新那須高原温泉こころのおやど自在荘	images/inn_image_308252.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1044	336660	那須高原の宿山水閣	images/inn_image_336660.jpg	16435	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1045	307284	ペンションひみつ基地	images/inn_image_307284.jpg	5350	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1046	340522	那須陽光ホテル	images/inn_image_340522.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1047	325369	ONSEN RYOKAN 山喜	images/inn_image_325369.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	843	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1048	302048	板室温泉大黒屋	images/inn_image_302048.jpg	19000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	843	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1049	317055	板室温泉あったか〜いやど勝風館（しょうふうかん）	images/inn_image_317055.jpg	7100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	843	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1050	347691	那須・板室の温泉ホテルホテル板室	images/inn_image_347691.jpg	3685	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	843	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1051	359296	板室温泉源泉ほたるの湯	images/inn_image_359296.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	843	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1052	320695	板室温泉 美肌と健康の宿 奥那須大正村 幸乃湯温泉	images/inn_image_320695.jpg	2333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	843	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1053	341037	大江戸温泉物語那須塩原温泉ホテルニュー塩原	images/inn_image_341037.jpg	3333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1054	388760	全室露天風呂付き客室の宿四季味亭ふじや	images/inn_image_388760.jpg	20370	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1055	349163	全室露天風呂付き客室離れの宿楓音(かのん)	images/inn_image_349163.jpg	27777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1056	325127	塩原温泉渓流野天風呂と炉端料理の宿湯守田中屋	images/inn_image_325127.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1057	312025	【平成温泉番付】栃木県第1位にごり湯と美食やまの宿下藤屋	images/inn_image_312025.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1059	304972	小梅や	images/inn_image_304972.jpg	14351	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1060	330013	美肌の湯と寛ぎの宿光雲荘	images/inn_image_330013.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1061	379998	全室客室風呂付プチホテルユーフィール	images/inn_image_379998.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1062	309303	源泉掛け流しのちいさなホテル塩原山荘	images/inn_image_309303.jpg	7685	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1063	399850	割烹旅館湯の花荘	images/inn_image_399850.jpg	27000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1064	325104	湯宿梅川荘	images/inn_image_325104.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1065	323222	ペンションいちごみるく	images/inn_image_323222.jpg	6574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1066	322444	創作料理と源泉かけ流しの宿本陣	images/inn_image_322444.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1067	346129	秘湯にごり湯の宿渓雲閣	images/inn_image_346129.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1068	353418	ペットと楽しむ温泉旅館福久寿苑	images/inn_image_353418.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1069	326397	塩原温泉常盤ホテル	images/inn_image_326397.jpg	4074	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1070	385164	大江戸温泉物語那須塩原温泉かもしか荘	images/inn_image_385164.jpg	7481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1071	344590	塩原温泉６つの貸切露天渓流の湯宿柏屋旅館	images/inn_image_344590.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1072	318677	スローフードと貸切温泉の宿ガストホフ夢木香（ゆめきこう）	images/inn_image_318677.jpg	6666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1073	324693	源泉遺産那須塩原別邸 (旧紀州鉄道那須塩原ホテル)	images/inn_image_324693.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1074	321608	奥塩原高原ホテル	images/inn_image_321608.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1075	318166	奥塩原温泉湯荘白樺	images/inn_image_318166.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1076	327347	自家源泉１００％・癒しの旅館まじま荘	images/inn_image_327347.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1077	313817	美肌づくりの湯貸切露天の宿松の井荘	images/inn_image_313817.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1078	303687	首都圏に近い秘湯明賀屋（みょうがや）本館	images/inn_image_303687.jpg	11500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1079	312854	秘湯の宿元泉館	images/inn_image_312854.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1080	319782	塩原温泉旅館上会津屋	images/inn_image_319782.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1082	332120	ペットと泊まれるコテージ塩原グリーンビレッジ	images/inn_image_332120.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1083	330121	湯西川温泉彩り湯かしき花と華	images/inn_image_330121.jpg	8240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1084	347395	湯西川白雲の宿山城屋	images/inn_image_347395.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1085	309138	おやど湯の季（ゆのとき）	images/inn_image_309138.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1086	373449	湯西川温泉本家伴久平家伝承かずら橋の宿	images/inn_image_373449.jpg	19444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1087	317250	いろり会席と源泉100％秘湯の宿平の高房	images/inn_image_317250.jpg	12150	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1088	329036	ペットと一緒にお泊まり湯乃宿清盛	images/inn_image_329036.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1089	376676	森の湯ハミングバ−ド	images/inn_image_376676.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1090	327009	はたご 松屋	images/inn_image_327009.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1091	313010	民宿やま久	images/inn_image_313010.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1092	332000	湯西川温泉古民家の宿清水屋旅館	images/inn_image_332000.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1093	350554	湯西川温泉ホテル湯西川【伊東園ホテルズ】	images/inn_image_350554.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1094	314891	元湯湯西川館 本館	images/inn_image_314891.jpg	5787	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1095	387490	湯西川温泉 元湯 高房ホテル	images/inn_image_387490.jpg	3962	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1096	383374	湯西川温泉平家本陣	images/inn_image_383374.jpg	4700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	860	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1097	340422	八丁の湯	images/inn_image_340422.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	861	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1098	350624	加仁湯	images/inn_image_350624.jpg	10564	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	861	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1099	314172	国民宿舎渓山荘	images/inn_image_314172.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	866	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1100	324371	川俣一柳閣	images/inn_image_324371.jpg	13138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	866	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1101	318487	日光中禅寺湖温泉ホテル花庵	images/inn_image_318487.jpg	12500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1102	374445	星野リゾート界 日光	images/inn_image_374445.jpg	18333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1103	321924	奥日光ホテル四季彩	images/inn_image_321924.jpg	11592	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1104	347460	旧外国大使別荘跡湖上苑	images/inn_image_347460.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1106	312655	休暇村日光湯元	images/inn_image_312655.jpg	10362	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1107	325293	奥日光源泉の宿ゆの森	images/inn_image_325293.jpg	23000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1108	310385	ゆ宿美や川	images/inn_image_310385.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1109	337093	奥日光湯元温泉奥日光高原ホテル	images/inn_image_337093.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1110	320110	中禅寺金谷ホテル	images/inn_image_320110.jpg	17129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1111	391910	奥日光小西ホテル（日光湯元温泉）	images/inn_image_391910.jpg	11574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1112	346612	日光グランドホテルほのかな宿樹林	images/inn_image_346612.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1113	336459	日光湯元温泉紫雲荘	images/inn_image_336459.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1114	348921	湯元板屋	images/inn_image_348921.jpg	14500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1115	319481	湖畔の見える露天風呂 中禅寺温泉 日光山水	images/inn_image_319481.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1116	334376	日光湯元温泉にごり湯の宿かつら荘	images/inn_image_334376.jpg	5601	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1117	313566	日光湯元温泉奥日光パークロッジ深山	images/inn_image_313566.jpg	4700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1118	301047	奥日光湯元温泉湯守釜屋	images/inn_image_301047.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1119	378732	スパビレッジカマヤ	images/inn_image_378732.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1120	311531	実之屋（ミノヤ）	images/inn_image_311531.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1121	304988	旅籠なごみ	images/inn_image_304988.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1122	397416	旅館白根荘	images/inn_image_397416.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1123	345206	中禅寺温泉ホテル湖畔亭	images/inn_image_345206.jpg	6200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1124	314453	湯乃湖荘	images/inn_image_314453.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1125	354757	奥日光湯元温泉おおるり山荘	images/inn_image_354757.jpg	4700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1126	318930	ホテル山月	images/inn_image_318930.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1127	321602	日光別邸向日葵	images/inn_image_321602.jpg	12314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1128	352299	日光自家源泉の宿ホテルカジュアルユーロ	images/inn_image_352299.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1130	376184	奥の院ほてるとく川	images/inn_image_376184.jpg	14814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1131	387690	日光ステーションホテルクラシック	images/inn_image_387690.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1132	343672	ホテル清晃苑	images/inn_image_343672.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1133	331928	本格湯波懐石日光星の宿	images/inn_image_331928.jpg	10694	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1134	362080	日光自家源泉の宿ホテルユーロシティ	images/inn_image_362080.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1135	325139	ペット連れ専用の宿アニマーレ	images/inn_image_325139.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1136	356990	小槌の宿鶴亀大吉	images/inn_image_356990.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1137	318260	日光東照宮晃陽苑	images/inn_image_318260.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1138	329316	リゾートイン霧降プラザ	images/inn_image_329316.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1139	329084	ペンションユミィ	images/inn_image_329084.jpg	5900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1140	381286	日光西町倶楽部あらとうと	images/inn_image_381286.jpg	28000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1141	326075	リゾートインユミィ	images/inn_image_326075.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1142	355368	ホテルファミテック日光駅前	images/inn_image_355368.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1143	392813	登喜和旅館	images/inn_image_392813.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1144	304998	Natural Garden〜ナチュラルガーデン日光〜	images/inn_image_304998.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1145	316614	日光東観荘	images/inn_image_316614.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1146	339685	旅館上州屋	images/inn_image_339685.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1147	393224	ホテル春茂登	images/inn_image_393224.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1148	316396	日光ぐりーんほてる懐かし家風和里	images/inn_image_316396.jpg	6555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1149	322528	かご岩温泉旅館	images/inn_image_322528.jpg	11400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	873	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1150	338142	鬼怒川温泉あさや	images/inn_image_338142.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1151	312119	静寂とまごころの宿七重八重	images/inn_image_312119.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1152	343637	大江戸温泉物語鬼怒川温泉鬼怒川観光ホテル	images/inn_image_343637.jpg	6416	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1154	319500	鬼怒川温泉ホテル	images/inn_image_319500.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1155	335885	きぬ川不動瀧	images/inn_image_335885.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1156	375132	鬼怒川金谷ホテル	images/inn_image_375132.jpg	22500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1157	309099	鬼怒川温泉 旅館若竹の庄別邸笹音	images/inn_image_309099.jpg	21296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1158	324785	大江戸温泉物語鬼怒川温泉ホテル鬼怒川御苑	images/inn_image_324785.jpg	5666	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1159	384120	花の宿松や	images/inn_image_384120.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1160	311833	せせらぎと竹の香りの隠れ宿鬼怒川温泉旅館若竹の庄	images/inn_image_311833.jpg	12962	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1161	348834	御宿一富士	images/inn_image_348834.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1162	371535	限定3室の大人の隠れ宿ひやま	images/inn_image_371535.jpg	14166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1163	344197	栂の季（つがのき）	images/inn_image_344197.jpg	10500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1164	329053	ホテルサンシャイン鬼怒川	images/inn_image_329053.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1165	334465	鬼怒川プラザホテル	images/inn_image_334465.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1166	311496	ほてる白河湯の蔵	images/inn_image_311496.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1167	391836	鬼怒川温泉山楽	images/inn_image_391836.jpg	21000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1168	326224	鬼怒川グランドホテル夢の季	images/inn_image_326224.jpg	13888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1169	369720	ペット同室宿泊パイオニアの宿きぬ川国際ホテル	images/inn_image_369720.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1170	376741	愛犬と泊まれる温泉旅館鬼怒川絆	images/inn_image_376741.jpg	21111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1171	336775	鬼怒川温泉鬼怒川パークホテルズ	images/inn_image_336775.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1172	340501	湯けむりまごころの宿一心舘	images/inn_image_340501.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1173	347242	里の宿 千春	images/inn_image_347242.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1174	333224	鬼怒川温泉旅の宿丸京	images/inn_image_333224.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1175	321978	きぬ川ホテル三日月	images/inn_image_321978.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1176	363466	絹の渓谷碧流	images/inn_image_363466.jpg	11481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1178	347277	伊東園ホテルニューさくら	images/inn_image_347277.jpg	3800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1179	373723	リブマックスリゾート鬼怒川	images/inn_image_373723.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1180	378216	星野リゾート界 川治	images/inn_image_378216.jpg	7037	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	876	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1181	328824	川治温泉元湯 白井屋	images/inn_image_328824.jpg	10500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	876	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1182	309059	湯けむりの里柏屋	images/inn_image_309059.jpg	11500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	876	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1183	322244	リブマックスリゾート川治（旧名：源泉の宿らんりょう）	images/inn_image_322244.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	876	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1184	319088	川治温泉祝い宿寿庵(じゅあん)	images/inn_image_319088.jpg	20000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	876	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1185	357172	川治温泉一柳閣本館【伊東園ホテルズ】	images/inn_image_357172.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	876	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1186	324087	登隆館	images/inn_image_324087.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	876	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1187	369995	栃木那須馬頭温泉郷南平台温泉ホテル	images/inn_image_369995.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	881	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1188	320830	囲炉裏の温泉宿いさみ館	images/inn_image_320830.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	881	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1189	302373	天然ラドンの小砂温泉 ホテル美玉の湯	images/inn_image_302373.jpg	9027	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	881	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1190	371028	馬頭温泉旅館ささや荘	images/inn_image_371028.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	881	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1191	308484	かんぽの宿栃木喜連川温泉	images/inn_image_308484.jpg	10462	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	884	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1192	341882	栃木喜連川温泉ホテルニューさくら	images/inn_image_341882.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	884	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1193	323411	喜連川カントリー倶楽部＆美肌温泉ホテル喜連川	images/inn_image_323411.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	884	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1194	314110	益子舘里山リゾートホテル	images/inn_image_314110.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	886	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1195	331710	スーパーホテル宇都宮天然温泉益子の湯	images/inn_image_331710.jpg	3416	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	886	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1196	329251	全室露天風呂付き客室の宿真木温泉	images/inn_image_329251.jpg	19444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1262	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1197	323754	温泉三昧大田原温泉ホテル龍城苑	images/inn_image_323754.jpg	7592	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	888	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1198	309884	パインズ温泉ホテル大田原	images/inn_image_309884.jpg	5641	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	888	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1199	376230	大江戸温泉物語日光霧降温泉日光霧降	images/inn_image_376230.jpg	6851	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	909	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1201	313060	ペンション遊スマイル	images/inn_image_313060.jpg	8240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	918	13	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1202	353780	天然温泉に入れるビジネスホテル那須パレスホテル	images/inn_image_353780.jpg	3564	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	921	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1203	347468	民宿一乃屋	images/inn_image_347468.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	924	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1204	313667	民宿福冨士	images/inn_image_313667.jpg	6851	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	924	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1205	331173	サンヒルズホテル	images/inn_image_331173.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	925	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1206	313690	尾瀬かまた宿温泉水芭蕉乃湯梅田屋旅館	images/inn_image_313690.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1207	310316	旅舘うめや	images/inn_image_310316.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1208	357356	尾瀬戸倉温泉湯元ホテル玉城屋	images/inn_image_357356.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1209	388288	丸沼温泉環湖荘	images/inn_image_388288.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1210	317232	尾瀬戸倉温泉展望の湯ふきあげ	images/inn_image_317232.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1211	313338	土出温泉尾瀬岩鞍リゾートホテル	images/inn_image_313338.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1212	314485	尾瀬戸倉温泉 旅館 玉泉	images/inn_image_314485.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1213	338945	ログ・コテージ尾瀬東明荘	images/inn_image_338945.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1214	322200	尾瀬戸倉温泉ふじや旅館	images/inn_image_322200.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1215	343709	水芭蕉の宿ひがし	images/inn_image_343709.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1216	313354	片品温泉湯元千代田館	images/inn_image_313354.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1217	396695	シャレー丸沼	images/inn_image_396695.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1218	363345	尾瀬戸倉温泉マルイ旅館	images/inn_image_363345.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1219	352227	加羅倉舘	images/inn_image_352227.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1220	361114	ペンションあおき	images/inn_image_361114.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1221	325756	よしや荘	images/inn_image_325756.jpg	3888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1222	332317	旅館みゆき	images/inn_image_332317.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1223	312699	子宝の湯しおじり	images/inn_image_312699.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1225	399605	奥武尊温泉ペンション銀河	images/inn_image_399605.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1226	364348	平人(ひらんど)旅館	images/inn_image_364348.jpg	6203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1227	341357	温泉旅館つちいで	images/inn_image_341357.jpg	4351	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1228	312042	尾瀬戸倉温泉ロッジまつうら	images/inn_image_312042.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1229	311746	ヴィラ風花	images/inn_image_311746.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1230	390896	戸倉旅館	images/inn_image_390896.jpg	4351	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1231	385824	湯の宿松かぜ	images/inn_image_385824.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1232	391546	尾瀬戸倉温泉 旅館山びこ	images/inn_image_391546.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1233	320582	源泉掛流しの湯めぐりテーマパーク龍洞	images/inn_image_320582.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1234	314347	清流の宿たむら	images/inn_image_314347.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1235	326247	11種類の貸切露天風呂水上高原/奥利根温泉ホテルサンバード	images/inn_image_326247.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1236	311315	民宿やぐら	images/inn_image_311315.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1237	326655	湯の小屋温泉ペンションオールド・ストリング	images/inn_image_326655.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1238	309452	照葉荘	images/inn_image_309452.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1239	333471	ロッヂたかね	images/inn_image_333471.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1240	310406	温泉ペンション花さき山	images/inn_image_310406.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1241	378290	フォレストラウンジ（ホテルサンバード別館）	images/inn_image_378290.jpg	80000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1242	344514	ペンションサンドリヨン	images/inn_image_344514.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1243	335540	ペンショントップス	images/inn_image_335540.jpg	11111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1244	365992	釣師がもてなす天然温泉宿 ペンションらいらっく	images/inn_image_365992.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	942	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1245	312746	宝川温泉 汪泉閣	images/inn_image_312746.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	943	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1246	339860	天空の湯なかや旅館	images/inn_image_339860.jpg	4537	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	944	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1247	325648	湯檜曽（ゆびそ）温泉清風かおる湯宿林屋旅館	images/inn_image_325648.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	944	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1249	315400	ホテル湯の陣【伊東園ホテルズ】	images/inn_image_315400.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	944	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1250	315612	檜の宿水上山荘	images/inn_image_315612.jpg	13342	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	946	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1251	304222	別邸仙寿庵（せんじゅあん）	images/inn_image_304222.jpg	35485	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	946	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1252	318211	水上温泉郷谷川温泉旅館たにがわ	images/inn_image_318211.jpg	14361	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	946	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1253	304425	水素風呂と美食と・・・。谷川温泉やど莞山KANZAN	images/inn_image_304425.jpg	10648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	946	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1254	339896	ペンション朝ねぼう	images/inn_image_339896.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	946	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1255	314341	金盛館せゝらぎ （せせらぎ）	images/inn_image_314341.jpg	21000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	946	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1256	346230	ペンションブルーベリー	images/inn_image_346230.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	946	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1257	342078	水上温泉みなかみホテルジュラク	images/inn_image_342078.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1258	311528	水上温泉源泉湯の宿松乃井	images/inn_image_311528.jpg	7888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1259	323445	蛍雪の宿尚文	images/inn_image_323445.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1260	319712	MICASA（ミカサ）	images/inn_image_319712.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1261	321107	水上館山と渓流に抱かれた１５湯の温泉宿	images/inn_image_321107.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1262	307710	水上温泉郷 諏訪峡温泉 自家源泉かけ流し天狗の湯きむら苑	images/inn_image_307710.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1263	325588	別亭 やえ野	images/inn_image_325588.jpg	27777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1264	334119	旅館山楽荘	images/inn_image_334119.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1265	348722	せせらぎの宿水上温泉ホテル一葉亭（ＢＢＨホテルグループ）	images/inn_image_348722.jpg	3989	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1266	346489	ペットと泊れる温泉宿だいこく館	images/inn_image_346489.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1267	314645	水上温泉旅館 天野屋	images/inn_image_314645.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1268	340833	旅館みやま	images/inn_image_340833.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1269	355430	ＫＫＲ水上水明荘（国家公務員共済組合連合会水上保養所）	images/inn_image_355430.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	947	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1270	318488	人気の貸切風呂と炭火山里料理の宿辰巳館	images/inn_image_318488.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	949	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1272	311241	上牧温泉旅籠庄屋	images/inn_image_311241.jpg	15500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	949	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1273	316204	月がほほえむ宿大峰館	images/inn_image_316204.jpg	7314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	949	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1274	358561	上牧温泉リゾートホテル アスティム	images/inn_image_358561.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	949	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1275	324356	常生館	images/inn_image_324356.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	949	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1276	370868	川場温泉清流の里錦綉山荘	images/inn_image_370868.jpg	12500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	951	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1277	379741	かやぶきの源泉湯宿悠湯里庵（ゆとりあん）・別館悠山	images/inn_image_379741.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	951	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1278	354304	緑渓の湯宿とくさ	images/inn_image_354304.jpg	6388	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	951	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1279	329370	伍楼閣	images/inn_image_329370.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1280	315672	尾瀬を望む老神温泉「源泉湯の宿紫翠亭」	images/inn_image_315672.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1281	347040	群馬県・老神温泉仙郷	images/inn_image_347040.jpg	12222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1282	379443	白壁の宿ニュー牧水苑	images/inn_image_379443.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1283	308616	源泉かけ流しの宿吟松亭あわしま	images/inn_image_308616.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1284	324185	伊東園ホテル尾瀬老神山楽荘	images/inn_image_324185.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1285	316443	老神温泉もうひとつのふる里山口屋	images/inn_image_316443.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1286	331860	源泉かけ流しの宿金龍園	images/inn_image_331860.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1287	316470	亀鶴旅館	images/inn_image_316470.jpg	3981	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1288	326116	老神温泉観山荘	images/inn_image_326116.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1289	320609	天然湯見晴荘	images/inn_image_320609.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1290	321198	老神温泉穴原湯東秀館	images/inn_image_321198.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1291	309361	老神温泉湯元楽善荘	images/inn_image_309361.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1292	348065	上田屋旅館	images/inn_image_348065.jpg	4814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	954	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1293	325526	法師温泉長寿館	images/inn_image_325526.jpg	12148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	956	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1294	318940	猿ケ京温泉源泉湯の宿千の谷	images/inn_image_318940.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1296	386416	江戸創業幕末の宿旅籠屋丸一	images/inn_image_386416.jpg	10648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1298	312907	猿ヶ京温泉料理旅館樋口	images/inn_image_312907.jpg	13240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1299	302034	猿ヶ京温泉生寿苑（しょうじゅえん）	images/inn_image_302034.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1300	393728	4つの無料貸切露天風呂の宿 ル・ヴァンベール湖郷(こきょう)	images/inn_image_393728.jpg	7388	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1301	333261	蔵やしき野の花畑	images/inn_image_333261.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1302	329568	猿ヶ京温泉郷温泉宿前田屋	images/inn_image_329568.jpg	6300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1303	383492	自家製手づくりこだわりの宿旅籠しんでん	images/inn_image_383492.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1304	381992	猿ヶ京温泉 スポーツ民宿 ふじや	images/inn_image_381992.jpg	3657	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1305	399783	猿ヶ京温泉湯元長生館	images/inn_image_399783.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1306	336537	湖畔の宿ホテル湖城閣	images/inn_image_336537.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1307	313848	一楽	images/inn_image_313848.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1308	301356	温泉旅館仁田屋	images/inn_image_301356.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1309	364720	誓湖荘	images/inn_image_364720.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1310	304799	旅篭吉長	images/inn_image_304799.jpg	13750	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1311	322387	清野旅館	images/inn_image_322387.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1312	327980	積善館（佳松亭積善・積善館山荘）	images/inn_image_327980.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1313	321782	四万温泉ひなたみ館	images/inn_image_321782.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1314	325817	【四万温泉 柏屋旅館】 3種の貸切露天風呂が無料で楽しめる宿	images/inn_image_325817.jpg	12314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1315	324676	四万たむら室町創業７つの源泉を持つ月替わり懐石の宿	images/inn_image_324676.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1316	310851	時わすれの宿佳元	images/inn_image_310851.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1317	321929	四万グランドホテル	images/inn_image_321929.jpg	8148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1366	318392	草津温泉湯畑草菴	images/inn_image_318392.jpg	6101	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1319	344272	四万温泉源泉掛け流しの貸切風呂と囲炉裏料理湯の宿山ばと	images/inn_image_344272.jpg	13240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1320	318352	温泉グランピングShimaBlue	images/inn_image_318352.jpg	25000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1321	316046	渓谷に佇む源泉湯宿四万やまぐち館	images/inn_image_316046.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1322	372584	積善館 本館	images/inn_image_372584.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1323	336779	あやめや旅館	images/inn_image_336779.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1324	320466	地酒の宿中村屋	images/inn_image_320466.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1325	313956	四万温泉豊島屋 極上美肌湯と里山懐石の宿	images/inn_image_313956.jpg	10222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1326	324528	四万温泉鍾寿館	images/inn_image_324528.jpg	7222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1327	341571	四万温泉やまの旅館	images/inn_image_341571.jpg	3685	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1328	331679	源泉露天の宿鹿覗キセキノ湯つるや	images/inn_image_331679.jpg	11018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1329	311731	四万温泉寿屋旅館 「お蕎麦と温泉の宿」	images/inn_image_311731.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1330	310781	四万温泉国民宿舎四万ゆずりは荘	images/inn_image_310781.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1331	337758	湯元四萬館	images/inn_image_337758.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1332	389008	四万温泉はつしろ旅館	images/inn_image_389008.jpg	4000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1333	320795	四万温泉大正元年創業暖か味の宿三木屋旅館	images/inn_image_320795.jpg	5740	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1334	344141	四万温泉叶屋旅館	images/inn_image_344141.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1335	380501	四万温泉つばたや旅館	images/inn_image_380501.jpg	7129	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1336	304926	伊東園ホテル四万	images/inn_image_304926.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1337	311511	四万温泉中生館	images/inn_image_311511.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1338	313756	四万温泉料理旅館くれない	images/inn_image_313756.jpg	12138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1339	322799	一花館	images/inn_image_322799.jpg	11203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1340	333785	尻焼温泉 星ヶ岡山荘	images/inn_image_333785.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	965	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1341	314174	囲炉裏の御宿花敷の湯	images/inn_image_314174.jpg	16500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	965	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1343	381326	白根の見える丘（旧白根ハイム）	images/inn_image_381326.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	965	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1344	387831	万座高原ホテル	images/inn_image_387831.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	967	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1345	332661	万座ホテル聚楽（じゅらく）	images/inn_image_332661.jpg	8425	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	967	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1346	310143	万座亭	images/inn_image_310143.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	967	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1347	344955	万座プリンスホテル	images/inn_image_344955.jpg	3420	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	967	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1348	331317	万座温泉 日進舘	images/inn_image_331317.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	967	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1349	354031	万座温泉湯の花旅館	images/inn_image_354031.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	967	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1350	340273	半出来温泉登喜和荘	images/inn_image_340273.jpg	9074	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	967	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1351	310401	草津温泉 ホテル櫻井	images/inn_image_310401.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1352	375013	湯宿季の庭（ときのにわ）	images/inn_image_375013.jpg	14351	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1353	340168	お宿木の葉（このは）	images/inn_image_340168.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1354	332252	草津温泉ホテル一井湯畑の見える部屋がある宿	images/inn_image_332252.jpg	6462	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1355	315328	全室露天風呂付き 湯宿いわふじ	images/inn_image_315328.jpg	22000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1356	316594	草津温泉望雲	images/inn_image_316594.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1357	335720	草津ナウリゾートホテル	images/inn_image_335720.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1358	317235	草津ホテル	images/inn_image_317235.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1359	336397	昔心の宿金みどり	images/inn_image_336397.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1360	305356	草津ホテル別館綿の湯	images/inn_image_305356.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1361	362465	草津温泉奈良屋	images/inn_image_362465.jpg	22000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1362	344574	草津温泉喜びの宿高松	images/inn_image_344574.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1363	356100	草津温泉中村屋旅館	images/inn_image_356100.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1364	377648	湯畑を望むなつかしの湯宿ぬ志勇旅館	images/inn_image_377648.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1365	341406	泉水館	images/inn_image_341406.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1368	330414	草津湯菜の宿杓凪華（しゃくなげ）	images/inn_image_330414.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1369	330281	草津スカイランドホテル	images/inn_image_330281.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1370	323154	草津温泉ホテルヴィレッジ	images/inn_image_323154.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1371	363506	草津温泉お宿幸泉（ゆきずみ）	images/inn_image_363506.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1372	326708	おやどみゆき別館	images/inn_image_326708.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1373	345769	お宿平の家	images/inn_image_345769.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1374	330138	山本館	images/inn_image_330138.jpg	9814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1375	310188	湯宿みゆき	images/inn_image_310188.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1376	379296	ホテルスパックス草津	images/inn_image_379296.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1377	320115	草津温泉 無料貸切風呂と料理の宿 旅館美津木	images/inn_image_320115.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1378	347916	お豆の小宿花いんげん	images/inn_image_347916.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1379	398748	旅館するがや	images/inn_image_398748.jpg	8194	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1380	330651	セガワペンション	images/inn_image_330651.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1381	324214	お宿花まめ	images/inn_image_324214.jpg	6300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	969	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1382	389194	水車の宿山木館	images/inn_image_389194.jpg	15694	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	973	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1383	343670	丸木屋旅館	images/inn_image_343670.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	973	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1384	325685	かやぶきの郷薬師温泉旅籠	images/inn_image_325685.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	975	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1385	341686	フォレストリゾートコニファーいわびつ	images/inn_image_341686.jpg	7750	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	977	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1386	310507	伊香保温泉雨情の湯森秋旅館	images/inn_image_310507.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1387	324552	ホテル天坊	images/inn_image_324552.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1388	334118	伊香保温泉和心の宿オーモリ	images/inn_image_334118.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1389	341629	3つの貸切風呂と露天付き客室が人気の宿旅館さくらい	images/inn_image_341629.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1390	389236	ホテル木暮	images/inn_image_389236.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1392	336319	岸権旅館	images/inn_image_336319.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1393	320289	【ホテル松本楼】やさしさとふれあいの温泉宿	images/inn_image_320289.jpg	8796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1395	326968	松本楼洋風旅館ぴのん	images/inn_image_326968.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1396	370147	守り伝えし湯のこころ伊香保温泉福一	images/inn_image_370147.jpg	12222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1397	317902	伊香保温泉塚越屋七兵衛	images/inn_image_317902.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1398	332662	伊香保温泉香雲館	images/inn_image_332662.jpg	15500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1399	307144	お宿玉樹	images/inn_image_307144.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1400	336199	古式ゆかしき名湯之宿横手館	images/inn_image_336199.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1401	393273	伊香保温泉如心の里ひびき野	images/inn_image_393273.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1402	310483	伊香保温泉古久家	images/inn_image_310483.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1403	341042	大江戸温泉物語伊香保温泉伊香保	images/inn_image_341042.jpg	6759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1404	320761	温もりとおもてなしの宿伊香保温泉美松館	images/inn_image_320761.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1405	323633	伊香保温泉名物畳風呂と料理自慢の宿ホテルきむら	images/inn_image_323633.jpg	3900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1406	369460	伊香保温泉旅館ふくぜん	images/inn_image_369460.jpg	4120	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1407	341389	奥伊香保旅邸諧暢楼（かいちょうろう）	images/inn_image_341389.jpg	40000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1408	335384	千明仁泉亭	images/inn_image_335384.jpg	14000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1409	350008	素朴で心温まるおもてなしなつかしき宿いかほ秀水園	images/inn_image_350008.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1410	347090	小野上温泉旅館きくむら	images/inn_image_347090.jpg	5200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1411	374510	石坂旅館	images/inn_image_374510.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1412	392065	駅近温泉ＳＵＮおのがみ	images/inn_image_392065.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1413	398824	丸本館	images/inn_image_398824.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1414	304581	伊香保温泉あかりの宿おかべ	images/inn_image_304581.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1416	317199	にごり湯の宿赤城温泉ホテル	images/inn_image_317199.jpg	12222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	985	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1417	378280	赤城温泉花の宿湯之沢館	images/inn_image_378280.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	985	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1418	361032	赤城温泉御宿総本家	images/inn_image_361032.jpg	7870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	985	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1419	337396	ホテルふせじま	images/inn_image_337396.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	989	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1420	394336	開祖今井館	images/inn_image_394336.jpg	7138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	989	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1421	397330	湯端温泉	images/inn_image_397330.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	992	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1422	388014	磯部温泉舌切雀のお宿ホテル磯部ガーデン	images/inn_image_388014.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1423	375397	磯部温泉雀のお宿磯部館	images/inn_image_375397.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1424	312329	ふわふわ豆腐鍋のおいしいお宿見晴館	images/inn_image_312329.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1425	320739	大きな露天風呂貸切の宿旭館	images/inn_image_320739.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1426	341978	夕焼け小焼けのお宿高台旅館	images/inn_image_341978.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1427	312934	かんぽの宿磯部	images/inn_image_312934.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1428	350369	磯部温泉せせらぎの湯桜や作右衛門	images/inn_image_350369.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1429	364033	オーベルジュ・ルミエア（レーサムゴルフ＆スパリゾート内）	images/inn_image_364033.jpg	21296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	995	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1430	355472	ヴィラせせらぎ	images/inn_image_355472.jpg	8796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	996	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1431	378016	上野村温泉郷やまびこ荘	images/inn_image_378016.jpg	12037	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	996	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1432	315010	鹿鳴館	images/inn_image_315010.jpg	6800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1003	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1433	356978	新鹿沢温泉ホテル鹿沢真田屋	images/inn_image_356978.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1003	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1434	322615	休暇村嬬恋鹿沢	images/inn_image_322615.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1003	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1435	335352	群馬 藤岡 森の温泉ホテル（旧：藤岡温泉ホテルリゾート）	images/inn_image_335352.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1005	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1436	342577	奥嬬恋温泉 ふる里の宿干川旅館 花いち	images/inn_image_342577.jpg	16527	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1012	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1437	345333	パルコールつま恋リゾートホテル（ＢＢＨホテルグループ)	images/inn_image_345333.jpg	6479	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1012	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1581	315185	かんぽの宿 旭	images/inn_image_315185.jpg	10046	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1168	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1439	306194	相間川温泉ふれあい館	images/inn_image_306194.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1026	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1440	330060	軽井沢倶楽部 ホテル軽井沢１１３０	images/inn_image_330060.jpg	6689	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1029	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1441	379247	ホテルグリーンプラザ軽井沢	images/inn_image_379247.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1030	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1442	310632	源泉にごり湯の宿山田屋温泉旅館	images/inn_image_310632.jpg	14629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1032	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1443	326649	プチホテルマニトゥー	images/inn_image_326649.jpg	11851	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1034	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1444	342703	高原のホテル ラパン  別館「森の月」	images/inn_image_342703.jpg	28518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1034	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1445	315777	紀州鉄道軽井沢ホテル	images/inn_image_315777.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1034	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1446	348796	水上高原ホテル200（トゥーハンドレッド）	images/inn_image_348796.jpg	6250	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1036	12	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1447	340301	絹の湯久惠屋旅館	images/inn_image_340301.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1037	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1448	326880	赤城高原温泉山屋蒼月	images/inn_image_326880.jpg	16481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1038	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1449	355927	ヘルシーパル赤城	images/inn_image_355927.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1039	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1450	307299	プレジデントリゾートホテル軽井沢	images/inn_image_307299.jpg	6805	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1043	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1451	355702	妙義グリーンホテル＆テラス	images/inn_image_355702.jpg	7583	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1044	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1452	382841	倉渕川浦温泉はまゆう山荘	images/inn_image_382841.jpg	6148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1047	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1453	313487	袋田温泉思い出浪漫館〜自然に囲まれた美人の湯〜	images/inn_image_313487.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1050	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1454	375514	大子温泉やみぞ	images/inn_image_375514.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1050	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1455	375696	滝味の宿豊年万作	images/inn_image_375696.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1050	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1456	336960	ホテル奥久慈館【伊東園ホテルズ】	images/inn_image_336960.jpg	4300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1050	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1457	389166	あんこうの宿まるみつ旅館	images/inn_image_389166.jpg	13898	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1056	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1458	314302	やすらぎの数奇屋民宿やまに郷作	images/inn_image_314302.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1056	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1459	322659	五浦観光ホテル本館／別館大観荘	images/inn_image_322659.jpg	14500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1058	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1460	329155	鹿の湯松屋	images/inn_image_329155.jpg	5084	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1059	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1461	313176	うぐいす谷温泉 竹の葉	images/inn_image_313176.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1060	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1463	302051	北茨城ロハス磯原シーサイドホテル	images/inn_image_302051.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1061	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1464	308218	としまや月浜の湯	images/inn_image_308218.jpg	12500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1061	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1465	393054	元湯 山田屋旅館	images/inn_image_393054.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1063	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1466	383638	ホテルレイクサイドつくば	images/inn_image_383638.jpg	3168	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1077	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1467	374355	筑波山江戸屋	images/inn_image_374355.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1077	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1468	319634	筑波山温泉つくばグランドホテル	images/inn_image_319634.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1077	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1469	388119	筑波山京成ホテル	images/inn_image_388119.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1077	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1470	332930	筑波山ホテル青木屋	images/inn_image_332930.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1077	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1471	344738	筑波温泉ホテル	images/inn_image_344738.jpg	4907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1077	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1472	333348	筑波山温泉彩香の宿一望	images/inn_image_333348.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1077	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1473	338393	大洗パークホテル	images/inn_image_338393.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1080	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1474	316205	かんぽの宿 大洗	images/inn_image_316205.jpg	10231	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1080	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1475	395702	オーシャンビュー大洗	images/inn_image_395702.jpg	9120	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1080	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1476	382996	リゾート大洗まつもと	images/inn_image_382996.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1080	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1477	385716	旅館小林楼	images/inn_image_385716.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1080	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1478	315094	ペンションｓｉｏｓａｉ	images/inn_image_315094.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1080	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1479	304944	北浦宝来温泉つるるんの湯宿北浦湖畔荘	images/inn_image_304944.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1086	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1480	320359	いそざき温泉ホテルニュー白亜紀	images/inn_image_320359.jpg	4870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1091	11	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1481	388752	里山で過ごすひととき湯の澤鉱泉	images/inn_image_388752.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1093	14	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1482	350495	別邸翠風荘慶山	images/inn_image_350495.jpg	18796	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1095	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1483	316095	御老公の湯境店	images/inn_image_316095.jpg	11111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1096	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1484	311952	いこいの村涸沼	images/inn_image_311952.jpg	8564	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1097	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1485	319829	本物の温泉と露天風呂付き客室のある宿和どう	images/inn_image_319829.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1102	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1487	331731	ホテル美やま渓流の流れを感じる自然の中の温泉宿	images/inn_image_331731.jpg	7453	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1102	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1488	301972	柴原温泉 手打ちそばの宿柳屋	images/inn_image_301972.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1111	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1489	377368	本物の大自然に囲まれた露天風呂のある宿谷津川館	images/inn_image_377368.jpg	13888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1113	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1490	337414	秩父小鹿野温泉旅館梁山泊	images/inn_image_337414.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1113	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1491	317896	赤谷温泉小鹿荘	images/inn_image_317896.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1113	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1492	337864	主のこだわり料理の宿御宿 竹取物語	images/inn_image_337864.jpg	7777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1113	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1493	333522	香り豊かな花のおもてなし須崎旅館	images/inn_image_333522.jpg	5870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1113	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1494	363845	川の瀬に和む料理自慢の温泉宿せせらぎ荘	images/inn_image_363845.jpg	7610	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1113	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1495	337933	古民家と料理を楽しむ宿旅籠一番	images/inn_image_337933.jpg	7612	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1113	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1496	349920	ちちぶ温泉はなのや	images/inn_image_349920.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1119	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1497	340259	バイキングが人気☆ナチュラルファームシティ農園ホテル	images/inn_image_340259.jpg	6111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1121	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1498	335162	秩父・小鹿野温泉高根の湯越後屋旅館	images/inn_image_335162.jpg	6203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1122	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1499	310355	四季の湯温泉ヘリテイジリゾート 首都圏最大級の混浴露天温泉	images/inn_image_310355.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1123	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1500	394130	和海の宿ささ游	images/inn_image_394130.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1501	324333	白子ニューシーサイドホテル	images/inn_image_324333.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1502	385827	潮の香の湯宿浜紫	images/inn_image_385827.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1503	316681	ホテルニューカネイ	images/inn_image_316681.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1504	393700	ホテル白洋	images/inn_image_393700.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1505	379404	九十九里浜白子温泉青松庭白砂	images/inn_image_379404.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1506	312799	ホテルカアナパリ	images/inn_image_312799.jpg	5200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1507	327057	白子温泉東海荘	images/inn_image_327057.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1126	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1508	344192	龍宮城スパ・ホテル三日月	images/inn_image_344192.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1510	346279	ホテル喜楽館	images/inn_image_346279.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1128	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1511	326505	養老温泉秘湯の宿滝見苑	images/inn_image_326505.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1512	332540	渓谷別庭もちの木	images/inn_image_332540.jpg	16500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1513	387180	渓流の宿福水	images/inn_image_387180.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1514	378792	養老渓谷温泉郷 小さな旅の宿 天龍荘	images/inn_image_378792.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1515	349168	養老温泉黒湯の宿嵯峨和	images/inn_image_349168.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1516	357160	養老渓谷『食べる温泉宿』鶴乃家	images/inn_image_357160.jpg	1833	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1517	320702	養老渓谷温泉郷旅館喜代元	images/inn_image_320702.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1518	311991	養老温泉温泉旅館川の家	images/inn_image_311991.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1131	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1519	320242	勝浦ホテル三日月	images/inn_image_320242.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1132	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1520	326499	勝浦ヒルトップホテル＆レジデンス	images/inn_image_326499.jpg	6650	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1132	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1521	382942	天然温泉海辺の湯	images/inn_image_382942.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1138	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1522	306894	かぢや旅館	images/inn_image_306894.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1138	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1523	316526	美味しい温泉夢みさき	images/inn_image_316526.jpg	9800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1141	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1524	323242	南房総千倉温泉千倉館	images/inn_image_323242.jpg	6400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1141	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1525	390180	海辺の温泉料理宿ホテル千倉	images/inn_image_390180.jpg	6481	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1141	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1526	318840	自家源泉の宿矢原荘	images/inn_image_318840.jpg	3703	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1141	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1527	322529	磯香るやすらぎの宿青倉亭	images/inn_image_322529.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1141	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1528	303030	温泉民宿しあわせ荘	images/inn_image_303030.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1141	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1529	326321	グランドホテル太陽	images/inn_image_326321.jpg	3240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1142	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1530	332623	味覚と眺望の宿ホテル南海荘（HMIホテルグループ）	images/inn_image_332623.jpg	6120	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1142	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1531	360480	赤ちゃんにも妊婦さんにも優しいおもてなしの宿季粋の宿紋屋	images/inn_image_360480.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1142	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1532	328257	南房総白浜温泉白浜オーシャンリゾート（旧リゾートイン白浜）	images/inn_image_328257.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1142	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1534	323999	自然に囲まれた絶景露天の宿ジャングルパレス	images/inn_image_323999.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1142	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1535	394956	たてやま温泉千里の風	images/inn_image_394956.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1536	303187	身体にやさしい宿サンゴの湯やどかり	images/inn_image_303187.jpg	4259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1537	310541	南房総館山平砂浦ビーチホテル	images/inn_image_310541.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1538	323528	元湯天然温泉吉祥	images/inn_image_323528.jpg	4979	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1539	312821	海の湯宿花しぶき	images/inn_image_312821.jpg	10648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1540	328464	休暇村館山	images/inn_image_328464.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1541	325876	館山温泉元首相別邸跡鳩山荘松庵	images/inn_image_325876.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1542	303521	館山シーサイドホテル	images/inn_image_303521.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1543	314135	夕日海岸 昇鶴（旧たてやま夕日海岸ホテル）	images/inn_image_314135.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1544	369363	館山リゾートホテル	images/inn_image_369363.jpg	3500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1545	311375	南房総館山温泉お宿やまもと	images/inn_image_311375.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1546	339168	心鮮な御馳走ホテル川端	images/inn_image_339168.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1547	351482	ペンションメイプル	images/inn_image_351482.jpg	5185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1144	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1548	326904	満ちてくる心の宿吉夢	images/inn_image_326904.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1549	301732	魚彩和みの宿三水	images/inn_image_301732.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1550	312032	「浜辺の湯浪漫の歌」宿中屋	images/inn_image_312032.jpg	16805	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1551	330860	こみなと漁師料理海の庭	images/inn_image_330860.jpg	15555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1552	322642	小湊実入温泉ホテルグリーンプラザ鴨川	images/inn_image_322642.jpg	4444	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1553	330649	旬彩の宿緑水亭	images/inn_image_330649.jpg	23148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1554	336872	海鮮問屋の宿くろしお	images/inn_image_336872.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1555	314233	鴨川ホテル三日月	images/inn_image_314233.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1556	366486	鴨川ヒルズリゾートホテル	images/inn_image_366486.jpg	6018	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1558	343712	鴨川グランドホテル	images/inn_image_343712.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1559	310861	房総鴨川温泉是空―ＺＥＫＵＵ―	images/inn_image_310861.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1560	313560	鴨川館	images/inn_image_313560.jpg	12500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1561	319312	海鮮の宿舟付	images/inn_image_319312.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1562	324403	鴨川シーワールドホテル	images/inn_image_324403.jpg	7592	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1563	314205	魚眠庵マルキ本館	images/inn_image_314205.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1564	331128	潮騒リゾート鴨川	images/inn_image_331128.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1565	354354	鴨川温泉海辺の宿恵比寿	images/inn_image_354354.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1566	329241	鴨川ユニバ−スホテル	images/inn_image_329241.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1567	305402	地魚と潮騒の宿よしのや	images/inn_image_305402.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1568	313402	鴨川温泉ホテル 中村	images/inn_image_313402.jpg	5277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1569	329456	天然温泉高鶴山荘	images/inn_image_329456.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1570	366472	鴨川温泉画家ゆかりの宿江澤館	images/inn_image_366472.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1571	334646	犬吠埼温泉海辺のくつろぎの宿ぎょうけい館	images/inn_image_334646.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1156	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1572	323552	犬吠埼観光ホテル	images/inn_image_323552.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1156	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1573	326415	絶景の宿犬吠埼ホテル	images/inn_image_326415.jpg	7314	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1156	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1574	329208	別邸海と森	images/inn_image_329208.jpg	16800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1156	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1575	323004	ホテルニュー大新	images/inn_image_323004.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1156	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1576	365252	Beachside Onsen Resort ゆうみ	images/inn_image_365252.jpg	17090	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1157	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1577	327150	安房温泉紀伊乃国屋	images/inn_image_327150.jpg	15272	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1157	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1578	390282	お宿ひるた	images/inn_image_390282.jpg	14363	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1157	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1579	328317	大自然の静寂と天然自噴温泉を愉しむ湯宿亀山温泉ホテル	images/inn_image_328317.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1158	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1580	330801	スパ＆リゾート九十九里太陽の里	images/inn_image_330801.jpg	4889	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1160	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1583	313386	天然温泉人魚の湯海紅豆	images/inn_image_313386.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1172	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1584	317588	ホテルベルセルバ	images/inn_image_317588.jpg	7407	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1181	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1585	360024	ホテルエミオン東京ベイ	images/inn_image_360024.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1183	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1586	365310	スパ＆ホテル舞浜ユーラシア	images/inn_image_365310.jpg	3935	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1183	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1587	304280	大江戸温泉物語浦安温泉浦安万華郷	images/inn_image_304280.jpg	4611	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1183	11	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1589	335016	緑水亭勝浦別館翠海（すいか）	images/inn_image_335016.jpg	13500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1190	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1590	345110	季（とき）の湯温泉木更津富士屋季眺	images/inn_image_345110.jpg	14500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1191	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1591	328548	天然温泉の宿ホテル白岩	images/inn_image_328548.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1209	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1592	324876	ＳＰＡ＆ＨＯＴＥＬ和	images/inn_image_324876.jpg	3148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1213	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1593	385557	厚木飯山温泉元湯旅館	images/inn_image_385557.jpg	15574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1217	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1594	369670	地の食材と四季の味七沢温泉盛楽苑	images/inn_image_369670.jpg	12870	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1220	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1595	302111	元湯玉川館	images/inn_image_302111.jpg	12300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1220	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1596	391195	七沢温泉 中屋旅館	images/inn_image_391195.jpg	8000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1220	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1597	303348	宇宙と地中から元気をもらう宿七沢荘（日本の名湯百選）	images/inn_image_303348.jpg	7200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1220	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1598	306043	七沢温泉福元館	images/inn_image_306043.jpg	5500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1220	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1599	319267	中川温泉かくれ湯の里信玄館	images/inn_image_319267.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1226	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1600	336202	中川温泉丹沢ホテル時之栖	images/inn_image_336202.jpg	2398	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1226	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1601	385995	箱根湯本温泉ホテル南風荘	images/inn_image_385995.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1602	341236	箱根湯本温泉月の宿紗ら	images/inn_image_341236.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1603	330299	箱根湯本温泉天成園	images/inn_image_330299.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1604	315958	ホテルマイユクール祥月	images/inn_image_315958.jpg	12777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1605	322211	箱根湯本10種の源泉湯めぐりと創作懐石花紋	images/inn_image_322211.jpg	16000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1607	339963	箱根湯本温泉ホテルおかだ	images/inn_image_339963.jpg	10092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1608	334184	くつろぎの宿静観荘	images/inn_image_334184.jpg	19900	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1609	352635	星野リゾート界 箱根	images/inn_image_352635.jpg	18240	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1610	356061	木もれびの宿ふるさと	images/inn_image_356061.jpg	5092	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1611	316659	箱根湯本温泉小田急ホテルはつはな	images/inn_image_316659.jpg	13888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1612	345297	箱根湯本温泉ホテルおくゆもと	images/inn_image_345297.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1613	328838	湯本富士屋ホテル	images/inn_image_328838.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1614	338218	旅籠きんとうえん	images/inn_image_338218.jpg	6296	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1615	321816	ホテル河鹿荘	images/inn_image_321816.jpg	13138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1616	329388	箱根湯本温泉真綿の湯萬翠楼福住	images/inn_image_329388.jpg	18611	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1617	378894	箱根水明荘	images/inn_image_378894.jpg	10500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1618	307128	箱根の森おかだ	images/inn_image_307128.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1619	345396	箱根湯本温泉湯さか荘	images/inn_image_345396.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1620	348438	箱根湯本温泉あうら橘	images/inn_image_348438.jpg	13300	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1621	341306	箱根パークス吉野	images/inn_image_341306.jpg	7194	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1622	327501	ままね湯ますとみ旅館	images/inn_image_327501.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1623	323012	結いの宿彌榮館（ゆいのやどやえいかん）	images/inn_image_323012.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1624	327041	離れ五棟だけの隠れ家山家荘	images/inn_image_327041.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1625	348699	箱根湯本ホテル	images/inn_image_348699.jpg	9500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1626	381548	箱根藍瑠（はこねあいる）	images/inn_image_381548.jpg	12805	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1627	312297	箱根湯本温泉玉庭	images/inn_image_312297.jpg	36000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1628	336958	箱根湯本ホテル仙景	images/inn_image_336958.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1629	317667	近江屋旅館	images/inn_image_317667.jpg	4722	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1631	310837	歴史生きづく宿環翠楼	images/inn_image_310837.jpg	14100	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1228	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1632	327701	箱根温泉鶴井の宿紫雲荘	images/inn_image_327701.jpg	12000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1228	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1633	305054	寛永七年(1630年) 創業一の湯本館	images/inn_image_305054.jpg	7200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1228	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1634	324092	塔の沢一の湯新館	images/inn_image_324092.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1228	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1635	321827	渓谷沿いに佇む宿一の湯塔ノ沢キャトルセゾン	images/inn_image_321827.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1228	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1636	331774	福住楼	images/inn_image_331774.jpg	18208	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1228	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1637	333638	名湯万石の湯よきや旅館	images/inn_image_333638.jpg	8800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1228	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1638	355013	箱根萬岳楼（ばんがくろう）	images/inn_image_355013.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1639	358542	料亭旅館いちい亭	images/inn_image_358542.jpg	25944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1640	381978	箱根翡翠	images/inn_image_381978.jpg	16203	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1641	348397	リ・カーヴ箱根	images/inn_image_348397.jpg	4620	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1642	358672	星野リゾート界 仙石原	images/inn_image_358672.jpg	23324	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1643	313878	オーベルジュ箱根フォンテーヌブロー仙石亭	images/inn_image_313878.jpg	17000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1644	362555	きたの風茶寮	images/inn_image_362555.jpg	30555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1645	314876	小田急 箱根ハイランドホテル	images/inn_image_314876.jpg	10555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1646	321409	仙郷楼	images/inn_image_321409.jpg	21000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1647	335459	Bioterrace ORGANiCA HAKONE	images/inn_image_335459.jpg	9259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1648	345284	富士山を一望できる宿 ホテルグリーンプラザ箱根	images/inn_image_345284.jpg	9722	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1649	334331	箱根ふうら	images/inn_image_334331.jpg	15555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1650	301722	湯屋 やまざくら	images/inn_image_301722.jpg	11435	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1651	310263	全室露天風呂付の隠れ宿金乃竹仙石原	images/inn_image_310263.jpg	40000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1652	366298	犬御殿箱根仙石原温泉森のあかり	images/inn_image_366298.jpg	9120	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1653	323046	箱根星のあかり	images/inn_image_323046.jpg	18500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1	386526	とよとみ温泉川島旅館	images/inn_image_386526.jpg	7700	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
25	304893	知床第一ホテル	images/inn_image_304893.jpg	10592	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	16	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
49	326643	川湯第一ホテル忍冬（SUIKAZURA）	images/inn_image_326643.jpg	8333	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	27	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
73	323069	阿寒の森鶴雅リゾート花ゆう香	images/inn_image_323069.jpg	8500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	33	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
97	367870	ノーザンアークリゾート	images/inn_image_367870.jpg	8055	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	43	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
121	318635	フラノ寶亭留	images/inn_image_318635.jpg	10160	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	53	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
145	314931	新冠温泉レ・コードの湯ホテルヒルズ	images/inn_image_314931.jpg	2518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	75	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1655	368884	箱根茶寮金時	images/inn_image_368884.jpg	18000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1656	322648	おくど茶寮利休庵	images/inn_image_322648.jpg	13500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1657	319744	箱根仙石原虎乃湯	images/inn_image_319744.jpg	5814	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1658	335529	万寿屋旅館	images/inn_image_335529.jpg	4275	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1659	385286	ＫＡＮＡＹＡＲＥＳＯＲＴＨＡＫＯＮＥ(金谷リゾート箱根)	images/inn_image_385286.jpg	28000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1660	366545	箱根高原ホテル	images/inn_image_366545.jpg	8148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1661	307373	リブマックスリゾート箱根仙石原	images/inn_image_307373.jpg	2777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1662	326424	ホテル花月園	images/inn_image_326424.jpg	5555	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1663	343360	箱根仙石原温泉温泉旅館みたけ	images/inn_image_343360.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1664	384576	箱根六花荘	images/inn_image_384576.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1665	314523	ペットと一緒に泊まれる宿仙石高原大箱根一の湯	images/inn_image_314523.jpg	6200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1666	311844	ホテル箱根パウエル	images/inn_image_311844.jpg	4611	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1667	376216	ミスティイン仙石原	images/inn_image_376216.jpg	4500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1668	369086	箱根・芦ノ湖はなをり	images/inn_image_369086.jpg	16625	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1230	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1669	390005	ホテルハーヴェスト箱根甲子園	images/inn_image_390005.jpg	11574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1230	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1670	358725	箱根仙石原プリンスホテル	images/inn_image_358725.jpg	6111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1230	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
149	339592	三笠天然温泉太古の湯スパリゾートHOTELTAIKO・別邸旅籠	images/inn_image_339592.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	79	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
169	321633	ぬくもりの宿 ふる川	images/inn_image_321633.jpg	13611	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	98	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
193	320025	ホテルソニア小樽	images/inn_image_320025.jpg	2907	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	102	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
217	318556	ニセコ温泉郷 いこいの湯宿 いろは	images/inn_image_318556.jpg	8657	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	108	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
240	324102	洞爺湖万世閣ホテルレイクサイドテラス	images/inn_image_324102.jpg	7777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	124	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
265	345927	花鐘亭はなや	images/inn_image_345927.jpg	10648	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	127	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
289	317181	ロイヤルホテル みなみ北海道鹿部	images/inn_image_317181.jpg	4027	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	147	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
313	335568	湯の浜ホテル	images/inn_image_335568.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	154	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
337	390510	おけと勝山温泉ゆぅゆ	images/inn_image_390510.jpg	15740	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	189	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
361	316808	登録有形文化財の宿ヤマニ仙遊館	images/inn_image_316808.jpg	4953	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	296	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
385	372556	十和田湖畔温泉とわだこ遊月	images/inn_image_372556.jpg	6400	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	314	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
409	334145	岩手の名湯侍の湯おもてなしの宿おぼない	images/inn_image_334145.jpg	11111	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	372	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
433	305970	民宿えのぐ箱	images/inn_image_305970.jpg	3518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	383	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
457	381165	つなぎ温泉 湯守 ホテル大観	images/inn_image_381165.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	392	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
465	338456	花巻温泉佳松園 肌にしみこむ化粧水のような「とろとろの湯」	images/inn_image_338456.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
481	308297	花巻温泉郷いやしろの湯ホテル三右エ門	images/inn_image_308297.jpg	2500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	395	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
505	316812	奥州平泉温泉そば庵しづか亭	images/inn_image_316812.jpg	6944	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	436	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
529	313236	ホテル亀屋（HMIホテルグループ）	images/inn_image_313236.jpg	5277	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	451	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
553	302533	秋保グランドホテル	images/inn_image_302533.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
565	371544	仙台・秋保温泉ホテル華乃湯別館REN〜簾〜（旧 清流閣)	images/inn_image_371544.jpg	5200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	462	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
577	371782	美味しい料理と美肌の温泉たんぽぽ	images/inn_image_371782.jpg	6759	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	470	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
601	304322	松島一の坊	images/inn_image_304322.jpg	18800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	485	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
625	335716	男鹿観光ホテル	images/inn_image_335716.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	501	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
649	310020	元湯水沢山荘	images/inn_image_310020.jpg	10138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	527	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
673	313755	瀧の屋	images/inn_image_313755.jpg	7222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	593	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
697	371640	湯田川温泉仙荘湯田川	images/inn_image_371640.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	601	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
721	324837	わらべ唄の宿湯の原	images/inn_image_324837.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	615	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
746	363197	湯ったりゆったり小関館	images/inn_image_363197.jpg	4629	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	623	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
770	322818	三木屋(さぎや)	images/inn_image_322818.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	637	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
794	389060	お食事処・お泊まり処・お湯処ろばた	images/inn_image_389060.jpg	4101	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	641	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
818	332934	小野川温泉湯杜匠味庵山川	images/inn_image_332934.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	646	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
842	302303	数寄屋造りの温泉宿青葉旅館	images/inn_image_302303.jpg	13000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	687	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
866	358805	旬樹庵湯めしいづみや	images/inn_image_358805.jpg	10000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	688	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
891	310152	磐梯熱海温泉四季彩一力	images/inn_image_310152.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	711	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
915	324138	吹の湯旅館	images/inn_image_324138.jpg	9600	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	741	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
939	326316	ヒーリングインホワイトペンション	images/inn_image_326316.jpg	9800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	761	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
945	385730	猪苗代湖畔の宿 志田浜温泉 レイクサイド磐光	images/inn_image_385730.jpg	6138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	763	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
962	344696	源泉掛け流しの宿柳津温泉旅館内田屋	images/inn_image_344696.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	768	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
986	379460	湯野上温泉田舎モダン舘乃湯	images/inn_image_379460.jpg	8148	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	780	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1011	341779	森の中の小さな隠れ宿ヴェルレーヌ	images/inn_image_341779.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	824	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1035	345871	東急那須リゾートホテルハーヴェスト那須	images/inn_image_345871.jpg	10185	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	835	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1058	342575	湯ったりの宿松楓楼松屋	images/inn_image_342575.jpg	15000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1081	382532	赤沢温泉旅館	images/inn_image_382532.jpg	4055	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	848	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1105	389540	奥日光 森のホテル	images/inn_image_389540.jpg	18518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	868	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1129	314793	日光千姫物語	images/inn_image_314793.jpg	14259	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	870	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1153	398193	星野リゾート界 鬼怒川	images/inn_image_398193.jpg	11574	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1177	325934	ホテルハーヴェスト鬼怒川	images/inn_image_325934.jpg	7500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	874	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1200	319134	ニューサンピア栃木	images/inn_image_319134.jpg	6050	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	914	7	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1224	308333	ペンションZAKOJI	images/inn_image_308333.jpg	7777	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	936	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1248	359367	風木立の川辺紫明館	images/inn_image_359367.jpg	10046	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	944	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1271	310068	上牧温泉ホテルニュー上牧	images/inn_image_310068.jpg	3888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	949	10	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1295	300904	囲炉裏の個室炭火ダイニング温宿三河屋	images/inn_image_300904.jpg	8518	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1297	328535	【豆富懐石 猿ヶ京ホテル】自家製豆富と源泉かけ流し大露天風呂	images/inn_image_328535.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	957	8	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1318	320135	渓声の宿いずみや１日５組限定の大人の隠れ宿	images/inn_image_320135.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	961	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1342	312629	尻焼温泉ホテル光山荘	images/inn_image_312629.jpg	11000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	965	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1367	362368	益成屋旅館	images/inn_image_362368.jpg	17138	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	968	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1391	322116	人気の露天風呂付き客室と美味に和む宿かのうや	images/inn_image_322116.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1394	314622	三種の無料貸切風呂と手作り会席料理の湯宿市川別館晴観荘	images/inn_image_314622.jpg	6500	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1415	326052	伊香保温泉旅館よろこびの宿しん喜	images/inn_image_326052.jpg	5000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	984	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1438	314908	和食温泉ペンションまほうのじゅうたん	images/inn_image_314908.jpg	4166	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1012	1	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1462	344910	潮騒が運ぶ旬魚の宿二ツ島観光ホテル	images/inn_image_344910.jpg	7000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1061	2	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1486	372117	秩父七湯「御代の湯」 新木鉱泉旅館 露天風呂付き客室も温泉の宿	images/inn_image_372117.jpg	10222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1102	5	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1509	307701	龍宮城スパ・ホテル三日月富士見亭	images/inn_image_307701.jpg	23000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1127	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1533	314616	南国ホテル【伊東園ホテルズ】	images/inn_image_314616.jpg	4800	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1142	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1557	386568	自家源泉の小さなお宿豊明殿	images/inn_image_386568.jpg	6000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1146	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1582	341212	貸別荘バーネットビレッジ	images/inn_image_341212.jpg	3888	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1168	6	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1588	360444	展望温泉付きコンドミニアムホテルグランビュー岩井	images/inn_image_360444.jpg	2222	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1185	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1606	316987	金乃竹塔ノ澤	images/inn_image_316987.jpg	34000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1630	323295	箱根湯本温泉駅チカ！貸切露天風呂が無料◎山海の幸喜仙荘	images/inn_image_323295.jpg	9000	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1227	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
1654	312415	仙石原露天付客室充実の宿品の木一の湯	images/inn_image_312415.jpg	7200	4.3	4.7	4.3	4.5	4.6	4.4	129	5	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1229	4	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: onsen_inns_onseninnmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.onsen_inns_onseninnmodel_id_seq', 1670, true);


--
-- Name: onsen_inns_onsenmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.onsen_inns_onsenmodel_id_seq', 3259, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: onsen_inns_onseninn onsen_inns_onseninnmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onseninn
    ADD CONSTRAINT onsen_inns_onseninnmodel_pkey PRIMARY KEY (id);


--
-- Name: onsen_inns_onsen onsen_inns_onsenmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onsen
    ADD CONSTRAINT onsen_inns_onsenmodel_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: onsen_inns_onseninnmodel_onsen_id_8f99b6ce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX onsen_inns_onseninnmodel_onsen_id_8f99b6ce ON public.onsen_inns_onseninn USING btree (onsen_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: onsen_inns_onseninn onsen_inns_onseninnm_onsen_id_8f99b6ce_fk_onsen_inn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onseninn
    ADD CONSTRAINT onsen_inns_onseninnm_onsen_id_8f99b6ce_fk_onsen_inn FOREIGN KEY (onsen_id) REFERENCES public.onsen_inns_onsen(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

