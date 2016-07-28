--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: augustinevontrapp
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO augustinevontrapp;

--
-- Name: players; Type: TABLE; Schema: public; Owner: augustinevontrapp
--

CREATE TABLE players (
    id integer NOT NULL,
    score integer,
    player_name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    counter integer
);


ALTER TABLE players OWNER TO augustinevontrapp;

--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: augustinevontrapp
--

CREATE SEQUENCE players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE players_id_seq OWNER TO augustinevontrapp;

--
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: augustinevontrapp
--

ALTER SEQUENCE players_id_seq OWNED BY players.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: augustinevontrapp
--

CREATE TABLE questions (
    id integer NOT NULL,
    prompt character varying,
    topic character varying,
    target character varying
);


ALTER TABLE questions OWNER TO augustinevontrapp;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: augustinevontrapp
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE questions_id_seq OWNER TO augustinevontrapp;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: augustinevontrapp
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: augustinevontrapp
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO augustinevontrapp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: augustinevontrapp
--

CREATE TABLE users (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    track character varying,
    transportation character varying,
    lunch character varying,
    ninth_floor character varying,
    photo character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    pokemon character varying,
    sleeping character varying,
    temperature character varying
);


ALTER TABLE users OWNER TO augustinevontrapp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: augustinevontrapp
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO augustinevontrapp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: augustinevontrapp
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY players ALTER COLUMN id SET DEFAULT nextval('players_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: augustinevontrapp
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2016-07-25 22:12:33.559107	2016-07-25 22:12:33.559107
\.


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: augustinevontrapp
--

COPY players (id, score, player_name, created_at, updated_at, counter) FROM stdin;
1	\N	hun	2016-07-25 23:40:55.503369	2016-07-25 23:40:55.503369	\N
2	\N	Frud	2016-07-26 15:01:19.558948	2016-07-26 15:01:19.558948	\N
3	\N	grun	2016-07-26 15:15:56.748688	2016-07-26 15:15:56.748688	\N
4	-4	geff	2016-07-26 15:24:51.464824	2016-07-26 15:26:24.818174	4
52	2	foo	2016-07-28 00:04:10.194861	2016-07-28 00:15:57.412933	4
5	0	Nemi	2016-07-26 15:27:15.424546	2016-07-26 15:27:20.536244	2
31	4	foobar	2016-07-26 21:54:28.448539	2016-07-26 21:59:51.493497	3
15	-8	fuyu	2016-07-26 15:40:09.307906	2016-07-26 15:40:23.259903	7
32	2	foo	2016-07-26 22:15:28.780015	2016-07-26 22:20:38.639229	2
6	-2	Neffi	2016-07-26 15:28:48.838753	2016-07-26 15:29:07.22763	7
33	0	\N	2016-07-26 23:12:18.505088	2016-07-26 23:12:18.505088	1
16	-12	Chando	2016-07-26 15:41:14.278589	2016-07-26 15:41:23.292222	7
7	-4	fulu	2016-07-26 15:30:41.318762	2016-07-26 15:30:56.054113	6
56	0	afds	2016-07-28 16:06:22.571952	2016-07-28 16:09:24.488494	7
34	6	foo	2016-07-26 23:13:11.630234	2016-07-26 23:13:38.4159	6
8	-8	yuni	2016-07-26 15:31:50.795945	2016-07-26 15:32:08.765718	8
53	0	sdf	2016-07-28 03:54:24.094469	2016-07-28 05:07:29.897079	5
36	0	foo	2016-07-26 23:41:05.472594	2016-07-26 23:41:05.472594	1
9	-8	grok	2016-07-26 15:33:41.55966	2016-07-26 15:34:00.838427	4
17	-12	bundi	2016-07-26 15:42:01.590312	2016-07-26 15:52:28.124005	7
10	-4	Argon	2016-07-26 15:34:32.136487	2016-07-26 15:34:45.575736	7
57	-4	noah	2016-07-28 16:19:29.974211	2016-07-28 16:21:41.665296	5
54	0	foo	2016-07-28 15:14:34.373975	2016-07-28 15:14:40.625919	5
37	4	foo	2016-07-26 23:42:32.712389	2016-07-26 23:48:46.087462	7
11	0	funu	2016-07-26 15:34:55.708791	2016-07-26 15:35:08.31991	7
18	2	bambi	2016-07-26 15:53:46.512715	2016-07-26 15:55:22.928034	2
19	0	Neffi	2016-07-26 15:56:16.724104	2016-07-26 15:56:16.724104	1
38	0	fog	2016-07-26 23:48:57.89956	2016-07-26 23:49:17.510158	3
12	0	gum-gum	2016-07-26 15:36:14.435972	2016-07-26 15:36:30.215547	7
13	0	Neffi	2016-07-26 15:39:14.411965	2016-07-26 15:39:14.411965	1
14	0	Chown	2016-07-26 15:39:41.027193	2016-07-26 15:39:41.027193	1
50	0	foobar	2016-07-27 22:32:48.408569	2016-07-27 23:54:51.713312	1
39	4	foobar	2016-07-26 23:49:46.775087	2016-07-26 23:50:04.361489	7
20	-6	Neffi	2016-07-26 15:56:19.451645	2016-07-26 15:56:46.489235	4
46	6	foo	2016-07-27 18:32:29.507441	2016-07-27 19:54:40.824097	6
21	0	foo	2016-07-26 16:03:05.685496	2016-07-26 16:03:11.390138	3
22	0	foo	2016-07-26 16:39:36.244527	2016-07-26 16:39:36.244527	1
23	0	foo	2016-07-26 16:42:35.263827	2016-07-26 16:42:35.263827	1
24	0	foo	2016-07-26 16:50:04.285465	2016-07-26 16:50:04.285465	1
25	0	foo	2016-07-26 20:08:41.082097	2016-07-26 20:08:41.082097	1
26	0	Foobear	2016-07-26 20:19:36.597227	2016-07-26 20:19:36.597227	1
27	0	Foobear	2016-07-26 20:33:04.80976	2016-07-26 20:33:04.80976	1
28	0	Foobear	2016-07-26 20:34:00.882286	2016-07-26 20:34:00.882286	1
29	-2	Foobear	2016-07-26 20:35:22.721983	2016-07-26 20:35:30.027426	2
30	0	Marge	2016-07-26 20:44:11.320434	2016-07-26 20:44:11.320434	1
40	0	foobar	2016-07-26 23:50:53.460209	2016-07-26 23:51:50.914252	7
41	0	foo	2016-07-26 23:53:28.596625	2016-07-26 23:53:28.596625	1
42	0	foo	2016-07-26 23:53:48.486806	2016-07-26 23:53:48.486806	1
35	2	arrgh	2016-07-26 23:17:43.814612	2016-07-27 15:10:09.412083	6
48	10	foobar	2016-07-27 21:09:20.940412	2016-07-27 21:41:06.472652	6
43	2	Foo	2016-07-27 15:10:30.155906	2016-07-27 17:57:15.667136	4
44	0	foo	2016-07-27 18:24:48.312182	2016-07-27 18:24:48.312182	1
45	0	foo	2016-07-27 18:30:31.682452	2016-07-27 18:30:31.682452	1
51	-2	foo	2016-07-27 23:56:00.940788	2016-07-27 23:59:38.98198	2
49	2	fasd	2016-07-27 22:17:37.875609	2016-07-27 22:27:54.195926	6
47	0	foobar	2016-07-27 18:39:27.917879	2016-07-27 19:38:52.856357	3
55	-6	foo	2016-07-28 15:33:00.290191	2016-07-28 15:41:35.209601	4
\.


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: augustinevontrapp
--

SELECT pg_catalog.setval('players_id_seq', 57, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: augustinevontrapp
--

COPY questions (id, prompt, topic, target) FROM stdin;
13	Who rides their bike?	transportation	bike
15	who walks to school?	transportation	walk
16	who eats at foodcarts?	lunch	carts
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: augustinevontrapp
--

SELECT pg_catalog.setval('questions_id_seq', 16, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: augustinevontrapp
--

COPY schema_migrations (version) FROM stdin;
20160725183624
20160725203831
20160725205147
20160726170738
20160726225025
20160726225234
20160726225855
20160726231508
20160726232408
20160727171511
20160727181830
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: augustinevontrapp
--

COPY users (id, first_name, last_name, track, transportation, lunch, ninth_floor, photo, created_at, updated_at, pokemon, sleeping, temperature) FROM stdin;
11	august	von trapp	ruby	bike	carts	true	https://s19.postimg.org/5kfs9o577/august_von_trapp.jpg	2016-07-26 20:15:47.835802	2016-07-27 15:16:12.264418	\N	\N	\N
16	joel	aldenier	c#	drive	bring	false	https://s19.postimg.org/gaycy8cib/IMG_2054.jpg	2016-07-26 23:05:40.76057	2016-07-27 16:16:10.78762	\N	\N	\N
12	maarja	laineste	css	bike	bring	true	https://s19.postimg.org/lg4mcyvrn/IMG_2132.jpg	2016-07-26 20:17:50.779519	2016-07-27 16:16:37.427524	\N	\N	\N
15	charlie	danza	ruby	walk	bring	true	https://s19.postimg.org/dfl9rd8ib/IMG_2053.jpg	2016-07-26 20:43:29.065245	2016-07-27 17:36:42.886529	yes	\N	\N
13	marty	fitchen	css	bike	carts	false	https://s19.postimg.org/6p9uf1ro3/marty_fitchen.jpg	2016-07-26 20:18:37.201813	2016-07-28 16:16:35.675462	\N	\N	\N
14	noah	yasskin	ruby	bike	bring	true	https://s19.postimg.org/sd3e38hg3/noah_yasskin.jpg	2016-07-26 20:19:20.361031	2016-07-28 16:17:06.450415	\N	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: augustinevontrapp
--

SELECT pg_catalog.setval('users_id_seq', 20, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: players_pkey; Type: CONSTRAINT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: questions_pkey; Type: CONSTRAINT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: augustinevontrapp
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: augustinevontrapp
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM augustinevontrapp;
GRANT ALL ON SCHEMA public TO augustinevontrapp;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

