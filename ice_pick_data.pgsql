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
8	-4	ff	2016-07-28 16:04:00.498389	2016-07-28 16:05:18.484512	5
5	-8	foo	2016-07-28 15:30:23.219043	2016-07-28 15:30:40.883995	7
6	4	maarja	2016-07-28 15:52:34.427728	2016-07-28 15:53:40.323746	3
9	0	fkk	2016-07-28 16:05:33.18738	2016-07-28 16:34:00.803512	1
10	-6	Sam	2016-07-28 16:51:12.383741	2016-07-28 16:51:26.980672	6
7	-2	maarja	2016-07-28 15:53:54.267785	2016-07-28 16:03:16.340093	6
\.


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('players_id_seq', 10, true);


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
1			ruby	bike	true	true	\N	2016-07-26 15:17:04.322992	2016-07-26 15:17:04.322992	\N	\N	\N
2			ruby	bike	true	true	\N	2016-07-26 15:24:16.961555	2016-07-26 15:24:16.961555	\N	\N	\N
3			ruby	bike	true	true	\N	2016-07-26 15:28:22.601222	2016-07-26 15:28:22.601222	\N	\N	\N
4			ruby	bike	true	true	\N	2016-07-26 15:43:25.287875	2016-07-26 15:43:25.287875	\N	\N	\N
7			ruby	bike	true	true	\N	2016-07-26 18:49:28.378211	2016-07-26 18:49:28.378211	\N	\N	\N
10			ruby	bike	bring	true		2016-07-27 21:31:29.935238	2016-07-27 21:31:29.935238	yes	cold	yes
11			ruby	bike	bring	true	\N	2016-07-27 21:53:53.624781	2016-07-27 21:53:53.624781	yes	cold	yes
12			ruby	bike	bring	true	\N	2016-07-27 21:53:59.263389	2016-07-27 21:53:59.263389	yes	cold	yes
13	maarja	laineste	ruby	bike	bring	true	https://s19.postimg.org/5yh499par/maarja_laineste.jpg	2016-07-27 21:54:27.279294	2016-07-27 22:36:42.065525	yes	cold	yes
15	noah	yasskin	ruby	bike	bring	true	https://s19.postimg.org/sd3e38hg3/noah_yasskin.jpg	2016-07-27 22:10:22.147332	2016-07-27 22:37:10.800698	yes	cold	yes
14	sam	park	ruby	bike	bring	true	https://s19.postimg.org/r0qaf39eb/sam_park.jpg	2016-07-27 22:03:39.431515	2016-07-27 22:41:05.488256	yes	cold	yes
16	katarina	tuttle	ruby	drive	bring	false	\N	2016-07-27 22:42:38.107988	2016-07-27 22:42:38.107988	no	cold	yes
17	marty	fitchen	css	bike	carts	false	\N	2016-07-27 22:45:41.528581	2016-07-27 22:45:41.528581	no	cold	no
18	august	von trapp	ruby	bike	carts	true	\N	2016-07-27 22:46:15.392265	2016-07-27 22:46:15.392265	yes	cold	no
19	rachael	bermudes	css	bus	50:50	false	\N	2016-07-27 22:47:19.14438	2016-07-27 22:47:19.14438	no	cold	no
20	shradha	pulla	c#	walk	carts	false	\N	2016-07-27 22:48:28.896426	2016-07-27 22:48:28.896426	no	cold	no
21	sami	al-jamal	c#	walk	bring	true	\N	2016-07-27 22:49:19.139768	2016-07-27 22:49:19.139768	yes	cold	yes
22	alvin	ng	ruby	bus	50:50	true	\N	2016-07-27 22:51:20.928768	2016-07-27 22:51:20.928768	yes	cold	yes
23	tony	fabery	android	drive	50:50	true	\N	2016-07-27 22:52:08.712322	2016-07-27 22:52:08.712322	no	hot	no
24	brian	grant	ruby	bus	50:50	false	\N	2016-07-27 22:52:36.11156	2016-07-27 22:52:36.11156	yes	cold	no
25	chip	carnes	ruby	max	bring	false	\N	2016-07-27 22:53:07.78447	2016-07-27 22:53:07.78447	yes	right	no
27	caleb	stokka	ruby	bike	bring	false	\N	2016-07-27 22:53:40.399548	2016-07-27 22:53:40.399548	yes	cold	no
28	noah	ramey	ruby	bus	50:50	false	\N	2016-07-27 22:54:02.383982	2016-07-27 22:54:02.383982	yes	cold	no
29	stephanie	gurung	ruby	bus	50:50	true	\N	2016-07-27 22:54:36.351717	2016-07-27 22:54:36.351717	no	cold	yes
30	halle	williams	ruby	bus	carts	false	\N	2016-07-27 22:55:32.728363	2016-07-27 22:55:32.728363	yes	cold	no
31	perry	eising	android	bike	bring	true	\N	2016-07-27 22:56:30.218885	2016-07-27 22:56:30.218885	no	cold	no
32	luca	quatela	android	bus	carts	false	\N	2016-07-27 22:57:02.655563	2016-07-27 22:57:02.655563	yes	right	yes
33	adam	craig	android	bus	carts	false	\N	2016-07-27 22:57:36.368403	2016-07-27 22:57:36.368403	no	cold	yes
34	ryan	carlile	android	bike	bring	true	\N	2016-07-27 22:58:12.264173	2016-07-27 22:58:12.264173	yes	cold	no
35	john	klein	android	bike	50:50	true	\N	2016-07-27 22:59:02.87304	2016-07-27 22:59:02.87304	yes	cold	no
36	lauren	posey	ruby	bus	bring	true	\N	2016-07-27 22:59:59.452006	2016-07-27 22:59:59.452006	yes	cold	no
37	pat	lipscomb	ruby	bus	carts	false	\N	2016-07-27 23:00:41.739292	2016-07-27 23:00:41.739292	yes	cold	no
38	joey	arnstein	android	max	bring	true	\N	2016-07-27 23:02:03.224451	2016-07-27 23:02:03.224451	yes	right	no
39	sebastian	prokuski	ruby	drive	bring	false	\N	2016-07-27 23:04:08.031801	2016-07-27 23:04:08.031801	yes	cold	yes
41	cory	olson	ruby	bus	carts	false	\N	2016-07-27 23:10:56.296729	2016-07-27 23:10:56.296729	yes	hot	no
42	matt 	wilkin 	ruby	bike	50:50	true	\N	2016-07-27 23:11:27.944408	2016-07-27 23:11:27.944408	yes	right	no
43	leah	nelson	ruby	bus	bring	false	\N	2016-07-27 23:11:53.711672	2016-07-27 23:11:53.711672	yes	cold	no
44	shatha	shaath	css	max	50:50	false	\N	2016-07-27 23:17:27.705054	2016-07-27 23:17:27.705054	no	right	no
45	matthew	reyes	c#	bus	bring	false	\N	2016-07-27 23:19:18.695909	2016-07-27 23:19:18.695909	no	cold	yes
46	adam	luchini	c#	walk	bring	false	\N	2016-07-27 23:22:49.306845	2016-07-27 23:22:49.306845	no	cold	no
47	bo	zhao	c#	bus	carts	false	\N	2016-07-27 23:23:31.864731	2016-07-27 23:23:31.864731	no	right	no
48	olivia	hinton	ruby	bike	50:50	false	\N	2016-07-27 23:42:07.624469	2016-07-27 23:42:07.624469	yes	cold	no
49	bang	nguyen	ruby	bus	bring	false	\N	2016-07-27 23:48:25.256701	2016-07-27 23:48:25.256701	no	right	no
50	reed	lambier	android	bus	50:50	true	\N	2016-07-27 23:55:43.256401	2016-07-27 23:55:43.256401	yes	cold	no
51	ashley	maceli	android	bus	carts	false	\N	2016-07-27 23:56:29.120056	2016-07-27 23:56:29.120056	no	cold	yes
40	alex	jacks	ruby	bike	bring	true	https://s19.postimg.org/946bd7xar/alex_jacks.jpg	2016-07-27 23:05:34.816722	2016-07-28 00:00:50.841037	yes	cold	yes
52	molly	mcglone	ruby	bus	bring	false	\N	2016-07-28 00:09:30.024307	2016-07-28 00:09:30.024307	yes	right	no
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('users_id_seq', 52, true);


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
