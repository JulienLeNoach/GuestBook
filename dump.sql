--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.4

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

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.admin (id, username, roles, password) FROM stdin;
2	admin	["ROLE_ADMIN"]	$2y$13$wmDP2Wefr4gg8o2bFcANL.s5pSiB2aUjMDiw6B9Hrra/xj7Ze7pBW
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
7	Amsterdam	2019	t	amsterdam-2019
8	Paris	2020	f	paris-2020
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename) FROM stdin;
16	7	Fabien	This was a great conference.	fabien@example.com	2023-10-18 14:41:58	\N
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20231011125801	2023-10-11 12:58:14	64
DoctrineMigrations\\Version20231011134707	2023-10-11 13:47:12	5
DoctrineMigrations\\Version20231012134839	2023-10-12 13:49:30	34
DoctrineMigrations\\Version20231012135232	2023-10-12 13:52:38	16
DoctrineMigrations\\Version20231012135258	2023-10-12 13:53:37	25
DoctrineMigrations\\Version20231012135618	2023-10-12 13:56:30	12
DoctrineMigrations\\Version20231012135644	2023-10-12 13:57:07	23
DoctrineMigrations\\Version20231016131427	2023-10-16 13:34:12	13
DoctrineMigrations\\Version20231016133600	2023-10-16 13:36:33	18
DoctrineMigrations\\Version20231016140023	2023-10-16 14:25:31	13
DoctrineMigrations\\Version20231017125032	2023-10-17 12:50:35	53
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.sessions (sess_id, sess_data, sess_lifetime, sess_time) FROM stdin;
o0agj9cbdk1pk7o6cisb8bgt1i	\\x5f7366325f617474726962757465737c613a363a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a353a2261646d696e223b733a31343a225f73656375726974795f6d61696e223b733a3433393a224f3a37353a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c487474705c41757468656e74696361746f725c546f6b656e5c506f737441757468656e7469636174696f6e546f6b656e223a323a7b693a303b733a343a226d61696e223b693a313b613a353a7b693a303b4f3a31363a224170705c456e746974795c41646d696e223a343a7b733a32303a22004170705c456e746974795c41646d696e006964223b693a323b733a32363a22004170705c456e746974795c41646d696e00757365726e616d65223b733a353a2261646d696e223b733a32333a22004170705c456e746974795c41646d696e00726f6c6573223b613a313a7b693a303b733a31303a22524f4c455f41444d494e223b7d733a32363a22004170705c456e746974795c41646d696e0070617373776f7264223b733a36303a2224327924313324776d44503257656672346767386f32624663414e4c2e7335705369423261556a4d446977364239487272612f786a375a6537704257223b7d693a313b623a313b693a323b4e3b693a333b613a303a7b7d693a343b613a313a7b693a303b733a31303a22524f4c455f41444d494e223b7d7d7d223b733a32313a225f637372662f68747470732d65612d746f67676c65223b733a34333a225a63364f74337a586f394269323552373564776a695f575a6f4c59486b37716c45476e527850416d6c6c63223b733a33393a225f637372662f68747470732d65612d62617463682d616374696f6e2d626174636844656c657465223b733a34333a224d344d652d516e617a50436b7a396834476963322d335a654c70514f4f584f484153332d4f4d3036703063223b733a32313a225f637372662f68747470732d65612d64656c657465223b733a34333a227a71506f694f443974455a32795462616f35716843536949394d474b45366d3772576563684257706b6941223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313639373634313136323b733a313a2263223b693a313639373634303133313b733a313a226c223b693a303b7d	1697677162	1697641162
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.admin_id_seq', 2, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.comment_id_seq', 16, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.conference_id_seq', 8, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

