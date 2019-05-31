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
    onsen_name character varying(20) NOT NULL,
    onsen_name_kana character varying(30) NOT NULL,
    onsen_address character varying(30) NOT NULL,
    region character varying(10) NOT NULL,
    prefecture character varying(10) NOT NULL,
    large_area character varying(10) NOT NULL,
    small_area character varying(10) NOT NULL,
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
    category integer
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
25	Can add onsen model	7	add_onsenmodel
26	Can change onsen model	7	change_onsenmodel
27	Can delete onsen model	7	delete_onsenmodel
28	Can view onsen model	7	view_onsenmodel
29	Can add onsen inn model	8	add_onseninnmodel
30	Can change onsen inn model	8	change_onseninnmodel
31	Can delete onsen inn model	8	delete_onseninnmodel
32	Can view onsen inn model	8	view_onseninnmodel
33	Can add onsen	7	add_onsen
34	Can change onsen	7	change_onsen
35	Can delete onsen	7	delete_onsen
36	Can view onsen	7	view_onsen
37	Can add onsen inn	8	add_onseninn
38	Can change onsen inn	8	change_onseninn
39	Can delete onsen inn	8	delete_onseninn
40	Can view onsen inn	8	view_onseninn
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$cO80J9qnYbZe$DPRIMiDHWnJELV8EZOlWOykqLujJvuhPQt6m9k60F0Q=	2019-05-31 04:04:45.628109+00	t	admin			admin@example.com	t	t	2019-05-31 04:02:31.32835+00
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
1	2019-05-31 12:43:00.90482+00	30	有馬温泉瑞宝園	3		8	1
2	2019-05-31 12:43:00.92798+00	29	有馬山叢御所別墅	3		8	1
3	2019-05-31 12:43:00.93192+00	28	有馬温泉陶泉御所坊	3		8	1
4	2019-05-31 12:43:00.937425+00	27	上大坊	3		8	1
5	2019-05-31 12:43:00.940995+00	26	有馬温泉橋乃家別館嵐翠〈らんすい〉	3		8	1
6	2019-05-31 12:43:00.944167+00	25	ダイヤモンド有馬温泉ソサエティ	3		8	1
7	2019-05-31 12:43:00.94736+00	24	有馬温泉小都里KOTORI	3		8	1
8	2019-05-31 12:43:00.952302+00	23	有馬温泉月光園游月山荘	3		8	1
9	2019-05-31 12:43:00.955952+00	22	メルヴェール有馬	3		8	1
10	2019-05-31 12:43:00.959101+00	21	有馬温泉メープル有馬	3		8	1
11	2019-05-31 12:43:00.962767+00	20	神戸有馬温泉元湯龍泉閣〜赤ちゃんも楽しめるお部屋食の宿〜	3		8	1
12	2019-05-31 12:43:00.966528+00	19	有馬温泉〜１日８組限定美食家たちが集う宿〜四季の彩旅篭	3		8	1
13	2019-05-31 12:43:00.971917+00	18	有馬温泉ホテル花小宿〜貸切風呂が楽しめる大人の宿〜	3		8	1
14	2019-05-31 12:43:00.975422+00	17	有馬温泉ねぎや陵楓閣	3		8	1
15	2019-05-31 12:43:00.979013+00	16	有馬温泉〜金泉・銀泉と４つの貸切風呂〜湯屋の宿康貴	3		8	1
16	2019-05-31 12:43:00.982852+00	15	有馬温泉竹取亭円山	3		8	1
17	2019-05-31 12:43:00.986494+00	14	有馬温泉かんぽの宿有馬	3		8	1
18	2019-05-31 12:43:00.989861+00	13	有馬温泉元湯古泉閣	3		8	1
19	2019-05-31 12:43:00.993318+00	12	有馬温泉天地の宿奥の細道	3		8	1
20	2019-05-31 12:43:00.997068+00	11	有馬温泉月光園鴻朧館	3		8	1
21	2019-05-31 12:43:01.001232+00	10	有馬温泉高山荘華野	3		8	1
22	2019-05-31 12:43:01.004819+00	9	有馬温泉神戸牛と金泉・銀泉の宿有馬御苑	3		8	1
23	2019-05-31 12:43:01.008256+00	8	有馬温泉SPATERRACE紫翠【兆楽姉妹館】	3		8	1
24	2019-05-31 12:43:01.012477+00	7	有馬温泉有馬グランドホテル	3		8	1
25	2019-05-31 12:43:01.016295+00	6	有馬温泉欽山	3		8	1
26	2019-05-31 12:43:01.019883+00	5	有馬温泉中の坊瑞苑	3		8	1
27	2019-05-31 12:43:01.023334+00	4	有馬温泉御幸荘花結び	3		8	1
28	2019-05-31 12:43:01.026854+00	3	有馬温泉有馬ロイヤルホテル	3		8	1
29	2019-05-31 12:43:01.030439+00	2	有馬温泉銀水荘兆楽	3		8	1
30	2019-05-31 12:43:01.033769+00	1	有馬温泉兵衛向陽閣	3		8	1
31	2019-05-31 12:48:06.962679+00	60	有馬温泉瑞宝園	3		8	1
32	2019-05-31 12:48:06.96839+00	59	有馬山叢御所別墅	3		8	1
33	2019-05-31 12:48:06.971572+00	58	有馬温泉陶泉御所坊	3		8	1
34	2019-05-31 12:48:06.974678+00	57	上大坊	3		8	1
35	2019-05-31 12:48:06.978444+00	56	有馬温泉橋乃家別館嵐翠〈らんすい〉	3		8	1
36	2019-05-31 12:48:06.982505+00	55	ダイヤモンド有馬温泉ソサエティ	3		8	1
37	2019-05-31 12:48:06.986872+00	54	有馬温泉小都里KOTORI	3		8	1
38	2019-05-31 12:48:06.990476+00	53	有馬温泉月光園游月山荘	3		8	1
39	2019-05-31 12:48:06.994263+00	52	メルヴェール有馬	3		8	1
40	2019-05-31 12:48:06.998173+00	51	有馬温泉メープル有馬	3		8	1
41	2019-05-31 12:48:07.001507+00	50	神戸有馬温泉元湯龍泉閣〜赤ちゃんも楽しめるお部屋食の宿〜	3		8	1
42	2019-05-31 12:48:07.004885+00	49	有馬温泉〜１日８組限定美食家たちが集う宿〜四季の彩旅篭	3		8	1
43	2019-05-31 12:48:07.008342+00	48	有馬温泉ホテル花小宿〜貸切風呂が楽しめる大人の宿〜	3		8	1
44	2019-05-31 12:48:07.011888+00	47	有馬温泉ねぎや陵楓閣	3		8	1
45	2019-05-31 12:48:07.015651+00	46	有馬温泉〜金泉・銀泉と４つの貸切風呂〜湯屋の宿康貴	3		8	1
46	2019-05-31 12:48:07.018865+00	45	有馬温泉竹取亭円山	3		8	1
47	2019-05-31 12:48:07.022006+00	44	有馬温泉かんぽの宿有馬	3		8	1
48	2019-05-31 12:48:07.025208+00	43	有馬温泉元湯古泉閣	3		8	1
49	2019-05-31 12:48:07.028764+00	42	有馬温泉天地の宿奥の細道	3		8	1
50	2019-05-31 12:48:07.032092+00	41	有馬温泉月光園鴻朧館	3		8	1
51	2019-05-31 12:48:07.035497+00	40	有馬温泉高山荘華野	3		8	1
52	2019-05-31 12:48:07.038631+00	39	有馬温泉神戸牛と金泉・銀泉の宿有馬御苑	3		8	1
53	2019-05-31 12:48:07.042164+00	38	有馬温泉SPATERRACE紫翠【兆楽姉妹館】	3		8	1
54	2019-05-31 12:48:07.046336+00	37	有馬温泉有馬グランドホテル	3		8	1
55	2019-05-31 12:48:07.049424+00	36	有馬温泉欽山	3		8	1
56	2019-05-31 12:48:07.052897+00	35	有馬温泉中の坊瑞苑	3		8	1
57	2019-05-31 12:48:07.056329+00	34	有馬温泉御幸荘花結び	3		8	1
58	2019-05-31 12:48:07.059786+00	33	有馬温泉有馬ロイヤルホテル	3		8	1
59	2019-05-31 12:48:07.063034+00	32	有馬温泉銀水荘兆楽	3		8	1
60	2019-05-31 12:48:07.065948+00	31	有馬温泉兵衛向陽閣	3		8	1
61	2019-05-31 12:50:16.864289+00	91	sadfa	1	[{"added": {}}]	8	1
62	2019-05-31 12:51:18.163885+00	91	sadfa	2	[]	8	1
63	2019-05-31 12:56:18.265885+00	120	有馬温泉瑞宝園	3		8	1
64	2019-05-31 12:56:18.270976+00	119	有馬山叢御所別墅	3		8	1
65	2019-05-31 12:56:18.274259+00	118	有馬温泉陶泉御所坊	3		8	1
66	2019-05-31 12:56:18.277762+00	117	上大坊	3		8	1
67	2019-05-31 12:56:18.281165+00	116	有馬温泉橋乃家別館嵐翠〈らんすい〉	3		8	1
68	2019-05-31 12:56:18.285222+00	115	ダイヤモンド有馬温泉ソサエティ	3		8	1
69	2019-05-31 12:56:18.290009+00	114	有馬温泉小都里KOTORI	3		8	1
70	2019-05-31 12:56:18.293798+00	113	有馬温泉月光園游月山荘	3		8	1
71	2019-05-31 12:56:18.297281+00	112	メルヴェール有馬	3		8	1
72	2019-05-31 12:56:18.301301+00	111	有馬温泉メープル有馬	3		8	1
73	2019-05-31 12:56:18.306371+00	110	神戸有馬温泉元湯龍泉閣〜赤ちゃんも楽しめるお部屋食の宿〜	3		8	1
74	2019-05-31 12:56:18.310677+00	109	有馬温泉〜１日８組限定美食家たちが集う宿〜四季の彩旅篭	3		8	1
75	2019-05-31 12:56:18.314789+00	108	有馬温泉ホテル花小宿〜貸切風呂が楽しめる大人の宿〜	3		8	1
76	2019-05-31 12:56:18.319949+00	107	有馬温泉ねぎや陵楓閣	3		8	1
77	2019-05-31 12:56:18.323173+00	106	有馬温泉〜金泉・銀泉と４つの貸切風呂〜湯屋の宿康貴	3		8	1
78	2019-05-31 12:56:18.326509+00	105	有馬温泉竹取亭円山	3		8	1
79	2019-05-31 12:56:18.329849+00	104	有馬温泉かんぽの宿有馬	3		8	1
80	2019-05-31 12:56:18.333589+00	103	有馬温泉元湯古泉閣	3		8	1
81	2019-05-31 12:56:18.338692+00	102	有馬温泉天地の宿奥の細道	3		8	1
82	2019-05-31 12:56:18.345923+00	101	有馬温泉月光園鴻朧館	3		8	1
83	2019-05-31 12:56:18.350096+00	100	有馬温泉神戸牛と金泉・銀泉の宿有馬御苑	3		8	1
84	2019-05-31 12:56:18.356257+00	99	有馬温泉SPATERRACE紫翠【兆楽姉妹館】	3		8	1
85	2019-05-31 12:56:18.3595+00	98	有馬温泉有馬グランドホテル	3		8	1
86	2019-05-31 12:56:18.362952+00	97	有馬温泉欽山	3		8	1
87	2019-05-31 12:56:18.366857+00	96	有馬温泉中の坊瑞苑	3		8	1
88	2019-05-31 12:56:18.37211+00	95	有馬温泉御幸荘花結び	3		8	1
89	2019-05-31 12:56:18.375114+00	94	有馬温泉有馬ロイヤルホテル	3		8	1
90	2019-05-31 12:56:18.378214+00	93	有馬温泉銀水荘兆楽	3		8	1
91	2019-05-31 12:56:18.388463+00	92	有馬温泉兵衛向陽閣	3		8	1
92	2019-05-31 12:56:18.3914+00	91	sadfa	3		8	1
93	2019-05-31 12:56:18.395429+00	90	有馬温泉瑞宝園	3		8	1
94	2019-05-31 12:56:18.398374+00	89	有馬山叢御所別墅	3		8	1
95	2019-05-31 12:56:18.401993+00	88	有馬温泉陶泉御所坊	3		8	1
96	2019-05-31 12:56:18.40552+00	87	上大坊	3		8	1
97	2019-05-31 12:56:18.408751+00	86	有馬温泉橋乃家別館嵐翠〈らんすい〉	3		8	1
98	2019-05-31 12:56:18.411685+00	85	ダイヤモンド有馬温泉ソサエティ	3		8	1
99	2019-05-31 12:56:18.414846+00	84	有馬温泉小都里KOTORI	3		8	1
100	2019-05-31 12:56:18.417943+00	83	有馬温泉月光園游月山荘	3		8	1
101	2019-05-31 12:56:18.421464+00	82	メルヴェール有馬	3		8	1
102	2019-05-31 12:56:18.425504+00	81	有馬温泉メープル有馬	3		8	1
103	2019-05-31 12:56:18.428369+00	80	神戸有馬温泉元湯龍泉閣〜赤ちゃんも楽しめるお部屋食の宿〜	3		8	1
104	2019-05-31 12:56:18.43152+00	79	有馬温泉〜１日８組限定美食家たちが集う宿〜四季の彩旅篭	3		8	1
105	2019-05-31 12:56:18.435194+00	78	有馬温泉ホテル花小宿〜貸切風呂が楽しめる大人の宿〜	3		8	1
106	2019-05-31 12:56:18.438947+00	77	有馬温泉ねぎや陵楓閣	3		8	1
107	2019-05-31 12:56:18.441884+00	76	有馬温泉〜金泉・銀泉と４つの貸切風呂〜湯屋の宿康貴	3		8	1
108	2019-05-31 12:56:18.444607+00	75	有馬温泉竹取亭円山	3		8	1
109	2019-05-31 12:56:18.447625+00	74	有馬温泉かんぽの宿有馬	3		8	1
110	2019-05-31 12:56:18.451168+00	73	有馬温泉元湯古泉閣	3		8	1
111	2019-05-31 12:56:18.455622+00	72	有馬温泉天地の宿奥の細道	3		8	1
112	2019-05-31 12:56:18.458616+00	71	有馬温泉月光園鴻朧館	3		8	1
113	2019-05-31 12:56:18.461315+00	70	有馬温泉高山荘華野	3		8	1
114	2019-05-31 12:56:18.464348+00	69	有馬温泉神戸牛と金泉・銀泉の宿有馬御苑	3		8	1
115	2019-05-31 12:56:18.46772+00	68	有馬温泉SPATERRACE紫翠【兆楽姉妹館】	3		8	1
116	2019-05-31 12:56:18.47062+00	67	有馬温泉有馬グランドホテル	3		8	1
117	2019-05-31 12:56:18.473563+00	66	有馬温泉欽山	3		8	1
118	2019-05-31 12:56:18.476431+00	65	有馬温泉中の坊瑞苑	3		8	1
119	2019-05-31 12:56:18.479452+00	64	有馬温泉御幸荘花結び	3		8	1
120	2019-05-31 12:56:18.482598+00	63	有馬温泉有馬ロイヤルホテル	3		8	1
121	2019-05-31 12:56:18.486963+00	62	有馬温泉銀水荘兆楽	3		8	1
122	2019-05-31 12:56:18.489785+00	61	有馬温泉兵衛向陽閣	3		8	1
123	2019-05-31 13:00:01.50516+00	150	夕日ヶ浦温泉全室オーシャンビュー海花亭紫峰閣	3		8	1
124	2019-05-31 13:00:01.510407+00	149	岬別館岩城	3		8	1
125	2019-05-31 13:00:01.514454+00	148	丹後・食の宿みのり旅館	3		8	1
126	2019-05-31 13:00:01.519041+00	147	夕日ヶ浦温泉旅館琴海	3		8	1
127	2019-05-31 13:00:01.52241+00	146	りょかんかとう	3		8	1
128	2019-05-31 13:00:01.525859+00	145	いまい	3		8	1
129	2019-05-31 13:00:01.529317+00	144	海のしずくこやど石	3		8	1
130	2019-05-31 13:00:01.534628+00	143	本陣粋月	3		8	1
131	2019-05-31 13:00:01.537917+00	142	料理旅館浜乃屋	3		8	1
132	2019-05-31 13:00:01.541789+00	141	天然温泉展望風呂の宿すえひろ	3		8	1
133	2019-05-31 13:00:01.545233+00	140	料理旅館海の華	3		8	1
134	2019-05-31 13:00:01.549168+00	139	天然温泉茜海旅館	3		8	1
135	2019-05-31 13:00:01.553669+00	138	里の宿康ノ家	3		8	1
136	2019-05-31 13:00:01.557198+00	137	旅館友善	3		8	1
137	2019-05-31 13:00:01.561152+00	136	夕日ヶ浦温泉魚屋直営の宿あおき橘風苑	3		8	1
138	2019-05-31 13:00:01.564677+00	135	あまやどりの宿雨情草庵	3		8	1
139	2019-05-31 13:00:01.568671+00	134	希少！地元漁港の朝穫れ鮮魚を毎朝厳選新海荘＜夕日ヶ浦温泉＞	3		8	1
140	2019-05-31 13:00:01.572182+00	133	奥の庄	3		8	1
141	2019-05-31 13:00:01.575433+00	132	夕日ヶ浦温泉日本海を見下ろす絶景宿佳松苑はなれ櫂	3		8	1
142	2019-05-31 13:00:01.579087+00	131	『夕日百選』を眺め海幸たっぷり堪能♪料理旅館夕日ヶ浦	3		8	1
143	2019-05-31 13:00:01.583351+00	130	水辺のホテル小さな白い花	3		8	1
144	2019-05-31 13:00:01.58654+00	129	夕日ヶ浦温泉笑顔集まる宿佳松苑	3		8	1
145	2019-05-31 13:00:01.590288+00	128	離れの宿和楽	3		8	1
146	2019-05-31 13:00:01.594631+00	127	夕日ヶ浦温泉大人専用の宿佳松苑はなれ風香	3		8	1
147	2019-05-31 13:00:01.598649+00	126	夕日ヶ浦温泉落ちついた大人の隠れ家海花亭花御前	3		8	1
148	2019-05-31 13:00:01.601887+00	125	夕日ヶ浦温泉夕日浪漫一望館	3		8	1
149	2019-05-31 13:00:01.605058+00	124	坂本屋瑠璃亭SpaYuuhigauraSakamotoyaRuritei	3		8	1
150	2019-05-31 13:00:01.608322+00	123	一晩泊まればトドになる夕日ヶ浦温泉海舟	3		8	1
151	2019-05-31 13:00:01.611801+00	122	夕日ヶ浦温泉夢美しく舞い踊る静花扇	3		8	1
152	2019-05-31 13:00:01.616131+00	121	１日７組限定全室絶景露天風呂の大人宿夕彩Ｒｅｓｏｒｔ響季	3		8	1
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
1	onsen_inns	0001_initial	2019-05-31 03:56:59.621099+00
2	contenttypes	0001_initial	2019-05-31 04:01:53.848283+00
3	auth	0001_initial	2019-05-31 04:01:54.005033+00
4	admin	0001_initial	2019-05-31 04:01:54.141355+00
5	admin	0002_logentry_remove_auto_add	2019-05-31 04:01:54.175304+00
6	admin	0003_logentry_add_action_flag_choices	2019-05-31 04:01:54.192314+00
7	contenttypes	0002_remove_content_type_name	2019-05-31 04:01:54.235074+00
8	auth	0002_alter_permission_name_max_length	2019-05-31 04:01:54.252052+00
9	auth	0003_alter_user_email_max_length	2019-05-31 04:01:54.274634+00
10	auth	0004_alter_user_username_opts	2019-05-31 04:01:54.302687+00
11	auth	0005_alter_user_last_login_null	2019-05-31 04:01:54.32914+00
12	auth	0006_require_contenttypes_0002	2019-05-31 04:01:54.33647+00
13	auth	0007_alter_validators_add_error_messages	2019-05-31 04:01:54.355075+00
14	auth	0008_alter_user_username_max_length	2019-05-31 04:01:54.384044+00
15	auth	0009_alter_user_last_name_max_length	2019-05-31 04:01:54.403751+00
16	auth	0010_alter_group_name_max_length	2019-05-31 04:01:54.423401+00
17	auth	0011_update_proxy_permissions	2019-05-31 04:01:54.455577+00
18	sessions	0001_initial	2019-05-31 04:01:54.483187+00
19	onsen_inns	0002_auto_20190531_0620	2019-05-31 06:21:13.326188+00
20	onsen_inns	0003_auto_20190531_0648	2019-05-31 06:48:18.618291+00
21	onsen_inns	0004_auto_20190531_1227	2019-05-31 12:27:50.986217+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
mf8lh9iuarzi9w7dc7zmuv7t8o5pa7ew	N2U2YzRiNzc3MmY2ODc5YzliNzg5OTNlNTE1YmM1ZTkwMzNkMjJjODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNWU2MDk3NDJmZjQ0NzM0YzkxNTlkODU5ZjVhNmFjZWJlYmFjNTg0In0=	2019-06-14 04:04:45.633498+00
\.


--
-- Data for Name: onsen_inns_onsen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.onsen_inns_onsen (id, onsen_id, onsen_name, onsen_name_kana, onsen_address, region, prefecture, large_area, small_area, nature_of_onsen, onsen_area_name, onsen_area_name_kana, onsen_area_id, onsen_area_caption) FROM stdin;
1	1620	鹿の子温泉	かのこおんせん	兵庫県神戸市北区長尾町宅原			神戸・有馬・明石	有馬	硫黄泉	\N	\N	\N	\N
2	1621	有馬温泉	ありまおんせん	兵庫県神戸市北区有馬町			神戸・有馬・明石	有馬	含鉄泉	\N	\N	50350	\N
3	1622	大沢温泉	おおぞおんせん	兵庫県神戸市北区大沢町上大沢			神戸・有馬・明石	有馬	塩化物泉	\N	\N	\N	\N
4	1623	須磨温泉	すまおんせん	兵庫県神戸市須磨区須磨寺町			神戸・有馬・明石	須磨・舞子・明石	放射能泉	\N	\N	\N	\N
5	3167	神戸六甲温泉	こうべろっこうおんせん	神戸市東灘区向洋町中2-13（六甲アイランド）			神戸・有馬・明石	六甲アイランド	ナトリウム塩化物泉	\N	\N	50350	\N
6	1532	丹後琴引温泉	たんごことびきおんせん	京都府竹野郡網野町遊			大原・鞍馬・貴船	丹後	単純温泉	\N	\N	\N	\N
7	1533	夕日ヶ浦温泉	ゆうひがうらおんせん	京都府竹野郡網野町浜詰			丹後・久美浜	丹後	単純温泉	\N	\N	50340	\N
8	1534	木津温泉	きつおんせん	京都府竹野郡網野町木津			大原・鞍馬・貴船	丹後	単純温泉	\N	\N	50341	\N
9	1535	久美の浜温泉郷	くみのはまおんせんきょう	京都府熊野郡久美浜町平田			大原・鞍馬・貴船	久美浜・小天橋	塩化物泉	\N	\N	50348	\N
10	1536	岩滝温泉	いわたきおんせん	京都府与謝郡岩滝町男山			丹後・久美浜	丹後	硫黄泉	\N	\N	50339	\N
11	1537	ゆらゆら温泉郷	ゆらゆらおんせんきょう	京都府宮津市由良			天橋立・宮津・舞鶴	天橋立・宮津	硫黄泉	\N	\N	50339	\N
12	1538	くらま温泉	くらまおんせん	京都府京都市左京区鞍馬本町			大原・鞍馬・貴船	大原・鞍馬・貴船	単純温泉	\N	\N	\N	\N
13	1539	湯の花温泉	ゆのはなおんせん	京都府亀岡市稗田野町柿花宮奥			湯の花・丹波・美山	亀岡・湯の花・丹波	放射能泉	\N	\N	50338	\N
14	1540	嵐山温泉	あらしやまおんせん	京都府京都市西京区嵐山元禄山町			嵯峨野・嵐山・高雄	嵯峨野・嵐山・高雄	単純温泉	\N	\N	50490	\N
\.


--
-- Data for Name: onsen_inns_onseninn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.onsen_inns_onseninn (id, inn_id, inn_name, inn_photo, inn_min_price, review_room, review_bath, review_breakfast, review_dinner, review_service, review_cleaness, rooms_total, baths_total, conditioner, convenience_store, hand_towel, razor, bath_towel, shampoo, dental_amenities, bathrobe, pajamas, yukata, free_wifi, bar_soap, body_wash, duvet, hairdryer, shower_cap, cotton_swab, onsui_toilet, hair_brush, onsen_id, category) FROM stdin;
151	0	有馬温泉兵衛向陽閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	129	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
152	1	有馬温泉銀水荘兆楽		10000	4.5	3.3	4.8	5.0	4.3	2.0	37	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
153	2	有馬温泉有馬ロイヤルホテル		10000	4.5	3.3	4.8	5.0	4.3	2.0	35	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
154	3	有馬温泉御幸荘花結び		10000	4.5	3.3	4.8	5.0	4.3	2.0	31	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
155	4	有馬温泉中の坊瑞苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	50	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
156	5	有馬温泉欽山		10000	4.5	3.3	4.8	5.0	4.3	2.0	40	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
157	6	有馬温泉有馬グランドホテル		10000	4.5	3.3	4.8	5.0	4.3	2.0	171	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
158	7	有馬温泉SPATERRACE紫翠【兆楽姉妹館】		10000	4.5	3.3	4.8	5.0	4.3	2.0	14	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
159	8	有馬温泉神戸牛と金泉・銀泉の宿有馬御苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	65	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
160	9	有馬温泉高山荘華野		10000	4.5	3.3	4.8	5.0	4.3	2.0	17	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
161	10	有馬温泉月光園鴻朧館		10000	4.5	3.3	4.8	5.0	4.3	2.0	38	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
162	11	有馬温泉天地の宿奥の細道		10000	4.5	3.3	4.8	5.0	4.3	2.0	17	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
163	12	有馬温泉元湯古泉閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	66	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
164	13	有馬温泉かんぽの宿有馬		10000	4.5	3.3	4.8	5.0	4.3	2.0	53	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
165	14	有馬温泉竹取亭円山		10000	4.5	3.3	4.8	5.0	4.3	2.0	29	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
166	15	有馬温泉〜金泉・銀泉と４つの貸切風呂〜湯屋の宿康貴		10000	4.5	3.3	4.8	5.0	4.3	2.0	15	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
167	16	有馬温泉ねぎや陵楓閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	33	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
168	17	有馬温泉ホテル花小宿〜貸切風呂が楽しめる大人の宿〜		10000	4.5	3.3	4.8	5.0	4.3	2.0	9	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
169	18	有馬温泉〜１日８組限定美食家たちが集う宿〜四季の彩旅篭		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
170	19	神戸有馬温泉元湯龍泉閣〜赤ちゃんも楽しめるお部屋食の宿〜		10000	4.5	3.3	4.8	5.0	4.3	2.0	30	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
171	20	有馬温泉メープル有馬		10000	4.5	3.3	4.8	5.0	4.3	2.0	64	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
172	21	メルヴェール有馬		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
173	22	有馬温泉月光園游月山荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	40	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
174	23	有馬温泉小都里KOTORI		10000	4.5	3.3	4.8	5.0	4.3	2.0	8	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
175	24	ダイヤモンド有馬温泉ソサエティ		10000	4.5	3.3	4.8	5.0	4.3	2.0	111	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
176	25	有馬温泉橋乃家別館嵐翠〈らんすい〉		10000	4.5	3.3	4.8	5.0	4.3	2.0	8	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
177	26	上大坊		10000	4.5	3.3	4.8	5.0	4.3	2.0	12	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
178	27	有馬温泉陶泉御所坊		10000	4.5	3.3	4.8	5.0	4.3	2.0	20	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
179	28	有馬山叢御所別墅		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
180	29	有馬温泉瑞宝園		10000	4.5	3.3	4.8	5.0	4.3	2.0	26	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	2	1
181	30	有馬温泉兵衛向陽閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	129	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
182	31	有馬温泉銀水荘兆楽		10000	4.5	3.3	4.8	5.0	4.3	2.0	37	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
183	32	有馬温泉有馬ロイヤルホテル		10000	4.5	3.3	4.8	5.0	4.3	2.0	35	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
184	33	有馬温泉御幸荘花結び		10000	4.5	3.3	4.8	5.0	4.3	2.0	31	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
185	34	有馬温泉中の坊瑞苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	50	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
186	35	有馬温泉欽山		10000	4.5	3.3	4.8	5.0	4.3	2.0	40	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
187	36	有馬温泉有馬グランドホテル		10000	4.5	3.3	4.8	5.0	4.3	2.0	171	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
188	37	有馬温泉SPATERRACE紫翠【兆楽姉妹館】		10000	4.5	3.3	4.8	5.0	4.3	2.0	14	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
189	38	有馬温泉神戸牛と金泉・銀泉の宿有馬御苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	65	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
190	39	有馬温泉高山荘華野		10000	4.5	3.3	4.8	5.0	4.3	2.0	17	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
191	40	有馬温泉月光園鴻朧館		10000	4.5	3.3	4.8	5.0	4.3	2.0	38	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
192	41	有馬温泉天地の宿奥の細道		10000	4.5	3.3	4.8	5.0	4.3	2.0	17	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
193	42	有馬温泉元湯古泉閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	66	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
194	43	有馬温泉かんぽの宿有馬		10000	4.5	3.3	4.8	5.0	4.3	2.0	53	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
195	44	有馬温泉竹取亭円山		10000	4.5	3.3	4.8	5.0	4.3	2.0	29	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
196	45	有馬温泉〜金泉・銀泉と４つの貸切風呂〜湯屋の宿康貴		10000	4.5	3.3	4.8	5.0	4.3	2.0	15	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
197	46	有馬温泉ねぎや陵楓閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	33	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
198	47	有馬温泉ホテル花小宿〜貸切風呂が楽しめる大人の宿〜		10000	4.5	3.3	4.8	5.0	4.3	2.0	9	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
199	48	有馬温泉〜１日８組限定美食家たちが集う宿〜四季の彩旅篭		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
250	99	リゾーピア久美浜		10000	4.5	3.3	4.8	5.0	4.3	2.0	55	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
200	49	神戸有馬温泉元湯龍泉閣〜赤ちゃんも楽しめるお部屋食の宿〜		10000	4.5	3.3	4.8	5.0	4.3	2.0	30	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
201	50	有馬温泉メープル有馬		10000	4.5	3.3	4.8	5.0	4.3	2.0	64	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
202	51	メルヴェール有馬		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
203	52	有馬温泉月光園游月山荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	40	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
204	53	有馬温泉小都里KOTORI		10000	4.5	3.3	4.8	5.0	4.3	2.0	8	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
205	54	ダイヤモンド有馬温泉ソサエティ		10000	4.5	3.3	4.8	5.0	4.3	2.0	111	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
206	55	有馬温泉橋乃家別館嵐翠〈らんすい〉		10000	4.5	3.3	4.8	5.0	4.3	2.0	8	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
207	56	上大坊		10000	4.5	3.3	4.8	5.0	4.3	2.0	12	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
208	57	有馬温泉陶泉御所坊		10000	4.5	3.3	4.8	5.0	4.3	2.0	20	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
209	58	有馬山叢御所別墅		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
210	59	有馬温泉瑞宝園		10000	4.5	3.3	4.8	5.0	4.3	2.0	26	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	5	1
211	60	１日７組限定全室絶景露天風呂の大人宿夕彩Ｒｅｓｏｒｔ響季		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
212	61	夕日ヶ浦温泉夢美しく舞い踊る静花扇		10000	4.5	3.3	4.8	5.0	4.3	2.0	20	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
213	62	一晩泊まればトドになる夕日ヶ浦温泉海舟		10000	4.5	3.3	4.8	5.0	4.3	2.0	40	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
214	63	坂本屋瑠璃亭SpaYuuhigauraSakamotoyaRuritei		10000	4.5	3.3	4.8	5.0	4.3	2.0	19	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
215	64	夕日ヶ浦温泉夕日浪漫一望館		10000	4.5	3.3	4.8	5.0	4.3	2.0	31	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
216	65	夕日ヶ浦温泉落ちついた大人の隠れ家海花亭花御前		10000	4.5	3.3	4.8	5.0	4.3	2.0	29	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
217	66	夕日ヶ浦温泉大人専用の宿佳松苑はなれ風香		10000	4.5	3.3	4.8	5.0	4.3	2.0	18	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
218	67	離れの宿和楽		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
219	68	夕日ヶ浦温泉笑顔集まる宿佳松苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	40	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
220	69	水辺のホテル小さな白い花		10000	4.5	3.3	4.8	5.0	4.3	2.0	16	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
221	70	『夕日百選』を眺め海幸たっぷり堪能♪料理旅館夕日ヶ浦		10000	4.5	3.3	4.8	5.0	4.3	2.0	23	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
222	71	夕日ヶ浦温泉日本海を見下ろす絶景宿佳松苑はなれ櫂		10000	4.5	3.3	4.8	5.0	4.3	2.0	15	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
223	72	奥の庄		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
224	73	希少！地元漁港の朝穫れ鮮魚を毎朝厳選新海荘＜夕日ヶ浦温泉＞		10000	4.5	3.3	4.8	5.0	4.3	2.0	13	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
225	74	あまやどりの宿雨情草庵		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
226	75	夕日ヶ浦温泉魚屋直営の宿あおき橘風苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	18	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
227	76	旅館友善		10000	4.5	3.3	4.8	5.0	4.3	2.0	18	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
228	77	里の宿康ノ家		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
229	78	天然温泉茜海旅館		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
230	79	料理旅館海の華		10000	4.5	3.3	4.8	5.0	4.3	2.0	8	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
231	80	天然温泉展望風呂の宿すえひろ		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
232	81	料理旅館浜乃屋		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
233	82	本陣粋月		10000	4.5	3.3	4.8	5.0	4.3	2.0	17	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
234	83	海のしずくこやど石		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
235	84	いまい		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
236	85	りょかんかとう		10000	4.5	3.3	4.8	5.0	4.3	2.0	11	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
237	86	夕日ヶ浦温泉旅館琴海		10000	4.5	3.3	4.8	5.0	4.3	2.0	18	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
238	87	丹後・食の宿みのり旅館		10000	4.5	3.3	4.8	5.0	4.3	2.0	19	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
239	88	岬別館岩城		10000	4.5	3.3	4.8	5.0	4.3	2.0	15	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
240	89	夕日ヶ浦温泉全室オーシャンビュー海花亭紫峰閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	18	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	7	1
241	90	源泉掛流しの貸切風呂と大正レトロに癒される宿ゑびすや		10000	4.5	3.3	4.8	5.0	4.3	2.0	21	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	8	1
242	91	木津館		10000	4.5	3.3	4.8	5.0	4.3	2.0	4	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	8	1
243	92	金平楼		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	8	1
244	93	久美の浜みなと悠悠		10000	4.5	3.3	4.8	5.0	4.3	2.0	28	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
245	94	純和風旅亭碧翠御苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
246	95	旅館すずらん		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
247	96	久美浜温泉湯元館		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
248	97	久美浜の温泉郷旅館小天橋（しょうてんきょう）		10000	4.5	3.3	4.8	5.0	4.3	2.0	19	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
249	98	久美浜温泉浜の路臨江庵〜１日７組限定の贅沢空間が自慢の宿〜		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
251	100	へきすい苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
252	101	潮香の宿坂本屋		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	9	1
253	102	ホテル北野屋		10000	4.5	3.3	4.8	5.0	4.3	2.0	30	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
254	103	対橋楼		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
255	104	ホテル＆リゾーツ京都宮津		10000	4.5	3.3	4.8	5.0	4.3	2.0	311	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
256	105	料理旅館鳥喜		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
257	106	天橋立老舗の宿文珠荘（もんじゅそう）		10000	4.5	3.3	4.8	5.0	4.3	2.0	30	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
258	107	神風楼		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
259	108	天橋立ホテル		10000	4.5	3.3	4.8	5.0	4.3	2.0	52	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
260	109	文珠荘松露亭		10000	4.5	3.3	4.8	5.0	4.3	2.0	11	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
261	110	創業三百年和の情緒と丹後の幸に心を癒される宿茶六別館		10000	4.5	3.3	4.8	5.0	4.3	2.0	11	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
262	111	ワインとお宿千歳CHITOSE		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
263	112	旅館一の家		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
264	113	ペンションマリンハウス		10000	4.5	3.3	4.8	5.0	4.3	2.0	5	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
265	114	ふれあいの宿田中荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	5	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
266	115	天橋立眺望絶景の宿松風荘（しょうふうそう）		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
267	116	瑠璃浜		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
268	117	日本三景天橋立の見える宿仁風荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
269	118	海辺の小さなお宿松風		10000	4.5	3.3	4.8	5.0	4.3	2.0	8	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
270	119	ホテルつかさ峰山		10000	4.5	3.3	4.8	5.0	4.3	2.0	100	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
271	120	岩滝温泉ホテル喜楽家		10000	4.5	3.3	4.8	5.0	4.3	2.0	20	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
272	121	茶六本館		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
273	122	民宿浜乃家		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
274	123	天橋立温泉旅館松月＜京都府＞		10000	4.5	3.3	4.8	5.0	4.3	2.0	12	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
275	124	湯らゆら温泉郷民宿海月楼		10000	4.5	3.3	4.8	5.0	4.3	2.0	15	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
276	125	湯らゆら温泉郷料理民宿わすれなぐさ		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
277	126	湯らゆら温泉郷旅館芳月		10000	4.5	3.3	4.8	5.0	4.3	2.0	9	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
278	127	温泉民宿やまだ荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
279	128	民宿旅館里のやど川尻		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
280	129	ホテル丹後／別館なかむら荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	29	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
281	130	湯らゆら温泉郷汐汲苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	10	1
282	131	ホテル北野屋		10000	4.5	3.3	4.8	5.0	4.3	2.0	30	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
283	132	対橋楼		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
284	133	ホテル＆リゾーツ京都宮津		10000	4.5	3.3	4.8	5.0	4.3	2.0	311	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
285	134	料理旅館鳥喜		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
286	135	天橋立老舗の宿文珠荘（もんじゅそう）		10000	4.5	3.3	4.8	5.0	4.3	2.0	30	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
287	136	神風楼		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
288	137	天橋立ホテル		10000	4.5	3.3	4.8	5.0	4.3	2.0	52	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
289	138	文珠荘松露亭		10000	4.5	3.3	4.8	5.0	4.3	2.0	11	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
290	139	創業三百年和の情緒と丹後の幸に心を癒される宿茶六別館		10000	4.5	3.3	4.8	5.0	4.3	2.0	11	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
291	140	ワインとお宿千歳CHITOSE		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
292	141	旅館一の家		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
293	142	ペンションマリンハウス		10000	4.5	3.3	4.8	5.0	4.3	2.0	5	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
294	143	ふれあいの宿田中荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	5	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
295	144	天橋立眺望絶景の宿松風荘（しょうふうそう）		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
296	145	瑠璃浜		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
297	146	日本三景天橋立の見える宿仁風荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
298	147	海辺の小さなお宿松風		10000	4.5	3.3	4.8	5.0	4.3	2.0	8	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
299	148	ホテルつかさ峰山		10000	4.5	3.3	4.8	5.0	4.3	2.0	100	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
300	149	岩滝温泉ホテル喜楽家		10000	4.5	3.3	4.8	5.0	4.3	2.0	20	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
301	150	茶六本館		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
302	151	民宿浜乃家		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
303	152	天橋立温泉旅館松月＜京都府＞		10000	4.5	3.3	4.8	5.0	4.3	2.0	12	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
304	153	湯らゆら温泉郷民宿海月楼		10000	4.5	3.3	4.8	5.0	4.3	2.0	15	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
305	154	湯らゆら温泉郷料理民宿わすれなぐさ		10000	4.5	3.3	4.8	5.0	4.3	2.0	7	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
306	155	湯らゆら温泉郷旅館芳月		10000	4.5	3.3	4.8	5.0	4.3	2.0	9	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
307	156	温泉民宿やまだ荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	6	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
308	157	民宿旅館里のやど川尻		10000	4.5	3.3	4.8	5.0	4.3	2.0	10	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
309	158	ホテル丹後／別館なかむら荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	29	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
310	159	湯らゆら温泉郷汐汲苑		10000	4.5	3.3	4.8	5.0	4.3	2.0	\N	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	11	1
311	160	すみや亀峰菴		10000	4.5	3.3	4.8	5.0	4.3	2.0	27	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	13	1
312	161	京都・烟河（けぶりかわ）		10000	4.5	3.3	4.8	5.0	4.3	2.0	41	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	13	1
313	162	おもてなしの宿渓山閣		10000	4.5	3.3	4.8	5.0	4.3	2.0	78	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	13	1
314	163	京YUNOHANARESORT翠泉		10000	4.5	3.3	4.8	5.0	4.3	2.0	13	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	13	1
315	164	湯の花温泉松園荘保津川亭(しょうえんそうほづがわてい）		10000	4.5	3.3	4.8	5.0	4.3	2.0	56	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	13	1
316	165	湯の花温泉有楽荘		10000	4.5	3.3	4.8	5.0	4.3	2.0	18	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	13	1
317	166	京都嵐山温泉花伝抄（かでんしょう）		10000	4.5	3.3	4.8	5.0	4.3	2.0	105	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	14	1
318	167	京都嵐山温泉渡月亭		10000	4.5	3.3	4.8	5.0	4.3	2.0	25	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	14	1
319	168	京都嵐山温泉・彩四季の宿花筏		10000	4.5	3.3	4.8	5.0	4.3	2.0	13	10	t	t	t	f	t	f	t	f	t	f	t	t	f	f	t	t	t	t	t	14	1
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 152, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: onsen_inns_onseninnmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.onsen_inns_onseninnmodel_id_seq', 319, true);


--
-- Name: onsen_inns_onsenmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.onsen_inns_onsenmodel_id_seq', 14, true);


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

