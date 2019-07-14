--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4 (Debian 11.4-1.pgdg90+1)
-- Dumped by pg_dump version 11.4 (Debian 11.4-1.pgdg90+1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


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
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

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
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


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
    service_leisure character varying(630),
    num_vote_down integer,
    num_vote_up integer,
    vote_score integer,
    CONSTRAINT onsen_inns_onseninn_num_vote_down_check CHECK ((num_vote_down >= 0)),
    CONSTRAINT onsen_inns_onseninn_num_vote_up_check CHECK ((num_vote_up >= 0))
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
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: users_customuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_customuser (
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
    date_joined timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.users_customuser OWNER TO postgres;

--
-- Name: users_customuser_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_customuser_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_customuser_groups OWNER TO postgres;

--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_customuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_customuser_groups_id_seq OWNER TO postgres;

--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_customuser_groups_id_seq OWNED BY public.users_customuser_groups.id;


--
-- Name: users_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_customuser_id_seq OWNER TO postgres;

--
-- Name: users_customuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_customuser_id_seq OWNED BY public.users_customuser.id;


--
-- Name: users_customuser_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_customuser_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_customuser_user_permissions OWNER TO postgres;

--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_customuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_customuser_user_permissions_id_seq OWNER TO postgres;

--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_customuser_user_permissions_id_seq OWNED BY public.users_customuser_user_permissions.id;


--
-- Name: vote_vote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vote_vote (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    object_id integer NOT NULL,
    create_at timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    action smallint NOT NULL,
    CONSTRAINT vote_vote_action_check CHECK ((action >= 0)),
    CONSTRAINT vote_vote_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.vote_vote OWNER TO postgres;

--
-- Name: vote_vote_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vote_vote_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vote_vote_id_seq OWNER TO postgres;

--
-- Name: vote_vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vote_vote_id_seq OWNED BY public.vote_vote.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


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
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: onsen_inns_onsen id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onsen ALTER COLUMN id SET DEFAULT nextval('public.onsen_inns_onsenmodel_id_seq'::regclass);


--
-- Name: onsen_inns_onseninn id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onseninn ALTER COLUMN id SET DEFAULT nextval('public.onsen_inns_onseninnmodel_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: users_customuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_id_seq'::regclass);


--
-- Name: users_customuser_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_groups_id_seq'::regclass);


--
-- Name: users_customuser_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_user_permissions_id_seq'::regclass);


--
-- Name: vote_vote id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vote_vote ALTER COLUMN id SET DEFAULT nextval('public.vote_vote_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
2	amazon@example.com	f	t	3
3	netflix@example.com	f	t	4
4	ebay@example.com	f	t	5
5	huawei@example.com	f	t	6
6	intel@example.com	f	t	7
7	yahoo@example.com	f	t	8
8	apple@example.com	f	t	9
9	google@example.com	f	t	10
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add site	6	add_site
22	Can change site	6	change_site
23	Can delete site	6	delete_site
24	Can view site	6	view_site
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add social application	8	add_socialapp
30	Can change social application	8	change_socialapp
31	Can delete social application	8	delete_socialapp
32	Can view social application	8	view_socialapp
33	Can add social account	9	add_socialaccount
34	Can change social account	9	change_socialaccount
35	Can delete social account	9	delete_socialaccount
36	Can view social account	9	view_socialaccount
37	Can add social application token	10	add_socialtoken
38	Can change social application token	10	change_socialtoken
39	Can delete social application token	10	delete_socialtoken
40	Can view social application token	10	view_socialtoken
41	Can add email address	11	add_emailaddress
42	Can change email address	11	change_emailaddress
43	Can delete email address	11	delete_emailaddress
44	Can view email address	11	view_emailaddress
45	Can add email confirmation	12	add_emailconfirmation
46	Can change email confirmation	12	change_emailconfirmation
47	Can delete email confirmation	12	delete_emailconfirmation
48	Can view email confirmation	12	view_emailconfirmation
49	Can add vote	13	add_vote
50	Can change vote	13	change_vote
51	Can delete vote	13	delete_vote
52	Can view vote	13	view_vote
53	Can add user	14	add_customuser
54	Can change user	14	change_customuser
55	Can delete user	14	delete_customuser
56	Can view user	14	view_customuser
57	Can add onsen	15	add_onsen
58	Can change onsen	15	change_onsen
59	Can delete onsen	15	delete_onsen
60	Can view onsen	15	view_onsen
61	Can add onsen inn	16	add_onseninn
62	Can change onsen inn	16	change_onseninn
63	Can delete onsen inn	16	delete_onseninn
64	Can view onsen inn	16	view_onseninn
65	Can add social account	17	add_socialaccount
66	Can change social account	17	change_socialaccount
67	Can delete social account	17	delete_socialaccount
68	Can view social account	17	view_socialaccount
69	Can add social application	18	add_socialapp
70	Can change social application	18	change_socialapp
71	Can delete social application	18	delete_socialapp
72	Can view social application	18	view_socialapp
73	Can add social application token	19	add_socialtoken
74	Can change social application token	19	change_socialtoken
75	Can delete social application token	19	delete_socialtoken
76	Can view social application token	19	view_socialtoken
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
dd05b8091996c60fca1bc2504c567fef33ee6ecb	2019-07-14 01:53:58.527898+00	3
2df1f58b2143a950684cd0d813ebea4d3bdb9036	2019-07-14 01:55:14.190463+00	4
115ff6e941e6da14218fc38f0098f036b3263c08	2019-07-14 01:55:44.168246+00	5
1b236fe20c6899218aded0889609472ca4bb5ce0	2019-07-14 01:56:19.143358+00	6
a1a616de670cbda384068f7f7bf849b6cc219e47	2019-07-14 01:56:40.372733+00	7
f854e0b3fa237fd3abeb9392703d6efacc57154a	2019-07-14 01:58:38.7306+00	8
efa27e2ceb4454360b806738c2bbde20a2694052	2019-07-14 01:59:26.383429+00	9
0331bc603e0792423585751905618973f41474a7	2019-07-14 03:56:36.65837+00	1
64af63f41714b2b096afc2a31dad0b7e9e851300	2019-07-14 11:09:02.564826+00	10
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
4	contenttypes	contenttype
5	sessions	session
6	sites	site
7	authtoken	token
8	allauth	socialapp
9	allauth	socialaccount
10	allauth	socialtoken
11	account	emailaddress
12	account	emailconfirmation
13	vote	vote
14	users	customuser
15	onsen_inns	onsen
16	onsen_inns	onseninn
17	socialaccount	socialaccount
18	socialaccount	socialapp
19	socialaccount	socialtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-07-14 00:39:04.10622+00
2	contenttypes	0002_remove_content_type_name	2019-07-14 00:39:04.137266+00
3	auth	0001_initial	2019-07-14 00:39:04.207552+00
4	auth	0002_alter_permission_name_max_length	2019-07-14 00:39:04.265981+00
5	auth	0003_alter_user_email_max_length	2019-07-14 00:39:04.28142+00
6	auth	0004_alter_user_username_opts	2019-07-14 00:39:04.324534+00
7	auth	0005_alter_user_last_login_null	2019-07-14 00:39:04.34013+00
8	auth	0006_require_contenttypes_0002	2019-07-14 00:39:04.34545+00
9	auth	0007_alter_validators_add_error_messages	2019-07-14 00:39:04.360032+00
10	auth	0008_alter_user_username_max_length	2019-07-14 00:39:04.376572+00
11	auth	0009_alter_user_last_name_max_length	2019-07-14 00:39:04.391141+00
12	auth	0010_alter_group_name_max_length	2019-07-14 00:39:04.403808+00
13	auth	0011_update_proxy_permissions	2019-07-14 00:39:04.428413+00
14	users	0001_initial	2019-07-14 00:39:04.487228+00
15	account	0001_initial	2019-07-14 00:39:04.606116+00
16	account	0002_email_max_length	2019-07-14 00:39:04.653676+00
17	admin	0001_initial	2019-07-14 00:39:04.696292+00
18	admin	0002_logentry_remove_auto_add	2019-07-14 00:39:04.733091+00
19	admin	0003_logentry_add_action_flag_choices	2019-07-14 00:39:04.757254+00
20	authtoken	0001_initial	2019-07-14 00:39:04.791172+00
21	authtoken	0002_auto_20160226_1747	2019-07-14 00:39:04.896351+00
22	onsen_inns	0001_initial	2019-07-14 00:39:04.943996+00
23	onsen_inns	0002_auto_20190531_0620	2019-07-14 00:39:05.065575+00
24	onsen_inns	0003_auto_20190531_0648	2019-07-14 00:39:05.156712+00
25	onsen_inns	0004_auto_20190531_1227	2019-07-14 00:39:05.187398+00
26	onsen_inns	0005_auto_20190601_1638	2019-07-14 00:39:05.23642+00
27	onsen_inns	0006_auto_20190601_1827	2019-07-14 00:39:05.253356+00
28	onsen_inns	0007_auto_20190705_1007	2019-07-14 00:39:05.284749+00
29	onsen_inns	0008_auto_20190713_1412	2019-07-14 00:39:05.33626+00
30	onsen_inns	0009_auto_20190713_1603	2019-07-14 00:39:05.409165+00
31	onsen_inns	0010_auto_20190713_1606	2019-07-14 00:39:05.517737+00
32	sessions	0001_initial	2019-07-14 00:39:05.545387+00
33	sites	0001_initial	2019-07-14 00:39:05.573914+00
34	sites	0002_alter_domain_unique	2019-07-14 00:39:05.611142+00
35	vote	0001_initial	2019-07-14 00:39:05.686964+00
36	vote	0002_auto_20161229_1022	2019-07-14 00:39:05.719583+00
37	vote	0003_vote_action	2019-07-14 00:39:05.743098+00
38	vote	0004_auto_20170110_1150	2019-07-14 00:39:05.784485+00
39	socialaccount	0001_initial	2019-07-14 11:02:09.899736+00
40	socialaccount	0002_token_max_lengths	2019-07-14 11:02:10.041134+00
41	socialaccount	0003_extra_data_default_dict	2019-07-14 11:02:10.059111+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
zkxc93j8u3a11r1hmski8bdl14lsoxu7	NDg3MDk2MjA5MGJkMjk4MDgxMzhmZDIyMGIzODBkNjExNTdlNTI5OTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzM2ViNTNmZDc3ZDMyMzRkMzM5MjlmOGM2NmRkMWUzZGJhZWUxZDBjIn0=	2019-07-28 11:21:41.918669+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
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
101	168	大鰐温泉	おおわにおんせん	青森県南津軽郡大鰐町			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50458	\N
102	169	下風呂温泉郷	しもふろおんせんきょう	青森県下北郡風間浦村下風呂			下北・三沢	下北半島	硫黄泉	\N	\N	50547	\N
103	170	奥薬研温泉	おくやげんおんせん	青森県下北郡大畑町大畑赤滝山			下北・三沢	下北半島	単純温泉	\N	\N	\N	\N
104	171	薬研温泉	やげんおんせん	青森県下北郡大畑町薬研			下北・三沢	下北半島	単純温泉	\N	\N	50547	\N
105	172	湯野川温泉	ゆのかわおんせん	青森県下北郡川内町川内			下北・三沢	下北半島	単純温泉	\N	\N	\N	\N
106	173	恐山温泉	おそれざんおんせん	青森県むつ市田名部			下北・三沢	下北半島	硫黄泉	\N	\N	\N	\N
107	174	斗南温泉	となみおんせん	青森県むつ市大字田名部字下道			下北・三沢	下北半島	含鉄泉	\N	\N	50547	\N
108	175	下北半島温泉	しもきたはんとうおんせん	青森県下北郡東通村尻屋			下北・三沢	下北半島	単純温泉	\N	\N	\N	\N
109	176	竜飛崎温泉	たっぴざきおんせん	青森県東津軽郡三廐村龍浜			津軽半島	東津軽	塩化物泉	\N	\N	\N	\N
110	177	平舘不老不死温泉	たいらだてふろうふしおんせん	青森県東津軽郡平舘村根岸字湯の沢			津軽半島	東津軽	塩化物泉	\N	\N	\N	\N
111	178	浅虫温泉	あさむしおんせん	青森県青森市浅虫			青森	青森・浅虫・八甲田	硫酸塩泉	\N	\N	50030	\N
112	179	馬門温泉	まかどおんせん	青森県上川郡野辺地町湯沢			下北・三沢	野辺地	硫酸塩泉	\N	\N	50547	\N
113	180	上北町温泉郷	かみきたまちおんせんきょう	青森県上北郡上北町上野字山添			下北・三沢	三沢	含鉄泉	\N	\N	\N	\N
114	181	池の端温泉郷	いけのはたおんせんきょう	青森県上北郡上北町大浦境ノ沢			下北・三沢	野辺地	単純温泉	\N	\N	\N	\N
115	182	古牧温泉	こまきおんせん	青森県三沢市古間木山			下北・三沢	三沢	単純温泉	\N	\N	\N	\N
116	183	六戸温泉	ろくのへおんせん	青森県上北郡六戸町			下北・三沢	三沢	単純温泉	\N	\N	\N	\N
117	184	五戸まきば温泉	ごのへまきばおんせん	青森県三戸郡五戸町苗代沢			八戸	八戸	塩化物泉	\N	\N	\N	\N
118	185	剣吉温泉	けんよしおんせん	青森県三戸郡名川町斗賀加賀			八戸	八戸	塩化物泉	\N	\N	\N	\N
119	186	十和田湖温泉郷	とわだこおんせんきょう	青森県上川郡十和田湖町法量			十和田湖	十和田湖	含鉄泉	\N	\N	50475	\N
120	187	蔦温泉	つたおんせん	青森県上川郡十和田湖町奥瀬			十和田湖	十和田湖	硫黄泉	\N	\N	\N	\N
121	188	猿倉温泉	さるくらおんせん	青森県上川郡十和田湖町奥瀬			十和田湖	十和田湖	硫酸塩泉	\N	\N	\N	\N
122	189	谷地温泉	やちおんせん	青森県上川郡十和田湖町南八甲田			十和田湖	十和田湖	硫黄泉	\N	\N	\N	\N
123	190	八甲田温泉	はっこうだおんせん	青森県青森市駒込			青森	青森・浅虫・八甲田	硫黄泉	\N	\N	\N	\N
124	191	酸ヶ湯温泉	すかゆおんせん	青森県青森市八甲田山			青森	青森・浅虫・八甲田	含鉄泉	\N	\N	\N	\N
125	192	荒川温泉	あらかわおんせん	青森県青森市大字荒川字南荒川山			青森	青森・浅虫・八甲田	硫黄泉	\N	\N	\N	\N
126	193	城ヶ倉温泉	じょうがくらおんせん	青森県青森市荒川			青森	青森・浅虫・八甲田	硫黄泉	\N	\N	\N	\N
127	194	寒水沢温泉	かんすいざわおんせん	青森県青森市荒川字寒水沢			青森	青森・浅虫・八甲田	硫酸塩泉	\N	\N	50031	\N
128	195	雲谷高原温泉	もやこうげんおんせん	青森県青森市大字雲谷			青森	青森・浅虫・八甲田	単純温泉	\N	\N	\N	\N
129	196	金木温泉	かなぎおんせん	青森県北津軽郡金木町朝日山			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
130	197	稲垣温泉	いながきおんせん	青森県西津軽郡稲垣村沼崎			津軽西海岸	西津軽	単純温泉	\N	\N	50032	\N
131	198	五所川原温泉	ごしょがわらおんせん	青森県五所川原市松島町			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
132	199	青陽園温泉	せいようえんおんせん	青森県五所川原市姥萢字船橋			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
133	200	大沢温泉	おおさわおんせん	青森県北津軽郡鶴田町廻堰字大沢			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
134	201	鶴田温泉	つるたおんせん	青森県北津軽郡鶴田町鶴田			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
135	202	夢野温泉	ゆめのおんせん	青森県五所川原市持子沢			津軽半島	北津軽・五所川原	塩化物泉	\N	\N	\N	\N
136	203	高増温泉	たかますおんせん	青森県北津軽郡板柳町大俵和田			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
137	204	長寿温泉	ちょうじゅおんせん	青森県黒石市下山形字村下			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
138	205	温湯温泉　(黒石)	ぬるゆおんせん	青森県黒石市温湯温泉			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
139	206	板留温泉　(黒石)	いたどめおんせん	青森県黒石市板留			弘前	大鰐・碇ヶ関・黒石	単純温泉	\N	\N	50032	\N
140	207	落合温泉　(黒石)	おちあいおんせん	青森県黒石市袋			弘前	大鰐・碇ヶ関・黒石	硫酸塩泉	\N	\N	50032	\N
141	208	青荷温泉　(黒石)	あおにおんせん	青森県黒石市沖浦青荷沢			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
142	209	温川温泉	ぬるかわおんせん	青森県南津軽郡平賀町切明			弘前	大鰐・碇ヶ関・黒石	硫酸塩泉	\N	\N	\N	\N
143	210	古遠部温泉	ふるとうべおんせん	青森県南津軽郡碇ヶ関村西碇ヶ関山			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50859	\N
144	211	碇ヶ関温泉	いかりがせきおんせん	青森県南津軽郡碇ヶ関村碇ヶ関			弘前	大鰐・碇ヶ関・黒石	単純温泉	\N	\N	50859	\N
145	212	相乗温泉	あいのりおんせん	青森県南津軽郡碇ヶ関村西碇ヶ関			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50859	\N
146	213	湯の沢温泉	ゆのさわおんせん	青森県南津軽郡碇ヶ関村湯の沢			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	50859	\N
147	214	島田温泉	しまだおんせん	青森県南津軽郡大鰐町島田			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
148	215	唐竹温泉	からたけおんせん	青森県南津軽郡平賀町唐竹			弘前	大鰐・碇ヶ関・黒石	含鉄泉	\N	\N	\N	\N
149	216	南田温泉	みなみだおんせん	青森県南津軽郡平賀町町居字南田			弘前	大鰐・碇ヶ関・黒石	単純温泉	\N	\N	50032	\N
150	217	大坊温泉	だいぼうおんせん	青森県南津軽郡平賀町大坊竹内			弘前	大鰐・碇ヶ関・黒石	硫黄泉	\N	\N	\N	\N
151	218	猿賀温泉	さるかおんせん	青森県南津軽郡尾上町猿賀			弘前	大鰐・碇ヶ関・黒石	塩化物泉	\N	\N	\N	\N
152	219	緑ヶ丘温泉	みどりがおかおんせん	青森県弘前市旭ヶ丘			弘前	弘前・白神	塩化物泉	\N	\N	\N	\N
153	220	弘前温泉	ひろさきおんせん	青森県弘前市寒沢町			弘前	弘前・白神	硫酸塩泉	\N	\N	\N	\N
154	221	三本柳温泉	さんぼんやなぎおんせん	青森県中津軽郡岩木町百沢			弘前	弘前・白神	塩化物泉	\N	\N	\N	\N
155	222	百沢温泉	ひゃくざわおんせん	青森県中津軽郡岩木町百沢			弘前	弘前・白神	塩化物泉	\N	\N	\N	\N
156	223	嶽温泉	だけおんせん	青森県中津軽郡岩木町常盤野			弘前	弘前・白神	単純温泉	\N	\N	50032	\N
157	224	湯段温泉	ゆだんおんせん	青森県中津軽郡岩木町常盤野			弘前	弘前・白神	硫黄泉	\N	\N	\N	\N
158	225	鯵ヶ沢温泉	あじがさわおんせん	青森県西津軽郡鯵ヶ沢町舞戸町			津軽西海岸	津軽西海岸	塩化物泉	\N	\N	50032	\N
159	226	熊の湯温泉	くまのゆおんせん	青森県西津軽郡鯵ヶ沢町一ツ森町			津軽西海岸	津軽西海岸	塩化物泉	\N	\N	\N	\N
160	227	黄金崎不老不死温泉	こがねざきふろうふしおんせん	青森県西津軽郡深浦町艫作			津軽西海岸	津軽西海岸	炭酸水素塩泉	\N	\N	\N	\N
161	228	みちのく温泉	みちのくおんせん	青森県西津軽郡深浦町艫作			津軽西海岸	津軽西海岸	硫黄泉	\N	\N	\N	\N
162	229	田子温泉	たっこおんせん	青森県三戸郡田子町字道ノ上			八戸	八戸	塩化物泉	\N	\N	\N	\N
163	230	大間温泉	おおまおんせん	青森県下北郡大間町大字大間字内山			下北・三沢	下北半島	塩化物泉	\N	\N	\N	\N
164	2247	鍋石温泉	なべいしおんせん	青森県西津軽郡深浦町大字舟舮作			津軽西海岸	津軽西海岸	塩化物泉	\N	\N	\N	\N
165	2248	しらかみの湯	しらかみのゆ	青森県中津軽郡西目屋村大字田代字神田60-1			弘前	弘前・白神	含鉄泉	\N	\N	\N	\N
166	2680	十和田湖畔温泉	とわだこはんおんせん	秋田県小坂町十和田湖字休平３５			十和田湖	十和田湖	塩化物泉	\N	\N	50475	\N
167	2711	田代温泉	たしろおんせん	青森県中津軽郡西目屋村大字田代字稲元168			弘前	弘前・白神	単純温泉	\N	\N	50032	\N
168	2712	浜子温泉	はまごおんせん	青森県東津軽郡平内町浜子掘替106-4			青森	青森・浅虫・八甲田	塩化物泉	\N	\N	\N	\N
169	2713	尾駮温泉	おぶちおんせん	青森県上北郡六ヶ所村大字尾駮357-1			下北・三沢	野辺地	含鉄泉	\N	\N	\N	\N
170	2728	鷹架温泉	たかほこおんせん	青森県北上郡六ヶ所村大字鷹架字内子内57			下北・三沢	野辺地	ナトリウム塩化物泉	\N	\N	\N	\N
171	2746	小田川温泉	おだがわおんせん	青森県北津軽郡金木町大字嘉瀬字端山崎２６７－５６７			津軽半島	北津軽・五所川原	ナトリウム塩化物泉	\N	\N	50518	\N
172	2760	十和田湖西湖畔温泉	とわだこにしこはんおんせん	秋田県鹿角郡小坂町十和田湖西湖畔			十和田湖	十和田湖	塩化物泉	\N	\N	50475	\N
173	2891	ロマントピア温泉	ろまんとぴあおんせん	青森県弘前市水木在家字桜井113-2			弘前	弘前・白神	炭酸水素塩泉	\N	\N	50722	\N
174	2957	古川温泉	ふるかわおんせん	青森県青森市古川１丁目１０の１４			青森	青森・浅虫・八甲田	その他	\N	\N	50784	\N
175	3056	さわ里の湯	さわさとのゆ	青森県八戸市東白山台1-1-1			八戸	八戸	塩化物泉	\N	\N	50875	\N
176	3057	大秋温泉	おおあきおんせん	青森県中津軽郡西目屋村田代字神田６０－１			弘前	弘前・白神	単純温泉	\N	\N	50032	\N
177	231	金田一温泉	きんたいちおんせん	岩手県二戸市金田一			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50035	\N
178	232	山根温泉	やまねおんせん	岩手県久慈市山根町			三陸海岸	久慈	硫黄泉	\N	\N	\N	\N
179	233	岩泉温泉	いわいずみおんせん	岩手県下閉伊郡岩泉町岩泉			三陸海岸	宮古	硫黄泉	\N	\N	\N	\N
180	234	小田代温泉	こだしろおんせん	岩手県下閉伊郡田老町小田代			三陸海岸	宮古	単純温泉	\N	\N	\N	\N
181	235	小川温泉	こがわおんせん	岩手県釜石市甲子町			三陸海岸	釜石・大船渡	硫黄泉	\N	\N	\N	\N
182	236	七時雨温泉	ななしぐれおんせん	岩手県岩手郡西根町寺田			安比・八幡平・二戸	安比・八幡平・二戸	塩化物泉	\N	\N	\N	\N
183	237	とぴや温泉	とぴやおんせん	岩手県二戸郡安代町細野			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50036	\N
184	238	安比温泉	あっぴおんせん	岩手県二戸郡安代町細野			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50036	\N
185	239	新安比温泉	しんあっぴおんせん	岩手県二戸郡安代町叺田			安比・八幡平・二戸	安比・八幡平・二戸	含鉄泉	\N	\N	50036	\N
186	240	藤七温泉　(八幡平)	とうしちおんせん	岩手県岩手郡松尾村寄木			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
187	241	御在所温泉　(八幡平)	ございしょおんせん	岩手県岩手郡松尾村緑ガ丘			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
188	242	東八幡平温泉　(八幡平)	ひがしはちまんたいおんせん	岩手県岩手郡松尾村寄木			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	50037	\N
189	243	西根温泉	にしねおんせん	岩手県岩手郡西根町大更			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
190	244	岩手山焼走り温泉	いわてさんやきばしりおんせん	岩手県岩手郡西根町平笠			安比・八幡平・二戸	安比・八幡平・二戸	単純温泉	\N	\N	50037	\N
191	245	松川温泉	まつかわおんせん	岩手県岩手郡松尾村寄木			安比・八幡平・二戸	安比・八幡平・二戸	硫黄泉	\N	\N	\N	\N
192	246	滝ノ上温泉	たきのうえおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	硫黄泉	\N	\N	\N	\N
193	247	網張温泉	あみはりおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	硫黄泉	\N	\N	50034	\N
194	248	玄武温泉	げんぶおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	ナトリウム塩化物泉	\N	\N	50034	\N
195	249	国見温泉	くにみおんせん	岩手県岩手郡雫石町橋場			雫石	雫石・鶯宿	炭酸水素塩泉	\N	\N	\N	\N
196	250	鶯宿温泉	おうしゅくおんせん	岩手県岩手郡雫石町鶯宿			雫石	雫石・鶯宿	硫黄泉	\N	\N	50034	\N
197	251	繋温泉	つなぎおんせん	岩手県盛岡市繋			盛岡	盛岡・つなぎ	硫黄泉	\N	\N	50033	\N
198	252	矢巾温泉	やはばおんせん	岩手県紫波郡矢巾町煙山			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	\N	\N
199	253	志和稲荷温泉	しわいなりおんせん	岩手県紫波郡紫波町升沢			花巻･北上･遠野	花巻・北上・湯田	放射能泉	\N	\N	\N	\N
200	254	新湯本温泉	しんゆもとおんせん	岩手県花巻市糠塚			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
201	255	花巻温泉　(花巻)	はなまきおんせん	岩手県花巻市湯本			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
202	256	台温泉　(花巻)	だいおんせん	岩手県花巻市湯本			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
203	257	新鉛温泉　(花巻)	しんなまりおんせん	岩手県花巻市鉛			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
204	258	鉛温泉　(花巻)	なまりおんせん	岩手県花巻市鉛			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	50038	\N
205	259	渡り温泉　(花巻)	わたりおんせん	岩手県花巻市湯口字宇佐野			花巻･北上･遠野	花巻・北上・湯田	炭酸水素塩泉	\N	\N	50038	\N
206	260	高倉山温泉　(花巻)	たかくらやまおんせん	岩手県花巻市下シ沢			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	\N	\N
207	261	山の神温泉　(花巻)	やまのかみおんせん (はなまき)	岩手県花巻市下シ沢字中野			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	50038	\N
208	262	大沢温泉（花巻）	おおさわおんせん（はなまき）	岩手県花巻市湯口字大沢181			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	50038	\N
209	263	金矢温泉	かなやおんせん	岩手県花巻市金矢			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	\N	\N
210	264	志戸平温泉　(花巻)	しどたいらおんせん	岩手県花巻市湯口			花巻･北上･遠野	花巻・北上・湯田	アルカリ単純泉	\N	\N	50038	\N
211	265	松倉温泉　(花巻)	まつくらおんせん	岩手県花巻市湯口			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	50038	\N
212	266	大岳温泉	おおだけおんせん	岩手県江刺市簗川			奥州・平泉・一関	奥州・水沢・江刺	硫黄泉	\N	\N	\N	\N
213	267	湯本温泉	ゆもとおんせん	岩手県和賀郡湯田町湯本			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	50039	\N
214	268	湯田薬師温泉	ゆだやくしおんせん	岩手県和賀郡湯田町中山			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	\N	\N
215	269	巣郷温泉	すごうおんせん	岩手県和賀郡湯田町巣郷			花巻･北上･遠野	花巻・北上・湯田	塩化物泉	\N	\N	\N	\N
216	270	湯川温泉	ゆがわおんせん	岩手県和賀郡湯田町湯川			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	50039	\N
217	271	夏油温泉	げとうおんせん	岩手県北上市和賀町岩崎新田			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	50576	\N
218	272	水神温泉	みずかみおんせん	岩手県北上市和賀町岩崎新田			花巻･北上･遠野	花巻・北上・湯田	硫黄泉	\N	\N	\N	\N
219	273	金ヶ崎温泉	かねがさきおんせん	岩手県胆沢郡金ヶ崎町西根和光			奥州・平泉・一関	奥州・水沢・江刺	硫酸塩泉	\N	\N	\N	\N
220	274	永岡温泉	ながおかおんせん	岩手県胆沢郡金ヶ崎町永沢			奥州・平泉・一関	奥州・水沢・江刺	硫黄泉	\N	\N	\N	\N
221	275	須川温泉	すかわおんせん	岩手県一関市厳美町			奥州・平泉・一関	平泉・一関	単純温泉	\N	\N	\N	\N
222	276	真湯温泉	しんゆおんせん	岩手県一関市厳美町須川岳			奥州・平泉・一関	平泉・一関	塩化物泉	\N	\N	\N	\N
223	277	祭畤温泉	まつるべおんせん	岩手県一関市厳美町祭畤			奥州・平泉・一関	平泉・一関	塩化物泉	\N	\N	50578	\N
224	278	奥厳美温泉	おくげんびおんせん	岩手県一関市厳美町槻の木平			奥州・平泉・一関	平泉・一関	含鉄泉	\N	\N	\N	\N
225	279	矢びつ温泉	やびつおんせん	岩手県一関市厳美町下り松			奥州・平泉・一関	平泉・一関	硫酸塩泉	\N	\N	50578	\N
226	280	厳美温泉	げんびおんせん	岩手県一関市厳美町			奥州・平泉・一関	平泉・一関	硫酸塩泉	\N	\N	\N	\N
227	281	厳美渓温泉	げんびけいおんせん	岩手県一関市厳美町			奥州・平泉・一関	平泉・一関	単純温泉	\N	\N	50578	\N
228	282	あづまね温泉	あづまねおんせん	岩手県紫波郡紫波町上松本字内方			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	\N	\N
229	283	宝竜温泉宝の湯	ほうりゅうおんせんたからのゆ	岩手県一関市厳美町宝竜			奥州・平泉・一関	平泉・一関	塩化物泉	\N	\N	\N	\N
230	284	千貫石温泉	せんがんいしおんせん	岩手県胆沢郡金ヶ崎町西根二枚橋			奥州・平泉・一関	奥州・水沢・江刺	塩化物泉	\N	\N	\N	\N
231	285	極楽乃温泉	ごくらくのおんせん	岩手県岩手郡雫石町長山			雫石	雫石・鶯宿	単純温泉	\N	\N	\N	\N
232	2198	沢内銀河高原温泉	さわうちぎんがこうげんおんせん	岩手県和賀郡沢内村川舟3-647-1			花巻･北上･遠野	花巻・北上・湯田	塩化物泉	\N	\N	\N	\N
233	2343	東和温泉	とうわおんせん	岩手県和賀郡東和町安俵6-135			花巻･北上･遠野	花巻・北上・湯田	炭酸水素塩泉	\N	\N	50038	\N
234	2344	綱取温泉	つなとりおんせん	岩手県北上市和賀町横川目3-17-2			花巻･北上･遠野	花巻・北上・湯田	炭酸水素塩泉	\N	\N	\N	\N
235	2345	しゃくなげの湯っこ五葉温泉	しゃくなげのゆっこごようおんせん	岩手県大船渡市日頃市町字赤坂西風山1-5			三陸海岸	釜石・大船渡	アルカリ単純泉	\N	\N	\N	\N
236	2346	川尻温泉	かわじりおんせん	岩手県和賀郡湯田町川尻40-53			花巻･北上･遠野	花巻・北上・湯田	単純温泉	\N	\N	\N	\N
237	2347	槻沢温泉	つきさわおんせん	岩手県和賀郡湯田町槻沢25-16-1			花巻･北上･遠野	花巻・北上・湯田	弱アルカリ性低張性泉	\N	\N	\N	\N
238	2348	錦秋湖温泉	きんしゅうこおんせん	岩手県和賀郡湯田町耳取49-2-137			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	\N	\N
239	2349	綿帽子温泉	わたぼうしおんせん	岩手県二戸郡安代町字細野436-1			安比・八幡平・二戸	安比・八幡平・二戸	硫酸塩泉	\N	\N	\N	\N
240	2406	舞鶴の湯温泉	まいづるのゆおんせん	岩手県胆沢郡前沢町徳沢1-45			奥州・平泉・一関	奥州・水沢・江刺	アルカリ単純泉	\N	\N	\N	\N
241	2684	平泉温泉	ひらいずみおんせん	岩手県西磐井郡平泉町平泉長庫１０－５			奥州・平泉・一関	平泉・一関	弱アルカリ性低張性泉	\N	\N	50481	\N
242	2727	ひぃなの丘	ひいなのおか	岩手県盛岡市繋字上野23-26			盛岡	盛岡・つなぎ	ナトリウム塩化物泉	\N	\N	\N	\N
243	2731	ほっとゆだ	ほっとゆだ	岩手県和賀郡湯田町川尻40-53			花巻･北上･遠野	花巻・北上・湯田	硫酸塩泉	\N	\N	\N	\N
244	2759	雫石高倉温泉	しずくいしたかくらおんせん	岩手県岩手郡雫石町高倉温泉			雫石	雫石・鶯宿	弱アルカリ性低張性泉	\N	\N	50034	\N
245	2798	瀬美温泉	せみおんせん	岩手県北上市和賀町岩崎新田1地割128番地			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	50576	\N
246	2894	南網張ありね温泉	みなみあみはりありねおんせん	岩手県岩手郡雫石町長山猫沢3-6			雫石	雫石・鶯宿	硫酸塩泉	\N	\N	50034	\N
247	3007	八幡平南温泉（湧宝の湯）	はちまんたいみなみおんせん（ゆうほうのゆ）	岩手県八幡平市松尾寄木第１－１３５－２			安比・八幡平・二戸	安比・八幡平・二戸	弱アルカリ性低張性泉	\N	\N	50037	\N
248	3010	八幡平温泉(岩手)	はちまんたいおんせん（いわて）	岩手県八幡平市松尾寄木１－６６８－２６７			安比・八幡平・二戸	安比・八幡平・二戸	ナトリウム塩化物泉	\N	\N	50037	\N
249	3235	一関温泉笹谷ちびぞう源泉	いちのせきおんせんささやちびぞうおんせん	岩手県一関市赤萩字笹谷396-6			奥州・平泉・一関	平泉・一関	硫酸塩泉	\N	\N	50578	\N
250	3238	新花巻温泉　柘榴園（華佗の湯、晃葉の湯）	しんはなまきおんせん　ざくろえん　かだのゆ　こうようのゆ	岩手県花巻市糠塚1-13-21			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	50038	\N
251	3249	奥中山高原温泉	おくなかやまこうげんおんせん	岩手県二戸郡一戸町奥中山字西田子６６２－１			安比・八幡平・二戸	安比・八幡平・二戸	炭酸水素塩泉	\N	\N	50972	\N
252	3256	志賀来温泉（およねの湯）	しがらいおんせん（およねのゆ）	岩手県和賀郡西和賀町沢内字大野17-140			花巻･北上･遠野	花巻・北上・湯田	ナトリウム塩化物泉	\N	\N	50039	\N
253	376	宮沢温泉　(鬼首)	みやざわおんせん	宮城県玉造郡鳴子町鬼首宮沢			鳴子・大崎	鳴子・大崎	塩化物泉	\N	\N	\N	\N
254	377	吹上温泉　(鬼首)	ふきあげおんせん	宮城県玉造郡鳴子町鬼首吹上			鳴子・大崎	鳴子・大崎	塩化物泉	\N	\N	\N	\N
255	378	轟温泉　(鬼首)	とどろきおんせん	宮城県玉造郡鳴子町鬼首轟			鳴子・大崎	鳴子・大崎	単純温泉	\N	\N	\N	\N
256	379	中山平温泉　(鳴子)	なかやまだいらおんせん	宮城県玉造郡鳴子町字星沼			鳴子・大崎	鳴子・大崎	硫黄泉	\N	\N	50041	\N
257	380	鳴子温泉　(鳴子)	なるこおんせん	宮城県玉造郡鳴子町字湯元			鳴子・大崎	鳴子・大崎	酸性泉	\N	\N	50041	\N
258	381	東鳴子温泉　(鳴子)	ひがしなるこおんせん	宮城県玉造郡鳴子町大口字赤湯			鳴子・大崎	鳴子・大崎	硫黄泉	\N	\N	50041	\N
259	382	川渡温泉　(鳴子)	かわたびおんせん	宮城県玉造郡鳴子町大字川端			鳴子・大崎	鳴子・大崎	含鉄泉	\N	\N	50041	\N
260	385	台ヶ森温泉	だいがもりおんせん	宮城県黒川郡大和町吉田台ヶ森			松島・塩竈	黒川	塩化物泉	\N	\N	\N	\N
261	388	作並温泉	さくなみおんせん	宮城県仙台市青葉区作並			仙台	秋保・作並	炭酸水素塩泉	\N	\N	50590	\N
262	389	二口温泉	ふたくちおんせん	宮城県仙台市太白区秋保町馬場			仙台	秋保・作並	塩化物泉	\N	\N	\N	\N
263	390	泉温泉	いずみおんせん	宮城県仙台市泉区福岡芳ノ沢			仙台	仙台	含鉄泉	\N	\N	\N	\N
264	391	広瀬川温泉	ひろせがわおんせん	宮城県仙台市青葉区芋沢			仙台	仙台	硫黄泉	\N	\N	\N	\N
265	392	鳴合温泉	なるあいおんせん	宮城県仙台市青葉区芋沢新田			仙台	仙台	炭酸水素塩泉	\N	\N	\N	\N
266	393	鴻巣温泉	こうのすおんせん	宮城県仙台市太白区秋保町境野中原			仙台	秋保・作並	塩化物泉	\N	\N	\N	\N
267	394	秋保温泉	あきうおんせん	宮城県仙台市太白区秋保町湯元			仙台	秋保・作並	単純温泉	\N	\N	50040	\N
268	395	かんかね温泉	かんかねおんせん	宮城県仙台市太白区秋保町境野			仙台	秋保・作並	硫酸塩泉	\N	\N	\N	\N
269	396	金山温泉	かなやまおんせん	宮城県柴田郡川崎町小野金山			白石・蔵王	白石・蔵王・遠刈田	硫酸塩泉	\N	\N	\N	\N
270	397	湯田河温泉	ゆたがわおんせん	宮城県柴田郡川崎町小野小屋場山			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
271	398	釜房温泉	かまふさおんせん	宮城県柴田郡川崎町大字支倉			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
272	399	茂庭温泉	もにわおんせん	宮城県仙台市太白区茂庭人来田西			仙台	仙台	塩化物泉	\N	\N	\N	\N
273	400	熊野堂温泉	くまのどうおんせん	宮城県名取市高館熊野堂			仙台	名取・岩沼	塩化物泉	\N	\N	\N	\N
274	401	谷山温泉	たにやまおんせん	宮城県柴田郡村田町足立川原			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
275	402	遠刈田温泉	とおがったおんせん	宮城県刈田郡蔵王町遠刈田温泉			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	50042	\N
276	403	青根温泉	あおねおんせん	宮城県柴田郡川崎町青根温泉			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	50573	\N
277	404	峩々温泉	ががおんせん	宮城県柴田郡川崎町前川峩々			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	\N	\N
278	405	鎌先温泉	かまさきおんせん	宮城県白石市福岡蔵本字鎌先			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	50571	\N
279	406	白石温泉	しろいしおんせん	宮城県白石市福岡蔵本薬師堂			白石・蔵王	白石・蔵王・遠刈田	塩化物泉	\N	\N	\N	\N
280	407	小原温泉	おばらおんせん	宮城県白石市小原湯元			白石・蔵王	白石・蔵王・遠刈田	硫酸塩泉	\N	\N	50572	\N
281	408	神次郎温泉	じんじろうおんせん	宮城県角田市神次郎上中田			白石・蔵王	角田	塩化物泉	\N	\N	\N	\N
282	409	野蒜（奥松島）温泉	のびる（おくまつしま）おんせん	宮城県桃生郡鳴瀬町野蒜字南赤崎			松島・塩竈	松島・塩竈	硫酸塩泉	\N	\N	50574	\N
283	410	鬼首高原	おにこうべこうげん	宮城県玉造郡鳴子町鬼首			鳴子・大崎	鳴子・大崎	硫酸塩泉	\N	\N	50041	\N
284	411	釜房湖温泉郷	かまふさこおんせんきょう	宮城県柴田郡川崎町小野			白石・蔵王	白石・蔵王・遠刈田	単純温泉	\N	\N	\N	\N
285	412	川崎火の塚山温泉	かわさきひのつかやまおんせん	宮城県柴田郡川崎町大字前川字火の塚山			白石・蔵王	白石・蔵王・遠刈田	硫酸塩泉	\N	\N	\N	\N
286	413	桃源の湯	とうげんのゆ	宮城県名取市増田			仙台	名取・岩沼	塩化物泉	\N	\N	\N	\N
287	2590	仙台七郷温泉	せんだいしちごうおんせん	宮城県仙台市若林区蒲町東10			仙台	仙台	塩化物泉	\N	\N	\N	\N
288	2692	南三陸温泉	みなみさんりくおんせん	宮城県本吉郡志津川町黒崎１００蕃の２			石巻・気仙沼	気仙沼・本吉	単純温泉	\N	\N	50489	\N
289	2842	気仙沼温泉	けせんぬまおんせん	宮城県気仙沼市港町4-19			石巻・気仙沼	気仙沼・本吉	硫黄泉	\N	\N	50676	\N
290	2899	松島温泉	まつしまおんせん	宮城県松島町松島			松島・塩竈	松島・塩竈	硫酸塩泉	\N	\N	50731	\N
291	3070	古川温泉	ふるかわおんせん	宮城県大崎市古川駅前大通1-4-18			鳴子・大崎	鳴子・大崎	塩化物泉	\N	\N	50882	\N
292	3152	新湯温泉1号線	しんゆおんせんいちごうせん	宮城県栗原市栗駒沼倉耕英東95-2			栗原・登米	栗原・登米	単純温泉	\N	\N	50932	\N
293	3168	沢乙温泉	さわおとおんせん	宮城県　宮城郡　利府町　菅谷字明神沢1			松島・塩竈	松島・塩竈	単純温泉	\N	\N	50939	\N
294	3213	滝ノ原温泉	たきのはらおんせん	宮城県黒川郡大和町宮床高山１８－１４			松島・塩竈	黒川	塩化物泉	\N	\N	50731	\N
295	286	大滝温泉	おおたきおんせん	秋田県大館市大滝温泉			十和田湖・大館・鹿角	大館	硫酸塩泉	\N	\N	\N	\N
296	287	国民休暇村乳頭の湯	こくみんきゅうかむらにゅうとうのゆ	秋田県仙北市田沢湖駒ケ岳2-1			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
297	288	日景温泉	ひかげおんせん	秋田県大館市長走			十和田湖・大館・鹿角	大館	炭酸水素塩泉	\N	\N	\N	\N
298	289	矢立温泉	やたておんせん	秋田県大館市長走赤湯沢１			十和田湖・大館・鹿角	大館	硫黄泉	\N	\N	\N	\N
299	290	大湯温泉	おおゆおんせん	秋田県鹿角市十和田大湯			十和田湖・大館・鹿角	八幡平・十和田湖	含鉄泉	\N	\N	50044	\N
300	291	ふるさわ温泉	ふるさわおんせん	秋田県大館市下代野新綱			十和田湖・大館・鹿角	大館	硫黄泉	\N	\N	\N	\N
301	292	長瀞温泉	ながとろおんせん	秋田県大館市長瀞			十和田湖・大館・鹿角	大館	塩化物泉	\N	\N	\N	\N
302	293	湯の沢温泉	ゆのさわおんせん	秋田県山本郡藤里町藤琴			白神・男鹿	白神・能代	硫酸塩泉	\N	\N	\N	\N
303	294	切石温泉	きりいしおんせん	秋田県山本郡二ツ井町切石			白神・男鹿	白神・能代	単純温泉	\N	\N	\N	\N
304	295	能代温泉	のしろおんせん	秋田県能代市落合亀谷地			白神・男鹿	白神・能代	塩化物泉	\N	\N	\N	\N
305	296	森岳温泉	もりたけおんせん	秋田県山本郡山本町森岳			白神・男鹿	白神・能代	塩化物泉	\N	\N	\N	\N
306	297	男鹿温泉	おがおんせん	秋田県男鹿市北浦			白神・男鹿	男鹿	単純温泉	\N	\N	50046	\N
307	298	戸賀温泉	とがおんせん	秋田県男鹿市戸賀			白神・男鹿	男鹿	塩化物泉	\N	\N	50521	\N
308	299	金ヶ崎温泉	かねがさきおんせん	秋田県男鹿市戸賀			白神・男鹿	男鹿	塩化物泉	\N	\N	\N	\N
309	300	小倉温泉	おぐらおんせん	秋田県南秋田郡五城目町富津内			白神・男鹿	男鹿	二酸化炭素泉	\N	\N	\N	\N
310	301	滑多羅温泉	なめたらおんせん	秋田県南秋田郡五城目町富津内			白神・男鹿	男鹿	塩化物泉	\N	\N	\N	\N
311	302	秋田温泉	あきたおんせん	秋田県秋田市添川			秋田	秋田	塩化物泉	\N	\N	\N	\N
312	303	湯の沢温泉	ゆのさわおんせん	秋田県北秋田郡森吉町森吉字湯の岱			白神・男鹿	鷹巣・阿仁・森吉	硫黄泉	\N	\N	\N	\N
313	304	大葛温泉	おおくぞおんせん	秋田県北秋田郡比内町大葛			白神・男鹿	鷹巣・阿仁・森吉	炭酸水素塩泉	\N	\N	\N	\N
314	305	湯瀬温泉	ゆぜおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	塩化物泉	\N	\N	50045	\N
315	306	志張温泉　(八幡平)	しばりおんせん	秋田県鹿角市八幡平老沢			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
316	307	銭川温泉　(八幡平)	ぜにかわおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫酸塩泉	\N	\N	\N	\N
317	308	トロコ温泉　(八幡平)	とろこおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	50037	\N
318	309	赤川温泉　(八幡平)	あかがわおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
319	310	澄川温泉　(八幡平)	すみかわおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
320	311	大沼温泉　(八幡平)	おおぬまおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	50037	\N
321	312	蒸ノ湯温泉　(八幡平)	ふけのゆおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	\N	\N
322	313	後生掛温泉　(八幡平)	ごしょがけおんせん	秋田県鹿角市八幡平			十和田湖・大館・鹿角	八幡平・十和田湖	含鉄泉	\N	\N	\N	\N
323	314	玉川温泉	たまがわおんせん	秋田県仙北郡田沢湖町玉川			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
324	315	新鳩の湯温泉	しんはとのゆおんせん	秋田県仙北郡田沢湖町玉川			田沢湖・角館・大曲	田沢湖・角館	酸性泉	\N	\N	\N	\N
325	316	打当温泉	うつとうおんせん	秋田県北秋田郡阿仁町打当			白神・男鹿	鷹巣・阿仁・森吉	硫黄泉	\N	\N	\N	\N
326	317	鶴の湯温泉	つるのゆおんせん	秋田県仙北市田沢湖田沢字先達沢国有林50			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
327	318	妙乃湯温泉	たえのゆおんせん	秋田県仙北市田沢湖生保内字駒ヶ岳2-1			田沢湖・角館・大曲	田沢湖・角館	含鉄泉	\N	\N	50714	\N
328	319	大釜温泉	おおがまおんせん	秋田県仙北市田沢湖田沢字先達国有林			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
329	320	蟹場温泉	がにばおんせん	秋田県仙北市田沢湖田沢字先達沢国有林			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	50714	\N
330	321	黒湯温泉	くろゆおんせん	秋田県仙北市田沢湖生保内字黒湯沢2-1			田沢湖・角館・大曲	田沢湖・角館	塩化物泉	\N	\N	50714	\N
331	322	孫六温泉	まごろくおんせん	秋田県仙北郡田沢湖町字先達沢国有林			田沢湖・角館・大曲	田沢湖・角館	炭酸水素塩泉	\N	\N	50714	\N
332	323	田沢湖高原温泉郷	たざわここうげんおんせんきょう	秋田県仙北郡田沢湖町生保内			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	50043	\N
333	324	水沢温泉郷	みずさわおんせんきょう	秋田県仙北郡田沢湖町生保内			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	50043	\N
334	325	唐松温泉	からまつおんせん	秋田県仙北郡協和町船岡字東兵衛屋敷			田沢湖・角館・大曲	田沢湖・角館	硫酸塩泉	\N	\N	\N	\N
335	326	西木温泉	にしきおんせん	秋田県仙北郡西木村門屋屋敷田			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	\N	\N
336	327	夏瀬温泉	なつぜおんせん	秋田県仙北郡田沢湖町神代			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	\N	\N
337	328	角館温泉	かくのだておんせん	秋田県仙北郡角館町西長野			田沢湖・角館・大曲	田沢湖・角館	その他	\N	\N	\N	\N
338	329	強首温泉	こわくびおんせん	秋田県仙北郡西仙北町上野台強首			田沢湖・角館・大曲	田沢湖・角館	鉱泉	\N	\N	\N	\N
339	330	新浪温泉	あらなみおんせん	秋田県河辺郡雄和町新波字新町			秋田	秋田	硫黄泉	\N	\N	\N	\N
340	331	川口温泉	かわぐちおんせん	秋田県仙北郡太田町太田			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
341	332	鹿子温泉	しかごおんせん	秋田県仙北郡太田町川口			田沢湖・角館・大曲	田沢湖・角館	硫酸塩泉	\N	\N	\N	\N
342	333	中里温泉	なかざとおんせん	秋田県仙北郡太田町中里			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	\N	\N
343	334	仙北温泉	せんぼくおんせん	秋田県仙北郡仙北町板見内一ッ森			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	\N	\N
344	335	角間川温泉	かくまがわおんせん	秋田県大曲市角間川町			田沢湖・角館・大曲	大仙・大曲	硫酸塩泉	\N	\N	\N	\N
345	336	湯の神温泉	ゆのかみおんせん	秋田県仙北郡南外村湯神台			田沢湖・角館・大曲	田沢湖・角館	塩化物泉	\N	\N	\N	\N
346	337	岩倉温泉	いわくらおんせん	秋田県仙北郡南外村湯元			田沢湖・角館・大曲	田沢湖・角館	含鉄泉	\N	\N	\N	\N
347	338	滝温泉	たきおんせん	秋田県由利郡大内町滝字湯ノ沢			横手・鳥海	鳥海・本荘・象潟	硫酸塩泉	\N	\N	50575	\N
348	339	かすみ温泉	かすみおんせん	秋田県由利郡大内町葛岡			横手・鳥海	鳥海・本荘・象潟	硫酸塩泉	\N	\N	\N	\N
349	340	三六温泉	みろくおんせん	秋田県本荘市二十六木			横手・鳥海	鳥海・本荘・象潟	単純温泉	\N	\N	\N	\N
350	341	安楽温泉	あんらくおんせん	秋田県本荘市出戸町			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
351	342	金浦温泉	このうらおんせん	秋田県由利郡金浦町前川			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
352	343	羽州温泉	うしゅうおんせん	秋田県由利郡象潟町琴和喜			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
353	344	象潟温泉	きさかたおんせん	秋田県由利郡象潟町才ノ神			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	50575	\N
354	345	湯ノ沢温泉	ゆのさわおんせん	秋田県由利郡鳥海町猿倉湯ノ沢			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	\N	\N
355	346	猿倉温泉	さるくらおんせん	秋田県由利郡鳥海町猿倉			横手・鳥海	鳥海・本荘・象潟	単純温泉	\N	\N	\N	\N
356	347	横手駅前温泉	よこてえきまえおんせん	秋田県横手市駅前町			横手・鳥海	横手・湯沢	含鉄泉	\N	\N	50577	\N
357	348	横手温泉	よこておんせん	秋田県横手市睦成字城付			横手・鳥海	横手・湯沢	含鉄泉	\N	\N	50577	\N
358	349	湯の平温泉	ゆのひらおんせん	秋田県横手市大沢			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	\N	\N
359	350	相野々温泉	あいののおんせん	秋田県平賀郡山内村土淵			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
360	351	三又温泉	みつまたおんせん	秋田県平賀郡山内村三又			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	\N	\N
361	352	戸波鉱泉	となみおんせん	秋田県平賀郡増田町戸波			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
362	353	湯沢温泉	ゆざわおんせん	秋田県湯沢市湯の原			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
363	354	湯の原温泉	ゆのはらおんせん	秋田県湯沢市湯の原			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
364	355	横堀温泉	よこぼりおんせん	秋田県雄勝郡雄勝町横堀			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	50577	\N
365	356	湯ノ沢温泉	ゆのさわおんせん	秋田県雄勝郡雄勝町下院内			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	\N	\N
366	357	木地山高原温泉	きじやまこうげんおんせん	秋田県湯沢市高松字湯尻村下			横手・鳥海	横手・湯沢	硫酸塩泉	\N	\N	\N	\N
367	358	泥湯温泉	どろゆおんせん	秋田県湯沢市高松字泥湯沢			横手・鳥海	横手・湯沢	二酸化炭素泉	\N	\N	\N	\N
368	359	小安峡温泉	おやすきょうおんせん	秋田県雄勝郡皆瀬村畑等字湯元			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
369	360	大湯温泉	おおゆおんせん	秋田県雄勝郡皆瀬村畑等			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
370	361	稲住温泉　(秋の宮)	いなずみおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
371	362	湯ノ岱温泉　(秋の宮)	ゆのたいおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	50577	\N
372	363	鷹ノ湯温泉　(秋の宮)	たかのゆおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
373	364	湯ノ又温泉　(秋の宮)	ゆのまたおんせん	秋田県雄勝郡雄勝町秋の宮			横手・鳥海	横手・湯沢	単純温泉	\N	\N	\N	\N
374	365	温泉ゆぽぽ	おんせんゆぽぽ	秋田県仙北郡田沢湖町神代			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
375	366	休暇村田沢湖高原	きゅうかむらたざわここうげん	秋田県仙北郡田沢湖町駒ヶ岳			田沢湖・角館・大曲	田沢湖・角館	塩化物泉	\N	\N	50043	\N
376	367	千畑温泉	せんはたおんせん	秋田県仙北郡千畑町金沢東根			田沢湖・角館・大曲	田沢湖・角館	硫黄泉	\N	\N	\N	\N
377	368	南郷温泉	なんごうおんせん	秋田県平鹿郡山内村南郷字大払川			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
378	369	大森温泉	おおもりおんせん	秋田県平鹿郡大森町持向			横手・鳥海	横手・湯沢	塩化物泉	\N	\N	\N	\N
379	370	仁賀保温泉	にかほおんせん	秋田県由利郡仁賀保町三森			横手・鳥海	鳥海・本荘・象潟	塩化物泉	\N	\N	50047	\N
380	2241	ぬく森温泉	ぬくもりおんせん	秋田県仙北郡西仙北町刈和野字山北の沢5-4			田沢湖・角館・大曲	田沢湖・角館	単純温泉	\N	\N	\N	\N
381	2242	上畑温泉	かみはたおんせん	秋田県平鹿郡増田町狙半内字古家沢口15			横手・鳥海	横手・湯沢	硫黄泉	\N	\N	50577	\N
382	2249	八幡平温泉	はちまんたいおんせん	秋田県鹿角市八幡平字熊沢			十和田湖・大館・鹿角	八幡平・十和田湖	硫黄泉	\N	\N	50037	\N
383	2250	夕陽温泉	ゆうひおんせん	秋田県南秋田郡若美町野石字大場湯沢下			秋田	秋田	硫酸塩泉	\N	\N	\N	\N
384	2407	阿仁前田温泉	あにまえたおんせん	秋田県北秋田郡森吉町小又堂の下21-2			白神・男鹿	鷹巣・阿仁・森吉	炭酸水素塩泉	\N	\N	\N	\N
385	2408	大潟村温泉	おおがたむらおんせん	秋田県南秋田郡大潟村北1-3			白神・男鹿	男鹿	塩化物泉	\N	\N	\N	\N
386	2409	黄桜温泉	きざくらおんせん	秋田県由利郡東由利町老方畑田28			横手・鳥海	鳥海・本荘・象潟	鉱泉	\N	\N	\N	\N
387	2567	天王温泉	てんのうおんせん	秋田県南秋田郡天王町天王字江川上谷地109-2			白神・男鹿	男鹿	ナトリウム塩化物泉	\N	\N	50471	\N
388	2591	みなと温泉	みなとおんせん	秋田県秋田市土崎港中央3-4-42			秋田	秋田	硫酸塩泉	\N	\N	\N	\N
389	2592	いさりび温泉	いさりびおんせん	秋田県山本郡八森町			白神・男鹿	白神・能代	その他	\N	\N	\N	\N
390	2593	男鹿山温泉	おがやまおんせん	秋田県男鹿市北浦字平岱山1			白神・男鹿	男鹿	ナトリウム塩化物泉	\N	\N	\N	\N
391	2594	山の手温泉	やまのておんせん	秋田県大曲市大曲西根字仁応治			田沢湖・角館・大曲	大仙・大曲	硫酸塩泉	\N	\N	\N	\N
392	2714	ホールサムインよこて	ほーるさむいんよこて	秋田県横手市婦気大堤（秋田ふるさと村）			横手・鳥海	横手・湯沢	その他	\N	\N	\N	\N
393	2799	秋の宮温泉郷	あきのみやおんせんきょう	秋田県湯沢市秋の宮字殿上1-36			横手・鳥海	横手・湯沢	単純温泉	\N	\N	50577	\N
438	458	竜王温泉	りゅうおうおんせん	山形県上山市金瓶			山形・蔵王・天童・上山	上山	硫酸塩泉	\N	\N	\N	\N
394	3108	切留平温泉(八幡平)	きりとめたいおんせん(はちまんたい)	秋田県鹿角市八幡平字切留平２０－１８			十和田湖・大館・鹿角	八幡平・十和田湖	ナトリウム塩化物泉	\N	\N	50037	\N
395	414	あつみ温泉	あつみおんせん	山形県西田川郡温海町湯温海			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	50052	\N
396	415	湯ノ田温泉	ゆのたおんせん	山形県飽海郡遊佐町大字吹浦字湯ノ田			酒田・鶴岡	酒田・遊佐	硫黄泉	\N	\N	\N	\N
397	416	鳥海温泉	ちょうかいおんせん	山形県飽海郡遊佐町吹浦西浜			酒田・鶴岡	酒田・遊佐	塩化物泉	\N	\N	\N	\N
398	417	辰ヶ湯温泉	たつがゆおんせん	山形県飽海郡松山町土渕湯ノ沢			酒田・鶴岡	酒田・遊佐	塩化物泉	\N	\N	\N	\N
399	419	湯野浜温泉	ゆのはまおんせん	山形県鶴岡市湯野浜			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫黄泉	\N	\N	50053	\N
400	420	火打崎温泉	ひうちざきおんせん	山形県鶴岡市菱津字火打崎			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
401	421	由良温泉	ゆらおんせん	山形県鶴岡市由良			酒田・鶴岡	鶴岡・湯野浜・あつみ	含鉄泉	\N	\N	\N	\N
402	422	波渡崎温泉	はとざきおんせん	山形県鶴岡市堅苔沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫酸塩泉	\N	\N	50583	\N
403	423	湯田川温泉	ゆたがわおんせん	山形県鶴岡市湯田川			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	50582	\N
404	424	新山温泉	にいやまおんせん	山形県鶴岡市高坂字金沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫酸塩泉	\N	\N	\N	\N
405	425	湯の沢温泉	ゆのさわおんせん	山形県東田川郡藤島町添川湯ノ沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫酸塩泉	\N	\N	\N	\N
406	426	羽根沢温泉	はねさわおんせん	山形県最上郡鮭川村中渡			尾花沢・新庄・村山	新庄・最上・肘折	塩化物泉	\N	\N	50846	\N
407	427	草薙温泉	くさなぎおんせん	山形県最上郡戸沢村古口草薙			尾花沢・新庄・村山	新庄・最上・肘折	炭酸水素塩泉	\N	\N	50581	\N
408	428	新庄温泉	しんじょうおんせん	山形県新庄市本合海			尾花沢・新庄・村山	新庄・最上・肘折	硫黄泉	\N	\N	\N	\N
409	429	筍沢温泉	たけのこざわおんせん	山形県東田川郡藤島町添川			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
410	430	川代温泉	かわだいおんせん	山形県東田川郡羽黒町川代中川代			酒田・鶴岡	鶴岡・湯野浜・あつみ	硫黄泉	\N	\N	\N	\N
411	431	今神温泉	いまがみおんせん	山形県最上郡戸沢村角川			尾花沢・新庄・村山	新庄・最上・肘折	硫黄泉	\N	\N	\N	\N
412	432	肘折温泉郷	ひじおりおんせんきょう	山形県最上郡大蔵村南山			尾花沢・新庄・村山	新庄・最上・肘折	炭酸水素塩泉	\N	\N	50845	\N
413	433	月の沢温泉	つきのさわおんせん	山形県東田川郡立川町立谷沢			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
414	434	湯殿山温泉	ゆどのさんおんせん	山形県東田川郡朝日村田麦俣			酒田・鶴岡	鶴岡・湯野浜・あつみ	酸性泉	\N	\N	\N	\N
415	435	大堀温泉	おおほりおんせん	山形県最上郡最上町大堀			尾花沢・新庄・村山	新庄・最上・肘折	塩化物泉	\N	\N	\N	\N
416	436	瀬見温泉	せみおんせん	山形県最上郡最上町瀬見			尾花沢・新庄・村山	新庄・最上・肘折	単純温泉	\N	\N	50587	\N
417	437	赤倉温泉	あかくらおんせん	山形県最上郡最上町赤倉			尾花沢・新庄・村山	新庄・最上・肘折	塩化物泉	\N	\N	50585	\N
418	438	おもだか温泉	おもだかおんせん	山形県北村山郡大石田町今宿			尾花沢・新庄・村山	尾花沢・銀山	硫酸塩泉	\N	\N	\N	\N
419	439	銀山温泉	ぎんざんおんせん	山形県尾花沢市大字銀山新畑			尾花沢・新庄・村山	尾花沢・銀山	単純温泉	\N	\N	50586	\N
420	440	鶴子温泉	つるこおんせん	山形県尾花沢市鶴子			尾花沢・新庄・村山	尾花沢・銀山	硫黄泉	\N	\N	\N	\N
421	441	湯舟沢温泉	ゆぶねざわおんせん	山形県村山市土生田			尾花沢・新庄・村山	東根・村山	単純温泉	\N	\N	\N	\N
422	442	ゆざ温泉	ゆざおんせん	山形県村山市本飯田			尾花沢・新庄・村山	東根・村山	硫黄泉	\N	\N	\N	\N
423	443	冨本温泉	ふもとおんせん	山形県村山市湯野沢			尾花沢・新庄・村山	東根・村山	単純温泉	\N	\N	\N	\N
424	444	碁点温泉	ごてんおんせん	山形県村山市碁点			尾花沢・新庄・村山	東根・村山	単純温泉	\N	\N	\N	\N
425	445	東根温泉	ひがしねおんせん	山形県東根市温泉町			尾花沢・新庄・村山	東根・村山	塩化物泉	\N	\N	50584	\N
426	446	左沢温泉	あてらざわおんせん	山形県西村山郡大江町左沢			寒河江・月山	月山・朝日	硫黄泉	\N	\N	\N	\N
427	447	高嶋温泉	たかしまおんせん	山形県寒河江市島東			寒河江・月山	寒河江	硫黄泉	\N	\N	\N	\N
428	448	寒河江温泉	さがえおんせん	山形県寒河江市本町			寒河江・月山	寒河江	含鉄泉	\N	\N	50551	\N
429	449	天童温泉	てんどうおんせん	山形県天童市鎌田			山形・蔵王・天童・上山	天童	塩化物泉	\N	\N	50462	\N
430	450	古寺鉱泉	こてらこうせん	山形県西村山郡大江町貫見字古寺			寒河江・月山	月山・朝日	硫酸塩泉	\N	\N	\N	\N
431	451	朝日鉱泉	あさひこうせん	山形県西村山郡朝日町立木			寒河江・月山	月山・朝日	塩化物泉	\N	\N	\N	\N
432	452	白鷹温泉	しらたかおんせん	山形県西置賜郡白鷹町下山			米沢・置賜	長井・置賜	含鉄泉	\N	\N	\N	\N
433	453	大野目温泉	だいのめおんせん	山形県山形市平久保			山形・蔵王・天童・上山	山形	硫黄泉	\N	\N	\N	\N
434	454	中桜田温泉	なかさくらだおんせん	山形県山形市蔵王飯田			山形・蔵王・天童・上山	蔵王	硫酸塩泉	\N	\N	\N	\N
435	455	飯田温泉	いいだおんせん	山形県山形市飯田			山形・蔵王・天童・上山	山形	炭酸水素塩泉	\N	\N	\N	\N
436	456	山形温泉	やまがたおんせん	山形県山形市蔵王成沢			山形・蔵王・天童・上山	蔵王	硫酸塩泉	\N	\N	\N	\N
437	457	黒沢温泉	くろさわおんせん	山形県山形市黒沢			山形・蔵王・天童・上山	山形	硫酸塩泉	\N	\N	\N	\N
439	459	上山温泉	かみのやまおんせん	山形県上山市新湯・湯町			山形・蔵王・天童・上山	上山	単純温泉	\N	\N	50049	\N
440	460	高松温泉(上山)	たかまつおんせん（かみのやま）	山形県上山市高松			山形・蔵王・天童・上山	上山	塩化物泉	\N	\N	\N	\N
441	461	河崎温泉（上山）	かわさきおんせん（かみのやま）	山形県上山市河崎			山形・蔵王・天童・上山	上山	塩化物泉	\N	\N	50049	\N
442	462	葉山温泉（上山）	はやまおんせん（かみのやま）	山形県上山市葉山			山形・蔵王・天童・上山	上山	塩化物泉	\N	\N	50049	\N
443	463	蔵王温泉	ざおうおんせん	山形県山形市蔵王温泉			山形・蔵王・天童・上山	蔵王	塩化物泉	\N	\N	50048	\N
444	464	赤湯温泉	あかゆおんせん	山形県南陽市赤湯			米沢・置賜	南陽・赤湯・高畠	硫酸塩泉	\N	\N	50051	\N
445	465	小国温泉	おぐにおんせん	山形県西置賜郡小国町岩井沢麻枯沢			米沢・置賜	長井・置賜	硫黄泉	\N	\N	\N	\N
446	466	泡の湯温泉	あわのゆおんせん	山形県西置賜郡小国町小玉川大谷地			米沢・置賜	長井・置賜	酸性泉	\N	\N	\N	\N
447	467	飯豊温泉	いいでおんせん	山形県西置賜郡小国町小玉川			米沢・置賜	長井・置賜	硫黄泉	\N	\N	\N	\N
448	468	小野川温泉	おのがわおんせん	山形県米沢市小野川町			米沢・置賜	米沢	硫黄泉	\N	\N	50461	\N
449	469	湯の沢温泉	ゆのさわおんせん	山形県米沢市関根			米沢・置賜	米沢	含鉄泉	\N	\N	50855	\N
450	470	笠松温泉	かさまつおんせん	山形県米沢市大沢			米沢・置賜	米沢	放射能泉	\N	\N	\N	\N
451	471	五色温泉	ごしきおんせん	山形県米沢市板谷五色温泉			米沢・置賜	米沢	硫黄泉	\N	\N	50857	\N
452	472	滑川温泉	なめがわおんせん	山形県米沢市大沢滑川			米沢・置賜	米沢	単純温泉	\N	\N	\N	\N
453	473	大平温泉	おおだいらおんせん	山形県米沢市李山			米沢・置賜	米沢	単純温泉	\N	\N	\N	\N
454	474	白布温泉	しらぶおんせん	山形県米沢市関			米沢・置賜	米沢	単純温泉	\N	\N	50050	\N
455	475	新高湯温泉	しんたかゆおんせん	山形県米沢市関			米沢・置賜	米沢	硫黄泉	\N	\N	50858	\N
456	476	姥湯温泉	うばゆおんせん	山形県米沢市峠姥湯			米沢・置賜	米沢	硫黄泉	\N	\N	\N	\N
457	477	ひまわり温泉ゆ・ら・ら	ひまわりおんせんゆらら	山形県東村山郡中山町いずみ			寒河江・月山	寒河江	硫黄泉	\N	\N	\N	\N
458	478	松山温泉観音湯	まつやまおんせんかんのんゆ	山形県飽海郡松山町大字成興字須郷			酒田・鶴岡	酒田・遊佐	硫黄泉	\N	\N	\N	\N
459	479	飯森山温泉	いいもりやまおんせん	山形県酒田市大字宮野浦字飯森山西			酒田・鶴岡	酒田・遊佐	含鉄泉	\N	\N	\N	\N
460	480	なの花温泉	なのはなおんせん	山形県西田川郡温海町湯温海			酒田・鶴岡	鶴岡・湯野浜・あつみ	塩化物泉	\N	\N	\N	\N
461	2354	川西町浴浴センター　まどか	かわにしまちよくよくせんたー　まどか	山形県東置賜郡川西町大字上小松509536			米沢・置賜	長井・置賜	単純温泉	\N	\N	\N	\N
462	2355	ぽっぽの湯	ぽっぽのゆ	山形県東田川郡藤島町長沼字宮前266-1			酒田・鶴岡	鶴岡・湯野浜・あつみ	単純温泉	\N	\N	\N	\N
463	2356	あったまりランド　深堀	あったまりらんど　ふかほり	山形県北村山郡大石田町大字豊田884-1			尾花沢・新庄・村山	尾花沢・銀山	硫黄泉	\N	\N	\N	\N
464	2357	べに花温泉　ひなの湯	べにばなおんせん　ひなのゆ	山形県西村山郡河北町谷地下野269			尾花沢・新庄・村山	東根・村山	ナトリウム塩化物泉	\N	\N	\N	\N
465	2358	舟唄温泉	ふなうたおんせん	山形県西村山郡大江町大字藤田831-40大江町「テルメ柏陵」健康温泉館			寒河江・月山	月山・朝日	その他	\N	\N	\N	\N
466	2359	りんご温泉	りんごおんせん	山形県西村山郡朝日町大字宮宿1353-1			寒河江・月山	月山・朝日	単純温泉	\N	\N	\N	\N
467	2360	舟形若あゆ温泉	ふながたわかあゆおんせん	山形県最上郡舟形町長沢8067			尾花沢・新庄・村山	新庄・最上・肘折	ナトリウム塩化物泉	\N	\N	\N	\N
468	2361	なの花温泉　田田	なのはなおんせん　でんでん	山形県東田川郡三川町横山堤172-1			酒田・鶴岡	鶴岡・湯野浜・あつみ	弱アルカリ性低張性泉	\N	\N	\N	\N
469	2396	八森温泉　ゆりんこ	はちもりおんせん　ゆりんこ	山形県飽海郡八幡町麓緑沢29-8			酒田・鶴岡	酒田・遊佐	ナトリウム塩化物泉	\N	\N	\N	\N
470	2397	庄内いこいの村温泉	しょうないいこいのむらおんせん	山形県鶴岡市千安京田竜花山1-1			酒田・鶴岡	鶴岡・湯野浜・あつみ	炭酸水素塩泉	\N	\N	\N	\N
471	2410	山形うわの温泉	やまがたうわのおんせん	山形県山形市蔵王上野313-1			山形・蔵王・天童・上山	蔵王	ナトリウム塩化物泉	\N	\N	\N	\N
472	2411	天童最上川温泉	てんどうもがみがわおんせん	山形県天童市藤内新田1620-1			山形・蔵王・天童・上山	天童	ナトリウム塩化物泉	\N	\N	50462	\N
473	2568	月山志津温泉	がっさんしづおんせん	山形県西村山郡西川町大字志津			寒河江・月山	月山・朝日	硫黄泉	\N	\N	50588	\N
474	2595	黄金温泉	こがねおんせん	山形県最上郡大蔵村南山字字金山			尾花沢・新庄・村山	新庄・最上・肘折	その他	\N	\N	\N	\N
475	2596	野口温泉	のぐちおんせん	山形県最上郡戸沢村大字松坂			尾花沢・新庄・村山	新庄・最上・肘折	弱アルカリ性低張性泉	\N	\N	\N	\N
476	2597	白川ダム温泉	しらかわだむおんせん	山形県西置賜郡飯豊町大字数馬宇木落475-12			米沢・置賜	長井・置賜	ナトリウム塩化物泉	\N	\N	\N	\N
477	2598	長井あやめ温泉	ながいあやめおんせん	山形県長井市寺泉4246-13			米沢・置賜	長井・置賜	炭酸水素塩泉	\N	\N	\N	\N
478	2707	新寒河江源泉	しんさがえげんせん	山形県寒河江市大字島字島西1-2			寒河江・月山	寒河江	ナトリウム塩化物泉	\N	\N	\N	\N
479	2709	神室温泉	かむろおんせん	山形県最上郡金山町大字有屋字柳原			尾花沢・新庄・村山	新庄・最上・肘折	ナトリウム塩化物泉	\N	\N	\N	\N
480	2710	まほろば温泉	まほろばおんせん	山形県東置賜郡高畠町山崎			米沢・置賜	南陽・赤湯・高畠	弱アルカリ性低張性泉	\N	\N	\N	\N
481	3123	眺山源泉	ちょうざんげんせん	山形県西置賜郡飯豊町大字添川字東野一 3020-5			米沢・置賜	長井・置賜	鉱泉	\N	\N	50908	\N
482	3146	卯の花温泉	うのはなおんせん	山形県長井市成田2170-2			米沢・置賜	長井・置賜	ナトリウム塩化物泉	\N	\N	50930	\N
483	3178	日山温泉	ひやまおんせん	山形県最上郡最上町大字富沢834-5			尾花沢・新庄・村山	新庄・最上・肘折	ナトリウム塩化物泉	\N	\N	50585	\N
484	3191	広河原温泉	ひろがわらおんせん	山形県西置賜郡飯豊町広河原湯ノ沢448-2			米沢・置賜	長井・置賜	弱アルカリ性低張性泉	\N	\N	50908	\N
485	3243	湯の台温泉	ゆのだいおんせん	山形県酒田市草津字湯ノ台６６－１			酒田・鶴岡	酒田・遊佐	硫酸塩泉	\N	\N	50966	\N
486	481	高湯温泉	たかゆおんせん	福島県福島市町庭坂			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	50699	\N
487	482	鹿狼温泉	かろうおんせん	福島県相馬郡新地町			相馬	相馬	含鉄泉	\N	\N	\N	\N
488	483	蒲庭温泉	かばにわおんせん	福島県相馬市蒲庭字前迫			相馬	相馬	酸性泉	\N	\N	\N	\N
489	484	飯坂温泉	いいざかおんせん	福島県福島市飯坂町			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	50054	\N
490	485	穴原温泉	あなばらおんせん	福島県福島市飯坂町			福島・二本松	福島・飯坂・土湯・高湯	硫酸塩泉	\N	\N	50589	\N
491	486	天王寺温泉	てんのうじおんせん	福島県福島市飯坂町			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	50589	\N
492	487	信夫温泉	しのぶおんせん	福島県福島市桜本本通沢			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	50699	\N
493	488	微温湯温泉	ぬるゆおんせん	福島県福島市桜本温湯			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
494	489	土湯温泉	つちゆおんせん	福島県福島市土湯温泉町字上の町			福島・二本松	福島・飯坂・土湯・高湯	含鉄泉	\N	\N	50055	\N
495	490	不動湯温泉	ふどうゆおんせん	福島県福島市土湯温泉町大笹			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
496	491	奥土湯川上温泉	おくつちゆかわかみおんせん	福島県福島市土湯温泉字川上			福島・二本松	福島・飯坂・土湯・高湯	炭酸水素塩泉	\N	\N	\N	\N
497	492	東海温泉	とうかいおんせん	福島県福島市土湯温泉町川上			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	\N	\N
498	493	幕川温泉	まくがわおんせん	福島県福島市土湯温泉町字鷲倉山			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	\N	\N
499	494	新野地温泉	しんのじおんせん	福島県福島市土湯温泉町野地			福島・二本松	福島・飯坂・土湯・高湯	単純温泉	\N	\N	\N	\N
500	495	赤湯温泉	あかゆおんせん	福島県福島市土湯温泉町鷲倉			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
501	496	野地温泉	のじおんせん	福島県福島市土湯温泉町			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
502	497	鷲倉温泉	わしくらおんせん	福島県福島市土湯温泉町鷲倉			福島・二本松	福島・飯坂・土湯・高湯	硫黄泉	\N	\N	\N	\N
503	498	横向温泉	よこむきおんせん	福島県耶麻郡猪苗代町若宮横向山			猪苗代・表磐梯	猪苗代・表磐梯	硫黄泉	\N	\N	\N	\N
504	499	沼尻温泉	ぬまじりおんせん	福島県耶麻郡猪苗代町蚕養沼尻山			猪苗代・表磐梯	猪苗代・表磐梯	含鉄泉	\N	\N	\N	\N
505	500	中ノ沢温泉	なかのさわおんせん	福島県耶麻郡猪苗代町蚕養沼尻山			猪苗代・表磐梯	猪苗代・表磐梯	硫黄泉	\N	\N	\N	\N
506	501	くろがね温泉	くろがねおんせん	福島県二本松市永田国有林			福島・二本松	二本松・岳・大玉	単純温泉	\N	\N	\N	\N
507	502	塩沢温泉	しおざわおんせん	福島県二本松市塩沢温泉			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	\N	\N
508	503	奥岳温泉	おくだけおんせん	福島県二本松市奥岳温泉			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	\N	\N
509	504	岳温泉	だけおんせん	福島県二本松市岳温泉			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	50056	\N
510	505	安達太良温泉	あだたらおんせん	福島県安達郡大玉村玉井前ヶ岳			福島・二本松	二本松・岳・大玉	単純温泉	\N	\N	\N	\N
511	506	大玉温泉	おおたまおんせん	福島県安達郡大玉村大山			福島・二本松	二本松・岳・大玉	含鉄泉	\N	\N	\N	\N
512	507	白沢温泉	しらさわおんせん	福島県安達郡白沢村長屋宮山			福島・二本松	二本松・岳・大玉	酸性泉	\N	\N	\N	\N
513	508	磐梯熱海温泉	ばんだいあたみおんせん	福島県郡山市熱海町			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	50057	\N
514	509	休石温泉	やすみいしおんせん	福島県郡山市逢瀬町多田野字休石			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	\N	\N
515	510	源田温泉	げんだおんせん	福島県郡山市逢瀬町多田野字源田			郡山	郡山・磐梯熱海・須賀川	含鉄泉	\N	\N	\N	\N
516	511	勝木沢温泉	かちきざわおんせん	福島県郡山市富久山町			郡山	郡山・磐梯熱海・須賀川	硫黄泉	\N	\N	\N	\N
517	512	斉藤の湯温泉	さいとうのゆおんせん	福島県田村郡三春町斉藤			郡山	田村・三春	硫黄泉	\N	\N	\N	\N
518	513	馬場の湯温泉	ばばのゆおんせん	福島県田村郡三春町尼ヶ谷			郡山	田村・三春	単純温泉	\N	\N	50058	\N
519	514	玉の湯温泉	たまのゆおんせん	福島県双葉郡大熊町野上			いわき・双葉	双葉	単純温泉	\N	\N	\N	\N
520	515	岩井戸温泉	いわいどおんせん	福島県双葉郡富岡町上郡山			いわき・双葉	双葉	放射能泉	\N	\N	\N	\N
521	516	折木温泉	おりきおんせん	福島県双葉郡広野町折木			いわき・双葉	双葉	放射能泉	\N	\N	\N	\N
522	517	久の浜温泉	ひさのはまおんせん	福島県いわき市大久町字与平作			いわき・双葉	いわき・平	含鉄泉	\N	\N	\N	\N
523	518	湯沢温泉	ゆざわおんせん	福島県田村郡小野町湯沢			郡山	田村・三春	含鉄泉	\N	\N	\N	\N
524	519	小町温泉	こまちおんせん	福島県田村郡小野町谷津作			郡山	田村・三春	含鉄泉	\N	\N	50536	\N
525	520	日影の湯温泉	ひかげのゆおんせん	福島県田村郡小野町小戸神			郡山	田村・三春	含鉄泉	\N	\N	\N	\N
526	521	中津川温泉	なかつがわおんせん	福島県郡山市田村町糠塚字下滝			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	\N	\N
527	522	守山温泉	もりやまおんせん	福島県郡山市田村町守山			郡山	郡山・磐梯熱海・須賀川	単純温泉	\N	\N	\N	\N
528	523	芹沢温泉	せりざわおんせん	福島県須賀川市芹沢			郡山	郡山・磐梯熱海・須賀川	含鉄泉	\N	\N	\N	\N
529	524	マルナカ温泉	まるなかおんせん	福島県岩瀬郡鏡石町鏡田			白河	白河・羽鳥湖	単純温泉	\N	\N	\N	\N
530	525	新菊島温泉	しんきくしまおんせん	福島県岩瀬郡鏡石町久来石			白河	白河・羽鳥湖	単純温泉	\N	\N	\N	\N
531	526	金勝寺温泉	きんしょうじおんせん	福島県白河市金勝寺			白河	白河・羽鳥湖	単純温泉	\N	\N	\N	\N
532	527	母畑温泉	ぼばたおんせん	福島県石川郡石川町母畑			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
533	528	片倉温泉	かたくらおんせん	福島県石川郡石川町字立ヶ岡			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
534	529	猫啼温泉	ねこなきおんせん	福島県石川郡石川町猫啼			白河	棚倉・東白川	放射能泉	\N	\N	\N	\N
535	530	戸倉温泉	とくらおんせん	福島県東白川郡鮫川村西山			白河	棚倉・東白川	放射能泉	\N	\N	\N	\N
536	531	入道の湯	にゅうどうのゆ	福島県石川郡古殿町松川字滝の平			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
537	532	棚倉温泉	たなくらおんせん	福島県東白川郡棚倉町大字関口字一本松			白河	棚倉・東白川	放射能泉	\N	\N	50063	\N
538	533	向山温泉	むこうやまおんせん	福島県東白川郡棚倉町関口			白河	棚倉・東白川	放射能泉	\N	\N	\N	\N
539	534	玉山温泉	たまやまこうせん	福島県いわき市四倉町			いわき・双葉	いわき・平	含鉄泉	\N	\N	\N	\N
540	535	白岩鉱泉	しろいわこうせん	福島県いわき市四倉町			いわき・双葉	いわき・平	放射能泉	\N	\N	\N	\N
541	536	四倉舞子温泉	よつくらまいこおんせん	福島県いわき市四倉町上仁井田			いわき・双葉	いわき・平	単純温泉	\N	\N	\N	\N
542	537	吉野谷鉱泉	よしのやこうせん	福島県いわき市平吉野谷			いわき・双葉	いわき・平	単純温泉	\N	\N	\N	\N
543	538	神白温泉	かじろおんせん	福島県いわき市小名浜上神白追分30			いわき・双葉	いわき・小名浜	炭酸水素塩泉	\N	\N	50059	\N
544	539	地切温泉	じきりおんせん	福島県いわき市永崎			いわき・双葉	いわき・小名浜	酸性泉	\N	\N	\N	\N
545	540	高野温泉	こうやおんせん	福島県いわき市内郷高野町			いわき・双葉	いわき・平	塩化物泉	\N	\N	\N	\N
546	541	いわき湯本温泉	いわきゆもとおんせん	福島県いわき市常磐湯本町			いわき・双葉	いわき・湯本	二酸化炭素泉	\N	\N	50059	\N
547	542	白鳥温泉	しらとりおんせん	福島県いわき市常磐白鳥町			いわき・双葉	いわき・湯本	ナトリウム塩化物泉	\N	\N	\N	\N
548	543	谷川の湯温泉	やかわのゆおんせん	福島県東白川郡塙町大字山形字吉ノ目			白河	棚倉・東白川	炭酸水素塩泉	\N	\N	\N	\N
549	544	志保の湯温泉	しほのゆおんせん	福島県東白川郡塙町木野反			白河	棚倉・東白川	硫酸塩泉	\N	\N	\N	\N
550	545	湯岐温泉	ゆじまたおんせん	福島県東白川郡塙町湯岐			白河	棚倉・東白川	単純温泉	\N	\N	\N	\N
551	546	新湯岐温泉	しんゆじまたおんせん	福島県東白川郡塙町湯岐			白河	棚倉・東白川	炭酸水素塩泉	\N	\N	\N	\N
552	547	滝ノ沢温泉	たきのさわおんせん	福島県東白川郡矢祭町			白河	棚倉・東白川	硫黄泉	\N	\N	\N	\N
553	548	熱塩温泉	あつしおおんせん	福島県耶麻郡熱塩加納村熱塩			会津	喜多方・熱塩・山都	塩化物泉	\N	\N	50066	\N
554	549	喜多方温泉	きたかたおんせん	福島県喜多方市岩月町宮津字惣社原			会津	喜多方・熱塩・山都	単純温泉	\N	\N	50068	\N
555	550	相川温泉	あいかわおんせん	福島県耶麻郡山都町相川			会津	喜多方・熱塩・山都	単純温泉	\N	\N	\N	\N
556	551	剣ヶ峰温泉	つるがみねおんせん	福島県耶麻郡北塩原村大字桧原字剣ヶ峰			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	単純温泉	\N	\N	50077	\N
557	552	小野川湖温泉	おのがわおんせん	福島県耶麻郡北塩原村檜原小野川			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	単純温泉	\N	\N	\N	\N
558	553	五色温泉	ごしきおんせん	福島県耶麻郡北塩原村大字檜原字剣ヶ峯			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	単純温泉	\N	\N	50078	\N
559	554	裏磐梯湯平山源泉	うらばんだいゆだいらやまおんせん	福島県耶麻郡北塩原村大字檜原字湯平山			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	塩化物泉	\N	\N	\N	\N
560	555	大塩裏磐梯温泉	おおしおうらばんだいおんせん	福島県耶麻郡北塩原村大塩			裏磐梯・磐梯高原	裏磐梯・五色沼・磐梯高原	硫酸塩泉	\N	\N	\N	\N
561	556	磐梯温泉	ばんだいおんせん	福島県耶麻郡磐梯町磐梯			猪苗代・表磐梯	猪苗代・表磐梯	単純温泉	\N	\N	\N	\N
562	557	押立温泉	おつたておんせん	福島県耶麻郡猪苗代町磐根佐賀地			猪苗代・表磐梯	猪苗代・表磐梯	ナトリウム塩化物泉	\N	\N	\N	\N
563	558	表磐梯温泉	おもてばんだいおんせん	福島県耶麻郡猪苗代町綿場			猪苗代・表磐梯	猪苗代・表磐梯	炭酸水素塩泉	\N	\N	50071	\N
564	559	翁島温泉	おきなじまおんせん	福島県耶麻郡猪苗代町磐根			猪苗代・表磐梯	猪苗代・表磐梯	単純温泉	\N	\N	\N	\N
565	560	猪苗代温泉	いなわしろおんせん	福島県耶麻郡猪苗代町川桁天王坂			猪苗代・表磐梯	猪苗代・表磐梯	硫酸塩泉	\N	\N	50072	\N
566	561	志田浜温泉	しだはまおんせん	福島県耶麻郡猪苗代町			猪苗代・表磐梯	猪苗代・表磐梯	塩化物泉	\N	\N	50072	\N
567	562	東山温泉	ひがしやまおんせん	福島県会津若松市東山町			会津	会津若松・東山・芦ノ牧	硫黄泉	\N	\N	50064	\N
568	563	津尻温泉	つじりおんせん	福島県河沼郡会津坂下町津尻			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
569	564	坂下温泉	ばんげおんせん	福島県河沼郡会津坂下町宇内			会津	柳津・西会津	単純温泉	\N	\N	\N	\N
570	565	柳津温泉	やないづおんせん	福島県河沼郡柳津町柳津			会津	柳津・西会津	含鉄泉	\N	\N	50069	\N
571	566	西山温泉	にしやまおんせん	福島県河沼郡柳津町砂子原			会津	柳津・西会津	硫黄泉	\N	\N	\N	\N
572	567	宮下温泉	みやしたおんせん	福島県大沼郡三島町宮下			会津	柳津・西会津	単純温泉	\N	\N	\N	\N
573	568	早戸温泉	はやとおんせん	福島県大沼郡三島町早戸			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
574	569	湯倉温泉	ゆくらおんせん	福島県大沼郡金山町本名			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
575	570	橋立温泉	はしたておんせん	福島県大沼郡金山町越川			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
576	571	大塩温泉	おおしおおんせん	福島県大沼郡金山町大塩			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
577	572	八町温泉	はちまちおんせん	福島県大沼郡金山町八町			会津	柳津・西会津	塩化物泉	\N	\N	\N	\N
578	573	玉梨温泉	たまなしおんせん	福島県大沼郡金山町玉梨			会津	柳津・西会津	硫黄泉	\N	\N	\N	\N
579	574	昭和温泉	しょうわおんせん	福島県大沼郡昭和村野尻			会津	柳津・西会津	炭酸水素塩泉	\N	\N	\N	\N
580	575	さかい温泉	さかいおんせん	福島県南会津郡南郷村界			南会津	会津高原・湯野上・南会津	塩化物泉	\N	\N	\N	\N
581	576	芦ノ牧温泉	あしのまきおんせん	福島県会津若松市大戸町			会津	会津若松・東山・芦ノ牧	塩化物泉	\N	\N	50065	\N
582	577	湯野上温泉	ゆのかみおんせん	福島県南会津郡下郷町湯野上			南会津	会津高原・湯野上・南会津	塩化物泉	\N	\N	50070	\N
583	578	岩瀬湯本温泉	いわせゆもとおんせん	福島県岩瀬郡天栄村湯本			白河	白河・羽鳥湖	塩化物泉	\N	\N	\N	\N
584	579	天栄温泉	てんえいおんせん	福島県岩瀬郡天栄村牧之内			白河	白河・羽鳥湖	塩化物泉	\N	\N	\N	\N
585	580	二岐温泉	ふたまたおんせん	福島県岩瀬郡天栄村湯本二岐			白河	白河・羽鳥湖	塩化物泉	\N	\N	\N	\N
586	668	三斗小屋温泉　(那須)	さんどごやおんせん	栃木県黒磯市三斗小屋			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
587	669	北温泉　(那須)	きたおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
588	670	那須高原温泉　(那須)	なすこうげんおんせん	栃木県那須郡那須町那須高原			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
589	671	弁天温泉　(那須)	べんてんおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	硫黄泉	\N	\N	\N	\N
590	672	那須国民休暇村　(那須)	なすこくみんきゅうかむら	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
591	673	大丸温泉　(那須)	おおまるおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
592	674	八幡温泉　(那須)	やはたおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
593	675	高雄温泉　(那須)	たかおおんせん	栃木県那須郡那須町湯本ツムジ平			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
594	676	那須湯本温泉　(那須)	なすゆもとおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	硫黄泉	\N	\N	50081	\N
595	677	新那須温泉　(那須)	しんなすおんせん	栃木県那須郡那須町湯本			那須・板室	那須・板室	硫黄泉	\N	\N	50081	\N
596	678	板室温泉	いたむろおんせん	栃木県黒磯市板室			那須・板室	那須・板室	含鉄泉	\N	\N	50558	\N
597	679	柳沢鉱泉	やなぎさわこうせん	栃木県那須郡那須町高久乙			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
598	680	大正村幸乃湯温泉	たいしょうむらさちのゆおんせん	栃木県黒磯市百村			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
599	681	黒磯温泉	くろいそおんせん	栃木県黒磯市黒磯			那須・板室	那須・板室	含鉄泉	\N	\N	\N	\N
600	682	小松原温泉	こまつばらおんせん	栃木県那須郡黒羽町中野内			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
601	683	大網温泉　(塩原温泉)	おおあみおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
602	684	塩釜温泉　(塩原温泉)	しおがまおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50082	\N
603	685	福渡温泉　(塩原温泉)	ふくわたおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	50082	\N
604	686	塩の湯温泉　(塩原温泉)	しおのゆおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
605	687	須巻温泉　(塩原温泉)	すまきおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	\N	\N
606	688	中塩原温泉　(塩原温泉)	なかしおばらおんせん	栃木県那須郡塩原町中塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
607	689	古町温泉　(塩原温泉)	ふるまちおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
608	690	門前温泉　(塩原温泉)	もんぜんおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50082	\N
609	691	畑下温泉　(塩原温泉)	はたおりおんせん	栃木県那須郡塩原町下塩原			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50082	\N
610	692	奥塩原新湯温泉　(塩原温泉)	おくしおばらしんゆおんせん	栃木県那須郡塩原町湯本塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
611	693	元湯温泉　(塩原温泉)	もとゆおんせん	栃木県那須郡塩原町湯本塩原			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
612	694	上塩原温泉　(塩原温泉)	かみしおばらおんせん	栃木県那須郡塩原町上塩原			塩原・矢板・大田原・西那須野	塩原	硫黄泉	\N	\N	50082	\N
613	695	湯西川温泉	ゆにしがわおんせん	栃木県塩谷郡栗山村湯西川			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫黄泉	\N	\N	50088	\N
614	696	女夫淵温泉　(奥鬼怒)	めおとぶちおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	塩化物泉	\N	\N	50879	\N
615	697	加仁湯温泉　(奥鬼怒)	かにゆおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	塩化物泉	\N	\N	50879	\N
616	698	八丁の湯温泉　(奥鬼怒)	はっちょうのゆおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	単純温泉	\N	\N	50879	\N
617	699	手白沢温泉　(奥鬼怒)	てしろさわおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	アルカリ単純泉	\N	\N	50879	\N
618	700	平家平温泉	へいけだいらおんせん	栃木県塩谷郡栗山村平家平			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫黄泉	\N	\N	\N	\N
619	701	川俣温泉	かわまたおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫黄泉	\N	\N	50561	\N
620	702	川俣湖温泉	かわまたこおんせん	栃木県塩谷郡栗山村川俣			鬼怒川・川治・湯西川・川俣	湯西川・川俣	単純温泉	\N	\N	\N	\N
621	703	日光湯元温泉	にっこうゆもとおんせん	栃木県日光市湯元			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	硫黄泉	\N	\N	50084	\N
622	704	光徳温泉	こうとくおんせん	栃木県日光市光徳			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	塩化物泉	\N	\N	\N	\N
623	705	日光温泉	にっこうおんせん	栃木県日光市安川町・鉢石町			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	単純温泉	\N	\N	50085	\N
624	706	小来川温泉	おころがわおんせん	栃木県日光市宮小来川			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	単純温泉	\N	\N	\N	\N
625	707	足尾温泉	あしおおんせん	栃木県上都賀郡足尾町銀山平			佐野・小山・足利・鹿沼	鹿沼・足尾	硫黄泉	\N	\N	\N	\N
626	708	かご岩温泉	かごいわおんせん	栃木県塩谷郡藤原町高徳			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	硫黄泉	\N	\N	50975	\N
627	709	鬼怒川温泉	きぬがわおんせん	栃木県塩谷郡藤原町滝・藤原			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	単純温泉	\N	\N	50086	\N
628	710	日向温泉	ひなたおんせん	栃木県塩谷郡栗山村日向下湯原			鬼怒川・川治・湯西川・川俣	湯西川・川俣	単純温泉	\N	\N	\N	\N
629	711	川治温泉	かわじおんせん	栃木県塩谷郡藤原町川治			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	硫酸塩泉	\N	\N	50087	\N
630	712	赤滝鉱泉	あかたきこうせん	栃木県矢板市平野			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
631	713	小滝鉱泉	こたきこうせん	栃木県矢板市平野			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
632	714	寺山鉱泉	てらやまこうせん	栃木県矢板市長井			塩原・矢板・大田原・西那須野	矢板・大田原	単純温泉	\N	\N	\N	\N
633	715	鳥羽の湯温泉	とばのゆおんせん	栃木県塩谷郡塩谷町鳥羽新田			鬼怒川・川治・湯西川・川俣	鬼怒川・川治	単純温泉	\N	\N	\N	\N
634	716	小砂温泉	こいさごおんせん	栃木県那須郡馬頭町大字小砂			馬頭・茂木・益子・真岡	馬頭・南那須	含鉄泉	\N	\N	50470	\N
635	717	広瀬温泉	ひろせおんせん	栃木県那須郡馬頭町			馬頭・茂木・益子・真岡	馬頭・南那須	含鉄泉	\N	\N	50470	\N
636	718	小口温泉	こぐちおんせん	栃木県那須郡馬頭町小口			馬頭・茂木・益子・真岡	馬頭・南那須	含鉄泉	\N	\N	\N	\N
637	719	喜連川温泉	きつれがわおんせん	栃木県さくら市喜連川			宇都宮・さくら	さくら	塩化物泉	\N	\N	50080	\N
638	720	大金温泉	おおがねおんせん	栃木県那須郡南那須町岩子			馬頭・茂木・益子・真岡	馬頭・南那須	放射能泉	\N	\N	\N	\N
639	721	益子温泉	ましこおんせん	栃木県芳賀郡益子町小宅			馬頭・茂木・益子・真岡	益子・茂木	単純温泉	\N	\N	50562	\N
640	722	乃木温泉	のぎおんせん	栃木県那須郡西那須野町下永田			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	\N	\N
641	723	大田原温泉	おおたわらおんせん	栃木県大田原市中田原			塩原・矢板・大田原・西那須野	矢板・大田原	硫黄泉	\N	\N	50083	\N
642	724	那須温泉	なすおんせん	栃木県那須郡那須町那須高原			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
643	2207	藤和那須ハイランド温泉	とうわなすはいらんどおんせん	栃木県那須郡那須町高久乙2271番8			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
644	2208	那須高湯温泉混合泉	なすたかゆおんせんこんごうせん	栃木県那須郡那須町大字湯本字那須岳大田原営林署事業区133ホ3林小通			那須・板室	那須・板室	単純温泉	\N	\N	50081	\N
645	2239	那須さくら温泉	なすさくらおんせん	栃木県那須郡那須町大字高久字上の原5834-8			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
646	2262	報恩温泉	ほうおんおんせん	栃木県那須郡那須町大字高久乙字上ノ原1886番18			那須・板室	那須・板室	単純温泉	\N	\N	\N	\N
647	2371	新東京建物第1号源泉	しんとうきょうたてものだいいちごうげんせん	栃木県那須郡那須町大字高久乙字上の原1873-146			那須・板室	那須・板室	硫黄泉	\N	\N	\N	\N
648	2372	真岡井頭温泉	もおかいがしらおんせん	栃木県真岡市下篭谷21			馬頭・茂木・益子・真岡	益子・茂木	ナトリウム塩化物泉	\N	\N	\N	\N
649	2373	宇都宮温泉	うつのみやおんせん	栃木県宇都宮市新里町丙			宇都宮・さくら	宇都宮	炭酸水素塩泉	\N	\N	\N	\N
650	2374	那須りんどう温泉	なすりんどうおんせん	栃木県那須郡那須町大字漆塚344-25			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
651	2422	相の湯温泉	あいのゆおんせん	栃木県那須郡那須町大字湯本字大丸			那須・板室	那須・板室	炭酸水素塩泉	\N	\N	\N	\N
652	2423	みかえり温泉	みかえりおんせん	栃木県那須郡塩原町関谷西山1425-211			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	\N	\N
653	2424	日光和の代温泉	にっこうわのしろおんせん	栃木県日光市清滝和の代町1726-4			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	硫黄泉	\N	\N	\N	\N
654	2500	恵の湯	めぐみのゆ	栃木県那須郡那須町大字湯本ツムジヶ平603-53			那須・板室	那須・板室	ナトリウム塩化物泉	\N	\N	50081	\N
655	2501	栗山温泉元湯四季の湯	くりやまおんせんもとゆしきのゆ	栃木県塩谷郡栗山村大字黒部向原21			鬼怒川・川治・湯西川・川俣	湯西川・川俣	硫酸塩泉	\N	\N	\N	\N
656	2550	中会津屋温泉（塩原温泉）	なかあいづやおんせん（しおばらおんせん）	栃木県那須郡塩原町下塩原925-5			塩原・矢板・大田原・西那須野	塩原	弱アルカリ性低張性泉	\N	\N	50082	\N
657	2664	上栗山温泉	かみくりやまおんせん	栃木県塩谷郡栗山村上栗山			鬼怒川・川治・湯西川・川俣	湯西川・川俣	ナトリウム塩化物泉	\N	\N	\N	\N
658	2665	塩原温泉　華の湯	しおはらおんせん　はなのゆ	栃木県那須郡塩原町上塩原			塩原・矢板・大田原・西那須野	塩原	炭酸水素塩泉	\N	\N	50082	\N
659	2666	大鷹の湯	おおたかのゆ	栃木県那須郡西那須野町井口５４８－３５０			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	\N	\N
660	2671	馬頭温泉	ばとうおんせん	栃木県那須郡馬頭町大字小口１５７２			馬頭・茂木・益子・真岡	馬頭・南那須	単純温泉	\N	\N	50470	\N
661	2696	中禅寺温泉	ちゅうぜんじおんせん	栃木県日光市中宮祠２４８４			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	弱アルカリ性低張性泉	\N	\N	50084	\N
662	2699	日光霧降温泉	にっこうきりふりおんせん	栃木県日光市所野１５３５			日光・霧降高原・奥日光・中禅寺湖・今市	日光・霧降高原	ナトリウム塩化物泉	\N	\N	50493	\N
663	2719	小山温泉	おやまおんせん	栃木県小山市喜沢			佐野・小山・足利・鹿沼	小山	その他	\N	\N	\N	\N
664	2741	井王野温泉	いおうのおんせん	那須郡那須町大字伊王野２７１０			那須・板室	那須・板室	アルカリ単純泉	\N	\N	50081	\N
665	2747	那須野が原温泉	なすのがはらおんせん	栃木県那須郡塩原町接骨木４９３－３			塩原・矢板・大田原・西那須野	塩原	ナトリウム塩化物泉	\N	\N	50520	\N
666	2774	翠黛卿温泉	すいたいきょうおんせん	栃木県那須郡那須町湯本611-1			那須・板室	那須・板室	塩化物泉	\N	\N	\N	\N
667	2813	鹿沼温泉	かぬまおんせん	栃木県鹿沼市栃窪1255			佐野・小山・足利・鹿沼	鹿沼・足尾	硫酸塩泉	\N	\N	50647	\N
668	2819	那須塩原温泉	なすしおばらおんせん	栃木県那須塩原市下田野字街道東428-40			塩原・矢板・大田原・西那須野	塩原	単純温泉	\N	\N	50081	\N
669	2833	天原の湯	てんげんのゆ	栃木県那須町高久甲６４３７			那須・板室	那須・板室	弱アルカリ性低張性泉	\N	\N	50081	\N
670	2880	下田野温泉	しもたのおんせん	栃木県那須塩原市下田野５３１－１３			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	50520	\N
671	2910	那須プレリー温泉	なすぷれりーおんせん	栃木県那須郡那須町高久丙２５６４－３			那須・板室	那須・板室	アルカリ単純泉	\N	\N	50745	\N
672	2918	森友温泉	もりともおんせん	栃木県今市市森友１７２－１			日光・霧降高原・奥日光・中禅寺湖・今市	今市	炭酸水素塩泉	\N	\N	50748	\N
673	2951	エピナール那須温泉	えぴなーるなすおんせん	栃木県那須郡那須町高久丙１			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
674	2953	与一の湯	よいちのゆ	栃木県那須塩原市西原町189-1			塩原・矢板・大田原・西那須野	塩原	中性低張性高温泉	\N	\N	50782	\N
675	2962	那須グリーン温泉	なすぐりーんおんせん	栃木県那須郡那須町大字寄居字大田2525			那須・板室	那須・板室	アルカリ単純泉	\N	\N	50081	\N
676	2964	柳の湯	やなぎのゆ	栃木県那須郡那須町湯本２２６－１			那須・板室	那須・板室	塩化物泉	\N	\N	50081	\N
677	3021	栗山温泉	くりやまおんせん	栃木県日光市野門１９９			鬼怒川・川治・湯西川・川俣	湯西川・川俣	炭酸水素塩泉	\N	\N	50840	\N
678	3084	サンヒルズ温泉	さんひるずおんせん	栃木県宇都宮市上横倉町1000			宇都宮・さくら	宇都宮	ナトリウム塩化物泉	\N	\N	50890	\N
679	3121	秘極の湯　葵	ひごくのゆ　あおい	栃木県那須塩原市塩原778-1			塩原・矢板・大田原・西那須野	塩原	炭酸水素塩泉	\N	\N	50082	\N
680	3122	桝田屋源泉	ますだやげんせん	栃木県那須塩原市塩原729			塩原・矢板・大田原・西那須野	塩原	硫酸塩泉	\N	\N	50082	\N
681	3159	塩原秘極の湯　紅	しおばらひごくのゆ　くれない	栃木県那須塩原市塩原720			塩原・矢板・大田原・西那須野	塩原	塩化物泉	\N	\N	50082	\N
682	3183	鬼怒川秘極の湯　風	きぬがわひごくのゆ　かぜ	栃木県日光市今市本町１			日光・霧降高原・奥日光・中禅寺湖・今市	今市	炭酸水素塩泉	\N	\N	50086	\N
683	3184	奥日光秘極の湯温泉	おくにっこうひごくのゆおんせん	栃木県日光市中宮祠2485			日光・霧降高原・奥日光・中禅寺湖・今市	奥日光・中禅寺湖	弱アルカリ性低張性泉	\N	\N	50084	\N
684	3202	川俣秘極の湯　隠	かわまたひごくのゆ　ふくよ	栃木県日光市川俣584			鬼怒川・川治・湯西川・川俣	湯西川・川俣	ナトリウム塩化物泉	\N	\N	50561	\N
685	3209	那須高湯温泉	なすたかゆおんせん	栃木県那須郡那須町高久乙802			那須・板室	那須・板室	炭酸水素塩泉	\N	\N	50081	\N
686	597	丸沼温泉	まるぬまおんせん	群馬県利根郡片品村東小川			沼田・老神・尾瀬	尾瀬・片品	硫酸塩泉	\N	\N	50893	\N
687	598	白根温泉	しらねおんせん	群馬県利根郡片品村東小川			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
688	599	尾瀬戸倉温泉	おぜとくらおんせん	群馬県利根郡片品村戸倉			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
689	600	土出温泉	つちいでおんせん	群馬県利根郡片品村土出			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
690	601	片品温泉	かたしなおんせん	群馬県利根郡片品村越本			沼田・老神・尾瀬	尾瀬・片品	炭酸水素塩泉	\N	\N	50893	\N
691	602	鎌田温泉	かまたおんせん	群馬県利根郡片品村鎌田			沼田・老神・尾瀬	尾瀬・片品	単純温泉	\N	\N	50893	\N
692	603	湯の小屋温泉	ゆのこやおんせん	群馬県利根郡水上町藤原			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50096	\N
693	604	宝川温泉	たからがわおんせん	群馬県利根郡水上町藤原			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50097	\N
694	605	湯檜曽温泉	ゆびそおんせん	群馬県利根郡水上町湯檜曽			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50098	\N
695	606	うの瀬温泉	うのせおんせん	群馬県利根郡水上町大穴			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50099	\N
696	607	谷川温泉	たにがわおんせん	群馬県利根郡水上町谷川			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	50100	\N
697	608	水上温泉	みなかみおんせん	群馬県利根郡水上町湯原			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	50101	\N
698	609	奈女沢温泉	なめさわおんせん	群馬県利根郡月夜野町奈女沢			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
699	610	上牧温泉	かみもくおんせん	群馬県利根郡月夜野町上牧			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	放射能泉	\N	\N	50102	\N
700	611	武尊温泉	ほたかおんせん	群馬県利根郡川場村川場湯原			沼田・老神・尾瀬	玉原・沼田・老神	硫酸塩泉	\N	\N	50893	\N
701	612	川場温泉	かわばおんせん	群馬県利根郡川場村川場湯原			沼田・老神・尾瀬	玉原・沼田・老神	含鉄泉	\N	\N	50894	\N
702	613	桜川温泉	さくらがわおんせん	群馬県利根郡川場村川場			沼田・老神・尾瀬	玉原・沼田・老神	単純温泉	\N	\N	\N	\N
703	614	塩河原温泉	しおがわらおんせん	群馬県利根郡川場村門前			沼田・老神・尾瀬	玉原・沼田・老神	単純温泉	\N	\N	\N	\N
704	615	老神温泉	おいがみおんせん	群馬県利根郡利根村老神			沼田・老神・尾瀬	玉原・沼田・老神	単純温泉	\N	\N	50108	\N
705	616	川古温泉	かわふるおんせん	群馬県利根郡新治村相俣			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	単純温泉	\N	\N	\N	\N
706	617	法師温泉	ほうしおんせん	群馬県利根郡新治村永井６５０			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	50519	\N
707	618	猿ケ京温泉	さるがきょうおんせん	群馬県利根郡みなかみ町猿ヶ京温泉			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	弱アルカリ性低張性泉	\N	\N	50103	\N
708	619	赤岩温泉	あかいわおんせん	群馬県利根郡新治村布施			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
709	620	湯宿温泉	ゆじゅくおんせん	群馬県利根郡新治村湯宿			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
710	621	奥平温泉	おくだいらおんせん	群馬県利根郡新治村入須川奥平			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	硫酸塩泉	\N	\N	\N	\N
711	622	四万温泉	しまおんせん	群馬県吾妻郡中之条町四万			四万・吾妻・川原湯	四万・吾妻・川原湯	単純温泉	\N	\N	50089	\N
712	623	大塚温泉	おおつかおんせん	群馬県吾妻郡中之条町大塚			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	\N	\N
713	624	新中之条温泉	しんなかのじょうおんせん	群馬県吾妻郡中之条町大字蟻川字塩平			四万・吾妻・川原湯	四万・吾妻・川原湯	単純温泉	\N	\N	\N	\N
714	625	沢渡温泉	さわたりおんせん	群馬県吾妻郡中之条町上沢渡			四万・吾妻・川原湯	四万・吾妻・川原湯	単純温泉	\N	\N	\N	\N
715	626	尻焼温泉	しりやきおんせん	群馬県吾妻郡六合村入山			草津・尻焼・花敷	草津・尻焼・花敷	硫酸塩泉	\N	\N	50091	\N
716	627	花敷温泉	はなしきおんせん	群馬県吾妻郡六合村入山			草津・尻焼・花敷	草津・尻焼・花敷	塩化物泉	\N	\N	50091	\N
717	628	万座温泉	まんざおんせん	群馬県吾妻郡嬬恋村干俣			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	50093	\N
718	629	草津温泉	くさつおんせん	群馬県吾妻郡草津町草津			草津・尻焼・花敷	草津・尻焼・花敷	硫黄泉	\N	\N	50092	\N
719	630	応徳温泉	おうとくおんせん	群馬県吾妻郡六合村小雨			草津・尻焼・花敷	草津・尻焼・花敷	含鉄泉	\N	\N	50522	\N
720	631	湯の平温泉	ゆのたいらおんせん	群馬県吾妻郡六合村入山			草津・尻焼・花敷	草津・尻焼・花敷	硫黄泉	\N	\N	\N	\N
721	632	川中温泉	かわなかおんせん	群馬県吾妻郡吾妻町松谷			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	\N	\N
722	633	松の湯温泉	まつのゆおんせん	群馬県吾妻郡吾妻町松谷			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	\N	\N
723	634	川原湯温泉	かわらゆおんせん	群馬県吾妻郡長野原町川原湯			四万・吾妻・川原湯	四万・吾妻・川原湯	炭酸水素塩泉	\N	\N	50094	\N
724	635	温川温泉	ぬるがわおんせん	群馬県吾妻郡吾妻町須賀尾			四万・吾妻・川原湯	四万・吾妻・川原湯	硫黄泉	\N	\N	\N	\N
725	636	薬師温泉	やくしおんせん	群馬県吾妻郡吾妻町本宿			四万・吾妻・川原湯	四万・吾妻・川原湯	硫酸塩泉	\N	\N	50090	\N
726	637	鳩の湯温泉	はとのゆおんせん	群馬県吾妻郡吾妻町本宿			四万・吾妻・川原湯	四万・吾妻・川原湯	塩化物泉	\N	\N	\N	\N
727	638	吾妻峡温泉	あがつまきょうおんせん	群馬県吾妻郡嬬恋村今井			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	50909	\N
728	639	嬬恋温泉	つまごいおんせん	群馬県吾妻郡嬬恋村大前			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	\N	\N
729	640	鹿沢温泉	かざわおんせん	群馬県吾妻郡嬬恋村田代			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	炭酸水素塩泉	\N	\N	\N	\N
730	641	照月湖温泉	しょうげつこおんせん	群馬県吾妻郡長野原町北軽井沢			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	単純温泉	\N	\N	\N	\N
731	642	霧積温泉	きりづみおんせん	群馬県碓氷郡松井田町坂本			藤岡・碓氷・磯部・妙義	碓氷・磯部	単純温泉	\N	\N	\N	\N
732	643	亀沢倉渕温泉	かめさわくらぶちおんせん	群馬県群馬郡倉渕村			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	炭酸水素塩泉	\N	\N	\N	\N
733	644	榛名湖温泉	はるなこおんせん	群馬県群馬郡榛名町榛名山			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	塩化物泉	\N	\N	\N	\N
734	645	伊香保温泉	いかほおんせん	群馬県北群馬郡伊香保町伊香保			渋川・伊香保	渋川・伊香保	硫酸塩泉	\N	\N	50111	\N
735	646	赤城温泉	あかぎおんせん	群馬県前橋市苗ヶ島町2031			赤城・桐生・渡良瀬	赤城	硫酸塩泉	\N	\N	50535	\N
736	647	忠治温泉	ちゅうじおんせん	群馬県勢多郡宮城村苗ヶ島			赤城・桐生・渡良瀬	赤城	炭酸水素塩泉	\N	\N	\N	\N
737	648	滝沢温泉	たきざわおんせん	群馬県勢多郡粕川村室沢			前橋・高崎・伊勢崎・太田･榛名	前橋	炭酸水素塩泉	\N	\N	\N	\N
738	649	梨木温泉	なしぎおんせん	群馬県勢多郡黒保根村宿廻			赤城・桐生・渡良瀬	桐生・渡良瀬・梨木	炭酸水素塩泉	\N	\N	50109	\N
739	650	やぶ塚温泉	やぶづかおんせん	群馬県新田郡藪塚本町藪塚			前橋・高崎・伊勢崎・太田･榛名	太田	含鉄泉	\N	\N	50110	\N
740	651	五色温泉	ごしきおんせん	群馬県伊勢崎市日乃出町			前橋・高崎・伊勢崎・太田･榛名	伊勢崎	塩化物泉	\N	\N	\N	\N
741	652	坂口温泉	さかぐちおんせん	群馬県多野郡吉井町坂口			藤岡・碓氷・磯部・妙義	藤岡・富岡	炭酸水素塩泉	\N	\N	\N	\N
742	653	湯端温泉	ゆばたおんせん	群馬県高崎市吉井町多比良３３０９－１			藤岡・碓氷・磯部・妙義	藤岡・富岡	含鉄泉	\N	\N	50922	\N
743	654	八塩温泉	やしおおんせん	群馬県多野郡鬼石町大字浄法寺字八塩			藤岡・碓氷・磯部・妙義	藤岡・富岡	塩化物泉	\N	\N	\N	\N
744	655	三波石温泉	さんばせきおんせん	群馬県多野郡鬼石町譲原今里			藤岡・碓氷・磯部・妙義	藤岡・富岡	弱アルカリ性低張性泉	\N	\N	\N	\N
745	656	磯部温泉	いそべおんせん	群馬県安中市磯部			藤岡・碓氷・磯部・妙義	碓氷・磯部	ナトリウム塩化物泉	\N	\N	50113	\N
746	659	塩の沢温泉	しおのさわおんせん	群馬県多野郡上野村塩之沢			藤岡・碓氷・磯部・妙義	多野	塩化物泉	\N	\N	50862	\N
747	660	野栗沢温泉	のくりざわおんせん	群馬県多野郡上野村大字野栗沢			藤岡・碓氷・磯部・妙義	多野	二酸化炭素泉	\N	\N	\N	\N
748	661	浜平温泉	はまだいらおんせん	群馬県多野郡上野村楢原			藤岡・碓氷・磯部・妙義	多野	塩化物泉	\N	\N	\N	\N
749	662	高崎観音山鉱泉	たかさきかんのんやまこうせん	群馬県高崎市石原町			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	塩化物泉	\N	\N	\N	\N
750	663	高山温泉	たかやまおんせん	群馬県吾妻郡高山村中山			四万・吾妻・川原湯	四万・吾妻・川原湯	塩化物泉	\N	\N	\N	\N
751	664	浅間清泉温泉	あさませいせんおんせん	群馬県吾妻郡長野原町北軽井沢			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	炭酸水素塩泉	\N	\N	\N	\N
752	665	浅間高原温泉	あさまこうげんおんせん	群馬県吾妻郡長野原町北軽井沢			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50095	\N
753	666	新鹿沢温泉	しんかざわおんせん	群馬県吾妻郡嬬恋村田代			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	塩化物泉	\N	\N	50546	\N
754	667	休暇村鹿沢高原雲井の湯	きゅうかむらかざわこうげんくもいのゆ	群馬県吾妻郡嬬恋村鹿沢温泉			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50546	\N
755	2183	藤岡温泉	ふじおかおんせん	群馬県藤岡市上日野細谷戸			藤岡・碓氷・磯部・妙義	藤岡・富岡	炭酸水素塩泉	\N	\N	50112	\N
756	2184	向屋温泉	こうやおんせん	群馬県多野郡上野村勝山			藤岡・碓氷・磯部・妙義	多野	炭酸水素塩泉	\N	\N	50862	\N
757	2193	浅間高原温泉	あさまこうげんおんせん	群馬県吾妻郡長野原町嬬恋村			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	炭酸水素塩泉	\N	\N	\N	\N
758	2195	月夜野温泉	つきよのおんせん	群馬県利根郡月夜野町後閑			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	アルカリ単純泉	\N	\N	\N	\N
759	2196	真沢温泉	さなざわおんせん	群馬県利根郡月夜野町月夜野			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	ナトリウム塩化物泉	\N	\N	\N	\N
760	2502	岩櫃城温泉	いわびつじょうおんせん	群馬県吾妻郡吾妻町			四万・吾妻・川原湯	四万・吾妻・川原湯	炭酸水素塩泉	\N	\N	\N	\N
761	2503	六合赤岩温泉	くにあかいわおんせん	群馬県吾妻郡六合村大字赤岩			草津・尻焼・花敷	草津・尻焼・花敷	アルカリ単純泉	\N	\N	\N	\N
762	2504	バラギ高原温泉	ばらぎこうげんおんせん	群馬県吾妻郡嬬恋村千俣			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	弱アルカリ性低張性泉	\N	\N	50483	\N
763	2505	つつじの湯	つつじのゆ	群馬県吾妻郡嬬恋村			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	鉱泉	\N	\N	\N	\N
764	2506	温泉センター諏訪の湯	おんせんせんたーすわのゆ	群馬県利根郡水上町高日向			水上・月夜野・猿ヶ京・法師	水上・月夜野・猿ヶ京・法師	その他	\N	\N	\N	\N
765	2507	花咲温泉越沢の湯	はなさくおんせんこしざわのゆ	群馬県利根郡片品村花咲			沼田・老神・尾瀬	尾瀬・片品	アルカリ単純泉	\N	\N	\N	\N
766	2508	摺渕温泉	するぶちおんせん	群馬県利根郡利根村			沼田・老神・尾瀬	尾瀬・片品	アルカリ単純泉	\N	\N	\N	\N
767	2509	寄居山温泉	よりいやまおんせん	群馬県利根郡片品村鎌田			沼田・老神・尾瀬	尾瀬・片品	炭酸水素塩泉	\N	\N	\N	\N
768	2510	白沢高原温泉	しらさわこうげんおんせん	群馬県利根郡白沢村			沼田・老神・尾瀬	玉原・沼田・老神	その他	\N	\N	\N	\N
769	2511	富士見温泉見晴らしの湯	ふじみおんせんみはらしのゆ	群馬県勢多郡富士見村大字石井			赤城・桐生・渡良瀬	赤城	硫酸塩泉	\N	\N	\N	\N
770	2512	猿川温泉	さるかわおんせん	群馬県勢多郡黒保根村			赤城・桐生・渡良瀬	桐生・渡良瀬・梨木	その他	\N	\N	\N	\N
771	2513	しんとう温泉	しんとうおんせん	群馬県北群馬郡榛東村大字新井			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	\N	\N
772	2514	船尾の湯	ふなおのゆ	群馬県北群馬郡吉岡町大字漆原			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	\N	\N
773	2515	渋川温泉きらめきの湯	しぶかわおんせんきらめきのゆ	群馬県渋川市半田			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	\N	\N
774	2516	小野上温泉	おのがみおんせん	群馬県北群馬郡小野上村村上			渋川・伊香保	渋川・伊香保	アルカリ単純泉	\N	\N	50111	\N
775	2517	白井温泉	しろいおんせん	群馬県北群馬郡子持村吹屋			渋川・伊香保	渋川・伊香保	ナトリウム塩化物泉	\N	\N	\N	\N
776	2518	くらぶち相間川温泉	くらぶちあいまがわおんせん	群馬県高崎市倉渕町水沼27			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	その他	\N	\N	50943	\N
777	2519	ハルナ温泉	はるなおんせん	群馬県群馬郡榛名町榛名山八本松			前橋・高崎・伊勢崎・太田･榛名	高崎･榛名	ナトリウム塩化物泉	\N	\N	\N	\N
778	2521	峠の湯	とうげのゆ	群馬県碓氷郡松井田町坂本			藤岡・碓氷・磯部・妙義	碓氷・磯部	二酸化炭素泉	\N	\N	\N	\N
779	2600	鬼押温泉	おにおしおんせん	群馬県吾妻郡嬬恋村鎌原			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50711	\N
780	2656	奥軽井沢温泉	おくかるいざわおんせん	群馬県吾妻郡嬬恋村大字大前字細原２２７１－１１８			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	ナトリウム塩化物泉	\N	\N	50466	\N
781	2687	奥嬬恋温泉	おくつまごいおんせん	群馬県吾妻郡嬬恋村大字干俣３８６			万座・嬬恋・北軽井沢	万座・嬬恋・北軽井沢	その他	\N	\N	50483	\N
782	2733	つま恋温泉	つまごいおんせん	群馬県吾妻郡嬬恋村芦生田５３０－５			四万・吾妻・川原湯	四万・吾妻・川原湯	ナトリウム塩化物泉	\N	\N	50504	\N
783	2750	応徳温泉	おうどくおんせん	群馬県吾妻郡六合村大字小雨乙２１番地１			四万・吾妻・川原湯	四万・吾妻・川原湯	その他	\N	\N	50522	\N
784	2783	バラギ温泉・湖畔の湯	ばらぎおんせん・こはんのゆ	群馬県吾妻郡嬬恋村大字干俣字熊四郎山2401			四万・吾妻・川原湯	四万・吾妻・川原湯	ナトリウム塩化物泉	\N	\N	50553	\N
785	2814	奥武尊温泉	おくほたかおんせん	群馬県利根郡片品村大字花咲字武尊山２７９７番地６			沼田・老神・尾瀬	尾瀬・片品	その他	\N	\N	50893	\N
786	725	大子温泉	だいごおんせん	茨城県久慈郡大子町山田			北茨城・奥久慈・日立	久慈・袋田	硫酸塩泉	\N	\N	50598	\N
787	726	浅川温泉	あさかわおんせん	茨城県久慈郡大子町浅川			北茨城・奥久慈・日立	久慈・袋田	硫黄泉	\N	\N	\N	\N
788	727	袋田温泉	ふくろだおんせん	茨城県久慈郡大子町大子			北茨城・奥久慈・日立	久慈・袋田	炭酸水素塩泉	\N	\N	50598	\N
789	728	月居温泉	つきおりおんせん	茨城県久慈郡大子町小生瀬２８５５－１０			北茨城・奥久慈・日立	久慈・袋田	単純温泉	\N	\N	50598	\N
790	729	湯沢温泉	ゆざわおんせん	茨城県久慈郡大子町西金			北茨城・奥久慈・日立	久慈・袋田	二酸化炭素泉	\N	\N	\N	\N
791	730	関山温泉	せきやまおんせん	茨城県北茨城市関本町関山			北茨城・奥久慈・日立	北茨城	硫黄泉	\N	\N	\N	\N
792	731	平潟港温泉	ひらかたこうおんせん	茨城県北茨城市平潟町			北茨城・奥久慈・日立	北茨城	塩化物泉	\N	\N	50115	\N
793	732	友の湯温泉	とものゆおんせん	茨城県北茨城市平潟町本町			北茨城・奥久慈・日立	北茨城	硫黄泉	\N	\N	\N	\N
794	733	五浦温泉	いつうらおんせん	茨城県北茨城市大津町			北茨城・奥久慈・日立	北茨城	塩化物泉	\N	\N	50116	\N
795	734	湯の網温泉	ゆのあみおんせん	茨城県北茨城市関南町			北茨城・奥久慈・日立	北茨城	含鉄泉	\N	\N	50117	\N
796	735	常磐うぐいす谷温泉	じょうばんうぐいすだにおんせん	茨城県北茨城市磯原町鶯谷			北茨城・奥久慈・日立	北茨城	塩化物泉	\N	\N	50976	\N
797	736	磯原温泉	いそはらおんせん	茨城県北茨城市磯原町磯原			北茨城・奥久慈・日立	北茨城	硫黄泉	\N	\N	50597	\N
798	737	塩ノ沢温泉	しおのさわおんせん	茨城県久慈郡大子町山田			北茨城・奥久慈・日立	久慈・袋田	二酸化炭素泉	\N	\N	\N	\N
799	738	横川温泉	よこかわおんせん	茨城県常陸太田市折橋町　１４０９			北茨城・奥久慈・日立	久慈・袋田	硫黄泉	\N	\N	50780	\N
800	739	大菅鉱泉	おおすげおんせん	茨城県久慈郡里美村大菅			北茨城・奥久慈・日立	久慈・袋田	硫黄泉	\N	\N	\N	\N
801	740	三京温泉	さんきょうおんせん	茨城県多賀郡十王町友部			北茨城・奥久慈・日立	北茨城	炭酸水素塩泉	\N	\N	\N	\N
802	741	鵜の岬温泉	うのみさきおんせん	茨城県多賀郡十王町伊師浜			北茨城・奥久慈・日立	北茨城	単純温泉	\N	\N	\N	\N
803	742	鵜の島温泉	うのしまおんせん	茨城県日立市留町			北茨城・奥久慈・日立	日立	二酸化炭素泉	\N	\N	\N	\N
804	743	多賀温泉	たがおんせん	茨城県日立市大久保町			北茨城・奥久慈・日立	日立	硫黄泉	\N	\N	\N	\N
805	744	川中子温泉	かわなかごおんせん	茨城県常陸太田市小目町			北茨城・奥久慈・日立	北茨城	炭酸水素塩泉	\N	\N	\N	\N
806	745	相川温泉	あいかわおんせん	茨城県東茨城郡御前山村下伊勢畑相川			北茨城・奥久慈・日立	久慈・袋田	放射能泉	\N	\N	\N	\N
807	746	成沢鉱泉	なるさわこうせん	茨城県水戸市成沢			水戸・笠間	水戸	硫黄泉	\N	\N	\N	\N
808	747	長者ヶ谷津温泉	ちょうじゃがやつおんせん	茨城県ひたちなか市大平			大洗・ひたちなか	大洗・ひたちなか	硫黄泉	\N	\N	\N	\N
809	748	中根温泉	なかねおんせん	茨城県ひたちなか市中根			大洗・ひたちなか	大洗・ひたちなか	塩化物泉	\N	\N	\N	\N
810	749	伝正寺温泉	でんしょうじおんせん	茨城県真壁郡真壁町桜井			常総・結城・桜川	下館・真壁・桜川	放射能泉	\N	\N	\N	\N
811	750	土浦温泉	つちうらおんせん	茨城県土浦市富士崎			霞ヶ浦・土浦・鹿島・潮来	霞ヶ浦・土浦	含鉄泉	\N	\N	\N	\N
812	751	弘法大師温泉	こうぼうだいしおんせん	茨城県日立市留町			北茨城・奥久慈・日立	日立	含鉄泉	\N	\N	\N	\N
813	2209	筑波温泉	つくばおんせん	茨城県つくば市筑波			つくば・牛久	つくば	炭酸水素塩泉	\N	\N	50114	\N
814	2522	石尊鉱泉	せきそんこうせん	茨城県北茨城県大津町			北茨城・奥久慈・日立	北茨城	単純温泉	\N	\N	\N	\N
815	2523	中郷温泉	なかごうおんせん	茨城県北茨城市中郷町日棚			北茨城・奥久慈・日立	北茨城	鉱泉	\N	\N	\N	\N
816	2524	大洗温泉	おおあらいおんせん	茨城県東茨城郡大洗町大字大貫字瓜畑			大洗・ひたちなか	大洗・ひたちなか	硫酸塩泉	\N	\N	50596	\N
817	2525	筑波山温泉	つくばさんおんせん	茨城県つくば市大字筑波字宮脇			つくば・牛久	つくば	ナトリウム塩化物泉	\N	\N	50114	\N
818	2526	やさと温泉	やさとおんせん	茨城県八郷町小幡			常総・結城・桜川	下館・真壁・桜川	弱アルカリ性低張性泉	\N	\N	\N	\N
819	2527	鉾田温泉	ほこたおんせん	茨城県鉾田市当間			大洗・ひたちなか	鉾田市	ナトリウム塩化物泉	\N	\N	\N	\N
820	2528	たいよう温泉	たいようおんせん	茨城県鉾田市上幡木			大洗・ひたちなか	鉾田市	炭酸水素塩泉	\N	\N	\N	\N
821	2569	鹿島セントラルホテル天然温泉（美人の湯）ゆの華	かしませんとらるほてるてんねんおんせん（びじんのゆ）ゆのはな	茨城県神栖市大野原4-7-1			大洗・ひたちなか	鹿島	その他	\N	\N	\N	\N
822	2601	北浦宝来温泉つるるんの湯	きたうらほうらいおんせんつるるんのゆ	茨城県行方郡北浦町山田3969			霞ヶ浦・土浦・鹿島・潮来	潮来	アルカリ単純泉	\N	\N	50455	\N
823	2662	五浦元湯温泉	いつうらもとゆおんせん	茨城県北茨城市平潟町字北作１３９４			北茨城・奥久慈・日立	北茨城	アルカリ単純泉	\N	\N	50116	\N
824	2663	阿字ヶ浦温泉	あじがうらおんせん	茨城県ひたちなか市阿字ヶ浦町３２９０			大洗・ひたちなか	大洗・ひたちなか	ナトリウム塩化物泉	\N	\N	\N	\N
825	2757	二眺の湯	にちょうのゆ	茨城県北茨城市磯原町磯原2553番地			北茨城・奥久慈・日立	北茨城	炭酸水素塩泉	\N	\N	50530	\N
826	2767	いこいの村涸沼温泉	いこいのむらひぬまおんせん	茨城県鉾田市箕輪3604			大洗・ひたちなか	鉾田市	ナトリウム塩化物泉	\N	\N	50539	\N
827	2900	いそざき温泉	いそざきおんせん	茨城県ひたちなか市磯崎町字磯崎東ノ三4598-1			大洗・ひたちなか	大洗・ひたちなか	ナトリウム塩化物泉	\N	\N	50734	\N
828	2988	きぬの湯温泉	きぬのゆおんせん	茨城県常総市内守谷町きぬの里1-5-6			常総・結城・桜川	結城・古河	炭酸水素塩泉	\N	\N	50806	\N
829	3080	湯の澤鉱泉	ゆのさわこうせん	茨城県常陸大宮市山方4849-1			北茨城・奥久慈・日立	久慈・袋田	含鉄泉	\N	\N	50887	\N
830	3088	つくば温泉　兆寿泉	つくばおんせん　ちょうじゅせん	茨城県つくば市下岩崎７０８－１			つくば・牛久	つくば	ナトリウム塩化物泉	\N	\N	50114	\N
831	3244	なめかた温泉　玉造の湯	なめかたおんせん　たまつくりのゆ	茨城県行方市浜２７９６－１			霞ヶ浦・土浦・鹿島・潮来	潮来	炭酸鉄泉	\N	\N	50967	\N
832	3248	御老公天然温泉	ごろうこうてんねんおんせん	茨城県猿島郡境町１３２７－１			常総・結城・桜川	結城・古河	単純炭酸泉	\N	\N	50971	\N
833	3269	涸沼温泉　美人の湯	ひぬまおんせん　びじんのゆ	茨城県鉾田市箕輪3604			大洗・ひたちなか	鉾田市	ナトリウム塩化物泉	\N	\N	50984	\N
834	752	百穴温泉	ひゃっけつおんせん	埼玉県比企郡吉見町北吉見			飯能	東松山・森林公園・小川町	単純温泉	\N	\N	\N	\N
835	753	永久保鉱泉	ながくぼおんせん	埼玉県比企郡玉川村玉川			飯能	飯能	硫黄泉	\N	\N	\N	\N
836	754	黒山鉱泉	くろやまこうせん	埼玉県入間郡越生町黒山			飯能	飯能	単純温泉	\N	\N	\N	\N
837	755	名栗温泉	なぐりおんせん	埼玉県入間郡名栗村下名栗			飯能	飯能	放射能泉	\N	\N	\N	\N
838	756	新木鉱泉	あらきこうせん	埼玉県秩父市山田1538			秩父・長瀞	秩父	アルカリ単純泉	\N	\N	50913	\N
839	757	和銅鉱泉	わどうこうせん	埼玉県秩父市黒谷822-1			秩父・長瀞	秩父	鉱泉	\N	\N	50913	\N
840	758	不動の湯温泉	ふどうのゆおんせん	埼玉県秩父市下山田			秩父・長瀞	秩父	弱アルカリ性低張性泉	\N	\N	\N	\N
841	759	美やま温泉	みやまおんせん	埼玉県秩父市山田1294			秩父・長瀞	秩父	鉱泉	\N	\N	50913	\N
842	760	山田温泉	やまだおんせん	埼玉県秩父市山田			秩父・長瀞	秩父	単純温泉	\N	\N	\N	\N
843	761	巴川温泉郷	ともえがわおんせんきょう	埼玉県秩父市久那			秩父・長瀞	秩父	単純温泉	\N	\N	\N	\N
844	762	千鹿谷鉱泉	ちがやおんせん	埼玉県秩父郡吉田町上吉田			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
845	763	両神温泉	りょうかみおんせん	埼玉県秩父郡両神村			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
846	764	日野温泉	ひのおんせん	埼玉県秩父郡荒川村日野			秩父・長瀞	秩父	炭酸水素塩泉	\N	\N	\N	\N
847	765	柴原温泉	しばはらおんせん	埼玉県秩父郡荒川村柴原			秩父・長瀞	秩父	含鉄泉	\N	\N	50595	\N
848	766	白久温泉	しろくおんせん	埼玉県秩父郡荒川村白久			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
849	767	小鹿野温泉大竜寺源泉	おがのおんせんだいりゅうじげんせん	埼玉県秩父郡小鹿野町小鹿野			秩父・長瀞	秩父	硫黄泉	\N	\N	50120	\N
850	2529	丸山鉱泉	まるやまこうせん	埼玉県秩父郡横瀬町			秩父・長瀞	秩父	硫黄泉	\N	\N	\N	\N
851	2530	秩父湯元武甲温泉	ちちぶゆもとぶこうおんせん	埼玉県秩父郡横瀬町大字横瀬			秩父・長瀞	秩父	単純温泉	\N	\N	\N	\N
852	2531	越谷天然温泉美人の湯	こしがやてんねんおんせんびじんのゆ	埼玉県越谷市大間野町			越谷・草加	越谷	鉱泉	\N	\N	\N	\N
853	2532	かすかべ湯元温泉	かすかべゆもとおんせん	埼玉県春日部市大字大増新田			越谷・草加	越谷	弱アルカリ性低張性泉	\N	\N	\N	\N
854	2868	彩の国さくらそう温泉	さいのくにさくらそうおんせん	埼玉県さいたま市中央区新都心３－２			川越・さいたま	さいたま	硫黄泉	\N	\N	50701	\N
855	2966	大滝温泉　三峰神の湯	おおたきおんせん　みつみねかみのゆ	埼玉県秩父市大滝４２７７－２			秩父・長瀞	秩父	ナトリウム塩化物泉	\N	\N	50790	\N
856	2991	神川温泉	かみかわおんせん	埼玉県児玉郡神川町小浜１３４１			本庄・熊谷	本庄	単純温泉	\N	\N	50809	\N
944	782	鶴の湯温泉	つるのゆおんせん	東京都西多摩郡奥多摩町川野			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
857	3074	秩父・四季彩乃湯温泉	ちちぶ　しきさいのゆおんせん	埼玉県秩父市上宮地町上の台5911-1			秩父・長瀞	秩父	弱アルカリ性低張性泉	\N	\N	50884	\N
858	3129	秩父　小鹿野温泉　高根の湯	ちちぶ　おがのおんせん　たかねのゆ	埼玉県秩父郡小鹿野町小鹿野1853			秩父・長瀞	秩父	その他	\N	\N	50912	\N
859	3268	四季の湯温泉	ときのゆおんせん	埼玉県熊谷市小江川228			本庄・熊谷	熊谷・深谷	ナトリウム塩化物泉	\N	\N	50983	\N
860	785	飯岡温泉	いいおかおんせん	千葉県海上郡飯岡町萩園			九十九里・銚子	九十九里	二酸化炭素泉	\N	\N	\N	\N
861	786	湊温泉	みなとおんせん	千葉県船橋市湊町			舞浜・浦安・船橋・幕張	船橋	単純温泉	\N	\N	\N	\N
862	787	白子温泉	しらこおんせん	千葉県長生郡白子町古所			九十九里・銚子	九十九里	塩化物泉	\N	\N	50121	\N
863	788	木更津温泉	きさらづおんせん	千葉県木更津市富士見			木更津・君津・富津	木更津・君津	炭酸水素塩泉	\N	\N	50622	\N
864	789	青堀温泉	あおほりおんせん	千葉県富津市大堀1571			木更津・君津・富津	富津・鋸南	炭酸水素塩泉	\N	\N	50812	\N
865	790	鹿野山温泉	かのうざんおんせん	千葉県君津市鹿野山			木更津・君津・富津	木更津・君津	塩化物泉	\N	\N	\N	\N
866	791	亀山温泉	かめやまおんせん	千葉県君津市豊田			木更津・君津・富津	木更津・君津	塩化物泉	\N	\N	\N	\N
867	792	養老温泉	ようろうおんせん	千葉県夷隅郡大多喜町葛藤			勝浦・鴨川	勝浦・御宿	塩化物泉	\N	\N	50620	\N
868	793	勝浦温泉	かつうらおんせん	千葉県勝浦市松野			勝浦・鴨川	勝浦・御宿	塩化物泉	\N	\N	50126	\N
869	794	御宿温泉	おんじゅくおんせん	千葉県夷隅郡御宿町浜仲之台			勝浦・鴨川	勝浦・御宿	塩化物泉	\N	\N	\N	\N
870	795	湯場原温泉	ゆばのはらおんせん	千葉県勝浦市貝掛			勝浦・鴨川	勝浦・御宿	炭酸水素塩泉	\N	\N	50126	\N
871	796	清澄温泉	きよすみおんせん	千葉県君津市黄和田畑湯ヶ滝			木更津・君津・富津	木更津・君津	硫黄泉	\N	\N	\N	\N
872	797	粟斗温泉	あわとおんせん	千葉県鴨川市粟斗			勝浦・鴨川	鴨川	硫黄泉	\N	\N	\N	\N
873	798	曽呂温泉	そろおんせん	千葉県鴨川市仲			勝浦・鴨川	鴨川	硫黄泉	\N	\N	\N	\N
874	799	鋸山金谷温泉	のこぎりやまかなやおんせん	千葉県富津市金谷			木更津・君津・富津	富津・鋸南	塩化物泉	\N	\N	50124	\N
875	800	岩婦温泉	いわぶおんせん	千葉県安房郡富山町高崎			館山・南房総	富浦・白浜・千倉	硫黄泉	\N	\N	\N	\N
876	801	弁天鉱泉	べんてんこうせん	千葉県安房郡富山町小浦			館山・南房総	富浦・白浜・千倉	硫黄泉	\N	\N	\N	\N
877	802	千倉温泉	ちくらおんせん	千葉県安房郡千倉町南朝夷			館山・南房総	富浦・白浜・千倉	硫黄泉	\N	\N	50128	\N
878	803	白浜温泉	しらはまおんせん	千葉県安房郡白浜町滝口			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50129	\N
879	804	不老山薬師温泉	ふろうさんやくしおんせん	千葉県館山市布良			館山・南房総	館山	炭酸水素塩泉	\N	\N	\N	\N
880	805	南館山温泉	みなみたてやまおんせん	千葉県館山市犬石			館山・南房総	館山	単純温泉	\N	\N	50541	\N
881	806	一宮海岸温泉	いちのみやかいがんおんせん	千葉県長生郡一宮町一宮			九十九里・銚子	九十九里	塩化物泉	\N	\N	\N	\N
882	807	小湊温泉	こみなとおんせん	千葉県安房郡天津小湊町内浦			勝浦・鴨川	鴨川	塩化物泉	\N	\N	50477	\N
883	808	鴨川温泉	かもがわおんせん	千葉県鴨川市前原			勝浦・鴨川	鴨川	炭酸水素塩泉	\N	\N	50127	\N
884	809	ロマンの森温泉	ろまんのもりおんせん	千葉県君津市豊英			木更津・君津・富津	木更津・君津	硫黄泉	\N	\N	\N	\N
885	2168	千倉海岸温泉	ちくらかいがんおんせん	千葉県安房郡千倉町瀬戸字矢原			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50128	\N
886	2185	サン・ランド温泉	さん・らんどおんせん	千葉県館山市小沼			館山・南房総	館山	塩化物泉	\N	\N	50541	\N
887	2186	吉祥龍神の湯	きっしょうりゅうじんのゆ	千葉県館山市大神宮			館山・南房総	館山	炭酸水素塩泉	\N	\N	50541	\N
888	2188	千倉元湯温泉	ちくらもとゆおんせん	千葉県安房郡千倉町			館山・南房総	富浦・白浜・千倉	硫酸塩泉	\N	\N	50128	\N
889	2189	千倉海底温泉	ちくらかいていおんせん	千葉県安房郡千倉町			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50128	\N
890	2190	白浜野島温泉	しらはまのじまおんせん	千葉県安房郡白浜町			館山・南房総	富浦・白浜・千倉	その他	\N	\N	50129	\N
891	2191	南房総白浜温泉	みなみぼうそうしらはまおんせん	千葉県安房郡白浜町			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50129	\N
892	2203	犬吠埼温泉	いぬぼうさきおんせん	千葉県銚子市犬吠崎9575			九十九里・銚子	銚子	塩化物泉	\N	\N	50122	\N
893	2243	安房温泉	あわおんせん	千葉県安房郡鋸南町竜島973			木更津・君津・富津	富津・鋸南	ナトリウム塩化物泉	\N	\N	50125	\N
894	2244	亀山温泉	かめやまおんせん	千葉県君津市豊田旧菅間田65			木更津・君津・富津	木更津・君津	弱アルカリ性低張性泉	\N	\N	50123	\N
895	2332	岩井湯元温泉	いわいゆもとおんせん	千葉県安房郡富山町久枝494			館山・南房総	富浦・白浜・千倉	ナトリウム塩化物泉	\N	\N	50619	\N
896	2399	長生の湯	ちょうせいのゆ	千葉県長生郡長生村一松3445			九十九里・銚子	九十九里	炭酸水素塩泉	\N	\N	50623	\N
897	2425	一宮温泉	いちのみやおんせん	千葉県長生郡一宮町一宮10226			九十九里・銚子	九十九里	鉱泉	\N	\N	\N	\N
898	2551	勝浦三日月温泉	かつうらみかづきおんせん	千葉県勝浦市墨名			勝浦・鴨川	勝浦・御宿	ナトリウム塩化物泉	\N	\N	\N	\N
899	2570	大和の湯	やまとのゆ	千葉県成田市大竹			成田	成田	その他	\N	\N	\N	\N
900	2571	千倉七浦温泉	ちくらななうらおんせん	千葉県安房郡千倉町大川1211			館山・南房総	富浦・白浜・千倉	ナトリウム塩化物泉	\N	\N	50128	\N
901	2572	たてやま平砂浦温泉	たてやまへいさうらおんせん	千葉県館山市伊戸1535			館山・南房総	館山	弱アルカリ性低張性泉	\N	\N	50541	\N
902	2602	白浜女来島温泉	しらはまめらいじまおんせん	千葉県安房郡白浜町白浜3535-5			館山・南房総	富浦・白浜・千倉	塩化物泉	\N	\N	50129	\N
903	2603	館山温泉	たてやまおんせん	千葉県館山市坂井字翁作772-51			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50541	\N
904	2646	ひかり潮の湯温泉	ひかりしおのゆおんせん	千葉県匝瑳郡光町木戸５１４３－１			九十九里・銚子	九十九里	その他	\N	\N	50621	\N
905	2679	天津小湊温泉城崎の湯	あまつこみなとおんせんきのさきのゆ	千葉県安房郡天津小湊町天津３２８７			勝浦・鴨川	鴨川	ナトリウム塩化物泉	\N	\N	50477	\N
906	2688	旭九十九里温泉	あさひくじゅうくりおんせん	千葉県旭市仁玉字塩湯２２７３－３			九十九里・銚子	九十九里	弱アルカリ性低張性泉	\N	\N	50621	\N
907	2704	福水渓流の湯	ふくすいけいりゅうのゆ	千葉県夷隅郡大多喜町小田代618			勝浦・鴨川	勝浦・御宿	ナトリウム塩化物泉	\N	\N	50497	\N
908	2753	天然温泉　人魚の湯	てんねんおんせん　にんぎょのゆ	千葉県館山市大賀85-1			館山・南房総	館山	炭酸水素塩泉	\N	\N	50525	\N
909	2765	休暇村　館山温泉	きゅうかむら　たてやまおんせん	千葉県館山市波佐間字名郷浦6番地1			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50541	\N
910	2769	しあわせ源泉	しあわせげんせん	千葉県安房郡千倉町川口68			館山・南房総	富浦・白浜・千倉	炭酸水素塩泉	\N	\N	50128	\N
911	2770	白浜南国温泉	しらはまなんごくおんせん	千葉県安房郡白浜町白浜232			館山・南房総	富浦・白浜・千倉	鉱泉	\N	\N	50129	\N
912	2771	矢原温泉	やわらおんせん	千葉県安房郡千倉町瀬戸3291			館山・南房総	富浦・白浜・千倉	炭酸水素塩泉	\N	\N	50128	\N
913	2772	白浜温泉へいすけ源泉	しらはまおんせんへいすけげんせん	千葉県安房郡白浜町乙浜			館山・南房総	富浦・白浜・千倉	含鉄泉	\N	\N	50129	\N
914	2773	白浜元湯温泉	しらはまもとゆおんせん	千葉県安房郡白浜町白浜7034			館山・南房総	富浦・白浜・千倉	含アルミニウム泉	\N	\N	50129	\N
915	2791	佐倉温泉	さくらおんせん	千葉県佐倉市表町3-26-1			佐倉・八街	佐倉	炭酸水素塩泉	\N	\N	50610	\N
916	2795	館山塩見温泉「こがねの湯」	たてやましおみおんせん「こがねのゆ」	千葉県館山市塩見233-4			館山・南房総	館山	含アルミニウム泉	\N	\N	50541	\N
917	2823	平蔵の湯	へいぞうのゆ	千葉県市原市平蔵2579-1			千葉・市原	市原	含鉄泉	\N	\N	50656	\N
918	2871	青掘温泉『琥珀の湯（Ｒ）』	あおぼりおんせん『こはくのゆ（Ｒ）』	千葉県富津市大堀１５２８番地			木更津・君津・富津	富津・鋸南	その他	\N	\N	50705	\N
919	2948	浦安温泉	うらやすおんせん	千葉県浦安市千鳥13-20			舞浜・浦安・船橋・幕張	舞浜・浦安	ナトリウム塩化物泉	\N	\N	50776	\N
920	2949	白岩温泉	しらいわおんせん	千葉県鴨川市四方木661-17			勝浦・鴨川	鴨川	硫酸塩泉	\N	\N	50777	\N
921	2956	南房総岩井温泉	みなみぼうそういわいおんせん	千葉県南房総市久枝527-16			館山・南房総	富浦・白浜・千倉	炭酸鉄泉	\N	\N	50783	\N
922	2967	洲の埼温泉	すのさきおんせん	千葉県館山市洲の埼198-1			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50791	\N
923	3117	成田温泉　美湯	なりたおんせん　びゅう	千葉県成田市小菅700			成田	成田	ナトリウム塩化物泉	\N	\N	50905	\N
924	3192	たてやま鏡ヶ浦温泉	たてやまかがみがうらおんせん	千葉県館山市八幡822　			館山・南房総	館山	炭酸水素塩泉	\N	\N	50541	\N
925	3193	山田温泉　やまゆりの湯	やまだおんせん　やまゆりのゆ	千葉県香取市西田部1309-34			九十九里・銚子	銚子	硫酸塩泉	\N	\N	50952	\N
926	3215	内浦山温泉　藏の湯	うちうらやまおんせん　くらのゆ	千葉県鴨川市内浦字中奥谷１３８６番２			勝浦・鴨川	鴨川	ナトリウム塩化物泉	\N	\N	50957	\N
927	3263	季の湯	ときのゆ	千葉県木更津市富士見3‐7‐35			木更津・君津・富津	木更津・君津	炭酸水素塩泉	\N	\N	50981	\N
928	3290	千里の湯　温泉	せんりのゆ　おんせん	千葉県館山市佐野字外大下517番18			館山・南房総	館山	その他	\N	\N	50541	\N
929	3291	南房源泉	なんぼうげんせん	千葉県館山市小沼居下352‐1			館山・南房総	館山	ナトリウム塩化物泉	\N	\N	50541	\N
930	768	数馬温泉	かずまおんせん	東京都西多摩郡檜原村数馬			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
931	769	松乃温泉	まつのおんせん	東京都西多摩郡奥多摩町川井			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
932	770	岩蔵温泉	いわくらおんせん	東京都青梅市富岡・小曽木			青梅・奥多摩	青梅	硫黄泉	\N	\N	50130	\N
933	771	網代温泉	あじろおんせん	東京都あきる野市網代			青梅・奥多摩	青梅	単純温泉	\N	\N	\N	\N
934	772	上野池之端	うえのいけのはた	東京都台東区池之端			上野・浅草・両国	上野	二酸化炭素泉	\N	\N	\N	\N
935	773	貞千代温泉	さだちよおんせん	東京都台東区浅草			上野・浅草・両国	浅草	含鉄泉	\N	\N	\N	\N
936	774	大島温泉	おおしまおんせん	東京都大島町泉津			伊豆七島・小笠原	伊豆七島・小笠原	単純温泉	\N	\N	\N	\N
937	775	新島温泉	にいじまおんせん	東京都新島村字山津山川			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
938	776	間々下温泉	まましたおんせん	東京都新島村間々下			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
939	777	湯柱温泉	ゆばしらおんせん	東京都神津島村			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
940	778	汐間温泉	しおまおんせん	東京都八丈町末吉			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	\N	\N
941	779	湯浜温泉	ゆはまおんせん	東京都八丈町樫立			伊豆七島・小笠原	伊豆七島・小笠原	硫黄泉	\N	\N	\N	\N
942	780	氷川郷麻葉の湯	ひかわごうあさはのゆ	東京都奥多摩町氷川			青梅・奥多摩	奥多摩	硫黄泉	\N	\N	\N	\N
943	781	奥多摩温泉	おくたまおんせん	東京都西多摩郡奥多摩町棚沢			青梅・奥多摩	奥多摩	単純温泉	\N	\N	\N	\N
945	783	三原山温泉	みはらやまおんせん	東京都大島町泉津字木積場			伊豆七島・小笠原	伊豆七島・小笠原	単純温泉	\N	\N	50131	\N
946	784	黒潮温泉紅椿の湯	くろしおおんせんべにつばきのゆ	東京都大島町元町			伊豆七島・小笠原	伊豆七島・小笠原	塩化物泉	\N	\N	50131	\N
947	2426	麻布十番温泉	あざぶじゅうばんおんせん	東京都港区麻布十番1-5-22			六本木・麻布・赤坂・青山	六本木・麻布・虎ノ門	その他	\N	\N	\N	\N
948	2651	大江戸温泉	おおえどおんせん	東京都江東区青海２－５７			お台場・汐留・新橋・品川	お台場・汐留・竹芝	ナトリウム塩化物泉	\N	\N	\N	\N
949	2706	蒲田黒湯温泉	かまたくろゆおんせん	東京都大田区西蒲田8-1-5			蒲田・大森・羽田周辺	蒲田・大森・羽田周辺	その他	\N	\N	50501	\N
950	2708	地鉈温泉	じなたおんせん	東京都新島村式根島			伊豆七島・小笠原	伊豆七島・小笠原	炭酸水素塩泉	\N	\N	\N	\N
951	2722	蛇骨湯	じゃこつゆ	東京都台東区浅草1-11-11			上野・浅草・両国	浅草	ナトリウム塩化物泉	\N	\N	\N	\N
952	2723	浅草観音温泉	あさくさかんのんおんせん	東京都台東区浅草2-7-26			上野・浅草・両国	浅草	鉱泉	\N	\N	\N	\N
953	810	飯山温泉	いいやまおんせん	神奈川県厚木市飯山			厚木・海老名	厚木・伊勢原	単純温泉	\N	\N	50811	\N
954	811	広沢寺温泉　(東丹沢七沢)	こうたくじおんせん	神奈川県厚木市七沢			厚木・海老名	厚木・伊勢原	アルカリ単純泉	\N	\N	\N	\N
955	812	かぶと湯温泉　(東丹沢七沢)	かぶとゆおんせん	神奈川県厚木市七沢			厚木・海老名	厚木・伊勢原	単純温泉	\N	\N	\N	\N
956	813	七沢温泉　(東丹沢七沢)	ななさわおんせん	神奈川県厚木市七沢			厚木・海老名	厚木・伊勢原	単純温泉	\N	\N	50548	\N
957	814	綱島温泉	つなしまおんせん	神奈川県横浜市港北区綱島			横浜	新横浜・青葉	単純温泉	\N	\N	\N	\N
958	815	阿部倉温泉	あべくらおんせん	神奈川県横須賀市阿部倉町			横須賀・三浦	横須賀	炭酸水素塩泉	\N	\N	\N	\N
959	816	大楠温泉	おおくすおんせん	神奈川県横須賀市秋谷			横須賀・三浦	横須賀	単純温泉	\N	\N	\N	\N
960	821	伊勢原温泉	いせはらおんせん	神奈川県伊勢原市上粕屋西富岡			厚木・海老名	厚木・伊勢原	硫黄泉	\N	\N	\N	\N
961	822	鶴巻温泉	つるまきおんせん	神奈川県秦野市鶴巻北			足柄	秦野	炭酸水素塩泉	\N	\N	\N	\N
962	823	中川温泉	なかがわおんせん	神奈川県足柄上郡山北町中川			足柄	丹沢	塩化物泉	\N	\N	50147	\N
963	824	箱根湯本温泉	はこねゆもとおんせん	神奈川県足柄下郡箱根町湯本			箱根	箱根	単純温泉	\N	\N	50134	\N
964	825	塔之沢温泉	とうのさわおんせん	神奈川県足柄下郡箱根町塔之沢			箱根	箱根	塩化物泉	\N	\N	50135	\N
965	826	仙石原温泉	せんごくはらおんせん	神奈川県足柄下郡箱根町仙石原			箱根	箱根	単純温泉	\N	\N	50136	\N
966	827	姥子温泉	うばこおんせん	神奈川県足柄下郡箱根町元箱根			箱根	箱根	硫酸塩泉	\N	\N	50137	\N
967	828	強羅温泉	ごうらおんせん	神奈川県足柄下郡箱根町強羅			箱根	箱根	含鉄泉	\N	\N	50138	\N
968	829	宮ノ下温泉	みやのしたおんせん	神奈川県足柄下郡箱根町宮ノ下			箱根	箱根	含鉄泉	\N	\N	50139	\N
969	830	小涌谷温泉	こわきだにおんせん	神奈川県足柄下郡箱根町小涌谷			箱根	箱根	塩化物泉	\N	\N	50140	\N
970	831	堂ヶ島温泉	どうがしまおんせん	神奈川県足柄下郡箱根町宮ノ下			箱根	箱根	硫黄泉	\N	\N	50141	\N
971	832	大平台温泉	おおひらだいおんせん	神奈川県足柄下郡箱根町大平台			箱根	箱根	塩化物泉	\N	\N	50142	\N
972	833	湯ノ花沢温泉	ゆのはなざわおんせん	神奈川県足柄下郡箱根町湯の花高原			箱根	箱根	塩化物泉	\N	\N	50554	\N
973	834	芦之湯温泉	あしのゆおんせん	神奈川県足柄下郡箱根町芦之湯			箱根	箱根	塩化物泉	\N	\N	50143	\N
974	835	蛸川温泉	たこがわおんせん	神奈川県足柄下郡箱根町元箱根			箱根	箱根	塩化物泉	\N	\N	50797	\N
975	836	芦ノ湖温泉	あしのこおんせん	神奈川県足柄下郡箱根町元箱根			箱根	箱根	硫黄泉	\N	\N	50144	\N
976	837	奥湯河原温泉	おくゆがわらおんせん	神奈川県足柄下郡湯河原町宮上			湯河原・真鶴・小田原	湯河原・真鶴	硫黄泉	\N	\N	\N	\N
977	838	湯河原温泉	ゆがわらおんせん	神奈川県足柄下郡湯河原町宮上			湯河原・真鶴・小田原	湯河原・真鶴	硫酸塩泉	\N	\N	50132	\N
978	839	中里温泉	なかざとおんせん	神奈川県横浜市南区中里			横浜	横浜・ベイエリア	硫酸塩泉	\N	\N	\N	\N
979	840	三浦マホロバ温泉	みうらまほろばおんせん	神奈川県三浦市南下浦町上宮田			横須賀・三浦	三浦	塩化物泉	\N	\N	50133	\N
980	841	木賀温泉	きがおんせん	神奈川県足柄下郡箱根町木賀			箱根	箱根	塩化物泉	\N	\N	50139	\N
981	2204	大涌谷温泉	おおわくだにおんせん	神奈川県足柄下郡箱根町仙石原4251（大湧谷）			箱根	箱根	硫酸塩泉	\N	\N	\N	\N
982	2205	二ノ平温泉	にのたいらおんせん	神奈川県足柄下郡箱根町二ノ平			箱根	箱根	単純温泉	\N	\N	50145	\N
983	2206	根府川温泉	ねふかわおんせん	神奈川県小田原市根府川字前横山655-55			湯河原・真鶴・小田原	小田原	塩化物泉	\N	\N	50146	\N
984	2252	宮城野温泉	みやぎのおんせん	神奈川県足柄下郡箱根町宮城野			箱根	箱根	単純温泉	\N	\N	\N	\N
985	2400	箱根底倉温泉	はこねそこくらおんせん	神奈川県足柄下郡箱根町底倉240-1			箱根	箱根	硫酸塩泉	\N	\N	50723	\N
986	2427	やまと温泉	やまとおんせん	神奈川県大和市下鶴間1777-3			厚木・海老名	海老名・大和	酸性泉	\N	\N	\N	\N
987	2573	野比温泉	のびおんせん	神奈川県横須賀市野比4-3-5			横須賀・三浦	横須賀	ナトリウム塩化物泉	\N	\N	\N	\N
988	2778	川崎有馬温泉	かわさきありまおんせん	神奈川県川崎市宮前区東有馬3-5-31			川崎	川崎	炭酸水素塩泉	\N	\N	50543	\N
989	2822	新横浜温泉	しんよこはまおんせん	神奈川県横浜市港北区新横浜2-3-1			横浜	横浜・ベイエリア	硫酸塩泉	\N	\N	50655	\N
990	2903	元箱根温泉	もとはこねおんせん	神奈川県足柄下郡箱根町湖尻１５９－１５			箱根	箱根	単純温泉	\N	\N	50737	\N
991	2933	大磯温泉	おおいそおんせん	神奈川県中郡大磯町国府本郷５４６			湘南・鎌倉	平塚・大磯	単純炭酸泉	\N	\N	50762	\N
992	2965	新姥子温泉	しんうばこおんせん	神奈川県足柄下郡箱根町仙石原			箱根	箱根	ナトリウム塩化物泉	\N	\N	50137	\N
993	3020	南足柄温泉	みなみあしがらおんせん	神奈川県南足柄市広町１５２０－１			足柄	南足柄・上郡	硫酸塩泉	\N	\N	50839	\N
994	3109	あしがら温泉	あしがらおんせん	神奈川県足柄上郡大井町柳260			足柄	南足柄・上郡	その他	\N	\N	50839	\N
995	1007	鶴温泉	つるおんせん	山梨県北都留郡上野原町鶴島			大月・都留	大月・都留	塩化物泉	\N	\N	\N	\N
996	1008	金山温泉	かなやまおんせん	山梨県大月市賑岡町奥山			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
997	1009	橋倉鉱泉	はしくらおんせん	山梨県大月市賑岡町奥山			大月・都留	大月・都留	硫酸塩泉	\N	\N	\N	\N
998	1010	真木温泉	まぎおんせん	山梨県大月市大月町真木			大月・都留	大月・都留	硫黄泉	\N	\N	50155	\N
999	1011	城山温泉	しろやまおんせん	山梨県都留市上谷			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
1000	1012	法能温泉	ほうのうおんせん	山梨県都留市法能			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
1001	1013	湯之沢温泉	ゆのさわおんせん	山梨県都留市夏狩			大月・都留	大月・都留	単純温泉	\N	\N	\N	\N
1002	1014	道志の湯温泉	どうしのゆおんせん	山梨県南都留郡道市村大室指			大月・都留	大月・都留	硫酸塩泉	\N	\N	\N	\N
1003	1015	道志温泉	どうしおんせん	山梨県南都留郡道志村			大月・都留	大月・都留	含鉄泉	\N	\N	\N	\N
1004	1016	富士山温泉	ふじさんおんせん	山梨県富士吉田市上吉田			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	硫酸塩泉	\N	\N	50955	\N
1005	1017	忍野温泉	おしのおんせん	山梨県南都留郡忍野村忍草			山中湖・忍野	山中湖・忍野	単純温泉	\N	\N	\N	\N
1006	1018	田野温泉	たのおんせん	山梨県東山梨郡大和村田野			石和・勝沼・塩山	石和・勝沼・塩山	硫黄泉	\N	\N	\N	\N
1007	1019	嵯峨塩温泉	さがしおおんせん	山梨県塩山市牛奥嵯峨塩			石和・勝沼・塩山	石和・勝沼・塩山	二酸化炭素泉	\N	\N	\N	\N
1008	1020	塩山温泉	えんざんおんせん	山梨県塩山市上於曽			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1009	1021	三条の湯	さんじょうのゆ	山梨県北都留郡丹波山村奥秋			大月・都留	大月・都留	硫黄泉	\N	\N	\N	\N
1010	1022	天科温泉	あましなおんせん	山梨県東山梨郡三富村上釜口			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1011	1023	川浦温泉	かわうらおんせん	山梨県東山梨郡三富村川浦			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1012	1024	三富温泉	みとみおんせん	山梨県東山梨郡三富村川浦			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50154	\N
1013	1025	岩下温泉	いわしたおんせん	山梨県山梨市上岩下			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	\N	\N
1014	1026	春日居温泉	かすがいおんせん	山梨県東山梨郡春日居町寺本			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50154	\N
1015	1027	石和温泉	いさわおんせん	山梨県東八代郡石和町			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50154	\N
1016	1028	積翠寺温泉	せきすいじおんせん	山梨県甲府市上積翠寺町			甲府・湯村・昇仙峡	甲府	含鉄泉	\N	\N	50148	\N
1017	1029	甲府湯村温泉	こうふゆむらおんせん	山梨県甲府市湯村			甲府・湯村・昇仙峡	甲府	単純温泉	\N	\N	50149	\N
1018	1030	甲府温泉	こうふおんせん	山梨県甲府市丸ノ内			甲府・湯村・昇仙峡	甲府	硫黄泉	\N	\N	50150	\N
1019	1031	神の湯温泉	かみのゆおんせん	山梨県北巨摩郡双葉町竜地			甲府・湯村・昇仙峡	甲府	硫酸塩泉	\N	\N	50151	\N
1020	1032	黒森鉱泉	くろもりおんせん	山梨県北巨摩郡須玉町小尾			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	塩化物泉	\N	\N	\N	\N
1021	1033	増富ラジウム温泉	ますとみらじうむおんせん	山梨県北巨摩郡須玉町小尾			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	塩化物泉	\N	\N	50159	\N
1022	1034	塩沢温泉	しおざわおんせん	山梨県北巨摩郡白州町大武川			南アルプス	白州・武川	放射能泉	\N	\N	\N	\N
1023	1035	深沢温泉	ふかさわおんせん	山梨県北巨摩郡長坂町長坂上条			八ヶ岳・小淵沢・清里・大泉	小淵沢	放射能泉	\N	\N	\N	\N
1024	1036	藪の湯温泉	やぶのゆおんせん	山梨県北巨摩郡武川村柳沢			南アルプス	白州・武川	硫黄泉	\N	\N	50160	\N
1025	1037	穴山温泉	あなやまおんせん	山梨県韮崎市穴山町			八ヶ岳・小淵沢・清里・大泉	韮崎	単純温泉	\N	\N	\N	\N
1026	1038	御座石鉱泉	ございしおんせん	山梨県韮崎市円野町御座石山			八ヶ岳・小淵沢・清里・大泉	韮崎	含鉄泉	\N	\N	\N	\N
1027	1039	青木鉱泉	あおきこうせん	山梨県韮崎市清哲町青木			八ヶ岳・小淵沢・清里・大泉	韮崎	炭酸水素塩泉	\N	\N	\N	\N
1028	1040	芦安温泉	あしやすおんせん	山梨県中巨摩郡芦安村芦倉			南アルプス	南アルプス・芦安・白根	含鉄泉	\N	\N	\N	\N
1029	1041	桃の木温泉	もものきおんせん	山梨県中巨摩郡芦安村安通			南アルプス	南アルプス・芦安・白根	含鉄泉	\N	\N	50644	\N
1030	1042	赤石温泉	あかいしおんせん	山梨県南巨摩郡増穂町平林			下部・身延・早川	下部・身延・早川	単純温泉	\N	\N	\N	\N
1031	1043	奈良田温泉	ならだおんせん	山梨県南巨摩郡早川町奈良田			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1032	1044	西山温泉	にしやまおんせん	山梨県南巨摩郡早川町清岡			下部・身延・早川	下部・身延・早川	含鉄泉	\N	\N	\N	\N
1033	1045	十谷温泉	じっこくおんせん	山梨県南巨摩郡鰍沢町十谷			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1317	1197	鯰温泉	なまずおんせん	富山県富山市今市			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1034	1046	中富・手打沢温泉	なかとみ・てうちざわおんせん	山梨県南巨摩郡中富町手打沢			下部・身延・早川	下部・身延・早川	硫酸塩泉	\N	\N	\N	\N
1035	1047	常葉温泉	ときわおんせん	山梨県西八代郡下部町常葉			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1036	1048	下部温泉	しもべおんせん	山梨県西八代郡下部町			下部・身延・早川	下部・身延・早川	単純温泉	\N	\N	50158	\N
1037	1049	湯沢温泉	ゆざわおんせん	山梨県西八代郡下部町上之平			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1038	1050	塩之沢温泉	しおのさわおんせん	山梨県南巨摩郡身延町塩之沢			下部・身延・早川	下部・身延・早川	単純温泉	\N	\N	\N	\N
1039	1051	塩沢温泉	しおざわおんせん	山梨県南巨摩郡身延町塩沢			下部・身延・早川	下部・身延・早川	硫黄泉	\N	\N	\N	\N
1040	1052	身延温泉	みのぶおんせん	山梨県南巨摩郡身延町身延			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1041	1053	相又峡温泉	あいまたきょうおんせん	山梨県南巨摩郡身延町相又			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1042	1054	船山温泉	ふなやまおんせん	山梨県南巨摩郡南部町本郷			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1043	1055	十枚荘温泉	じゅうまいそうおんせん	山梨県南巨摩郡南部町成島			下部・身延・早川	下部・身延・早川	二酸化炭素泉	\N	\N	\N	\N
1044	1056	内船温泉	うつふなおんせん	山梨県南巨摩郡南部町内船			下部・身延・早川	下部・身延・早川	含鉄泉	\N	\N	\N	\N
1045	1057	佐野川温泉	さのがわおんせん	山梨県南巨摩郡南部町井出			下部・身延・早川	下部・身延・早川	放射能泉	\N	\N	\N	\N
1046	1058	万沢温泉	まんざわおんせん	山梨県南巨摩郡富沢町万沢			下部・身延・早川	下部・身延・早川	放射能泉	\N	\N	\N	\N
1047	1059	富士河口湖温泉郷	ふじかわぐちこおんせんきょう	山梨県南都留郡河口湖町船津			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	硫黄泉	\N	\N	50157	\N
1048	1060	竜王ラドン温泉	りゅうおうらどんおんせん	山梨県中巨摩郡竜王町富竹新田			甲府・湯村・昇仙峡	甲府	硫黄泉	\N	\N	50152	\N
1049	2210	桔梗温泉	ききょうおんせん	山梨県中巨摩郡敷島町亀沢6949			甲府・湯村・昇仙峡	甲府	単純温泉	\N	\N	50153	\N
1050	2263	スパティオ小淵沢延命の湯	すぱてぃおこぶちざわえんめいのゆ	山梨県北巨摩郡小淵沢町2968-1			八ヶ岳・小淵沢・清里・大泉	小淵沢	塩化物泉	\N	\N	\N	\N
1051	2268	丘の公園　アクアリゾート清里	おかのこうえんあくありぞーときよさと	山梨県北巨摩郡高根町清里念場原3545-5番地			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	単純温泉	\N	\N	\N	\N
1052	2269	富士眺望乃元湯『湯?園』	ふじちょうぼうのもとゆ　ゆ?えん	山梨県南都留郡勝山村3282-2			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	その他	\N	\N	\N	\N
1053	2333	山中湖温泉	やまなかこおんせん	山梨県南都留郡山中湖村			山中湖・忍野	山中湖・忍野	ナトリウム塩化物泉	\N	\N	50156	\N
1054	2375	須玉の湯	すたまのゆ	山梨県北巨摩郡須玉町若神子5248-6			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	炭酸水素塩泉	\N	\N	\N	\N
1055	2428	はやぶさ温泉	はやぶさおんせん	山梨県東山梨郡牧丘町隼818-1			石和・勝沼・塩山	石和・勝沼・塩山	炭酸水素塩泉	\N	\N	\N	\N
1056	2429	芭蕉月待ちの湯	ばしょうつきまちのゆ	山梨県都留市戸沢874			大月・都留	大月・都留	ナトリウム塩化物泉	\N	\N	\N	\N
1057	2430	多摩源流小菅温泉	たまげんりゅうこすげおんせん	山梨県北都留郡小菅村3445			大月・都留	大月・都留	ナトリウム塩化物泉	\N	\N	\N	\N
1058	2431	上九の湯	かみくのゆ	山梨県西八代郡上九一色村小関1174			甲府・湯村・昇仙峡	甲府	塩化物泉	\N	\N	\N	\N
1059	2432	まほらの湯	まほらのゆ	山梨県南巨摩郡増穂町長沢1757-2			下部・身延・早川	下部・身延・早川	鉱泉	\N	\N	\N	\N
1060	2433	なんぶの湯	なんぶのゆ	山梨県南巨摩郡南部町内船8106-1			下部・身延・早川	下部・身延・早川	アルカリ単純泉	\N	\N	\N	\N
1061	2434	草塩温泉	くさしおおんせん	山梨県南巨摩郡早川町草塩321			下部・身延・早川	下部・身延・早川	ナトリウム塩化物泉	\N	\N	\N	\N
1062	2435	奥山温泉	おくやまおんせん	山梨県南巨摩郡富沢町福士26842			下部・身延・早川	下部・身延・早川	炭酸水素塩泉	\N	\N	\N	\N
1063	2436	奈良田の里温泉	ならだのさとおんせん	山梨県南巨摩郡早川町奈良田486			下部・身延・早川	下部・身延・早川	塩化物泉	\N	\N	\N	\N
1064	2437	天恵泉	てんけいせん	山梨県中巨摩郡白根町駒場140-1			南アルプス	南アルプス・芦安・白根	アルカリ単純泉	\N	\N	\N	\N
1065	2438	たかねの湯	たかねのゆ	山梨県北巨摩郡高根町箕輪新町95			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	弱アルカリ性低張性泉	\N	\N	\N	\N
1066	2439	泉温泉健康センター	いずみおんせんけんこうせんたー	山梨県北巨摩郡大泉村戸1880			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	その他	\N	\N	\N	\N
1067	2440	茅の湯	かやのゆ	山梨県北巨摩郡明野村浅尾5259-950			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	アルカリ単純泉	\N	\N	\N	\N
1068	2441	韮崎温泉	にらさきおんせん	山梨県韮崎市中田町中条1800-1			八ヶ岳・小淵沢・清里・大泉	韮崎	その他	\N	\N	\N	\N
1069	2544	八ヶ岳南麓温泉	やつがたけなんろくおんせん	山梨県北巨摩郡大泉村西井出字石堂8240-1039			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	単純温泉	\N	\N	\N	\N
1070	2604	ほったらかし温泉	ほったらかしおんせん	山梨県山梨市矢坪1669-18			石和・勝沼・塩山	石和・勝沼・塩山	その他	\N	\N	\N	\N
1071	2605	みさかの湯	みさかのゆ	山梨県東八代郡御坂町成田2200			石和・勝沼・塩山	石和・勝沼・塩山	硫酸塩泉	\N	\N	\N	\N
1072	2606	丹波山温泉　のめこい湯	たばやまおんせん　のめこいゆ	山梨県北都留郡丹波山村778－2			大月・都留	大月・都留	その他	\N	\N	\N	\N
1073	2607	秋山雛鶴の湯	あきやまひなづるのゆ	山梨県南都留郡秋山村			大月・都留	大月・都留	塩化物泉	\N	\N	\N	\N
1074	2608	いずみの湯	いずみのゆ	山梨県南都留郡足和田村西湖			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	弱アルカリ性低張性泉	\N	\N	\N	\N
1075	2609	むかわの湯	むかわのゆ	山梨県北巨摩郡武川村牧原1322			南アルプス	白州・武川	炭酸水素塩泉	\N	\N	\N	\N
1076	2610	清春温泉	きよはるおんせん	山梨県北巨摩郡長坂町中丸4391			八ヶ岳・小淵沢・清里・大泉	小淵沢	アルカリ単純泉	\N	\N	\N	\N
1077	2611	甲斐大泉温泉	かいおおいずみおんせん	山梨県北巨摩郡大泉村82401			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	その他	\N	\N	\N	\N
1078	2683	富士青木ヶ原樹海温泉	ふじあおきがはらじゅかいおんせん	山梨県南都留郡鳴沢村字ジラゴンノ８５３２－５			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	アルカリ単純泉	\N	\N	50482	\N
1079	2700	甲斐大泉温泉　パノラマの湯	かいおおいずみおんせん　ぱのらまのゆ	山梨県北巨摩郡大泉村西井出８２４０－１			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	弱アルカリ性低張性泉	\N	\N	50491	\N
1080	2715	雨畑湖温泉	あめはたこおんせん	山梨県南巨摩郡早川町雨畑699			下部・身延・早川	下部・身延・早川	その他	\N	\N	\N	\N
1081	2734	山中湖平野温泉	やまなかこひらのおんせん	山梨県南都留郡山中湖村平野字中砂１５４８番			山中湖・忍野	山中湖・忍野	ナトリウム塩化物泉	\N	\N	50505	\N
1082	2796	蓼科温泉　石遊の湯	たてしなおんせん　いしやすのゆ	山梨県北杜市小淵沢町上の原3989-1			八ヶ岳・小淵沢・清里・大泉	小淵沢	炭酸水素塩泉	\N	\N	50193	\N
1083	2812	ふじやま温泉	ふじやまおんせん	山梨県富士吉田市新西原4丁目1524番			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	アルカリ単純泉	\N	\N	50646	\N
1084	2901	笛吹川温泉	ふえふきがわおんせん	山梨県甲州市塩山三日市場2512			石和・勝沼・塩山	石和・勝沼・塩山	単純温泉	\N	\N	50735	\N
1085	2938	KEEP　温泉	きーぷおんせん	山梨県北杜市大泉町西井出石堂８２４０			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	弱アルカリ性低張性泉	\N	\N	50766	\N
1086	3014	信玄温泉	しんげんおんせん	山梨県甲府市国母８－１－１			甲府・湯村・昇仙峡	甲府	その他	\N	\N	50827	\N
1087	3015	アーティストの湯	あーてぃすとのゆ	山梨県北杜市小淵沢町１０２４９－１			八ヶ岳・小淵沢・清里・大泉	小淵沢	塩化物泉	\N	\N	50828	\N
1088	3098	光源の里温泉	こうげんのさとおんせん	山梨県南巨摩郡早川町大原野651			下部・身延・早川	下部・身延・早川	炭酸水素塩泉	\N	\N	50896	\N
1089	3116	明野温泉　茅の湯	あけのおんせん　かやのゆ	山梨県北杜市明野町浅尾5259-950			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	その他	\N	\N	50904	\N
1090	3166	天然美肌温泉　クララの湯	てんねんびはだおんせん　くららのゆ	山梨県北杜市明野町浅尾5259-950			八ヶ岳・小淵沢・清里・大泉	清里・大泉・須玉	塩化物泉	\N	\N	50937	\N
1091	3176	韮崎船山温泉	にらさきふなやまおんせん	山梨県韮崎市大草町若尾1340			八ヶ岳・小淵沢・清里・大泉	韮崎	炭酸水素塩泉	\N	\N	50942	\N
1092	3266	湧暇李の里 樹園	ゆーかりのさと　じゅえん	山梨県南アルプス市小笠原376番地			南アルプス	南アルプス・芦安・白根	弱アルカリ性低張性泉	\N	\N	50982	\N
1093	3282	富士　弁天温泉	ふじ　べんてんおんせん	山梨県南都留郡富士河口湖町船津字北八ッ倉5156番			河口湖・西湖・富士吉田・精進湖・本栖湖	河口湖・西湖・富士吉田	弱アルカリ性低張性泉	\N	\N	50157	\N
1094	3310	よりみちの湯温泉	よりみちのゆおんせん	山梨県都留市つる1‐13‐31			大月・都留	大月・都留	塩化物泉	\N	\N	50989	\N
1095	842	志賀山温泉	しがやまおんせん	長野県下高井郡山ノ内町志賀高原ジャイアント			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫黄泉	\N	\N	50168	\N
1096	843	熊の湯温泉	くまのゆおんせん	長野県下高井郡山ノ内町志賀高原熊の湯			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫黄泉	\N	\N	50168	\N
1097	844	木戸池温泉	きどいけおおんせん	長野県下高井郡山ノ内町志賀高原木戸池			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50168	\N
1098	845	幕岩温泉	まくいわおんせん	長野県下高井郡山ノ内町平隠			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫黄泉	\N	\N	50168	\N
1099	846	発哺温泉	ほっぽおんせん	長野県下高井郡山ノ内町志賀高原発哺温泉			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50168	\N
1100	847	中条温泉	なかじょうおんせん	長野県下水内郡栄村北信			野沢温泉・木島平・秋山郷	秋山郷	硫黄泉	\N	\N	50166	\N
1101	848	野沢温泉	のざわおんせん	長野県下高井郡野沢温泉村豊郷			野沢温泉・木島平・秋山郷	野沢温泉	単純温泉	\N	\N	50167	\N
1102	849	屋敷温泉	やしきおんせん	長野県下水内郡栄村屋敷			野沢温泉・木島平・秋山郷	秋山郷	硫黄泉	\N	\N	\N	\N
1103	850	湯ノ沢温泉	ゆのさわおんせん	長野県下水内郡栄村上野原			野沢温泉・木島平・秋山郷	秋山郷	硫黄泉	\N	\N	\N	\N
1104	851	和山温泉	わやまおんせん	長野県下水内郡栄村和山			野沢温泉・木島平・秋山郷	秋山郷	硫酸塩泉	\N	\N	\N	\N
1105	852	切明温泉	きりあけおんせん	長野県下水内郡栄村切明			野沢温泉・木島平・秋山郷	秋山郷	塩化物泉	\N	\N	50166	\N
1106	853	黄金の湯鬼島温泉	おうごんのゆきじまおんせん	長野県下高井郡木島平村大字上木島			野沢温泉・木島平・秋山郷	木島平	単純温泉	\N	\N	\N	\N
1107	854	北志賀温泉高社の湯	きたしがこうげんこうしゃのゆ	長野県下高井郡山ノ内町夜間瀬			志賀・北志賀・湯田中渋	北志賀・竜王・奥志賀	塩化物泉	\N	\N	50169	\N
1108	855	穂波温泉	ほなみおんせん	長野県下高井郡山ノ内町佐野穂波			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	50170	\N
1109	856	上林温泉	かんばやしおんせん	長野県下高井郡山ノ内町平穏上林			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	50170	\N
1110	857	地獄谷温泉	じごくだにおんせん	長野県下高井郡山ノ内町平穏			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1111	858	角間温泉	かくまおんせん	長野県下高井郡山ノ内町佐野角間			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫酸塩泉	\N	\N	50170	\N
1112	859	川原小屋温泉	かわちごやおんせん	長野県下高井郡山ノ内町志賀高原			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1113	860	湯田中温泉	ゆだなかおんせん	長野県下高井郡山ノ内町平穏湯田中			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50170	\N
1114	861	新湯田中温泉	しんゆだなかおんせん	長野県下高井郡山ノ内町平穏新湯田中			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	単純温泉	\N	\N	50170	\N
1115	862	星川温泉	ほしかわおんせん	長野県下高井郡山ノ内町平穏星川			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	50170	\N
1116	863	安代温泉	あんだいおんせん	長野県下高井郡山ノ内町平穏安代			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫酸塩泉	\N	\N	50170	\N
1117	864	渋温泉	しぶおんせん	長野県下高井郡山ノ内町平穏渋			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	硫酸塩泉	\N	\N	50170	\N
1118	865	硯川温泉	すずりかわおんせん	長野県下高井郡山ノ内町志賀高原			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1119	866	石の湯温泉	いしのゆおんせん	長野県下高井郡山ノ内町志賀高原石の湯			志賀・北志賀・湯田中渋	湯田中・渋・志賀高原	塩化物泉	\N	\N	\N	\N
1120	867	奥山田温泉	おくやまだおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	塩化物泉	\N	\N	50517	\N
1121	868	七味温泉	しちみおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	単純温泉	\N	\N	50517	\N
1122	869	五色温泉	ごしきおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	硫黄泉	\N	\N	50517	\N
1123	870	山田温泉	やまだおんせん	長野県上高井郡高山村奥山田牛窪			長野・戸隠・小布施	小布施	単純温泉	\N	\N	50517	\N
1124	871	蕨温泉	わらびおんせん	長野県上高井郡高山村奥山田			長野・戸隠・小布施	小布施	硫黄泉	\N	\N	50517	\N
1125	872	須坂温泉	すざかおんせん	長野県須坂市大谷町			菅平・峰の原	須坂・菅平・峰の原	硫黄泉	\N	\N	\N	\N
1126	873	仙仁温泉	せにおんせん	長野県須坂市仙仁			菅平・峰の原	須坂・菅平・峰の原	硫黄泉	\N	\N	\N	\N
1127	874	保科温泉	ほしなおんせん	長野県長野市若穂保科			長野・戸隠・小布施	長野・飯綱・戸隠	塩化物泉	\N	\N	\N	\N
1128	875	あずまや温泉	あずまやおんせん	長野県小県郡真田町十の原			菅平・峰の原	須坂・菅平・峰の原	塩化物泉	\N	\N	50176	\N
1129	876	黒姫温泉	くろひめおんせん	長野県上水内郡信濃町野尻山桑			斑尾・飯山・信濃町・黒姫	信濃町・黒姫	単純温泉	\N	\N	50171	\N
1130	877	山の神温泉	やまのかみおんせん	長野県長野市箱清水			長野・戸隠・小布施	長野・飯綱・戸隠	単純温泉	\N	\N	\N	\N
1131	878	善光寺温泉	せんこうじおんせん	長野県長野市芋井広瀬			長野・戸隠・小布施	長野・飯綱・戸隠	硫黄泉	\N	\N	\N	\N
1132	879	中尾山温泉	なかおやまおんせん	長野県長野市篠ノ井小松原			長野・戸隠・小布施	長野・飯綱・戸隠	単純温泉	\N	\N	50944	\N
1133	880	松代温泉	まつしろおんせん	長野県長野市松代町東条			長野・戸隠・小布施	長野・飯綱・戸隠	炭酸水素塩泉	\N	\N	\N	\N
1134	881	森温泉	もりおんせん	長野県更埴市森			戸倉上山田・千曲	戸倉上山田・千曲	単純温泉	\N	\N	\N	\N
1135	882	稲荷山温泉	いなりやまおんせん	長野県更埴市稲荷山			戸倉上山田・千曲	戸倉上山田・千曲	塩化物泉	\N	\N	\N	\N
1136	883	八幡温泉	やわたおんせん	長野県更埴市八幡			戸倉上山田・千曲	戸倉上山田・千曲	硫黄泉	\N	\N	\N	\N
1137	884	小谷温泉	おたりおんせん	長野県北安曇郡小谷村中土			白馬・小谷	栂池・小谷	含鉄泉	\N	\N	\N	\N
1138	885	姫川温泉	ひめかわおんせん	長野県北安曇郡小谷村大字北小谷9922－3			白馬・小谷	栂池・小谷	単純温泉	\N	\N	50918	\N
1139	886	島温泉	しまおんせん	長野県北安曇郡小谷村北小谷島			白馬・小谷	栂池・小谷	硫黄泉	\N	\N	\N	\N
1140	887	来馬温泉	くるまおんせん	長野県北安曇郡小谷村北小谷来馬			白馬・小谷	栂池・小谷	単純温泉	\N	\N	\N	\N
1141	888	奉納温泉	ぶのうおんせん	長野県北安曇郡小谷村奉納			白馬・小谷	栂池・小谷	炭酸水素塩泉	\N	\N	\N	\N
1142	889	下里瀬温泉	くだりせおんせん	長野県北安曇郡小谷村下里瀬			白馬・小谷	栂池・小谷	ナトリウム塩化物泉	\N	\N	\N	\N
1143	890	白馬鑓温泉	はくばやりおんせん	長野県北安曇郡白馬村白馬山国有林内			白馬・小谷	白馬村	炭酸水素塩泉	\N	\N	\N	\N
1144	891	八方温泉	はっぽうおんせん	長野県北安曇郡白馬村八方			白馬・小谷	白馬村	硫黄泉	\N	\N	50182	\N
1145	892	裾花峡温泉	すそばなきょうおんせん	長野県長野市南長野妻科９８			長野・戸隠・小布施	長野・飯綱・戸隠	炭酸水素塩泉	\N	\N	50954	\N
1146	893	不動温泉	ふどうおんせん	長野県上水内郡信州新町日原西			長野・戸隠・小布施	長野・飯綱・戸隠	単純温泉	\N	\N	\N	\N
1147	894	金熊温泉	かなくまおんせん	長野県北安曇郡八坂村矢下			安曇野・大町	大町	塩化物泉	\N	\N	\N	\N
1148	895	木崎湖温泉	きざきこおんせん	長野県大町市平森・山崎			安曇野・大町	大町	炭酸水素塩泉	\N	\N	\N	\N
1149	896	大町温泉郷	おおまちおんせんきょう	長野県大町市平			安曇野・大町	大町	硫黄泉	\N	\N	50184	\N
1150	897	葛温泉	くずおんせん	長野県大町市平高瀬入			安曇野・大町	大町	単純温泉	\N	\N	\N	\N
1151	898	乗鞍高原温泉	のりくらこうげんおんせん	長野県南安曇郡安曇村乗鞍高原			松本市（上高地・乗鞍・白骨・野麦峠）	乗鞍	ナトリウム塩化物泉	\N	\N	50187	\N
1152	900	高峰温泉	たかみねおんせん	長野県小諸市高峰高原			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1153	901	小瀬温泉	こせおんせん	長野県北佐久郡軽井沢町小瀬			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1154	902	軽井沢千ヶ滝温泉	かるいざわせんがたきおんせん	長野県北佐久郡軽井沢町千ヶ滝			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	\N	\N
1155	903	塩壺温泉	しおつぼおんせん	長野県北佐久郡軽井沢町塩壺			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	50178	\N
1156	904	星野温泉	ほしのおんせん	長野県北佐久郡軽井沢町星野			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1157	905	ゆうすげ温泉	ゆうすげおんせん	長野県北佐久郡軽井沢町古宿			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	\N	\N
1158	906	塩沢温泉	しおざわおんせん	長野県北佐久郡軽井沢町塩沢			軽井沢・佐久・小諸	佐久・小諸	硫酸塩泉	\N	\N	\N	\N
1159	907	初谷温泉	しょやおんせん	長野県佐久市内山初谷			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	\N	\N
1160	908	内山鉱泉	うちやまこうせん	長野県佐久市内山相立			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	50179	\N
1161	909	洞源湖温泉	どうげんこおんせん	長野県佐久市大字前山字大掘			軽井沢・佐久・小諸	佐久・小諸	二酸化炭素泉	\N	\N	\N	\N
1162	910	不老温泉	ふろうおんせん	長野県南佐久郡臼田町山ノ神			軽井沢・佐久・小諸	佐久・小諸	二酸化炭素泉	\N	\N	\N	\N
1163	911	曽原の湯温泉	そばらのゆおんせん	長野県南佐久郡佐久町曽原			八ヶ岳・富士見・原村・野辺山・小海	野辺山・小海	塩化物泉	\N	\N	\N	\N
1164	913	奈良原温泉	ならはらおんせん	長野県小県郡東部町奈良原			上田・別所・鹿教湯	軽井沢	塩化物泉	\N	\N	\N	\N
1165	914	菱野温泉	ひしのおんせん	長野県小諸市菱野			軽井沢・佐久・小諸	佐久・小諸	二酸化炭素泉	\N	\N	50181	\N
1166	915	布引温泉	ぬのびきおんせん	長野県小諸市大久保			軽井沢・佐久・小諸	佐久・小諸	含鉄泉	\N	\N	50181	\N
1167	916	中棚温泉	なかだなおんせん	長野県小諸市古城区中棚			軽井沢・佐久・小諸	佐久・小諸	単純温泉	\N	\N	50180	\N
1168	917	湯の瀬温泉	ゆのせおんせん	長野県小諸市大杭			軽井沢・佐久・小諸	佐久・小諸	含鉄泉	\N	\N	\N	\N
1169	918	望月温泉	もちづきおんせん	長野県北佐久郡望月町印内			軽井沢・佐久・小諸	佐久・小諸	含鉄泉	\N	\N	\N	\N
1170	919	春日温泉	かすがおんせん	長野県北佐久郡望月町春日湯沢			軽井沢・佐久・小諸	佐久・小諸	硫黄泉	\N	\N	50181	\N
1171	920	樽ヶ沢温泉	たるがわさおんせん	長野県北佐久郡立科町樽ヶ沢			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	単純温泉	\N	\N	\N	\N
1172	921	新戸倉温泉	しんとぐらおんせん	長野県埴科郡戸倉町戸倉			戸倉上山田・千曲	戸倉上山田・千曲	塩化物泉	\N	\N	\N	\N
1173	922	戸倉上山田温泉	とぐらかみやまだおんせん	長野県埴科郡戸倉町			戸倉上山田・千曲	戸倉上山田・千曲	単純温泉	\N	\N	50177	\N
1174	923	差切峡温泉	さしきりきょうおんせん	長野県東筑摩郡坂北村			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	塩化物泉	\N	\N	\N	\N
1175	924	草湯温泉	くさゆおんせん	長野県東筑摩郡坂井村道平			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	塩化物泉	\N	\N	\N	\N
1176	925	西条温泉	にしじょうおんせん	長野県東筑摩郡本城村西条			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	\N	\N
1177	926	田沢温泉	たざわおんせん	長野県小県郡青木村田沢			上田・別所・鹿教湯	上田・別所・鹿教湯	含鉄泉	\N	\N	50174	\N
1178	927	別所温泉	べっしょおんせん	長野県上田市別所温泉			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	50174	\N
1179	928	沓掛温泉	くつかけおんせん	長野県小県郡青木村沓掛			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	\N	\N
1180	929	明科温泉	あかしなおんせん	長野県東筑摩郡明科町			安曇野・大町	安曇野・穂高	硫黄泉	\N	\N	\N	\N
1181	931	霊泉寺温泉　(丸子)	れいせんじおんせん	長野県小県郡丸子町平井			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	50175	\N
1182	932	鹿教湯温泉　(丸子)	かけゆおんせん	長野県小県郡丸子町西内			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	50175	\N
1183	933	大塩温泉　(丸子)	おおしおおんせん	長野県小県郡丸子町西内			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	\N	\N
1184	934	岳の湯温泉	たけのゆおんせん	長野県小県郡武石村小沢根			上田・別所・鹿教湯	上田・別所・鹿教湯	硫黄泉	\N	\N	\N	\N
1185	935	美ヶ原高原温泉	うつくしがはらこうげんおんせん	長野県小県郡和田村美ヶ原高原			蓼科・白樺湖・車山・女神湖・姫木平	蓼科・白樺湖・車山	硫黄泉	\N	\N	50191	\N
1186	936	浅間温泉	あさまおんせん	長野県松本市浅間温泉			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	浅間・美ヶ原	硫黄泉	\N	\N	50189	\N
1187	937	新浅間温泉	しんあさまおんせん	長野県松本市横田			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	浅間・美ヶ原	硫酸塩泉	\N	\N	\N	\N
1188	938	松本温泉	まつもとおんせん	長野県松本市大手			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	\N	\N
1189	939	美ヶ原温泉	うつくしがはらおんせん	長野県松本市里山辺			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	浅間・美ヶ原	単純温泉	\N	\N	50190	\N
1190	940	入山辺温泉	いりやまべおんせん	長野県松本市入山辺			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	放射能泉	\N	\N	\N	\N
1191	941	扉温泉	とびらおんせん	長野県松本市入山辺扉			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	50456	\N
1192	942	崖の湯温泉	がけのゆおんせん	長野県塩尻市片丘・松本市内田			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	含鉄泉	\N	\N	\N	\N
1193	943	毒沢温泉	どくさわおんせん	長野県諏訪郡下諏訪町星が丘			上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	上諏訪・下諏訪・岡谷・霧ヶ峰・美ヶ原高原	単純温泉	\N	\N	50195	\N
1194	944	みどり湖温泉	みどりこおんせん	長野県塩尻市柿沢			松本市（松本駅周辺・浅間・美ヶ原・塩尻）	塩尻・その他	単純温泉	\N	\N	\N	\N
1195	1061	平根崎温泉	ひらねざきおんせん	新潟県佐渡郡相川町戸中			佐渡	佐渡	単純温泉	\N	\N	\N	\N
1196	1062	秋津温泉	あきつおんせん	新潟県両津市大字秋津			佐渡	佐渡	単純温泉	\N	\N	\N	\N
1197	1063	椎崎温泉	しいざきおんせん	新潟県両津市原黒			佐渡	佐渡	塩化物泉	\N	\N	50229	\N
1198	1064	住吉温泉	すみよしおんせん	新潟県両津市住吉			佐渡	佐渡	塩化物泉	\N	\N	\N	\N
1199	1065	潟上温泉	かたかみおんせん	新潟県佐渡郡新穂村潟上			佐渡	佐渡	硫黄泉	\N	\N	\N	\N
1200	1066	佐和田温泉	さわたおんせん	新潟県佐渡郡佐和田町窪田			佐渡	佐渡	炭酸水素塩泉	\N	\N	\N	\N
1201	1067	八幡温泉	やはたおんせん	新潟県佐渡郡佐和田町八幡			佐渡	佐渡	塩化物泉	\N	\N	50231	\N
1202	1068	小木温泉	おぎおんせん	新潟県佐渡郡小木町			佐渡	佐渡	硫酸塩泉	\N	\N	\N	\N
1203	1069	瀬波温泉	せなみおんせん	新潟県村上市瀬波温泉			瀬波・村上・岩船	瀬波・村上	塩化物泉	\N	\N	50202	\N
1204	1070	湯沢温泉　(荒川峡)	ゆさわおんせん	新潟県岩船郡関川村大字湯沢			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	\N	\N
1205	1071	雲母温泉　(荒川峡)	きらおんせん	新潟県岩船郡関川村上関			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	\N	\N
1206	1072	高瀬温泉　(荒川峡)	たかせおんせん	新潟県岩船郡関川村大字湯沢			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	50203	\N
1207	1073	鷹ノ巣温泉　(荒川峡)	たかのすおんせん	新潟県岩船郡関川村大字湯沢			瀬波・村上・岩船	岩船・胎内	塩化物泉	\N	\N	\N	\N
1208	1074	樽ヶ橋温泉	たるがはしおんせん	新潟県北蒲原郡黒川村大字下赤谷			瀬波・村上・岩船	岩船・胎内	単純温泉	\N	\N	\N	\N
1209	1075	胎内温泉	たいないおんせん	新潟県北蒲原郡黒川村夏井			瀬波・村上・岩船	岩船・胎内	単純温泉	\N	\N	\N	\N
1210	1076	貝屋温泉	かいやおんせん	新潟県北蒲原郡加治川村貝屋			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	\N	\N
1211	1077	湯の平温泉	ゆのだいらおんせん	新潟県新発田市滝谷			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	\N	\N
1212	1078	月岡温泉	つきおかおんせん	新潟県北蒲原郡豊浦町月岡			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	50197	\N
1213	1079	出湯温泉　(五頭)	でゆおんせん	新潟県北蒲原郡笹神村出湯			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	単純温泉	\N	\N	50198	\N
1214	1080	今板温泉　(五頭)	いまいたおんせん	新潟県北蒲原郡笹神村今板			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	放射能泉	\N	\N	50198	\N
1215	1081	村杉温泉　(五頭)	むらすぎおんせん	新潟県北蒲原郡笹神村村杉			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	放射能泉	\N	\N	50198	\N
1216	1082	咲花温泉	さきはなおんせん	新潟県五泉市佐取			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫黄泉	\N	\N	50204	\N
1217	1083	三川温泉	みかわおんせん	新潟県東蒲原郡三川村五十沢			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	\N	\N
1218	1084	角神温泉	つのがみおんせん	新潟県東蒲原郡鹿瀬町鹿瀬			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	炭酸水素塩泉	\N	\N	50205	\N
1219	1085	麒麟山温泉	きりんざんおんせん	新潟県東蒲原郡鹿瀬町鹿瀬			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	50206	\N
1220	1086	御神楽温泉	みかぐらおんせん	新潟県東蒲原郡上川村広谷			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	塩化物泉	\N	\N	\N	\N
1221	1087	金割鉱泉	かねわりこうせん	新潟県中蒲原郡村松町高松			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	単純温泉	\N	\N	\N	\N
1222	1088	湯田上温泉	ゆたがみおんせん	新潟県南蒲原郡田上町田上			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	ナトリウム塩化物泉	\N	\N	50207	\N
1223	1089	白根温泉	しろねおんせん	新潟県白根市引越			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	硫酸塩泉	\N	\N	\N	\N
1224	1090	緒立温泉	おたておんせん	新潟県西蒲原郡黒埼町			新潟・月岡・阿賀野川	月岡・阿賀野川・五頭・麒麟山	塩化物泉	\N	\N	\N	\N
1225	1091	湯之腰温泉	ゆのこしおんせん	新潟県西蒲原郡巻町越前浜			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	塩化物泉	\N	\N	\N	\N
1226	1092	岩室温泉	いわむろおんせん	新潟県西蒲原郡岩室村岩室			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	単純温泉	\N	\N	50199	\N
1227	1093	弥彦温泉	やひこおんせん	新潟県西蒲原郡弥彦村弥彦			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	塩化物泉	\N	\N	50200	\N
1228	1094	観音寺温泉	かんのんじおんせん	新潟県西蒲原郡弥彦村観音寺			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	硫黄泉	\N	\N	50201	\N
1229	1095	寺泊海岸温泉	てらどまりかいがんおんせん	新潟県三島郡寺泊町寺泊			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1230	1096	寺泊温泉	てらどまりおんせん	新潟県三島郡寺泊町年友			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1231	1097	越之湯温泉	こしのゆおんせん	新潟県三島郡与板町馬越			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	硫黄泉	\N	\N	\N	\N
1232	1098	越後長野温泉	えちごながのおんせん	新潟県南蒲原郡下田村長野			燕・三条・岩室・弥彦	燕・三条・岩室・弥彦	塩化物泉	\N	\N	50492	\N
1233	1099	大野鉱泉	おおのこうせん	新潟県栃尾市大野町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	硫黄泉	\N	\N	\N	\N
1234	1100	荷頃鉱泉	にごろこうせん	新潟県栃尾市北荷頃			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1235	1102	越後東山温泉	えちごひがしやまおんせん	新潟県長岡市水穴町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1236	1103	成願寺温泉	じょうがんじおんせん	新潟県長岡市成願寺町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	炭酸水素塩泉	\N	\N	\N	\N
1237	1104	長岡温泉	ながおかおんせん	新潟県長岡市高畑町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	塩化物泉	\N	\N	\N	\N
1238	1105	鯨波松島温泉	くじらなみまつしまおんせん	新潟県柏崎市鯨波１８２８			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	単純温泉	\N	\N	50208	\N
1239	1106	長岡かまぶろ温泉	ながおかかまぶろおんせん	新潟県長岡市十日町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	単純温泉	\N	\N	\N	\N
1240	1107	蓬平温泉	よもぎひらおんせん	新潟県長岡市蓬平町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	二酸化炭素泉	\N	\N	\N	\N
1241	1108	守門温泉	すもんおんせん	新潟県北魚沼郡守門村西名新田			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	ナトリウム塩化物泉	\N	\N	\N	\N
1242	1109	木津の湯	きづのゆ	新潟県小千谷市木津			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	弱アルカリ性低張性泉	\N	\N	\N	\N
1243	1110	勝見鉱泉	かつもこうせん	新潟県三島郡出雲崎町勝見			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	塩化物泉	\N	\N	\N	\N
1244	1111	宮本温泉	みやもとおんせん	新潟県長岡市宮本東方町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	単純温泉	\N	\N	\N	\N
1245	1112	三島谷温泉	みしまだにおんせん	新潟県長岡市大積三島谷町			柏崎・寺泊・長岡・魚沼（湯之谷）	長岡･寺泊	炭酸水素塩泉	\N	\N	\N	\N
1246	1113	地蔵温泉	ぢぞうおんせん	新潟県刈羽郡西山町坂田			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	二酸化炭素泉	\N	\N	\N	\N
1247	1114	柏崎温泉	かしわざきおんせん	新潟県柏崎市新花町			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	硫黄泉	\N	\N	50208	\N
1248	1115	広田温泉	ひろたおんせん	新潟県柏崎市大広田			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	塩化物泉	\N	\N	\N	\N
1249	1116	葎沢温泉	むぐらさわおんせん	新潟県北魚沼郡湯之谷村葎沢			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	硫黄泉	\N	\N	\N	\N
1250	1117	芋川温泉	いもがわおんせん	新潟県北魚沼郡湯之谷村芋川			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	炭酸水素塩泉	\N	\N	\N	\N
1251	1118	折立温泉	おりたておんせん	新潟県北魚沼郡湯之谷村下折立			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	硫黄泉	\N	\N	\N	\N
1252	1119	栃尾又温泉	とちおまたおんせん	新潟県北魚沼郡湯之谷村栃尾又			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	塩化物泉	\N	\N	50209	\N
1253	1120	大湯温泉	おおゆおんせん	新潟県北魚沼郡湯之谷村大湯			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	塩化物泉	\N	\N	50210	\N
1254	1121	駒の湯温泉	こまのゆおんせん	新潟県北魚沼郡湯之谷村駒の湯			柏崎・寺泊・長岡・魚沼（湯之谷）	魚沼（湯之谷・奥只見）	単純温泉	\N	\N	\N	\N
1255	1122	浦佐温泉	うらさおんせん	新潟県南魚沼郡大和町浦佐			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	\N	\N
1256	1123	市野江温泉	いちのえおんせん	新潟県南魚沼郡大和町市野江			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	\N	\N
1257	1124	五十沢温泉	いかざわおんせん	新潟県南魚沼郡六日町宮			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	放射能泉	\N	\N	\N	\N
1258	1125	六日町温泉	むいかまちおんせん	新潟県南魚沼郡六日町小栗山			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	50215	\N
1259	1126	二ツ屋温泉	ふたつやおんせん	新潟県十日町市二ツ屋			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	単純温泉	\N	\N	\N	\N
1260	1127	塩之又温泉	しおのまたおんせん	新潟県十日町市塩之又			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	\N	\N
1261	1128	大沢山温泉	おおさわやまおんせん	新潟県南魚沼郡塩沢町大沢			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	50216	\N
1262	1129	上野鉱泉	うわのこうせん	新潟県南魚沼郡塩沢町上野			南魚沼・十日町・津南（六日町）	南魚沼（塩沢・六日町）	単純温泉	\N	\N	\N	\N
1263	1130	越後湯沢温泉	えちごゆざわおんせん	新潟県南魚沼郡湯沢町湯沢			湯沢・苗場	湯沢	塩化物泉	\N	\N	50217	\N
1264	1131	貝掛温泉	かいかけおんせん	新潟県南魚沼郡湯沢町三俣字貝掛			湯沢・苗場	苗場・かぐら	硫黄泉	\N	\N	50474	\N
1265	1132	赤湯温泉	あかゆおんせん	新潟県南魚沼郡湯沢町三国			湯沢・苗場	苗場・かぐら	単純温泉	\N	\N	\N	\N
1266	1133	清津峡温泉瀬戸口の湯	きよつきょうおんせんせとぐちのゆ	新潟県中魚沼郡中里村西田尻			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫黄泉	\N	\N	50211	\N
1267	1134	清津峡小出温泉	きよつきょうこいでおんせん	新潟県中魚沼郡中里村小出			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫黄泉	\N	\N	\N	\N
1268	1135	グリーンピア津南温泉	ぐりーんぴあつなんおんせん	新潟県中魚沼郡津南町秋成			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	50212	\N
1269	1136	逆巻温泉	さかまきおんせん	新潟県中魚沼郡津南町秋山郷			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	ナトリウム塩化物泉	\N	\N	\N	\N
1270	1137	鹿渡温泉	しかわたりおんせん	新潟県中魚沼郡津南町鹿渡			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	弱アルカリ性低張性泉	\N	\N	\N	\N
1271	1138	辰の口温泉	たつのくちおんせん	新潟県中魚沼郡津南町辰の口			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	\N	\N
1272	1139	小下里温泉	こさがりおんせん	新潟県中魚沼郡津南町小下里			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	\N	\N
1273	1140	田中温泉	たなかおんせん	新潟県中魚沼郡津南町田中			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	硫黄泉	\N	\N	\N	\N
1274	1141	宮野原温泉	みやのはらおんせん	新潟県中魚沼郡津南町宮野原			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	単純温泉	\N	\N	\N	\N
1275	1142	松之山温泉	まつのやまおんせん	新潟県東頸城郡松之山町湯本			南魚沼・十日町・津南（六日町）	十日町・津南・松之山	塩化物泉	\N	\N	50213	\N
1276	1143	月湯女温泉	つきゆめおんせん	新潟県刈羽郡高柳町山中			柏崎・寺泊・長岡・魚沼（湯之谷）	柏崎	単純温泉	\N	\N	\N	\N
1277	1144	大山温泉	おおやまおんせん	新潟県東頸城郡大島村田麦			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1278	1145	栃窪温泉	とちくぼおんせん	新潟県中頸城郡柿崎町栃窪			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1279	1146	鵜の浜温泉	うのはまおんせん	新潟県中頸城郡大潟町九戸浜			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	50224	\N
1280	1147	宇津俣温泉	うつまたおんせん	新潟県東頸城郡牧村宇津俣			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1281	1148	松ヶ峯温泉	まつがみねおんせん	新潟県中頸城郡中郷村松ヶ峯			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	\N	\N
1282	1149	天然温泉金泉の湯	てんねんおんせん　きんせんのゆ	新潟県妙高市桶海1090			上越・糸魚川・妙高	上越・妙高・鵜の浜	硫黄泉	\N	\N	50732	\N
1283	1150	関温泉	せきおんせん	新潟県中頸城郡妙高村関山			上越・糸魚川・妙高	上越・妙高・鵜の浜	単純温泉	\N	\N	\N	\N
1284	1151	燕温泉	つばめおんせん	新潟県中頸城郡妙高村関山			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	50225	\N
1285	1152	赤倉温泉	あかくらおんせん	新潟県中頸城郡妙高高原町赤倉			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	50226	\N
1286	1153	池ノ平温泉	いけのたいらおんせん	新潟県中頸城郡妙高高原町池の平			上越・糸魚川・妙高	上越・妙高・鵜の浜	硫黄泉	\N	\N	50227	\N
1287	1154	妙高温泉	みょうこうおんせん	新潟県中頸城郡妙高高原町妙高			上越・糸魚川・妙高	上越・妙高・鵜の浜	塩化物泉	\N	\N	50228	\N
1288	1155	島道鉱泉	しまみちこうせん	新潟県西頚城郡能生町島道			上越・糸魚川・妙高	糸魚川	アルカリ単純泉	\N	\N	\N	\N
1289	1156	柵口温泉	ませぐちおんせん	新潟県西頚城郡能生町柵口			上越・糸魚川・妙高	糸魚川	硫黄泉	\N	\N	\N	\N
1290	1157	笹倉温泉	ささくらおんせん	新潟県糸魚川市大平5804			上越・糸魚川・妙高	糸魚川	鉱泉	\N	\N	50636	\N
1291	1158	雨飾温泉	あまかざりおんせん	新潟県糸魚川市大字山寺梶山新湯			上越・糸魚川・妙高	糸魚川	含鉄泉	\N	\N	\N	\N
1292	1159	糸魚川温泉	いといがわおんせん	新潟県糸魚川市大野２９８－１			上越・糸魚川・妙高	糸魚川	硫酸塩泉	\N	\N	50514	\N
1293	1160	白馬温泉	はくばおんせん	新潟県糸魚川市大所			上越・糸魚川・妙高	糸魚川	炭酸水素塩泉	\N	\N	\N	\N
1294	1161	蒲原温泉	がまわらおんせん	新潟県糸魚川市大所			上越・糸魚川・妙高	糸魚川	硫黄泉	\N	\N	\N	\N
1295	1175	境鉱泉	さかいこうせん	富山県下新川郡朝日町境			立山・黒部・宇奈月	宇奈月・黒部	含鉄泉	\N	\N	\N	\N
1296	1176	宮崎鉱泉	みやざきこうせん	富山県下新川郡朝日町宮崎			立山・黒部・宇奈月	宇奈月・黒部	含鉄泉	\N	\N	\N	\N
1297	1177	小川温泉元湯	おがわおんせんもとゆ	富山県下新川郡朝日町山崎湯の瀬			立山・黒部・宇奈月	宇奈月・黒部	塩化物泉	\N	\N	\N	\N
1298	1178	明日温泉	あけびおんせん	富山県下新川郡入善町舟見			立山・黒部・宇奈月	宇奈月・黒部	炭酸水素塩泉	\N	\N	\N	\N
1299	1179	宇奈月温泉	うなづきおんせん	富山県下新川郡宇奈月町			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	50235	\N
1300	1180	黒薙温泉	くろなぎおんせん	富山県下新川郡宇奈月町黒薙			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1301	1181	鐘釣温泉	かねつりおんせん	富山県下新川郡宇奈月町黒部国有林地内			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1302	1182	欅平温泉	けやきだいらおんせん	富山県下新川郡宇奈月町欅平			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1303	1183	名剣温泉	めいけんおんせん	富山県下新川郡宇奈月町黒部奥山			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1304	1184	祖母谷温泉	ばばだにおんせん	富山県下新川郡宇奈月町祖母谷			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1305	1185	阿曽原温泉	あぞはらおんせん	富山県下新川郡宇奈月町阿曽原			立山・黒部・宇奈月	宇奈月・黒部	単純温泉	\N	\N	\N	\N
1306	1186	地獄谷温泉	じごくだにおんせん	富山県中新川郡立山町芦峅寺			立山・黒部・宇奈月	立山	硫黄泉	\N	\N	\N	\N
1307	1187	みくりが池温泉	みくりがいけおんせん	富山県中新川郡立山町室堂平			立山・黒部・宇奈月	立山	硫黄泉	\N	\N	\N	\N
1308	1188	生地温泉	いくじおんせん	富山県黒部市生地吉田新			立山・黒部・宇奈月	宇奈月・黒部	塩化物泉	\N	\N	\N	\N
1309	1189	金太郎温泉	きんたろうおんせん	富山県魚津市天神野新			立山・黒部・宇奈月	滑川・魚津	硫黄泉	\N	\N	50236	\N
1310	1190	天神山温泉	てんじんやまおんせん	富山県魚津市小川寺			立山・黒部・宇奈月	滑川・魚津	塩化物泉	\N	\N	\N	\N
1311	1191	北山鉱泉	きたやまこうせん	富山県魚津市北山			立山・黒部・宇奈月	滑川・魚津	塩化物泉	\N	\N	50237	\N
1312	1192	湯神子温泉	ゆみこおんせん	富山県中新川郡上市町湯神子			立山・黒部・宇奈月	立山	単純温泉	\N	\N	\N	\N
1313	1193	亀谷温泉	かめがいおんせん	富山県上新川郡大山町亀谷			立山・黒部・宇奈月	立山	硫黄泉	\N	\N	\N	\N
1314	1194	粟巣野温泉	あわすのおんせん	富山県上新川郡大山町粟巣野			立山・黒部・宇奈月	立山	単純温泉	\N	\N	50239	\N
1315	1195	富山温泉	とやまおんせん	富山県富山市窪新町			富山	富山・八尾	単純温泉	\N	\N	50239	\N
1316	1196	鯰第一温泉	なまずだいいちおんせん	富山県富山市四方荒屋			富山	富山・八尾	含鉄泉	\N	\N	\N	\N
1318	1198	雨晴温泉	あまはらしおんせん	富山県高岡市太田８８－１			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1319	1199	岩井戸温泉	いわいどおんせん	富山県氷見市波			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1320	1200	ひみ阿尾の浦温泉	ひみあおのうらおんせん	富山県氷見市阿尾			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1321	1201	氷見九殿浜温泉	ひみくでんはまおんせん	富山県氷見市姿			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	50542	\N
1322	1202	桑ノ院鉱泉	くわのいんこうせん	富山県氷見市桑院			高岡・氷見・砺波	氷見・高岡	塩化物泉	\N	\N	\N	\N
1323	1203	宮島温泉	みやじまおんせん	富山県小矢部市名ヶ滝			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1324	1204	太閤山温泉	たいこうやまおんせん	富山県射水郡小杉町太閤山			高岡・氷見・砺波	氷見・高岡	含鉄泉	\N	\N	\N	\N
1325	1205	寺尾温泉	てらおおんせん	富山県砺波市井栗谷			高岡・氷見・砺波	小矢部・砺波	硫黄泉	\N	\N	\N	\N
1326	1206	春日温泉	かすがおんせん	富山県上新川郡大沢野町春日			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1327	1207	越中八尾温泉	えつちゅうやつおおんせん	富山県婦負郡八尾町高熊			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1328	1208	音川温泉	おとがわおんせん	富山県婦負郡婦中町牛滑			富山	富山・八尾	単純温泉	\N	\N	\N	\N
1329	1209	山田温泉	やまだおんせん	富山県婦負郡山田村湯			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1330	1210	雄神温泉	おがみおんせん	富山県砺波市上中野			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1331	1211	庄川温泉郷	しょうがわおんせんごう	富山県東礪波郡庄川町金屋			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	50241	\N
1332	1212	薬師温泉	やくしおんせん	富山県東礪波郡庄川町金屋			高岡・氷見・砺波	小矢部・砺波	二酸化炭素泉	\N	\N	\N	\N
1333	1213	新大牧温泉	しんおおまきおんせん	富山県東礪波郡利賀村下原			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1334	1214	大牧温泉	おおまきおんせん	富山県東礪波郡利賀村大牧			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1335	1215	観音温泉	かんのんおんせん	富山県東礪波郡福野町安居			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1336	1216	安田温泉	やすだおんせん	富山県東礪波郡福野町安居			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1337	1217	高窪温泉	たかくぼおんせん	富山県西礪波郡福光町高窪			高岡・氷見・砺波	小矢部・砺波	放射能泉	\N	\N	\N	\N
1338	1218	湯谷温泉	ゆだにおんせん	富山県西礪波郡福光町湯谷			高岡・氷見・砺波	小矢部・砺波	硫黄泉	\N	\N	\N	\N
1339	1219	ふくみつ華山温泉	ふくみつはなやまおんせん	富山県西礪波郡福光町川西			高岡・氷見・砺波	小矢部・砺波	硫黄泉	\N	\N	50242	\N
1340	1220	川合田温泉	かわいだおんせん	富山県西礪波郡福光町川合田			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1341	1221	法林寺温泉	ほうりんじおんせん	富山県西礪波郡福光町法林寺			高岡・氷見・砺波	小矢部・砺波	塩化物泉	\N	\N	\N	\N
1342	1222	五箇山温泉	ごかやまおんせん	富山県東礪波郡平村田向大平			高岡・氷見・砺波	小矢部・砺波	硫酸塩泉	\N	\N	\N	\N
1343	1223	利賀そばの郷温泉	とがそばのさとおんせん	富山県東礪波郡利賀村坂上			高岡・氷見・砺波	小矢部・砺波	単純温泉	\N	\N	\N	\N
1344	1224	呉羽山温泉	くれはやまおんせん	富山県富山市呉羽町			富山	富山・八尾	単純温泉	\N	\N	50240	\N
1345	1225	青井谷温泉	あおいだにおんせん	富山県射水郡小杉町青井谷			高岡・氷見・砺波	氷見・高岡	単純温泉	\N	\N	\N	\N
1346	1226	桜ヶ池温泉	さくらがいけおんせん	富山県東礪波郡城端町立野原			高岡・氷見・砺波	小矢部・砺波	含鉄泉	\N	\N	\N	\N
1347	1227	牛岳温泉	うしだけおんせん	富山県婦負郡山田村小谷字中根			富山	富山・八尾	塩化物泉	\N	\N	\N	\N
1348	2216	立山山麓温泉	たてやまさんろくおんせん	富山県上新川郡大山町			立山・黒部・宇奈月	立山	塩化物泉	\N	\N	50238	\N
1349	2775	床鍋鉱泉	とこなべこうせん	富山県氷見市床鍋56			高岡・氷見・砺波	氷見・高岡	アルカリ単純泉	\N	\N	50542	\N
1350	3059	越中となみ野温泉	えっちゅうとなみのおんせん	富山県砺波市安川字天皇３３０番地			高岡・氷見・砺波	小矢部・砺波	弱アルカリ性低張性泉	\N	\N	50241	\N
1351	3071	吉峰温泉	よしみねおんせん	富山県中新川郡立山町吉峰野開１２			立山・黒部・宇奈月	立山	炭酸水素塩泉	\N	\N	50238	\N
1352	3078	庄川峡　長崎温泉	しょうがわきょう　ながさきおんせん	富山県南砺市利賀村北原1番１７			高岡・氷見・砺波	小矢部・砺波	その他	\N	\N	50241	\N
1353	3125	五ヶ山温泉	ごかやまおんせん	富山県南砺市田向３３３－１			高岡・氷見・砺波	小矢部・砺波	ナトリウム塩化物泉	\N	\N	50241	\N
1354	3163	アローザ温泉	あろーざおんせん	富山県南砺市才川七荒山9-5 			高岡・氷見・砺波	小矢部・砺波	アルカリ単純泉	\N	\N	50936	\N
1355	3171	こぶしヶ丘温泉	こぶしがおかおんせん	富山県高岡市福岡町五位57－2			高岡・氷見・砺波	氷見・高岡	弱アルカリ性低張性泉	\N	\N	50941	\N
1356	3179	氷見温泉	ひみおんせん	富山県氷見市阿尾45			高岡・氷見・砺波	氷見・高岡	アルカリ単純泉	\N	\N	50542	\N
1357	3199	神通峡岩稲温泉	じんづうきょういわいねおんせん	富山県富山市岩稲字中ノ谷1285			富山	富山・八尾	単純温泉	\N	\N	50239	\N
1358	1228	山代温泉	やましろおんせん	石川県加賀市山代温泉			加賀・小松・辰口	加賀	硫酸塩泉	\N	\N	50249	\N
1359	1229	禄剛崎温泉	ろくごうさきおんせん	石川県珠洲市狼煙町ヲ			輪島・能登	輪島・能登	含鉄泉	\N	\N	\N	\N
1360	1230	葭ヶ浦温泉	よしがうらおんせん	石川県珠洲市三崎町寺家			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1361	1231	広谷温泉	ひろたにおんせん	石川県珠洲市上戸町寺社			輪島・能登	輪島・能登	含鉄泉	\N	\N	\N	\N
1362	1232	谷崎温泉	たにざきおんせん	石川県珠洲市宝立町谷崎			輪島・能登	輪島・能登	含鉄泉	\N	\N	\N	\N
1363	1233	珠洲温泉	すずおんせん	石川県珠洲市宝立町鵜飼			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1364	1234	恋路温泉	こいじおんせん	石川県鳳珠郡能登町恋路海岸			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1365	1235	柳田温泉	やなぎだおんせん	石川県鳳珠郡能登町柳田知部			輪島・能登	輪島・能登	硫酸塩泉	\N	\N	\N	\N
1366	1236	ねぶた温泉	ねぶたおんせん	石川県輪島市大野町鶴ヶ池			輪島・能登	輪島・能登	単純温泉	\N	\N	50248	\N
1367	1237	湯川温泉	ゆがわおんせん	石川県七尾市湯川町			和倉・七尾	和倉・七尾	塩化物泉	\N	\N	\N	\N
1368	1238	赤崎温泉	あかさきおんせん	石川県七尾市大田町			和倉・七尾	和倉・七尾	塩化物泉	\N	\N	\N	\N
1369	1239	和倉温泉	わくらおんせん	石川県七尾市和倉町			和倉・七尾	和倉・七尾	塩化物泉	\N	\N	50246	\N
1370	1240	能登中島温泉	のとなかじまおんせん	石川県七尾市中島町塩津			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1371	1241	志賀の郷温泉	しかのさとおんせん	石川県羽咋郡志賀町矢蔵谷			輪島・能登	輪島・能登	塩化物泉	\N	\N	50778	\N
1372	1242	倶利伽羅温泉	くりからおんせん	石川県河北郡津幡町坂戸			金沢・羽咋	羽咋・かほく	硫黄泉	\N	\N	\N	\N
1373	1243	津幡温泉	つばたおんせん	石川県河北郡津幡町庄			金沢・羽咋	羽咋・かほく	単純温泉	\N	\N	\N	\N
1374	1244	内灘砂丘放水路温泉	うちなださきゅうほうすいろおんせん	石川県河北郡内灘町宮坂			金沢・羽咋	羽咋・かほく	塩化物泉	\N	\N	\N	\N
1375	1245	森本温泉	もりもとおんせん	石川県金沢市観法寺町			金沢・羽咋	金沢・湯涌	炭酸水素塩泉	\N	\N	\N	\N
1376	1246	深谷温泉	ふかたにおんせん	石川県金沢市深谷町チ95			金沢・羽咋	金沢・湯涌	ナトリウム塩化物泉	\N	\N	50889	\N
1377	1248	白鳥路温泉	はくちょうろおんせん	石川県金沢市丸の内			金沢・羽咋	金沢・湯涌	炭酸水素塩泉	\N	\N	\N	\N
1378	1249	犀川峡金沢温泉	さいがわきょうかなざわおんせん	石川県金沢市末町			金沢・羽咋	金沢・湯涌	硫黄泉	\N	\N	\N	\N
1379	1250	湯涌温泉	ゆわくおんせん	石川県金沢市湯涌町			金沢・羽咋	金沢・湯涌	塩化物泉	\N	\N	50605	\N
1380	1251	鶴来温泉	つるぎおんせん	石川県白山市鶴来日詰町			白山	白山	硫酸塩泉	\N	\N	50254	\N
1381	1252	辰口温泉	たつのくちおんせん	石川県能美市辰口町			加賀・小松・辰口	粟津・小松・辰口	塩化物泉	\N	\N	50244	\N
1382	1253	美川温泉	みかわおんせん	石川県白山市			白山	白山	含鉄泉	\N	\N	\N	\N
1383	1254	涌泉寺温泉	ゆうせんじおんせん	石川県小松市みどり町			加賀・小松・辰口	粟津・小松・辰口	単純温泉	\N	\N	\N	\N
1384	1255	赤穂谷温泉	あかほだにおんせん	石川県小松市中海町			加賀・小松・辰口	粟津・小松・辰口	塩化物泉	\N	\N	\N	\N
1385	1256	加賀八幡温泉	かがやわたおんせん	石川県小松市加賀八幡			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1386	1257	木場温泉	きばおんせん	石川県小松市木場町			加賀・小松・辰口	粟津・小松・辰口	単純温泉	\N	\N	\N	\N
1387	1258	粟津温泉	あわづおんせん	石川県小松市粟津町			加賀・小松・辰口	粟津・小松・辰口	塩化物泉	\N	\N	50250	\N
1388	1259	瀬領温泉	せりょうおんせん	石川県小松市瀬領温泉			加賀・小松・辰口	粟津・小松・辰口	二酸化炭素泉	\N	\N	\N	\N
1389	1260	赤瀬温泉	あかぜおんせん	石川県小松市赤瀬町			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1390	1261	手取温泉	てどりおんせん	石川県白山市上野町			白山	白山	硫酸塩泉	\N	\N	\N	\N
1391	1262	千丈温泉	せんじょうおんせん	石川県白山市河内町内尾口65番地			白山	白山	単純温泉	\N	\N	50886	\N
1392	1263	中宮温泉	ちゅうぐうおんせん	石川県白山市中宮			白山	白山	塩化物泉	\N	\N	\N	\N
1393	1264	新岩間温泉	しんいわまおんせん	石川県白山市尾添			白山	白山	アルカリ単純泉	\N	\N	\N	\N
1394	1265	白山一里野温泉	はくさんいちりのおんせん	石川県白山市尾添			白山	白山	塩化物泉	\N	\N	50255	\N
1395	1266	白峰温泉	しらみねおんせん	石川県白山市白峰			白山	白山	塩化物泉	\N	\N	50256	\N
1396	1267	片山津温泉	かたやまづおんせん	石川県加賀市片山津温泉			加賀・小松・辰口	加賀	塩化物泉	\N	\N	50251	\N
1397	1268	加賀橋立温泉	かがはしだておんせん	石川県加賀市橋立町			加賀・小松・辰口	加賀	炭酸水素塩泉	\N	\N	\N	\N
1398	1269	加賀三谷温泉	かがみたにおんせん	石川県加賀市直下			加賀・小松・辰口	加賀	塩化物泉	\N	\N	\N	\N
1399	1270	山中温泉	やまなかおんせん	石川県江沼郡山中町西桂木町			加賀・小松・辰口	加賀	塩化物泉	\N	\N	50252	\N
1400	1271	うさみ温泉	うさみおんせん	石川県小松市大領町			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1401	1272	小松温泉	こまつおんせん	石川県小松市本折町			加賀・小松・辰口	粟津・小松・辰口	単純温泉	\N	\N	50253	\N
1402	1273	小松グリーン温泉	こまつぐりーんおんせん	石川県小松市小島町			加賀・小松・辰口	粟津・小松・辰口	硫酸塩泉	\N	\N	\N	\N
1403	1274	サンピア小松温泉	さんぴあこまつおんせん	石川県小松市長崎町			加賀・小松・辰口	粟津・小松・辰口	中性低張性高温泉	\N	\N	\N	\N
1404	1275	能登金剛温泉	のとこんごうおんせん	石川県羽咋郡志賀町富来生神			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1405	1276	門前温泉じんのびの湯	もんぜんじんのびのゆ	石川県鳳至郡門前町千代			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1406	1277	杉平鉱泉	すぎひらこうせん	石川県輪島市杉平町矢田			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1407	1278	湯元能登輪島温泉	ゆもとのとわじまおんせん	石川県輪島市塚田町			輪島・能登	輪島・能登	塩化物泉	\N	\N	50247	\N
1408	1279	輪島温泉郷	わじまおんせんきょう	石川県輪島市河井町			輪島・能登	輪島・能登	放射能泉	\N	\N	50248	\N
1409	2471	金沢松島温泉	かなざわまつしまおんせん	石川県金沢市松島町17			金沢・羽咋	金沢・湯涌	含鉄泉	\N	\N	\N	\N
1410	2535	ひょっこり温泉	ひょっこりおんせん	石川県鹿島郡能登町字向田3部1番地			輪島・能登	輪島・能登	塩化物泉	\N	\N	\N	\N
1411	2690	サウナ片町温泉	さうなかたまちおんせん	石川県金沢市片町１－５－２４			金沢・羽咋	金沢・湯涌	塩化物泉	\N	\N	50486	\N
1412	2860	瀬女温泉	せなおんせん	石川県白山市瀬戸卯４３－３			白山	白山	ナトリウム塩化物泉	\N	\N	50693	\N
1413	2861	柴山温泉	しばやまおんせん	石川県加賀市柴山町と5番地１			加賀・小松・辰口	加賀	ナトリウム塩化物泉	\N	\N	50694	\N
1414	2877	金沢駅前温泉	かなざわえきまえおんせん	石川県金沢市堀川新町2-25			金沢・羽咋	金沢・湯涌	その他	\N	\N	50709	\N
1415	2878	千里浜やわらぎ温泉	ちりはまやわらぎおんせん	石川県羽咋郡宝達志水町敷浪5号48-2			金沢・羽咋	羽咋・かほく	ナトリウム塩化物泉	\N	\N	50710	\N
1416	2889	はまなす温泉	はまなすおんせん	石川県羽咋市千里浜町タ1番26			金沢・羽咋	羽咋・かほく	硫酸塩泉	\N	\N	50719	\N
1417	2896	なかじま猿田彦温泉	なかじまさるたひこおんせん	石川県七尾市中島町小牧井部55番地			和倉・七尾	和倉・七尾	ナトリウム塩化物泉	\N	\N	50729	\N
1418	2958	観音温泉	かんのんおんせん	石川県加賀市作見町観音山１－１			加賀・小松・辰口	加賀	ナトリウム塩化物泉	\N	\N	50785	\N
1419	3023	なみなみの湯	なみなみのゆ	石川県羽咋市羽咋町オ70			金沢・羽咋	羽咋・かほく	ナトリウム塩化物泉	\N	\N	50843	\N
1420	3025	寺井温泉	てらいおんせん	石川県能美市石子町ハ147番地1			加賀・小松・辰口	粟津・小松・辰口	炭酸水素塩泉	\N	\N	50844	\N
1421	3076	松任ＣＣＺ温泉	まっとうしーしーぜっとおんせん	石川県白山市徳光町3149番地1			白山	白山	ナトリウム塩化物泉	\N	\N	50885	\N
1422	3106	白山里温泉	はくさんりおんせん	石川県白山市瀬波子51-5			白山	白山	炭酸水素塩泉	\N	\N	50898	\N
1423	3114	岩間温泉	いわまおんせん	石川県白山市尾添ム４－１			白山	白山	ナトリウム塩化物泉	\N	\N	50902	\N
1424	3189	金沢藤江温泉	かなざわふじえおんせん	石川県金沢市藤江南3丁目23番地1			金沢・羽咋	金沢・湯涌	ナトリウム塩化物泉	\N	\N	50951	\N
1425	3200	能登黒川温泉	のとくろかわおんせん	石川県鳳珠郡能登町字黒川7-4-2			輪島・能登	輪島・能登	ナトリウム塩化物泉	\N	\N	50248	\N
1426	1280	越前玉川温泉	えちぜんたまがわおんせん	福井県丹生郡越前町玉川			越前	越前	単純温泉	\N	\N	50257	\N
1427	1281	越前厨温泉	えちぜんくりやおんせん	福井県丹生郡越前町厨地区の温泉			越前	越前	炭酸水素塩泉	\N	\N	50257	\N
1428	1282	東尋坊温泉	とうじんぼうおんせん	福井県坂井郡三国町緑ガ丘			三国・あわら	三国	アルカリ単純泉	\N	\N	50668	\N
1429	1283	あわら温泉	あわらおんせん	福井県坂井郡芦原町温泉			三国・あわら	あわら	塩化物泉	\N	\N	50261	\N
1430	1284	佐野温泉	さのおんせん	福井県福井市佐野町			福井・奥越前	福井・鯖江	硫酸塩泉	\N	\N	\N	\N
1431	1285	大安寺温泉	だいあんじおんせん	福井県福井市天菅生町			福井・奥越前	福井・鯖江	単純温泉	\N	\N	\N	\N
1432	1286	福井ならはら温泉	ふくいならはらおんせん	福井県福井市南楢原町字春日平			福井・奥越前	福井・鯖江	単純温泉	\N	\N	50258	\N
1433	1287	杉山温泉	すぎやまおんせん	福井県勝山市北谷町杉山			福井・奥越前	奥越前・池田	放射能泉	\N	\N	\N	\N
1434	1288	横倉鉱泉	よこくらこうせん	福井県勝山市郡町			福井・奥越前	奥越前・池田	含鉄泉	\N	\N	\N	\N
1435	1289	勝山温泉	かつやまおんせん	福井県勝山市片瀬町			福井・奥越前	奥越前・池田	含鉄泉	\N	\N	50263	\N
1436	1290	鳩ヶ湯温泉	はとがゆおんせん	福井県大野市上打波			福井・奥越前	奥越前・池田	塩化物泉	\N	\N	\N	\N
1437	1291	美山森林温泉	みやましんりんおんせん	福井県足羽郡美山町市波			福井・奥越前	福井・鯖江	硫黄泉	\N	\N	\N	\N
1438	1292	上河内鉱泉	かみこうちこうせん	福井県鯖江市上河内町			福井・奥越前	福井・鯖江	硫酸塩泉	\N	\N	\N	\N
1439	1293	渓流温泉	けいりゅうおんせん	福井県今立郡池田町志津原			福井・奥越前	奥越前・池田	含鉄泉	\N	\N	\N	\N
1440	1294	三六温泉	さんろくおんせん	福井県鯖江市神明町			福井・奥越前	福井・鯖江	炭酸水素塩泉	\N	\N	\N	\N
1441	1295	天谷鉱泉	あまだにこうせん	福井県丹生郡朝日町天谷			越前	越前	単純温泉	\N	\N	\N	\N
1442	1296	織田温泉	おたおんせん	福井県丹生郡織田町織田			越前	越前	硫酸塩泉	\N	\N	\N	\N
1443	1297	敦賀トンネル温泉	つるがとんねるおんせん	福井県敦賀市吉河			若狭	敦賀・若狭	放射能泉	\N	\N	50876	\N
1444	1298	美浜温泉	みはまおんせん	福井県美方郡美浜町久々子			若狭	敦賀・若狭	硫黄泉	\N	\N	\N	\N
1445	1299	虹岳島温泉	こがしまおんせん	福井県三方郡三方町気山切追			若狭	敦賀・若狭	放射能泉	\N	\N	\N	\N
1446	1300	三方五湖ラドン温泉	みかたごこらどんおんせん	福井県三方郡三方町生倉			若狭	敦賀・若狭	炭酸水素塩泉	\N	\N	\N	\N
1447	1301	河内温泉	かわちおんせん	福井県遠敷郡上中町河内			若狭	敦賀・若狭	放射能泉	\N	\N	\N	\N
1448	1302	丸岡温泉	まるおかおんせん	福井県坂井郡丸岡町山竹田			三国・あわら	三国	硫黄泉	\N	\N	\N	\N
1449	1303	九頭竜温泉	くずりゅうおんせん	福井県大野郡和泉村下山			福井・奥越前	奥越前・池田	硫酸塩泉	\N	\N	\N	\N
1450	2253	三国温泉	みくにおんせん	福井県坂井郡三国町宿			三国・あわら	三国	単純温泉	\N	\N	50262	\N
1451	2331	鷹巣温泉	たかすおんせん	福井県福井市蓑町22字17番1			福井・奥越前	福井・鯖江	ナトリウム塩化物泉	\N	\N	50259	\N
1452	2379	福井温泉	ふくいおんせん	福井県福井市順化1-2003			福井・奥越前	福井・鯖江	硫酸塩泉	\N	\N	50260	\N
1453	2932	北潟温泉	きたがたおんせん	福井県あわら市北潟211			三国・あわら	あわら	アルカリ単純泉	\N	\N	50761	\N
1454	2968	花はす温泉	はなはすおんせん	福井県越前市南越前町中小屋60-1			越前	越前	アルカリ単純泉	\N	\N	50792	\N
1455	2999	かわだ温泉	かわだおんせん	福井県鯖江市上河内町１９－３７－２			福井・奥越前	福井・鯖江	塩化物泉	\N	\N	50815	\N
1456	3063	天然みかた温泉	てんねんみかたおんせん	福井県三方上中郡若狭町中央1号5番地			若狭	敦賀・若狭	その他	\N	\N	50876	\N
1457	3242	越前南部温泉	えちぜんなんぶおんせん	福井県丹生郡越前町高佐32-13-1			越前	越前	炭酸鉄泉	\N	\N	50257	\N
1458	3320	浄土寺温泉	じょうどじおんせん	福井県勝山市村岡町浄土寺３０－１１			福井・奥越前	奥越前・池田	硫酸塩泉	\N	\N	50263	\N
1459	1637	土肥温泉	といおんせん	静岡県田方郡土肥町土肥			西伊豆	戸田・土肥	硫酸塩泉	\N	\N	50282	\N
1460	1638	伊豆山温泉	いずさんおんせん	静岡県熱海市伊豆山			熱海	熱海	硫酸塩泉	\N	\N	50265	\N
1461	1639	熱海温泉	あたみおんせん	静岡県熱海市熱海			熱海	熱海	塩化物泉	\N	\N	50265	\N
1462	1640	スプリングス温泉	すぷりんぐすおんせん	静岡県田方郡函南町桑原			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1463	1641	竹倉温泉	たけくらおんせん	静岡県三島市竹倉			沼津・三島	三島	含鉄泉	\N	\N	\N	\N
1464	1642	畑毛温泉	はたけおんせん	静岡県田方郡函南町畑毛			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	50288	\N
1465	1643	奈古谷温泉	なごやおんせん	静岡県田方郡韮山町奈古谷			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1466	1644	駒の湯温泉	こまのゆおんせん	静岡県田方郡韮山町奈古谷			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1467	1645	韮山温泉	にらやまおんせん	静岡県田方郡韮山町南条			中伊豆	伊豆長岡・大仁・韮山	単純温泉	\N	\N	\N	\N
1468	1646	伊豆長岡温泉	いずながおかおんせん	静岡県田方郡伊豆長岡町長岡・古奈			中伊豆	伊豆長岡・大仁・韮山	弱アルカリ性低張性泉	\N	\N	50289	\N
1469	1647	網代温泉	あじろおんせん	静岡県熱海市下多賀			熱海	南熱海・多賀・網代	単純温泉	\N	\N	50265	\N
1470	1648	宇佐美温泉	うさみおんせん	静岡県伊東市宇佐美			伊東・宇佐美・川奈	伊豆高原	塩化物泉	\N	\N	50267	\N
1471	1649	伊東温泉	いとうおんせん	静岡県伊東市			伊東・宇佐美・川奈	伊豆高原	硫酸塩泉	\N	\N	50267	\N
1472	1650	白岩温泉	しらいわおんせん	静岡県田方郡中伊豆町上白岩			中伊豆	修善寺・天城湯ヶ島・中伊豆	塩化物泉	\N	\N	50290	\N
1473	1651	柳瀬温泉	やなせおんせん	静岡県田方郡中伊豆町八幡			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	\N	\N
1474	1652	大仁温泉	おおひとおんせん	静岡県田方郡大仁町大仁			中伊豆	伊豆長岡・大仁・韮山	塩化物泉	\N	\N	\N	\N
1475	1653	修善寺温泉	しゅぜんじおんせん	静岡県田方郡修善寺町修善寺			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50291	\N
1476	1654	月ヶ瀬温泉	つきがせおんせん	静岡県田方郡天城湯ヶ島町月ヶ瀬			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50789	\N
1477	1655	船原温泉	ふなばらおんせん	静岡県田方郡天城湯ヶ島町上船原			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50292	\N
1478	1656	吉奈温泉	よしなおんせん	静岡県伊豆市吉奈101			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50292	\N
1479	1657	嵯峨沢温泉	さがさわおんせん	静岡県嵯峨沢温泉			中伊豆	修善寺・天城湯ヶ島・中伊豆	塩化物泉	\N	\N	50292	\N
1480	1658	湯ヶ島温泉	ゆがしまおんせん	静岡県田方郡天城湯ヶ島町湯ヶ島			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	50292	\N
1481	1659	伊豆高原温泉	いずこうげんおんせん	静岡県伊東市八幡野			伊豆高原	伊豆高原	硫酸塩泉	\N	\N	50268	\N
1482	1661	伊豆城ヶ崎温泉	いずじょうがさきおんせん	静岡県伊東市富戸			伊豆高原	伊豆高原	単純温泉	\N	\N	50269	\N
1483	1662	浮山温泉郷	うきやまおんせんきょう	静岡県伊東市八幡野			伊豆高原	伊豆高原	その他	\N	\N	50454	\N
1484	1663	赤沢温泉	あかざわおんせん	静岡県伊東市赤沢			伊豆高原	伊豆高原	単純温泉	\N	\N	50270	\N
1485	1664	大川温泉	おおかわおんせん	静岡県賀茂郡東伊豆町大川			東伊豆	大川・北川・熱川	硫酸塩泉	\N	\N	50271	\N
1486	1665	北川温泉	ほっかわおんせん	静岡県賀茂郡東伊豆町奈良本			東伊豆	大川・北川・熱川	単純温泉	\N	\N	50272	\N
1487	1666	熱川温泉	あたがわおんせん	静岡県賀茂郡東伊豆町奈良本			東伊豆	大川・北川・熱川	塩化物泉	\N	\N	50273	\N
1488	1667	白田温泉	しらだおんせん	静岡県賀茂郡東伊豆町白田			東伊豆	片瀬・白田	単純温泉	\N	\N	50274	\N
1489	1668	片瀬温泉	かたせおんせん	静岡県賀茂郡東伊豆町片瀬			東伊豆	片瀬・白田	塩化物泉	\N	\N	50274	\N
1490	1669	稲取温泉	いなとりおんせん	静岡県賀茂郡東伊豆町稲取			東伊豆	稲取	単純温泉	\N	\N	50275	\N
1491	1670	今井浜温泉	いまいはまおんせん	静岡県賀茂郡河津町今井浜			東伊豆	河津・今井浜	単純温泉	\N	\N	50276	\N
1492	1671	河津浜温泉	かわづはまおんせん	静岡県賀茂郡河津町浜			東伊豆	河津・今井浜	塩化物泉	\N	\N	50277	\N
1493	1672	谷津温泉	やつおんせん	静岡県賀茂郡河津町谷津			東伊豆	河津・今井浜	塩化物泉	\N	\N	50277	\N
1494	1673	峰温泉	みねおんせん	静岡県賀茂郡河津町峰			東伊豆	河津・今井浜	硫酸塩泉	\N	\N	50277	\N
1495	1674	湯ヶ野温泉	ゆがのおんせん	静岡県賀茂郡河津町湯ヶ野			東伊豆	河津・今井浜	塩化物泉	\N	\N	50277	\N
1496	1675	小鍋温泉	こなべおんせん	静岡県賀茂郡河津町小鍋			東伊豆	河津・今井浜	硫酸塩泉	\N	\N	\N	\N
1497	1676	大滝・七滝温泉	おおだる・ななだるおんせん	静岡県賀茂郡河津町梨本			東伊豆	河津・今井浜	塩化物泉	\N	\N	50278	\N
1498	1677	宇久須温泉	うぐすおんせん	静岡県賀茂郡賀茂村宇久須			西伊豆	堂ヶ島・宇久須	塩化物泉	\N	\N	50284	\N
1499	1678	禰宜ノ畑温泉	ねぎのはたおんせん	静岡県賀茂郡西伊豆町大沢里			西伊豆	堂ヶ島・宇久須	単純温泉	\N	\N	\N	\N
1500	1679	猪乃湯温泉	いのゆおんせん	静岡県賀茂郡西伊豆町大沢里			西伊豆	堂ヶ島・宇久須	塩化物泉	\N	\N	\N	\N
1501	1680	浮島温泉	ふとうおんせん	静岡県賀茂郡西伊豆町浮島			西伊豆	堂ヶ島・宇久須	硫酸塩泉	\N	\N	\N	\N
1502	1681	堂ヶ島温泉	どうがしまおんせん	静岡県賀茂郡西伊豆町仁科堂ヶ島			西伊豆	堂ヶ島・宇久須	塩化物泉	\N	\N	50285	\N
1503	1682	大沢温泉	おおさわおんせん	静岡県賀茂郡松崎町大沢			西伊豆	松崎・雲見	単純温泉	\N	\N	\N	\N
1504	1683	桜田温泉	さくらだおんせん	静岡県賀茂郡松崎町桜田			西伊豆	松崎・雲見	塩化物泉	\N	\N	50721	\N
1505	1684	松崎温泉	まつざきおんせん	静岡県賀茂郡松崎町			西伊豆	松崎・雲見	塩化物泉	\N	\N	50286	\N
1506	1685	岩地温泉	いわちおんせん	静岡県賀茂郡松崎町岩地			西伊豆	松崎・雲見	塩化物泉	\N	\N	\N	\N
1507	1686	雲見温泉	くもみおんせん	静岡県賀茂郡松崎町雲見			西伊豆	松崎・雲見	塩化物泉	\N	\N	50287	\N
1508	1687	石部温泉	いしぶおんせん	静岡県賀茂郡松崎町石部			西伊豆	松崎・雲見	塩化物泉	\N	\N	\N	\N
1509	1688	観音温泉	かんのんおんせん	静岡県下田市横川			下田・白浜	下田・白浜	硫酸塩泉	\N	\N	50842	\N
1510	1689	横川温泉	よこかわおんせん	静岡県下田市横川			下田・白浜	下田・白浜	硫酸塩泉	\N	\N	\N	\N
1511	1690	蓮台寺温泉	れんだいじおんせん	静岡県下田市蓮台寺河内			下田・白浜	下田・白浜	硫酸塩泉	\N	\N	50841	\N
1512	1691	下田温泉	しもだおんせん	静岡県下田市柿崎			下田・白浜	下田・白浜	塩化物泉	\N	\N	50279	\N
1513	1692	弓ヶ浜温泉	ゆみがはまおんせん	静岡県賀茂郡南伊豆町湊			南伊豆	弓ヶ浜	硫酸塩泉	\N	\N	50280	\N
1514	1693	下賀茂温泉	しもかもおんせん	静岡県賀茂郡南伊豆町下賀茂			南伊豆	下賀茂	硫酸塩泉	\N	\N	50281	\N
1515	1694	伊豆湯河原温泉	いずゆがわらおんせん	静岡県熱海市泉			熱海	熱海	硫酸塩泉	\N	\N	\N	\N
1516	1695	原温泉	はらおんせん	静岡県沼津市原			沼津・三島	沼津	硫酸塩泉	\N	\N	\N	\N
1517	1697	梅ヶ島金山温泉	うめがしまきんざんおんせん	静岡県静岡市梅ヶ島			静岡・清水	静岡	塩化物泉	\N	\N	\N	\N
1518	1698	コンヤ温泉	こんやおんせん	静岡県静岡市葵区梅ヶ島			静岡・清水	静岡	塩化物泉	\N	\N	50614	\N
1519	1699	接岨峡温泉	せっそきょうおんせん	静岡県榛原郡本川根町梅地			大井川・寸又峡・川根	大井川・寸又峡・川根	塩化物泉	\N	\N	\N	\N
1520	1700	寸又峡温泉	すまたきょうおんせん	静岡県榛原郡本川根町寸又峡			大井川・寸又峡・川根	大井川・寸又峡・川根	単純温泉	\N	\N	50300	\N
1521	1701	白沢温泉	しらさわおんせん	静岡県榛原郡本川根町奥泉			大井川・寸又峡・川根	大井川・寸又峡・川根	単純温泉	\N	\N	\N	\N
1522	1702	わらびの温泉	わらびのおんせん	静岡県静岡市蕨野			静岡・清水	静岡	単純温泉	\N	\N	\N	\N
1523	1703	油山温泉	ゆやまおんせん	静岡県静岡市油山			静岡・清水	静岡	単純温泉	\N	\N	50298	\N
1524	1704	平山温泉	ひらやまおんせん	静岡県静岡市平山			静岡・清水	静岡	塩化物泉	\N	\N	\N	\N
1525	1705	北沼上温泉	きたぬまかみおんせん	静岡県静岡市主長尾			静岡・清水	静岡	塩化物泉	\N	\N	\N	\N
1526	1706	やいづ黒潮温泉	やいづくろしおおんせん	静岡県焼津市本町・栄町・浜当目			焼津・御前崎	焼津	硫酸塩泉	\N	\N	50299	\N
1527	1707	志太温泉	しだおんせん	静岡県藤枝市志太600-2-2			焼津・御前崎	藤枝	硫黄泉	\N	\N	50628	\N
1528	1708	倉真温泉	くらみおんせん	静岡県掛川市倉真			磐田・袋井・掛川	掛川	炭酸水素塩泉	\N	\N	50638	\N
1529	1709	法泉寺温泉	ほうせんじおんせん	静岡県掛川市上西郷			磐田・袋井・掛川	掛川	硫黄泉	\N	\N	50639	\N
1530	1710	渋川温泉	しぶかわおんせん	静岡県引佐郡引佐町渋川			浜松・浜名湖	浜名湖	炭酸水素塩泉	\N	\N	\N	\N
1531	1711	三ヶ日温泉	みつかびおんせん	静岡県引佐郡三ヶ日町下尾奈字瀬戸			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	50294	\N
1532	1712	舘山寺温泉	かんざんじおんせん	静岡県浜松市舘山寺町			浜松・浜名湖	浜松・浜北	炭酸水素塩泉	\N	\N	50295	\N
1533	1713	雄踏温泉	ゆうとうおんせん	静岡県浜名郡雄踏町山崎			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	50296	\N
1534	1714	弁天島温泉	てんてんじまおんせん	静岡県浜名郡舞阪町舞阪弁天島			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	50297	\N
1535	1715	新居浜温泉	あらいはまおんせん	静岡県浜名郡新居町新居弁天			浜松・浜名湖	浜名湖	硫黄泉	\N	\N	\N	\N
1536	2155	戸田温泉	へだおんせん	静岡県田方郡戸田村戸田			西伊豆	戸田・土肥	含鉄泉	\N	\N	50283	\N
1537	2221	掛川つま恋温泉	かけがわつまごいおんせん	静岡県掛川市満水2000			磐田・袋井・掛川	掛川	塩化物泉	\N	\N	50293	\N
1538	2222	小室温泉　混合泉	こむろおんせん　こんごうせん	静岡県伊東市吉田字西初平治山843			伊豆高原	伊豆高原	ナトリウム塩化物泉	\N	\N	50268	\N
1539	2223	修善寺大平温泉	しゅぜんじおおだいらおんせん	静岡県田方郡修善寺町大平			中伊豆	修善寺・天城湯ヶ島・中伊豆	単純温泉	\N	\N	\N	\N
1540	2224	青羽根温泉	あおはねおんせん	静岡県田方郡天城湯ヶ島町青羽根			中伊豆	修善寺・天城湯ヶ島・中伊豆	硫黄泉	\N	\N	\N	\N
1541	2238	梅ヶ島新田温泉	うめがしましんでんおんせん	静岡県静岡市梅ヶ島5342-3			静岡・清水	静岡	単純温泉	\N	\N	\N	\N
1542	2472	須走温泉	すばしりおんせん	静岡県駿東郡小山町須走			御殿場・富士	御殿場	硫黄泉	\N	\N	\N	\N
1543	2473	新稲子川温泉	しんいなこがわおんせん	静岡県富士郡芝川町上稲子1219			御殿場・富士	富士・富士宮・朝霧	単純温泉	\N	\N	\N	\N
1544	2474	静岡温泉	しずおかおんせん	静岡県静岡市篭上			静岡・清水	静岡	単純温泉	\N	\N	\N	\N
1545	2475	西里温泉　やませみの湯	にしさとおんせん　やませみのゆ	静岡県清水市西里			静岡・清水	清水	塩化物泉	\N	\N	\N	\N
1546	2476	御前崎温泉	おまえざきおんせん	静岡市榛原郡御前崎町			焼津・御前崎	御前崎・牧之原	塩化物泉	\N	\N	\N	\N
1547	2477	川根温泉	かわねおんせん	静岡県川根町笠間渡220			大井川・寸又峡・川根	大井川・寸又峡・川根	塩化物泉	\N	\N	\N	\N
1548	2478	大東温泉シートピア	だいとうおんせんしーとぴあ	静岡県小笠郡大東町国安			磐田・袋井・掛川	掛川	塩化物泉	\N	\N	\N	\N
1549	2479	小笠山天然温泉	おがさやまてんねんおんせん	静岡県磐田郡浅羽町諸井			磐田・袋井・掛川	磐田・袋井	硫酸塩泉	\N	\N	\N	\N
1550	2667	混合泉	こんごうせん	静岡県田方郡修善寺町瓜生野４１０－１			中伊豆	修善寺・天城湯ヶ島・中伊豆	ナトリウム塩化物泉	\N	\N	\N	\N
1551	2668	沼津温泉	ぬまづおんせん	静岡県沼津市岡の宮１２６５－３			沼津・三島	沼津	弱アルカリ性低張性泉	\N	\N	\N	\N
1552	2669	中伊豆温泉　志太源泉１号	なかいずおんせん　しだげんせん１ごう	静岡県伊豆市下白岩1434			中伊豆	修善寺・天城湯ヶ島・中伊豆	弱アルカリ性低張性泉	\N	\N	50637	\N
1553	2672	飛図温泉	とびずおんせん	静岡県富士郡芝川町上稲子飛図２４５３－１			御殿場・富士	富士・富士宮・朝霧	その他	\N	\N	50469	\N
1554	2718	沼津駿河の湯	ぬまづするがのゆ	静岡県沼津市岡宮1265-3			沼津・三島	沼津	アルカリ単純泉	\N	\N	\N	\N
1555	2743	口坂本温泉	くちさかもとおんせん	静岡県静岡市口坂本			静岡・清水	静岡	その他	\N	\N	50515	\N
1556	2744	梅ヶ島温泉	うめがしまおんせん	静岡県静岡市梅ヶ島			静岡・清水	静岡	アルカリ単純泉	\N	\N	50513	\N
1557	2768	冷川温泉　冷川5号	ひえかわおんせん　ひえかわごごう	静岡県伊豆市冷川字上尾995-4			中伊豆	修善寺・天城湯ヶ島・中伊豆	ナトリウム塩化物泉	\N	\N	50540	\N
1558	2792	磐田天神の湯	いわたてんじんのゆ	静岡県磐田市岩井2280			磐田・袋井・掛川	磐田・袋井	その他	\N	\N	50612	\N
1559	1742	白川温泉	しらかわおんせん	岐阜県加茂郡白川町河岐			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	硫黄泉	\N	\N	50308	\N
1560	1743	新白川温泉	しんしらかわおんせん	岐阜県加茂郡白川町河東３４９４			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	単純温泉	\N	\N	\N	\N
1561	1744	新穂高温泉	しんほだかおんせん	岐阜県吉城郡上宝村神坂巾平・中尾			奥飛騨	奥飛騨	硫黄泉	\N	\N	50302	\N
1562	1745	栃尾温泉	とちおおんせん	岐阜県高山市奥飛騨温泉栃尾448			奥飛騨	奥飛騨	単純温泉	\N	\N	50627	\N
1563	1746	新平湯温泉	しんひらゆおんせん	岐阜県高山市奥飛騨温泉郷一重ヶ根			奥飛騨	奥飛騨	塩化物泉	\N	\N	50303	\N
1564	1747	福地温泉	ふくじおんせん	岐阜県吉城郡上宝村福地			奥飛騨	奥飛騨	硫黄泉	\N	\N	50304	\N
1565	1748	平湯温泉	ひらゆおんせん	岐阜県吉城郡上宝村平湯			奥飛騨	奥飛騨	単純温泉	\N	\N	50465	\N
1566	1749	飛騨数河温泉	ひだすごうおんせん	岐阜県飛騨市古川町数河			飛騨・高山	飛騨古川・荘川・清見	炭酸水素塩泉	\N	\N	\N	\N
1567	1750	飛騨高山温泉	ひだたかやまおんせん	岐阜県高山市西之一色町			飛騨・高山	飛騨高山・丹生川	硫黄泉	\N	\N	50301	\N
1568	1751	越後温泉	えちごおんせん	岐阜県高山市越後町			飛騨・高山	飛騨高山・丹生川	炭酸水素塩泉	\N	\N	\N	\N
1569	1752	臥龍温泉	がりゅうおんせん	岐阜県大野郡宮村			飛騨・高山	飛騨高山・丹生川	塩化物泉	\N	\N	\N	\N
1570	1753	白川郷平瀬温泉	しらかわごうひらせおんせん	岐阜県大野郡白川村平瀬			白川郷	白川郷	単純温泉	\N	\N	50807	\N
1571	1754	塩沢温泉	しおざわおんせん	岐阜県大野郡高根村上ヶ洞			飛騨・高山	飛騨高山・丹生川	単純温泉	\N	\N	\N	\N
1572	1755	秋神温泉	あきがみおんせん	岐阜県大野郡朝日村胡桃島			飛騨・高山	飛騨高山・丹生川	単純温泉	\N	\N	\N	\N
1573	1756	濁河温泉	にごりごおんせん	岐阜県益田郡小坂町落合濁河温泉			下呂・南飛騨	下呂・南飛騨	単純温泉	\N	\N	50305	\N
1574	1757	下島温泉	したじまおんせん	岐阜県益田郡小坂町落合			下呂・南飛騨	下呂・南飛騨	硫黄泉	\N	\N	\N	\N
1575	1758	湯屋温泉	ゆやおんせん	岐阜県益田郡小坂町湯屋			下呂・南飛騨	下呂・南飛騨	炭酸水素塩泉	\N	\N	50306	\N
1576	1759	乗政温泉	のりまさおんせん	岐阜県益田郡下呂町乗政			下呂・南飛騨	下呂・南飛騨	二酸化炭素泉	\N	\N	\N	\N
1577	1760	萩原温泉	はぎはらおんせん	岐阜県益田郡萩原町上村			下呂・南飛騨	下呂・南飛騨	硫酸塩泉	\N	\N	\N	\N
1578	1761	下呂温泉	げろおんせん	岐阜県益田郡下呂町湯之島・森・幸田			下呂・南飛騨	下呂・南飛騨	二酸化炭素泉	\N	\N	50307	\N
1579	1762	渡合温泉	どあいおんせん	岐阜県恵那郡加子母村			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	二酸化炭素泉	\N	\N	\N	\N
1580	1763	越原温泉	おっぱらおんせん	岐阜県加茂郡東白川村越原			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	炭酸水素塩泉	\N	\N	\N	\N
1581	1764	付知温泉	つけちおんせん	岐阜県恵那郡付知町中田			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	単純温泉	\N	\N	\N	\N
1582	1765	栗本温泉	くりもとおんせん	岐阜県恵那郡福岡町福岡馬場平			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	単純温泉	\N	\N	\N	\N
1583	1766	くつかけの湯温泉	くつかけのゆおんせん	岐阜県恵那郡坂下町上野字小野沢			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	二酸化炭素泉	\N	\N	\N	\N
1584	1767	湯之島ラヂウムローソク温泉	ゆのしまらぢうむろーそくおんせん	岐阜県恵那郡福岡町高山			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	硫黄泉	\N	\N	\N	\N
1585	1768	中津川ラヂウム温泉	なかつがわらぢうむおんせん	岐阜県中津川市苗木高森			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
1586	1769	岩寿温泉	いわすおんせん	岐阜県中津川市蛭川4467-4			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	50867	\N
1587	1770	東山温泉	ひがしやまおんせん	岐阜県恵那郡蛭川村一之瀬			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
1588	1771	紅岩温泉	べにいわおんせん	岐阜県恵那郡蛭川村奥渡			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
1589	1772	恵那峡湯元温泉	えなきょうゆもとおんせん	岐阜県恵那市大井町286番地25			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	50869	\N
1590	1773	釜戸温泉	かまどおんせん	岐阜県瑞浪市釜戸町中大島			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	その他	\N	\N	\N	\N
1591	1774	白狐温泉	びゃっこおんせん	岐阜県瑞浪市釜戸町			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	\N	\N
1592	1775	鬼岩温泉	おにいわおんせん	岐阜県瑞浪市日吉町			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	放射能泉	\N	\N	50868	\N
1593	1776	あけ世温泉	あけよおんせん	岐阜県瑞浪市明世町月吉			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	ナトリウム塩化物泉	\N	\N	\N	\N
1594	1777	稲荷温泉	いなりおんせん	岐阜県瑞浪市稲津町小里			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	その他	\N	\N	\N	\N
1595	1778	山神温泉	やまがみおんせん	岐阜県土岐市下石町山神			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	放射能泉	\N	\N	\N	\N
1596	1779	柿野温泉	かきのおんせん	岐阜県土岐市鶴里町柿野			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	放射能泉	\N	\N	\N	\N
1597	1780	初音温泉	はつねおんせん	岐阜県郡上郡八幡町初音			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	放射能泉	\N	\N	\N	\N
1598	1781	高畑温泉	たかはたおんせん	岐阜県郡上郡八幡町那比高畑			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	鉱泉	\N	\N	\N	\N
1599	1782	湯の洞温泉	ゆのほらおんせん	岐阜県美濃市立花			郡上・美濃・関	美濃・関	放射能泉	\N	\N	\N	\N
1600	1783	長良川温泉	ながらがわおんせん	岐阜県岐阜市長良			岐阜・大垣・養老	岐阜・羽島	放射能泉	\N	\N	50309	\N
1601	1784	羽島温泉	はしまおんせん	岐阜県羽島市桑原町牛南			岐阜・大垣・養老	岐阜・羽島	放射能泉	\N	\N	\N	\N
1602	1785	海津温泉	かいづおんせん	岐阜県海津郡海津町福江			岐阜・大垣・養老	大垣・養老・揖斐	放射能泉	\N	\N	\N	\N
1603	2254	鷲ヶ岳温泉	わしがだけおんせん	岐阜県郡上郡高鷲村大鷲3262-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	放射能泉	\N	\N	\N	\N
1604	2380	桜香の湯	おうかのゆ	岐阜県高山市荘川町猿丸			飛騨・高山	飛騨古川・荘川・清見	硫黄泉	\N	\N	\N	\N
1605	2381	飛騨金山温泉	ひだかなやまおんせん	岐阜県益田郡金山町金山973-2			下呂・南飛騨	下呂・南飛騨	硫黄泉	\N	\N	\N	\N
1606	2382	飛騨古川桃源郷温泉	ひだふるかわとうげんきょうおんせん	岐阜県飛騨市古川町黒内1407			飛騨・高山	飛騨古川・荘川・清見	含鉄泉	\N	\N	\N	\N
1607	2383	明宝温泉	めいほうおんせん	岐阜県郡上市明宝奥住3428-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	塩化物泉	\N	\N	50870	\N
1608	2480	飛騨にゅうかわ温泉	ひだにゅうかわおんせん	岐阜県大野郡丹生川村久手446-1			飛騨・高山	飛騨高山・丹生川	塩化物泉	\N	\N	\N	\N
1609	2481	湯の平温泉	ゆのひらおんせん	岐阜県郡上郡高鷲村大鷲1787-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	単純温泉	\N	\N	\N	\N
1610	2654	真正温泉ぬくいの湯	しんせいおんせんぬくいのゆ	岐阜県本巣郡真正町政田下西浦			岐阜・大垣・養老	岐阜・羽島	弱アルカリ性低張性泉	\N	\N	\N	\N
1611	2661	馬瀬川温泉	まぜがわおんせん	岐阜県益田郡馬瀬村西村１６９５番地			下呂・南飛騨	下呂・南飛騨	炭酸水素塩泉	\N	\N	50468	\N
1612	2678	恵那峡奥戸温泉	えなきょうおくどおんせん	岐阜県恵那市大井町2709-77			恵那・多治見・可児・加茂	恵那・中津川・瑞浪	その他	\N	\N	50478	\N
1613	2689	焼岳温泉	やけだけおんせん	岐阜県吉城郡上宝村一重ケ根２４９８－１			奥飛騨	奥飛騨	アルカリ単純泉	\N	\N	50303	\N
1614	2693	奥美濃長良川温泉	おくみのながらがわおんせん	岐阜県郡上市八幡町			下呂・南飛騨	下呂・南飛騨	単純温泉	\N	\N	50488	\N
1615	2785	神明温泉	しんめいおんせん	岐阜県関市板取4838			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	弱アルカリ性低張性泉	\N	\N	50556	\N
1616	2788	養老温泉	ようろうおんせん	岐阜県養老郡養老町押越字除下1522-1			岐阜・大垣・養老	大垣・養老・揖斐	アルカリ単純泉	\N	\N	50603	\N
1617	2789	池田さくら温泉	いけださくらおんせん	岐阜県養老郡養老町養老534			岐阜・大垣・養老	大垣・養老・揖斐	放射能泉	\N	\N	50604	\N
1618	2824	大白川温泉	おおじらかわおんせん	岐阜県大野郡白川村平瀬字地獄谷			白川郷	白川郷	炭酸水素塩泉	\N	\N	50657	\N
1619	2947	下呂大江戸温泉	げろおおえどおんせん	岐阜県下呂市森2458			下呂・南飛騨	下呂・南飛騨	その他	\N	\N	50775	\N
1620	2989	トヨタ白川郷自然学校温泉	とよたしらかわごうしぜんがっこうおんせん	岐阜県大野郡白川村馬狩			飛騨・高山	白川郷	塩化物泉	\N	\N	50808	\N
1621	2993	飛騨位山温泉	ひだくらいやまおんせん	岐阜県高山市一之宮町八ツ橋			飛騨・高山	飛騨高山・丹生川	炭酸水素塩泉	\N	\N	50810	\N
1622	3054	多治見　旅人の湯	たじみ　たびびとのゆ	岐阜県多治見市若松町4-1-30			恵那・多治見・可児・加茂	多治見・土岐・加茂・可児	その他	\N	\N	50873	\N
1623	3150	高山龍神温泉	たかやまりゅうじんおんせん	岐阜県高山市荘川町新渕字二俣瀬888-596			飛騨・高山	飛騨古川・荘川・清見	アルカリ単純泉	\N	\N	50301	\N
1624	3174	薬師温泉	やくしおんせん	岐阜県高山市奥飛騨温泉郷新平湯温泉208番48			奥飛騨	奥飛騨	アルカリ単純泉	\N	\N	50303	\N
1625	3188	満天の湯	まんてんのゆ	岐阜県郡上市白鳥町石徹白峠山1-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	塩化物泉	\N	\N	50950	\N
1626	3221	胡桃島温泉	くるみしまおんせん	岐阜県高山市朝日町胡桃島8			飛騨・高山	飛騨高山・丹生川	ナトリウム塩化物泉	\N	\N	50301	\N
1627	3231	ふたこえ温泉	ふたこえおんせん	岐阜県郡上市高鷲町鷲見48-1			郡上・美濃・関	郡上八幡・白鳥・高鷲・明宝	塩化物泉	\N	\N	50963	\N
1628	1716	岩屋堂温泉	いわやどうおんせん	愛知県瀬戸市岩屋町			尾張・犬山・小牧	瀬戸・日進	二酸化炭素泉	\N	\N	\N	\N
1629	1717	猿投温泉	さなげおんせん	愛知県豊田市加納町馬道通			三河	西三河	放射能泉	\N	\N	50312	\N
1630	1718	笹戸温泉	ささどおんせん	愛知県豊田市笹戸町			三河	西三河	単純温泉	\N	\N	50630	\N
1631	1719	小渡温泉	おどおんせん	愛知県東加茂郡旭町大字小渡			三河	西三河	硫黄泉	\N	\N	\N	\N
1632	1720	榊野温泉	さかきのおんせん	愛知県東加茂郡旭町大字榊野			三河	西三河	放射能泉	\N	\N	\N	\N
1633	1721	川怒温泉	かわぬおんせん	愛知県東加茂郡足助町川面			三河	西三河	硫黄泉	\N	\N	\N	\N
1634	1722	足助温泉	あすけおんせん	愛知県東加茂郡足助町大字野林			三河	西三河	硫黄泉	\N	\N	\N	\N
1635	1723	白鷺温泉	しらさぎおんせん	愛知県豊田市篭林町塩平21番地			三河	西三河	硫黄泉	\N	\N	50632	\N
1636	1724	夏焼温泉	なつやけおんせん	愛知県北設楽郡稲武町武節町田ノ洞			三河	西三河	弱アルカリ性低張性泉	\N	\N	\N	\N
1637	1725	添沢温泉	そえざわおんせん	愛知県北設楽郡設楽町田口			三河	奥三河・新城・湯谷	鉱泉	\N	\N	\N	\N
1638	1726	塩津温泉	しおつおんせん	愛知県北設楽郡設楽町清崎早稲田			三河	奥三河・新城・湯谷	炭酸水素塩泉	\N	\N	\N	\N
1639	1727	千代姫温泉	ちよひめおんせん	愛知県北設楽郡東栄町中設楽西向			三河	奥三河・新城・湯谷	炭酸水素塩泉	\N	\N	\N	\N
1640	1728	湯谷温泉	ゆやおんせん	愛知県南設楽郡鳳来町豊岡滝上			三河	奥三河・新城・湯谷	炭酸水素塩泉	\N	\N	50310	\N
1641	1729	赤引温泉	あかひきおんせん	愛知県南設楽郡鳳来町大野中楠			三河	奥三河・新城・湯谷	含鉄泉	\N	\N	50311	\N
1642	1730	岩津温泉	いわつおんせん	愛知県岡崎市岩津町東山			三河	西三河	塩化物泉	\N	\N	\N	\N
1643	1731	中京温泉	ちゅうきょうおんせん	愛知県名古屋市中村区日吉町			名古屋	名古屋駅・名古屋城周辺	放射能泉	\N	\N	\N	\N
1644	1732	尾張温泉	おわりおんせん	愛知県海部郡蟹江町西ノ森長瀬下			尾張・犬山・小牧	稲沢・津島	含鉄泉	\N	\N	\N	\N
1645	1733	衣浦温泉	きぬうらおんせん	愛知県碧南市山神町			三河	西三河	単純温泉	\N	\N	\N	\N
1646	1734	坂井温泉	さかいおんせん	愛知県常滑市坂井			知多	知多半島	硫黄泉	\N	\N	\N	\N
1647	1735	内海温泉	うつみおんせん	愛知県知多郡南知多町内海海岸			知多	知多半島	単純温泉	\N	\N	50317	\N
1648	1736	南知多温泉	みなみちたおんせん	愛知県知多郡南知多町大字山海字橋詰			知多	知多半島	含鉄泉	\N	\N	50317	\N
1649	1737	吉良温泉	きらおんせん	愛知県幡豆郡吉良町宮崎			三河	蒲郡・吉良・幡豆	ナトリウム塩化物泉	\N	\N	50534	\N
1650	1738	形原温泉	かたはらおんせん	愛知県蒲郡市金平町寺中			三河	蒲郡・吉良・幡豆	塩化物泉	\N	\N	50314	\N
1651	1739	西浦温泉	にしうらおんせん	愛知県蒲郡市西浦町大山			三河	蒲郡・吉良・幡豆	放射能泉	\N	\N	50315	\N
1652	1740	三谷温泉	みやおんせん	愛知県蒲郡市三谷町鳶欠			三河	蒲郡・吉良・幡豆	硫黄泉	\N	\N	50316	\N
1653	1741	田原温泉	たはらおんせん	愛知県渥美郡田原町吉胡蔵王			三河	渥美半島・伊良湖	含鉄泉	\N	\N	\N	\N
1654	2536	飛島温泉	とびしまおんせん	愛知県海部郡飛島村飛島新田竹之郷			尾張・犬山・小牧	稲沢・津島	塩化物泉	\N	\N	\N	\N
1655	2657	犬山温泉　白帝の湯	いぬやまおんせん　はくていのゆ	愛知県犬山市犬山北古券１０７－１　名鉄犬山ホテル敷地内			尾張・犬山・小牧	犬山・小牧・一宮	塩化物泉	\N	\N	50467	\N
1656	2761	蒲郡温泉	がまごおりおんせん	愛知県蒲郡市竹島町			三河	蒲郡・吉良・幡豆	アルカリ単純泉	\N	\N	50533	\N
1657	3072	あいち健康の森温泉	あいちけんこうのもりおんせん	愛知県知多郡東浦町森岡源吾山１－１			知多	知多半島	中性低張性高温泉	\N	\N	50883	\N
1658	3205	三谷温泉　曙光の湯	みやおんせん　しょこうのゆ	愛知県蒲郡市三谷町正迫16番地			三河	蒲郡・吉良・幡豆	その他	\N	\N	50316	\N
1659	3206	三谷温泉　千歳の湯	みやおんせん　ちとせのゆ	愛知県蒲郡市三谷町田尻71番地１			三河	蒲郡・吉良・幡豆	アルカリ単純泉	\N	\N	50316	\N
1660	3207	三谷温泉　美白泉	みやおんせん　びはくせん	愛知県蒲郡市三谷町門立45-2			三河	蒲郡・吉良・幡豆	アルカリ単純泉	\N	\N	50316	\N
1661	3224	南知多天然温泉　まるはうめ乃湯	みなみちたてんねんおんせん　まるはうめのゆ	愛知県知多郡南知多町大字豊浜字峠8			知多	知多半島	ナトリウム塩化物泉	\N	\N	50317	\N
1662	1496	鍋田川温泉	なべたがわおんせん	三重県桑名郡木曽岬町新加路戸30			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	ナトリウム塩化物泉	\N	\N	50949	\N
1663	1497	長島温泉	ながしまおんせん	三重県桑名市長島町浦安333			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	アルカリ単純泉	\N	\N	50715	\N
1664	1498	湯の山温泉	ゆのやまおんせん	三重県三重郡菰野町菰野			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	放射能泉	\N	\N	50318	\N
1665	1499	坂部温泉	さかべおんせん	三重県四日市市西坂部町			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	単純温泉	\N	\N	\N	\N
1666	1500	伊賀温泉	いがおんせん	三重県上野市西高倉			伊賀・上野・名張	上野	含鉄泉	\N	\N	\N	\N
1667	1501	榊原温泉	さかきばらおんせん	三重県久居市榊原町			津・久居・美杉・松阪	久居・榊原	アルカリ単純泉	\N	\N	50320	\N
1668	1502	磨洞温泉	まどうおんせん	三重県津市半田			津・久居・美杉・松阪	津	単純温泉	\N	\N	50319	\N
1669	1503	赤目温泉山の湯	あかめおんせんやまのゆ	三重県名張市赤目町柏原			伊賀・上野・名張	名張・赤目四十八滝・青山	放射能泉	\N	\N	\N	\N
1670	1504	赤目温泉隠れの湯	あかめおんせんかくれのゆ	三重県名張市赤目町長坂682番地			伊賀・上野・名張	名張・赤目四十八滝・青山	放射能泉	\N	\N	50953	\N
1671	1505	香落渓温泉	こおちだにおんせん	三重県名張市青蓮寺峯の山			伊賀・上野・名張	名張・赤目四十八滝・青山	放射能泉	\N	\N	\N	\N
1672	1506	答志島温泉	とうしじまおんせん	三重県鳥羽市答志町和具浦			鳥羽	鳥羽	塩化物泉	\N	\N	50821	\N
1673	1507	鳥羽本浦温泉	とばもとうらおんせん	三重県鳥羽市浦村町			南鳥羽	南鳥羽	単純温泉	\N	\N	50821	\N
1674	1508	奥香肌峡温泉	おくかはだきょうおんせん	三重県飯南郡飯高町森			津・久居・美杉・松阪	松阪	塩化物泉	\N	\N	\N	\N
1675	1509	阿曽温泉	あそおんせん	三重県度会郡大紀町阿曽片山245			奥伊勢	奥伊勢	炭酸水素塩泉	\N	\N	50793	\N
1676	1510	浜島温泉	はまじまおんせん	三重県志摩郡浜島町浜島出湯			志摩	志摩（浜島・阿児・磯部）	ナトリウム塩化物泉	\N	\N	50822	\N
1677	1511	新湯の口温泉	しんゆのくちおんせん	三重県南牟婁郡紀和町小川口			東紀州	尾鷲・熊野	炭酸水素塩泉	\N	\N	50706	\N
1678	1512	霧生温泉	きりゅうおんせん	三重県名賀郡青山町霧生			伊賀・上野・名張	名張・赤目四十八滝・青山	塩化物泉	\N	\N	\N	\N
1679	1513	二見温泉	ふたみおんせん	三重県渡会郡二見町大字西字北浜			伊勢・二見	伊勢・二見	単純温泉	\N	\N	50321	\N
1680	1514	鳥羽グランドホテル温泉	とばぐらんどほてるおんせん	三重県鳥羽市小浜町			鳥羽	鳥羽	含鉄泉	\N	\N	50821	\N
1681	1515	奥志摩温泉　合歓の郷　潮騒の湯	おくしまおんせん  ねむのさと  しおさいのゆ	三重県志摩郡浜島町大崎半島			志摩	志摩（浜島・阿児・磯部）	炭酸水素塩泉	\N	\N	50822	\N
1682	2157	大山田温泉	おおやまだおんせん	三重県阿山郡大山田村大字上阿波			伊賀・上野・名張	阿山・伊賀	塩化物泉	\N	\N	\N	\N
1683	2158	伊賀上野温泉	いがうえのおんせん	三重県上野市西明寺			伊賀・上野・名張	上野	炭酸水素塩泉	\N	\N	\N	\N
1684	2159	一志温泉	いちしおんせん	三重県一志郡一志町大字井関			津・久居・美杉・松阪	白山・美杉	塩化物泉	\N	\N	\N	\N
1685	2160	玉城弘法温泉	たまきこうぼうおんせん	三重県度会郡玉城町原			伊勢・二見	伊勢・二見	単純温泉	\N	\N	\N	\N
1686	2161	片岡温泉	かたおかおんせん	三重県三重郡菰野町大字菰野字片倉			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	単純温泉	\N	\N	\N	\N
1687	2162	猪の倉温泉	いのくらおんせん	三重県津市白山町佐田2562-1			津・久居・美杉・松阪	白山・美杉	塩化物泉	\N	\N	50772	\N
1688	2163	鈴鹿さつき温泉	すずかさつきおんせん	三重県鈴鹿市津賀町			桑名・長島・四日市・湯の山・鈴鹿	鈴鹿・亀山	単純温泉	\N	\N	\N	\N
1689	2164	鈴鹿サーキット天然温泉	すずかさーきっとてんねんおんせん	三重県鈴鹿市稲生町			桑名・長島・四日市・湯の山・鈴鹿	鈴鹿・亀山	アルカリ単純泉	\N	\N	50557	\N
1690	2165	奥伊勢宮川温泉	おくいせみやがわおんせん	三重県多気郡宮川村薗			奥伊勢	奥伊勢	単純温泉	\N	\N	\N	\N
1691	2166	火の谷温泉	ひのたにおんせん	三重県一志郡美杉村八知美杉リゾート			津・久居・美杉・松阪	白山・美杉	単純温泉	\N	\N	\N	\N
1692	2217	新･浜島温泉	しん･はまじまおんせん	三重県志摩郡浜島町			志摩	志摩（浜島・阿児・磯部）	単純温泉	\N	\N	50822	\N
1693	2218	浦村温泉　権現の湯	うらむらおんせん　けんげんのゆ	三重県鳥羽市浦村町字鍋谷口146番地1			南鳥羽	南鳥羽	炭酸水素塩泉	\N	\N	50821	\N
1694	2219	南勢桜山温泉	なんせいさくらやまおんせん	三重県度会郡南勢町大字神津字中河内427番地			志摩	南伊勢	ナトリウム塩化物泉	\N	\N	50331	\N
1695	2220	神代温泉	じんだいおんせん	三重県鳥羽市国崎町字小田谷737番			南鳥羽	南鳥羽	単純温泉	\N	\N	50821	\N
1696	2482	伊勢志摩温泉「ともやまの湯」	いせしまおんせんともやまのゆ	三重県志摩郡大王町船越字小起3240			志摩	志摩（志摩・大王）	アルカリ単純泉	\N	\N	50822	\N
1697	2553	鳥羽シーサイド温泉「さらさ」	とばしーさいどおんせん「さらさ」	三重県鳥羽市安楽島町1084			鳥羽	鳥羽	ナトリウム塩化物泉	\N	\N	50821	\N
1698	2554	石鏡温泉　岬の湯	いじかおんせん　みさきのゆ	三重県鳥羽市石鏡町字磯山368-2			南鳥羽	南鳥羽	弱アルカリ性低張性泉	\N	\N	\N	\N
1699	2576	加茂川船津温泉　行者の湯	かもがわふなつおんせん　ぎょうじゃのゆ	三重県鳥羽市船津町字小石代1150			鳥羽	鳥羽	ナトリウム塩化物泉	\N	\N	\N	\N
1700	2645	磯部わたかの温泉	いそべわたかのおんせん	三重県志摩郡磯部町渡鹿野			志摩	志摩（浜島・阿児・磯部）	その他	\N	\N	50822	\N
1701	2735	志摩の国温泉	しまのくにおんせん	三重県志摩郡阿児町甲賀４５７８－１			志摩	志摩（浜島・阿児・磯部）	単純温泉	\N	\N	50822	\N
1702	2740	きいながしま古里温泉	きいながしまふるさとおんせん	三重県北牟婁郡紀伊長島町海野字タキノハナ８１６番地			東紀州	紀伊長島	弱アルカリ性低張性泉	\N	\N	50511	\N
1703	2754	木曽岬温泉	きそざきおんせん	三重県桑名郡木曽岬町源緑輪中794番地			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	ナトリウム塩化物泉	\N	\N	50526	\N
1704	2756	安楽島温泉	あらしまおんせん	三重県鳥羽市安楽島町1061-9			鳥羽	鳥羽	アルカリ単純泉	\N	\N	50821	\N
1705	2758	香肌峡温泉	かはだきょうおんせん	三重県松坂市飯高町宮前177			津・久居・美杉・松阪	松阪	ナトリウム塩化物泉	\N	\N	50531	\N
1706	2762	志摩スペイン村　ひまわりの湯	しますぺいんむら　ひまわりのゆ	三重県志摩市磯部町坂崎字下山952番23			志摩	志摩（浜島・阿児・磯部）	ナトリウム塩化物泉	\N	\N	50822	\N
1707	2811	近鉄賢島温泉	きんてつかしこじまおんせん	三重県志摩市阿児町賢島			志摩	志摩（浜島・阿児・磯部）	炭酸水素塩泉	\N	\N	50822	\N
1708	2872	入鹿温泉	いるかおんせん	三重県熊野市紀和町小川口158			東紀州	尾鷲・熊野	鉱泉	\N	\N	50706	\N
1709	2897	六石高原温泉	ろっこくこうげんおんせん	三重県いなべ市北勢町東村小山1392			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	炭酸水素塩泉	\N	\N	50730	\N
1710	2917	平城湯	ならゆ	三重県一志郡白山町大字川口字佛谷6582-2			津・久居・美杉・松阪	白山・美杉	鉱泉	\N	\N	50747	\N
1711	2928	きほく千年温泉	きほくせんねんおんせん	三重県北牟婁郡紀北町紀伊長島区東長島字城ノ浜3043-10			東紀州	紀伊長島	単純温泉	\N	\N	50758	\N
1712	2981	鳥羽小浜温泉	とばおはまおんせん	三重県鳥羽市小浜町272-46			鳥羽	鳥羽	アルカリ単純泉	\N	\N	50821	\N
1713	3046	多度温泉	たどおんせん	三重県桑名市多度町古野2692			桑名・長島・四日市・湯の山・鈴鹿	桑名・長島・四日市・湯の山	弱アルカリ性低張性泉	\N	\N	50863	\N
1714	3144	伊勢外宮参道温泉	いせげくうさんどうおんせん	三重県伊勢市本町１－１			伊勢・二見	伊勢・二見	ナトリウム塩化物泉	\N	\N	50929	\N
1715	3170	朝妻温泉	あさづまおんせん 	三重県伊賀市寺脇721			伊賀・上野・名張	名張・赤目四十八滝・青山	二酸化炭素泉	\N	\N	50953	\N
1716	3283	熊野温泉	くまのおんせん	三重県熊野市井戸町1020‐7			東紀州	尾鷲・熊野	鉱泉	\N	\N	50706	\N
1717	3287	かんぽ温泉鳥羽潮香の湯	かんぽおんせんとばしおかのゆ	三重県鳥羽市安楽島町1200‐7			鳥羽	鳥羽	アルカリ単純泉	\N	\N	50821	\N
1718	3297	英虞湾温泉	あごわんおんせん	三重県志摩市浜島町迫子2619番地1			志摩	志摩（浜島・阿児・磯部）	弱アルカリ性低張性泉	\N	\N	50822	\N
1719	1516	マキノ白谷温泉	まきのしらたにおんせん	滋賀県高島市マキノ町白谷北海道			湖西	高島	放射能泉	\N	\N	50833	\N
1720	1517	須賀谷温泉	すがたにおんせん	滋賀県長浜市須賀谷町36番地			彦根・長浜	長浜	炭酸鉄泉	\N	\N	50703	\N
1721	1518	尾上温泉	おのえおんせん	滋賀県長浜市湖北町尾上312			彦根・長浜	長浜	単純温泉	\N	\N	50702	\N
1722	1519	長浜太閤温泉	ながはまたいこうおんせん	滋賀県長浜市公園町			彦根・長浜	長浜	炭酸水素塩泉	\N	\N	50335	\N
1723	1520	あど川宝船温泉	あどかわたからぶねおんせん	滋賀県高島市安曇川町下小川			湖西	高島	含鉄泉	\N	\N	\N	\N
1724	1521	白滝温泉	しらたきおんせん	滋賀県志賀郡志賀町木戸			雄琴・堅田	雄琴・堅田	含鉄泉	\N	\N	\N	\N
1725	1522	近江温泉	おおみおんせん	滋賀県愛知郡愛東町百済寺			草津・守山・近江八幡	近江八幡	放射能泉	\N	\N	\N	\N
1726	1523	今浜温泉	いまはまおんせん	滋賀県守山市今浜町			草津・守山・近江八幡	草津・守山	単純温泉	\N	\N	\N	\N
1727	1524	おごと温泉	おごとおんせん	滋賀県大津市雄琴			雄琴・堅田	雄琴・堅田	単純温泉	\N	\N	50334	\N
1728	1525	びわ湖温泉	びわこおんせん	滋賀県大津市茶ヶ崎			大津	大津	単純温泉	\N	\N	50332	\N
1729	1526	石山温泉	いしやまおんせん	滋賀県大津市螢谷			大津	大津	炭酸水素塩泉	\N	\N	50333	\N
1730	1527	南郷温泉	なんごうおんせん	滋賀県大津市南郷5-15-7			大津	大津	放射能泉	\N	\N	50333	\N
1731	1528	甲南温泉	こうなんおんせん	滋賀県甲賀郡甲南町深川			甲賀・信楽	甲賀・信楽	放射能泉	\N	\N	\N	\N
1732	1529	塩野温泉	しおのおんせん	滋賀県甲賀郡甲南町塩野			甲賀・信楽	甲賀・信楽	塩化物泉	\N	\N	\N	\N
1733	1530	宮乃温泉	みやのおんせん	滋賀県甲賀郡甲南町杉谷			甲賀・信楽	甲賀・信楽	塩化物泉	\N	\N	50336	\N
1734	1531	宝船温泉	たからぶねおんせん	滋賀県高島市安曇川町下小川			湖西	高島	塩化物泉	\N	\N	\N	\N
1735	2401	信楽温泉多羅尾の湯	しがらきおんせんたらおのゆ	滋賀県甲賀郡信楽町多羅尾1番地			甲賀・信楽	甲賀・信楽	含鉄泉	\N	\N	50337	\N
1736	2537	十二坊温泉	じゅうにぼうおんせん	滋賀県甲賀郡甲西町			甲賀・信楽	甲賀・信楽	単純温泉	\N	\N	\N	\N
1737	2538	朽木温泉	くつきおんせん	滋賀県高島市朽木柏			湖西	高島	弱アルカリ性低張性泉	\N	\N	50832	\N
1738	2548	信楽たぬき温泉	しがらきたぬきおんせん	滋賀県甲賀郡設楽町大字黄瀬2320-1			甲賀・信楽	甲賀・信楽	弱アルカリ性低張性泉	\N	\N	50831	\N
1739	2869	彦根千乃松原温泉	ひこねせんのまつばらおんせん	滋賀県彦根市松原町3759			彦根・長浜	彦根	放射能泉	\N	\N	50704	\N
1740	2870	雄琴天然温泉　美肌の湯	おごとてんねんおんせん　びはだのゆ	滋賀県大津市苗鹿3丁目9-5			雄琴・堅田	雄琴・堅田	アルカリ単純泉	\N	\N	50334	\N
1741	2875	宮ヶ浜の湯	みやがはまのゆ	滋賀県近江八幡市沖島町宮ヶ浜			草津・守山・近江八幡	近江八幡	弱アルカリ性低張性泉	\N	\N	50708	\N
1742	2909	比良招福温泉	ひらしょうふくおんせん	滋賀県大津市北比良948-10			雄琴・堅田	雄琴・堅田	ナトリウム塩化物泉	\N	\N	50742	\N
1743	3008	古琵琶湖ラドンの湯	こびわこらどんのゆ	滋賀県大津市月輪一丁目９－１８			大津	大津	炭酸水素塩泉	\N	\N	50836	\N
1744	3012	瑠璃温泉	るりおんせん	滋賀県大津市浜町３番５号			大津	大津	塩化物泉	\N	\N	50838	\N
1745	3245	甲賀温泉やっぽんぽんの湯	こうがおんせんやっぽんぽんのゆ	滋賀県甲賀市土山町黒川1711			甲賀・信楽	甲賀・信楽	単純温泉	\N	\N	50968	\N
1746	3267	美崎温泉	みさきおんせん	滋賀県守山市今浜町字十軒家2876番85			草津・守山・近江八幡	草津・守山	アルカリ単純泉	\N	\N	50708	\N
1747	1532	丹後琴引温泉	たんごことびきおんせん	京都府竹野郡網野町遊			大原・鞍馬・貴船	丹後	単純温泉	\N	\N	\N	\N
1748	1533	夕日ヶ浦温泉	ゆうひがうらおんせん	京都府竹野郡網野町浜詰			丹後・久美浜	丹後	単純温泉	\N	\N	50340	\N
1749	1534	木津温泉	きつおんせん	京都府竹野郡網野町木津			大原・鞍馬・貴船	丹後	単純温泉	\N	\N	50341	\N
1750	1535	久美の浜温泉郷	くみのはまおんせんきょう	京都府熊野郡久美浜町平田			大原・鞍馬・貴船	久美浜・小天橋	塩化物泉	\N	\N	50348	\N
1751	1536	岩滝温泉	いわたきおんせん	京都府与謝郡岩滝町男山			丹後・久美浜	丹後	硫黄泉	\N	\N	50339	\N
1752	1537	ゆらゆら温泉郷	ゆらゆらおんせんきょう	京都府宮津市由良			天橋立・宮津・舞鶴	天橋立・宮津	硫黄泉	\N	\N	50339	\N
1753	1538	くらま温泉	くらまおんせん	京都府京都市左京区鞍馬本町			大原・鞍馬・貴船	大原・鞍馬・貴船	単純温泉	\N	\N	\N	\N
1754	1539	湯の花温泉	ゆのはなおんせん	京都府亀岡市稗田野町柿花宮奥			湯の花・丹波・美山	亀岡・湯の花・丹波	放射能泉	\N	\N	50338	\N
1755	1540	嵐山温泉	あらしやまおんせん	京都府京都市西京区嵐山元禄山町			嵯峨野・嵐山・高雄	嵯峨野・嵐山・高雄	単純温泉	\N	\N	50490	\N
1756	1541	北白川天然ラジウム温泉	きたしらかわてんねんらじうむおんせん	京都府京都市左京区北白川地蔵谷			祇園・東山・北白川周辺	岡崎・北白川	放射能泉	\N	\N	\N	\N
1757	1542	桃山温泉	ももやまおんせん	京都府京都市伏見区桃山町安長老			京都駅周辺	京都駅近郊・山科	単純温泉	\N	\N	50835	\N
1758	1543	笠置温泉	かさぎおんせん	京都府相楽郡笠置町浜			京都南部（宇治・長岡京・山崎）	相楽	含鉄泉	\N	\N	\N	\N
1759	1544	夢絃峡温泉	むげんきょうおんせん	京都府相楽郡南山城村田山ツルギ			京都南部（宇治・長岡京・山崎）	相楽	単純温泉	\N	\N	\N	\N
1760	1545	天然嵐山嵯峨野温泉	てんねんあらしやまさがのおんせん	京都府京都市右京区嵯峨天龍寺芒ノ馬場町			嵯峨野・嵐山・高雄	嵯峨野・嵐山・高雄	弱アルカリ性低張性泉	\N	\N	\N	\N
1761	1546	宮津羽衣温泉	みやづはごろもおんせん	京都府宮津市宇田井小字岩本			天橋立・宮津・舞鶴	天橋立・宮津	炭酸水素塩泉	\N	\N	\N	\N
1762	1547	奥伊根温泉	おくいねおんせん	京都府与謝郡伊根町字六万部			大原・鞍馬・貴船	天橋立・宮津	単純温泉	\N	\N	\N	\N
1763	2167	天の橋立温泉	あまのはしだておんせん	京都府宮津市字文珠小字宮ﾉ下			天橋立・宮津・舞鶴	天橋立・宮津	炭酸水素塩泉	\N	\N	50339	\N
1764	2169	浜詰温泉	はまづめおんせん	京都府竹野郡網野町浜詰			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	50340	\N
1765	2175	丹後温泉	たんごおんせん	京都府竹野郡丹後町間人			大原・鞍馬・貴船	丹後	弱アルカリ性低張性泉	\N	\N	50342	\N
1766	2176	鳴き砂温泉	なきすなおんせん	京都府竹野郡網野町字掛津小字馬場田			大原・鞍馬・貴船	丹後	ナトリウム塩化物泉	\N	\N	50343	\N
1767	2177	二塚温泉	ふたつかおんせん	京都府竹野郡網野町三津			大原・鞍馬・貴船	丹後	硫酸塩泉	\N	\N	50344	\N
1768	2178	浅茂川浦島温泉	あさもがわうらしまおんせん	京都府竹野郡網野町字浅茂川			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	50345	\N
1769	2384	八丁浜小浜温泉	はっちょうはまこはまおんせん	京都府竹野郡網野町字小浜小字上屋敷496			大原・鞍馬・貴船	丹後	弱アルカリ性低張性泉	\N	\N	50346	\N
1770	2385	木橋温泉	きばしおんせん	京都府竹野郡弥栄町字木橋小字遠処146			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	50347	\N
1771	2402	丹後町間人温泉郷　鴻の鶴温泉	たんごちょうたいざおんせんきょう　こうのつるおんせん	京都府竹野郡丹後町間人小字鴻鶴場5133			大原・鞍馬・貴船	丹後	アルカリ単純泉	\N	\N	\N	\N
1772	2412	ひよし温泉	ひよしおんせん	京都府船井郡日吉町字中小字宮ノ向8			湯の花・丹波・美山	亀岡・湯の花・丹波	ナトリウム塩化物泉	\N	\N	\N	\N
1773	2555	成相観音温泉	なりあいかんのんおんせん	京都府宮津市字国分			天橋立・宮津・舞鶴	天橋立・宮津	その他	\N	\N	50339	\N
1774	2676	小天橋温泉きららの湯	しょうてんきょうおんせんきららのゆ	京都府熊野郡久美浜町字湊宮小字長砂２０４９			大原・鞍馬・貴船	久美浜・小天橋	アルカリ単純泉	\N	\N	50479	\N
1775	2677	丹後はなれ湖温泉	たんごはなれこおんせん	京都府竹野郡網野町字小浜小字大谷５８４			大原・鞍馬・貴船	丹後	ナトリウム塩化物泉	\N	\N	50480	\N
1776	2685	宮津温泉	みやづおんせん	京都府宮津市魚屋１００１－１			天橋立・宮津・舞鶴	天橋立・宮津	その他	\N	\N	50339	\N
1777	2726	大原温泉	おおはらおんせん	京都府京都市左京区大原			大原・鞍馬・貴船	大原・鞍馬・貴船	アルカリ単純泉	\N	\N	50503	\N
1778	2739	橘の郷　上野温泉	きのさと　うえのおんせん	京都府京丹後市網野町木津			丹後・久美浜	丹後	弱アルカリ性低張性泉	\N	\N	50510	\N
1779	2742	るり渓温泉	るりけいおんせん	京都府船井郡園部町			湯の花・丹波・美山	亀岡・湯の花・丹波	ナトリウム塩化物泉	\N	\N	50512	\N
1780	2971	蒲井温泉	かまいおんせん	京都府京丹後市久美浜町蒲井５２２番１			丹後・久美浜	久美浜・小天橋	弱アルカリ性低張性泉	\N	\N	50796	\N
1781	2984	宇川温泉	うかわおんせん	京都府京丹後市丹後町久僧１５６２			丹後・久美浜	丹後	ナトリウム塩化物泉	\N	\N	50804	\N
1782	2985	天山の湯	てんざんのゆ	京都府京都市左京区鞍馬貴船町17番			大原・鞍馬・貴船	大原・鞍馬・貴船	硫黄泉	\N	\N	50805	\N
1783	2997	京都東山温泉	きょうとひがしやまおんせん	京都府京都市東山区清閑寺霊山町7番地			祇園・東山・北白川周辺	祇園・東山	ナトリウム塩化物泉	\N	\N	50814	\N
1784	3006	京都竹の郷温泉	きょうとたけのさとおんせん	京都府京都市西京区大原野東境谷町2丁目4番地			嵯峨野・嵐山・高雄	嵯峨野・嵐山・高雄	単純温泉	\N	\N	50834	\N
1785	3009	スパ・トリニテ	すぱ・とりにて	京都府京都市中京区烏丸三条南			河原町・烏丸・大宮周辺	烏丸通・四条通	弱アルカリ性低張性泉	\N	\N	50837	\N
1786	3090	タンゴ峰山温泉	たんごみねやまおんせん	京都府京丹後市峰山町新町１７９８			丹後・久美浜	丹後	単純温泉	\N	\N	50339	\N
1787	3118	久美浜温泉	くみはまおんせん	京都府京丹後市久美浜町武蔵谷２７９１－１			丹後・久美浜	久美浜・小天橋	アルカリ単純泉	\N	\N	50355	\N
1788	3185	京都温泉	きょうとおんせん	京都府京都市下京区西洞院通塩小路下ル南不動町803番			京都駅周辺	京都駅近郊・山科	単純温泉	\N	\N	50947	\N
1789	3232	京丹後温泉	きょうたんごおんせん	京都府京丹後市網野町三津小宇牛ヶ立271			丹後・久美浜	丹後	弱アルカリ性低張性泉	\N	\N	50964	\N
1790	3275	金温泉・銀温泉	きんおんせん・ぎんおんせん	京都府宮津市日置３１００－８			天橋立・宮津・舞鶴	天橋立・宮津	中性低張性高温泉	\N	\N	50339	\N
1791	3307	銀温泉	ぎんおんせん	京都府宮津市字江尻小字申谷1480番			天橋立・宮津・舞鶴	天橋立・宮津	アルカリ単純泉	\N	\N	50339	\N
1792	1568	樫田温泉	かしだおんせん	大阪府高槻市田能的谷			大阪北部（茨木・高槻・箕面・伊丹空港）	茨木・高槻・枚方	単純温泉	\N	\N	\N	\N
1793	1569	花の里温泉	はなのさとおんせん	大阪府高槻市原			大阪北部（茨木・高槻・箕面・伊丹空港）	茨木・高槻・枚方	放射能泉	\N	\N	\N	\N
1794	1570	伏尾温泉	ふしおおんせん	大阪府池田市伏尾町			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	放射能泉	\N	\N	50349	\N
1795	1571	箕面温泉	みのおおんせん	大阪府箕面市温泉町			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	放射能泉	\N	\N	50974	\N
1796	1572	石切温泉	いしきりおんせん	大阪府東大阪市上石切町			大阪東部（寝屋川・守口・門真・東大阪）	東大阪・八尾	炭酸水素塩泉	\N	\N	\N	\N
1797	1573	長野温泉	ながのおんせん	大阪府河内長野市末広町3-25			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	放射能泉	\N	\N	50691	\N
1798	1574	天見温泉	あまみおんせん	大阪府河内長野市天見158			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	ナトリウム塩化物泉	\N	\N	50641	\N
1799	1575	犬鳴山温泉	いぬなきやまおんせん	大阪府泉佐野市大木			大阪南部（堺・岸和田・関西空港）	関空・泉佐野・岬	その他	\N	\N	\N	\N
1800	2255	牛滝温泉　いよやかの郷	うしたきおんせん　いよやかのさと	大阪府岸和田市大沢町1156番地			大阪南部（堺・岸和田・関西空港）	岸和田・貝塚	炭酸水素塩泉	\N	\N	\N	\N
1801	2256	犬鳴温泉センター	いぬなきおんせんせんたー	大阪府泉佐野市大木2238番地			大阪南部（堺・岸和田・関西空港）	関空・泉佐野・岬	ナトリウム塩化物泉	\N	\N	\N	\N
1802	2257	奥水間温泉	おくみずまおんせん	大阪府貝塚市木積3752-5			大阪南部（堺・岸和田・関西空港）	岸和田・貝塚	硫黄泉	\N	\N	\N	\N
1803	2258	千亀利の湯	ちきりのゆ	大阪府岸和田市並松町25-17			大阪南部（堺・岸和田・関西空港）	岸和田・貝塚	その他	\N	\N	\N	\N
1804	2483	世界の大温泉	せかいのだいおんせん	大阪府大阪市浪速区恵美須東3-4-24			心斎橋・なんば・四ツ橋	心斎橋・なんば・四ツ橋	アルカリ単純泉	\N	\N	\N	\N
1805	2484	奥天野温泉	おくあまのおんせん	大阪府河内長野市日野1520			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	単純温泉	\N	\N	\N	\N
1806	2485	さやま天然温泉	さやまてんねんおんせん	大阪府大阪狭山市岩室1-334-1			大阪東部（寝屋川・守口・門真・東大阪）	富田林・河内長野	単純温泉	\N	\N	\N	\N
1807	2578	大和川矢田温泉	やまとがわやだおんせん	大阪府大阪市東住吉区矢田			上本町・天王寺・市内南部	住吉・長居公園	その他	\N	\N	\N	\N
1808	2836	能勢温泉	のせおんせん	大阪府豊能郡能勢町山辺４０９－８１			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	その他	\N	\N	50667	\N
1809	2839	生駒山龍間温泉	いこまさんりゅうまおんせん	大阪府大東市大字龍間２６６－８			大阪東部（寝屋川・守口・門真・東大阪）	寝屋川・守口・門真・四條畷	ナトリウム塩化物泉	\N	\N	50673	\N
1810	3276	能勢アートレイク温泉	のせあーとれいくおんせん	大阪府豊能郡能勢町野間出野566番			大阪北部（茨木・高槻・箕面・伊丹空港）	池田・箕面・能勢	その他	\N	\N	50667	\N
1811	1605	城崎温泉	きのさきおんせん	兵庫県城崎郡城崎町湯島			城崎・竹野・豊岡	城崎	塩化物泉	\N	\N	50355	\N
1812	1606	湯村温泉	ゆむらおんせん	兵庫県美方郡浜坂町			香住・浜坂・湯村	浜坂	炭酸水素塩泉	\N	\N	50360	\N
1813	1607	うずしお温泉	うずしおおんせん	兵庫県三原郡西淡町伊加利湯ノ川			淡路島	南あわじ	炭酸水素塩泉	\N	\N	50354	\N
1814	1608	日和山温泉	ひよりやまおんせん	兵庫県豊岡市瀬戸			城崎・竹野・豊岡	城崎	塩化物泉	\N	\N	\N	\N
1815	1609	香住温泉	かすみおんせん	兵庫県城崎郡香住町下浜			香住・浜坂・湯村	香住	単純温泉	\N	\N	50358	\N
1816	1610	浜坂温泉郷	はまさかおんせんきょう	兵庫県美方郡浜坂町			香住・浜坂・湯村	浜坂	塩化物泉	\N	\N	50361	\N
1817	1611	小代温泉	おじろおんせん	兵庫県美方郡美方町大谷			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	硫酸塩泉	\N	\N	\N	\N
1818	1612	中間温泉	なかまおんせん	兵庫県養父郡大屋町中間			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	単純温泉	\N	\N	\N	\N
1819	1613	波賀温泉	はがおんせん	兵庫県宍栗郡波賀町原			尼崎・宝塚・三田・篠山	三田・篠山	硫黄泉	\N	\N	\N	\N
1820	1614	栃原温泉	とちわらおんせん	兵庫県朝来市生野町栃原			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	放射能泉	\N	\N	\N	\N
1821	1615	草山温泉	くさやまおんせん	兵庫県多紀郡西紀町遠方			尼崎・宝塚・三田・篠山	三田・篠山	含鉄泉	\N	\N	\N	\N
1822	1616	国領温泉	こくりょうおんせん	兵庫県氷上郡春日町国領			尼崎・宝塚・三田・篠山	三田・篠山	塩化物泉	\N	\N	\N	\N
1823	1617	籠坊温泉	かごぼうおんせん	兵庫県多紀郡篠山町後川新田			尼崎・宝塚・三田・篠山	三田・篠山	二酸化炭素泉	\N	\N	\N	\N
1824	1618	宝塚温泉	たからづかおんせん	兵庫県宝塚市湯本町			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	50352	\N
1825	1619	武田尾温泉	たけだおおんせん	兵庫県西宮市塩瀬町名塩			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	50353	\N
1826	1620	鹿の子温泉	かのこおんせん	兵庫県神戸市北区長尾町宅原			神戸・有馬・明石	有馬	単純温泉	\N	\N	\N	\N
1827	1621	有馬温泉	ありまおんせん	兵庫県神戸市北区有馬町			神戸・有馬・明石	有馬	硫黄泉	\N	\N	50350	\N
1828	1622	大沢温泉	おおぞおんせん	兵庫県神戸市北区大沢町上大沢			神戸・有馬・明石	有馬	含鉄泉	\N	\N	\N	\N
1829	1623	須磨温泉	すまおんせん	兵庫県神戸市須磨区須磨寺町			神戸・有馬・明石	須磨・舞子・明石	塩化物泉	\N	\N	\N	\N
1830	1624	やしろ夢園温泉	やしろゆめぞのおんせん	兵庫県加東郡社町家原			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	放射能泉	\N	\N	\N	\N
1831	1625	中村温泉	なかむらおんせん	兵庫県神崎郡香寺町中村			姫路・赤穂・播磨	姫路・加古川	塩化物泉	\N	\N	\N	\N
1832	1626	塩田温泉	しおたおんせん	兵庫県飾磨郡夢前町塩田			姫路・赤穂・播磨	姫路・加古川	含鉄泉	\N	\N	50516	\N
1833	1627	加古川温泉	かこがわおんせん	兵庫県加古川市上荘町井ノ口			姫路・赤穂・播磨	姫路・加古川	塩化物泉	\N	\N	\N	\N
1834	1628	赤穂温泉	あこうおんせん	兵庫県赤穂市御崎			姫路・赤穂・播磨	赤穂・相生・たつの	炭酸水素塩泉	\N	\N	50351	\N
1835	1629	岩屋温泉	いわやおんせん	兵庫県津名郡淡路町岩屋			淡路島	淡路	単純温泉	\N	\N	50354	\N
1836	1630	小倉山温泉	おぐらやまおんせん	兵庫県津名郡北淡町富島字小倉山			淡路島	淡路	放射能泉	\N	\N	\N	\N
1837	1631	洲本温泉	すもとおんせん	兵庫県洲本市山手			淡路島	淡路	放射能泉	\N	\N	50354	\N
1838	1632	南淡温泉	なんだんおんせん	兵庫県三原郡南淡町福良			淡路島	南あわじ	単純温泉	\N	\N	50354	\N
1839	1633	石道温泉	いしみちおんせん	兵庫県川西市石道下垣内			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	\N	\N
1840	1634	神鍋温泉	かんなべおんせん	兵庫県城崎郡日高町			神鍋・鉢伏・養父・和田山	神鍋・江原	二酸化炭素泉	\N	\N	50359	\N
1841	1635	出石温泉	いずしおんせん	兵庫県豊岡市出石町福住811番地			城崎・竹野・豊岡	豊岡・出石	炭酸水素塩泉	\N	\N	50921	\N
1842	1636	淡路島一宮温泉	あわじしまいちのみやおんせん	兵庫県津名郡一宮温泉			淡路島	淡路	塩化物泉	\N	\N	50354	\N
1843	2170	竹野温泉	たけのおんせん	兵庫県城崎郡竹野町竹野字引舟			城崎・竹野・豊岡	竹野	単純温泉	\N	\N	50357	\N
1844	2179	城崎円山川温泉	きのさきまるやまがわおんせん	兵庫県豊岡市小島			城崎・竹野・豊岡	城崎	弱アルカリ性低張性泉	\N	\N	50356	\N
1845	2225	佐津温泉	さづおんせん	兵庫県城崎郡香住町訓谷			香住・浜坂・湯村	香住	炭酸水素塩泉	\N	\N	50358	\N
1846	2226	柴山温泉	しばやまおんせん	兵庫県城崎郡香住町浦上			香住・浜坂・湯村	香住	単純温泉	\N	\N	50358	\N
1847	2642	かもめの湯温泉	かもめのゆおんせん	兵庫県西宮市鳴尾浜3-13			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	塩化物泉	\N	\N	\N	\N
1848	2682	黒川温泉	くろかわおんせん	兵庫県朝来市生野町黒川			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	アルカリ単純泉	\N	\N	\N	\N
1849	2780	ジェノバ温泉	じぇのばおんせん	兵庫県津名郡北淡町野島蟇ノ浦150番地			淡路島	淡路	ナトリウム塩化物泉	\N	\N	50354	\N
1850	2793	ハチ北温泉	はちきたおんせん	兵庫県美方郡香美町村岡区大笹129-1			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	硫酸塩泉	\N	\N	50613	\N
1851	2794	七釜温泉	しちかまおんせん	兵庫県美方郡新温泉町七釜524			香住・浜坂・湯村	浜坂	アルカリ単純泉	\N	\N	50361	\N
1852	2805	シルク温泉	しるくおんせん	\N			城崎・竹野・豊岡	豊岡・出石	放射能泉	\N	\N	50640	\N
1853	2890	石井温泉	いしいおんせん	兵庫県美方郡村岡区村岡２５９７－４			神鍋・鉢伏・養父・和田山	ハチ北高原・おじろ	単純温泉	\N	\N	50720	\N
1854	2892	あまるべ温泉	あまるべおんせん	兵庫県香美町香住区余部808-2			香住・浜坂・湯村	香住	弱アルカリ性低張性泉	\N	\N	50358	\N
1855	2907	やぶ温泉	やぶおんせん	兵庫県養父市上野299番地			神鍋・鉢伏・養父・和田山	ハチ高原・養父・和田山	単純温泉	\N	\N	50741	\N
1856	3101	サンライズ温泉	さんらいずおんせん	兵庫県南あわじ市広田広田1466-1			淡路島	南あわじ	アルカリ単純泉	\N	\N	50354	\N
1857	3107	南淡路温泉郷　潮崎温泉	みなみあわじおんせんきょう　しおざきおんせん	兵庫県南あわじ阿万西町字大谷1061番地			淡路島	南あわじ	弱アルカリ性低張性泉	\N	\N	50354	\N
1858	3115	東山温泉	ひがしやまおんせん	兵庫県宍粟市波賀町上野上東山１７９９－６			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	弱アルカリ性低張性泉	\N	\N	50903	\N
1859	3124	天然温泉　東浦花の湯	てんねんおんせん　ひがしうらはなのゆ	兵庫県淡路市久留麻2743番地			淡路島	淡路	放射能泉	\N	\N	50354	\N
1860	3145	毘沙門鉱泉	びしゃもんこうせん	兵庫県西宮市越水社家郷山1-27			尼崎・宝塚・三田・篠山	尼崎・西宮・宝塚・武田尾	ナトリウム塩化物泉	\N	\N	50903	\N
1861	3167	神戸六甲温泉	こうべろっこうおんせん	神戸市東灘区向洋町中2-13（六甲アイランド）			神戸・有馬・明石	六甲アイランド	硫酸塩泉	\N	\N	50350	\N
1862	3208	香寺温泉	こうでらおんせん	兵庫県姫路市香寺町恒屋1470			姫路・赤穂・播磨	姫路・加古川	含銅一鉄泉	\N	\N	50903	\N
1863	3237	瑞穂の湯	みずほのゆ	兵庫県三木市細川町垂穂894番地の60号			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	放射能泉	\N	\N	50516	\N
1864	3251	こうのとり温泉	こうのとりおんせん	兵庫県豊岡市小島1220			城崎・竹野・豊岡	豊岡・出石	単純温泉	\N	\N	50356	\N
1865	3277	天然温泉　さとわき湧玉の湯	てんねんおんせん　さとわきわくたまのゆ	兵庫県三木市口吉川町里脇８２１－３			姫路・赤穂・播磨	三木・西脇・宍粟・佐用・兵庫中部	弱アルカリ性低張性泉	\N	\N	50516	\N
1866	3300	南あわじ温泉	みなみあわじおんせん	兵庫県南あわじ市阿万吹上町字船城1433番2			淡路島	南あわじ	アルカリ単純泉	\N	\N	50354	\N
1867	3301	南あわじ温泉郷　南あわじ温泉	みなみあわじおんせんきょう　みなみあわじおんせん	兵庫県南あわじ市福良甲１５２９－７			淡路島	南あわじ	弱アルカリ性低張性泉	\N	\N	50354	\N
1868	1548	天平の湯温泉	てんぴょうのゆおんせん	奈良県奈良市法華寺町			奈良・斑鳩・天理	奈良・大和郡山	炭酸水素塩泉	\N	\N	50362	\N
1869	1549	宝来温泉	ほうらいおんせん	奈良県奈良市宝来4丁目18番1号			奈良・斑鳩・天理	奈良・大和郡山	単純温泉	\N	\N	50915	\N
1870	1550	信貴山温泉	しぎさんおんせん	奈良県生駒郡三郷町信貴山西２－４０			奈良・斑鳩・天理	生駒・信貴山	単純温泉	\N	\N	50916	\N
1871	1551	長谷寺温泉	はせでらおんせん	奈良県桜井市初瀬			飛鳥・橿原・三輪	飛鳥・橿原・三輪	単純温泉	\N	\N	\N	\N
1872	1552	奥香落温泉	おくこおちおんせん	奈良県宇陀郡曽爾村今井			飛鳥・橿原・三輪	室生・宇陀	炭酸水素塩泉	\N	\N	\N	\N
1873	1553	宮滝温泉	みやたきおんせん	奈良県吉野郡吉野町宮滝			吉野・奥吉野	吉野・天川・洞川	塩化物泉	\N	\N	\N	\N
1874	1554	吉野山温泉	よしのやまおんせん	奈良県吉野郡吉野町吉野山937			吉野・奥吉野	吉野・天川・洞川	鉱泉	\N	\N	50788	\N
1875	1555	吉野温泉	よしのおんせん	奈良県吉野郡吉野町吉野山			吉野・奥吉野	吉野・天川・洞川	含鉄泉	\N	\N	\N	\N
1876	1556	下市温泉	しもいちおんせん	奈良県吉野郡下市町			吉野・奥吉野	吉野・天川・洞川	炭酸水素塩泉	\N	\N	\N	\N
1877	1557	二見温泉	ふたみおんせん	奈良県五條市二見川端			吉野・奥吉野	吉野・天川・洞川	塩化物泉	\N	\N	\N	\N
1878	1558	西吉野温泉	にしよしのおんせん	奈良県吉野郡西吉野村城戸			吉野・奥吉野	吉野・天川・洞川	塩化物泉	\N	\N	\N	\N
1879	1559	大峯山洞川温泉	おおみねさんどろがわおんせん	奈良県吉野郡天川村洞川			吉野・奥吉野	吉野・天川・洞川	単純温泉	\N	\N	50363	\N
1880	1560	新湯盛温泉	しんゆもりおんせん	奈良県吉野郡川上村迫６９５ 			吉野・奥吉野	吉野・天川・洞川	単純温泉	\N	\N	50825	\N
1881	1561	入之波温泉	しおのはおんせん	奈良県吉野郡川上村入之波			吉野・奥吉野	吉野・天川・洞川	二酸化炭素泉	\N	\N	\N	\N
1882	1562	小処温泉	こどころおんせん	奈良県吉野郡上北山村小橡			吉野・奥吉野	奥吉野・十津川	硫黄泉	\N	\N	\N	\N
1883	1563	野迫川温泉	のせがわおんせん	奈良県吉野郡野迫川村北今西			吉野・奥吉野	奥吉野・十津川	単純温泉	\N	\N	\N	\N
1884	1564	湯泉地温泉	とうせんじおんせん	奈良県吉野郡十津川村武蔵			吉野・奥吉野	奥吉野・十津川	硫黄泉	\N	\N	50802	\N
1885	1565	十津川温泉	とつがわおんせん	奈良県吉野郡十津川村			吉野・奥吉野	奥吉野・十津川	ナトリウム塩化物泉	\N	\N	50743	\N
1886	1566	天然大和温泉	てんねんやまとおんせん	奈良県天理市嘉播町			奈良・斑鳩・天理	斑鳩・天理	塩化物泉	\N	\N	\N	\N
1887	1567	天辻大師温泉	てんつじだいしおんせん	奈良県吉野郡大塔村大字天辻			吉野・奥吉野	奥吉野・十津川	単純温泉	\N	\N	\N	\N
1888	2579	天の川温泉	あまのがわおんせん	奈良県吉野郡天川村坪内			吉野・奥吉野	吉野・天川・洞川	ナトリウム塩化物泉	\N	\N	\N	\N
1889	2827	金剛乃湯	こんごうのゆ	奈良県五條市新町2-1-33			吉野・奥吉野	吉野・天川・洞川	炭酸水素塩泉	\N	\N	50658	\N
1890	2828	大塔温泉	おおとうおんせん	奈良県五條市大塔町阪本249			吉野・奥吉野	吉野・天川・洞川	炭酸水素塩泉	\N	\N	50659	\N
1891	2853	平城宮温泉	へいじょうきゅうおんせん	奈良県奈良市二条町３丁目９番地１号			奈良・斑鳩・天理	奈良・大和郡山	その他	\N	\N	50686	\N
1892	2854	大和平群温泉	やまとへぐりおんせん	奈良県生駒郡平群町上庄2-16-1			奈良・斑鳩・天理	生駒・信貴山	炭酸水素塩泉	\N	\N	50687	\N
1893	2863	かしはらの湯	かしはらのゆ	奈良県橿原市久米町652－2			飛鳥・橿原・三輪	飛鳥・橿原・三輪	二酸化炭素泉	\N	\N	50696	\N
1894	2939	飛鳥の湯	あすかのゆ	奈良県大和郡山市杉町201番1			奈良・斑鳩・天理	奈良・大和郡山	弱アルカリ性低張性泉	\N	\N	50767	\N
1895	2952	上北山温泉	かみきたやまおんせん	奈良県吉野郡上北山村河合552-2			吉野・奥吉野	奥吉野・十津川	ナトリウム塩化物泉	\N	\N	50781	\N
1896	2959	新吉野温泉	しんよしのおんせん	奈良県吉野郡吉野町吉野山４０３			吉野・奥吉野	吉野・天川・洞川	単純温泉	\N	\N	50786	\N
1897	3042	美榛温泉	みはるおんせん	奈良県宇陀市榛原区福地２５５			飛鳥・橿原・三輪	室生・宇陀	弱アルカリ性低張性泉	\N	\N	50860	\N
1898	3082	下北山温泉　きなりの湯	しもきたやまおんせん　きなりのゆ	奈良県吉野郡下北山村上池原２８２			吉野・奥吉野	奥吉野・十津川	ナトリウム塩化物泉	\N	\N	50888	\N
1899	3157	さくら咲く温泉	さくらさくおんせん	奈良県吉野郡東吉野村小川876			吉野・奥吉野	奥吉野・十津川	その他	\N	\N	50934	\N
1900	3286	朱雀の湯	すざくのゆ	奈良県　奈良市　八条　５丁目３４０番地の１			奈良・斑鳩・天理	奈良・大和郡山	炭酸水素塩泉	\N	\N	\N	\N
1901	3321	本郷温泉	ほんごうおんせん	奈良県宇陀市大宇陀本郷267			飛鳥・橿原・三輪	室生・宇陀	単純温泉	\N	\N	50969	\N
1902	3325	奈良温泉　若草の湯	ならおんせん　わかくさのゆ	奈良県奈良市三条本町1098番地			奈良・斑鳩・天理	奈良・大和郡山	二酸化炭素泉	\N	\N	50934	\N
1903	1576	龍神温泉	りゅうじんおんせん	和歌山県日高郡龍神村龍神			白浜・龍神	龍神	炭酸水素塩泉	\N	\N	50365	\N
1904	1577	紀伊見温泉	きいみおんせん	和歌山県橋本市矢倉脇			福井・奥越前	高野山・橋本	二酸化炭素泉	\N	\N	\N	\N
1905	1578	加太淡嶋温泉	かだあわしまおんせん	和歌山県和歌山市深山			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	炭酸水素塩泉	\N	\N	50529	\N
1906	1579	花山温泉	はなやまおんせん	和歌山県和歌山市鳴神			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	塩化物泉	\N	\N	50713	\N
1907	1580	美里温泉	みさとおんせん	和歌山県海草郡美里町菅沢			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	ナトリウム塩化物泉	\N	\N	\N	\N
1908	1581	清水温泉	しみずおんせん	和歌山県有田郡清水町清水			有田・御坊・日高	有田	その他	\N	\N	50563	\N
1909	1582	大谷温泉	おおたにおんせん	和歌山県有田郡吉備町大谷			有田・御坊・日高	有田	炭酸水素塩泉	\N	\N	50563	\N
1910	1583	有田温泉	ありだおんせん	和歌山県有田市宮崎町			有田・御坊・日高	有田	炭酸鉄泉	\N	\N	50364	\N
1911	1584	湯浅温泉	ゆあさおんせん	和歌山県有田郡湯浅町湯浅			有田・御坊・日高	有田	硫黄泉	\N	\N	50563	\N
1912	1585	みなべ温泉	みなべおんせん	和歌山県日高郡南部町埴田南部海岸			白浜・龍神	白浜・南部・田辺	塩化物泉	\N	\N	50563	\N
1913	1586	南紀の台温泉	なんきのだいおんせん	和歌山県田辺市神島台			白浜・龍神	白浜・南部・田辺	炭酸水素塩泉	\N	\N	\N	\N
1914	1587	白浜温泉	しらはまおんせん	和歌山県西牟婁郡白浜町			白浜・龍神	白浜・南部・田辺	単純温泉	\N	\N	50366	\N
1915	1588	椿温泉	つばきおんせん	和歌山県西牟婁郡白浜町椿			白浜・龍神	白浜・南部・田辺	炭酸水素塩泉	\N	\N	50631	\N
1916	1589	すさみ温泉	すさみおんせん	和歌山県西牟婁郡すさみ町周参見			勝浦・串本・すさみ	串本・すさみ	炭酸水素塩泉	\N	\N	50367	\N
1917	1590	湯の花温泉	ゆのはなおんせん	和歌山県東牟婁郡古座川町添野川			勝浦・串本・すさみ	那智勝浦・太地	塩化物泉	\N	\N	\N	\N
1918	1591	串本温泉	くしもとおんせん	和歌山県西牟婁郡串本町串本			勝浦・串本・すさみ	串本・すさみ	塩化物泉	\N	\N	50368	\N
1919	1592	月野瀬温泉	つきのせおんせん	和歌山県東牟婁郡古座川町月野瀬			勝浦・串本・すさみ	那智勝浦・太地	炭酸水素塩泉	\N	\N	\N	\N
1920	1593	湯川温泉	ゆかわおんせん	和歌山県東牟婁郡那智勝浦町湯川			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	50369	\N
1921	1594	太地温泉	たいぢおんせん	和歌山県東牟婁郡太地町太地常渡			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	50369	\N
1922	1595	夏山温泉	なつさおんせん	和歌山県東牟婁郡太地町夏山			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	\N	\N
1923	1596	勝浦温泉	かつうらおんせん	和歌山県東牟婁郡那智勝浦町勝浦			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	50369	\N
1924	1597	目覚め温泉	めざめおんせん	和歌山県東牟婁郡那智勝浦町宇久井			勝浦・串本・すさみ	那智勝浦・太地	硫黄泉	\N	\N	\N	\N
1925	1598	湯の峰温泉	ゆのみねおんせん	和歌山県東牟婁郡本宮町湯の峰			本宮・新宮・中辺路	本宮	硫黄泉	\N	\N	50370	\N
1926	1599	渡瀬温泉	わたぜおんせん	和歌山県東牟婁郡本宮町渡瀬			本宮・新宮・中辺路	本宮	塩化物泉	\N	\N	50565	\N
1927	1600	川湯温泉	かわゆおんせん	和歌山県東牟婁郡本宮町川湯			本宮・新宮・中辺路	本宮	硫黄泉	\N	\N	50371	\N
1928	1601	和歌の浦温泉萬葉の湯	わかのうらおんせんまんようのゆ	和歌山県和歌山市新和歌浦			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	硫黄泉	\N	\N	50818	\N
1929	1602	田辺温泉	たなべおんせん	和歌山県田辺市新庄町			白浜・龍神	白浜・南部・田辺	塩化物泉	\N	\N	50563	\N
1930	1603	中津温泉あやめの湯	なかつおんせんあやめのゆ	和歌山県日高郡中津村大字高津尾			有田・御坊・日高	御坊・日高	硫黄泉	\N	\N	\N	\N
1931	1604	湯ノ谷温泉	ゆのたにおんせん	和歌山県東牟婁郡古座町田原			勝浦・串本・すさみ	那智勝浦・太地	炭酸水素塩泉	\N	\N	\N	\N
1932	2539	鶴の湯温泉	つるのゆおんせん	和歌山県日高郡南部川村熊瀬川47			白浜・龍神	白浜・南部・田辺	単純温泉	\N	\N	\N	\N
1933	2540	富里温泉	とみさとおんせん	和歌山県西牟婁郡大塔村下川下982			本宮・新宮・中辺路	中辺路・大塔	塩化物泉	\N	\N	\N	\N
1934	2643	紀州黒潮温泉	きしゅうくろしおおんせん	和歌山県和歌山市毛見151７			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	炭酸水素塩泉	\N	\N	50713	\N
1935	2652	小又川温泉	こまたかわおんせん	和歌山県日高郡龍神村龍神			有田・御坊・日高	御坊・日高	硫黄泉	\N	\N	\N	\N
1936	2653	まぶゆ温泉	まぶゆおんせん	和歌山県西牟婁郡白浜町８６４			白浜・龍神	白浜・南部・田辺	硫黄泉	\N	\N	\N	\N
1937	2675	美女湯温泉	みめゆおんせん	和歌山県東牟婁郡古座川町長追２５７			勝浦・串本・すさみ	那智勝浦・太地	弱アルカリ性低張性泉	\N	\N	50472	\N
1938	2716	東谷温泉	ひがしだにおんせん	和歌山県西牟婁郡白浜町2727-2			白浜・龍神	白浜・南部・田辺	アルカリ単純泉	\N	\N	\N	\N
1939	2841	だるま湯	だるまゆ	和歌山県海草郡紀美野町滝の川７３			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	単純温泉	\N	\N	50675	\N
1940	2844	ゆの里温泉	ゆのさとおんせん	和歌山県橋本市神野々898			高野山	高野山・橋本	中性低張性高温泉	\N	\N	50678	\N
1941	2847	日置川温泉	ひきがわおんせん	和歌山県西牟婁郡白浜町日置			白浜・龍神	白浜・南部・田辺	アルカリ単純泉	\N	\N	50681	\N
1942	2884	紀三井寺温泉　花の湯	きみいでらおんせん　はなのゆ	和歌山県和歌山市紀三井寺673			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	その他	\N	\N	50713	\N
1943	3002	和歌の浦温泉　天石の湯	わかのうらおんせん　てんせきのゆ	和歌山県和歌山市田野８２			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	ナトリウム塩化物泉	\N	\N	50818	\N
1944	3003	かわべ温泉　きさくの湯	かわべおんせん　きさくのゆ	和歌山県日高郡日高川町平川８４９－１			有田・御坊・日高	御坊・日高	硫黄泉	\N	\N	50819	\N
1945	3091	龍門山温泉	りゅうもんざんおんせん	和歌山県和歌山市美園町３丁目３６番			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	弱アルカリ性低張性泉	\N	\N	50713	\N
1946	3096	美山温泉　	みやまおんせん	和歌山県日高郡日高川町初湯川２０２			有田・御坊・日高	御坊・日高	ナトリウム塩化物泉	\N	\N	50563	\N
1947	3100	栖原温泉	すはらおんせん	和歌山県有田郡湯浅町大字栖原小字長尾1364-2			有田・御坊・日高	有田	炭酸水素塩泉	\N	\N	50563	\N
1948	3126	紀州みなべ千里浜温泉	きしゅうみなべせんりはまおんせん	和歌山県日高郡みなべ町山内目津355番地の1			有田・御坊・日高	有田	塩化物泉	\N	\N	50563	\N
1949	3153	藤乃湯	ふじのゆ	和歌山県西牟婁郡白浜町３７４６番地			白浜・龍神	白浜・南部・田辺	炭酸水素塩泉	\N	\N	50366	\N
1950	3155	かつらぎ温泉	かつらぎおんせん	和歌山県伊都郡かつらぎ町佐野702			高野山	高野山・橋本	ナトリウム塩化物泉	\N	\N	50713	\N
1951	3172	衝幹湯	つくもとゆ	和歌山県西牟婁郡白浜町大浦2646			白浜・龍神	白浜・南部・田辺	二酸化炭素泉	\N	\N	50366	\N
1952	3216	加太淡嶋温泉　天空の湯	かだあわしまおんせん　てんくうのゆ	和歌山県和歌山市深山483			和歌山市・加太・和歌浦	和歌山市・加太・和歌浦	鉱泉	\N	\N	50529	\N
1953	3309	垣谷２源泉の混合泉	かきたに２げんせんのこんごうせん	和歌山県西牟婁郡白浜町3354‐4			白浜・龍神	白浜・南部・田辺	アルカリ単純泉	\N	\N	50366	\N
1954	1355	岩井温泉	いわいおんせん	鳥取県岩美郡岩美町岩井			鳥取・岩美	岩美	硫酸塩泉	\N	\N	50373	\N
1955	1356	鳥取温泉	とっとりおんせん	鳥取県鳥取市永楽温泉町			鳥取・岩美	鳥取	硫酸塩泉	\N	\N	50372	\N
1956	1357	吉岡温泉	よしおかおんせん	鳥取県鳥取市吉岡温泉町			鳥取・岩美	鳥取	単純温泉	\N	\N	50607	\N
1957	1358	浜村温泉	はまむらおんせん	鳥取県気高郡気高町浜村			鳥取・岩美	浜村・鹿野	塩化物泉	\N	\N	50374	\N
1958	1359	鹿野温泉	しかのおんせん	鳥取県気高郡鹿野町今市			鳥取・岩美	浜村・鹿野	単純温泉	\N	\N	50375	\N
1959	1360	東郷温泉	とうごうおんせん	鳥取県東伯郡東郷町旭			倉吉・三朝・湯梨浜	はわい・東郷	塩化物泉	\N	\N	50376	\N
1960	1361	はわい温泉	はわいおんせん	鳥取県東伯郡羽合町上浅津			倉吉・三朝・湯梨浜	はわい・東郷	塩化物泉	\N	\N	50377	\N
1961	1362	三朝温泉	みささおんせん	鳥取県東伯郡三朝町三朝			倉吉・三朝・湯梨浜	三朝	放射能泉	\N	\N	50378	\N
1962	1363	関金温泉	せきがねおんせん	鳥取県東伯郡関金町関金宿			倉吉・三朝・湯梨浜	倉吉・関金	塩化物泉	\N	\N	50379	\N
1963	1364	大山温泉	だいせんおんせん	鳥取県西伯郡岸本町丸山			米子・皆生・大山	大山	放射能泉	\N	\N	50608	\N
1964	1365	日吉津温泉	ひえづおんせん	鳥取県西伯郡日吉津村今吉			米子・皆生・大山	米子・皆生・境港	放射能泉	\N	\N	50608	\N
1965	1366	皆生温泉	かいけおんせん	鳥取県米子市皆生			米子・皆生・大山	米子・皆生・境港	塩化物泉	\N	\N	50380	\N
1966	2227	奥日野温泉	おくひのおんせん	鳥取県日野郡日南町花口字小倉原山1009-2			米子・皆生・大山	大山	塩化物泉	\N	\N	50608	\N
1967	2228	みなと温泉	みなとおんせん	鳥取県境港市竹内団地			米子・皆生・大山	米子・皆生・境港	放射能泉	\N	\N	50608	\N
1968	2229	上淀温泉	かみよどおんせん	鳥取県米子市淀江町福岡			米子・皆生・大山	米子・皆生・境港	ナトリウム塩化物泉	\N	\N	50608	\N
1969	2386	中山温泉	なかやまおんせん	鳥取県西伯郡大山町赤坂708			米子・皆生・大山	大山	アルカリ単純泉	\N	\N	50608	\N
1970	2403	砂丘温泉	さきゅうおんせん	鳥取県鳥取市福部町海士1013-1			鳥取・岩美	鳥取	アルカリ単純泉	\N	\N	50608	\N
1971	2404	船岡美人温泉	ふなおかびじんおんせん	鳥取県八頭郡八頭町船岡1832-5			鳥取・岩美	八頭	ナトリウム塩化物泉	\N	\N	50608	\N
1972	2405	湯原温泉	ゆはらおんせん	鳥取県八頭郡若桜町大字湯原字宮ノ元637			鳥取・岩美	八頭	硫酸塩泉	\N	\N	50608	\N
1973	2413	美肌の湯	びはだのゆ	鳥取県西伯郡大山町			米子・皆生・大山	大山	その他	\N	\N	50608	\N
1974	2720	岸本温泉	きしもとおんせん	鳥取県西伯郡岸本町大殿1010			米子・皆生・大山	大山	炭酸水素塩泉	\N	\N	50608	\N
1975	2721	湧くわく天然温泉　ラピスパ	わくわくてんねんおんせん　らぴすぱ	鳥取県米子市淀江町淀江2-38			米子・皆生・大山	米子・皆生・境港	その他	\N	\N	50608	\N
1976	2980	大山の湯	だいせんのゆ	鳥取県米子市2-38			米子・皆生・大山	米子・皆生・境港	単純温泉	\N	\N	50608	\N
1977	3137	大山伽羅温泉	だいせんきゃらおんせん	鳥取県西伯郡大山町鈑戸字大野１５２５－１１			米子・皆生・大山	大山	アルカリ単純泉	\N	\N	50381	\N
1978	3154	鳥取市有泉	とっとりしゆうせん	鳥取県鳥取市金沢字坂津口396-1			鳥取・岩美	鳥取	アルカリ単純泉	\N	\N	50372	\N
1979	3280	ブランナールみささ	ぶらんなーるみささ	鳥取県東伯郡三朝町三朝371‐1			倉吉・三朝・湯梨浜	三朝	単純温泉	\N	\N	50378	\N
1980	1367	松江しんじ湖温泉	まつえしんじこおんせん	島根県松江市千鳥町			松江・安来・玉造・奥出雲	松江・美保関・玉造	硫酸塩泉	\N	\N	50382	\N
1981	1368	三瓶温泉	さんべおんせん	島根県大田市三瓶町志学			出雲・大田・石見銀山	大田・温泉津	硫酸塩泉	\N	\N	50566	\N
1982	1369	天倫寺温泉	てんりんじおんせん	島根県松江市国屋町			松江・安来・玉造・奥出雲	松江・美保関・玉造	放射能泉	\N	\N	50609	\N
1983	1370	鷺の湯温泉	さぎのゆおんせん	島根県安来市さぎの湯温泉			松江・安来・玉造・奥出雲	安来	塩化物泉	\N	\N	50609	\N
1984	1371	玉造温泉	たまつくりおんせん	島根県八束郡玉湯町玉造			松江・安来・玉造・奥出雲	松江・美保関・玉造	硫酸塩泉	\N	\N	50383	\N
1985	1372	八雲温泉	やくもおんせん	島根県松江市八雲町熊野			松江・安来・玉造・奥出雲	松江・美保関・玉造	硫酸塩泉	\N	\N	50609	\N
1986	1373	海潮温泉	うしおおんせん	島根県大原郡大東町中湯石			松江・安来・玉造・奥出雲	奥出雲・雲南	硫酸塩泉	\N	\N	50609	\N
1987	1374	出雲湯村温泉	いずもゆむらおんせん	島根県雲南市木次町湯村			松江・安来・玉造・奥出雲	奥出雲・雲南	単純温泉	\N	\N	50609	\N
1988	1375	きまち温泉	きまちおんせん	島根県松江市宍道町上来待			松江・安来・玉造・奥出雲	松江・美保関・玉造	単純温泉	\N	\N	50609	\N
1989	1376	湯の川温泉	ゆのかわおんせん	島根県簸川郡斐川町学頭			出雲・大田・石見銀山	出雲・大社・湯の川	単純温泉	\N	\N	50609	\N
1990	1377	立久恵峡温泉	たちくえきょうおんせん	島根県出雲市乙立町			出雲・大田・石見銀山	出雲・大社・湯の川	塩化物泉	\N	\N	50609	\N
1991	1378	不老温泉	ふろうおんせん	島根県出雲市大社町修理免			出雲・大田・石見銀山	出雲・大社・湯の川	炭酸水素塩泉	\N	\N	50566	\N
1992	1379	湖陵温泉	こりょうおんせん	島根県出雲市湖陵町二部			出雲・大田・石見銀山	出雲・大社・湯の川	硫酸塩泉	\N	\N	50609	\N
1993	1380	華蔵温泉	はなくらおんせん	島根県出雲市多伎町久村			出雲・大田・石見銀山	出雲・大社・湯の川	放射能泉	\N	\N	50566	\N
1994	1381	小田温泉	おだおんせん	島根県 出雲市多伎町小田			出雲・大田・石見銀山	出雲・大社・湯の川	硫酸塩泉	\N	\N	50566	\N
1995	1382	用田温泉	もちだおんせん	島根県大田市長久町用田			出雲・大田・石見銀山	大田・温泉津	単純温泉	\N	\N	50566	\N
1996	1383	池田ラジウム温泉	いけだらじうむおんせん	島根県大田市三瓶町池田			出雲・大田・石見銀山	大田・温泉津	放射能泉	\N	\N	50566	\N
1997	1384	小屋原温泉	こやはらおんせん	島根県大田市三瓶町小屋原			出雲・大田・石見銀山	大田・温泉津	塩化物泉	\N	\N	50566	\N
1998	1385	湯抱温泉	ゆがかいおんせん	島根県邑智郡美郷町湯抱			出雲・大田・石見銀山	大田・温泉津	塩化物泉	\N	\N	50566	\N
1999	1386	潮温泉	うしおおんせん	島根県邑智郡美郷町長藤			出雲・大田・石見銀山	大田・温泉津	放射能泉	\N	\N	50566	\N
2000	1387	湯迫温泉	ゆざこおんせん	島根県大田市仁摩町天河内			出雲・大田・石見銀山	大田・温泉津	塩化物泉	\N	\N	50566	\N
2001	1388	温泉津温泉	ゆのつおんせん	島根県迩摩郡温泉津町温泉津			出雲・大田・石見銀山	大田・温泉津	単純温泉	\N	\N	50384	\N
2002	1389	上津井温泉	かんづいおんせん	島根県江津市松川町上津井			益田・浜田・津和野	浜田・江津・有福	炭酸水素塩泉	\N	\N	50566	\N
2003	1390	断魚温泉	だんぎょおんせん	島根県邑智郡邑南町井原			益田・浜田・津和野	浜田・江津・有福	炭酸水素塩泉	\N	\N	50566	\N
2004	1391	有福温泉	ありふくおんせん	島根県江津市有福温泉町			益田・浜田・津和野	浜田・江津・有福	単純温泉	\N	\N	50473	\N
2005	1392	美又温泉	みまたおんせん	島根県那賀郡金城町追原			益田・浜田・津和野	浜田・江津・有福	単純温泉	\N	\N	50566	\N
2006	1393	旭温泉	あさひおんせん	島根県那賀郡旭町木田			益田・浜田・津和野	浜田・江津・有福	単純温泉	\N	\N	50566	\N
2007	1394	荒磯温泉	あらいそおんせん	島根県益田市西平原町			益田・浜田・津和野	津和野・益田	単純温泉	\N	\N	50566	\N
2008	1395	多田温泉	ただおんせん	島根県益田市多田町			益田・浜田・津和野	津和野・益田	含鉄泉	\N	\N	50566	\N
2009	1396	大谷温泉	おおたにおんせん	島根県益田市大谷町			益田・浜田・津和野	津和野・益田	含鉄泉	\N	\N	50566	\N
2010	1397	柿木温泉	かきのきおんせん	島根県鹿足郡吉賀町柿木村柿木			益田・浜田・津和野	津和野・益田	塩化物泉	\N	\N	50566	\N
2011	1398	美都温泉	みとおんせん	島根県益田市美都町宇津川			益田・浜田・津和野	津和野・益田	単純温泉	\N	\N	50566	\N
2012	1399	木部谷温泉	きべだにおんせん	島根県鹿足郡吉賀町柿木村木部谷			益田・浜田・津和野	津和野・益田	塩化物泉	\N	\N	50566	\N
2013	2261	いわみ温泉	いわみおんせん	島根県邑智郡邑南町矢上8532-2			益田・浜田・津和野	浜田・江津・有福	アルカリ単純泉	\N	\N	50566	\N
2014	2335	出雲平成温泉	いずもへいせいおんせん	島根県出雲市平成町			出雲・大田・石見銀山	出雲・大社・湯の川	ナトリウム塩化物泉	\N	\N	50566	\N
2015	2336	多伎温泉	たきおんせん	島根県出雲市多伎町久村654			出雲・大田・石見銀山	出雲・大社・湯の川	硫酸塩泉	\N	\N	50566	\N
2016	2342	おろちゆったり館	おろちゆったりかん	島根県雲南市木次町東日登			松江・安来・玉造・奥出雲	奥出雲・雲南	硫酸塩泉	\N	\N	50609	\N
2017	2414	木次温泉	きすきおんせん	島根県雲南市木次町東日登			松江・安来・玉造・奥出雲	奥出雲・雲南	その他	\N	\N	50609	\N
2018	2416	風の国温泉	かぜのくにおんせん	島根県邑智郡桜江町長谷2696			益田・浜田・津和野	浜田・江津・有福	ナトリウム塩化物泉	\N	\N	50566	\N
2019	2729	名賀温泉	なよしおんせん	島根県鹿足郡津和町大字鷲原字瀬戸イ170-1			益田・浜田・津和野	津和野・益田	アルカリ単純泉	\N	\N	50566	\N
2020	2787	津和野温泉	つわのおんせん	島根県鹿足郡津和野町後田口82番地2			益田・浜田・津和野	津和野・益田	アルカリ単純泉	\N	\N	50560	\N
2021	2927	亀嵩温泉	かめだけおんせん	島根県仁多郡奥出雲町亀嵩3609-1			松江・安来・玉造・奥出雲	奥出雲・雲南	アルカリ単純泉	\N	\N	50609	\N
2022	3081	美保関温泉	みほのせきおんせん	島根県松江市美保関町福浦303			松江・安来・玉造・奥出雲	松江・美保関・玉造	放射能泉	\N	\N	50609	\N
2023	3093	比田温泉	ひだおんせん	島根県安来市広瀬町東比田１３７３			松江・安来・玉造・奥出雲	安来	ナトリウム塩化物泉	\N	\N	50609	\N
2024	3113	大社温泉	たいしゃおんせん	島根県出雲市大社町修理免８１８番５			出雲・大田・石見銀山	出雲・大社・湯の川	炭酸水素塩泉	\N	\N	50609	\N
2025	3212	石州の湯	せきしゅうのゆ	島根県江津市桜江町長谷1272番地5			益田・浜田・津和野	浜田・江津・有福	アルカリ単純泉	\N	\N	50566	\N
2026	3317	出雲須佐温泉	いずもすさおんせん	島根県出雲市佐田町原田737			出雲・大田・石見銀山	出雲・大社・湯の川	放射能泉	\N	\N	50609	\N
2027	3324	湯屋温泉	ゆやおんせん	島根県浜田市金城町下来原294‐2			益田・浜田・津和野	浜田・江津・有福	ナトリウム塩化物泉	\N	\N	50566	\N
2028	1304	湯郷温泉	ゆのごうおんせん	岡山県英田郡美作町湯郷			津山・美作三湯・蒜山	美作・湯郷	塩化物泉	\N	\N	50389	\N
2029	1305	あわくら温泉	あわくらおんせん	岡山県英田郡西粟倉村影石			津山・美作三湯・蒜山	美作・湯郷	放射能泉	\N	\N	50601	\N
2030	1306	倉見温泉	くらみおんせん	岡山県津山市加茂町倉見			津山・美作三湯・蒜山	津山・奥津	放射能泉	\N	\N	50601	\N
2031	1307	百々温泉	どうどうおんせん	岡山県津山市加茂町小中原			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2032	1308	上斎原温泉	かみさいばらおんせん	岡山県苫田郡上斎原村			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2033	1309	奥津温泉	おくつおんせん	岡山県苫田郡奥津町奥津			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50388	\N
2034	1310	津黒高原温泉	つぐろこうげんおんせん	岡山県真庭市蒜山下和			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50601	\N
2035	1311	湯原温泉　(湯原)	ゆばらおんせん	岡山県真庭郡湯原町湯本			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50387	\N
2036	1312	郷緑温泉　(湯原)	ごうろくおんせん	岡山県真庭市本庄			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50601	\N
2037	1313	足温泉　(湯原)	たるおんせん	岡山県真庭市都喜足			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50387	\N
2038	1314	真賀温泉　(湯原)	まがおんせん	岡山県真庭市仲間			津山・美作三湯・蒜山	湯原・蒜山高原	単純温泉	\N	\N	50387	\N
2039	1315	湯免温泉	ゆめおんせん	岡山県赤磐市塩木			津山・美作三湯・蒜山	美作・湯郷	硫黄泉	\N	\N	50601	\N
2040	1316	八幡温泉	やはたおんせん	岡山県岡山市北区建部町建部上			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2041	1317	小森温泉	こもりおんせん	岡山県加賀郡吉備中央町小森			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	50601	\N
2042	1318	湯の瀬温泉	ゆのせおんせん	岡山県加賀郡吉備中央町豊岡下			津山・美作三湯・蒜山	津山・奥津	硫黄泉	\N	\N	50601	\N
2043	1319	井倉温泉	いくらおんせん	岡山県新見市井倉			高梁・新見・吉備高原	新見・阿哲	単純温泉	\N	\N	50601	\N
2044	1320	鷺の巣温泉	さぎのすおんせん	岡山県上房郡賀陽町竹荘			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	\N	\N
2045	1321	月の原温泉	つきのはらおんせん	岡山県上房郡賀陽町上竹			津山・美作三湯・蒜山	津山・奥津	単純温泉	\N	\N	\N	\N
2046	1322	粟井温泉	あわいおんせん	岡山県岡山市粟井			岡山・玉野・牛窓	岡山・玉野	放射能泉	\N	\N	50600	\N
2047	1323	苫田温泉	とまだおんせん	岡山県岡山市栢谷			岡山・玉野・牛窓	岡山・玉野	放射能泉	\N	\N	50600	\N
2048	1324	湯迫温泉	ゆばおんせん	岡山県岡山市湯迫			岡山・玉野・牛窓	岡山・玉野	硫黄泉	\N	\N	50600	\N
2049	1325	怒塚山温泉	いかつやまおんせん	岡山県岡山市郡			岡山・玉野・牛窓	岡山・玉野	単純温泉	\N	\N	\N	\N
2050	1326	瀬戸大橋温泉	せとおおはしおんせん	岡山県倉敷市下庄			倉敷・総社・井笠	倉敷・児島・鷲羽山	塩化物泉	\N	\N	50600	\N
2051	1327	由加温泉	ゆがおんせん	岡山県倉敷市児島由加			倉敷・総社・井笠	倉敷・児島・鷲羽山	放射能泉	\N	\N	50600	\N
2052	1328	瀬戸大橋たまの温泉	せとおおはしたまのおんせん	岡山県玉野市渋川2-12-1			岡山・玉野・牛窓	岡山・玉野	ナトリウム塩化物泉	\N	\N	50600	\N
2053	1329	鷲羽山吹上温泉	わしゆうざんふきあげおんせん	岡山県倉敷市下津井吹上			倉敷・総社・井笠	倉敷・児島・鷲羽山	放射能泉	\N	\N	50600	\N
2054	1330	総社温泉	そうじゃおんせん	岡山県総社市井尻野			倉敷・総社・井笠	総社・井原・笠岡	放射能泉	\N	\N	50386	\N
2055	1331	遙照山温泉	ようしょうざんおんせん	岡山県浅口郡金光町上竹			倉敷・総社・井笠	総社・井原・笠岡	放射能泉	\N	\N	\N	\N
2056	1332	井原温泉	いばらおんせん	岡山県井原市井原町向町			倉敷・総社・井笠	総社・井原・笠岡	硫黄泉	\N	\N	\N	\N
2057	1333	倉敷王子が岳温泉	くらしきおおじがたけおんせん	岡山県倉敷市児島唐琴町			倉敷・総社・井笠	倉敷・児島・鷲羽山	弱アルカリ性低張性泉	\N	\N	50600	\N
2058	2486	下湯原温泉	しもゆばらおんせん	岡山県真庭市下湯原24-1			津山・美作三湯・蒜山	湯原・蒜山高原	アルカリ単純泉	\N	\N	50387	\N
2059	2487	神郷温泉	しんごうおんせん	岡山県阿哲郡神郷町高瀬			高梁・新見・吉備高原	新見・阿哲	放射能泉	\N	\N	50601	\N
2060	2488	新見千屋温泉	にいみちやおんせん	岡山県新見市千屋花見			高梁・新見・吉備高原	新見・阿哲	弱アルカリ性低張性泉	\N	\N	50601	\N
2061	2701	津山温泉	つやまおんせん	岡山県津山市大田５９１－４			津山・美作三湯・蒜山	津山・奥津	アルカリ単純泉	\N	\N	50601	\N
2062	2817	東吉備高原温泉	ひがしきびこうげんおんせん	岡山県和気郡佐伯町南山方金山向146			津山・美作三湯・蒜山	美作・湯郷	単純温泉	\N	\N	50650	\N
2063	2893	岡山桃太郎温泉	おかやまももたろうおんせん	岡山県岡山市牟佐2915-1			岡山・玉野・牛窓	岡山・玉野	弱アルカリ性低張性泉	\N	\N	50727	\N
2064	3028	薬寿の湯	やくじゅのゆ	岡山県津山市阿波1200			津山・美作三湯・蒜山	津山・奥津	その他	\N	\N	50601	\N
2065	3064	朝霧温泉	あさぎりおんせん	岡山県高梁市松原市神原2281－4			高梁・新見・吉備高原	高梁・川上・成羽	アルカリ単純泉	\N	\N	50601	\N
2066	3151	宮本武蔵温泉	みやもとむさしおんせん	岡山県美作市宮本字九反田101-3			津山・美作三湯・蒜山	美作・湯郷	単純温泉	\N	\N	50389	\N
2067	3165	愛の村温泉「ゆ・ら・り・あ」	あいのむらおんせん「ゆ・ら・り・あ」	岡山県美作市後山1872			津山・美作三湯・蒜山	美作・湯郷	弱アルカリ性低張性泉	\N	\N	50389	\N
2068	3241	作州武蔵温泉	さくしゅうむさしおんせん	岡山県美作市大町水谷長蔵口962番地			津山・美作三湯・蒜山	美作・湯郷	弱アルカリ性低張性泉	\N	\N	50389	\N
2069	3272	大芦高原温泉	おおあしこうげんおんせん	岡山県美作市上山１７３５			津山・美作三湯・蒜山	美作・湯郷	弱アルカリ性低張性泉	\N	\N	50389	\N
2070	3278	のとろ温泉	のとろおんせん	岡山県苫田郡鏡野町富西谷2078－6			津山・美作三湯・蒜山	津山・奥津	ナトリウム塩化物泉	\N	\N	50601	\N
2071	3327	吉備路温泉	きびじおんせん	岡山県総社市三須８２５‐１			倉敷・総社・井笠	総社・井原・笠岡	単純温泉	\N	\N	50600	\N
2072	1334	比婆山温泉	ひばやまおんせん	広島県比婆郡西城町油木			庄原・三次・芸北	庄原・帝釈峡・神石高原	放射能泉	\N	\N	\N	\N
2073	1335	比和温泉	ひわおんせん	広島県比婆郡比和町比和			庄原・三次・芸北	庄原・帝釈峡・神石高原	塩化物泉	\N	\N	\N	\N
2074	1336	東城温泉	とうじょうおんせん	広島県比婆郡東城町東城			庄原・三次・芸北	庄原・帝釈峡・神石高原	単純温泉	\N	\N	\N	\N
2075	1337	矢野温泉	やのおんせん	広島県甲奴郡上下町矢野			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50569	\N
2076	1338	本郷温泉	ほんごうおんせん	広島県福山市本郷町			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	\N	\N
2077	1339	神勝寺温泉	しんしょうじおんせん	広島県沼隅郡沼隅町中山南			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	\N	\N
2078	1340	養老温泉	ようろうおんせん	広島県尾道市美ノ郷町三成			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50390	\N
2079	1341	くのしま温泉	くのしまおんせん	広島県竹原市忠海町大久野島			福山・尾道	三原・竹原・東広島	放射能泉	\N	\N	\N	\N
2080	1342	湯坂温泉	ゆさかおんせん	広島県竹原市西野町西湯坂			福山・尾道	三原・竹原・東広島	放射能泉	\N	\N	\N	\N
2081	1343	千代田温泉	ちよだおんせん	広島県山県郡千代田町南方額田部			庄原・三次・芸北	芸北	放射能泉	\N	\N	50695	\N
2082	1344	温井温泉	ぬくいおんせん	広島県山県郡加計町温井			庄原・三次・芸北	芸北	放射能泉	\N	\N	50695	\N
2083	1345	三段峡温泉	さんだんきょうおんせん	広島県山県郡戸河内町竜川			庄原・三次・芸北	芸北	放射能泉	\N	\N	50695	\N
2084	1346	湯の山温泉	ゆのやまおんせん	広島県佐伯郡湯来町和田温田			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2085	1347	湯来温泉	ゆきおんせん	広島県佐伯郡湯来町多田			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2086	1348	潮原温泉	うしおばらおんせん	広島県佐伯郡吉和村潮原			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2087	1349	岩倉温泉	いわくらおんせん	広島県佐伯郡佐伯町津田			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2088	1350	羅漢温泉	らかんおんせん	広島県佐伯郡佐伯町栗栖			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2089	1351	宮浜温泉	みやはまおんせん	広島県佐伯郡大野町宮浜温泉			広島・宮島	宮島・廿日市	放射能泉	\N	\N	50823	\N
2090	1352	小瀬川温泉	おぜがわおんせん	広島県佐伯郡佐伯町栗栖			広島・宮島	広島	放射能泉	\N	\N	50567	\N
2091	1353	女鹿平温泉	めがひらおんせん	広島県廿日市市吉和			広島・宮島	広島	単純温泉	\N	\N	50567	\N
2092	1354	君田温泉森の泉	きみたおんせんもりのいずみ	広島県双三郡君田村泉吉田			庄原・三次・芸北	三次	その他	\N	\N	\N	\N
2093	2259	能美温泉	のうみおんせん	広島県佐伯郡能美町中町			福山・尾道	呉・江田島	ナトリウム塩化物泉	\N	\N	\N	\N
2094	2260	倉橋温泉	くらはしおんせん	広島県安芸郡倉橋町431			福山・尾道	呉・江田島	放射能泉	\N	\N	\N	\N
2095	2489	五日市温泉	いつかいちおんせん	広島県広島市佐伯区利松			広島・宮島	広島	その他	\N	\N	50567	\N
2096	2490	桂浜温泉	かつらがはまおんせん	広島県安芸郡倉橋町			福山・尾道	呉・江田島	塩化物泉	\N	\N	\N	\N
2097	2549	鞆の浦温泉	とものうらおんせん	広島県福山市鞆の浦			福山・尾道	福山・尾道・しまなみ	ナトリウム塩化物泉	\N	\N	50569	\N
2098	2859	ホリスリゾート温泉	ほりすりぞーとおんせん	広島県江田島市大柿町深江字沖野島			福山・尾道	呉・江田島	放射能泉	\N	\N	50692	\N
2099	2862	芸北温泉	げいほくおんせん	広島県山県郡北広島町細見145-104			庄原・三次・芸北	芸北	弱アルカリ性低張性泉	\N	\N	50695	\N
2100	3018	宮島温泉	みやじまおんせん	広島県廿日市市宮島町			広島・宮島	宮島・廿日市	放射能泉	\N	\N	50823	\N
2101	3019	広島温泉	ひろしまおんせん	広島県広島市南区元宇品23-1			広島・宮島	広島	単純温泉	\N	\N	50823	\N
2102	3027	龍温泉2	りゅうおんせんに	広島県山県郡北広島町南方３６５９			庄原・三次・芸北	芸北	ナトリウム塩化物泉	\N	\N	50695	\N
2103	3048	神の湯	かみのゆ	広島県廿日市市宮島町字魚之棚534			広島・宮島	宮島・廿日市	放射能泉	\N	\N	50823	\N
2104	3079	君田温泉	きみたおんせん	広島県三次市君田町泉吉田311-3			庄原・三次・芸北	三次	弱アルカリ性低張性泉	\N	\N	50695	\N
2105	3095	浦島の湯	うらしまのゆ	広島県尾道市美ノ郷町三成2500			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50390	\N
2106	3103	おおあさ鳴滝露天温泉	おおあさなるてきろてんおんせん	広島県山県郡北広島町大朝5111			庄原・三次・芸北	芸北	鉱泉	\N	\N	50695	\N
2107	3161	若宮温泉	わかみやおんせん	広島県廿日市市宮島町345-1			広島・宮島	宮島・廿日市	その他	\N	\N	50823	\N
2108	3164	鷹の湯温泉	たかのゆおんせん	広島県福山市山野町久賀山国有林780い林小班			福山・尾道	福山・尾道・しまなみ	放射能泉	\N	\N	50569	\N
2109	3214	The SPA SHION	ざすぱしおん	広島県東広島市河内町入野獅子伏山1296-72			三原・竹原・東広島・呉	三原・竹原・東広島	ナトリウム塩化物泉	\N	\N	50956	\N
2110	3252	高宮温泉	たかみやおんせん	広島県安芸高田市高宮町原田１７８７‐１			庄原・三次・芸北	三次	放射能泉	\N	\N	50695	\N
2111	3259	極楽寺山温泉	ごくらくてらやまおんせん	広島県廿日市市原２２１０			三原・竹原・東広島・呉	三原・竹原・東広島	鉱泉	\N	\N	50823	\N
2112	3261	尾道温泉	おのみちおんせん	広島県尾道市久保一丁目3-37			福山・尾道	福山・尾道・しまなみ	塩化物泉	\N	\N	50569	\N
2113	1400	雙津峡温泉	そうづきょうおんせん	山口県岩国市錦町深川			岩国・柳井・周南	岩国	放射能泉	\N	\N	50568	\N
2114	1401	錦帯橋温泉	きんたいきょうおんせん	山口県岩国市岩国			岩国・柳井・周南	岩国	放射能泉	\N	\N	50568	\N
2115	1402	由宇温泉	ゆうおんせん	山口県岩国市由宇町			岩国・柳井・周南	岩国	放射能泉	\N	\N	50568	\N
2116	1403	三丘温泉	みつおおんせん	山口県周南市小松原			岩国・柳井・周南	周南・湯野	硫黄泉	\N	\N	50568	\N
2117	1404	呼鶴温泉	よびづるおんせん	山口県周南市大字安田1814			岩国・柳井・周南	周南・湯野	放射能泉	\N	\N	50568	\N
2118	1405	湯野温泉	ゆのおんせん	山口県徳山市湯野			岩国・柳井・周南	周南・湯野	放射能泉	\N	\N	50568	\N
2119	1406	むつみ温泉	むつみおんせん	山口県萩市高佐下			萩・長門	萩	放射能泉	\N	\N	50392	\N
2120	1407	萩本陣温泉	はぎほんじんおんせん	山口県萩市椿東			萩・長門	萩	放射能泉	\N	\N	50527	\N
2121	1408	湯の瀬温泉	ゆのせおんせん	山口県萩市川上			萩・長門	萩	塩化物泉	\N	\N	50568	\N
2122	1409	湯免温泉	ゆめんおんせん	山口県大津郡三隅町湯免			萩・長門	長門	放射能泉	\N	\N	50570	\N
2123	1410	黄波戸温泉	きわどおんせん	山口県大津郡日置町日置上黄波戸			萩・長門	長門	放射能泉	\N	\N	50570	\N
2124	1411	長門湯本温泉	ながとゆもとおんせん	山口県長門市深川湯本			萩・長門	長門	単純温泉	\N	\N	50394	\N
2125	1412	俵山温泉	たわらやまおんせん	山口県長門市俵山			萩・長門	長門	単純温泉	\N	\N	50570	\N
2126	1413	油谷湾温泉	ゆやわんおんせん	山口県大津郡油谷町伊上			萩・長門	長門	単純温泉	\N	\N	50570	\N
2127	1414	滝部温泉	たきべおんせん	山口県下関市豊北町滝部			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2128	1415	津波敷温泉	つばしきおんせん	山口県下関市豊北町神田上			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2129	1416	大河内温泉	おおかわちおんせん	山口県下関市豊浦町宇賀			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2130	1417	わいた温泉	わいたおんせん	山口県下関市豊浦町涌田後地			下関・宇部	下関・長府・川棚	単純温泉	\N	\N	50396	\N
2131	1418	川棚温泉	かわたなおんせん	山口県豊浦郡豊浦町川棚			下関・宇部	下関・長府・川棚	塩化物泉	\N	\N	50396	\N
2132	1419	荒木温泉	あらきおんせん	山口県下関市豊田町荒木			下関・宇部	下関・長府・川棚	塩化物泉	\N	\N	50396	\N
2133	1420	一ノ俣温泉	いちのまたおんせん	山口県下関市一の俣			下関・宇部	下関・長府・川棚	硫黄泉	\N	\N	50824	\N
2134	1421	於福温泉	おふくおんせん	山口県美祢市於福町古屋			山口・秋芳	秋芳	硫黄泉	\N	\N	50568	\N
2135	1422	湯田温泉	ゆだおんせん	山口県山口市湯田温泉			山口・秋芳	山口・湯田・防府	単純温泉	\N	\N	50392	\N
2136	1423	湯ノ口温泉	ゆのくちおんせん	山口県美祢郡美東町湯ノ口			山口・秋芳	秋芳	単純温泉	\N	\N	50392	\N
2137	1424	阿知須温泉	あじすおんせん	山口県吉敷郡阿知須町源河			山口・秋芳	山口・湯田・防府	放射能泉	\N	\N	50568	\N
2138	1425	片倉温泉	かたくらおんせん	山口県宇部市西岐波区下片倉			下関・宇部	宇部	放射能泉	\N	\N	50568	\N
2139	1426	持世寺温泉	じせいじおんせん	山口県宇部市厚東区持世寺			下関・宇部	宇部	放射能泉	\N	\N	50568	\N
2140	1427	宗方温泉	むなかたおんせん	山口県宇部市東万倉			下関・宇部	宇部	放射能泉	\N	\N	50568	\N
2141	1428	江汐湖温泉	えじおこおんせん	山口県小野田市千崎東			下関・宇部	宇部	単純温泉	\N	\N	50568	\N
2142	1429	湯谷温泉	ゆたにおんせん	山口県下関市吉田			下関・宇部	下関・長府・川棚	塩化物泉	\N	\N	50570	\N
2143	1430	周防大島温泉	すおうおおしまおんせん	山口県大島郡周防大島町小松			岩国・柳井・周南	柳井・周防大島	放射能泉	\N	\N	50568	\N
2144	1431	片添ヶ浜温泉	かたぞえがはまおんせん	山口県大島郡周防大島町片添			岩国・柳井・周南	柳井・周防大島	放射能泉	\N	\N	50568	\N
2145	2035	宮野温泉	みやのおんせん	山口県山口市宮野上			山口・秋芳	山口・湯田・防府	放射能泉	\N	\N	50392	\N
2146	2036	玉泉湖温泉	ぎょくせんこおんせん	山口県防府市大崎江良			山口・秋芳	山口・湯田・防府	アルカリ単純泉	\N	\N	50568	\N
2147	2037	江汐温泉	えじおおんせん	山口県小野田市千崎東			下関・宇部	宇部	その他	\N	\N	50568	\N
2148	2038	湯ノ峠温泉	ゆうのとうおんせん	山口県山陽小野田市			下関・宇部	宇部	塩化物泉	\N	\N	50568	\N
2149	2039	豊田温泉	とよだおんせん	山口県下関市豊田町西市			下関・宇部	下関・長府・川棚	その他	\N	\N	50396	\N
2150	2040	菊川温泉	きくがわおんせん	山口県下関市菊川町			下関・宇部	下関・長府・川棚	その他	\N	\N	50396	\N
2151	2041	願成就温泉	がんじょうじゅおんせん	山口県山口市阿東			萩・長門	萩	炭酸水素塩泉	\N	\N	50568	\N
2152	2042	阿武川温泉	あぶがわおんせん	山口県萩市川上			萩・長門	萩	塩化物泉	\N	\N	50568	\N
2153	2043	竜崎温泉	じゅうざきおんせん	山口県大島郡周防大島町			岩国・柳井・周南	柳井・周防大島	炭酸水素塩泉	\N	\N	50568	\N
2154	2044	田万川温泉	たまがわおんせん	山口県萩市江崎			萩・長門	萩	アルカリ単純泉	\N	\N	50568	\N
2155	2230	下関マリン温泉	しものせきまりんおんせん	山口県下関市長府外浦町3454			下関・宇部	下関・長府・川棚	その他	\N	\N	50396	\N
2156	2697	萩温泉弘法寺	はぎおんせんこうほうじ	山口県萩市古萩町２５（萩グランドホテル内）			萩・長門	萩	塩化物泉	\N	\N	50527	\N
2157	2755	はぎ温泉	はぎおんせん	山口県萩市大字椿東字釜屋6089-4			萩・長門	萩	ナトリウム塩化物泉	\N	\N	50527	\N
2158	2782	千春楽泉	せんしゅんらくせん	山口県萩市堀内字西ノ浜59-5			萩・長門	萩	放射能泉	\N	\N	50527	\N
2159	2826	源河の湯	げんがのゆ	山口県山口市阿知須7418-8			山口・秋芳	山口・湯田・防府	ナトリウム塩化物泉	\N	\N	50398	\N
2160	3060	萩指月温泉	はぎしづきおんせん	山口県萩市堀内菊ヶ浜485			萩・長門	萩	その他	\N	\N	50527	\N
2161	3139	下関つくの温泉	しものせきつくのおんせん	山口県下関市豊北町神田２０４５			下関・宇部	下関・長府・川棚	放射能泉	\N	\N	50396	\N
2162	3140	秋穂温泉	あいおおんせん	山口県山口市秋穂東７６８－１３			山口・秋芳	山口・湯田・防府	塩化物泉	\N	\N	50392	\N
2163	1445	鳴門温泉	なるとおんせん	徳島県鳴門市鳴門町土佐泊浦字大毛			徳島・鳴門	鳴門	塩化物泉	\N	\N	\N	\N
2164	1446	御所温泉	ごしょおんせん	徳島県板野郡土成町平間			大歩危・祖谷・剣山	脇町・阿波・美馬	硫黄泉	\N	\N	50626	\N
2165	1447	清水温泉	しみずおんせん	徳島県美馬市脇町（西俣名）			大歩危・祖谷・剣山	脇町・阿波・美馬	炭酸水素塩泉	\N	\N	50618	\N
2166	1448	土柱休養村温泉	どちゅうきゅうようむらおんせん	徳島県阿波郡阿波町北正広			大歩危・祖谷・剣山	脇町・阿波・美馬	硫黄泉	\N	\N	50626	\N
2167	1449	美馬温泉	みまおんせん	徳島県美馬市美馬町清田			大歩危・祖谷・剣山	脇町・阿波・美馬	硫黄泉	\N	\N	50618	\N
2168	1450	ふいご温泉	ふいごおんせん	徳島県吉野川市山川町久宗			大歩危・祖谷・剣山	脇町・阿波・美馬	含鉄泉	\N	\N	50625	\N
2169	1451	神山塩水温泉	かみやまえんすいおんせん	徳島県名西郡神山町下分			大歩危・祖谷・剣山	剣山・那賀	塩化物泉	\N	\N	50618	\N
2170	1452	月ヶ谷温泉	つきがたにおんせん	徳島県勝浦郡上勝町福原平間			大歩危・祖谷・剣山	剣山・那賀	硫黄泉	\N	\N	50618	\N
2171	1453	もみじ川温泉	もみじかわおんせん	徳島県那賀郡相生町大久保西納野			大歩危・祖谷・剣山	剣山・那賀	硫黄泉	\N	\N	50618	\N
2172	1454	千羽温泉	せんばおんせん	徳島県海部郡日和佐町奥河内寺前			阿南・日和佐・宍喰	阿南・日和佐	硫黄泉	\N	\N	50618	\N
2173	1455	宍喰温泉	ししくいおんせん	徳島県海部郡宍喰町松原			阿南・日和佐・宍喰	宍喰・海南・牟岐	塩化物泉	\N	\N	50618	\N
2174	1456	白地温泉	はくちおんせん	徳島県三好郡池田町白地			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫酸塩泉	\N	\N	\N	\N
2175	1457	祖谷温泉	いやおんせん	徳島県三好郡池田町松尾松本			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2176	1458	新祖谷温泉	しんいやおんせん	徳島県三好郡西祖谷山村善徳			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2177	1459	大歩危温泉	おおぼけおんせん	徳島県三好郡山城町西宇			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2178	2306	東山鉱山鉱泉	ひがしやまこうざんこうせん	徳島県吉野川市美郷川俣			大歩危・祖谷・剣山	脇町・阿波・美馬	その他	\N	\N	50625	\N
2179	2307	鬼ヶ岩屋温泉	おにがいわやおんせん	徳島県海部郡牟岐町橘			阿南・日和佐・宍喰	宍喰・海南・牟岐	その他	\N	\N	50618	\N
2180	2308	線麻川温泉	ゆうまがわおんせん	徳島県美馬郡つるぎ町貞光			大歩危・祖谷・剣山	脇町・阿波・美馬	その他	\N	\N	50618	\N
2181	2387	紅葉温泉	もみじおんせん	徳島県三好郡三野町加茂野宮			大歩危・祖谷・剣山	大歩危・祖谷・池田	その他	\N	\N	\N	\N
2182	2491	秘境温泉	ひきょうおんせん	徳島県三好市西祖谷山村尾井ノ内391			大歩危・祖谷・剣山	大歩危・祖谷・池田	アルカリ単純泉	\N	\N	50625	\N
2183	2580	船瀬温泉	ふなせおんせん	徳島県阿南市船瀬			阿南・日和佐・宍喰	阿南・日和佐	その他	\N	\N	50618	\N
2184	2581	四季美谷温泉	しきびたにおんせん	徳島県那賀郡木沢村横谷夏切			大歩危・祖谷・剣山	剣山・那賀	単純温泉	\N	\N	50618	\N
2185	2881	祖谷峡温泉	いやきょうおんせん	徳島県三好市西祖谷山村善徳９－３			大歩危・祖谷・剣山	大歩危・祖谷・池田	弱アルカリ性低張性泉	\N	\N	50625	\N
2186	2882	祖谷渓温泉	いやけいおんせん	徳島県三好市西祖谷山村尾井ノ内401			大歩危・祖谷・剣山	大歩危・祖谷・池田	硫黄泉	\N	\N	50625	\N
2187	2883	大歩危祖谷阿波温泉	おおぼけいやあわおんせん	徳島県三好市池田町白地本名165番地6			大歩危・祖谷・剣山	大歩危・祖谷・池田	その他	\N	\N	50625	\N
2188	3043	神山温泉	かみやまおんせん	徳島県名西郡神山町神領本上角80-2			大歩危・祖谷・剣山	剣山・那賀	アルカリ単純泉	\N	\N	50618	\N
2189	1432	オーキド温泉	おーきどおんせん	香川県小豆郡土庄町甲			小豆島	小豆島	塩化物泉	\N	\N	50402	\N
2190	1433	庵治温泉	あじおんせん	香川県木田郡庵治町			高松・東讃	高松・屋島	硫黄泉	\N	\N	50399	\N
2191	1435	本島温泉	ほんじまおんせん	香川県丸亀市本島町泊			琴平・丸亀・坂出	丸亀	放射能泉	\N	\N	50599	\N
2192	1436	湯元さぬき瀬戸大橋温泉	ゆもとさぬきせとおおはしおんせん	香川県坂出市常盤町常盤公園内			琴平・丸亀・坂出	坂出・宇多津	放射能泉	\N	\N	50399	\N
2193	1437	城山温泉	きやまおんせん	香川県坂出市府中町			琴平・丸亀・坂出	坂出・宇多津	含鉄泉	\N	\N	50599	\N
2194	1438	空港温泉	くうこうおんせん	香川県高松市香南町由佐			高松・東讃	高松・屋島	単純温泉	\N	\N	50399	\N
2195	1439	塩江温泉郷	しおのえおんせんきょう	香川県香川郡塩江町安原上東			高松・東讃	高松・屋島	硫黄泉	\N	\N	50399	\N
2196	1440	こんぴら温泉郷	こんぴらおんせんきょう	香川県仲多度郡琴平町			琴平・丸亀・坂出	琴平・善通寺	アルカリ単純泉	\N	\N	50400	\N
2197	1441	みかど温泉	みかどおんせん	香川県仲多度郡まんのう町川東			琴平・丸亀・坂出	琴平・善通寺	塩化物泉	\N	\N	50599	\N
2198	1442	美合温泉	みあいおんせん	香川県仲多度郡琴南町勝浦			琴平・丸亀・坂出	琴平・善通寺	炭酸水素塩泉	\N	\N	50599	\N
2199	2180	小豆島温泉	しょうどしまおんせん	香川県小豆郡土庄町			小豆島	小豆島	硫黄泉	\N	\N	50402	\N
2200	2313	いやだに温泉	いやだにおんせん	香川県三豊市三野町大見乙74			琴平・丸亀・坂出	観音寺	硫黄泉	\N	\N	50599	\N
2201	2315	琴弾回廊	ことひきかいろう	香川県観音寺市有明町			琴平・丸亀・坂出	観音寺	弱アルカリ性低張性泉	\N	\N	50599	\N
2202	2316	オリーブ温泉	おりーぶおんせん	香川県小豆郡土庄町字半の池			小豆島	小豆島	アルカリ単純泉	\N	\N	50402	\N
2203	2318	高松花樹海温泉	たかまつはなじゅかいおんせん	香川県高松市西宝町3-5-10			高松・東讃	高松・屋島	その他	\N	\N	50399	\N
2204	2337	はくちょう温泉	はくちょうおんせん	香川県高松市国分寺町新名			高松・東讃	高松・屋島	その他	\N	\N	50399	\N
2205	2492	ほっこり温泉　神様の湯	ほっこりおんせん　かみさまのゆ	香川県高松市神在川窪町18-6			高松・東讃	高松・屋島	弱アルカリ性低張性泉	\N	\N	50399	\N
2206	2582	香南楽湯	こうなんらくゆ	香川県高松市香南町横井			高松・東讃	高松・屋島	単純温泉	\N	\N	50399	\N
2207	2644	津田温泉	つだおんせん	香川県さぬき市津田町鶴羽薬師堂			高松・東讃	さぬき市・津田	鉱泉	\N	\N	50599	\N
2208	2730	たからだの里　環の湯　3号線	たからだのさと　たまきのゆ　さんごうせん	香川県三豊市財田町財田上7521-12			琴平・丸亀・坂出	観音寺	弱アルカリ性低張性泉	\N	\N	50599	\N
2209	3045	四国高松温泉	しこくたかまつおんせん	香川県高松市通町２番２			高松・東讃	高松・屋島	その他	\N	\N	50399	\N
2210	3181	母神温泉	はがみおんせん	香川県観音寺市池之尻町1101-4			琴平・丸亀・坂出	観音寺	弱アルカリ性低張性泉	\N	\N	50599	\N
2211	3195	瓦町ぎおん温泉	かわらまちぎおんおんせん	香川県高松市瓦町2-1-7			高松・東讃	高松・屋島	塩化物泉	\N	\N	50399	\N
2212	3296	屋島灘温泉	やしまなだおんせん	香川県高松市西宝町3丁目5番10号			高松・東讃	高松・屋島	ナトリウム塩化物泉	\N	\N	50399	\N
2213	3323	凪温泉	なぎおんせん	香川県高松市川東下字山脇1884番地１			高松・東讃	高松・屋島	鉱泉	\N	\N	50399	\N
2214	1477	別子温泉	べつしおんせん	愛媛県新居浜市立川町			新居浜・東予	新居浜・伊予三島	塩化物泉	\N	\N	50615	\N
2215	1478	湯之谷温泉	ゆのたにおんせん	愛媛県西条市湯之谷			新居浜・東予	西条・東予・石鎚山	単純温泉	\N	\N	50615	\N
2216	1479	ひうちなだ温泉	ひうちなだおんせん	愛媛県東予市河原津			新居浜・東予	西条・東予・石鎚山	単純温泉	\N	\N	\N	\N
2217	1480	湯ノ浦温泉	ゆのうらおんせん	愛媛県今治市湯ノ浦			今治・しまなみ海道	今治	単純温泉	\N	\N	50404	\N
2218	1481	鈍川温泉	にぶかわおんせん	愛媛県越智郡玉川町鈍川			今治・しまなみ海道	今治	単純温泉	\N	\N	50405	\N
2219	1482	鹿島温泉	かしまおんせん	愛媛県北条市辻			松山・道後	松山	塩化物泉	\N	\N	\N	\N
2220	1483	権現温泉	ごんげんおんせん	愛媛県松山市権現町甲			松山・道後	松山	単純温泉	\N	\N	50617	\N
2221	1484	奥道後温泉	おくどうごおんせん	愛媛県松山市末町			松山・道後	松山	単純温泉	\N	\N	50617	\N
2222	1485	道後温泉	どうごおんせん	愛媛県松山市道後鷺谷町			松山・道後	道後	単純温泉	\N	\N	50403	\N
2223	1486	星の岡温泉	ほしのおかおんせん	愛媛県松山市星岡町乙			松山・道後	松山	単純温泉	\N	\N	50617	\N
2224	1487	たかの子温泉	たかのこおんせん	愛媛県松山市鷹子町			松山・道後	松山	単純温泉	\N	\N	50617	\N
2225	1488	古岩屋温泉	ふるいわやおんせん	愛媛県上浮穴郡久万高原町直瀬			松山・道後	伊予	単純温泉	\N	\N	50615	\N
2226	1489	龍王温泉	りゅうおうおんせん	愛媛県喜多郡内子町五十崎古田			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2227	1490	小藪温泉	おやぶおんせん	愛媛県大洲市肱川町宇和川			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2228	1491	深瀬温泉	ふかせおんせん	愛媛県大洲市肱川町山鳥坂			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2229	1492	宝泉坊温泉	ほうせんぼうおんせん	愛媛県西予市城川町高野子			南予・宇和島	内子・大洲・佐田岬	単純温泉	\N	\N	50615	\N
2230	1493	成川温泉	なるかわおんせん	愛媛県北宇和郡鬼北町奈良			南予・宇和島	宇和島	単純温泉	\N	\N	50615	\N
2231	1494	一本松温泉	いっぽんまつおんせん	愛媛県南宇和郡一本松町増田			南予・宇和島	宇和島	硫黄泉	\N	\N	\N	\N
2232	1495	今治温泉	いまばりおんせん	愛媛県今治市旭町			今治・しまなみ海道	今治	塩化物泉	\N	\N	50615	\N
2233	2300	媛彦温泉	ひめひこおんせん	愛媛県松山市畑寺			松山・道後	松山	アルカリ単純泉	\N	\N	50617	\N
2234	2301	多々羅温泉	たたらおんせん	愛媛県越智郡上浦町大字井口			今治・しまなみ海道	しまなみ海道	その他	\N	\N	\N	\N
2235	2302	武稜温泉	ぶりょうおんせん	愛媛県大洲市平野町			南予・宇和島	内子・大洲・佐田岬	その他	\N	\N	50615	\N
2236	2303	薬師温泉	やくしおんせん	愛媛県宇和島市川内			南予・宇和島	宇和島	アルカリ単純泉	\N	\N	\N	\N
2237	2304	本谷温泉	ほんだにおんせん	愛媛県東予市河之内			新居浜・東予	西条・東予・石鎚山	その他	\N	\N	\N	\N
2238	2305	見奈良天然温泉利楽	みならてんねんおんせんりらく	愛媛県温泉郡重信町見奈良			松山・道後	松山	その他	\N	\N	50617	\N
2239	2390	文治ヶ駄馬温泉	ぶんじがだばおんせん	愛媛県東宇和郡宇和町明間			南予・宇和島	内子・大洲・佐田岬	その他	\N	\N	\N	\N
2240	2583	川内町ふるさと交流館さくらの湯	かわうちちょうふるさとこうりゅうかんさくらのゆ	愛媛県東温市北方			松山・道後	松山	炭酸水素塩泉	\N	\N	50617	\N
2241	2584	清正乃湯	きよまさのゆ	愛媛県今治市高橋			今治・しまなみ海道	今治	放射能泉	\N	\N	50617	\N
2242	2585	大門温泉	だいもんおんせん	愛媛県北宇和郡松野町松丸			南予・宇和島	宇和島	炭酸水素塩泉	\N	\N	50615	\N
2243	2586	熱田温泉	あつたおんせん	愛媛県宇和島市津島町高田			南予・宇和島	宇和島	弱アルカリ性低張性泉	\N	\N	50615	\N
2244	2587	西条天然温泉　ひうちの湯	さいじょうてんねんおんせん　ひうちのゆ	愛媛県西条市船屋			新居浜・東予	西条・東予・石鎚山	炭酸水素塩泉	\N	\N	50615	\N
2245	2840	スーパーホテル　伊予の湯	すーぱーほてる　いよのゆ	愛媛県新居浜市高木町３番７号			新居浜・東予	新居浜・伊予三島	弱アルカリ性低張性泉	\N	\N	50674	\N
2246	3083	霧の森温泉	きりのもりおんせん	愛媛県四国中央市新宮町馬立４４９１―１			新居浜・東予	新居浜・伊予三島	炭酸水素塩泉	\N	\N	50615	\N
2247	3089	川渡温泉	かわとおんせん	愛媛県南宇和郡愛南町増田５４７０			南予・宇和島	宇和島	弱アルカリ性低張性泉	\N	\N	50615	\N
2248	3102	天然温泉　東予の湯	てんねんおんせん　とうよのゆ	愛媛県四国中央市下柏町852-1			新居浜・東予	新居浜・伊予三島	ナトリウム塩化物泉	\N	\N	50615	\N
2249	3180	グランド温泉	ぐらんどおんせん	愛媛県松山市二番町3丁目5－3			松山・道後	松山	ナトリウム塩化物泉	\N	\N	50945	\N
2250	3273	エリエールゴルフクラブ松山温泉	えりえーるごるふくらぶまつやまおんせん	愛媛県松山市柳谷町乙４５番地１			松山・道後	松山	ナトリウム塩化物泉	\N	\N	50403	\N
2251	3302	大洲鉱泉	おおずこうせん	愛媛県大洲市東大洲1487			南予・宇和島	内子・大洲・佐田岬	炭酸水素塩泉	\N	\N	50617	\N
2252	3305	道後さや温泉	どうごさやおんせん	愛媛県松山市高岡町130			松山・道後	松山	硫黄泉	\N	\N	50617	\N
2253	1460	北川温泉	きたがわおんせん	高知県安芸郡北川村小島			安芸・室戸	安芸	炭酸水素塩泉	\N	\N	50407	\N
2254	1461	馬路温泉	うまじおんせん	高知県安芸郡馬路村馬路			安芸・室戸	安芸	炭酸水素塩泉	\N	\N	50407	\N
2255	1462	べふ峡温泉	べふきょうおんせん	高知県香美市物部町別府			高知・須崎・南国	南国・香美	炭酸水素塩泉	\N	\N	50406	\N
2256	1463	猪野沢温泉	いのさわおんせん	高知県香美市香北町猪野々			高知・須崎・南国	南国・香美	硫黄泉	\N	\N	50406	\N
2257	1464	千舞温泉	せんまいおんせん	高知県香美郡香我美町末清			高知・須崎・南国	南国・香美	硫黄泉	\N	\N	\N	\N
2258	1465	夢の温泉	ゆめのおんせん	高知県香美郡土佐山田町宮の口			高知・須崎・南国	南国・香美	硫黄泉	\N	\N	50406	\N
2259	1466	円行寺温泉	えんぎょうじおんせん	高知県高知市円行寺			高知・須崎・南国	高知・春野	硫黄泉	\N	\N	50406	\N
2260	1467	中追渓谷温泉	なかおいけいこくおんせん	高知県吾川郡いの町中追			高知・須崎・南国	高知・春野	硫黄泉	\N	\N	50406	\N
2261	1468	蘇鶴温泉	そかくおんせん	高知県吾川郡いの町大内			高知・須崎・南国	高知・春野	硫黄泉	\N	\N	50406	\N
2262	1469	松葉川温泉	まつばかわおんせん	高知県高岡郡窪川町日野地			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2263	1470	佐賀温泉	さがおんせん	高知県幡多郡黒潮町拳ノ川			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2264	1471	一の又渓谷温泉	いちのまたけいこくおんせん	高岡郡四万十町大正			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2265	1472	用井温泉	もちいおんせん	高知県四万十市西土佐用井			足摺・四万十	中村・四万十・大方	硫黄泉	\N	\N	50624	\N
2266	1473	新安並温泉	しんやすなみおんせん	高知県中村市安並			足摺・四万十	中村・四万十・大方	単純温泉	\N	\N	50624	\N
2267	1474	よさこい温泉	よさこいおんせん	高知県安芸郡芸西村西分甲			安芸・室戸	安芸	単純温泉	\N	\N	50407	\N
2268	1475	本陣温泉	ほんじんおんせん	高知県高岡郡中土佐町久礼			高知・須崎・南国	須崎・土佐・仁淀川	単純温泉	\N	\N	50624	\N
2269	1476	井ノ岬温泉	いのみさきおんせん	高知県幡多郡黒潮町伊田			足摺・四万十	中村・四万十・大方	単純温泉	\N	\N	50624	\N
2270	2181	あしずり温泉郷	あしずりおんせんきょう	高知県土佐清水市足摺岬			足摺・四万十	足摺・土佐清水・宿毛	弱アルカリ性低張性泉	\N	\N	50498	\N
2271	2182	高知三翠園温泉	こうちさんすいえんおんせん	高知県高知市鷹匠町			高知・須崎・南国	高知・春野	ナトリウム塩化物泉	\N	\N	50406	\N
2272	2309	桑田山温泉	そうだやまおんせん	高知県須崎市桑田山			高知・須崎・南国	須崎・土佐・仁淀川	その他	\N	\N	50406	\N
2273	2310	温泉こまどり	おんせんこまどり	高知県安芸市大井			安芸・室戸	安芸	その他	\N	\N	50407	\N
2274	2311	雲の上の温泉	くものうえのおんせん	高知県高岡郡檮原町太郎川			足摺・四万十	中村・四万十・大方	炭酸水素塩泉	\N	\N	50624	\N
2275	2312	天然の湯ながおか温泉	てんねんのゆながおかおんせん	高知県南国市下末松			高知・須崎・南国	南国・香美	ナトリウム塩化物泉	\N	\N	50406	\N
2276	2391	木の香温泉	このかおんせん	高知県吾川郡いの町桑瀬			高知・須崎・南国	高知・春野	ナトリウム塩化物泉	\N	\N	50406	\N
2277	2392	ゆの森温泉	ゆのもりおんせん	高知県吾川郡仁淀川町名野川			高知・須崎・南国	高知・春野	その他	\N	\N	50406	\N
2278	2541	はるのの湯	はるののゆ	高知県高知市春野町西分657-1			高知・須崎・南国	高知・春野	塩化物泉	\N	\N	50406	\N
2279	2542	黒潮温泉龍馬の湯	くろしおおんせんりょうまのゆ	高知県香美郡野市町東野1630			高知・須崎・南国	南国・香美	ナトリウム塩化物泉	\N	\N	50407	\N
2280	2588	井の岬温泉	いのみさきおんせん	高知県中村市佐岡			足摺・四万十	中村・四万十・大方	ナトリウム塩化物泉	\N	\N	50624	\N
2281	2647	龍河温泉	りゅうがおんせん	高知県香美郡土佐山田町佐古藪４３０－１			高知・須崎・南国	南国・香美	弱アルカリ性低張性泉	\N	\N	50406	\N
2282	3030	ニュー佐賀温泉	にゅーさがおんせん	高知県幡多郡黒潮町拳ノ川２２００－６９			足摺・四万十	中村・四万十・大方	その他	\N	\N	50624	\N
2283	3097	土佐龍温泉	とさりゅうおんせん	高知県土佐市宇佐町竜504-1			高知・須崎・南国	須崎・土佐・仁淀川	アルカリ単純泉	\N	\N	50406	\N
2284	3211	四万十温泉山みず木	しまんとおんせんやまみずき	高知県四万十市名鹿432番地			足摺・四万十	中村・四万十・大方	アルカリ単純泉	\N	\N	50624	\N
2285	1786	柿下温泉	かきしたおんせん	福岡県田川郡香春町柿下			北九州	飯塚・田川	放射能泉	\N	\N	\N	\N
2286	1787	庄内温泉	しょうないおんせん	福岡県嘉穂郡庄内町仁保高尾			北九州	飯塚・田川	放射能泉	\N	\N	\N	\N
2287	1788	伊川温泉	いかわおんせん	福岡県飯塚市伊川			北九州	飯塚・田川	放射能泉	\N	\N	\N	\N
2288	1789	脇田温泉	わきたおんせん	福岡県鞍手郡若宮町脇田			太宰府・宗像	若宮・遠賀・直方	アルカリ単純泉	\N	\N	50410	\N
2289	1790	薬王寺温泉	やくおうじおんせん	福岡県粕屋郡古賀町薬王寺			太宰府・宗像	宗像・玄海	放射能泉	\N	\N	\N	\N
2290	1791	芥屋大門温泉	けやおおとおんせん	福岡県糸島郡志摩町芥屋			糸島・前原	糸島・前原	放射能泉	\N	\N	\N	\N
2291	1792	博多温泉	はかたおんせん	福岡県福岡市南区横手			福岡市（博多駅周辺・天神周辺）	福岡市（天神周辺・百道浜）	塩化物泉	\N	\N	50906	\N
2292	1793	二日市温泉	ふつかいちおんせん	福岡県筑紫野市武蔵			太宰府・宗像	太宰府・二日市	単純温泉	\N	\N	50854	\N
2293	1794	筑後川温泉	ちくごがわおんせん	福岡県浮羽郡浮羽町古川			久留米・原鶴・筑後川	原鶴・筑後川	放射能泉	\N	\N	50602	\N
2294	1795	原鶴温泉	はらづるおんせん	福岡県朝倉郡杷木町原鶴			久留米・原鶴・筑後川	原鶴・筑後川	単純温泉	\N	\N	50408	\N
2295	1796	吉井温泉	よしいおんせん	福岡県浮羽郡吉井町千年			久留米・原鶴・筑後川	久留米	含鉄泉	\N	\N	\N	\N
2296	1797	片の瀬温泉	かたのせおんせん	福岡県久留米市田主丸町菅原2251-2			久留米・原鶴・筑後川	久留米	弱アルカリ性低張性泉	\N	\N	50744	\N
2297	1798	星野温泉	ほしのおんせん	福岡県八女郡星野村麻生			柳川・八女・筑後	柳川・八女・筑後	ナトリウム塩化物泉	\N	\N	\N	\N
2298	1799	グリーンピア八女温泉	ぐりーんぴあやめおんせん	福岡県八女郡黒木町木屋			柳川・八女・筑後	柳川・八女・筑後	炭酸水素塩泉	\N	\N	\N	\N
2299	1800	長門石温泉	ながといしおんせん	福岡県久留米市長門石町			久留米・原鶴・筑後川	久留米	単純温泉	\N	\N	\N	\N
2300	1801	船小屋温泉	ふなごやおんせん	福岡県筑後市船小屋温泉			柳川・八女・筑後	柳川・八女・筑後	単純温泉	\N	\N	50409	\N
2301	1802	新船小屋温泉	しんふなごやおんせん	福岡県山門郡瀬高町長田			柳川・八女・筑後	柳川・八女・筑後	炭酸水素塩泉	\N	\N	\N	\N
2302	1803	柳川温泉	やながわおんせん	福岡県柳川市弥四郎町			柳川・八女・筑後	柳川・八女・筑後	含鉄泉	\N	\N	50779	\N
2303	1983	久山温泉	ひさやまおんせん	福岡県糟屋郡久山町			太宰府・宗像	宗像・玄海	含鉄泉	\N	\N	\N	\N
2304	1984	久留米温泉	くるめおんせん	福岡県久留米市			久留米・原鶴・筑後川	久留米	塩化物泉	\N	\N	\N	\N
2305	1985	玄海さつき温泉	げんかいさつきおんせん	福岡県宗像市田野1303			太宰府・宗像	宗像・玄海	アルカリ単純泉	\N	\N	50733	\N
2306	1986	黒木平温泉	くろきだいらおんせん	福岡県八女郡黒木町木屋			柳川・八女・筑後	柳川・八女・筑後	弱アルカリ性低張性泉	\N	\N	\N	\N
2307	1987	天名水温泉	てんめいすいおんせん	福岡県福岡市早良区椎原			福岡市（博多駅周辺・天神周辺）	福岡市（天神周辺・百道浜）	アルカリ単純泉	\N	\N	50611	\N
2308	1988	米山温泉	べいざんおんせん	福岡県糟屋郡篠栗町			太宰府・宗像	宗像・玄海	単純温泉	\N	\N	\N	\N
2309	1989	上津天然温泉	かみつてんねんおんせん	福岡県久留米市藤光町			久留米・原鶴・筑後川	久留米	弱アルカリ性低張性泉	\N	\N	\N	\N
2310	1990	八女天然温泉	やめてんねんおんせん	福岡県八女市			柳川・八女・筑後	柳川・八女・筑後	鉱泉	\N	\N	\N	\N
2311	1991	大木町温泉	おおぎまちおんせん	福岡県三猪郡大木町			柳川・八女・筑後	柳川・八女・筑後	単純温泉	\N	\N	\N	\N
2312	1992	豊前温泉	ぶぜんおんせん	福岡県豊前市			北九州	苅田・行橋・豊前	弱アルカリ性低張性泉	\N	\N	\N	\N
2313	1993	伊川温泉	いかわおんせん	福岡県飯塚市			北九州	飯塚・田川	アルカリ単純泉	\N	\N	\N	\N
2314	1994	英彦山温泉	ひこさんおんせん	福岡県田川郡川崎町			北九州	飯塚・田川	弱アルカリ性低張性泉	\N	\N	\N	\N
2315	2233	田主丸河童温泉	たぬしまるかっぱおんせん	福岡県福岡市博多区寿町3-4-15			福岡市（博多駅周辺・天神周辺）	福岡市（博多駅周辺・香椎・海の中道）	ナトリウム塩化物泉	\N	\N	\N	\N
2316	2264	筑紫温泉	ちくしおんせん	福岡県筑紫野市大字原田832-1			太宰府・宗像	太宰府・二日市	炭酸水素塩泉	\N	\N	\N	\N
2317	2340	新宮温泉	しんぐうおんせん	福岡県粕屋郡新宮町三代762			太宰府・宗像	宗像・玄海	アルカリ単純泉	\N	\N	\N	\N
2318	2393	東田温泉	ひがしだおんせん	福岡県北九州市八幡東区東田5-2-7			北九州	北九州市（小倉・八幡・門司）	単純温泉	\N	\N	\N	\N
2319	2943	休暇村　志賀島温泉	きゅうかむら　しかのしまおんせん	福岡県福岡市東区大字勝馬1819			福岡市（博多駅周辺・天神周辺）	福岡市（博多駅周辺・香椎・海の中道）	その他	\N	\N	50771	\N
2320	2950	柳川温泉　輝泉の湯	やながわおんせん　きせんのゆ	福岡県柳川市三橋町柳河874			柳川・八女・筑後	柳川・八女・筑後	その他	\N	\N	50779	\N
2321	3049	天然温泉　月の雫	てんねんおんせん　つきのしずく	福岡県大牟田市大字甘木甘木山1203-116			柳川・八女・筑後	柳川・八女・筑後	弱アルカリ性低張性泉	\N	\N	50865	\N
2322	3092	秋月温泉	あきづきおんせん	福岡県朝倉市秋月１０５８			久留米・原鶴・筑後川	原鶴・筑後川	塩化物泉	\N	\N	50895	\N
2323	3142	若松ひびき温泉	わかまつひびきおんせん	福岡県北九州市若松区大字有毛字２８２９番			北九州	北九州市（小倉・八幡・門司）	炭酸水素塩泉	\N	\N	50927	\N
2324	3322	博多・都の湯	はかたみやこのゆ	福岡県福岡市博多区博多駅東２－１－１			福岡市（博多駅周辺・天神周辺）	福岡市（博多駅周辺・香椎・海の中道）	単純温泉	\N	\N	50906	\N
2325	1819	熊の川温泉	くまのかわおんせん	佐賀県佐賀郡富士町上熊の川湯の原			佐賀・古湯・熊の川	佐賀・古湯・熊の川	放射能泉	\N	\N	\N	\N
2326	1820	古湯温泉	ふるゆおんせん	佐賀県佐賀郡富士町古湯			佐賀・古湯・熊の川	佐賀・古湯・熊の川	単純温泉	\N	\N	50411	\N
2327	1821	小城温泉	おぎおんせん	佐賀県小城郡小城町岩蔵			佐賀・古湯・熊の川	佐賀・古湯・熊の川	単純温泉	\N	\N	50848	\N
2328	1822	佐里温泉	さりおんせん	佐賀県東松浦郡相知町佐里			唐津・呼子	唐津・呼子・玄海	単純温泉	\N	\N	50416	\N
2329	1823	寺浦温泉	てらうらおんせん	佐賀県東松浦郡肥前町			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2330	1824	満越温泉	みつこしおんせん	佐賀県東松浦郡肥前町満越			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2331	1825	伊万里温泉	いまりおんせん	佐賀県伊万里市二里町大里甲			伊万里・有田	伊万里・有田	炭酸水素塩泉	\N	\N	\N	\N
2332	1826	武雄温泉	たけおおんせん	佐賀県武雄市武雄町本町温泉通り			嬉野・武雄	武雄	炭酸水素塩泉	\N	\N	50413	\N
2333	1827	嬉野温泉	うれしのおんせん	佐賀県藤津郡嬉野町下宿乙			嬉野・武雄	嬉野	塩化物泉	\N	\N	50414	\N
2334	1828	平谷温泉	ひらたにおんせん	佐賀県鹿島市能古見本城丙			太良	太良	単純温泉	\N	\N	\N	\N
2335	1829	太良嶽温泉	たらだけおんせん	佐賀県藤津郡太良町道越			太良	太良	単純温泉	\N	\N	50415	\N
2336	2007	太良竹崎温泉	たらたけざきおんせん	佐賀県藤津郡太良町			太良	太良	鉱泉	\N	\N	50415	\N
2337	2008	神埼温泉	かんざきおんせん	佐賀県神埼郡神埼町			佐賀・古湯・熊の川	鳥栖・神埼	その他	\N	\N	\N	\N
2338	2009	三瀬温泉	みつせおんせん	佐賀県神埼郡三瀬村			佐賀・古湯・熊の川	佐賀・古湯・熊の川	単純温泉	\N	\N	\N	\N
2339	2010	七山温泉	ななやまおんせん	佐賀県東松浦郡七山村			唐津・呼子	唐津・呼子・玄海	その他	\N	\N	\N	\N
2340	2011	多久天然温泉	たくてんねんおんせん	佐賀県多久市北多久町			嬉野・武雄	武雄	単純温泉	\N	\N	\N	\N
2341	2012	川上峡温泉	かわかみきょうおんせん	佐賀県佐賀郡大和町			佐賀・古湯・熊の川	佐賀・古湯・熊の川	アルカリ単純泉	\N	\N	50412	\N
2342	2013	野田温泉	のだおんせん	佐賀県東松浦郡浜玉町			唐津・呼子	唐津・呼子・玄海	塩化物泉	\N	\N	\N	\N
2343	2014	玄海温泉	げんかいおんせん	佐賀県東松浦郡玄海町			唐津・呼子	唐津・呼子・玄海	その他	\N	\N	\N	\N
2344	2015	厳木温泉	きうらぎおんせん	佐賀県東松浦郡厳木町			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2345	2016	高串温泉	たかくしおんせん	佐賀県東松浦郡肥前町			唐津・呼子	唐津・呼子・玄海	鉱泉	\N	\N	\N	\N
2346	2017	鹿島温泉	かしまおんせん	佐賀県鹿島市能古見本城丙			太良	太良	炭酸水素塩泉	\N	\N	\N	\N
2347	2018	虹の松原温泉	にじのまつばらおんせん	佐賀県東松浦郡浜玉町			唐津・呼子	唐津・呼子・玄海	アルカリ単純泉	\N	\N	\N	\N
2348	2338	相知温泉	おうちおんせん	佐賀県東松浦郡相知町大字相知字和田2550-1			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	\N	\N
2349	2415	上伊万里温泉	かみいまりおんせん	佐賀県伊万里市大坪町丙1210-1			伊万里・有田	伊万里・有田	その他	\N	\N	50417	\N
2350	2809	唐津温泉	からつおんせん	佐賀県唐津市大名小路5-10			唐津・呼子	唐津・呼子・玄海	その他	\N	\N	50643	\N
2351	3143	佐賀大和温泉	さがやまとおんせん	佐賀県佐賀市大和町久池井３６６７			佐賀・古湯・熊の川	佐賀・古湯・熊の川	アルカリ単純泉	\N	\N	50928	\N
2352	3285	天山多久温泉	てんざんたくおんせん	佐賀県多久市北多久町小侍４６４４－１			嬉野・武雄	武雄	弱アルカリ性低張性泉	\N	\N	50848	\N
2353	3298	唐津シーサイド温泉	からつしーさいどおんせん	佐賀県唐津市東唐津４丁目１８２番			唐津・呼子	唐津・呼子・玄海	炭酸水素塩泉	\N	\N	50643	\N
2354	1804	湯ノ本温泉	ゆのもとおんせん	長崎県壱岐郡勝本町湯ノ本浦			壱岐・対馬	壱岐	塩化物泉	\N	\N	50423	\N
2355	1805	郷ノ浦温泉	ごうのうらおんせん	長崎県壱岐郡郷ノ浦町			壱岐・対馬	壱岐	単純温泉	\N	\N	\N	\N
2356	1806	福島温泉	ふくしまおんせん	長崎県北松浦郡福島町喜内瀬免			平戸・松浦・田平	松浦・田平	塩化物泉	\N	\N	\N	\N
2357	1807	田の浦温泉	たのうらおんせん	長崎県平戸市大久保町			平戸・松浦・田平	平戸	含鉄泉	\N	\N	50419	\N
2358	1808	波佐見温泉	はさみおんせん	長崎県東彼杵郡波佐見町長野郷			佐世保・ハウステンボス	佐世保	炭酸水素塩泉	\N	\N	\N	\N
2359	1809	大崎温泉	おおさきおんせん	長崎県東彼杵郡川棚町小串郷			佐世保・ハウステンボス	佐世保	塩化物泉	\N	\N	\N	\N
2360	1810	西海橋温泉	さいかいばしおんせん	長崎県佐世保市針尾東町			佐世保・ハウステンボス	佐世保	塩化物泉	\N	\N	50418	\N
2361	1811	唐比温泉	からこおんせん	長崎県北高来郡森山町唐比西名			長崎	諫早・大村	塩化物泉	\N	\N	\N	\N
2362	1812	小浜温泉	おばまおんせん	長崎県南高来郡小浜町北本町			島原・雲仙・小浜	雲仙・小浜	塩化物泉	\N	\N	50421	\N
2363	1813	雲仙温泉	うんぜんおんせん	長崎県南高来郡小浜町雲仙			島原・雲仙・小浜	雲仙・小浜	含鉄泉	\N	\N	50422	\N
2364	1814	島原温泉	しまばらおんせん	長崎県島原市湊町			島原・雲仙・小浜	島原	炭酸水素塩泉	\N	\N	50420	\N
2365	1815	原城温泉	はらじょうおんせん	長崎県南高来郡南有馬町			島原・雲仙・小浜	雲仙・小浜	単純温泉	\N	\N	\N	\N
2366	1816	高浜温泉	たかはまおんせん	長崎県西彼杵郡野母崎町高浜			長崎	長崎	塩化物泉	\N	\N	\N	\N
2367	1817	曽根温泉	そねおんせん	長崎県南松浦郡新魚目町小串郷			五島列島	上五島	単純温泉	\N	\N	\N	\N
2368	1818	荒川温泉	あらかわおんせん	長崎県南松浦郡玉之浦町荒川郷			五島列島	下五島	塩化物泉	\N	\N	\N	\N
2369	1995	口之津白浜温泉	くちのつしらはまおんせん	長崎県南高来郡口之津町			島原・雲仙・小浜	雲仙・小浜	塩化物泉	\N	\N	\N	\N
2370	1996	時津温泉	とぎつおんせん	長崎県西彼杵郡時津町			長崎	長崎	含鉄泉	\N	\N	\N	\N
2371	1997	稲佐山中腹温泉	いなさやまちゅうふくおんせん	長崎県長崎市曙町			長崎	長崎	その他	\N	\N	\N	\N
2372	1998	ハウステンボス温泉	はうすてんぼすおんせん	長崎県佐世保市ハウステンボス町			佐世保・ハウステンボス	ハウステンボス	塩化物泉	\N	\N	50418	\N
2373	1999	千里ヶ浜温泉	せんりがはまおんせん	長崎県平戸市川内町			平戸・松浦・田平	平戸	塩化物泉	\N	\N	50419	\N
2374	2000	鬼岳温泉	おにだけおんせん	長崎県福江市上大津町			五島列島	下五島	炭酸水素塩泉	\N	\N	\N	\N
2375	2001	長崎温泉	ながさきおんせん	長崎県長崎市伊王島町1丁目3277-7 			長崎	長崎	その他	\N	\N	50852	\N
2376	2002	道の尾温泉	みちのおおんせん	長崎県西彼杵郡長与町高田郷			長崎	長崎	ナトリウム塩化物泉	\N	\N	\N	\N
2377	2003	富江温泉	とみえおんせん	長崎県南松浦郡富江町			五島列島	下五島	単純温泉	\N	\N	\N	\N
2378	2004	平戸温泉	ひらどおんせん	長崎県平戸市			平戸・松浦・田平	平戸	その他	\N	\N	50419	\N
2379	2005	させぼ温泉	させぼおんせん	長崎県佐世保市谷郷町５－３２			佐世保・ハウステンボス	佐世保	塩化物泉	\N	\N	50418	\N
2380	2006	天然温泉「ばってんの湯」	てんねんおんせん「ばってんのゆ」	長崎県佐世保市南風崎町			佐世保・ハウステンボス	佐世保	その他	\N	\N	\N	\N
2381	2237	九十九島温泉	くじゅうくしまおんせん	長崎県佐世保市鹿子前1129			佐世保・ハウステンボス	佐世保	炭酸水素塩泉	\N	\N	50418	\N
2382	2944	うずしお温泉	うずしおおんせん	長崎県佐世保市崎岡町853-12			佐世保・ハウステンボス	佐世保	弱アルカリ性低張性泉	\N	\N	50418	\N
2383	2975	陽の岬温泉	ひのみさきおんせん	長崎県長崎市野母町692-1			長崎	長崎	炭酸水素塩泉	\N	\N	50852	\N
2384	2983	平戸たびら温泉	ひらどたびらおんせん	長崎県平戸市田平町野田免210-6			平戸・松浦・田平	平戸	塩化物泉	\N	\N	50419	\N
2385	3111	新魚目温泉	しんうおのめおんせん	長崎県南松浦郡新上五島町			五島列島	上五島	ナトリウム塩化物泉	\N	\N	50900	\N
2386	3182	雲仙小地獄温泉	うんぜんこじごくおんせん	長崎県雲仙市小浜町雲仙			島原・雲仙・小浜	雲仙・小浜	含鉄泉	\N	\N	50422	\N
2387	3271	九十九島温泉花みずきSASPA	くじゅうくしまおんせんはなみずきさすぱ	長崎県佐世保市鹿子前町1090番地			佐世保・ハウステンボス	佐世保	その他	\N	\N	50418	\N
2388	3292	稲佐山温泉	いなさやまおんせん	長崎県長崎市大鳥町５２３			長崎	長崎	弱アルカリ性低張性泉	\N	\N	50852	\N
2389	1877	山鹿温泉	やまがおんせん	熊本県山鹿市山鹿			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50425	\N
2390	1878	杖立温泉	つえたておんせん	熊本県阿蘇郡小国町下城杖立			黒川・杖立・わいた	杖立・わいた	塩化物泉	\N	\N	50919	\N
2391	1879	はげの湯温泉	はげのゆおんせん	熊本県阿蘇郡小国町西里			黒川・杖立・わいた	杖立・わいた	硫黄泉	\N	\N	50919	\N
2392	1880	山川温泉	やまかわおんせん	熊本県阿蘇郡小国町北里山川			黒川・杖立・わいた	杖立・わいた	硫黄泉	\N	\N	50919	\N
2393	1881	田の原温泉	たのはるおんせん	熊本県阿蘇郡南小国町満願寺田ノ原温泉			黒川・杖立・わいた	黒川・小田・田の原・満願寺	塩化物泉	\N	\N	50430	\N
2394	1882	満願寺温泉	まんがんじおんせん	熊本県阿蘇郡南小国町満願寺志津			黒川・杖立・わいた	黒川・小田・田の原・満願寺	単純温泉	\N	\N	\N	\N
2395	1883	黒川温泉	くろかわおんせん	熊本県阿蘇郡南小国町北黒川			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	50431	\N
2396	1884	産山温泉	うぶやまおんせん	熊本県阿蘇郡産山村大字大利			阿蘇	阿蘇・内牧	ナトリウム塩化物泉	\N	\N	50429	\N
2397	1885	阿蘇内牧温泉	あそうちのまきおんせん	熊本県阿蘇郡阿蘇町内牧			阿蘇	阿蘇・内牧	硫酸塩泉	\N	\N	50429	\N
2398	1886	阿蘇赤水温泉	あそあかみずおんせん	熊本県阿蘇郡阿蘇町赤水温泉			阿蘇	阿蘇・内牧	単純温泉	\N	\N	50429	\N
2399	1887	湯田巻狩温泉	ゆだまきがりおんせん	熊本県阿蘇郡阿蘇町大字赤水字湯田			阿蘇	阿蘇・内牧	硫酸塩泉	\N	\N	\N	\N
2400	1888	湯の谷温泉	ゆのたにおんせん	熊本県阿蘇郡長陽村湯の谷			阿蘇	南阿蘇	硫酸塩泉	\N	\N	\N	\N
2401	1889	栃木温泉	とちのきおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	硫酸塩泉	\N	\N	50429	\N
2402	1890	垂玉温泉	たるたまおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	硫黄泉	\N	\N	\N	\N
2403	1891	地獄温泉	じごくおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	炭酸水素塩泉	\N	\N	\N	\N
2404	1892	栃木原温泉	とちのきばるおんせん	熊本県阿蘇郡長陽村栃木			阿蘇	南阿蘇	硫黄泉	\N	\N	\N	\N
2405	1893	奥菊池温泉	おくきくちおんせん	熊本県菊池市原			玉名・山鹿・菊池	菊池	硫黄泉	\N	\N	\N	\N
2406	1894	菊池温泉	きくちおんせん	熊本県菊池市隈府			玉名・山鹿・菊池	菊池	炭酸水素塩泉	\N	\N	50428	\N
2407	1895	菊鹿温泉	きくかおんせん	熊本県鹿本郡菊鹿町大字池永			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50425	\N
2408	1896	合瀬川温泉	あわせがわおんせん	熊本県鹿本郡菊鹿町松尾横枕			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	\N	\N
2409	1897	平山温泉	ひらやまおんせん	熊本県山鹿市平山			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50973	\N
2410	1898	熊入温泉	くまいりおんせん	熊本県山鹿市熊入町			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	\N	\N
2411	1899	宮原温泉	みやばるおんせん	熊本県鹿本郡植木町宮原温泉			玉名・山鹿・菊池	山鹿・平山・植木	硫黄泉	\N	\N	\N	\N
2412	1900	植木温泉	うえきおんせん	熊本県鹿本郡植木町米塚			玉名・山鹿・菊池	山鹿・平山・植木	単純温泉	\N	\N	50426	\N
2413	1901	七城温泉	しちじょうおんせん	熊本県菊池市七城町林原			玉名・山鹿・菊池	菊池	含鉄泉	\N	\N	50428	\N
2414	1902	合志温泉	こうしおんせん	熊本県合志市栄			熊本	熊本	単純温泉	\N	\N	\N	\N
2415	1903	菊南温泉	きくなんおんせん	熊本県熊本市鶴羽田町			熊本	熊本	単純温泉	\N	\N	50424	\N
2416	1904	神園温泉	こうぞのおんせん	熊本県熊本市長嶺町			熊本	熊本	炭酸水素塩泉	\N	\N	\N	\N
2417	1905	玉名温泉	たまなおんせん	熊本県玉名市立願寺			玉名・山鹿・菊池	荒尾・玉名	単純温泉	\N	\N	50427	\N
2418	1906	小天温泉	おあまおんせん	熊本県玉名郡天水町小天			玉名・山鹿・菊池	荒尾・玉名	単純温泉	\N	\N	\N	\N
2419	1907	河内温泉	かわちおんせん	熊本県熊本市河内町船津温泉			熊本	熊本	単純温泉	\N	\N	\N	\N
2420	1908	赤瀬温泉	あかせおんせん	熊本県宇土市赤瀬町			熊本	宇土・益城	単純温泉	\N	\N	\N	\N
2421	1909	金桁温泉	かなけたおんせん	熊本県宇土郡三角町中村			熊本	宇土・益城	塩化物泉	\N	\N	\N	\N
2422	1910	松島温泉	まつしまおんせん	熊本県天草郡松島町合津			天草	天草上島・松島	炭酸水素塩泉	\N	\N	50434	\N
2423	1911	下田温泉	しもだおんせん	熊本県天草郡天草町下田北			天草	天草下島・下田	含鉄泉	\N	\N	50434	\N
2424	1912	日奈久温泉	ひなぐおんせん	熊本県八代市日奈久上西町			八代・水俣・湯の児	八代・水俣・湯の児	塩化物泉	\N	\N	\N	\N
2425	1913	吉尾温泉	よしおおんせん	熊本県芦北郡芦北町吉尾			八代・水俣・湯の児	八代・水俣・湯の児	塩化物泉	\N	\N	\N	\N
2426	1914	鶴木山温泉	つるぎやまおんせん	熊本県芦北郡芦北町鶴木山			八代・水俣・湯の児	八代・水俣・湯の児	単純温泉	\N	\N	\N	\N
2427	1915	湯浦温泉	ゆのうらおんせん	熊本県芦北郡芦北町湯浦			八代・水俣・湯の児	八代・水俣・湯の児	単純温泉	\N	\N	\N	\N
2428	1916	湯の児温泉	ゆのこおんせん	熊本県水俣市浜			八代・水俣・湯の児	八代・水俣・湯の児	放射能泉	\N	\N	50432	\N
2429	1917	湯の鶴温泉	ゆのつるおんせん	熊本県水俣市湯出			八代・水俣・湯の児	八代・水俣・湯の児	単純温泉	\N	\N	\N	\N
2430	1918	人吉温泉	ひとよしおんせん	熊本県人吉市市内			人吉・球磨	人吉・球磨	炭酸水素塩泉	\N	\N	50433	\N
2431	1919	湯山温泉	ゆやまおんせん	熊本県球磨郡水上村湯山			人吉・球磨	人吉・球磨	硫黄泉	\N	\N	\N	\N
2432	2045	奥黒川温泉	おくくろかわおんせん	熊本県阿蘇郡南小国東奥黒川			黒川・杖立・わいた	黒川・小田・田の原・満願寺	炭酸水素塩泉	\N	\N	\N	\N
2433	2046	奥満願寺温泉	おくまんがんじおんせん	熊本県阿蘇郡南小国満願寺金山			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	\N	\N
2434	2047	扇温泉	おおぎおんせん	熊本県阿蘇郡南小国満願寺			黒川・杖立・わいた	黒川・小田・田の原・満願寺	その他	\N	\N	\N	\N
2435	2048	小田温泉	おたおんせん	熊本県阿蘇郡南小国町小田			黒川・杖立・わいた	黒川・小田・田の原・満願寺	炭酸水素塩泉	\N	\N	50430	\N
2436	2049	大谷温泉	おおたにおんせん	熊本県阿蘇郡南小国町大谷山			黒川・杖立・わいた	黒川・小田・田の原・満願寺	その他	\N	\N	50430	\N
2437	2050	下鶴温泉	しもづるおんせん	熊本県阿蘇郡南小国町下鶴			黒川・杖立・わいた	黒川・小田・田の原・満願寺	弱アルカリ性低張性泉	\N	\N	\N	\N
2438	2051	枝立温泉	つえたておんせん	熊本県阿蘇郡南小国町杖立温泉			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	\N	\N
2439	2052	岳の湯温泉	たけのゆおんせん	熊本県阿蘇郡南小国町西里岳の湯			黒川・杖立・わいた	黒川・小田・田の原・満願寺	アルカリ単純泉	\N	\N	\N	\N
2440	2053	火の鳥温泉	ひのとりおんせん	熊本県阿蘇郡長陽村長野			阿蘇	南阿蘇	その他	\N	\N	50429	\N
2441	2054	乙姫さま温泉	おとひめさまおんせん	熊本県阿蘇郡阿蘇町乙姫			阿蘇	阿蘇・内牧	アルカリ単純泉	\N	\N	50429	\N
2442	2055	白水温泉	はくすいおんせん	熊本県阿蘇郡白水村			阿蘇	南阿蘇	炭酸水素塩泉	\N	\N	50429	\N
2443	2056	南阿蘇俵山温泉	みなみあそたわらやまおんせん	熊本県阿蘇郡九木野村			阿蘇	南阿蘇	硫酸塩泉	\N	\N	\N	\N
2444	2057	西原温泉	にしはらおんせん	熊本県阿蘇郡西原村			阿蘇	南阿蘇	アルカリ単純泉	\N	\N	\N	\N
2445	2058	天水温泉	てんすいおんせん	熊本県玉名郡天水町			玉名・山鹿・菊池	荒尾・玉名	その他	\N	\N	\N	\N
2446	2059	託麻温泉	たくまおんせん	熊本県熊本市長嶺町			熊本	熊本	アルカリ単純泉	\N	\N	\N	\N
2447	2060	水前寺温泉	すいぜんじおんせん	熊本県熊本市上水前寺			熊本	熊本	その他	\N	\N	\N	\N
2448	2061	熊本空港温泉	くまもとくうこうおんせん	熊本県上益城郡益城町			熊本	宇土・益城	アルカリ単純泉	\N	\N	\N	\N
2449	2062	南関温泉	なんかんおんせん	熊本県玉名郡南関町			玉名・山鹿・菊池	荒尾・玉名	単純温泉	\N	\N	50424	\N
2450	2063	あらお温泉	あらおおんせん	熊本県荒尾市			玉名・山鹿・菊池	荒尾・玉名	アルカリ単純泉	\N	\N	\N	\N
2451	2064	桃李温泉	とうりおんせん	熊本県人吉市			人吉・球磨	人吉・球磨	塩化物泉	\N	\N	\N	\N
2452	2065	湯前温泉	ゆまえおんせん	熊本県球磨郡湯前町			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2453	2066	神城温泉	しんじょうおんせん	熊本県球磨郡錦町			人吉・球磨	人吉・球磨	アルカリ単純泉	\N	\N	\N	\N
2454	2067	山江温泉	やまえおんせん	熊本県球磨郡山江村			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2455	2068	一勝地温泉	いっしょうちおんせん	熊本県球磨郡球磨村一勝地			人吉・球磨	人吉・球磨	塩化物泉	\N	\N	\N	\N
2456	2069	さゆり温泉	さゆりおんせん	熊本県球磨郡相良村			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2457	2070	天草パール温泉	あまくさぱーるおんせん	熊本県天草郡大矢野町中			天草	天草上島・松島	炭酸水素塩泉	\N	\N	50434	\N
2458	2071	弓ヶ浜温泉	ゆみがはまおんせん	熊本県天草郡大矢野町上弓ヶ浜			天草	天草上島・松島	塩化物泉	\N	\N	50434	\N
2459	2072	柳港温泉	やなぎみなとおんせん	熊本県天草郡大矢野町中柳			天草	天草上島・松島	弱アルカリ性低張性泉	\N	\N	50434	\N
2460	2073	市原温泉	いちはらおんせん	熊本県阿蘇郡南小国町赤馬場			黒川・杖立・わいた	黒川・小田・田の原・満願寺	その他	\N	\N	\N	\N
2461	2074	北里温泉	きたざとおんせん	熊本県阿蘇郡南小国町北里			黒川・杖立・わいた	黒川・小田・田の原・満願寺	硫黄泉	\N	\N	\N	\N
2462	2075	鹿本温泉	かもとおんせん	熊本県鹿本郡鹿本町			玉名・山鹿・菊池	山鹿・平山・植木	アルカリ単純泉	\N	\N	\N	\N
2463	2076	泗水温泉	しすいおんせん	熊本県菊池市泗水町			玉名・山鹿・菊池	菊池	炭酸水素塩泉	\N	\N	\N	\N
2464	2077	旭志温泉	きょくしおんせん	熊本県菊池市旭志麓			玉名・山鹿・菊池	菊池	その他	\N	\N	\N	\N
2465	2078	御立岬温泉	おたちみさきおんせん	熊本県芦北郡田浦町			八代・水俣・湯の児	八代・水俣・湯の児	塩化物泉	\N	\N	\N	\N
2466	2079	つなぎ温泉	つなぎおんせん	熊本県芦北郡津奈木町			八代・水俣・湯の児	八代・水俣・湯の児	その他	\N	\N	\N	\N
2467	2080	坊中温泉	ぼうちゅうおんせん	熊本県阿蘇郡阿蘇町坊中			阿蘇	阿蘇・内牧	塩化物泉	\N	\N	\N	\N
2468	2081	阿蘇健康火山温泉	あそけんこうかざんおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	その他	\N	\N	50429	\N
2469	2082	長陽温泉	ちょうようおんせん	熊本県阿蘇郡長陽村河陽			阿蘇	南阿蘇	単純温泉	\N	\N	\N	\N
2470	2083	久木野温泉	くぎのおんせん	熊本県阿蘇郡九木野村			阿蘇	南阿蘇	炭酸水素塩泉	\N	\N	\N	\N
2471	2084	高森温泉	たかもりおんせん	熊本県阿蘇郡高森			阿蘇	南阿蘇	その他	\N	\N	\N	\N
2472	2085	大津温泉	おおづおんせん	熊本県菊池郡大津			玉名・山鹿・菊池	菊池	炭酸水素塩泉	\N	\N	\N	\N
2473	2086	熊本城温泉	くまもとじょうおんせん	熊本県熊本市上熊本			熊本	熊本	アルカリ単純泉	\N	\N	\N	\N
2474	2087	草枕温泉	くさまくらおんせん	熊本県玉名郡天水町			玉名・山鹿・菊池	荒尾・玉名	その他	\N	\N	\N	\N
2475	2088	天然グリーンランド温泉	てんねんぐりーんらんどおんせん	熊本県荒尾市本井手長谷			玉名・山鹿・菊池	荒尾・玉名	その他	\N	\N	\N	\N
2476	2089	さかもと温泉	さかもとおんせん	熊本県八代郡坂本村			八代・水俣・湯の児	八代・水俣・湯の児	炭酸水素塩泉	\N	\N	\N	\N
2477	2090	城南温泉	じょうなんおんせん	熊本県下益城郡城南町			熊本	宇土・益城	その他	\N	\N	\N	\N
2478	2091	千丁温泉	せんちょうおんせん	熊本県八代郡千丁町			八代・水俣・湯の児	八代・水俣・湯の児	炭酸水素塩泉	\N	\N	\N	\N
2479	2092	不知火温泉	しらぬいおんせん	熊本県宇土郡不知火町			熊本	宇土・益城	その他	\N	\N	\N	\N
2480	2093	えびす温泉	えびすおんせん	熊本県球磨郡多良木町			人吉・球磨	人吉・球磨	その他	\N	\N	\N	\N
2481	2094	牛深温泉	うしぶかおんせん	熊本県牛深市			天草	天草下島・下田	アルカリ単純泉	\N	\N	50434	\N
2482	2095	吉尾温泉	よしおおんせん	熊本県芦北郡芦北町吉尾			八代・水俣・湯の児	八代・水俣・湯の児	硫酸塩泉	\N	\N	\N	\N
2483	2096	やまなみ温泉	やまなみおんせん	熊本県阿蘇郡産山村大利			阿蘇	阿蘇・内牧	その他	\N	\N	\N	\N
2484	2232	米塚温泉	こめづかおんせん	熊本県阿蘇郡阿蘇町赤水米塚温泉			阿蘇	阿蘇・内牧	アルカリ単純泉	\N	\N	50429	\N
2485	2234	天草温泉	あまくさおんせん	熊本県天草郡大矢野町上鳩の釜			天草	天草上島・松島	アルカリ単純泉	\N	\N	50434	\N
2486	2274	アゼリア21	あぜりあにじゅういち	熊本県阿蘇郡一の宮町宮地5812			阿蘇	阿蘇・内牧	塩化物泉	\N	\N	\N	\N
2487	2275	寺尾野温泉	てらおのおんせん	熊本県阿蘇郡小国町上田寺尾野			黒川・杖立・わいた	杖立・わいた	炭酸水素塩泉	\N	\N	\N	\N
2488	2276	苓北町温泉センター麟泉の湯	れいほくまちおんせんせんたーりんせんのゆ	熊本県天草郡苓北町志岐1281			天草	天草下島・下田	アルカリ単純泉	\N	\N	50434	\N
2489	1830	赤根温泉	あかねおんせん	大分県東国東郡国見町赤根			中津・国東	国東・杵築	硫黄泉	\N	\N	\N	\N
2490	1831	真玉温泉	またまおんせん	大分県西国東郡真玉町城前			中津・国東	国東・杵築	塩化物泉	\N	\N	\N	\N
2491	1832	千代の湯温泉	ちよのゆおんせん	大分県宇佐市大字出光			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
2492	1833	鴨良温泉	しぎらおんせん	大分県下毛郡耶馬渓町深耶馬鴫良温泉			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
2493	1834	折戸温泉	おりとおんせん	大分県下毛郡耶馬渓町深耶馬折戸			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
2494	1835	深耶馬温泉	しんやばおんせん	大分県下毛郡耶馬渓町深耶馬			中津・国東	中津・耶馬渓・宇佐	単純温泉	\N	\N	\N	\N
2495	1837	日田温泉	ひたおんせん	大分県日田市隈			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純温泉	\N	\N	50440	\N
2496	1838	天ヶ瀬温泉	あまがせおんせん	大分県日田郡天瀬町湯山			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	硫黄泉	\N	\N	50441	\N
2497	1839	湯の釣温泉	ゆのつるおんせん	大分県日田郡天瀬町赤岩			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純温泉	\N	\N	\N	\N
2498	1840	玖珠温泉	くすおんせん	大分県玖珠郡玖珠町春日町			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	\N	\N
2499	1841	杵築温泉	きつきおんせん	大分県杵築市大字杵築			中津・国東	国東・杵築	単純温泉	\N	\N	50439	\N
2500	1842	日出温泉	ひじおんせん	大分県速見郡日出町大神			別府	別府	塩化物泉	\N	\N	50436	\N
2501	1843	別府・鉄輪温泉	かんなわおんせん	大分県別府市鉄輪			別府	別府	単純温泉	\N	\N	50437	\N
2502	1844	別府・亀川温泉	かめがわおんせん	大分県別府市亀川浜田町			別府	別府	塩化物泉	\N	\N	50437	\N
2503	1845	別府・堀田温泉	べっぷ・ほりたおんせん	大分県別府市堀田			別府	別府	含鉄泉	\N	\N	50437	\N
2504	1846	別府・柴石温泉	しばせきおんせん	大分県別府市亀川城の内			別府	別府	単純温泉	\N	\N	\N	\N
2505	1847	別府・明礬温泉	みょうばんおんせん	大分県別府市明礬町			別府	別府	塩化物泉	\N	\N	50437	\N
2506	1848	別府温泉	べっぷおんせん	大分県別府市中央町			別府	別府	その他	\N	\N	50437	\N
2507	1849	別府・浜脇温泉	はまわきおんせん	大分県別府市浜脇			別府	別府	含鉄泉	\N	\N	50437	\N
2508	1850	別府・観海寺温泉	かんかいじおんせん	大分県別府市南立石			別府	別府	硫黄泉	\N	\N	50437	\N
2509	1851	城島温泉	きじまおんせん	大分県別府市東山			別府	別府	含鉄泉	\N	\N	50437	\N
2510	1852	大分市内温泉	おおいたしないおんせん	大分県大分市金池町			大分	大分	塩化物泉	\N	\N	50435	\N
2511	1853	塚野鉱泉	つかのこうせん	大分県大分市廻栖野			大分	大分	炭酸水素塩泉	\N	\N	\N	\N
2512	1854	陣屋温泉	じんやおんせん	大分県大分郡挾間町鬼瀬			湯布院	湯布院・湯平	単純温泉	\N	\N	\N	\N
2513	1855	六ヶ迫温泉	ろっかさここうせん	大分県臼杵市六ヶ迫			大分	臼杵・佐伯	単純温泉	\N	\N	\N	\N
2514	1856	塚原温泉	つかはらおんせん	大分県大分郡湯布院町塚原温泉			湯布院	湯布院・湯平	塩化物泉	\N	\N	50438	\N
2515	1857	由布院温泉	ゆふいんおんせん	大分県大分郡湯布院町大字川上			湯布院	湯布院・湯平	塩化物泉	\N	\N	50438	\N
2516	1858	山下湖温泉	やましたこおんせん	大分県大分郡湯布院町川西			湯布院	湯布院・湯平	炭酸水素塩泉	\N	\N	\N	\N
2517	1859	湯平温泉	ゆのひらおんせん	大分県大分郡湯布院町湯平			湯布院	湯布院・湯平	塩化物泉	\N	\N	50438	\N
2518	1860	壁湯温泉	かべゆおんせん	大分県玖珠郡九重町町田			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50442	\N
2519	1861	宝泉寺温泉	ほうせんじおんせん	大分県玖珠郡九重町町田			九重・久住・竹田・長湯	九重	塩化物泉	\N	\N	50442	\N
2520	1862	川底温泉	かわそこおんせん	大分県玖珠郡九重町菅原			九重・久住・竹田・長湯	九重	硫黄泉	\N	\N	\N	\N
2521	1863	筌の口温泉	うけのくちおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	\N	\N
2522	1864	長者原温泉	ちょうじゃばるおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
2523	1865	星生温泉	ほつしょうおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	塩化物泉	\N	\N	50592	\N
2524	1866	寒の地獄温泉	かんのじごくおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
2525	1867	牧ノ戸温泉	まきのとおんせん	大分県玖珠郡九重町田野			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
2526	1868	筋湯温泉	すじゆおんせん	大分県玖珠郡九重町湯坪筋湯			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50443	\N
2527	1869	大岳温泉	おおたけおんせん	大分県玖珠郡九重町湯坪			九重・久住・竹田・長湯	九重	炭酸水素塩泉	\N	\N	\N	\N
2528	1870	生竜温泉	いきりゅうおんせん	大分県玖珠郡九重町町田			九重・久住・竹田・長湯	九重	含鉄泉	\N	\N	50592	\N
2529	1871	法華院温泉	ほっけいんおんせん	大分県直入郡久住町有氏			九重・久住・竹田・長湯	久住・長湯・竹田	含鉄泉	\N	\N	\N	\N
2530	1872	久住温泉	くじゅうおんせん	大分県直入郡久住町メリーファーム			九重・久住・竹田・長湯	久住・長湯・竹田	硫黄泉	\N	\N	50444	\N
2531	1873	七里田温泉	しちりだおんせん	大分県直入郡久住町有氏七里田			九重・久住・竹田・長湯	久住・長湯・竹田	硫黄泉	\N	\N	50444	\N
2532	1874	長湯温泉	ながゆおんせん	大分県直入郡直入町長湯			九重・久住・竹田・長湯	久住・長湯・竹田	単純温泉	\N	\N	50445	\N
2533	1875	湯坪温泉	ゆつぼおんせん	大分県玖珠郡九重町湯坪　			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50591	\N
2534	1876	竹田温泉	たけたおんせん	大分県竹田市竹田			九重・久住・竹田・長湯	久住・長湯・竹田	アルカリ単純泉	\N	\N	\N	\N
2535	2019	赤川温泉	あかがわおんせん	大分県直入郡久住町			九重・久住・竹田・長湯	久住・長湯・竹田	硫黄泉	\N	\N	50444	\N
2536	2021	国見温泉	くにみおんせん	大分県東国東郡国見町			中津・国東	国東・杵築	単純温泉	\N	\N	\N	\N
2537	2022	宇佐温泉	うさおんせん	大分県宇佐市川部			中津・国東	中津・耶馬渓・宇佐	炭酸水素塩泉	\N	\N	50593	\N
2538	2023	狭間温泉	はざまおんせん	大分県大分郡狭間			湯布院	湯布院・湯平	炭酸水素塩泉	\N	\N	\N	\N
2539	2024	九酔渓温泉	きゅうすいけいおんせん	大分県玖珠郡九重町			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
2540	2025	九重温泉	ここのえおんせん	大分県玖珠郡九重町			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
2541	2026	院内温泉	いんないおんせん	大分県宇佐郡院内町			中津・国東	中津・耶馬渓・宇佐	その他	\N	\N	\N	\N
2542	2027	安心院温泉	あじむおんせん	大分県宇佐郡安心院			中津・国東	中津・耶馬渓・宇佐	その他	\N	\N	\N	\N
2543	2028	かいがけ温泉	かいがけおんせん	大分県大分郡狭間町			湯布院	湯布院・湯平	炭酸水素塩泉	\N	\N	\N	\N
2544	2029	宇目温泉	うめおんせん	大分県南海部郡宇目町			大分	大野	アルカリ単純泉	\N	\N	\N	\N
2545	2030	直川温泉	なおかわおんせん	大分県南海部郡直川村			大分	大野	その他	\N	\N	\N	\N
2546	2031	竜門温泉	りゅうもんおんせん	大分県玖珠郡九重町大字松木竜門			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
2547	2032	白水鉱泉	はくすいこうせん	大分県大分郡庄内町大字阿蘇野			湯布院	湯布院・湯平	塩化物泉	\N	\N	\N	\N
2548	2033	つえ温泉	つえおんせん	大分県日田郡上津江村			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	塩化物泉	\N	\N	\N	\N
2549	2034	湯の釣温泉	ゆのつりおんせん	大分県日田郡天瀬町			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純温泉	\N	\N	50441	\N
2550	2266	夢幻の里	むげんのさと	大分県別府市堀田6組			別府	別府	その他	\N	\N	\N	\N
2551	2271	駅前高等温泉	えきまえこうとうおんせん	大分県別府市駅前町13-14			別府	別府	単純温泉	\N	\N	\N	\N
2552	2273	温泉若山	おんせんわかやま	大分県下毛郡耶馬渓町深耶馬3263			中津・国東	中津・耶馬渓・宇佐	鉱泉	\N	\N	\N	\N
2553	2279	湯布院町営健康温泉館クアージュゆふいん	ゆふいんちょうえいけんこうおんせんかんくあーじゅゆふいん	大分県大分郡湯布院町大字川上字城2863番地			湯布院	湯布院・湯平	単純温泉	\N	\N	\N	\N
2554	2282	レゾネイトクラブくじゅう紅殻の湯	れぞねいとくらぶくじゅうべんがらのゆ	大分県直入郡久住町有氏広内1773			九重・久住・竹田・長湯	久住・長湯・竹田	炭酸水素塩泉	\N	\N	\N	\N
2555	2283	直入町温泉療養文化館御前湯	なおいりまちおんせんりょうようぶんかかんごぜんゆ	大分県直入郡直入町大字長湯7962-1			九重・久住・竹田・長湯	久住・長湯・竹田	硫酸塩泉	\N	\N	\N	\N
2556	2284	竹瓦温泉	たけがわらおんせん	大分県別府市元町16-13			別府	別府	単純温泉	\N	\N	\N	\N
2557	2287	ゑびすや温泉	えびすやおんせん	大分県別府市明礬4組			別府	別府	単純温泉	\N	\N	\N	\N
2558	2559	由布岳温泉	ゆふだけおんせん	大分県大分郡湯布院町川上宮尻2426-3			湯布院	湯布院・湯平	硫黄泉	\N	\N	50438	\N
2559	2560	三隈川温泉	みくまがわおんせん	大分県日田市中ノ島町685-6			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	単純炭酸泉	\N	\N	\N	\N
2560	2561	満天望温泉	まんてんぼうおんせん	大分県直入郡久住町白丹7571-23			九重・久住・竹田・長湯	久住・長湯・竹田	単純炭酸泉	\N	\N	\N	\N
2561	2649	馬子草温泉	まごそうおんせん	大分県久重町大字旧野馬子草１７３２			九重・久住・竹田・長湯	九重	硫黄泉	\N	\N	50592	\N
2562	2650	梅の香温泉	うめのかおりおんせん	大分県日田郡大山町大字西山４６６７			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	アルカリ単純泉	\N	\N	50594	\N
2563	2972	水分温泉	みずわけおんせん	大分県玖珠郡九重町大字野上3737-2			九重・久住・竹田・長湯	九重	単純温泉	\N	\N	50592	\N
2564	2996	長者の郷湯	ちょうじゃのさとゆ	大分県玖珠郡九重町大字田野１６６６－４７１			九重・久住・竹田・長湯	九重	弱アルカリ性低張性泉	\N	\N	50813	\N
2565	3041	山香温泉	やまがおんせん	大分県杵築市山香町大字倉成3003番地			中津・国東	国東・杵築	炭酸水素塩泉	\N	\N	50856	\N
2566	3050	大在温泉	おおざいおんせん	大分県大分市大在北1丁目４－７			大分	大分	炭酸水素塩泉	\N	\N	50866	\N
2567	3133	瀬の本温泉	せのもとおんせん	大分県玖珠郡九重町大字湯坪瀬の本			九重・久住・竹田・長湯	九重	硫黄泉	\N	\N	50592	\N
2568	3328	奥日田温泉	おくひたおんせん	大分県日田市大山町大字西大山4667番地			日田・天ヶ瀬・耶馬渓	日田・天ヶ瀬	ナトリウム塩化物泉	\N	\N	50440	\N
2569	1920	西都温泉	さいとおんせん	宮崎県西都市大字調殿			宮崎・青島・日南	西都	炭酸水素塩泉	\N	\N	\N	\N
2570	1921	高屋温泉	たかやおんせん	宮崎県西都市都於郡町高屋			宮崎・青島・日南	西都	塩化物泉	\N	\N	50449	\N
2571	1922	佐土原温泉	さどわらおんせん	宮崎県宮崎郡佐土原町下那珂			宮崎・青島・日南	宮崎・青島・シーガイア	塩化物泉	\N	\N	\N	\N
2572	1923	綾温泉	あやおんせん	宮崎県東諸県郡綾町南俣			宮崎・青島・日南	宮崎・青島・シーガイア	塩化物泉	\N	\N	\N	\N
2573	1924	吉田温泉	よしだおんせん	宮崎県えびの市昌明寺			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
2574	1925	京町温泉	きょうまちおんせん	宮崎県えびの市向江京町			えびの・都城	えびの・都城	単純温泉	\N	\N	50670	\N
2575	1926	白鳥温泉	しらとりおんせん	宮崎県えびの市末永			えびの・都城	えびの・都城	単純温泉	\N	\N	\N	\N
2576	1927	えびの高原温泉	えびのこうげんおんせん	宮崎県えびの市末永			えびの・都城	えびの・都城	含鉄泉	\N	\N	\N	\N
2577	1928	阿母ヶ平温泉	あばがひらおんせん	宮崎県小林市堤			えびの・都城	えびの・都城	単純温泉	\N	\N	\N	\N
2578	1929	蓮太郎温泉	はすたろうおんせん	宮崎県西諸県郡高原町西麓			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
2579	1930	湯之元温泉	ゆのもとおんせん	宮崎県西諸県郡高原町蒲牟田			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
2580	1931	常盤温泉	ときわおんせん	宮崎県北諸県郡山田町中霧島			えびの・都城	えびの・都城	含鉄泉	\N	\N	50448	\N
2581	1932	青井岳温泉	あおいだけおんせん	宮崎県北諸県郡山之口町青井岳			えびの・都城	えびの・都城	含鉄泉	\N	\N	\N	\N
2582	1933	長日川温泉	ながひがわおんせん	宮崎県宮崎郡田野町			宮崎・青島・日南	宮崎・青島・シーガイア	単純温泉	\N	\N	\N	\N
2583	1934	曽山寺温泉	そさんじおんせん	宮崎県宮崎市加江田			宮崎・青島・日南	宮崎・青島・シーガイア	硫黄泉	\N	\N	\N	\N
2584	1935	青島温泉	あおしまおんせん	宮崎県宮崎市青島			宮崎・青島・日南	宮崎・青島・シーガイア	単純温泉	\N	\N	50985	\N
2585	1936	北郷温泉	きたごうおんせん	宮崎県南那珂郡北郷町大藤甲			宮崎・青島・日南	日南海岸	硫黄泉	\N	\N	50446	\N
2586	1937	日南温泉	にちなんおんせん	宮崎県日南市風田			宮崎・青島・日南	日南海岸	炭酸水素塩泉	\N	\N	\N	\N
2587	2097	湯ノ木場温泉	ゆのこばおんせん	宮崎県えびの市東長江浦			えびの・都城	えびの・都城	塩化物泉	\N	\N	\N	\N
2588	2098	加久藤温泉	かくとうおんせん	宮崎県えびの市大字西長江浦152‐2			えびの・都城	えびの・都城	塩化物泉	\N	\N	\N	\N
2589	2099	田野温泉	たのおんせん	宮崎県宮崎郡田野町			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
2590	2100	小林温泉	こばやしおんせん	宮崎県小林市			えびの・都城	えびの・都城	単純温泉	\N	\N	\N	\N
2591	2101	高原温泉	たかはらおんせん	宮崎県西諸県郡高原町			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
2592	2102	安久温泉	やすひさおんせん	宮崎県都城市安久町			えびの・都城	えびの・都城	炭酸水素塩泉	\N	\N	\N	\N
2593	2103	都城温泉	みやこのじょうおんせん	宮崎県都城市			えびの・都城	えびの・都城	塩化物泉	\N	\N	\N	\N
2594	2104	山之口温泉	やまのぐちおんせん	宮崎県北諸県郡山之口町			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
2595	2105	山田温泉	やまだおんせん	宮崎県北諸県郡山田町			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
2596	2106	日之影温泉	ひのかげおんせん	宮崎県西臼杵郡日之影町			日向・延岡・高千穂	高千穂	その他	\N	\N	\N	\N
2597	2107	宮崎温泉	みやざきおんせん	宮崎県宮崎市			宮崎・青島・日南	宮崎・青島・シーガイア	炭酸水素塩泉	\N	\N	\N	\N
2598	2108	清武温泉	きよたけおんせん	宮崎県宮崎郡清武町			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
2599	2109	木花温泉	きはなおんせん	宮崎県宮崎市学園木花台南			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
2600	2110	串間温泉	くしまおんせん	宮崎県串間市			宮崎・青島・日南	日南海岸	アルカリ単純泉	\N	\N	\N	\N
2601	2111	高崎温泉	たかざきおんせん	宮崎県北諸県郡高崎町			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
2602	2112	高千穂温泉	たかちほおんせん	宮崎県西臼杵郡高千穂町			日向・延岡・高千穂	高千穂	炭酸水素塩泉	\N	\N	\N	\N
2603	2113	新富温泉	しんとみおんせん	宮崎県児湯郡新富町			宮崎・青島・日南	西都	その他	\N	\N	\N	\N
2604	2114	宮崎リゾート温泉	みやざきりぞーとおんせん	宮崎県宮崎市			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	50447	\N
2605	2235	青島温泉	あおしまおんせん	宮崎市青島			宮崎・青島・日南	宮崎・青島・シーガイア	その他	\N	\N	\N	\N
2606	2270	高岡温泉やすらぎの郷	たかおかおんせんやすらぎのさと	宮崎県東諸県郡高岡町大字小山田1953番地			宮崎・青島・日南	宮崎・青島・シーガイア	弱アルカリ性低張性泉	\N	\N	\N	\N
2607	2272	日南海岸青島温泉青島サンクマール	にちなんかいがんあおしまおんせんあおしまさんくまーる	宮崎県宮崎市大字折生迫7408			宮崎・青島・日南	宮崎・青島・シーガイア	炭酸水素塩泉	\N	\N	\N	\N
2608	2285	西米良温泉･カリコボーズの湯『ゆた?と』	にしめらおんせん･かりこぼーずのゆ『ゆた?と』	宮崎県児湯郡西米良村大字村所260-8			宮崎・青島・日南	西都	塩化物泉	\N	\N	\N	\N
2609	2562	すきむらんど温泉　かじかの湯	すきむらんどおんせん　かじかのゆ	宮崎県西諸県郡須木村			えびの・都城	えびの・都城	その他	\N	\N	\N	\N
2610	2563	南郷温泉	なんごうおんせん	宮崎県東臼杵郡南郷村			日向・延岡・高千穂	日向	炭酸水素塩泉	\N	\N	\N	\N
2611	2564	天岩戸温泉	あまのいわとおんせん	宮崎県西臼杵郡高千穂町岩戸			日向・延岡・高千穂	高千穂	その他	\N	\N	\N	\N
2612	2934	極楽温泉	ごくらくおんせん	宮崎県西諸県郡高原町大字蒲牟田7449			えびの・都城	えびの・都城	その他	\N	\N	50763	\N
2613	2960	フェニックスリゾート温泉	ふぇにっくすりぞーとおんせん	宮崎県宮崎市山崎町浜山415番87			宮崎・青島・日南	宮崎・青島・シーガイア	塩化物泉	\N	\N	50787	\N
2614	3033	ごかせ温泉	ごかせおんせん	宮崎県西臼杵郡五ヶ瀬町大字三ケ所字広木野９２２３－１			日向・延岡・高千穂	高千穂	アルカリ単純泉	\N	\N	50850	\N
2615	3262	神の郷温泉	かんのごうおんせん	宮崎県小林市細野５２７３―１９			えびの・都城	えびの・都城	ナトリウム塩化物泉	\N	\N	\N	\N
2616	3289	神話の湯	しんわのゆ	宮崎県宮崎市青島2丁目100‐7番地			宮崎・青島・日南	宮崎・青島・シーガイア	炭酸水素塩泉	\N	\N	50985	\N
2617	1938	白木川内温泉	しらきがわうちおんせん	鹿児島県出水市上大川内			北薩・川内	出水・阿久根	硫黄泉	\N	\N	\N	\N
2618	1939	湯川内温泉	ゆがわちおんせん	鹿児島県出水市武本			北薩・川内	出水・阿久根	硫黄泉	\N	\N	\N	\N
2619	1940	阿久根温泉	あくねおんせん	鹿児島県阿久根市大丸町			北薩・川内	出水・阿久根	塩化物泉	\N	\N	\N	\N
2620	1941	川内温泉	せんだいおんせん	鹿児島県川内市湯田町			北薩・川内	川内・いちき串木野	硫黄泉	\N	\N	\N	\N
2621	1943	紫尾温泉	しびおんせん	鹿児島県薩摩郡鶴田町紫尾			北薩・川内	川内・いちき串木野	硫黄泉	\N	\N	\N	\N
2622	1944	宮之城温泉	みやのじょうおんせん	鹿児島県薩摩郡宮之城町湯田			北薩・川内	川内・いちき串木野	硫黄泉	\N	\N	50452	\N
2623	1945	市比野温泉	いちひのおんせん	鹿児島県薩摩郡樋脇町市比野			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	50452	\N
2624	1946	入来温泉	いりきおんせん	鹿児島県薩摩郡入来町副田			北薩・川内	川内・いちき串木野	塩化物泉	\N	\N	\N	\N
2625	1947	諏訪温泉	すわおんせん	鹿児島県薩摩郡入来町浦之名			北薩・川内	川内・いちき串木野	塩化物泉	\N	\N	\N	\N
2626	1948	藺牟田温泉	いむたおんせん	鹿児島県薩摩郡祁答院町藺牟田			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	\N	\N
2627	1949	吉松温泉郷	よしまつおんせんきょう	鹿児島県姶良郡吉松町鶴丸			霧島	霧島	単純温泉	\N	\N	\N	\N
2628	1950	湯之尾温泉	ゆのおおんせん	鹿児島県伊佐郡菱刈町川北			北薩・川内	大口	炭酸水素塩泉	\N	\N	\N	\N
2629	1951	栗野岳温泉	くりのだけおんせん	鹿児島県姶良郡栗野町木場			霧島	霧島	硫黄泉	\N	\N	\N	\N
2630	1952	関平温泉	せきびらおんせん	鹿児島県姶良郡牧園町三体堂			霧島	霧島	単純温泉	\N	\N	\N	\N
2631	1953	丸尾温泉	まるおおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	50451	\N
2632	1954	湯之谷温泉	ゆのたにおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
2633	1955	硫黄谷温泉	いおうだにおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	\N	\N
2634	1956	林田温泉	はやしだおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	\N	\N
2635	1957	新湯温泉	しんゆおんせん	鹿児島県姶良郡牧園町高千穂			霧島	霧島	硫黄泉	\N	\N	\N	\N
2636	1958	霧島神宮温泉郷	きりしまじんぐうおんせんきょう	鹿児島県姶良郡霧島町田口			霧島	霧島	硫黄泉	\N	\N	50451	\N
2637	1959	天降川温泉	あもりがわおんせん	鹿児島県姶良郡牧園町宿窪田			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
2638	1961	日当山温泉	ひなたやまおんせん	鹿児島県姶良郡隼人町姫城			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
2639	1962	あいら温泉	あいらおんせん	鹿児島県姶良郡姶良町鍋倉			霧島	霧島	単純温泉	\N	\N	\N	\N
2640	1963	サンピアあいら温泉	さんぴああいらおんせん	鹿児島県姶良郡姶良町東餅田			霧島	霧島	塩化物泉	\N	\N	\N	\N
2641	1964	市来温泉	いちきおんせん	鹿児島県日置郡市来町湊町			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	\N	\N
2642	1965	鹿児島温泉	かごしまおんせん	鹿児島県鹿児島市			鹿児島・桜島	鹿児島・桜島	塩化物泉	\N	\N	\N	\N
2643	1966	桜島マグマ温泉	さくらじままぐまおんせん	鹿児島県鹿児島郡桜島町横山			鹿児島・桜島	鹿児島・桜島	単純温泉	\N	\N	\N	\N
2644	1967	古里温泉	ふるさとおんせん	鹿児島県鹿児島市古里町			鹿児島・桜島	鹿児島・桜島	含鉄泉	\N	\N	\N	\N
2645	1968	海潟温泉	かいがたおんせん	鹿児島県垂水市海潟			垂水・大隅	垂水・大隅	塩化物泉	\N	\N	\N	\N
2646	1969	垂水温泉	たるみずおんせん	鹿児島県垂水市錦江町			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
2647	1970	大隅温泉	おおすみおんせん	鹿児島県鹿屋市打馬			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
2648	1971	岸良温泉	きしらおんせん	鹿児島県肝属郡内之浦町岸良			垂水・大隅	垂水・大隅	炭酸水素塩泉	\N	\N	\N	\N
2649	1972	吹上温泉	ふきあげおんせん	鹿児島県日置市吹上町吹上温泉			南薩・指宿	伊集院・東市来・吹上浜	単純温泉	\N	\N	50450	\N
2650	1973	指宿温泉	いぶすきおんせん	鹿児島県指宿市十二町			南薩・指宿	指宿	単純温泉	\N	\N	50450	\N
2651	1974	成川温泉	なりかわおんせん	鹿児島県揖宿郡山川町成川			南薩・指宿	指宿	硫黄泉	\N	\N	\N	\N
2652	1975	伏目温泉	ふしめおんせん	鹿児島県揖宿郡山川町福元字一本松			南薩・指宿	指宿	塩化物泉	\N	\N	\N	\N
2653	1976	川尻温泉	かわしりおんせん	鹿児島県揖宿郡開聞町川尻			南薩・指宿	指宿	含鉄泉	\N	\N	\N	\N
2654	1977	種子島温泉	たねがしまおんせん	鹿児島県熊毛郡中種子町坂井塩屋			離島（利尻・礼文・天売・焼尻）	種子島	塩化物泉	\N	\N	\N	\N
2655	1978	屋久島温泉	やくしまおんせん	鹿児島県熊毛郡屋久町尾之間			離島（利尻・礼文・天売・焼尻）	屋久島	塩化物泉	\N	\N	\N	\N
2656	1979	尾之間温泉	おのあいだおんせん	鹿児島県熊毛郡屋久町尾之間			離島（利尻・礼文・天売・焼尻）	屋久島	塩化物泉	\N	\N	\N	\N
2657	2115	妙見温泉	みょうけんおんせん	鹿児島県姶良郡牧園町			霧島	霧島	炭酸水素塩泉	\N	\N	50451	\N
2658	2116	鰻温泉	うなぎおんせん	鹿児島県揖宿郡山川町成川			南薩・指宿	指宿	硫黄泉	\N	\N	\N	\N
2659	2117	開聞温泉	かいもんおんせん	鹿児島県揖宿郡開聞町川尻			南薩・指宿	指宿	硫黄泉	\N	\N	50450	\N
2660	2118	湯之元温泉	ゆのもとおんせん	鹿児島県日置郡東市来町湯之元			南薩・指宿	伊集院・東市来・吹上浜	炭酸水素塩泉	\N	\N	\N	\N
2661	2119	祁答院温泉	けどういんおんせん	鹿児島県薩摩郡祁答院町下手			北薩・川内	川内・いちき串木野	その他	\N	\N	\N	\N
2662	2120	川内高城温泉	せんだいたきおんせん	鹿児島県川内市湯田町			北薩・川内	川内・いちき串木野	アルカリ単純泉	\N	\N	\N	\N
2663	2121	薩摩温泉	さつまおんせん	鹿児島県薩摩郡薩摩町			北薩・川内	川内・いちき串木野	塩化物泉	\N	\N	\N	\N
2664	2122	木曽の滝温泉	そぎのたきおんせん	鹿児島県大口市宮人			北薩・川内	大口	硫黄泉	\N	\N	\N	\N
2665	2123	出水温泉	いずみおんせん	鹿児島県出水市向江			北薩・川内	出水・阿久根	アルカリ単純泉	\N	\N	\N	\N
2666	2124	長島温泉	ながしまおんせん	鹿児島県出水郡長島町蔵元			北薩・川内	出水・阿久根	弱アルカリ性低張性泉	\N	\N	\N	\N
2667	2125	鹿屋温泉	かのやおんせん	鹿児島県鹿屋市新生町			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
2668	2126	福山温泉	ふくやまおんせん	鹿児島県姶良郡福山町			霧島	霧島	単純温泉	\N	\N	\N	\N
2669	2127	志布志温泉	しぶしおんせん	鹿児島県曽於郡志布志町			垂水・大隅	垂水・大隅	弱アルカリ性低張性泉	\N	\N	\N	\N
2670	2128	根占温泉	ねじめおんせん	鹿児島県肝属郡根占町			垂水・大隅	垂水・大隅	炭酸水素塩泉	\N	\N	\N	\N
2671	2129	内之浦温泉	うちのうらおんせん	鹿児島県肝属郡内之浦町南方			垂水・大隅	垂水・大隅	炭酸水素塩泉	\N	\N	\N	\N
2672	2131	南種子温泉	みなみたねがしまおんせん	鹿児島県熊毛郡南種子町中之上			離島	種子島	その他	\N	\N	\N	\N
2673	2132	甑島温泉	こしきしまおんせん	鹿児島県薩摩郡里村里			離島	甑島列島	炭酸水素塩泉	\N	\N	\N	\N
2674	2133	枕崎温泉	まくらざきおんせん	鹿児島県枕崎市			南薩・指宿	知覧・南さつま	その他	\N	\N	\N	\N
2675	2134	頴娃温泉	えいおんおんせん	鹿児島県揖宿郡頴娃町			南薩・指宿	知覧・南さつま	炭酸水素塩泉	\N	\N	\N	\N
2676	2135	加世田温泉	かせだおんせん	鹿児島県加世田市高橋			南薩・指宿	知覧・南さつま	塩化物泉	\N	\N	\N	\N
2677	2136	川辺温泉	かわべおんせん	鹿児島県川辺郡川辺町			南薩・指宿	知覧・南さつま	硫黄泉	\N	\N	\N	\N
2678	2137	喜入温泉	きいれおんせん	鹿児島県揖宿郡喜入町			南薩・指宿	指宿	アルカリ単純泉	\N	\N	\N	\N
2679	2138	高野尾温泉	たかおのおんせん	鹿児島県出水郡高尾野町			北薩・川内	出水・阿久根	塩化物泉	\N	\N	\N	\N
2680	2139	東温泉	あずまおんせん	鹿児島県出水郡東町鷹巣			北薩・川内	出水・阿久根	アルカリ単純泉	\N	\N	\N	\N
2681	2140	松山温泉	まつやまおんせん	鹿児島県曽於郡松山町			垂水・大隅	垂水・大隅	アルカリ単純泉	\N	\N	\N	\N
2682	2141	佐多温泉	さたおんせん	鹿児島県肝属郡佐田町伊座敷			垂水・大隅	垂水・大隅	単純温泉	\N	\N	\N	\N
2683	2142	平内温泉	ひらうちおんせん	鹿児島県熊毛郡屋久町尾之間			離島	屋久島	硫黄泉	\N	\N	\N	\N
2684	2143	湯泊温泉	ゆどまりおんせん	鹿児島県熊毛郡屋久町湯泊			離島	屋久島	アルカリ単純泉	\N	\N	\N	\N
2685	2144	白浜温泉	しらはまおんせん	鹿児島県鹿児島郡桜島町			鹿児島・桜島	鹿児島・桜島	アルカリ単純泉	\N	\N	\N	\N
2686	2146	松元温泉	まつもとおんせん	鹿児島県日置郡松元町			鹿児島・桜島	鹿児島・桜島	塩化物泉	\N	\N	\N	\N
2687	2147	平川郷温泉	ひらかわのさとおんせん	鹿児島県薩摩郡宮之城町平川			北薩・川内	川内・いちき串木野	単純温泉	\N	\N	\N	\N
2688	2148	楠川温泉	くすがわおんせん	鹿児島県熊毛郡上屋久町楠川			離島	屋久島	塩化物泉	\N	\N	\N	\N
2689	2149	一湊温泉	いちみなとおんせん	鹿児島県熊毛郡上屋久町一湊			離島	屋久島	硫黄泉	\N	\N	\N	\N
2690	2150	硫黄島温泉	いおうじまおんせん	鹿児島県鹿児島郡三島村硫黄島			離島	大隈諸島	硫黄泉	\N	\N	\N	\N
2691	2151	中種子温泉	なかたねおんせん	鹿児島県熊毛郡中種子町坂井			離島	種子島	塩化物泉	\N	\N	\N	\N
2692	2152	霧島温泉郷	きりしまおんせんきょう	鹿児島県姶良郡牧園町高千穂			霧島	霧島	アルカリ単純泉	\N	\N	50451	\N
2693	2153	鹿児島市内温泉	かごしましないおんせん	鹿児島県鹿児島市			鹿児島・桜島	鹿児島・桜島	アルカリ単純泉	\N	\N	\N	\N
2694	2154	古里温泉	ふるさとおんせん	鹿児島県鹿児島市古里町			鹿児島・桜島	鹿児島・桜島	硫黄泉	\N	\N	\N	\N
2695	2236	城山温泉	しろやまおんせん	鹿児島県国分市上小川4256			霧島	霧島	その他	\N	\N	50451	\N
2696	2265	北薩温泉	ほくさつおんせん	鹿児島県出水市六月田町941			北薩・川内	出水・阿久根	その他	\N	\N	\N	\N
2697	2288	霧島温泉	きりしまおんせん	鹿児島県姶良郡牧園町万膳626			霧島	霧島	単純温泉	\N	\N	50451	\N
2698	2395	猿ヶ城温泉	さるがじょうおんせん	鹿児島県垂水市高城1374			垂水・大隅	垂水・大隅	硫黄泉	\N	\N	\N	\N
2699	2565	坂本温泉	さかもとおんせん	鹿児島県鹿児島郡三島村硫黄島			離島	吐喝喇列島	単純温泉	\N	\N	\N	\N
2700	3029	有村温泉	ありむらおんせん	鹿児島県鹿児島市古里町1078-64			鹿児島・桜島	鹿児島・桜島	塩化物泉	\N	\N	50847	\N
2701	3219	桃晃温泉	とうこうおんせん	鹿児島県出水市昭和町１１－２２			北薩・川内	出水・阿久根	その他	\N	\N	50452	\N
2702	3226	東郷温泉	とうごうおんせん	鹿児島県薩摩川内市東郷町斧渕１９４０番地１			北薩・川内	川内・いちき串木野	炭酸水素塩泉	\N	\N	50961	\N
2703	3230	奄美温泉　奄美の湯	あまみおんせん　あまみのゆ	鹿児島県大島郡瀬戸内町蘇刈９７０			離島	奄美大島	ナトリウム塩化物泉	\N	\N	50962	\N
2704	3254	財宝温泉	ざいほうおんせん	鹿児島県垂水市新観堂			垂水・大隅	垂水・大隅	アルカリ単純泉	\N	\N	50978	\N
2705	3279	財宝天神温泉	ざいほうてんじんおんせん	鹿児島県鹿屋市天神町３５６４－３			垂水・大隅	垂水・大隅	単純温泉	\N	\N	50978	\N
2706	1980	山田温泉	やまだおんせん	沖縄県国頭郡恩納村山田			西海岸・東海岸	西海岸	硫黄泉	\N	\N	50453	\N
2707	1981	三重城温泉	みいぐすくおんせん	沖縄県那覇市西3－2－1			那覇	那覇	塩化物泉	\N	\N	50946	\N
2708	1982	サザンリンクスリゾートホテル温泉	さざんりんくすりぞーとほてるおんせん	沖縄県島尻郡具志頭村字玻名城			南部	島尻	中性低張性高温泉	\N	\N	\N	\N
2709	2493	西表島温泉	いりおもてじまおんせん	沖縄県八重山郡竹富町高那243			離島	西表島・小浜島・竹富島	ナトリウム塩化物泉	\N	\N	50759	\N
2710	3000	シギラ黄金温泉	しぎらおうごんおんせん	沖縄県宮古島市上野字新里西本島１４０５－２２３			離島	宮古島	硫酸塩泉	\N	\N	50816	\N
2711	3105	天然温泉さしきの猿人の湯	てんねんおんせんさしきのえんじんのゆ	沖縄県南城市佐敷字新里1688			南部	島尻	弱アルカリ性低張性泉	\N	\N	50897	\N
2712	3134	琉球温泉	りゅうきゅうおんせん	沖縄県豊見城市瀬長１７４番地５２			南部	糸満	ナトリウム塩化物泉	\N	\N	50924	\N
2713	3162	ジュラ紀温泉　美ら海の湯	じゅらきおんせん　ちゅらうみのゆ	沖縄県国頭郡本部町字備瀬小浜原136番地1			本部・名護・国頭	本部・伊江島・水納島	ナトリウム塩化物泉	\N	\N	50935	\N
2714	3187	ちゃたん恵み温泉　美浜の湯	ちゃたんめぐみおんせん　みはまのゆ	沖縄県中頭郡北谷町字美浜2番地			沖縄市（コザ）・北谷・宜野湾	北谷・嘉手納	ナトリウム塩化物泉	\N	\N	50948	\N
2715	3257	伊計島天然温泉 ～黒潮の湯～	いけいじまてんねんおんせん　くろしおのゆ	沖縄県うるま市与那城伊計１２８６ 			西海岸・東海岸	東海岸	ナトリウム塩化物泉	\N	\N	50979	\N
2716	3294	西表島温泉　カンパネルラの湯	いりおもてじまおんせん　かんぱねるらのゆ	沖縄県八重山郡竹富町字南風見508‐205			離島	西表島・小浜島・竹富島	炭酸水素塩泉	\N	\N	50759	\N
\.


--
-- Data for Name: onsen_inns_onseninn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.onsen_inns_onseninn (id, inn_id, inn_name, inn_photo, inn_min_price, review_room, review_bath, review_breakfast, review_dinner, review_service, review_cleaness, rooms_total, baths_total, conditioner, convenience_store, hand_towel, razor, bath_towel, shampoo, dental_amenities, bathrobe, pajamas, yukata, free_wifi, bar_soap, body_wash, duvet, hairdryer, shower_cap, cotton_swab, onsui_toilet, hair_brush, onsen_id, category, service_leisure, num_vote_down, num_vote_up, vote_score) FROM stdin;
3	304472	ホテルニュー幸林	images/inn_image_304472.jpg	5277	3.4	3.7	3.5	4.6	3.6	3.7	59	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	1	1	貸自転車,グランド（有料）,ゴルフ（有料）	0	0	0
5	336525	ホテルおかべ汐彩亭	images/inn_image_336525.jpg	5092	4.4	4.5	3.9	0.0	4.3	4.4	36	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	2	1	クリーニングサービス,マッサージ（有料）,囲碁	0	0	0
7	387192	稚内グランドホテル	images/inn_image_387192.jpg	5370	4.2	3.8	3.5	0.0	3.8	4.2	94	0	f	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	2	1	ルームサービス,クリーニングサービス,マッサージ（有料）	0	0	0
11	340866	稚内温泉ホテル喜登	images/inn_image_340866.jpg	3768	3.6	4.0	4.0	4.9	4.0	4.0	0	0	f	t	t	t	t	t	t	f	f	t	t	t	f	f	t	f	f	t	f	2	1	マッサージ（有料）	0	0	0
13	394942	天然温泉神威の湯ドーミーイン旭川	images/inn_image_394942.jpg	2865	4.1	4.3	4.5	0.0	4.3	4.2	174	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	3	1	マッサージ（有料）	0	0	0
14	301108	剣淵温泉レークサイド桜岡	images/inn_image_301108.jpg	4629	4.4	3.8	4.3	4.8	4.4	4.5	29	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	t	f	f	t	f	3	1	貸自転車,囲碁（有料）,マージャン（有料）	0	0	0
15	316513	星野リゾート界 津軽	images/inn_image_316513.jpg	8657	4.5	4.0	4.7	4.8	4.8	4.6	41	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	101	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
16	398604	座敷わらし伝説の宿緑風荘	images/inn_image_398604.jpg	10000	4.8	4.4	4.6	4.7	4.8	5.0	10	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	177	1	ルームサービス,マッサージ（有料）	0	0	0
17	328295	金田一温泉仙養舘	images/inn_image_328295.jpg	7598	4.6	4.0	4.6	4.6	4.7	4.3	12	0	f	f	t	f	t	f	t	f	f	t	f	f	f	t	f	f	f	f	f	177	5	マッサージ（有料）,将棋,囲碁,マージャン（有料）,デイユース（有料）	0	0	0
18	334145	岩手の名湯侍の湯おもてなしの宿おぼない	images/inn_image_334145.jpg	11111	3.9	4.3	4.3	4.6	4.7	4.3	13	0	t	f	t	f	t	t	t	f	f	t	t	t	t	f	f	f	t	f	f	177	1	デイユース（有料）	0	0	0
19	356664	きたぐに旅館	images/inn_image_356664.jpg	4150	2.8	3.3	0.0	0.0	3.2	2.8	12	0	f	f	t	t	t	t	t	f	f	t	t	f	t	f	f	f	t	f	t	177	1	マッサージ（有料）,マージャン（有料）	0	0	0
21	336916	塩の湯笑顔で若返る新安比温泉静流閣	images/inn_image_336916.jpg	5000	3.6	4.8	4.3	4.3	4.6	3.9	56	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	f	t	f	f	t	183	0	ルームサービス,将棋（有料）,囲碁（有料）,マージャン（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
22	321693	モルデンの湯ラビスタ安比高原	images/inn_image_321693.jpg	5370	3.8	4.5	4.1	4.2	4.1	4.1	28	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	f	183	3	体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
23	324250	安比ヒルズ白樺の森（旧安比グランドヴィラ）	images/inn_image_324250.jpg	4500	4.1	3.8	4.1	4.1	3.5	3.8	249	0	f	f	t	t	t	t	t	f	f	t	t	f	t	f	t	f	t	t	f	183	1	クリーニングサービス,マッサージ（有料）,貸しスキー（有料）,貸しボード（有料）,貸自転車,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）	0	0	0
24	326514	安比八幡平の食の宿四季館彩冬	images/inn_image_326514.jpg	6944	4.5	4.6	4.9	4.8	4.8	4.8	19	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	f	t	188	1	ルームサービス,マッサージ（有料）,デイユース（有料）	0	0	0
25	383251	八幡平ハイツ	images/inn_image_383251.jpg	6481	4.3	4.4	4.3	4.6	4.6	4.3	46	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	188	3	マッサージ（有料）,貸自転車,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,デイユース（有料）,ペットOK（有料）(ケージ有り)	0	0	0
26	378018	旬菜フレンチ＆貸切温泉の小さな宿Beaverビーバー	images/inn_image_378018.jpg	11500	4.5	4.9	5.0	5.0	5.0	4.8	4	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	f	188	3	テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,乗馬（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
27	322063	八幡平リゾート八幡平マウンテンホテル	images/inn_image_322063.jpg	4000	3.8	4.4	3.8	3.9	4.2	4.1	88	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	f	188	7	マッサージ（有料）,貸しスキー（有料）,貸しボード（有料）,将棋,囲碁,グランド（有料）,デイユース（有料）	0	0	0
29	344746	天然温泉の宿安暖庭(アンダンテ)	images/inn_image_344746.jpg	7870	4.3	4.3	4.6	5.0	5.0	4.6	5	0	f	f	t	f	t	f	t	f	f	t	t	f	f	t	t	f	f	f	f	188	5	体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,乗馬（有料）,そば打ち（有料）	0	0	0
30	359474	岩手山焼走り温泉いこいの村岩手	images/inn_image_359474.jpg	8518	3.7	4.0	4.7	0.0	4.0	4.0	29	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	188	7	マッサージ（有料）,貸自転車（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）	0	0	0
31	364426	八幡平南温泉旭日之湯	images/inn_image_364426.jpg	3657	3.6	4.1	4.0	4.2	4.3	3.7	6	0	f	f	t	f	t	t	t	f	f	t	t	t	t	t	f	f	f	f	f	188	3	マッサージ（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,乗馬（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
6	331800	ホテル奥田屋	images/inn_image_331800.jpg	4583	4.1	4.4	4.2	0.0	4.4	4.0	62	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	2	0	クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	1	1
12	359660	ホテル滝川	images/inn_image_359660.jpg	7000	3.5	3.8	3.7	3.3	3.7	3.5	56	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	2	1		0	1	1
9	301516	ホテル御園	images/inn_image_301516.jpg	6944	3.5	4.0	3.9	0.0	3.7	3.7	30	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	2	1	マッサージ（有料）	1	0	-1
10	399980	風の宿宗谷パレス	images/inn_image_399980.jpg	4814	3.7	3.9	4.0	4.4	3.9	3.7	19	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	f	f	f	t	f	2	1		0	1	1
8	328140	稚内温泉ホテル大将	images/inn_image_328140.jpg	6500	3.8	3.9	0.0	0.0	4.1	4.0	71	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	2	1	クリーニングサービス,マッサージ（有料）	0	2	2
32	362806	八幡平大沼茶屋湖	images/inn_image_362806.jpg	8000	0.0	0.0	0.0	0.0	0.0	0.0	6	0	t	f	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	f	f	188	9		0	0	0
33	367842	鳴子温泉湯元吉祥	images/inn_image_367842.jpg	8333	4.3	4.5	4.3	4.1	4.0	4.3	50	0	t	f	t	t	t	t	t	f	t	t	t	f	t	t	t	f	t	t	t	256	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
34	321778	大江戸温泉物語鳴子温泉ますや	images/inn_image_321778.jpg	6873	3.7	3.8	4.2	4.1	4.1	3.8	70	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	256	7	マッサージ（有料）,将棋,囲碁	0	0	0
35	373124	鳴子ホテル	images/inn_image_373124.jpg	8333	3.8	4.6	4.2	4.4	4.1	4.1	125	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	t	t	t	256	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
36	336972	伝統の宿旅館すがわら	images/inn_image_336972.jpg	5000	3.8	4.5	4.3	4.6	4.1	3.9	0	0	t	t	t	t	t	t	t	f	f	t	f	f	t	f	t	f	t	t	t	256	1	マッサージ（有料）,デイユース（有料）	0	0	0
37	368565	乳頭温泉郷妙乃湯	images/inn_image_368565.jpg	12100	4.0	4.8	4.7	4.8	4.7	4.6	17	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	296	7	マッサージ（有料）,将棋,囲碁,マージャン	0	0	0
38	330512	山の宿	images/inn_image_330512.jpg	15000	4.3	4.8	4.6	4.8	4.3	4.3	10	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	296	7	マッサージ（有料）,将棋,囲碁	0	0	0
39	399043	孫六温泉	images/inn_image_399043.jpg	11000	3.4	0.0	4.0	4.4	4.0	3.4	17	0	f	f	t	f	f	f	t	f	f	t	f	t	f	f	f	f	f	f	f	296	5		0	0	0
40	312043	大釜温泉	images/inn_image_312043.jpg	10000	3.1	4.2	2.7	2.7	2.9	3.2	0	0	t	f	t	f	t	t	t	f	f	t	f	t	f	f	f	f	f	f	f	296	1		0	0	0
41	347591	縄文のふる里大湯温泉ホテル鹿角	images/inn_image_347591.jpg	5800	4.1	4.2	4.1	4.4	4.3	4.2	92	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	299	1	マッサージ（有料）,マージャン（有料）	0	0	0
42	338650	５つの源泉掛け流し和風宿岡部荘	images/inn_image_338650.jpg	8200	4.1	4.3	4.2	4.2	3.6	3.8	19	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	f	t	t	f	f	299	7	将棋,囲碁,マージャン（有料）	0	0	0
43	301671	創業参百五十年五つ星の宿萬国屋	images/inn_image_301671.jpg	9000	4.3	4.5	4.2	4.3	4.2	4.1	127	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	395	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）,リフレクソロジー	0	0	0
44	310710	認定5つ星緑と人の優しさに包まれる癒しの湯宿たちばなや	images/inn_image_310710.jpg	8250	4.4	4.3	4.4	4.2	4.3	4.4	78	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	f	t	t	t	395	1	マッサージ（有料）,マージャン（有料）	0	0	0
45	391660	高見屋別邸 久遠 -KUON-	images/inn_image_391660.jpg	8300	4.1	4.2	3.8	3.7	3.9	4.3	57	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	395	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
46	397130	かしわや旅館	images/inn_image_397130.jpg	9000	4.3	4.3	4.2	4.5	4.6	4.5	7	0	f	f	t	f	f	f	t	f	f	t	t	f	f	t	f	f	f	t	f	395	5	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
47	313755	瀧の屋	images/inn_image_313755.jpg	7222	3.6	4.2	4.2	4.5	4.2	4.0	12	0	t	f	t	f	t	t	t	f	f	t	t	t	t	t	f	f	f	f	t	395	7	将棋,囲碁,マージャン（有料）,ペットOK(ケージ持込/部屋,ラウンジ持込OK)	0	0	0
48	379066	癒しの源泉かけ流しの宿温海荘	images/inn_image_379066.jpg	11000	3.6	4.4	3.8	4.2	4.2	3.8	8	0	f	f	t	t	t	t	t	f	f	t	f	t	t	f	f	f	f	f	f	395	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
49	311789	絶景の夕陽に心癒され庄内の美味を堪能游水亭いさごや	images/inn_image_311789.jpg	9000	4.3	4.3	4.3	4.6	4.4	4.5	48	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	399	0	エステ（有料）,マッサージ（有料）,囲碁（有料）,マージャン（有料）,釣り（有料）	0	0	0
50	392100	海辺のお宿一久	images/inn_image_392100.jpg	16805	4.6	4.6	4.9	4.9	4.9	4.8	19	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	399	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
52	320732	亀や	images/inn_image_320732.jpg	6500	4.3	4.3	4.1	4.0	4.4	4.1	0	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	t	f	f	t	f	399	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
53	339322	ホテル満光園	images/inn_image_339322.jpg	5000	3.7	4.1	4.2	4.3	4.1	3.6	34	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	399	0	マッサージ,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ,デイユース（有料）	0	0	0
55	370257	はまあかり潮音閣	images/inn_image_370257.jpg	8500	3.8	4.2	4.5	4.7	4.7	4.4	10	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	399	1	マッサージ（有料）,マージャン（有料）,ゴルフ（有料）,釣り	0	0	0
56	307848	龍の湯	images/inn_image_307848.jpg	7700	4.2	4.4	4.2	4.7	4.4	4.4	30	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	399	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,デイユース（有料）	0	0	0
57	320926	華夕美日本海	images/inn_image_320926.jpg	4953	3.7	3.4	3.7	3.7	3.8	3.2	42	0	f	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	399	0	ルームサービス,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
58	372090	海辺の宿福住	images/inn_image_372090.jpg	10000	3.8	3.7	4.1	4.5	3.9	3.7	20	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	t	t	t	399	1	ルームサービス,マッサージ（有料）,貸自転車,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）	0	0	0
59	393244	海辺の宿都屋	images/inn_image_393244.jpg	11000	4.2	3.7	3.8	4.4	3.8	3.5	30	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	f	f	t	t	t	399	0	将棋（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
60	365056	福宝館漁師の宿	images/inn_image_365056.jpg	8500	3.5	4.2	4.5	4.5	4.0	3.8	5	0	f	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	f	t	t	399	1	マッサージ（有料）,ゴルフ（有料）	0	0	0
62	312483	湯野浜温泉うしお荘	images/inn_image_312483.jpg	9048	0.0	0.0	0.0	0.0	0.0	0.0	21	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	399	9	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
63	317151	湯野浜温泉割烹旅館湯野浜ホテル	images/inn_image_317151.jpg	4490	3.4	3.2	0.0	0.0	3.5	3.0	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	f	t	399	1	マッサージ（有料）,マージャン（有料）	0	0	0
64	322576	温泉民宿しらはま屋	images/inn_image_322576.jpg	3935	3.4	3.4	3.6	4.0	3.8	3.0	0	0	t	f	t	f	t	t	t	f	f	t	f	f	t	f	t	f	f	t	f	399	1		0	0	0
65	352476	ホテルテトラリゾート鶴岡(旧海麓園）	images/inn_image_352476.jpg	4166	3.0	3.2	3.2	2.4	3.3	3.0	47	0	f	t	t	t	t	t	t	f	f	t	t	t	t	f	t	f	t	t	t	399	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
66	338460	源泉かけ流しと手づくり料理を楽しむ湯宿湯田川温泉九兵衛旅館	images/inn_image_338460.jpg	6000	4.3	4.7	4.8	4.8	4.7	4.6	13	0	t	f	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	t	t	403	7	ルームサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,そば打ち（有料）	0	0	0
67	351061	湯田川温泉つかさや旅館	images/inn_image_351061.jpg	6000	4.4	4.5	4.9	4.8	4.9	4.6	8	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	f	t	403	7	ルームサービス,マッサージ（有料）,貸自転車（有料）,将棋,囲碁,マージャン（有料）,そば打ち（有料）,デイユース（有料）,ペットOK（有料）	0	0	0
68	313076	貸切風呂と手づくり美食の宿湯田川温泉九兵衛別館珠玉や	images/inn_image_313076.jpg	6500	4.0	4.8	4.8	4.7	4.7	4.3	8	0	t	f	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	t	t	403	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,そば打ち（有料）	0	0	0
69	388744	隼人旅館	images/inn_image_388744.jpg	5000	4.1	4.0	4.2	4.5	4.3	3.9	10	0	f	f	t	t	t	t	t	f	f	t	f	t	t	f	f	f	t	f	f	403	1		0	0	0
70	378331	湯どの庵	images/inn_image_378331.jpg	10500	4.2	4.2	4.3	4.0	4.0	4.5	14	0	t	f	t	f	t	t	t	f	f	t	t	t	t	f	f	f	f	t	f	403	1		0	0	0
71	369100	安達屋旅館	images/inn_image_369100.jpg	11500	4.1	4.9	4.4	4.7	4.7	4.4	20	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	486	1	ルームサービス,マッサージ（有料）	0	0	0
72	332919	高湯温泉のんびり館	images/inn_image_332919.jpg	10000	4.1	4.8	4.5	4.5	4.4	4.1	9	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	486	7	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
73	329904	高湯温泉旅館玉子湯	images/inn_image_329904.jpg	10400	4.2	4.9	4.1	4.0	4.2	4.2	52	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	f	t	t	f	486	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）	0	0	0
74	396780	高湯温泉花月ハイランドホテル	images/inn_image_396780.jpg	5092	4.1	4.4	3.5	3.6	4.2	4.2	69	0	f	f	t	t	t	t	t	f	f	t	f	f	t	t	f	t	t	t	t	486	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ペットOK（有料）	0	0	0
75	337336	信夫温泉のんびり館	images/inn_image_337336.jpg	8277	4.0	4.4	4.4	4.7	4.5	3.9	13	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	t	t	t	486	1	マッサージ（有料）,マージャン（有料）,デイユース（有料）	0	0	0
76	323325	飯坂ホテル聚楽（じゅらく）	images/inn_image_323325.jpg	8796	4.0	4.5	4.5	4.5	4.2	3.9	98	0	f	t	t	f	t	t	t	f	f	t	f	f	t	t	t	f	f	t	t	489	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ペットOK(ケージ有り/ケージ持込)	0	0	0
77	302303	数寄屋造りの温泉宿青葉旅館	images/inn_image_302303.jpg	13000	4.5	4.9	4.9	4.7	4.6	4.6	10	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	489	0	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
78	352097	祭屋湯左衛門	images/inn_image_352097.jpg	6481	4.4	4.5	4.5	4.7	4.7	4.4	31	0	f	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	489	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,デイユース（有料）	0	0	0
79	304327	飯坂温泉 摺上亭 大鳥	images/inn_image_304327.jpg	7500	4.3	4.0	4.2	4.2	4.0	4.5	59	0	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	489	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
80	317881	伊勢屋	images/inn_image_317881.jpg	3009	3.9	4.4	0.0	0.0	4.2	3.9	30	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	f	t	t	t	t	489	1	マッサージ（有料）,貸自転車,デイユース（有料）	0	0	0
82	307542	橋本舘	images/inn_image_307542.jpg	5185	4.2	4.2	4.2	0.0	4.5	4.3	0	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	f	f	f	f	t	489	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,テニス	0	0	0
83	343028	くつろぎの宿 華滝	images/inn_image_343028.jpg	4166	3.8	4.1	4.0	4.3	4.2	3.5	29	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	489	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
84	330170	飯坂温泉旅館小松や	images/inn_image_330170.jpg	6500	4.0	3.3	4.3	4.6	4.7	3.9	18	0	f	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	f	f	489	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
85	329711	伊東園ホテル飯坂叶や	images/inn_image_329711.jpg	4800	3.6	3.8	3.6	3.5	3.5	3.5	75	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	f	t	t	489	7	マッサージ（有料）,将棋,囲碁,マージャン,デイユース（有料）	0	0	0
86	329242	松島屋旅舘	images/inn_image_329242.jpg	4500	3.9	4.3	4.3	4.2	4.2	3.5	18	0	t	t	t	f	t	t	t	f	f	t	t	f	t	f	f	f	f	t	f	489	0	マッサージ（有料）,マージャン（有料）,ゴルフ（有料）,デイユース（有料）,ペットOK	0	0	0
87	348124	喜久屋旅館	images/inn_image_348124.jpg	7000	3.3	3.8	4.0	4.4	4.2	3.3	0	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	f	489	7	将棋,囲碁,マージャン（有料）	0	0	0
88	322483	福住旅館	images/inn_image_322483.jpg	6018	3.9	3.9	4.0	4.7	4.1	3.7	0	0	t	t	t	f	t	t	t	f	f	t	f	t	t	t	f	t	f	t	t	489	7	ルームサービス,クリーニングサービス,マッサージ（有料）,貸しスキー（有料）,将棋,囲碁,マージャン,体育館（有料）,グランド（有料）,テニス（有料）	0	0	0
89	395144	飯坂温泉あづま荘	images/inn_image_395144.jpg	8009	0.0	0.0	0.0	0.0	0.0	0.0	30	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	f	f	t	t	f	489	9	マッサージ（有料）,将棋,囲碁,マージャン,カヌー（有料）	0	0	0
90	377850	旅館千歳	images/inn_image_377850.jpg	5638	0.0	0.0	0.0	0.0	0.0	0.0	10	0	f	t	t	f	t	t	t	f	f	t	f	t	t	f	f	f	f	f	f	489	9	マッサージ（有料）,貸自転車,将棋,囲碁,マージャン	0	0	0
91	355317	昭泉閣	images/inn_image_355317.jpg	6000	0.0	0.0	0.0	0.0	0.0	0.0	21	0	f	f	t	f	t	f	t	f	f	t	f	t	f	f	f	f	f	f	f	489	5	ゴルフ（有料）	0	0	0
92	329843	季粋の宿新松葉	images/inn_image_329843.jpg	4074	0.0	0.0	0.0	0.0	0.0	0.0	0	0	f	t	t	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	489	5	マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,陶芸（有料）,デイユース（有料）	0	0	0
93	318061	飯坂温泉源泉かけ流しの宿ホテル翠月	images/inn_image_318061.jpg	4000	0.0	0.0	0.0	0.0	0.0	0.0	0	0	t	t	t	f	t	t	t	f	f	t	f	t	f	f	f	f	f	f	t	489	9	ルームサービス,マッサージ（有料）,貸自転車,マージャン（有料）,デイユース（有料）	0	0	0
94	338671	つたや旅館	images/inn_image_338671.jpg	7000	0.0	0.0	0.0	0.0	0.0	0.0	17	0	t	t	t	t	t	t	t	f	f	t	f	t	t	f	t	t	f	f	t	489	9	ルームサービス,クリーニングサービス,マッサージ,将棋,囲碁,マージャン（有料）,体育館,グランド,テニス,ゴルフ,ペットOK	0	0	0
95	378078	飯坂温泉展望露天風呂の宿湯乃家	images/inn_image_378078.jpg	5500	4.1	4.1	3.6	3.4	3.3	3.7	24	0	f	t	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	489	3	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
96	315358	旅館なりた	images/inn_image_315358.jpg	4700	0.0	0.0	0.0	0.0	0.0	0.0	12	0	f	f	t	f	t	t	t	f	f	t	t	t	t	t	f	f	t	f	f	489	9	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
97	317824	お帰りなさいが似合う清流の宿飯坂温泉花乃湯	images/inn_image_317824.jpg	5370	3.4	3.2	0.0	4.4	3.8	3.4	17	0	f	t	f	t	t	t	t	f	f	t	f	t	t	t	f	t	t	f	f	489	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,デイユース（有料）,ペットOK（有料）	0	0	0
98	355524	湯葉と貸切の湯新亀	images/inn_image_355524.jpg	2777	2.5	3.5	2.7	2.6	2.6	2.5	0	0	t	t	t	f	t	t	t	f	f	t	t	t	f	t	f	t	f	f	f	489	1	マッサージ（有料）,マージャン（有料）	0	0	0
99	301033	匠のこころ吉川屋	images/inn_image_301033.jpg	9000	4.2	4.3	3.9	4.2	4.4	4.5	128	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	490	1	エステ（有料）,マッサージ（有料）,マージャン（有料）,デイユース（有料）	0	0	0
100	330858	渓苑花の瀬	images/inn_image_330858.jpg	10000	4.8	4.0	4.2	4.6	4.4	4.6	0	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	490	1	エステ（有料）,マッサージ（有料）,マージャン（有料）	0	0	0
101	322833	穴原温泉ペットと泊まれる宿おきな旅館	images/inn_image_322833.jpg	7000	3.3	3.8	3.9	4.0	3.6	3.3	0	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	t	f	f	t	f	490	1	マッサージ（有料）,ペットOK(ケージ持込/部屋,ラウンジ持込OK)	0	0	0
102	358805	旬樹庵湯めしいづみや	images/inn_image_358805.jpg	10000	3.6	3.6	3.8	3.5	3.3	3.3	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	f	f	f	t	490	3	マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,デイユース（有料）	0	0	0
103	320418	山房月之瀬	images/inn_image_320418.jpg	11000	4.0	3.7	3.6	3.5	3.8	3.9	0	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	490	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
104	317727	土湯温泉山水荘	images/inn_image_317727.jpg	7268	4.1	4.6	4.4	4.4	4.5	4.1	71	0	f	f	t	f	t	t	t	f	f	t	t	f	t	f	f	f	f	t	f	494	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
105	316381	渓流展望貸切露天の宿 奥土湯温泉峡 小滝温泉	images/inn_image_316381.jpg	16000	4.5	4.4	4.4	4.6	4.8	4.4	13	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	494	7	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,テニス（有料）,ゴルフ（有料）,釣り,デイユース（有料）	0	0	0
106	322456	はるみや旅館	images/inn_image_322456.jpg	11550	4.4	4.4	4.4	4.5	4.5	4.3	10	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	494	1		0	0	0
130	336960	ホテル奥久慈館【伊東園ホテルズ】	images/inn_image_336960.jpg	4300	3.1	3.7	3.6	3.6	3.4	3.1	91	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	f	f	t	t	t	786	7	マッサージ（有料）,将棋,囲碁,マージャン	0	0	0
108	302826	福うさぎ	images/inn_image_302826.jpg	2500	4.4	4.4	3.9	0.0	4.5	4.3	29	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	494	3	エステ（有料）,マッサージ（有料）,将棋,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
109	335125	土湯温泉ニュー扇屋源泉湯庵（8つの湯巡りと郷土料理の宿）	images/inn_image_335125.jpg	7870	4.1	4.5	4.3	4.4	4.6	4.2	15	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	f	494	1	マッサージ（有料）,デイユース（有料）,ペットOK(ケージ持込)	0	0	0
110	350088	土湯温泉山根屋旅館	images/inn_image_350088.jpg	4351	4.1	4.2	4.3	4.4	4.6	4.2	30	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	f	t	494	1	マッサージ（有料）	0	0	0
111	332722	辰巳屋山荘 里の湯	images/inn_image_332722.jpg	26018	0.0	0.0	0.0	0.0	0.0	0.0	10	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	494	9	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
112	303226	御とめ湯り	images/inn_image_303226.jpg	3500	3.8	4.4	0.0	0.0	4.2	3.9	10	0	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	494	2	マッサージ（有料）	0	0	0
114	320920	恋する二人の露天風呂付お部屋でフルコースの宿アクアスイート	images/inn_image_320920.jpg	5555	4.5	4.4	4.6	4.6	4.6	4.5	12	0	t	f	t	t	t	t	t	t	f	t	t	t	t	t	t	f	t	t	t	588	1	エステ（有料）,ゴルフ（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
115	340492	那須いちやホテル	images/inn_image_340492.jpg	8500	4.1	4.3	4.8	4.8	4.8	4.5	28	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	588	1		0	0	0
116	386820	那須の温泉隠れ宿昔日オールドデイズ	images/inn_image_386820.jpg	16648	4.7	4.5	4.8	4.7	4.6	4.8	8	0	t	f	t	t	t	t	t	t	f	t	t	t	t	t	t	f	t	t	t	588	1	エステ（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
117	331120	ホテルサンバレー那須	images/inn_image_331120.jpg	9500	3.8	4.5	4.1	4.2	4.2	3.9	298	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	588	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,デイユース（有料）,ペットOK（有料）(ケージ有り)	0	0	0
118	303456	ホテル森の風那須(2018年10月11日グランドオープン)	images/inn_image_303456.jpg	18000	4.6	4.6	4.2	4.2	4.2	4.8	90	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	588	7	エステ（有料）,貸自転車,将棋,囲碁,ゴルフ,パターゴルフ,釣り,パラグライダー,乗馬,ダイビング,ペットOK（有料）(ケージ有り/ケージ持込)	0	0	0
119	325658	ウェルネスの森那須	images/inn_image_325658.jpg	6944	4.2	4.2	4.3	4.3	4.3	4.1	47	0	t	f	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	588	7	エステ（有料）,マッサージ（有料）,貸自転車,将棋,囲碁,ゴルフ（有料）,デイユース（有料）,ペットOK(ケージ有り/ケージ持込/部屋,ラウンジ持込OK)	0	0	0
120	367278	那須ノ宿縁〈ENISHI〉	images/inn_image_367278.jpg	6018	4.6	4.6	4.8	4.8	4.9	4.6	9	0	t	f	t	f	t	t	t	f	f	t	f	f	t	f	t	f	t	t	f	588	1	マッサージ（有料）	0	0	0
121	313690	尾瀬かまた宿温泉水芭蕉乃湯梅田屋旅館	images/inn_image_313690.jpg	9000	3.9	4.7	4.5	4.6	4.6	4.2	12	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	f	t	686	0	将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ,釣り	0	0	0
122	310316	旅舘うめや	images/inn_image_310316.jpg	10000	3.8	4.7	4.7	4.6	4.4	3.9	20	0	t	f	t	f	t	t	t	f	f	t	f	f	t	t	f	f	f	t	f	686	1	貸しスキー（有料）,貸しボード（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
123	357356	尾瀬戸倉温泉湯元ホテル玉城屋	images/inn_image_357356.jpg	7407	4.2	4.4	4.5	5.0	4.5	4.4	26	0	t	f	t	f	t	t	t	f	f	t	f	f	t	t	f	f	f	f	f	686	7	将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
124	388288	丸沼温泉環湖荘	images/inn_image_388288.jpg	11000	4.1	4.2	3.9	4.3	3.8	4.3	42	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	f	t	t	f	t	686	7	ルームサービス,貸しボード（有料）,将棋,囲碁,マージャン（有料）,ゴルフ,釣り（有料）,デイユース（有料）	0	0	0
125	317232	尾瀬戸倉温泉展望の湯ふきあげ	images/inn_image_317232.jpg	8000	4.1	4.0	4.6	4.7	4.3	4.4	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	f	f	t	f	686	7	貸しスキー（有料）,貸しボード（有料）,マージャン,体育館,グランド,テニス,ゴルフ（有料）,釣り,そば打ち（有料）	0	0	0
126	313338	土出温泉尾瀬岩鞍リゾートホテル	images/inn_image_313338.jpg	7500	4.2	3.5	3.9	4.4	4.0	3.8	36	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	f	f	f	t	f	686	3	マッサージ（有料）,貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）	0	0	0
127	313487	袋田温泉思い出浪漫館〜自然に囲まれた美人の湯〜	images/inn_image_313487.jpg	9000	4.2	4.4	4.4	4.4	4.4	4.3	85	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	786	3	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,カヌー（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
128	375514	大子温泉やみぞ	images/inn_image_375514.jpg	6018	4.3	3.8	3.8	4.7	4.4	4.3	22	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	786	7	将棋,囲碁,体育館（有料）,グランド（有料）,テニス（有料）	0	0	0
129	375696	滝味の宿豊年万作	images/inn_image_375696.jpg	12000	4.0	4.1	4.4	4.4	4.1	4.2	15	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	786	1	ルームサービス,マッサージ（有料）,マージャン（有料）,ゴルフ（有料）,そば打ち（有料）	0	0	0
132	314302	やすらぎの数奇屋民宿やまに郷作	images/inn_image_314302.jpg	9000	4.2	4.6	4.6	5.0	4.0	4.2	0	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	t	f	f	t	f	792	7	マッサージ（有料）,将棋,囲碁,ゴルフ（有料）,釣り（有料）	0	0	0
134	329155	鹿の湯松屋	images/inn_image_329155.jpg	5084	0.0	0.0	0.0	0.0	0.0	0.0	10	0	f	f	t	f	f	t	t	f	f	t	t	f	t	t	f	f	f	f	f	795	9	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
135	313176	うぐいす谷温泉絶品あんこう鍋とキンキ煮付の宿竹の葉	images/inn_image_313176.jpg	15000	4.1	4.1	4.3	4.7	4.1	3.9	11	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	796	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
136	344910	潮騒が運ぶ旬魚の宿二ツ島観光ホテル	images/inn_image_344910.jpg	7000	4.5	4.4	4.6	4.8	4.8	4.6	12	0	t	t	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	t	t	797	3	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,グランド（有料）,テニス（有料）,ゴルフ,釣り（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
137	302051	北茨城ロハス磯原シーサイドホテル	images/inn_image_302051.jpg	6296	4.1	4.3	4.1	4.3	4.1	4.0	30	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	797	3	クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
138	308218	としまや月浜の湯	images/inn_image_308218.jpg	12500	4.1	3.9	4.9	4.9	4.7	4.3	19	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	797	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
139	393054	元湯 山田屋旅館	images/inn_image_393054.jpg	7407	4.6	4.0	4.3	4.2	4.2	4.8	6	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	f	799	0	ルームサービス,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
140	383638	ホテルレイクサイドつくば	images/inn_image_383638.jpg	3168	3.9	4.3	4.3	4.2	4.5	4.2	25	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	f	t	t	t	813	0	クリーニングサービス,将棋（有料）,囲碁（有料）,マージャン（有料）,テニス（有料）,デイユース（有料）	0	0	0
141	374355	筑波山江戸屋	images/inn_image_374355.jpg	8000	3.9	4.0	4.0	4.5	4.3	4.0	40	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	t	t	t	t	813	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,パラグライダー（有料）,乗馬（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
142	388119	筑波山京成ホテル	images/inn_image_388119.jpg	6500	3.9	4.3	3.9	3.9	3.7	3.7	19	0	t	f	t	f	t	t	t	f	f	t	t	f	t	t	f	f	t	t	f	813	1		0	0	0
143	319634	筑波山温泉つくばグランドホテル	images/inn_image_319634.jpg	11000	4.5	4.1	4.1	4.2	4.1	3.8	0	0	f	f	t	t	t	t	t	f	f	t	f	f	t	t	t	f	t	t	t	813	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
144	332930	筑波山ホテル青木屋	images/inn_image_332930.jpg	12000	3.5	4.3	3.6	4.0	3.9	3.9	40	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	t	f	t	813	3	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
145	344738	筑波温泉ホテル	images/inn_image_344738.jpg	4907	3.8	4.0	3.8	3.8	3.6	3.5	41	0	f	f	t	f	t	t	t	f	f	t	t	f	t	f	f	f	f	t	f	813	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,デイユース（有料）	0	0	0
146	333348	筑波山温泉彩香の宿一望	images/inn_image_333348.jpg	7000	3.3	3.8	3.6	4.0	4.2	3.5	21	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	f	f	t	t	f	813	3	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パラグライダー（有料）,乗馬（有料）,陶芸（有料）	0	0	0
147	338393	大洗パークホテル	images/inn_image_338393.jpg	5601	4.0	3.8	3.6	3.6	3.9	3.8	50	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	t	t	816	7	クリーニングサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,ゴルフ,デイユース（有料）	0	0	0
148	316205	かんぽの宿 大洗	images/inn_image_316205.jpg	10231	4.0	3.8	3.7	4.2	4.1	4.1	52	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	816	7	マッサージ（有料）,将棋,囲碁	0	0	0
149	395702	オーシャンビュー大洗	images/inn_image_395702.jpg	9120	3.8	4.2	4.1	4.2	4.1	4.0	28	0	t	t	t	f	t	t	t	f	f	t	f	t	t	t	t	f	t	t	f	816	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
150	382996	リゾート大洗まつもと	images/inn_image_382996.jpg	7000	3.7	3.6	3.6	4.2	3.7	4.0	12	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	f	t	t	t	t	816	7	将棋,囲碁,マージャン（有料）,釣り	0	0	0
151	385716	旅館小林楼	images/inn_image_385716.jpg	8000	0.0	0.0	0.0	0.0	0.0	0.0	11	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	f	t	f	f	816	9	将棋,囲碁,マージャン（有料）,ペットOK(ケージ有り/ケージ持込)	0	0	0
152	304944	北浦宝来温泉つるるんの湯宿北浦湖畔荘	images/inn_image_304944.jpg	6481	4.2	4.4	4.6	4.8	4.7	4.7	14	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	f	f	t	t	f	822	3	ルームサービス,クリーニングサービス,マッサージ（有料）,体育館（有料）,グランド（有料）,テニス（有料）,デイユース（有料）	0	0	0
153	320359	いそざき温泉ホテルニュー白亜紀	images/inn_image_320359.jpg	4870	4.2	4.0	4.2	4.8	4.6	4.2	15	0	f	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	827	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
155	350495	別邸翠風荘慶山	images/inn_image_350495.jpg	18796	4.5	4.2	4.4	4.4	4.4	4.5	6	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	831	1		0	0	0
156	316095	御老公の湯境店	images/inn_image_316095.jpg	11111	0.0	0.0	0.0	0.0	0.0	0.0	22	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	f	f	t	f	t	832	9	エステ（有料）,マッサージ（有料）	0	0	0
157	311952	いこいの村涸沼	images/inn_image_311952.jpg	8564	4.3	4.2	4.2	4.4	4.4	4.1	38	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	f	f	t	t	833	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,釣り（有料）	0	0	0
158	319829	本物の温泉と露天風呂付き客室のある宿和どう	images/inn_image_319829.jpg	9000	4.0	4.3	4.2	4.3	4.2	4.1	38	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	838	0	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
159	372117	秩父七湯「御代の湯」 新木鉱泉旅館 露天風呂付き客室も温泉の宿	images/inn_image_372117.jpg	10222	4.3	4.4	4.5	4.7	4.3	4.3	13	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	838	7	マッサージ（有料）,将棋,囲碁	0	0	0
160	331731	ホテル美やま渓流の流れを感じる自然の中の温泉宿	images/inn_image_331731.jpg	7453	4.0	3.7	4.0	3.9	4.1	3.7	38	0	t	t	t	t	t	t	t	f	f	t	t	t	t	f	f	t	t	f	t	838	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
161	301972	柴原温泉 手打ちそばの宿柳屋	images/inn_image_301972.jpg	6481	4.3	3.9	4.5	4.9	4.3	4.0	10	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	f	t	f	847	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
162	377368	本物の大自然に囲まれた露天風呂のある宿谷津川館	images/inn_image_377368.jpg	13888	4.5	4.6	4.8	4.9	4.9	4.7	13	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	f	849	1	マッサージ（有料）,将棋,そば打ち（有料）	0	0	0
164	317896	赤谷温泉小鹿荘	images/inn_image_317896.jpg	11000	4.1	3.8	4.5	4.8	4.8	4.5	18	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	849	3	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,ラフティング（有料）,カヌー（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
165	337864	主のこだわり料理の宿御宿 竹取物語	images/inn_image_337864.jpg	8425	4.9	4.9	4.9	4.9	5.0	5.0	7	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	849	1	マッサージ（有料）,ラフティング（有料）	0	0	0
166	333522	香り豊かな花のおもてなし須崎旅館	images/inn_image_333522.jpg	5870	4.1	4.1	4.5	4.7	4.8	4.5	10	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	f	849	3	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,貸自転車,将棋,囲碁,マージャン,体育館,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,パラグライダー（有料）,乗馬（有料）,ラフティング（有料）,カヌー（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
167	363845	川の瀬に和む料理自慢の温泉宿せせらぎ荘	images/inn_image_363845.jpg	7610	3.7	3.8	4.6	5.0	4.2	3.8	10	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	t	f	f	849	3	マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,乗馬（有料）,ラフティング（有料）,カヌー（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
168	337933	古民家と料理を楽しむ宿旅籠一番	images/inn_image_337933.jpg	7612	3.2	3.1	3.6	3.5	3.6	3.0	9	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	t	f	849	1	エステ（有料）,マッサージ（有料）,そば打ち（有料）	0	0	0
169	349920	ちちぶ温泉はなのや	images/inn_image_349920.jpg	9000	4.6	4.6	4.2	4.4	4.7	4.5	12	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	855	3	ルームサービス,マッサージ（有料）,将棋,囲碁,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,乗馬（有料）,ラフティング（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
194	306894	かぢや旅館	images/inn_image_306894.jpg	4500	3.2	3.3	3.3	3.6	4.3	3.0	20	0	f	f	t	t	t	t	t	f	f	t	f	f	t	f	f	f	t	f	t	874	7	将棋,囲碁,マージャン（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
195	316526	美味しい温泉夢みさき＆別邸夢咲	images/inn_image_316526.jpg	9800	4.4	4.3	4.5	4.7	4.7	4.5	35	0	t	f	t	t	t	t	t	t	t	f	t	t	t	f	t	t	t	t	t	877	1	エステ（有料）	0	0	0
170	340259	バイキングが人気☆ナチュラルファームシティ農園ホテル	images/inn_image_340259.jpg	6111	3.3	3.5	4.0	3.9	3.8	3.4	72	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	857	3	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,ラフティング（有料）,カヌー（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
171	335162	秩父・小鹿野温泉高根の湯越後屋旅館	images/inn_image_335162.jpg	6203	0.0	0.0	0.0	0.0	0.0	0.0	9	0	f	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f	t	858	9	将棋,囲碁,マージャン,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,乗馬（有料）,ラフティング（有料）,カヌー（有料）,そば打ち（有料）	0	0	0
172	310355	四季の湯温泉ヘリテイジリゾート 首都圏最大級の混浴露天温泉	images/inn_image_310355.jpg	8000	3.4	4.0	3.7	3.2	3.2	3.5	250	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	t	t	t	859	3	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,乗馬（有料）,デイユース（有料）	0	0	0
173	394130	和海の宿ささ游	images/inn_image_394130.jpg	8000	4.5	4.4	4.6	4.7	4.4	4.6	12	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	862	7	マッサージ（有料）,将棋,囲碁,テニス（有料）	0	0	0
175	385827	潮の香の湯宿浜紫	images/inn_image_385827.jpg	5000	4.0	4.2	4.1	4.5	4.1	4.0	28	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	862	0	マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,テニス（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
176	316681	ホテルニューカネイ	images/inn_image_316681.jpg	5000	3.6	3.8	4.1	4.7	4.1	3.5	47	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	862	7	マッサージ（有料）,貸自転車（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,デイユース（有料）	0	0	0
178	379404	九十九里浜白子温泉青松庭白砂	images/inn_image_379404.jpg	5000	3.8	4.2	3.7	4.0	3.6	4.0	33	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	862	3	エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）	0	0	0
179	312799	ホテルカアナパリ	images/inn_image_312799.jpg	5200	2.8	4.3	3.8	4.5	4.3	3.0	50	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	f	f	t	f	f	862	3	ルームサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,乗馬（有料）,デイユース（有料）	0	0	0
180	327057	白子温泉東海荘	images/inn_image_327057.jpg	5555	3.4	3.6	3.8	4.4	4.0	3.4	0	0	t	t	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	f	862	3	マッサージ（有料）,貸自転車,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,パターゴルフ（有料）	0	0	0
181	344192	龍宮城スパ・ホテル三日月	images/inn_image_344192.jpg	9000	4.0	4.1	4.0	4.1	3.7	3.5	260	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	863	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ペットOK（有料）(ケージ有り)	0	0	0
182	307701	龍宮城スパ・ホテル三日月富士見亭	images/inn_image_307701.jpg	23000	4.2	4.0	3.8	3.9	3.3	3.9	219	0	t	f	t	t	t	t	t	f	f	f	t	t	t	f	t	t	f	t	t	863	1	エステ（有料）,マッサージ（有料）,ペットOK（有料）	0	0	0
183	326505	養老温泉秘湯の宿滝見苑	images/inn_image_326505.jpg	6944	4.1	4.5	4.5	4.6	4.5	4.3	33	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	867	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ,デイユース（有料）	0	0	0
184	332540	渓谷別庭もちの木	images/inn_image_332540.jpg	16500	4.3	4.2	4.5	4.6	4.5	4.7	17	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	867	7	ルームサービス,マッサージ（有料）,将棋,囲碁,ゴルフ（有料）,釣り（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
185	387180	渓流の宿福水	images/inn_image_387180.jpg	9000	4.7	4.6	4.0	4.5	4.4	4.4	0	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	f	t	t	t	867	1	ルームサービス,マッサージ（有料）,マージャン（有料）,釣り（有料）,そば打ち（有料）	0	0	0
186	349168	養老温泉黒湯の宿嵯峨和	images/inn_image_349168.jpg	6000	4.1	4.4	4.5	4.6	4.3	3.8	13	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	f	f	f	t	867	1	ゴルフ,釣り	0	0	0
187	378792	養老渓谷温泉郷 小さな旅の宿 天龍荘	images/inn_image_378792.jpg	5000	3.8	4.2	4.5	4.5	4.0	4.3	7	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	f	t	t	t	867	3	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
188	320702	養老渓谷温泉郷旅館喜代元	images/inn_image_320702.jpg	6481	3.0	3.7	3.8	4.0	3.4	3.4	9	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	f	f	f	t	t	867	1	ゴルフ,パターゴルフ	0	0	0
189	357160	養老渓谷『食べる温泉宿』鶴乃家	images/inn_image_357160.jpg	1833	3.2	2.8	3.9	0.0	3.6	3.0	6	0	t	f	t	f	t	t	t	f	f	f	t	f	t	f	f	f	f	f	f	867	0	将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
190	311991	養老温泉温泉旅館川の家	images/inn_image_311991.jpg	11000	3.4	3.0	3.7	4.0	3.7	2.9	7	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	f	f	t	f	867	1	マッサージ（有料）	0	0	0
191	320242	勝浦ホテル三日月	images/inn_image_320242.jpg	9000	4.1	3.6	3.8	3.8	3.5	3.6	177	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	868	3	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,ダイビング（有料）,ペットOK（有料）	0	0	0
192	326499	勝浦ヒルトップホテル＆レジデンス	images/inn_image_326499.jpg	6650	4.2	3.7	4.0	3.8	3.7	3.7	36	0	f	f	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	868	0	貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
193	382942	天然温泉海辺の湯	images/inn_image_382942.jpg	8000	4.0	4.3	3.6	4.4	3.9	4.0	5	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	874	1		0	0	0
196	323242	南房総千倉温泉千倉館	images/inn_image_323242.jpg	6400	4.2	4.3	4.3	4.5	4.3	4.4	16	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	877	1	エステ（有料）,マッサージ（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
197	390180	海辺の温泉料理宿ホテル千倉	images/inn_image_390180.jpg	6481	3.7	3.5	4.3	4.2	4.0	3.5	0	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	877	1	マッサージ（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,ダイビング（有料）	0	0	0
199	322529	磯香るやすらぎの宿青倉亭	images/inn_image_322529.jpg	7000	3.6	2.8	3.2	3.3	3.5	3.2	7	0	t	f	t	f	t	t	t	f	f	t	f	f	t	t	t	f	f	f	f	877	1	マージャン（有料）	0	0	0
200	303030	温泉民宿しあわせ荘	images/inn_image_303030.jpg	4500	0.0	0.0	0.0	0.0	0.0	0.0	8	0	f	f	t	f	f	t	t	f	f	t	f	f	t	t	f	f	f	t	f	877	9		0	0	0
202	326321	グランドホテル太陽	images/inn_image_326321.jpg	3240	3.6	3.5	4.1	4.5	3.9	3.3	86	0	t	f	t	f	t	t	t	f	f	t	f	f	t	t	t	f	f	f	t	878	1	マッサージ（有料）,ゴルフ（有料）	0	0	0
203	360480	赤ちゃんにも妊婦さんにも優しいおもてなしの宿季粋の宿紋屋	images/inn_image_360480.jpg	7407	4.3	3.8	4.1	4.1	4.6	4.1	25	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	878	7	ルームサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,陶芸（有料）	0	0	0
204	328257	南房総白浜温泉白浜オーシャンリゾート（旧リゾートイン白浜）	images/inn_image_328257.jpg	3500	3.8	3.1	3.8	3.8	3.9	3.6	49	0	t	f	t	t	t	t	t	f	f	t	f	t	f	t	t	t	t	t	t	878	0	エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ペットOK（有料）(ケージ有り)	0	0	0
205	314616	南国ホテル【伊東園ホテルズ】	images/inn_image_314616.jpg	4800	3.2	3.6	3.6	3.6	3.5	2.9	103	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	f	f	f	f	t	878	7	マッサージ（有料）,貸自転車,将棋,囲碁,マージャン	0	0	0
206	323999	自然に囲まれた絶景露天の宿ジャングルパレス	images/inn_image_323999.jpg	5000	2.5	3.3	3.0	3.0	3.0	2.4	15	0	t	f	t	f	t	t	t	f	f	t	t	t	t	f	t	f	f	f	f	878	1	マッサージ（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,乗馬（有料）,ダイビング（有料）,デイユース（有料）	0	0	0
207	394956	たてやま温泉千里の風	images/inn_image_394956.jpg	8500	4.0	4.2	4.4	4.8	4.7	4.5	40	0	t	f	t	t	t	t	t	f	t	t	t	f	t	t	t	t	t	t	t	880	1	マッサージ（有料）,囲碁,テニス,乗馬（有料）	0	0	0
208	310541	南房総館山平砂浦ビーチホテル	images/inn_image_310541.jpg	9000	4.2	4.4	4.3	4.4	4.3	4.0	40	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	f	f	t	t	880	1	マッサージ（有料）	0	0	0
209	303187	身体にやさしい宿サンゴの湯やどかり	images/inn_image_303187.jpg	4259	4.5	4.4	4.7	4.9	4.9	4.6	10	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	f	f	f	f	f	880	1	エステ（有料）	0	0	0
210	312821	海の湯宿花しぶき	images/inn_image_312821.jpg	10648	3.7	3.5	4.5	4.5	4.3	4.2	17	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	880	7	エステ（有料）,マッサージ（有料）,体育館,グランド,テニス	0	0	0
211	323528	元湯天然温泉吉祥	images/inn_image_323528.jpg	4979	4.6	4.6	0.0	0.0	4.6	5.0	11	0	t	f	f	t	f	t	f	f	f	f	t	f	t	f	f	f	t	t	t	880	2	カヌー（有料）	0	0	0
212	328464	休暇村館山	images/inn_image_328464.jpg	9722	4.1	3.9	3.9	3.7	4.0	4.0	77	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	880	7	マッサージ（有料）,将棋,囲碁,釣り（有料）	0	0	0
213	303521	館山シーサイドホテル	images/inn_image_303521.jpg	6000	3.5	3.5	3.5	3.8	3.7	3.3	42	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	f	f	f	t	t	880	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
214	325876	館山温泉元首相別邸跡鳩山荘松庵	images/inn_image_325876.jpg	9000	3.9	3.5	4.0	4.4	4.0	3.9	30	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	f	f	f	t	f	880	1	マッサージ（有料）	0	0	0
215	314135	夕日海岸 昇鶴（旧たてやま夕日海岸ホテル）	images/inn_image_314135.jpg	6000	4.1	3.3	3.9	4.0	3.4	3.6	30	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	t	f	f	t	f	880	3	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,乗馬（有料）,ダイビング（有料）	0	0	0
216	369363	館山リゾートホテル	images/inn_image_369363.jpg	3500	3.6	3.5	3.7	3.9	3.7	3.2	144	0	t	f	t	t	t	t	t	f	t	f	t	f	t	t	t	f	t	t	t	880	0	マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）,乗馬（有料）,ダイビング（有料）,デイユース（有料）,ペットOK（有料）(ケージ有り/ケージ持込)	0	0	0
217	311375	南房総館山温泉お宿やまもと	images/inn_image_311375.jpg	5500	3.4	3.7	4.0	4.8	4.5	4.3	11	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	880	1	マッサージ（有料）	0	0	0
218	328548	天然温泉の宿ホテル白岩	images/inn_image_328548.jpg	6500	3.8	4.4	3.6	4.4	4.3	3.7	33	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	f	t	945	3	ルームサービス,クリーニングサービス,マッサージ（有料）,貸自転車（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,陶芸（有料）	0	0	0
219	324876	ＳＰＡ＆ＨＯＴＥＬ和	images/inn_image_324876.jpg	5305	4.1	4.6	3.0	0.0	4.3	4.3	0	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	949	1	ルームサービス,マッサージ（有料）,デイユース（有料）	0	0	0
220	385557	厚木飯山温泉元湯旅館	images/inn_image_385557.jpg	15574	4.7	4.9	4.4	4.8	4.9	4.6	26	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	953	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
221	369670	地の食材と四季の味七沢温泉盛楽苑	images/inn_image_369670.jpg	12870	3.9	4.0	4.3	4.6	4.1	3.9	10	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	956	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
222	302111	元湯玉川館	images/inn_image_302111.jpg	12300	0.0	0.0	0.0	0.0	0.0	0.0	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	f	t	956	9	マッサージ（有料）	0	0	0
223	391195	七沢温泉 中屋旅館	images/inn_image_391195.jpg	8000	0.0	0.0	0.0	0.0	0.0	0.0	13	0	f	f	t	f	t	f	t	f	f	t	f	t	f	f	f	f	f	f	f	956	5	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
225	306043	七沢温泉福元館	images/inn_image_306043.jpg	5500	3.2	3.5	3.4	3.4	3.3	2.8	18	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	f	t	t	f	f	956	1	マッサージ（有料）,マージャン（有料）,デイユース（有料）	0	0	0
226	319267	中川温泉かくれ湯の里信玄館	images/inn_image_319267.jpg	6500	4.2	4.8	4.2	4.3	4.5	4.1	22	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	f	962	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,テニス（有料）,釣り（有料）,デイユース（有料）	0	0	0
227	329251	全室露天風呂付き客室の宿真木温泉	images/inn_image_329251.jpg	20370	4.4	4.6	4.4	4.5	4.7	4.5	16	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	998	0	将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
228	307763	庭園と感動の宿富士山温泉ホテル鐘山苑	images/inn_image_307763.jpg	15400	4.4	4.4	4.4	4.6	4.4	4.6	126	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1004	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,陶芸（有料）,そば打ち（有料）,チャペル	0	0	0
230	317567	ホテルふじ竜ヶ丘（たつがおか）	images/inn_image_317567.jpg	4962	4.0	4.3	4.1	3.8	4.0	4.2	26	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1004	1	マッサージ（有料）	0	0	0
231	360072	華やぎの章慶山	images/inn_image_360072.jpg	10000	4.5	4.5	4.6	4.8	4.8	4.5	118	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	f	f	f	t	t	1012	0	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
232	304635	くつろぎの邸くにたち	images/inn_image_304635.jpg	16296	4.1	4.7	4.5	4.5	4.4	4.3	19	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1012	1	エステ（有料）,マッサージ（有料）,ゴルフ（有料）	0	0	0
233	318861	ホテル春日居	images/inn_image_318861.jpg	9500	4.5	4.4	4.2	4.4	4.8	4.6	88	0	t	t	t	t	t	t	t	f	f	t	t	t	f	t	t	t	t	t	t	1012	3	ルームサービス,エステ（有料）,マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,デイユース（有料）,リフレクソロジー	0	0	0
234	314553	石和名湯館糸柳	images/inn_image_314553.jpg	7000	4.2	4.3	4.8	4.4	4.5	4.1	44	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1012	0	マッサージ（有料）,囲碁（有料）,マージャン（有料）	0	0	0
235	319989	石和温泉蒼き木々に風渉り水澄む銘庭の宿ホテル甲子園	images/inn_image_319989.jpg	9074	4.0	4.3	4.3	4.6	4.4	3.9	18	0	t	t	t	f	t	t	t	f	f	t	f	t	t	t	t	f	f	t	t	1012	1	エステ（有料）,マッサージ（有料）,デイユース（有料）	0	0	0
236	377409	ホテルふじ	images/inn_image_377409.jpg	8000	3.8	4.2	4.4	4.5	4.1	4.0	115	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	f	t	t	t	1012	0	エステ（有料）,マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
237	308832	旅館笛吹川	images/inn_image_308832.jpg	14000	4.3	4.9	4.4	4.4	4.6	4.6	11	0	t	t	t	t	t	t	t	f	f	t	f	t	t	f	t	t	t	t	t	1012	1	マッサージ（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
238	397518	糸柳別館離れの邸和穣苑	images/inn_image_397518.jpg	21500	4.4	4.3	4.3	4.5	4.6	4.3	12	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1012	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
239	327951	銘石の宿かげつ	images/inn_image_327951.jpg	14000	4.6	4.7	3.9	4.4	4.0	4.4	36	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	t	t	t	1012	3	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）,リフレクソロジー	0	0	0
240	346445	旅館深雪温泉	images/inn_image_346445.jpg	7407	3.8	4.9	4.3	4.5	4.2	4.2	15	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1012	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ,釣り（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
241	354664	ホテルやまなみ	images/inn_image_354664.jpg	10925	4.6	4.6	3.9	4.3	4.4	4.7	26	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1012	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
242	370872	大江戸温泉物語石和温泉ホテル新光	images/inn_image_370872.jpg	6851	3.7	4.0	4.1	4.2	3.9	3.9	107	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	f	t	t	t	t	1012	1	マッサージ（有料）,マージャン	0	0	0
243	312449	石和温泉ホテル石庭	images/inn_image_312449.jpg	5092	3.9	4.1	3.8	4.1	4.0	3.7	70	0	f	t	t	t	t	t	t	f	f	t	f	t	t	f	f	t	t	t	t	1012	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
244	384644	石和常磐ホテル	images/inn_image_384644.jpg	7000	4.1	3.8	4.1	4.0	4.4	4.0	58	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1012	3	マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
245	343449	富士野屋夕亭	images/inn_image_343449.jpg	4629	3.8	4.1	4.1	3.9	3.7	3.6	28	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1012	7	ルームサービス,エステ（有料）,マッサージ（有料）,貸自転車,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,釣り（有料）,乗馬（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
267	383391	硯川ホテル	images/inn_image_383391.jpg	7314	3.5	4.5	3.0	3.5	3.5	3.8	71	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	t	f	1095	7	貸しスキー（有料）,貸しボード（有料）,将棋,囲碁,マージャン（有料）,釣り（有料）,陶芸（有料）,デイユース（有料）	0	0	0
248	333464	かんぽの宿石和	images/inn_image_333464.jpg	6342	4.0	3.9	4.4	4.1	4.4	4.4	54	0	t	t	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	1012	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン,テニス（有料）,ペットOK（有料）	0	0	0
249	395217	石和温泉郷旅館喜仙(きせん）	images/inn_image_395217.jpg	6296	3.9	4.0	4.4	4.5	4.2	3.8	33	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	t	t	1012	0	クリーニングサービス,マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,陶芸（有料）	0	0	0
250	318248	ホテル平成（ＢＢＨホテルグループ）	images/inn_image_318248.jpg	4148	3.5	4.0	3.6	4.3	4.4	3.4	34	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	f	f	t	t	t	1012	1	クリーニングサービス,マッサージ（有料）,貸自転車,将棋	0	0	0
251	303448	ホテル石風	images/inn_image_303448.jpg	6481	3.7	4.0	3.8	4.2	3.9	3.8	0	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1012	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
252	328209	石和びゅーほてる	images/inn_image_328209.jpg	4500	3.7	3.9	3.9	3.9	4.0	3.5	50	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	f	t	1012	3	マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
253	312447	石和・春日居温泉春日居びゅーほてる◆バイキングの温泉宿	images/inn_image_312447.jpg	4351	3.5	4.0	3.6	3.8	3.9	3.8	71	0	t	t	t	f	t	t	t	f	f	t	t	f	t	f	t	f	f	t	f	1012	1	マッサージ（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
254	317908	石和温泉ホテル花京	images/inn_image_317908.jpg	6666	4.0	4.1	3.6	4.0	4.3	3.8	0	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1012	0	ルームサービス,マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,陶芸（有料）,デイユース（有料）	0	0	0
255	324707	慶山グループ華やぎの章甲斐路	images/inn_image_324707.jpg	4000	4.5	4.1	3.6	3.7	4.1	3.9	80	0	f	t	t	f	t	f	t	f	f	t	f	f	f	t	f	f	f	f	f	1012	5	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
256	341520	志賀高原白い温泉渓谷の湯	images/inn_image_341520.jpg	15500	4.3	4.9	4.7	4.9	4.4	4.4	25	0	t	f	t	f	t	t	t	f	f	t	t	t	t	t	f	f	f	t	t	1095	0	貸しスキー（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
257	335045	北アルプスを望む露天風呂の宿ひがしだて	images/inn_image_335045.jpg	15833	4.9	4.0	4.8	4.7	4.5	4.8	30	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	t	f	1095	1	貸しスキー（有料）,貸しボード（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
258	323878	志賀山温泉アスペン志賀	images/inn_image_323878.jpg	9259	3.9	4.7	4.6	4.5	4.6	4.5	20	0	t	f	t	f	t	t	t	f	f	f	t	t	t	t	f	f	f	f	f	1095	3	マッサージ（有料）,貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
259	375960	ホテルタキモト	images/inn_image_375960.jpg	4814	0.0	0.0	0.0	0.0	0.0	0.0	28	0	f	f	t	f	t	f	t	f	f	t	f	f	f	t	f	f	f	t	f	1095	5	貸しスキー（有料）,将棋,囲碁,マージャン,釣り（有料）	0	0	0
260	311519	乳緑色の湯志賀高原ホテル一望閣	images/inn_image_311519.jpg	6018	3.6	4.5	4.1	3.8	4.0	3.5	79	0	f	f	t	f	t	t	t	f	f	t	t	t	t	f	f	f	f	f	f	1095	3	貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,ラフティング（有料）,カヌー（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
261	311008	志賀スイスイン	images/inn_image_311008.jpg	4953	3.8	4.4	4.0	4.1	4.3	3.7	66	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	t	f	f	f	f	1095	0	貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
262	304802	湖畔かけ流しの一軒宿木戸池温泉ホテル	images/inn_image_304802.jpg	6018	4.0	4.9	4.4	4.4	4.2	4.0	61	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	f	f	f	f	f	1095	1	貸しスキー（有料）,貸しボード（有料）,マージャン,ペットOK（有料）	0	0	0
263	331637	志賀高原幕岩温泉ホテル志賀サンバレー	images/inn_image_331637.jpg	5500	3.7	4.3	3.9	3.7	3.8	3.6	0	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	t	f	f	1095	3	貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,そば打ち（有料）,デイユース（有料）,ペットOK(ケージ有り/ケージ持込)	0	0	0
264	330002	ホテル白樺荘・志賀高原	images/inn_image_330002.jpg	12003	4.0	4.3	3.9	4.0	4.4	4.2	30	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	f	1095	7	貸しスキー（有料）,貸しボード（有料）,将棋,囲碁	0	0	0
265	319457	志賀喜楽ホテル	images/inn_image_319457.jpg	5925	0.0	0.0	0.0	0.0	0.0	0.0	47	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	f	f	1095	9	貸しスキー（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）	0	0	0
266	302544	志賀パレスホテル	images/inn_image_302544.jpg	7000	3.3	3.6	3.2	3.0	3.6	3.3	80	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	f	f	t	f	f	1095	0	貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
317	357592	庄川峡長崎温泉北原荘	images/inn_image_357592.jpg	6000	0.0	0.0	0.0	0.0	0.0	0.0	20	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	f	f	f	1331	9	将棋,囲碁,マージャン（有料）	0	0	0
269	315993	志賀の湯ホテル	images/inn_image_315993.jpg	7129	3.8	3.9	4.0	4.0	4.2	3.5	0	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	t	f	f	t	f	1095	1	貸しスキー（有料）,貸しボード（有料）,マージャン（有料）,釣り,ペットOK（有料）	0	0	0
270	359640	ホテルベルグ	images/inn_image_359640.jpg	9000	0.0	0.0	0.0	0.0	0.0	0.0	25	0	f	f	t	f	t	f	t	f	f	t	t	t	f	t	f	f	f	f	f	1095	5	貸しスキー（有料）,将棋,マージャン,テニス（有料）	0	0	0
271	338357	丸池温泉ホテル五郎兵衛	images/inn_image_338357.jpg	5000	0.0	0.0	0.0	0.0	0.0	0.0	41	0	f	f	t	f	t	t	t	f	f	t	f	f	t	f	f	f	f	f	f	1095	9	貸しスキー（有料）,貸しボード（有料）,マージャン（有料）	0	0	0
273	317394	朱鷺伝説と露天風呂の宿佐渡グリーンホテルきらく	images/inn_image_317394.jpg	11138	4.1	4.4	3.7	4.2	4.2	4.0	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	t	t	1197	3	ルームサービス,マッサージ（有料）,貸自転車（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,そば打ち（有料）	0	0	0
274	342492	夕日と湖の宿あおきや	images/inn_image_342492.jpg	5600	0.0	0.0	0.0	0.0	0.0	0.0	0	0	f	f	t	f	t	t	t	f	f	t	t	f	t	t	f	f	f	t	f	1197	9	クリーニングサービス,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,陶芸（有料）,デイユース（有料）	0	0	0
275	315494	佐渡随一の源泉かけ流し八幡温泉八幡館	images/inn_image_315494.jpg	5555	3.0	4.7	4.0	0.0	3.4	3.0	90	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	t	f	t	t	1201	1	ルームサービス,クリーニングサービス,マッサージ（有料）,マージャン（有料）	0	0	0
302	339970	神通峡岩稲温泉楽今日館	images/inn_image_339970.jpg	5379	4.5	4.5	3.4	0.0	3.8	3.8	9	0	f	f	t	t	t	t	t	f	f	t	f	f	t	f	t	f	t	f	f	1314	0	マッサージ（有料）,将棋（有料）,囲碁（有料）	0	0	0
276	309190	瀬波グランドホテルはぎのや	images/inn_image_309190.jpg	7000	4.3	4.5	4.3	4.4	4.3	4.2	37	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	f	t	t	f	1203	1	ルームサービス,マッサージ（有料）,マージャン（有料）,釣り（有料）,ラフティング（有料）	0	0	0
277	322359	夕映えの宿汐美荘	images/inn_image_322359.jpg	7000	4.2	4.4	4.3	4.3	4.3	4.2	91	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1203	0	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
278	313539	大観荘せなみの湯	images/inn_image_313539.jpg	7500	4.1	4.5	3.9	4.2	4.2	4.0	80	0	t	f	t	f	t	t	t	f	f	t	t	t	t	f	t	f	f	t	f	1203	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
279	329792	椿の宿吉田や	images/inn_image_329792.jpg	6000	4.1	4.5	4.2	4.3	4.5	4.3	15	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1203	1	ルームサービス,マッサージ（有料）,マージャン（有料）	0	0	0
280	362838	日本海の夕日を露天風呂と客室で満喫する宿瀬波ビューホテル	images/inn_image_362838.jpg	5462	3.7	3.8	4.0	4.1	4.2	3.7	38	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	t	t	t	t	1203	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館,デイユース（有料）	0	0	0
281	353888	大清荘	images/inn_image_353888.jpg	5000	3.9	4.5	4.4	4.5	4.4	3.7	25	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	f	t	1203	0	マッサージ（有料）,将棋（有料）,囲碁,マージャン（有料）	0	0	0
282	310473	くつろぎの宿静雲荘・別邸華海廊	images/inn_image_310473.jpg	18000	4.2	4.2	4.2	3.9	4.0	3.5	13	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1203	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
283	355218	瀬波温泉木もれびの宿 ゆのか	images/inn_image_355218.jpg	6000	4.0	4.5	0.0	0.0	4.7	4.2	8	0	f	f	t	t	t	f	t	f	f	t	t	f	f	f	f	f	f	t	t	1203	5	将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
284	333527	瀬波温泉開湯の宿 大和屋旅館	images/inn_image_333527.jpg	4444	3.4	4.1	4.0	0.0	4.5	3.4	12	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	t	f	f	1203	1	マージャン（有料）	0	0	0
285	341285	瀬波温泉 自慢の野天風呂 湯元 龍泉	images/inn_image_341285.jpg	7000	0.0	0.0	0.0	0.0	0.0	0.0	5	0	t	f	t	f	t	t	t	f	f	t	f	f	t	t	f	f	t	t	f	1203	9	マッサージ（有料）,将棋,囲碁,デイユース（有料）	0	0	0
286	387836	ゆ処・そば処磐舟	images/inn_image_387836.jpg	5416	3.9	4.0	4.2	0.0	4.2	3.3	14	0	t	f	t	f	t	t	t	f	f	t	t	t	t	f	t	f	f	f	f	1203	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
287	332990	黒部・宇奈月温泉やまのは（旧宇奈月杉乃井ホテル）	images/inn_image_332990.jpg	7500	4.5	4.5	4.5	4.4	4.4	4.5	141	0	t	t	t	f	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	1299	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ラフティング（有料）,デイユース（有料）,ペットOK（有料）(ケージ有り/ケージ持込)	0	0	0
288	336691	黒部・宇奈月温泉桃源9つの湯めぐりと北陸の料理自慢	images/inn_image_336691.jpg	12000	4.2	4.1	4.0	4.6	4.4	4.2	50	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1299	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
289	355206	旬菜食楽黒部峡谷絶景の宿延対寺荘	images/inn_image_355206.jpg	10935	4.4	4.3	4.3	4.6	4.2	4.2	0	0	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	1299	0	マッサージ（有料）,貸しスキー（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
290	327463	延楽清流沿いの絶景露天と旬菜会席が評判の宿	images/inn_image_327463.jpg	19000	4.6	4.5	4.6	4.6	4.6	4.4	61	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1299	0	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,陶芸（有料）	0	0	0
292	359878	サン柳亭	images/inn_image_359878.jpg	8148	4.3	4.2	4.0	4.4	4.3	3.9	22	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	f	t	1299	0	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館,グランド,テニス,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）	0	0	0
293	315987	黒部峡谷トロッコ電車駅前フィール宇奈月	images/inn_image_315987.jpg	5592	3.6	4.0	4.6	4.2	4.1	3.7	31	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1299	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,釣り,ラフティング（有料）,デイユース（有料）	0	0	0
294	346221	宇奈月国際ホテル	images/inn_image_346221.jpg	17314	3.5	3.9	4.4	4.5	4.5	3.7	64	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1299	7	ルームサービス,将棋,囲碁,マージャン（有料）	0	0	0
295	324062	お肌よろこぶ濁り湯の宿金太郎温泉	images/inn_image_324062.jpg	12000	4.3	4.7	4.0	4.3	4.4	4.2	90	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	t	t	1309	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
296	327704	女性が選ぶ全6室の隠れ宿お宿いけがみ	images/inn_image_327704.jpg	19000	4.8	4.6	4.9	4.9	4.8	4.9	6	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1311	1	ルームサービス	0	0	0
297	327973	北山鉱泉子宝の湯宿元祖仁右衛門家	images/inn_image_327973.jpg	13000	4.2	4.0	4.0	4.5	3.4	3.5	11	0	t	f	t	t	t	t	t	f	t	t	f	t	t	t	f	f	t	t	t	1311	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
298	394296	天然温泉剱の湯ドーミーイン富山	images/inn_image_394296.jpg	2773	4.1	4.6	4.5	0.0	4.3	4.4	203	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	1314	1	クリーニングサービス,マッサージ,デイユース（有料）	0	0	0
299	337800	天然温泉富山剱の湯御宿野乃	images/inn_image_337800.jpg	3699	4.5	4.7	4.8	0.0	4.4	4.6	151	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	1314	1	クリーニングサービス,マッサージ（有料）	0	0	0
300	341385	ホテル森の風立山	images/inn_image_341385.jpg	11000	4.4	4.2	3.6	3.9	3.8	4.2	60	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1314	1	デイユース（有料）	0	0	0
301	330153	アパホテル＜富山＞	images/inn_image_330153.jpg	2592	3.6	3.5	3.6	4.0	3.8	3.5	274	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1314	1	クリーニングサービス,マッサージ（有料）,デイユース（有料）	0	0	0
303	331105	氷見温泉郷魚巡りの宿永芳閣(ＢＢＨホテルグループ)	images/inn_image_331105.jpg	7000	4.5	4.1	4.4	4.4	4.2	4.3	50	0	f	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1318	3	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
304	316560	『絶景と癒しの宿』雨晴温泉磯はなび	images/inn_image_316560.jpg	10000	4.5	4.5	4.4	4.7	4.3	4.6	50	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1318	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
305	315952	天然温泉浜辺の宿あさひや	images/inn_image_315952.jpg	7500	4.5	4.3	4.8	5.0	4.8	4.7	6	0	f	t	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	f	f	1318	1	釣り（有料）,デイユース（有料）	0	0	0
306	382716	氷見温泉郷くつろぎの宿うみあかり	images/inn_image_382716.jpg	9000	3.9	4.0	4.2	4.0	3.3	3.7	46	0	f	f	t	f	t	f	t	f	f	t	t	f	f	t	t	f	t	t	f	1318	5	ルームサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
307	324005	磯の音氷見っ子	images/inn_image_324005.jpg	6100	4.3	3.8	4.2	4.5	4.4	4.4	10	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	f	t	t	t	t	1318	1	デイユース（有料）	0	0	0
308	302790	九殿浜温泉ひみのはな	images/inn_image_302790.jpg	9300	3.8	4.4	4.1	3.9	3.8	3.9	23	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1318	7	将棋,囲碁,マージャン（有料）,デイユース（有料）	0	0	0
309	387436	氷見のお宿民宿いけもり	images/inn_image_387436.jpg	11138	0.0	0.0	0.0	0.0	0.0	0.0	10	0	f	f	t	f	t	t	t	f	f	t	t	t	t	f	f	f	t	f	t	1318	9	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
310	390491	和風温泉元湯叶	images/inn_image_390491.jpg	5555	0.0	0.0	0.0	0.0	0.0	0.0	9	0	f	t	t	t	t	t	t	f	f	t	t	t	t	t	f	f	t	t	f	1318	9	マッサージ（有料）,将棋,囲碁,マージャン,ゴルフ（有料）,釣り（有料）	0	0	0
311	312504	粋な民宿美岬	images/inn_image_312504.jpg	6000	0.0	0.0	0.0	0.0	0.0	0.0	12	0	f	t	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	f	f	1318	9	将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
312	300933	天然温泉民宿與市郎	images/inn_image_300933.jpg	4814	2.9	3.3	3.9	4.2	4.0	3.0	8	0	f	f	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f	f	1318	0	将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
313	321155	鳥越の宿 三楽園	images/inn_image_321155.jpg	10000	4.3	4.6	4.5	4.8	4.7	4.5	23	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1331	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,リフレクソロジー	0	0	0
314	323415	ロイヤルホテル 富山砺波	images/inn_image_323415.jpg	3703	4.2	4.0	3.8	3.5	3.8	4.0	249	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	1331	1	エステ（有料）,マッサージ（有料）,ゴルフ（有料）,デイユース（有料）,ペットOK（有料）(ケージ有り/ケージ持込)	0	0	0
315	346176	庄川温泉風流味道座敷ゆめつづり	images/inn_image_346176.jpg	10000	4.5	4.7	4.3	4.5	4.6	4.8	30	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1331	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
316	368006	五箇山温泉五箇山荘	images/inn_image_368006.jpg	7938	4.2	3.7	3.5	3.6	3.9	4.0	22	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	1331	0	ルームサービス,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
319	381455	グリーンビュー立山	images/inn_image_381455.jpg	10714	4.1	4.6	4.5	4.5	4.8	4.3	32	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	f	t	t	t	f	1348	0	将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
320	330771	立山国際ホテル	images/inn_image_330771.jpg	4629	3.9	4.4	4.0	3.9	4.1	3.8	56	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1348	0	貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
321	385581	立山黒部アルペンルート湯の宿千寿荘	images/inn_image_385581.jpg	5462	4.4	4.2	4.1	4.2	4.6	4.5	11	0	f	f	t	f	t	t	t	f	f	t	t	f	t	f	f	f	f	f	f	1348	1		0	0	0
322	310971	立山山麓温泉癒しの湯宿クレヨンハウス	images/inn_image_310971.jpg	6000	0.0	0.0	0.0	0.0	0.0	0.0	0	0	f	f	t	t	t	t	t	f	f	t	f	f	t	t	t	f	f	t	f	1348	9	貸しスキー（有料）,貸しボード（有料）,パラグライダー（有料）	0	0	0
324	328347	湯宿ホワイトベル	images/inn_image_328347.jpg	5092	0.0	0.0	0.0	0.0	0.0	0.0	12	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	f	t	f	f	1348	9	貸しスキー（有料）,貸しボード（有料）,パラグライダー（有料）	0	0	0
325	335661	ロッジ太郎	images/inn_image_335661.jpg	8000	0.0	0.0	0.0	0.0	0.0	0.0	0	0	t	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	1348	2	貸しスキー（有料）,貸しボード（有料）,マージャン（有料）,パラグライダー（有料）	0	0	0
326	336270	里の湯雷鳥	images/inn_image_336270.jpg	8111	0.0	0.0	0.0	0.0	0.0	0.0	0	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	f	f	t	t	f	1348	9	貸しスキー（有料）,マージャン（有料）	0	0	0
327	324738	山の宿やまびこ	images/inn_image_324738.jpg	8148	0.0	0.0	0.0	0.0	0.0	0.0	9	0	f	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	f	f	1348	9	貸しスキー（有料）,パターゴルフ（有料）,パラグライダー（有料）,そば打ち（有料）	0	0	0
328	315222	奈良ロイヤルホテル	images/inn_image_315222.jpg	2666	4.0	4.0	4.3	3.9	4.2	4.1	127	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	t	t	1868	1	ルームサービス,クリーニングサービス,マッサージ（有料）,貸自転車（有料）,デイユース（有料）	0	0	0
329	361046	奈良パークホテル	images/inn_image_361046.jpg	6481	3.9	3.7	4.2	4.3	3.7	3.6	35	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1869	1	エステ（有料）,マッサージ（有料）,マージャン（有料）,デイユース（有料）	0	0	0
330	387683	信貴山観光ホテル	images/inn_image_387683.jpg	9000	4.3	4.2	4.3	4.3	4.1	4.1	42	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1870	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
331	310691	湯元宝の家	images/inn_image_310691.jpg	15277	3.7	3.8	4.2	3.9	4.6	3.4	0	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	t	t	1874	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り,デイユース（有料）,ペットOK（有料）(ケージ持込)	0	0	0
361	380055	温泉旅館丸茂	images/inn_image_380055.jpg	7500	3.8	4.6	4.5	0.0	3.9	3.9	12	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	1955	1	クリーニングサービス,マッサージ（有料）	0	0	0
332	343142	創業５００年宿花屋徳兵衛（洞川温泉）	images/inn_image_343142.jpg	8611	4.5	4.1	4.3	4.7	4.8	4.7	8	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1879	7	ルームサービス,将棋,囲碁,マージャン（有料）,体育館（有料）,釣り（有料）	0	0	0
333	317073	温泉名水の里旅館紀の国屋甚八(天川・洞川温泉)	images/inn_image_317073.jpg	7407	4.4	4.3	4.5	4.6	4.6	4.1	6	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	f	f	1879	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,釣り（有料）,デイユース（有料）	0	0	0
334	322058	まごころの宿丸井	images/inn_image_322058.jpg	5800	4.3	4.6	4.8	5.0	5.0	4.5	12	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	t	f	t	1903	7	マッサージ,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,デイユース（有料）	0	0	0
335	312103	龍神温泉上御殿	images/inn_image_312103.jpg	14000	4.2	4.7	4.4	4.6	4.2	4.7	0	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	f	f	t	f	t	1903	1	ルームサービス,マッサージ（有料）,貸自転車,釣り（有料）	0	0	0
336	393520	季楽里龍神	images/inn_image_393520.jpg	10185	4.0	4.4	4.0	4.0	4.2	4.3	57	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	t	t	t	1903	1	マッサージ（有料）	0	0	0
337	311159	料理旅館萬屋	images/inn_image_311159.jpg	7222	3.9	4.6	4.8	4.7	4.7	4.5	6	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	f	t	t	1903	1	ルームサービス,マッサージ（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
338	304746	龍神温泉元湯別館	images/inn_image_304746.jpg	3703	4.5	4.9	0.0	0.0	4.5	4.7	12	0	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	1903	5		0	0	0
339	310268	下御殿	images/inn_image_310268.jpg	15150	4.2	4.6	4.5	4.5	4.2	4.0	17	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	t	t	1903	7	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,釣り（有料）	0	0	0
340	360270	有軒屋旅館	images/inn_image_360270.jpg	6000	3.9	4.7	4.4	4.7	4.4	4.2	14	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	f	t	f	1903	7	マッサージ（有料）,将棋,囲碁,マージャン	0	0	0
341	338525	旅館さかい	images/inn_image_338525.jpg	11000	3.4	4.3	3.9	3.8	3.9	3.5	10	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	f	f	t	t	f	1903	7	マッサージ（有料）,将棋,マージャン（有料）,ペットOK（有料）(ケージ持込)	0	0	0
342	384555	龍神温泉美人亭	images/inn_image_384555.jpg	9000	3.6	3.8	3.9	3.8	4.0	3.6	16	0	f	f	t	t	t	t	t	f	f	t	f	f	t	f	f	t	f	f	t	1903	0	将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
343	300009	休暇村 紀州加太（きしゅうかだ）〜和歌山の旬と絶景露天の宿〜	images/inn_image_300009.jpg	11500	4.5	4.8	4.5	4.3	4.3	4.5	72	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1905	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,テニス（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
371	373584	全室源泉温泉掛け流し松江シティホテル別館	images/inn_image_373584.jpg	3055	3.6	3.7	3.0	0.0	4.0	3.7	54	0	t	t	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	1980	1	ルームサービス,クリーニングサービス,貸自転車	0	0	0
345	311105	和歌山加太温泉シーサイドホテル加太海月	images/inn_image_311105.jpg	4000	3.9	4.0	3.5	4.3	4.0	3.6	26	0	f	f	t	t	t	f	t	f	f	t	f	t	f	f	f	t	f	f	t	1905	5	マッサージ（有料）,マージャン（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
346	380232	天然温泉紀州の湯ドーミーインＰＲＥＭＩＵＭ和歌山	images/inn_image_380232.jpg	3930	4.3	4.5	4.6	0.0	4.3	4.4	142	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	f	t	t	t	1906	1	クリーニングサービス,デイユース（有料）	0	0	0
347	358691	かつらぎ温泉八風の湯 宿「八風別館」	images/inn_image_358691.jpg	9500	4.4	4.4	4.1	4.3	4.1	4.3	14	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	t	t	t	t	t	1906	1	エステ（有料）,マッサージ（有料）,デイユース（有料）	0	0	0
349	329710	紀州温泉雑賀の湯双子島荘	images/inn_image_329710.jpg	7000	3.9	3.7	3.4	4.2	4.2	3.8	32	0	f	f	t	t	t	t	t	f	f	t	f	t	f	f	t	f	f	t	t	1906	0	将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,デイユース（有料）	0	0	0
350	357090	花山温泉 薬師の湯	images/inn_image_357090.jpg	8768	3.2	4.7	4.0	4.5	3.5	3.2	12	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	1906	1	ルームサービス,マッサージ（有料）,将棋	0	0	0
351	392048	紀三井寺温泉 花の湯ガーデンホテルはやし	images/inn_image_392048.jpg	4500	3.2	3.7	0.0	0.0	3.5	3.0	102	0	f	t	t	t	t	t	t	f	f	t	t	f	t	t	f	f	t	f	t	1906	1	クリーニングサービス,マッサージ（有料）,マージャン（有料）	0	0	0
352	314800	岩井屋	images/inn_image_314800.jpg	9500	4.3	4.7	4.6	4.7	4.6	4.5	14	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	1954	1	マージャン（有料）	0	0	0
353	344975	浪漫伝承の宿明石家	images/inn_image_344975.jpg	12000	3.4	4.0	3.5	3.6	3.4	2.9	25	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	t	f	1954	1	マッサージ（有料）,マージャン（有料）	0	0	0
354	343111	鳥取温泉観水庭こぜにや白水館・碧水亭	images/inn_image_343111.jpg	8333	4.5	4.7	4.7	4.7	4.9	4.8	15	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1955	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
355	388404	鳥取温泉観水庭こぜにや玄水亭(旧館)	images/inn_image_388404.jpg	8138	4.6	4.6	4.8	4.9	4.9	4.8	9	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1955	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,パラグライダー（有料）,デイユース（有料）	0	0	0
356	399580	ホテルモナーク鳥取	images/inn_image_399580.jpg	3935	4.1	4.2	4.1	4.7	4.4	4.1	108	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	t	1955	1	クリーニングサービス,マッサージ（有料）,囲碁	0	0	0
357	342976	しいたけ会館対翠閣	images/inn_image_342976.jpg	4629	4.1	4.5	4.6	4.8	4.3	4.0	26	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	f	t	t	t	t	1955	1	マッサージ（有料）,将棋（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
358	308614	白兎会館	images/inn_image_308614.jpg	3935	4.3	3.6	3.7	4.1	4.0	4.2	28	0	f	t	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	1955	7	クリーニングサービス,マッサージ（有料）,貸自転車,将棋,囲碁,ゴルフ,パターゴルフ,釣り,パラグライダー,そば打ち	0	0	0
359	381786	ＢＩＲＤ-ＳＴＡＹＨＯＴＥＬ (バードステイホテル)	images/inn_image_381786.jpg	4722	4.0	4.0	3.5	4.4	3.8	4.0	21	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	f	t	t	f	1955	1		0	0	0
360	385580	レーク大樹	images/inn_image_385580.jpg	4629	3.5	3.9	3.9	4.2	3.5	3.3	24	0	f	t	t	t	t	f	t	f	f	t	f	f	f	f	t	t	f	t	t	1955	5	ゴルフ,デイユース（有料）	0	0	0
362	395592	福田屋旅館	images/inn_image_395592.jpg	10000	4.3	4.5	4.8	5.0	4.7	4.3	4	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	t	t	1956	7	将棋,囲碁,マージャン	0	0	0
363	325364	なにわ一水	images/inn_image_325364.jpg	8000	4.7	4.2	4.6	4.6	4.8	4.7	25	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1980	7	エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋,囲碁	0	0	0
364	399174	スーパーホテル島根・松江駅前天然温泉宍道湖千鳥の湯	images/inn_image_399174.jpg	3703	4.2	4.0	4.0	0.0	4.2	4.4	94	0	t	t	t	t	t	t	t	f	f	f	t	f	t	f	t	t	t	t	t	1980	1		0	0	0
365	348616	ホテル一畑	images/inn_image_348616.jpg	5370	4.2	4.0	3.9	3.9	4.1	4.0	143	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1980	1	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）	0	0	0
366	316628	文人ゆかりの宿皆美館	images/inn_image_316628.jpg	13600	5.0	4.2	4.6	0.0	4.8	5.0	10	0	t	t	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	t	t	1980	1	マッサージ（有料）,ゴルフ（有料）,釣り	0	0	0
367	310145	野津旅館	images/inn_image_310145.jpg	4583	3.9	4.0	4.3	4.7	4.4	4.4	24	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1980	1	ルームサービス,マッサージ（有料）,マージャン（有料）,デイユース（有料）	0	0	0
368	311261	松江ニューアーバンホテル本館・別館	images/inn_image_311261.jpg	3148	3.6	3.7	4.4	4.5	4.1	3.6	102	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	1980	1	クリーニングサービス,マッサージ（有料）,貸自転車,釣り,デイユース（有料）	0	0	0
369	366512	松平閣	images/inn_image_366512.jpg	6500	4.4	3.8	4.2	4.2	3.8	4.0	13	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1980	1	マッサージ（有料）	0	0	0
370	305893	夕景湖畔すいてんかく	images/inn_image_305893.jpg	5046	3.7	3.9	3.7	4.0	3.9	3.6	50	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	f	f	f	t	f	1980	1	マッサージ（有料）,貸自転車（有料）,マージャン（有料）	0	0	0
444	343758	大観荘	images/inn_image_343758.jpg	6000	3.7	4.0	3.7	3.8	3.6	3.6	69	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2292	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
373	376092	大橋館	images/inn_image_376092.jpg	5000	4.1	3.5	3.9	4.3	3.8	3.8	20	0	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	f	f	t	1980	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
374	346647	てんてん手毬	images/inn_image_346647.jpg	5500	3.7	3.3	3.4	0.0	4.0	3.4	15	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1980	1	エステ（有料）,マッサージ（有料）	0	0	0
375	313047	かくれの里ゆかり	images/inn_image_313047.jpg	7407	4.3	4.3	4.3	4.6	4.6	4.3	15	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1981	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
376	302951	【トロ〜リすべすべ絶景露天風呂の宿】かなぎ観光ホテル	images/inn_image_302951.jpg	7000	3.9	4.5	4.1	4.5	4.4	3.8	19	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1981	1	マッサージ（有料）,マージャン（有料）	0	0	0
377	354152	荒磯温泉荒磯館	images/inn_image_354152.jpg	15000	4.3	4.6	4.4	4.6	4.2	4.2	20	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	f	t	1981	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,デイユース（有料）	0	0	0
378	377375	スーパーホテル江津駅前天然温泉石州の湯	images/inn_image_377375.jpg	3240	4.3	4.3	4.4	0.0	4.7	4.8	71	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	t	1981	1		0	0	0
379	350848	神代から伝わる美肌の湯美又温泉かめや旅館	images/inn_image_350848.jpg	3222	3.8	4.6	4.2	4.5	4.6	4.1	8	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	t	t	1981	7	将棋,囲碁,マージャン,ゴルフ（有料）,乗馬（有料）	0	0	0
380	317418	出雲・はたご小田温泉	images/inn_image_317418.jpg	13000	4.5	4.6	4.5	4.5	4.7	4.8	6	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	f	t	f	1981	7	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
381	372224	多田温泉白龍館	images/inn_image_372224.jpg	4000	3.4	4.2	4.3	5.0	3.9	3.7	12	0	t	f	t	f	t	t	t	f	f	t	t	t	t	t	f	t	f	t	f	1981	1		0	0	0
382	330257	温泉リゾート風の国	images/inn_image_330257.jpg	10000	4.2	3.8	4.5	4.8	4.4	4.3	16	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	f	t	t	1981	3	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,乗馬（有料）	0	0	0
383	317745	湯屋温泉リフレパークきんたの里	images/inn_image_317745.jpg	3981	3.9	4.2	4.2	4.2	4.4	4.2	13	0	f	t	t	t	t	t	t	f	f	t	f	f	t	f	t	t	f	t	t	1981	0	将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
384	311268	山郷の温泉宿ホテル川隅	images/inn_image_311268.jpg	6018	3.8	3.7	3.6	4.1	3.8	3.8	21	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	t	t	t	t	1981	7	マッサージ（有料）,貸しスキー（有料）,貸しボード（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,乗馬（有料）,陶芸（有料）	0	0	0
385	390618	ドラマチックな自然体験に出逢える高原ホテル三瓶温泉さひめ野	images/inn_image_390618.jpg	6018	3.8	4.0	3.6	4.1	3.6	3.6	36	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1981	0	貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ペットOK（有料）(ケージ持込)	0	0	0
386	354670	ホテル美又	images/inn_image_354670.jpg	5000	3.2	4.9	3.9	4.2	4.2	3.4	5	0	t	f	t	f	t	t	t	f	f	t	f	t	f	f	f	f	f	f	f	1981	1		0	0	0
388	316820	1200年続く幻の湯治の郷湯郷温泉季譜の里	images/inn_image_316820.jpg	18240	4.1	4.3	4.2	4.4	4.5	4.4	33	0	t	t	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	t	t	2028	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
389	317778	花の宿にしき園	images/inn_image_317778.jpg	6203	4.2	4.5	3.9	4.1	4.1	4.4	29	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2028	7	ルームサービス,将棋,囲碁,ゴルフ（有料）,陶芸（有料）,デイユース（有料）	0	0	0
390	303586	湯郷温泉ポピースプリングスリゾート＆スパ	images/inn_image_303586.jpg	7000	4.5	3.9	4.2	4.4	4.3	4.4	50	0	t	t	t	t	t	t	t	f	t	f	t	t	t	t	t	t	t	t	t	2028	1	クリーニングサービス,エステ（有料）,マッサージ（有料）,貸自転車,デイユース,リフレクソロジー,ペットホテル	0	0	0
391	374120	旬の味覚とおもてなしの宿湯郷グランドホテル	images/inn_image_374120.jpg	6500	3.7	4.0	4.1	4.3	4.2	3.8	75	0	f	t	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	2028	3	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,デイユース（有料）	0	0	0
392	377760	作州武蔵温泉ホテル作州武蔵	images/inn_image_377760.jpg	5370	4.1	4.0	4.2	4.1	3.8	3.9	73	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	f	t	f	t	t	2028	1	マッサージ（有料）,マージャン（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
393	369958	清次郎の湯ゆのごう館〜赤ちゃん・３世代旅行に優しい料理旅館	images/inn_image_369958.jpg	6500	4.0	4.1	4.2	4.3	4.3	4.0	35	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2028	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
394	369684	湯郷温泉かつらぎ	images/inn_image_369684.jpg	2777	3.7	3.6	4.2	3.8	3.4	3.4	28	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	f	t	t	t	t	2028	1	エステ（有料）,マッサージ（有料）,ゴルフ（有料）,陶芸（有料）,デイユース（有料）	0	0	0
395	395754	くつろぎとにぎわいの宿ゆのごう美春閣	images/inn_image_395754.jpg	7000	3.8	3.7	4.0	4.2	3.6	3.4	84	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	t	t	t	2028	0	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,陶芸（有料）	0	0	0
445	355994	筑後川温泉桑之屋	images/inn_image_355994.jpg	5555	3.9	4.7	4.2	4.5	4.3	3.8	26	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	t	t	2293	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
397	310617	鞆の浦温泉絶景の宿鴎風亭	images/inn_image_310617.jpg	15000	4.6	4.2	4.4	4.5	4.4	4.4	43	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	2075	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,リフレクソロジー,チャペル	0	0	0
398	317803	鞆の浦温泉景勝館漣亭	images/inn_image_317803.jpg	8000	4.2	4.3	4.5	4.7	4.5	4.4	26	0	t	t	t	t	t	t	t	f	f	t	t	f	t	f	t	t	f	t	t	2075	1	エステ（有料）,マッサージ（有料）,マージャン（有料）	0	0	0
399	325753	鞆の浦温泉汀邸遠音近音（みぎわていをちこち）	images/inn_image_325753.jpg	23935	5.0	5.0	4.8	4.9	5.0	5.0	17	0	t	f	t	t	t	t	t	t	t	t	t	f	t	t	t	t	t	t	t	2075	1	エステ（有料）,リフレクソロジー	0	0	0
400	340812	天然温泉尾道みなと館	images/inn_image_340812.jpg	3611	4.3	4.2	4.2	4.4	4.4	4.6	15	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	2075	1	貸自転車,ゴルフ,デイユース（有料）	0	0	0
401	348440	天然温泉うら湯旅館浦島	images/inn_image_348440.jpg	5000	3.6	3.9	3.6	4.4	3.9	3.7	18	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	f	t	2078	1	マッサージ（有料）	0	0	0
402	339288	養老温泉本館	images/inn_image_339288.jpg	3518	4.1	3.8	4.5	4.8	4.1	3.9	10	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	t	f	t	t	t	2078	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン,デイユース（有料）	0	0	0
403	307832	天然温泉広島北ホテル	images/inn_image_307832.jpg	3935	4.0	4.0	4.1	4.4	3.9	3.9	49	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	t	t	t	t	t	2081	7	将棋,囲碁,マージャン（有料）,ゴルフ（有料）,デイユース（有料）,ペットOK（有料）(ケージ有り/ケージ持込)	0	0	0
404	387511	君田温泉森の泉	images/inn_image_387511.jpg	9342	4.0	4.9	4.0	4.4	4.2	4.4	12	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2081	1		0	0	0
405	367302	温泉ホテル温井スプリングス	images/inn_image_367302.jpg	7592	3.8	3.7	3.3	3.4	3.6	3.5	31	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	t	t	f	t	t	2081	1	ペットOK（有料）(ケージ有り)	0	0	0
406	328551	三段峡ホテル	images/inn_image_328551.jpg	4444	0.0	0.0	0.0	0.0	0.0	0.0	11	0	f	f	t	t	t	t	t	f	f	t	t	f	t	f	f	t	f	f	f	2081	9	ルームサービス,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
407	338690	三段峡温泉川本旅館	images/inn_image_338690.jpg	4166	3.2	3.7	3.7	4.0	4.0	3.7	7	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f	t	2081	1	テニス（有料）,ゴルフ（有料）	0	0	0
408	312300	芸北温泉芸北オークガーデン	images/inn_image_312300.jpg	7200	0.0	0.0	0.0	0.0	0.0	0.0	8	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	f	t	f	t	2081	9	将棋（有料）,囲碁（有料）,デイユース（有料）	0	0	0
409	329032	【錦帯橋温泉 岩国国際観光ホテル】～錦帯橋を望む絶景温泉～	images/inn_image_329032.jpg	5092	3.7	4.3	3.8	4.2	4.5	3.8	56	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	t	t	t	2113	7	クリーニングサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁	0	0	0
410	311786	芳山園	images/inn_image_311786.jpg	7000	4.2	3.7	3.6	4.2	4.0	3.9	19	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2113	7	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,釣り,デイユース（有料）	0	0	0
411	355080	周防大島温泉ホテル大観荘	images/inn_image_355080.jpg	7000	3.8	3.6	3.7	3.6	3.6	3.5	42	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	f	t	t	2113	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
412	397188	ふれあいの宿遊遊ＮＡＳＡ	images/inn_image_397188.jpg	7150	4.3	4.3	4.2	4.2	4.1	4.2	23	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	f	t	f	2165	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
413	314518	神山温泉ホテル四季の里＆いやしの湯	images/inn_image_314518.jpg	6500	4.3	4.6	4.2	4.2	4.8	4.2	20	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2165	3	マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,デイユース（有料）	0	0	0
414	392666	ＨＯＴＥＬＲＩＶＩＥＲＡししくい	images/inn_image_392666.jpg	7592	4.0	4.2	3.7	3.9	3.8	3.5	28	0	f	t	t	t	t	t	t	f	t	f	f	f	t	t	t	t	t	t	t	2165	0	クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
415	319667	月ヶ谷温泉月の宿	images/inn_image_319667.jpg	6111	4.3	3.6	3.8	4.0	3.9	4.3	16	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	t	2165	1	マッサージ（有料）,貸自転車（有料）,テニス（有料）,釣り（有料）	0	0	0
416	313948	四季美谷温泉	images/inn_image_313948.jpg	5874	4.2	4.0	4.0	0.0	4.4	4.4	9	0	f	f	t	f	t	t	t	f	f	t	f	f	t	f	f	f	f	t	f	2165	7	将棋,囲碁	0	0	0
417	392144	もみじ川温泉	images/inn_image_392144.jpg	5200	0.0	0.0	0.0	0.0	0.0	0.0	8	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	f	f	t	f	2165	9	エステ（有料）,マージャン,乗馬（有料）,ラフティング（有料）,カヌー（有料）	0	0	0
418	320220	ブルーヴィラあなぶき	images/inn_image_320220.jpg	4000	3.4	3.6	3.9	3.7	3.3	3.9	10	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	f	f	f	t	f	2165	1		0	0	0
419	302188	ベイリゾートホテル小豆島	images/inn_image_302188.jpg	4074	4.4	4.2	4.0	4.1	4.4	4.2	117	0	t	f	t	f	t	t	t	f	f	f	t	f	t	t	t	f	f	t	t	2189	1	貸自転車（有料）,将棋,マージャン	0	0	0
420	318489	エンジェルロードに一番近い宿小豆島国際ホテル	images/inn_image_318489.jpg	4490	4.4	4.0	4.3	4.5	4.6	4.4	120	0	t	t	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	f	t	2189	1	クリーニングサービス,マッサージ（有料）,貸自転車（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
421	327371	小豆島 シーサイドホテル 松風	images/inn_image_327371.jpg	4500	4.3	3.7	4.7	5.0	4.9	4.6	25	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	f	t	2189	3	ルームサービス,クリーニングサービス,マッサージ（有料）,貸自転車,将棋,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,カヌー（有料）,陶芸（有料）	0	0	0
472	363624	旅館清川	images/inn_image_363624.jpg	8000	4.4	4.1	4.7	4.8	4.6	4.8	5	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2326	1		0	0	0
423	318505	ホテルグリーンプラザ小豆島	images/inn_image_318505.jpg	4166	3.7	4.2	3.7	4.2	4.2	3.8	46	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	f	t	2189	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,カヌー（有料）	0	0	0
424	327990	ビーチサイドホテル鹿島荘	images/inn_image_327990.jpg	4500	3.9	3.8	3.7	4.3	4.1	4.0	47	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	f	t	t	t	t	2189	3	クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,カヌー（有料）,陶芸（有料）	0	0	0
425	324202	～湯元 小豆島温泉～ オーキドホテル	images/inn_image_324202.jpg	5925	3.7	3.7	3.4	4.3	3.5	3.7	81	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	t	t	2189	3	クリーニングサービス,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,陶芸（有料）	0	0	0
426	331231	小豆島温泉瀬戸の御湯ホテルニュー海風	images/inn_image_331231.jpg	5000	0.0	0.0	0.0	0.0	0.0	0.0	15	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	f	f	t	2189	9	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,カヌー（有料）,陶芸（有料）	0	0	0
427	373311	小豆島グランドホテル水明	images/inn_image_373311.jpg	4500	3.9	3.6	3.8	3.8	3.8	3.4	46	0	t	f	t	f	t	t	t	f	f	t	t	f	t	t	f	f	f	t	f	2189	3	クリーニングサービス,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）	0	0	0
428	313704	天空ホテル海廬	images/inn_image_313704.jpg	4259	3.3	3.7	3.3	3.4	3.8	2.9	50	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	f	t	f	f	t	2189	3	ルームサービス,クリーニングサービス,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,カヌー（有料）	0	0	0
429	371490	−夕凪の湯−ＨＯＴＥＬ花樹海夜景の見える天然温泉	images/inn_image_371490.jpg	5370	4.2	4.2	4.3	4.2	4.3	4.1	48	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2190	0	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ,デイユース（有料）,チャペル	0	0	0
430	351208	ハイパーリゾート ヴィラ塩江	images/inn_image_351208.jpg	5000	4.1	3.8	3.9	4.3	4.0	4.0	57	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2190	7	マッサージ（有料）,将棋,マージャン（有料）,デイユース（有料）,ペットOK（有料）	0	0	0
431	347030	源泉の宿かけ流しの湯いよ西条湯之谷温泉	images/inn_image_347030.jpg	3200	4.0	3.8	4.3	4.5	4.3	4.3	13	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	f	t	f	2214	1	マッサージ（有料）,デイユース（有料）	0	0	0
432	327230	今治国際ホテル	images/inn_image_327230.jpg	7361	4.4	4.2	3.9	4.2	4.1	4.3	355	0	t	t	t	t	t	t	t	f	t	f	t	t	t	f	t	t	t	t	t	2214	6	クリーニングサービス,マッサージ（有料）,貸自転車,ゴルフ（有料）,デイユース（有料）,リフレクソロジー,ジム,ＡＴＭ,ショッピングモール,チャペル	0	0	0
433	345912	スーパーホテル四国中央天然温泉東予の湯	images/inn_image_345912.jpg	3324	3.9	3.9	3.8	0.0	3.9	4.2	100	0	f	f	t	f	t	t	t	f	f	f	t	f	t	f	t	f	f	t	f	2214	1	クリーニングサービス	0	0	0
434	344897	小薮温泉	images/inn_image_344897.jpg	5638	4.0	4.3	4.5	4.9	4.6	4.0	7	0	f	f	t	t	t	t	t	f	f	t	f	f	t	t	t	f	f	t	t	2214	7	将棋,囲碁,マージャン	0	0	0
435	358288	霧の森コテージ	images/inn_image_358288.jpg	6000	4.5	3.5	4.2	0.0	4.2	4.0	7	0	f	f	t	t	t	t	t	f	f	t	f	f	t	f	t	f	t	t	t	2214	1		0	0	0
436	331315	宝泉坊ロッジ	images/inn_image_331315.jpg	3900	0.0	0.0	0.0	0.0	0.0	0.0	30	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	f	f	2214	9	エステ（有料）,マッサージ（有料）,体育館（有料）,グランド（有料）,テニス（有料）,陶芸（有料）,デイユース（有料）	0	0	0
437	333668	ロイヤルホテル 土佐	images/inn_image_333668.jpg	4685	4.0	4.5	3.8	3.9	3.9	3.8	195	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	2253	1	エステ（有料）,ゴルフ（有料）,釣り（有料）,カヌー（有料）,陶芸（有料）,デイユース（有料）	0	0	0
438	322668	湯めぐりの宿楠水閣十種の露天風呂と七種の貸切風呂を楽しむ	images/inn_image_322668.jpg	13000	4.0	4.2	4.4	4.4	4.4	4.2	29	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2288	7	ルームサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
439	355290	脇田温泉 ルートイングランティア若宮	images/inn_image_355290.jpg	6898	3.7	4.4	4.0	4.0	3.9	3.8	27	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	2288	7	将棋,囲碁,マージャン（有料）,体育館（有料）,テニス（有料）,デイユース（有料）	0	0	0
440	330536	八百治博多ホテル【2019年7月6日温泉リニューアル!】	images/inn_image_330536.jpg	4351	4.3	4.1	3.7	0.0	4.2	4.2	207	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	2291	1	クリーニングサービス,マッサージ（有料）,デイユース（有料）	0	0	0
441	391699	都ホテル 博多（2019年9月22日グランドオープン）	images/inn_image_391699.jpg	10000	0.0	0.0	0.0	0.0	0.0	0.0	208	0	t	t	t	t	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	2291	9	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）	0	0	0
442	381792	博多温泉旅館富士の苑	images/inn_image_381792.jpg	3981	4.2	4.5	3.7	0.0	3.4	3.9	11	0	f	t	t	t	t	t	t	f	f	t	t	t	f	t	t	f	f	t	t	2291	7	マッサージ（有料）,将棋,囲碁	0	0	0
443	313868	大丸別荘	images/inn_image_313868.jpg	11000	4.7	4.7	4.2	4.4	4.6	4.4	41	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2292	7	エステ（有料）,マッサージ（有料）,囲碁,マージャン（有料）,ゴルフ（有料）,リフレクソロジー	0	0	0
447	334932	虹の宿Ｈｏｔｅｌ花景色	images/inn_image_334932.jpg	4629	3.5	4.4	3.7	4.0	3.7	3.4	33	0	f	f	t	t	t	t	t	f	f	t	f	f	t	f	t	f	f	t	t	2293	7	マッサージ（有料）,将棋,囲碁,体育館（有料）,グランド（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
448	329363	赤ちゃんにも優しい温泉ふくせんか	images/inn_image_329363.jpg	4105	3.6	4.5	3.9	3.9	4.0	3.2	22	0	f	f	t	t	t	t	t	f	f	t	t	f	t	f	t	t	t	f	t	2293	7	マッサージ（有料）,将棋,囲碁,ゴルフ（有料）,パターゴルフ（有料）,ペットOK（有料）(ケージ持込/部屋,ラウンジ持込OK)	0	0	0
449	315474	ほどあいの宿六峰舘	images/inn_image_315474.jpg	9000	4.6	4.4	4.7	4.5	4.6	4.6	33	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2294	7	クリーニングサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）,デイユース（有料）	0	0	0
450	360864	畳風呂と日本庭園の宿ホテルパーレンス小野屋	images/inn_image_360864.jpg	5500	4.3	4.3	4.6	4.4	4.3	4.3	65	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2294	7	マッサージ（有料）,将棋,囲碁,体育館（有料）,パターゴルフ（有料）,デイユース（有料）	0	0	0
451	370162	スーパーホテルＬｏｈａｓ博多駅・筑紫口天然温泉	images/inn_image_370162.jpg	3703	4.5	4.2	4.1	0.0	4.5	4.6	160	0	t	t	t	t	t	t	t	f	f	t	t	f	t	f	t	f	t	t	t	2294	1	マッサージ（有料）,デイユース（有料）	0	0	0
452	323391	原鶴温泉泰泉閣（たいせんかく）	images/inn_image_323391.jpg	6000	3.8	4.2	4.1	4.3	4.0	3.8	74	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2294	7	ルームサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
453	381342	原鶴温泉原鶴グランドスカイホテル（BBHホテルグループ）	images/inn_image_381342.jpg	4888	3.9	3.9	4.1	4.3	3.9	3.4	121	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	t	t	2294	7	エステ（有料）,マッサージ（有料）,貸自転車,将棋,囲碁,体育館（有料）,グランド（有料）,ゴルフ（有料）	0	0	0
454	369937	ビューホテル平成	images/inn_image_369937.jpg	7000	4.0	4.3	3.6	3.7	3.6	3.8	36	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2294	7	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）	0	0	0
455	373395	旅館とよとみ	images/inn_image_373395.jpg	7000	3.4	4.7	4.1	4.5	4.0	3.3	12	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	2294	1	マッサージ（有料）,マージャン（有料）,パターゴルフ（有料）,デイユース（有料）	0	0	0
456	300630	和魂洋才の宿九州・福岡の奥座敷原鶴温泉花水木	images/inn_image_300630.jpg	6000	4.2	4.0	4.4	4.5	4.5	4.0	16	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2294	1	マッサージ（有料）	0	0	0
457	310430	咸生閣（かんせいかく）	images/inn_image_310430.jpg	5000	2.8	3.6	3.9	4.5	3.4	2.4	15	0	t	f	t	f	t	t	t	f	f	t	t	t	t	t	f	f	f	f	f	2294	1	マッサージ（有料）,貸自転車,マージャン（有料）	0	0	0
458	343740	原鶴温泉旅館佐藤荘	images/inn_image_343740.jpg	5000	3.0	4.8	4.3	4.3	3.7	3.5	10	0	f	f	t	t	t	f	t	f	f	t	f	t	f	f	f	t	f	f	t	2294	5		0	0	0
459	340815	原鶴温泉花と湯の宿やぐるま荘	images/inn_image_340815.jpg	4537	3.0	3.2	0.0	0.0	4.8	3.0	8	0	f	f	t	f	t	t	t	f	f	t	t	t	t	t	f	f	f	t	t	2294	0	マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,ゴルフ（有料）,パターゴルフ（有料）,陶芸（有料）,デイユース（有料）	0	0	0
460	361429	【片の瀬温泉湯元小林】一度は食べたい名物「はかた水炊き」	images/inn_image_361429.jpg	3500	3.5	4.0	3.5	4.3	3.8	3.5	8	0	t	f	t	f	t	t	t	f	f	t	t	f	t	t	f	f	f	t	t	2296	1	デイユース（有料）	0	0	0
461	383240	船小屋温泉ホテル樋口軒	images/inn_image_383240.jpg	7685	4.3	4.0	4.5	4.9	4.5	4.3	17	0	t	t	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2300	1	マッサージ（有料）,ゴルフ（有料）	0	0	0
462	344806	かんぽの宿柳川	images/inn_image_344806.jpg	9120	3.9	4.0	3.8	3.9	3.5	3.8	40	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2302	7	マッサージ（有料）,将棋,囲碁	0	0	0
463	323417	ホテル輝泉荘	images/inn_image_323417.jpg	4166	3.6	3.9	4.3	4.2	4.0	3.7	0	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	f	f	2302	1	マッサージ（有料）	0	0	0
464	313303	ロイヤルホテル 宗像	images/inn_image_313303.jpg	5000	3.9	3.9	3.8	3.8	4.0	3.8	291	0	f	f	t	t	t	t	t	f	f	f	t	f	t	t	t	t	f	t	t	2305	1	クリーニングサービス,マッサージ（有料）,貸自転車（有料）,囲碁（有料）,テニス（有料）,ゴルフ（有料）,乗馬（有料）,デイユース（有料）	0	0	0
465	352988	休暇村志賀島	images/inn_image_352988.jpg	8796	3.8	3.4	3.8	4.1	3.6	3.7	74	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	2319	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,グランド（有料）,テニス,釣り,乗馬（有料）,ダイビング（有料）,デイユース（有料）	0	0	0
466	380940	おおむたハイツ	images/inn_image_380940.jpg	4000	3.5	3.3	3.4	3.8	3.8	3.8	15	0	f	f	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	f	f	2321	1	テニス（有料）	0	0	0
467	362440	秋月温泉料亭旅館清流庵	images/inn_image_362440.jpg	25300	0.0	0.0	0.0	0.0	0.0	0.0	6	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	f	t	t	2322	9	エステ（有料）,マッサージ（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
468	389100	かんぽの宿北九州	images/inn_image_389100.jpg	6342	4.2	4.3	4.2	4.3	4.0	4.1	50	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2323	7	マッサージ（有料）,将棋,囲碁,デイユース（有料）	0	0	0
469	393594	古湯温泉 ＯＮＣＲＩ / おんくり （旧 古湯温泉 吉花亭）	images/inn_image_393594.jpg	10555	4.2	4.3	4.0	4.3	4.3	4.2	38	0	t	f	t	t	t	t	t	f	t	f	f	f	t	t	t	t	t	t	t	2326	1	マッサージ（有料）,マージャン（有料）,デイユース（有料）,リフレクソロジー	0	0	0
470	349817	古湯温泉露天付き離れの宿山あかり	images/inn_image_349817.jpg	20027	4.7	4.5	4.6	4.8	4.4	4.6	6	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2326	1	マッサージ（有料）,グランド（有料）	0	0	0
471	392944	みはらしの宿杉乃家	images/inn_image_392944.jpg	8500	4.4	4.3	4.3	4.6	4.5	4.3	10	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	f	t	t	2326	1	マージャン	0	0	0
474	347718	古湯温泉つかさ旅館	images/inn_image_347718.jpg	7000	4.2	3.9	4.1	4.5	4.3	4.2	9	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	2326	7	マッサージ（有料）,将棋,囲碁,マージャン,グランド（有料）,ゴルフ（有料）,釣り（有料）,陶芸（有料）,デイユース（有料）	0	0	0
475	339000	旅館大和屋	images/inn_image_339000.jpg	10500	3.8	4.4	4.0	4.4	4.5	3.6	10	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	t	t	2326	1	エステ（有料）,マッサージ（有料）,デイユース（有料）	0	0	0
476	328707	旅館東京家	images/inn_image_328707.jpg	6148	4.3	4.4	4.7	4.6	4.7	4.5	8	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	f	f	2326	1		0	0	0
477	345500	扇屋旅館	images/inn_image_345500.jpg	5000	4.1	4.0	4.3	4.1	4.4	3.9	16	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	t	f	f	t	2326	1	マッサージ（有料）,デイユース（有料）	0	0	0
478	344911	鶴の恩返し よみがえりの宿 鶴霊泉	images/inn_image_344911.jpg	6342	4.0	3.8	3.9	4.0	3.8	4.2	9	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	2326	7	マッサージ（有料）,将棋,囲碁,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）	0	0	0
479	315906	河畔の宿千曲荘	images/inn_image_315906.jpg	7000	3.6	3.2	4.0	0.0	3.8	3.4	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2326	7	マッサージ（有料）,将棋,囲碁,マージャン,体育館,グランド（有料）,ゴルフ（有料）,釣り	0	0	0
480	369708	古湯温泉山水−ｓａｎｓｕｉ−	images/inn_image_369708.jpg	8000	0.0	0.0	0.0	0.0	0.0	0.0	5	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	f	f	f	f	f	2326	9		0	0	0
481	339160	ＴＡＱＵＡ	images/inn_image_339160.jpg	7500	4.2	4.1	3.6	3.7	3.6	4.2	34	0	t	f	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	2327	3	エステ（有料）,マッサージ（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,デイユース（有料）	0	0	0
482	349880	小城温泉開泉閣	images/inn_image_349880.jpg	3425	3.4	3.5	3.6	4.0	3.7	3.3	15	0	f	f	t	t	t	t	t	f	f	t	t	t	t	f	f	f	t	f	t	2327	7	マッサージ（有料）,貸自転車,将棋,囲碁,デイユース（有料）	0	0	0
483	318558	懐石宿扇屋	images/inn_image_318558.jpg	19000	4.6	4.2	4.8	4.8	4.7	4.8	7	0	t	t	t	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	t	2332	1	マッサージ（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
484	300500	セントラルホテル武雄温泉駅前（旧セントラルホテル武雄）	images/inn_image_300500.jpg	3935	4.2	3.8	3.8	0.0	4.1	4.3	173	0	t	f	t	t	t	t	t	f	t	t	t	f	t	t	t	f	t	t	t	2332	1	クリーニングサービス,マッサージ（有料）,貸自転車	0	0	0
485	344452	御船山楽園ホテル	images/inn_image_344452.jpg	12925	3.8	3.8	4.0	4.1	3.7	3.9	35	0	f	f	t	t	t	t	t	f	f	t	t	t	t	f	t	f	f	t	t	2332	1	マッサージ（有料）,貸自転車	0	0	0
486	324954	平山旅館	images/inn_image_324954.jpg	15277	4.3	4.5	5.0	4.7	4.4	4.5	8	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	t	t	t	2354	1	マッサージ（有料）,貸自転車（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,乗馬（有料）,ダイビング（有料）	0	0	0
487	388376	海里村上	images/inn_image_388376.jpg	29925	0.0	0.0	0.0	0.0	0.0	0.0	15	0	t	f	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	2354	9	ルームサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
488	397202	旅館海老館	images/inn_image_397202.jpg	4200	3.6	4.6	0.0	0.0	4.6	4.4	7	0	t	f	t	f	t	t	t	f	f	t	t	f	t	f	t	f	f	f	f	2354	1	マッサージ（有料）	0	0	0
489	318804	朝陽の宿平戸温泉郷平戸海上ホテル	images/inn_image_318804.jpg	6250	3.8	3.9	3.8	4.2	4.1	3.7	90	0	f	f	t	t	t	f	t	f	f	t	f	t	t	f	f	t	f	t	f	2357	0	マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,カヌー（有料）	0	0	0
490	356290	里山の隠れ宿 花富亭	images/inn_image_356290.jpg	3425	4.4	4.6	4.7	4.7	4.7	4.6	23	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	t	t	t	t	t	2389	1	マッサージ（有料）,ゴルフ（有料）,陶芸（有料）	0	0	0
491	314700	全室内湯付の宿眺山庭	images/inn_image_314700.jpg	7407	4.4	4.6	4.1	4.3	4.3	4.3	7	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	t	t	t	2389	1	マッサージ（有料）	0	0	0
492	355784	上田屋離れ	images/inn_image_355784.jpg	17592	4.3	4.0	4.7	4.7	4.3	4.4	8	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2389	7	マッサージ（有料）,将棋,囲碁,マージャン,ゴルフ（有料）,デイユース（有料）	0	0	0
493	335665	山鹿温泉清流荘水鏡庵鹿門亭	images/inn_image_335665.jpg	7407	4.1	4.0	4.4	4.4	4.0	4.2	31	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	t	t	2389	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
494	384619	熊本旬彩の宿ゆとりろ山鹿	images/inn_image_384619.jpg	5000	3.9	4.2	3.4	3.7	4.0	3.9	44	0	f	t	t	f	t	t	t	f	f	t	f	t	t	f	t	t	f	t	t	2389	7	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）	0	0	0
495	371735	よへほのお宿	images/inn_image_371735.jpg	6000	3.7	3.9	4.3	4.0	4.4	3.7	8	0	f	t	t	t	t	t	t	f	f	t	f	f	t	f	t	f	t	f	t	2389	1	マッサージ（有料）	0	0	0
496	367585	山鹿温泉ビジネス湯宿湶	images/inn_image_367585.jpg	3888	3.7	4.2	3.5	0.0	3.6	3.7	20	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	f	2389	1	マッサージ	0	0	0
497	318160	山鹿温泉 とろみの湯宿サンパレス松坂	images/inn_image_318160.jpg	6481	3.8	4.4	3.7	4.0	4.1	3.8	8	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	f	f	f	f	2389	1	エステ（有料）,マッサージ（有料）,囲碁,陶芸（有料）	0	0	0
498	327413	山鹿温泉寿三	images/inn_image_327413.jpg	5000	4.0	4.0	0.0	0.0	4.7	4.0	22	0	t	t	t	t	t	t	t	f	f	t	f	t	t	f	f	t	t	t	t	2389	3	クリーニングサービス,エステ（有料）,マッサージ（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,カヌー（有料）,陶芸（有料）	0	0	0
499	335329	山鹿温泉富士ホテル	images/inn_image_335329.jpg	4166	3.8	4.2	4.0	4.0	4.3	3.9	52	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	f	t	f	2389	1	ルームサービス,マッサージ（有料）,ゴルフ（有料）	0	0	0
500	385668	旅館巳喜	images/inn_image_385668.jpg	3009	3.8	4.4	3.3	0.0	3.8	3.5	9	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	f	f	t	t	2389	1	マッサージ（有料）	0	0	0
503	328423	つえたて温泉ひぜんや	images/inn_image_328423.jpg	7000	4.1	4.5	4.4	4.4	4.3	4.0	144	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2390	1	マッサージ（有料）,マージャン（有料）	0	0	0
504	337488	四季の宿わかのや	images/inn_image_337488.jpg	8000	4.4	4.5	4.8	4.9	5.0	4.9	6	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	f	t	2390	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,釣り,デイユース（有料）	0	0	0
505	308676	わいた山荘和風オーベルジュ 山荘わいた	images/inn_image_308676.jpg	14814	4.2	4.7	4.6	4.7	4.4	4.1	6	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2390	1	マッサージ（有料）	0	0	0
506	373252	和楽の里 たけの蔵	images/inn_image_373252.jpg	11000	4.5	4.6	4.3	4.4	4.7	4.6	8	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2390	1	マッサージ（有料）	0	0	0
507	360914	山川ＺＥＮＺＯ	images/inn_image_360914.jpg	10000	4.2	4.5	4.0	4.8	4.7	4.0	8	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	2390	1		0	0	0
508	325620	木の温もりのお宿 ふくみ山荘	images/inn_image_325620.jpg	6300	3.9	4.2	0.0	0.0	4.2	4.4	14	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2390	1	デイユース（有料）	0	0	0
509	327160	旅館山翠	images/inn_image_327160.jpg	11500	3.9	4.2	4.3	4.5	4.1	3.5	15	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2390	1	ルームサービス,エステ（有料）,マッサージ（有料）,マージャン	0	0	0
510	314839	しらはなシンフォニー	images/inn_image_314839.jpg	7000	4.0	4.8	4.2	4.3	4.4	3.9	9	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	f	t	t	2390	1	マッサージ（有料）	0	0	0
511	329110	杖立渓流の宿大自然（ひぜんや和風別館）	images/inn_image_329110.jpg	7000	4.4	4.4	3.8	3.8	4.1	4.2	47	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	f	t	2390	1	マッサージ（有料）,マージャン（有料）	0	0	0
512	355455	旅館いとう	images/inn_image_355455.jpg	6481	4.4	4.7	4.6	4.8	4.7	4.8	0	0	t	t	t	t	t	t	t	f	f	t	f	t	t	t	t	f	f	f	t	2390	1	将棋	0	0	0
513	365604	純和風旅館泉屋	images/inn_image_365604.jpg	5000	3.9	4.5	3.6	4.4	4.2	4.1	14	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	f	t	2390	1	マッサージ（有料）,デイユース（有料）	0	0	0
514	366845	わいた温泉郷やすらぎの宿まつや	images/inn_image_366845.jpg	8500	4.4	4.5	4.6	4.2	4.5	4.7	7	0	t	f	t	t	t	t	t	f	t	t	f	t	t	t	t	t	t	t	t	2390	1	マッサージ（有料）	0	0	0
515	388390	華柚	images/inn_image_388390.jpg	9259	0.0	0.0	0.0	0.0	0.0	0.0	11	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	t	t	t	2390	9	マッサージ（有料）,将棋（有料）	0	0	0
516	318842	奥日田温泉うめひびき	images/inn_image_318842.jpg	10500	4.9	4.8	4.6	4.7	4.7	4.8	32	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	2495	1	マッサージ（有料）,将棋	0	0	0
517	388605	旅籠かやうさぎ	images/inn_image_388605.jpg	8638	4.4	4.2	4.4	4.7	4.5	4.7	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2495	1	エステ（有料）,マッサージ（有料）,デイユース（有料）	0	0	0
518	318954	水郷日田の絶景宿ひなの里山陽館	images/inn_image_318954.jpg	6000	4.3	3.8	4.4	4.3	4.6	4.4	44	0	t	t	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	t	2495	1	クリーニングサービス,エステ（有料）,マッサージ（有料）	0	0	0
519	310402	日田温泉亀山亭ホテル	images/inn_image_310402.jpg	4629	3.9	3.8	3.7	3.9	4.3	4.0	38	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2495	7	マッサージ（有料）,貸自転車,将棋,囲碁,マージャン（有料）	0	0	0
520	347296	日田温泉ホテル＆レストラン KIZAN倶楽部	images/inn_image_347296.jpg	8518	4.5	4.6	4.7	4.8	4.8	4.7	4	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	f	t	t	t	2495	1	エステ（有料）,マッサージ（有料）,ゴルフ	0	0	0
521	324941	日田温泉日田の宿よろづや	images/inn_image_324941.jpg	4629	3.9	4.4	4.8	4.8	4.5	4.1	18	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	f	t	2495	0	クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁,マージャン（有料）	0	0	0
522	327118	【小京都の湯みくまホテル】全客室から三隈川を眺める絶景宿	images/inn_image_327118.jpg	6462	4.0	4.0	3.6	4.1	4.1	3.8	45	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	f	2495	7	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
523	329798	日田温泉リバーサイドホテル山水館	images/inn_image_329798.jpg	5500	4.0	3.7	4.2	4.4	4.5	3.8	24	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	2495	1	ルームサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
524	395462	ＫｏｔｏｈｉｒａＧｕｅｓｔＨｏｕｓｅ〜縁〜ｅｎ〜	images/inn_image_395462.jpg	5092	0.0	0.0	0.0	0.0	0.0	0.0	4	0	f	f	t	f	t	f	t	f	f	f	t	f	f	f	t	f	f	t	f	2495	5		0	0	0
525	346540	山荘天水	images/inn_image_346540.jpg	20833	4.6	4.9	4.6	4.7	4.7	4.7	19	0	t	f	t	t	t	t	t	f	t	t	t	f	t	t	t	t	t	t	t	2496	1	マッサージ（有料）	0	0	0
526	311506	湯ノ釣温泉旅館 渓仙閣	images/inn_image_311506.jpg	6064	4.2	4.8	4.2	4.3	4.5	4.1	10	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	t	f	2496	1	マッサージ（有料）,マージャン（有料）,ゴルフ（有料）,釣り,そば打ち（有料）	0	0	0
527	385008	五室五湯の宿華水（かすい）	images/inn_image_385008.jpg	15500	4.3	4.8	4.6	4.9	4.6	4.6	5	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2496	7	将棋,囲碁,ゴルフ	0	0	0
528	342394	高屋温泉	images/inn_image_342394.jpg	5092	3.8	3.4	4.3	4.2	4.4	3.8	14	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	f	f	f	f	t	2570	7	将棋,囲碁,体育館,グランド,デイユース（有料）,ペットOK(ケージ持込)	0	0	0
529	357185	十兵衛の宿	images/inn_image_357185.jpg	8500	4.4	4.3	4.5	4.7	3.7	4.3	6	0	t	t	t	t	t	t	t	f	f	t	t	f	t	f	t	f	t	t	t	2574	1		0	0	0
530	345121	京町観光ホテル	images/inn_image_345121.jpg	7000	3.9	4.1	4.1	4.5	4.1	3.8	36	0	f	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	t	t	2574	1		0	0	0
531	365982	京町温泉 洞窟風呂のある宿玉泉館	images/inn_image_365982.jpg	5000	3.7	4.3	4.2	4.3	4.0	3.5	13	0	f	t	t	t	t	t	t	f	f	t	f	t	t	f	f	f	f	f	f	2574	1		0	0	0
533	303925	旬の料理とお湯の宿常盤荘	images/inn_image_303925.jpg	6925	3.0	3.5	4.2	4.0	3.6	3.3	13	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	f	t	f	t	2580	3	ルームサービス,マッサージ（有料）,体育館（有料）,グランド（有料）,ゴルフ（有料）,パターゴルフ（有料）,デイユース（有料）	0	0	0
534	324606	ホテル青島サンクマール	images/inn_image_324606.jpg	6000	4.6	4.5	4.3	4.6	4.5	4.4	40	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	t	t	2584	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
582	300776	湯宿だいいち	images/inn_image_300776.jpg	15000	4.6	4.8	4.8	4.6	4.7	4.7	38	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	t	t	22	0	ルームサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
536	305475	「子宝・安産の宿」地蔵庵	images/inn_image_305475.jpg	8796	4.6	4.8	4.9	5.0	4.9	4.5	6	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2584	3	ルームサービス,クリーニングサービス,マッサージ（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パラグライダー（有料）,デイユース（有料）	0	0	0
537	309928	青島天然温泉 ルートイングランティアあおしま太陽閣	images/inn_image_309928.jpg	4444	3.9	4.3	3.9	4.1	3.9	3.9	153	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	t	2584	1	マッサージ（有料）,貸自転車（有料）,テニス（有料）,デイユース（有料）	0	0	0
538	346376	青島グランドホテル	images/inn_image_346376.jpg	2300	3.8	4.2	3.9	3.7	4.0	3.6	98	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	f	t	f	2584	0	マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館,グランド,テニス,ゴルフ,パターゴルフ,釣り,デイユース（有料）	0	0	0
539	331902	青島フィッシャーマンズビーチサイドホステル＆スパ	images/inn_image_331902.jpg	2777	4.2	4.2	4.1	0.0	4.4	4.7	79	0	t	t	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	t	f	2584	2		0	0	0
540	322717	【手塚ryokan】源泉かけ流しの隠れ家旅館	images/inn_image_322717.jpg	9500	4.6	4.7	4.8	5.0	4.7	4.5	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	2622	1	エステ（有料）	0	0	0
541	372704	旅館玉之湯	images/inn_image_372704.jpg	10092	4.4	4.6	4.3	4.6	4.4	4.6	10	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	2622	1	マッサージ（有料）,デイユース（有料）	0	0	0
542	335739	ホテルグリーンヒル 鹿児島	images/inn_image_335739.jpg	4259	4.5	4.4	3.6	4.2	4.0	4.3	50	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2622	7	クリーニングサービス,マッサージ（有料）,囲碁,マージャン（有料）,ゴルフ,デイユース（有料）	0	0	0
543	396672	ホテル桃晃	images/inn_image_396672.jpg	3611	4.0	4.1	3.7	0.0	4.1	4.0	40	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	f	f	t	t	2622	3	クリーニングサービス,マッサージ（有料）,貸自転車,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,デイユース（有料）	0	0	0
544	314804	旅館薩摩の里	images/inn_image_314804.jpg	5092	4.0	4.4	3.4	0.0	3.6	4.2	20	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	f	f	f	t	f	2622	3	マッサージ（有料）,将棋,囲碁,マージャン,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,パラグライダー（有料）,陶芸（有料）,デイユース（有料）	0	0	0
545	393380	ラビスタ霧島ヒルズ	images/inn_image_393380.jpg	12777	4.6	4.7	4.4	4.1	4.2	4.7	105	0	t	f	t	t	t	t	t	f	t	f	f	t	t	t	t	t	t	t	t	2631	1	エステ（有料）,デイユース（有料）,ペットOK(ケージ有り/ケージ持込/部屋,ラウンジ持込OK)	0	0	0
546	398766	全室露天風呂付き客室が人気の宿優湯庵	images/inn_image_398766.jpg	8925	4.7	4.7	4.0	4.2	4.6	4.6	17	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	2631	1	エステ（有料）,マッサージ（有料）	0	0	0
547	344750	全室露天風呂付onsengarden湯本庵清姫	images/inn_image_344750.jpg	11574	4.4	4.5	4.3	4.4	4.1	4.4	9	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2631	1		0	0	0
548	311199	森深き、名泉の宿霧島ホテル	images/inn_image_311199.jpg	8333	4.1	4.8	4.2	4.3	4.3	4.2	95	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	f	t	t	2631	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,ゴルフ（有料）,乗馬（有料）,陶芸（有料）	0	0	0
549	305754	ホテル京セラ	images/inn_image_305754.jpg	4629	4.3	4.0	4.1	3.9	4.2	4.4	328	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2631	7	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋,囲碁,デイユース（有料）	0	0	0
550	376750	ロワジール スパタワー 那覇	images/inn_image_376750.jpg	7083	4.5	4.4	4.3	0.0	4.2	4.4	89	0	t	t	t	t	t	t	t	f	t	f	t	t	t	t	t	t	t	t	t	2707	4	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,釣り（有料）,ダイビング（有料）,ネイル,リフレクソロジー,デリカ,パティスリー,ショッピングモール	0	0	0
551	343524	ロワジールホテル 那覇	images/inn_image_343524.jpg	3660	4.2	3.8	3.8	0.0	3.9	4.0	533	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	f	t	t	t	2707	1	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋,囲碁,釣り（有料）,ダイビング（有料）	0	0	0
552	311822	ラ・ティーダ西表リゾート	images/inn_image_311822.jpg	5925	4.3	4.2	3.7	0.0	3.8	3.7	32	0	t	f	t	t	t	t	t	f	f	t	f	f	t	f	t	f	f	t	f	2709	1	マッサージ（有料）,貸自転車（有料）,カヌー（有料）	0	0	0
553	356578	シギラベイサイドスイートアラマンダ	images/inn_image_356578.jpg	15277	4.7	4.3	4.5	4.2	4.3	4.5	174	0	t	f	t	t	t	t	t	t	t	f	t	t	t	t	t	f	t	t	t	2710	1	ルームサービス,クリーニングサービス,エステ（有料）,貸自転車（有料）,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,カヌー（有料）,陶芸（有料）,ペットOK（有料）(ケージ有り/ケージ持込/部屋,ラウンジ持込OK)	0	0	0
554	353092	ホテルシーブリーズカジュアル	images/inn_image_353092.jpg	4675	4.2	4.0	3.6	0.0	4.5	4.8	170	0	t	f	t	t	t	t	t	f	t	f	t	f	t	f	t	f	f	t	t	2710	1	貸自転車（有料）,ゴルフ（有料）,ダイビング（有料）,カヌー（有料）	0	0	0
556	375822	ウェルネスヴィラブリッサ	images/inn_image_375822.jpg	5092	4.6	3.4	0.0	0.0	4.1	4.1	95	0	t	f	t	t	t	t	t	f	t	f	t	f	t	f	t	f	f	t	f	2710	1	クリーニングサービス,マッサージ（有料）,貸自転車（有料）,ゴルフ（有料）,釣り（有料）,乗馬（有料）,ダイビング（有料）,カヌー（有料）	0	0	0
558	396620	ユインチホテル南城	images/inn_image_396620.jpg	4212	4.3	4.5	4.1	4.4	4.1	4.1	144	0	t	f	t	t	t	t	t	f	t	f	f	f	t	t	t	f	t	t	t	2711	3	エステ（有料）,マッサージ（有料）,貸自転車（有料）,囲碁（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,ダイビング（有料）	0	0	0
559	352977	琉球温泉瀬長島ホテル	images/inn_image_352977.jpg	7777	4.3	4.6	4.0	4.3	4.1	4.5	100	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	2712	1	クリーニングサービス,エステ（有料）,マッサージ（有料）	0	0	0
560	307948	ホテルオリオンモトブリゾート＆スパ	images/inn_image_307948.jpg	12314	4.8	4.2	4.5	4.4	4.7	4.9	238	0	t	t	t	t	t	t	t	f	t	f	t	t	t	t	t	t	t	t	t	2713	1	クリーニングサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,カヌー（有料）,陶芸（有料）	0	0	0
561	346964	ザ・ビーチタワー沖縄	images/inn_image_346964.jpg	5435	4.2	3.9	4.2	4.2	4.3	3.9	280	0	t	t	t	t	t	t	t	f	t	f	t	f	t	t	t	f	t	t	t	2714	8	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,デイユース（有料）,ペットOK（有料）(ケージ持込/部屋,ラウンジ持込OK),リフレクソロジー,ペットホテル	0	0	0
562	354596	ＡＪリゾートアイランド伊計島	images/inn_image_354596.jpg	5740	4.5	4.3	4.3	3.9	4.3	4.4	86	0	t	f	t	t	t	t	t	f	t	f	f	f	t	f	t	f	t	t	t	2715	1	貸自転車（有料）,テニス	0	0	0
563	330474	白金温泉郷森の旅亭びえい	images/inn_image_330474.jpg	18333	4.4	4.6	4.6	4.8	4.6	4.7	17	0	t	f	t	t	t	t	t	f	t	f	t	t	t	t	t	t	t	t	t	52	1	ルームサービス,マッサージ（有料）,ゴルフ（有料）,乗馬（有料）,陶芸（有料）,デイユース（有料）	0	0	0
564	310138	白金四季の森ホテルパークヒルズ	images/inn_image_310138.jpg	3564	3.6	4.1	3.8	3.8	3.9	3.7	174	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	52	1	マージャン（有料）,デイユース（有料）	0	0	0
565	312613	十勝岳温泉カミホロ荘	images/inn_image_312613.jpg	11574	3.9	4.5	4.2	4.1	4.3	4.2	23	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	f	f	t	t	t	52	7	将棋,囲碁,マージャン（有料）,乗馬（有料）,ラフティング（有料）,カヌー（有料）,デイユース（有料）	0	0	0
566	337872	湯元白金温泉ホテル	images/inn_image_337872.jpg	6620	3.2	4.2	3.3	3.2	3.5	3.5	55	0	f	f	t	t	t	t	t	f	f	t	f	t	t	f	t	f	t	f	f	52	0	ルームサービス,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）	0	0	0
567	329401	大雪山白金観光ホテル	images/inn_image_329401.jpg	10185	3.5	4.3	3.6	3.4	3.7	3.5	74	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	f	f	52	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
568	320246	北こぶし知床ホテル＆リゾート	images/inn_image_320246.jpg	10185	4.4	4.3	4.4	4.5	4.5	4.5	181	0	t	t	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	t	t	16	0	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,リフレクソロジー	0	0	0
569	365748	KIKI知床ナチュラルリゾート	images/inn_image_365748.jpg	8666	4.3	4.3	4.4	4.5	4.7	4.4	176	0	t	f	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	t	t	16	0	将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
570	304893	知床第一ホテル	images/inn_image_304893.jpg	10592	4.4	4.4	4.3	4.4	4.2	4.2	209	0	t	f	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	16	0	ルームサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
571	372051	ホテル清さと	images/inn_image_372051.jpg	20064	4.6	4.7	4.9	5.0	4.9	4.8	11	0	t	f	t	t	t	t	t	f	t	f	t	f	t	t	t	t	t	t	t	16	1		0	0	0
572	317499	ホテル地のはて	images/inn_image_317499.jpg	7407	4.1	4.4	4.0	4.2	4.2	4.1	22	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	f	f	f	f	f	16	7	将棋,囲碁,マージャン	0	0	0
573	320778	知床天然温泉 ルートイングランティア知床 -斜里駅前-	images/inn_image_320778.jpg	5277	4.3	4.1	3.9	0.0	4.0	4.3	105	0	t	t	t	t	t	t	t	f	t	f	t	f	t	f	t	f	f	t	f	16	1	クリーニングサービス	0	0	0
574	316661	ホテル知床	images/inn_image_316661.jpg	7740	4.0	4.2	4.1	4.2	4.1	4.0	271	0	t	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	f	f	16	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）,ペットOK（有料）(ケージ持込/部屋,ラウンジ持込OK)	0	0	0
575	317028	【世界自然遺産の宿】しれとこ村つくだ荘	images/inn_image_317028.jpg	5555	3.5	3.8	4.1	4.6	4.1	3.7	55	0	f	f	t	t	t	t	t	f	f	t	t	t	t	f	t	f	t	t	f	16	1	貸自転車（有料）,将棋,釣り（有料）,ダイビング（有料）,カヌー（有料）	0	0	0
576	359680	ホテル緑清荘	images/inn_image_359680.jpg	5018	4.5	4.1	3.8	3.9	4.2	4.4	42	0	f	f	t	f	t	t	t	f	t	f	t	f	t	f	t	f	f	f	f	16	0	将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
577	358302	ホテル季風クラブ知床	images/inn_image_358302.jpg	7638	4.5	4.1	4.6	4.7	4.5	4.7	0	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	f	t	t	t	16	1	貸自転車（有料）	0	0	0
578	361610	流氷の宿海に桂田（旧夕映えの宿国民宿舎桂田）	images/inn_image_361610.jpg	4166	3.4	4.1	3.9	4.1	4.0	3.7	20	0	f	f	t	t	t	t	t	f	f	t	t	f	t	f	t	f	t	t	f	16	0	マッサージ（有料）,貸自転車（有料）,釣り,ダイビング,カヌー	0	0	0
579	342340	温泉民宿 酋長の家	images/inn_image_342340.jpg	5092	3.7	3.6	4.4	4.6	4.5	4.0	15	0	f	t	t	f	t	t	t	f	f	t	f	t	t	f	f	f	f	t	f	16	1	貸自転車（有料）	0	0	0
20	345672	ホテル安比グランド本館＆タワー	images/inn_image_345672.jpg	4833	4.2	3.9	4.4	4.1	3.9	4.1	400	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	t	f	t	t	f	183	6	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,貸しスキー（有料）,貸しボード（有料）,貸自転車,将棋,囲碁,マージャン（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,パラグライダー（有料）,ペットOK（有料）(ケージ有り),ジム,ＡＴＭ,チャペル,ペットホテル	0	0	0
28	328262	アクティブリゾーツ 岩手八幡平	images/inn_image_328262.jpg	5833	3.8	4.1	4.3	4.0	3.8	3.9	167	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	t	t	188	3	テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,乗馬（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
51	322274	愉海亭みやじま	images/inn_image_322274.jpg	7000	4.3	4.4	4.0	4.4	4.2	4.2	28	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	399	3	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,パラグライダー（有料）,乗馬（有料）,ダイビング（有料）,ラフティング（有料）,カヌー（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
581	320084	知床夕陽のあたる家 ONSEN HOSTEL	images/inn_image_320084.jpg	5500	3.9	4.0	0.0	4.8	3.8	4.3	24	0	f	f	t	f	t	f	t	f	f	f	f	f	f	t	f	f	t	f	f	16	5		0	0	0
584	317358	支笏湖第一寶亭留翠山亭	images/inn_image_317358.jpg	11550	4.3	4.3	3.9	4.1	4.3	4.3	29	0	t	f	t	t	t	t	t	f	t	t	f	t	t	t	t	t	t	t	t	40	1	釣り（有料）,乗馬（有料）,ダイビング（有料）,ラフティング（有料）,カヌー（有料）	0	0	0
585	341087	丸駒温泉旅館	images/inn_image_341087.jpg	6800	3.9	4.4	4.0	4.3	4.0	3.8	55	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	f	f	t	f	40	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,釣り（有料）,デイユース（有料）	0	0	0
586	303828	レイクサイドヴィラ翠明閣	images/inn_image_303828.jpg	25972	4.4	4.5	4.9	4.9	4.9	4.5	8	0	t	f	t	t	t	t	t	f	f	f	t	t	t	t	t	t	t	t	t	40	1	マッサージ（有料）	0	0	0
587	337480	休暇村支笏湖	images/inn_image_337480.jpg	8537	4.2	4.2	4.5	4.3	4.5	4.4	38	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	f	t	t	f	40	7	貸しスキー（有料）,将棋,囲碁,マージャン（有料）,乗馬（有料）,ダイビング（有料）,ラフティング（有料）,カヌー（有料）	0	0	0
588	367212	しこつ湖鶴雅別荘碧の座	images/inn_image_367212.jpg	67000	0.0	0.0	0.0	0.0	0.0	0.0	25	0	t	f	t	t	t	t	t	t	t	f	t	t	t	t	t	t	t	t	t	40	9	ルームサービス,エステ（有料）,マッサージ（有料）	0	0	0
589	330227	秩父別温泉 ちっぷ・ゆう＆ゆ	images/inn_image_330227.jpg	7138	0.0	0.0	0.0	0.0	0.0	0.0	18	0	f	t	t	t	t	t	t	f	f	t	f	f	t	t	t	f	f	t	f	77	9	貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）	0	0	0
590	339592	三笠天然温泉太古の湯スパリゾートHOTELTAIKO・別邸旅籠	images/inn_image_339592.jpg	2777	4.2	4.6	4.0	4.2	4.0	4.3	50	0	t	t	t	t	t	t	t	f	f	f	t	f	t	t	t	t	t	t	t	79	1	エステ（有料）,マッサージ（有料）,将棋（有料）	0	0	0
591	369832	満天の星空を堪能するリゾート芦別温泉スターライトホテル	images/inn_image_369832.jpg	6000	3.7	4.1	3.9	3.3	3.8	3.7	69	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	f	t	t	79	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館,グランド,テニス,陶芸（有料）,デイユース（有料）	0	0	0
592	342622	山の旅籠 山湖荘	images/inn_image_342622.jpg	10000	4.6	4.3	4.8	5.0	4.8	4.6	8	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	f	f	t	t	f	57	7	貸自転車（有料）,将棋,囲碁	0	0	0
593	340961	糠平舘観光ホテル	images/inn_image_340961.jpg	4490	3.3	4.4	3.9	3.9	4.1	3.6	88	0	f	f	t	t	t	t	t	f	f	t	f	f	t	f	t	t	t	f	t	57	0	貸しスキー（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
594	336226	糠平温泉ホテル	images/inn_image_336226.jpg	8000	3.3	4.2	4.4	4.9	4.7	4.0	15	0	f	f	t	t	t	t	t	f	f	t	t	f	t	f	f	t	t	f	f	57	0	貸しスキー（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,カヌー（有料）,ペットOK	0	0	0
595	358120	みついし昆布温泉蔵三	images/inn_image_358120.jpg	6481	4.4	4.3	4.1	4.4	4.2	4.4	16	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	75	1	乗馬（有料）	0	0	0
596	314931	新冠温泉レ・コードの湯ホテルヒルズ	images/inn_image_314931.jpg	2518	4.0	4.3	3.7	3.4	3.9	4.0	47	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	75	7	クリーニングサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,乗馬（有料）	0	0	0
597	353695	天然温泉さくらの湯ホテルローレル	images/inn_image_353695.jpg	2759	4.1	4.4	4.4	4.8	4.5	4.3	0	0	f	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	t	75	1	クリーニングサービス,マッサージ（有料）,乗馬（有料）	0	0	0
598	366540	沙流川温泉ひだか高原荘	images/inn_image_366540.jpg	4537	3.8	3.6	4.6	4.3	4.0	4.0	51	0	f	f	t	t	t	t	t	f	f	t	f	f	t	f	f	f	f	t	t	75	1	貸しスキー（有料）,貸しボード（有料）,貸自転車,テニス（有料）,パターゴルフ（有料）,ラフティング（有料）	0	0	0
54	374838	湯野浜温泉竹屋ホテル	images/inn_image_374838.jpg	13000	3.8	3.8	3.9	4.4	4.2	3.8	41	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	f	t	t	t	t	399	1	マッサージ（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
61	303760	湯野浜温泉 源泉かけ流しの温泉民宿 真砂子屋	images/inn_image_303760.jpg	4027	3.6	4.4	3.5	4.7	4.2	4.2	11	0	f	t	t	t	f	t	t	f	f	t	f	f	t	f	f	f	t	f	f	399	3	マッサージ（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,パラグライダー（有料）,ダイビング（有料）,カヌー（有料）,陶芸（有料）,デイユース（有料）	0	0	0
81	310381	ごちそう様の宿ホテル天竜閣	images/inn_image_310381.jpg	6555	3.7	4.2	3.8	4.0	4.4	3.9	30	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	489	7	ルームサービス,エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,パターゴルフ（有料）,デイユース（有料）	0	0	0
107	359605	土湯温泉向瀧旅館	images/inn_image_359605.jpg	3518	4.3	4.4	4.2	4.5	4.3	4.3	48	0	t	f	t	f	t	t	t	f	f	t	t	t	t	f	t	f	t	t	t	494	7	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,ゴルフ（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
113	339312	ホテルエピナール那須	images/inn_image_339312.jpg	6018	4.5	4.3	4.5	4.6	4.5	4.5	295	0	t	t	t	t	t	t	t	f	t	f	t	t	t	t	t	t	t	t	t	588	3	エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,乗馬（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
131	389166	あんこうの宿まるみつ旅館	images/inn_image_389166.jpg	13898	4.4	4.6	4.7	4.9	4.9	4.8	13	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	f	t	t	t	t	792	1	貸自転車	0	0	0
133	322659	五浦観光ホテル本館／別館大観荘	images/inn_image_322659.jpg	14500	0.0	0.0	0.0	0.0	0.0	0.0	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	t	t	t	794	9	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,釣り（有料）,そば打ち（有料）	0	0	0
154	388752	里山で過ごすひととき湯の澤鉱泉	images/inn_image_388752.jpg	6000	0.0	0.0	0.0	0.0	0.0	0.0	7	0	f	f	t	f	t	t	t	f	f	t	t	t	t	f	t	f	f	f	f	829	9	将棋,囲碁,マージャン（有料）	0	0	0
163	337414	秩父小鹿野温泉旅館梁山泊	images/inn_image_337414.jpg	5000	3.4	4.2	3.7	4.6	4.7	4.0	0	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	f	849	3	ルームサービス,マッサージ（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,乗馬（有料）,ラフティング（有料）,カヌー（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
174	324333	白子ニューシーサイドホテル	images/inn_image_324333.jpg	4500	3.8	3.8	4.1	4.6	4.1	3.8	0	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	f	t	f	t	t	862	7	マッサージ（有料）,将棋,囲碁,マージャン（有料）,グランド（有料）,テニス（有料）,デイユース（有料）	0	0	0
177	393700	ホテル白洋	images/inn_image_393700.jpg	4000	3.4	4.2	4.3	4.4	4.2	3.6	0	0	t	f	t	t	t	t	t	f	f	t	f	t	t	f	t	t	t	t	t	862	3	マッサージ（有料）,貸自転車（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,乗馬（有料）,デイユース（有料）	0	0	0
198	318840	自家源泉の宿矢原荘	images/inn_image_318840.jpg	3703	0.0	0.0	0.0	0.0	0.0	0.0	0	0	f	f	t	f	t	t	t	f	f	t	f	t	t	t	f	f	f	f	f	877	9	マッサージ（有料）,釣り（有料）	0	0	0
201	332623	味覚と眺望の宿ホテル南海荘（HMIホテルグループ）	images/inn_image_332623.jpg	6120	3.8	3.4	4.2	4.3	3.9	3.6	99	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	878	7	ルームサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋,囲碁,マージャン（有料）,体育館（有料）,ゴルフ（有料）,釣り（有料）	0	0	0
224	303348	宇宙と地中から元気をもらう宿七沢荘（日本の名湯百選）	images/inn_image_303348.jpg	7200	2.9	3.8	3.5	3.8	3.2	3.0	46	0	t	t	t	f	t	t	t	f	f	t	t	t	t	t	f	f	f	f	f	956	0	将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,ペットOK（有料）(ケージ有り/ペット用風呂有り)	0	0	0
229	391941	富士山温泉別墅然然（べっしょささ）	images/inn_image_391941.jpg	39000	4.8	4.9	4.8	4.5	4.9	4.9	17	0	t	f	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	t	1004	3	ルームサービス,クリーニングサービス,エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,そば打ち（有料）,チャペル	0	0	0
246	329122	【ホテル花いさわ】駅チカ×敷地内湧出×朝食バイキング	images/inn_image_329122.jpg	5000	3.5	4.0	4.0	4.0	3.9	3.4	72	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1012	3	ルームサービス,マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
247	359912	石和温泉美と健康と癒しの宿ホテル八田	images/inn_image_359912.jpg	7481	4.0	4.7	4.1	4.1	4.2	4.0	49	0	f	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1012	3	ルームサービス,マッサージ（有料）,貸自転車,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
268	328398	西発哺温泉ホテル	images/inn_image_328398.jpg	8611	0.0	0.0	0.0	0.0	0.0	0.0	29	0	f	f	t	f	t	f	t	f	f	t	t	t	f	t	f	f	f	t	f	1095	5	貸しスキー（有料）,貸しボード（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,デイユース（有料）	0	0	0
272	316290	ホテルニュー桂	images/inn_image_316290.jpg	5000	3.5	3.6	3.6	3.7	4.0	3.5	58	0	f	f	t	t	t	t	t	f	f	t	f	t	t	t	f	f	f	f	f	1197	3	ルームサービス,クリーニングサービス,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,陶芸（有料）,そば打ち（有料）	0	0	0
291	323502	お酒のお宿喜泉	images/inn_image_323502.jpg	7000	4.0	4.2	4.2	4.6	4.6	3.9	48	0	t	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	t	t	t	1299	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ラフティング（有料）,デイユース（有料）	0	0	0
318	381128	源泉の一軒宿ふくみつ華山温泉	images/inn_image_381128.jpg	10490	4.6	4.6	4.8	4.9	4.8	4.7	22	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	t	t	t	t	1339	1	エステ（有料）,マッサージ（有料）,将棋	0	0	0
323	317036	立山吉峰温泉立山グリーンパーク吉峰（旧よしみね山荘）	images/inn_image_317036.jpg	8796	4.7	4.5	4.5	4.5	4.0	4.9	10	0	f	f	t	t	t	t	t	f	f	t	f	f	t	t	f	f	t	t	t	1348	0	貸自転車（有料）,将棋（有料）,囲碁（有料）,グランド,パターゴルフ（有料）,陶芸（有料）	0	0	0
344	312188	加太淡嶋温泉  大阪屋ひいなの湯	images/inn_image_312188.jpg	8000	4.1	4.1	4.7	4.8	4.3	4.3	20	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	1905	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
348	371101	紀州温泉ありがとうの湯漁火の宿シーサイド観潮	images/inn_image_371101.jpg	7000	4.0	3.8	4.7	4.7	4.3	3.9	20	0	t	f	t	t	t	t	t	f	f	t	f	t	t	t	t	t	t	t	t	1906	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,デイユース（有料）	0	0	0
372	344382	全室源泉温泉掛け流し松江シティホテル本館	images/inn_image_344382.jpg	3055	3.3	3.7	2.8	0.0	3.8	3.5	40	0	t	t	t	f	t	t	t	f	f	t	t	f	t	t	t	f	f	t	f	1980	1	ルームサービス,クリーニングサービス,貸自転車	0	0	0
387	389946	竹林の中の美人湯・離れ露天風呂やさしさの宿竹亭	images/inn_image_389946.jpg	4629	4.3	4.1	4.1	4.3	4.2	4.2	33	0	t	f	t	t	t	t	t	f	f	t	t	t	t	f	t	t	t	f	t	2028	0	マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,ゴルフ（有料）,陶芸（有料）,ペットOK（有料）(ケージ有り/ケージ持込/部屋,ラウンジ持込OK)	0	0	0
396	320490	湯郷温泉ふくます亭	images/inn_image_320490.jpg	7222	4.1	3.5	4.2	4.4	4.7	3.9	24	0	f	f	t	t	t	t	t	f	f	t	f	f	t	t	t	t	f	f	t	2028	3	エステ（有料）,マッサージ（有料）,将棋（有料）,囲碁（有料）,マージャン（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,陶芸（有料）	0	0	0
422	307396	リゾートホテルオリビアン小豆島	images/inn_image_307396.jpg	4500	3.8	4.1	4.3	4.4	3.9	3.7	98	0	t	f	t	t	t	t	t	f	f	t	t	f	t	t	t	f	f	t	t	2189	3	クリーニングサービス,エステ（有料）,マッサージ（有料）,囲碁（有料）,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,陶芸（有料）,ペットOK(ケージ有り)	0	0	0
446	345187	筑後川温泉 清乃屋-きよのや- 自家源泉掛け流しの宿	images/inn_image_345187.jpg	4074	4.1	4.5	4.3	4.2	4.2	4.1	15	0	t	f	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	2293	3	ルームサービス,マッサージ（有料）,将棋,囲碁,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り,陶芸（有料）,そば打ち（有料）,デイユース（有料）	0	0	0
473	372615	富士ビラ山華の正	images/inn_image_372615.jpg	9250	4.2	4.5	3.7	4.0	4.3	4.3	15	0	t	f	t	f	t	t	t	f	f	t	f	t	t	f	f	t	t	t	t	2326	7	エステ（有料）,マッサージ（有料）,将棋,囲碁,マージャン（有料）	0	0	0
501	335355	山鹿のおかんの宿新青山荘	images/inn_image_335355.jpg	2314	3.3	4.0	3.4	0.0	3.3	3.5	11	0	f	t	t	t	t	t	t	f	f	t	t	f	t	f	f	f	f	t	f	2389	1		0	0	0
502	327290	杖立温泉旅館日田屋（熊本県阿蘇郡）	images/inn_image_327290.jpg	6000	4.6	4.7	4.8	4.9	5.0	4.8	0	0	t	t	t	t	t	t	t	f	t	t	f	t	t	t	t	t	t	t	t	2390	3	ルームサービス,マッサージ（有料）,囲碁,マージャン,体育館（有料）,グランド（有料）,テニス（有料）,ゴルフ（有料）,釣り（有料）,パラグライダー（有料）,乗馬（有料）,デイユース（有料）	0	0	0
532	300805	旅館あけぼの荘	images/inn_image_300805.jpg	5185	3.8	4.0	4.5	0.0	3.8	4.0	16	0	f	t	t	t	t	t	t	f	f	t	t	t	t	t	f	f	f	t	f	2574	1	エステ（有料）,体育館（有料）,グランド（有料）,デイユース（有料）	0	0	0
535	344027	ＡＮＡ ホリデイ・イン リゾート 宮崎	images/inn_image_344027.jpg	6898	4.3	4.0	4.0	3.9	4.0	4.0	214	0	t	f	t	t	t	t	t	f	t	f	t	t	t	t	t	t	t	t	t	2584	1	クリーニングサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,ゴルフ（有料）,パターゴルフ（有料）,釣り（有料）,ダイビング（有料）,カヌー（有料）,デイユース（有料）,ジム,チャペル	0	0	0
555	338156	アラマンダインギャーコーラルヴィレッジ	images/inn_image_338156.jpg	13750	4.9	4.6	4.6	0.0	4.1	4.2	72	0	t	f	t	t	t	t	t	f	t	f	t	f	t	f	t	t	t	t	t	2710	1	エステ（有料）,貸自転車（有料）,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,カヌー（有料）	0	0	0
557	334696	ホテルブリーズベイマリーナ	images/inn_image_334696.jpg	8240	3.8	3.7	3.6	4.0	3.8	3.6	307	0	t	f	t	t	t	t	t	f	t	f	t	f	t	f	t	t	t	t	t	2710	1	クリーニングサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,ゴルフ（有料）,釣り（有料）,ダイビング（有料）,カヌー（有料）,陶芸（有料）,ペットOK（有料）(ケージ有り/ケージ持込)	0	0	0
580	359672	知床ノーブルホテル	images/inn_image_359672.jpg	8333	4.1	3.7	3.5	3.3	2.9	3.9	48	0	t	t	t	t	t	t	t	f	f	t	t	t	t	t	t	t	t	t	t	16	1	釣り（有料）	0	0	0
583	395279	しこつ湖鶴雅リゾートスパ水の謌	images/inn_image_395279.jpg	16296	4.4	4.4	4.6	4.6	4.7	4.7	53	0	t	f	t	t	t	t	t	f	t	t	t	t	t	t	t	t	f	t	t	40	0	ルームサービス,エステ（有料）,マッサージ（有料）,貸自転車（有料）,将棋（有料）,囲碁（有料）,カヌー（有料）,デイユース（有料）,ペットOK（有料）(ケージ有り/ケージ持込),リフレクソロジー,ジム	0	0	0
4	353632	天然温泉天北の湯ドーミーイン稚内	images/inn_image_353632.jpg	3236	4.4	4.4	4.4	0.0	4.2	4.5	175	0	t	t	t	t	t	t	t	f	f	t	t	f	t	t	t	f	t	t	t	2	1	マッサージ（有料）,デイユース（有料）	0	1	1
1	386526	とよとみ温泉川島旅館	images/inn_image_386526.jpg	7700	4.1	4.6	4.6	4.5	4.4	4.8	15	0	t	f	t	t	t	t	t	f	f	t	t	f	t	f	f	f	f	f	t	1	1		0	1	1
2	350276	ホテル神居岩	images/inn_image_350276.jpg	4259	3.2	4.0	3.9	4.4	4.1	3.4	19	0	f	f	t	f	t	f	t	f	f	t	f	f	f	t	f	f	t	f	t	1	5	マッサージ（有料）,囲碁（有料）,マージャン（有料）	0	2	2
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: users_customuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, name) FROM stdin;
3	pbkdf2_sha256$150000$fjBk1s8ieVuO$nwgvbKt3fDCi2PyNNoh9IjobX8uoQaMlPadgxcdtjno=	2019-07-14 01:53:58.56032+00	f	amazon			amazon@example.com	f	t	2019-07-14 01:53:58.294779+00	
5	pbkdf2_sha256$150000$6yV45WwbKKo9$XAn+lA2aQqcM89CXNhn2jsAZeLTyLMxC9FyradM5e2U=	2019-07-14 01:55:44.193335+00	f	ebay			ebay@example.com	f	t	2019-07-14 01:55:43.945671+00	
6	pbkdf2_sha256$150000$4rOaVIQcj0Nw$fKlfMhbMwRXgr2uzGQNcifkfzFNrM0Rpj2LWRDiCy40=	2019-07-14 01:56:19.176086+00	f	huawei			huawei@example.com	f	t	2019-07-14 01:56:18.897297+00	
7	pbkdf2_sha256$150000$vepRBoTutrl1$4Fn0/0BAWdoxKNJnMBSUNXgMhFjuLs7k4ykLiCMW0fs=	2019-07-14 01:56:40.402177+00	f	intel			intel@example.com	f	t	2019-07-14 01:56:40.132356+00	
8	pbkdf2_sha256$150000$blQsxlfzUFsj$adQAMY4U9dYNAK/zFilfMMzyfcrZ+9Wg+YLuWBEMCgE=	2019-07-14 01:58:38.766422+00	f	yahoo			yahoo@example.com	f	t	2019-07-14 01:58:38.462418+00	
1	pbkdf2_sha256$150000$oqOvGk4oASw2$JAwdNuTYsKIE8EfpX8pzpPoWGdGV9/A0LDsUOt+FY8E=	2019-07-14 03:56:36.672108+00	t	admin			admin@example.com	t	t	2019-07-14 00:39:44.03458+00	
9	pbkdf2_sha256$150000$pIUwnDPoKwTC$c+CH2e8LF7ODz5tNVkZ972T2B8aToasrYL+H/2Ge8AY=	2019-07-14 11:06:09.852165+00	f	apple			apple@example.com	f	t	2019-07-14 01:59:26.091191+00	
10	pbkdf2_sha256$150000$Z8psYspo1Vz9$v3DFdnfz4YMLFDF2PE3jgbVaQq2aHZ5vlPeLhrGT/0A=	2019-07-14 11:09:02.684663+00	f	google			google@example.com	f	t	2019-07-14 11:09:02.342846+00	
4	pbkdf2_sha256$150000$tB3RaWecFR57$jIm1mwmAhpHbzOM37PBGG5IfincwQeFNxN1T7blkv80=	2019-07-14 11:21:41.885536+00	f	netflix			netflix@example.com	f	t	2019-07-14 01:55:14.002997+00	
\.


--
-- Data for Name: users_customuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: vote_vote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vote_vote (id, user_id, object_id, create_at, content_type_id, action) FROM stdin;
1	2	4	2019-07-14 03:45:35.514221+00	16	0
2	2	6	2019-07-14 03:46:17.724781+00	16	0
3	2	12	2019-07-14 03:46:24.188867+00	16	0
4	10	8	2019-07-14 11:09:47.85547+00	16	0
5	10	10	2019-07-14 11:09:54.826228+00	16	0
6	10	1	2019-07-14 11:20:37.896041+00	16	0
7	10	2	2019-07-14 11:20:44.401717+00	16	0
9	4	8	2019-07-14 12:08:07.963739+00	16	0
10	4	9	2019-07-14 12:11:36.561839+00	16	1
11	4	2	2019-07-14 12:26:59.541771+00	16	0
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 9, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: onsen_inns_onseninnmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.onsen_inns_onseninnmodel_id_seq', 598, true);


--
-- Name: onsen_inns_onsenmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.onsen_inns_onsenmodel_id_seq', 2716, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 1, false);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_id_seq', 10, true);


--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);


--
-- Name: vote_vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vote_vote_id_seq', 11, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


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
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


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
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


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
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: users_customuser_groups users_customuser_groups_customuser_id_group_id_76b619e3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq UNIQUE (customuser_id, group_id);


--
-- Name: users_customuser_groups users_customuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_pkey PRIMARY KEY (id);


--
-- Name: users_customuser_user_permissions users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq UNIQUE (customuser_id, permission_id);


--
-- Name: users_customuser_user_permissions users_customuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_customuser users_customuser_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_username_key UNIQUE (username);


--
-- Name: vote_vote vote_vote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vote_vote
    ADD CONSTRAINT vote_vote_pkey PRIMARY KEY (id);


--
-- Name: vote_vote vote_vote_user_id_content_type_id__2491cf2e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vote_vote
    ADD CONSTRAINT vote_vote_user_id_content_type_id__2491cf2e_uniq UNIQUE (user_id, content_type_id, object_id, action);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


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
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


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
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: onsen_inns_onseninnmodel_onsen_id_8f99b6ce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX onsen_inns_onseninnmodel_onsen_id_8f99b6ce ON public.onsen_inns_onseninn USING btree (onsen_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: users_customuser_groups_customuser_id_958147bf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_customuser_groups_customuser_id_958147bf ON public.users_customuser_groups USING btree (customuser_id);


--
-- Name: users_customuser_groups_group_id_01390b14; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_customuser_groups_group_id_01390b14 ON public.users_customuser_groups USING btree (group_id);


--
-- Name: users_customuser_user_permissions_customuser_id_5771478b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_customuser_user_permissions_customuser_id_5771478b ON public.users_customuser_user_permissions USING btree (customuser_id);


--
-- Name: users_customuser_user_permissions_permission_id_baaa2f74; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_customuser_user_permissions_permission_id_baaa2f74 ON public.users_customuser_user_permissions USING btree (permission_id);


--
-- Name: users_customuser_username_80452fdf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_customuser_username_80452fdf_like ON public.users_customuser USING btree (username varchar_pattern_ops);


--
-- Name: vote_vote_content_type_id_3e7f4036; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vote_vote_content_type_id_3e7f4036 ON public.vote_vote USING btree (content_type_id);


--
-- Name: vote_vote_content_type_id_object_id_d4b2a059_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vote_vote_content_type_id_object_id_d4b2a059_idx ON public.vote_vote USING btree (content_type_id, object_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_customuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: onsen_inns_onseninn onsen_inns_onseninnm_onsen_id_8f99b6ce_fk_onsen_inn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.onsen_inns_onseninn
    ADD CONSTRAINT onsen_inns_onseninnm_onsen_id_8f99b6ce_fk_onsen_inn FOREIGN KEY (onsen_id) REFERENCES public.onsen_inns_onsen(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_users_cus FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_gro_customuser_id_958147bf_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_groups users_customuser_groups_group_id_01390b14_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_customuser_id_5771478b_fk_users_cus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_customuser_user_permissions users_customuser_use_permission_id_baaa2f74_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: vote_vote vote_vote_content_type_id_3e7f4036_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vote_vote
    ADD CONSTRAINT vote_vote_content_type_id_3e7f4036_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

