--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO "Guest";

--
-- Name: players; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE players (
    id integer NOT NULL,
    score integer,
    player_name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    counter integer
);


ALTER TABLE players OWNER TO "Guest";

--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE players_id_seq OWNER TO "Guest";

--
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE players_id_seq OWNED BY players.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE questions (
    id integer NOT NULL,
    prompt character varying,
    topic character varying,
    target character varying
);


ALTER TABLE questions OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE questions_id_seq OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "Guest";

--
-- Name: users; Type: TABLE; Schema: public; Owner: Guest
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
    sleeping character varying,
    temperature character varying,
    pokemon character varying
);


ALTER TABLE users OWNER TO "Guest";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO "Guest";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY players ALTER COLUMN id SET DEFAULT nextval('players_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2016-07-25 23:20:10.642969	2016-07-25 23:20:10.642969
\.


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY players (id, score, player_name, created_at, updated_at, counter) FROM stdin;
1	0	foo	2016-07-26 20:07:37.063911	2016-07-26 20:07:37.063911	1
2	0	foo	2016-07-27 23:05:52.406357	2016-07-27 23:05:52.406357	1
3	-2	maarja	2016-07-28 15:23:10.183782	2016-07-28 15:23:12.939952	2
4	0	maarja	2016-07-28 15:23:35.459195	2016-07-28 15:23:35.459195	1
13	0	Tester	2016-07-28 20:13:42.910253	2016-07-28 20:13:50.209773	2
8	-4	ff	2016-07-28 16:04:00.498389	2016-07-28 16:05:18.484512	5
5	-8	foo	2016-07-28 15:30:23.219043	2016-07-28 15:30:40.883995	7
6	4	maarja	2016-07-28 15:52:34.427728	2016-07-28 15:53:40.323746	3
14	0	Marteen	2016-07-28 21:12:26.539016	2016-07-28 21:14:26.303171	1
15	1	Tester	2016-07-28 21:34:46.045146	2016-07-28 21:34:55.423015	3
9	0	fkk	2016-07-28 16:05:33.18738	2016-07-28 16:34:00.803512	1
16	3	Epicoder	2016-07-28 21:44:49.73742	2016-07-28 21:45:35.350334	7
10	-6	Sam	2016-07-28 16:51:12.383741	2016-07-28 16:51:26.980672	6
11	0	df	2016-07-28 18:41:53.44873	2016-07-28 18:46:58.524988	3
7	-2	maarja	2016-07-28 15:53:54.267785	2016-07-28 16:03:16.340093	6
17	3	rachel	2016-07-28 22:57:14.214097	2016-07-28 22:59:32.962588	6
12	2	Noah	2016-07-28 19:44:04.509906	2016-07-28 19:47:28.648986	7
\.


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('players_id_seq', 17, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY questions (id, prompt, topic, target) FROM stdin;
1	Who finds the computer room too cold?	temperature	cold
2	Do you play Pokemon	pokemon	yes
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('questions_id_seq', 2, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY schema_migrations (version) FROM stdin;
20160725183624
20160725203831
20160725205147
20160727181830
20160726170738
20160726225025
20160726225234
20160726225855
20160726231508
20160726232408
20160727171511
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY users (id, first_name, last_name, track, transportation, lunch, ninth_floor, photo, created_at, updated_at, sleeping, temperature, pokemon) FROM stdin;
54	maarja	laineste	css	bike	bring	true	https://s19.postimg.org/5yh499par/maarja_laineste.jpg	2016-07-28 21:49:00.326224	2016-07-28 21:51:01.196158	no	cold	no
55	noah	yasskin	ruby	bike	bring	true	https://s19.postimg.org/sd3e38hg3/noah_yasskin.jpg	2016-07-28 21:49:17.071398	2016-07-28 21:51:25.343619	no	cold	no
53	wolfgang	warneke	c#	bus	50:50	false	https://s19.postimg.org/ysuwd3uc3/wolfgang.jpg	2016-07-28 19:59:36.752582	2016-07-28 20:52:53.327597	yes	cold	no
16	katarina	tuttle	ruby	drive	bring	false	https://s19.postimg.org/d3cpnj0pf/katarina_tuttle.jpg	2016-07-27 22:42:38.107988	2016-07-28 20:19:48.623514	no	cold	yes
17	marty	fitchen	css	bike	carts	false	https://s19.postimg.org/6p9uf1ro3/marty_fitchen.jpg	2016-07-27 22:45:41.528581	2016-07-28 20:20:20.414728	no	cold	no
18	august	von trapp	ruby	bike	carts	true	https://s19.postimg.org/5kfs9o577/august_von_trapp.jpg	2016-07-27 22:46:15.392265	2016-07-28 20:21:02.671469	yes	cold	no
19	rachael	bermudes	css	bus	50:50	false	https://s19.postimg.org/xwjppoimr/rachael_bermudes.jpg	2016-07-27 22:47:19.14438	2016-07-28 20:21:37.015508	no	cold	no
20	shradha	pulla	c#	walk	carts	false	https://s19.postimg.org/dvoke7jo3/shradha_pulla.jpg	2016-07-27 22:48:28.896426	2016-07-28 20:21:59.751479	no	cold	no
21	sami	al-jamal	c#	walk	bring	true	https://s19.postimg.org/puvh7rzv7/sami_al_jamal.jpg	2016-07-27 22:49:19.139768	2016-07-28 20:22:36.182596	yes	cold	yes
22	alvin	ng	ruby	bus	50:50	true	https://s19.postimg.org/alwd2irf7/alvin_ng.jpg	2016-07-27 22:51:20.928768	2016-07-28 20:23:12.015633	yes	cold	yes
23	tony	fabery	android	drive	50:50	true	https://s19.postimg.org/c55jcq24z/tony_fabery.jpg	2016-07-27 22:52:08.712322	2016-07-28 20:23:41.808575	no	hot	no
24	brian	grant	ruby	bus	50:50	false	https://s19.postimg.org/jxn0d7tcj/brian_grant.jpg	2016-07-27 22:52:36.11156	2016-07-28 20:24:22.439248	yes	cold	no
25	chip	carnes	ruby	max	bring	false	https://s19.postimg.org/f1jdlit77/chip_carnes.jpg	2016-07-27 22:53:07.78447	2016-07-28 20:24:53.58307	yes	right	no
27	caleb	stokka	ruby	bike	bring	false	https://s19.postimg.org/hucl5jtjn/caleb_stokka.jpg	2016-07-27 22:53:40.399548	2016-07-28 20:25:23.486708	yes	cold	no
28	noah	ramey	ruby	bus	50:50	false	https://s19.postimg.org/e9lb02edv/noah_ramey.jpg	2016-07-27 22:54:02.383982	2016-07-28 20:25:49.348157	yes	cold	no
29	stephanie	gurung	ruby	bus	50:50	true	https://s19.postimg.org/yykpgqmoj/stephanie.jpg	2016-07-27 22:54:36.351717	2016-07-28 20:26:26.679809	no	cold	yes
30	halle	williams	ruby	bus	carts	false	https://s19.postimg.org/3rqnqko5v/halle_williams.jpg	2016-07-27 22:55:32.728363	2016-07-28 20:26:59.950949	yes	cold	no
31	perry	eising	android	bike	bring	true	https://s19.postimg.org/l3vlpr70z/perry_eising.jpg	2016-07-27 22:56:30.218885	2016-07-28 20:27:24.559439	no	cold	no
32	luca	quatela	android	bus	carts	false	https://s19.postimg.org/61jdf2mhf/luca_quatela.jpg	2016-07-27 22:57:02.655563	2016-07-28 20:29:45.400237	yes	right	yes
33	adam	craig	android	bus	carts	false	https://s19.postimg.org/nni1sdftf/adam_craig.jpg	2016-07-27 22:57:36.368403	2016-07-28 20:32:34.576111	no	cold	yes
34	ryan	carlile	android	bike	bring	true	https://s19.postimg.org/qvvpwwgur/ryan_carlile.jpg	2016-07-27 22:58:12.264173	2016-07-28 20:33:01.615319	yes	cold	no
35	john	klein	android	bike	50:50	true	https://s19.postimg.org/5yuwehtg3/john_klein.jpg	2016-07-27 22:59:02.87304	2016-07-28 20:35:03.195041	yes	cold	no
36	lauren	posey	ruby	bus	bring	true	https://s19.postimg.org/k51gi8pjn/lauren_posey.jpg	2016-07-27 22:59:59.452006	2016-07-28 20:35:22.719369	yes	cold	no
37	pat	lipscomb	ruby	bus	carts	false	https://s19.postimg.org/qqryn89jn/patrick_lipscomb.jpg	2016-07-27 23:00:41.739292	2016-07-28 20:36:15.336035	yes	cold	no
38	joey	arnstein	android	max	bring	true	https://s19.postimg.org/a6pon8uvn/joey_arnstein.jpg	2016-07-27 23:02:03.224451	2016-07-28 20:37:09.392526	yes	right	no
39	sebastian	prokuski	ruby	drive	bring	false	https://s19.postimg.org/b3riidh03/sebastian.jpg	2016-07-27 23:04:08.031801	2016-07-28 20:37:49.904423	yes	cold	yes
41	cory	olson	ruby	bus	carts	false	https://s19.postimg.org/nxu5pgjtf/cory_olson.jpg	2016-07-27 23:10:56.296729	2016-07-28 20:38:50.559874	yes	hot	no
42	matt 	wilkin 	ruby	bike	50:50	true	https://s19.postimg.org/qy6es95qr/matt_wilkin.jpg	2016-07-27 23:11:27.944408	2016-07-28 20:39:34.494975	yes	right	no
43	leah	nelson	ruby	bus	bring	false	https://s19.postimg.org/7rombbzv7/leah.jpg	2016-07-27 23:11:53.711672	2016-07-28 20:40:40.73094	yes	cold	no
44	shatha	shaath	css	max	50:50	false	https://s19.postimg.org/98iicfwb7/shatha_shaath.jpg	2016-07-27 23:17:27.705054	2016-07-28 20:42:53.679955	no	right	no
45	matthew	reyes	c#	bus	bring	false	https://s19.postimg.org/6sc3kuour/matthew_reyes.jpg	2016-07-27 23:19:18.695909	2016-07-28 20:44:17.135943	no	cold	yes
46	adam	luchini	c#	walk	bring	false	https://s19.postimg.org/iq4h79dub/adam_luchini.jpg	2016-07-27 23:22:49.306845	2016-07-28 20:44:38.151496	no	cold	no
47	bo	zhao	c#	bus	carts	false	https://s19.postimg.org/e86rswn6b/bo_zhao.jpg	2016-07-27 23:23:31.864731	2016-07-28 20:45:06.263487	no	right	no
48	olivia	hinton	ruby	bike	50:50	false	https://s19.postimg.org/m3lwlgm6r/olivia_hinton.jpg	2016-07-27 23:42:07.624469	2016-07-28 20:45:35.54353	yes	cold	no
49	bang	nguyen	ruby	bus	bring	false	https://s19.postimg.org/5gv5kwehf/bang.jpg	2016-07-27 23:48:25.256701	2016-07-28 20:46:00.519169	no	right	no
50	reed	lambier	android	bus	50:50	true	https://s19.postimg.org/quls3hf0z/reed_lambier.jpg	2016-07-27 23:55:43.256401	2016-07-28 20:46:35.399954	yes	cold	no
51	ashley	maceli	android	bus	carts	false	https://s19.postimg.org/wmhawvzgz/ashley_maceli.jpg	2016-07-27 23:56:29.120056	2016-07-28 20:47:31.247663	no	cold	yes
52	molly	mcglone	ruby	bus	bring	false	https://s19.postimg.org/anu6vea1f/molly.jpg	2016-07-28 00:09:30.024307	2016-07-28 20:51:19.13127	yes	right	no
56	meaghan	jones	ruby	bike	carts	false	https://s19.postimg.org/3qc4jewyb/meaghan.jpg	2016-07-28 21:55:03.848289	2016-07-28 22:35:39.119285	no	cold	no
61	terri 	bradley	css	bike	bring	false	https://s19.postimg.org/v6toe7dcj/terri_bradley_sq.jpg	2016-07-28 22:00:32.960108	2016-07-28 23:45:56.767576	yes	cold	no
62	mike	goren	ruby	bike	carts	true	https://s19.postimg.org/5k7ikxob7/mike_goren_sq.jpg	2016-07-28 22:05:18.144093	2016-07-28 23:44:11.624582	no	right	no
59	alexander	jacks	ruby	bus	50:50	false	https://s19.postimg.org/946bd7xar/alex_jacks.jpg	2016-07-28 21:58:22.704668	2016-07-28 22:37:09.656118	no	cold	yes
65	colin 	kingen	ruby	bus	bring	false	https://s19.postimg.org/6u5bzzi37/colin_kingen_sq.jpg	2016-07-28 22:19:28.034719	2016-07-28 23:42:21.727566	yes	cold	yes
57	ryan	streur	c#	bike	bring	false	https://s19.postimg.org/gl2npygk3/ryan_streur_sq.jpg	2016-07-28 21:56:39.640208	2016-07-28 23:44:33.015479	yes	right	no
64	jill	kuchman	c#	max	bring	true	https://s19.postimg.org/s6ctxo21f/jill_kuchman_sq.jpg	2016-07-28 22:12:47.008365	2016-07-28 23:43:16.575778	yes	cold	yes
58	joel	delight	c#	bus	50:50	false	https://s19.postimg.org/8d0q4yonn/joel_delight_sq.jpg	2016-07-28 21:57:16.44015	2016-07-28 23:43:44.08001	no	hot	yes
63	george	olson	c#	bus	carts	false	https://s19.postimg.org/8zzmuhljn/george_olson_sq.jpg	2016-07-28 22:10:33.904329	2016-07-28 23:42:45.487509	no	cold	yes
60	charles	ewel	c#	bus	carts	false	https://s19.postimg.org/pl79a5cnn/charlie_sq.jpg	2016-07-28 21:58:59.611058	2016-07-28 23:41:48.92805	no	right	no
66	sky	rousse	ruby	bike	carts	false	https://s19.postimg.org/homs1x177/sky_rousse_sq.jpg	2016-07-28 23:09:41.563631	2016-07-28 23:45:31.471629	yes	cold	no
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('users_id_seq', 66, true);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: players_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: questions_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: epicodus
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM epicodus;
GRANT ALL ON SCHEMA public TO epicodus;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

