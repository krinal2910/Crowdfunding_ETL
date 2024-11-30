--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 16.6

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

SET default_table_access_method = heap;

--
-- Name: campaign; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campaign (
    cf_id integer NOT NULL,
    contact_id integer,
    category_id character varying(10),
    subcategory_id character varying(10),
    company_name character varying(255),
    description text,
    goal double precision,
    pledged double precision,
    outcome character varying(50),
    backers_count integer,
    country character varying(50),
    currency character varying(10),
    launch_date timestamp without time zone,
    end_date timestamp without time zone
);


ALTER TABLE public.campaign OWNER TO postgres;

--
-- Name: campaign_cf_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.campaign_cf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.campaign_cf_id_seq OWNER TO postgres;

--
-- Name: campaign_cf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.campaign_cf_id_seq OWNED BY public.campaign.cf_id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id character varying(10) NOT NULL,
    category_name character varying(255)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    contact_id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255)
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contacts_contact_id_seq OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts.contact_id;


--
-- Name: subcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subcategory (
    subcategory_id character varying(10) NOT NULL,
    subcategory_name character varying(255)
);


ALTER TABLE public.subcategory OWNER TO postgres;

--
-- Name: campaign cf_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign ALTER COLUMN cf_id SET DEFAULT nextval('public.campaign_cf_id_seq'::regclass);


--
-- Name: contacts contact_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts ALTER COLUMN contact_id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);


--
-- Data for Name: campaign; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campaign (cf_id, contact_id, category_id, subcategory_id, company_name, description, goal, pledged, outcome, backers_count, country, currency, launch_date, end_date) FROM stdin;
147	4661	cat1	subcat1	Baldwin, Riley and Jackson	Pre-emptive tertiary standardization	100	0	failed	0	CA	CAD	2020-02-13 00:00:00	2021-03-01 00:00:00
1621	3765	cat2	subcat2	Odom Inc	Managed bottom-line architecture	1400	14560	successful	158	US	USD	2021-01-25 00:00:00	2021-05-25 00:00:00
1812	4187	cat3	subcat3	Melton, Robinson and Fritz	Function-based leadingedge pricing structure	108400	142523	successful	1425	AU	AUD	2020-12-17 00:00:00	2021-12-30 00:00:00
2156	4941	cat2	subcat2	Mcdonald, Gonzalez and Ross	Vision-oriented fresh-thinking conglomeration	4200	2477	failed	24	US	USD	2021-10-21 00:00:00	2022-01-17 00:00:00
1365	2199	cat4	subcat4	Larson-Little	Proactive foreground core	7600	5265	failed	53	US	USD	2020-12-21 00:00:00	2021-08-23 00:00:00
2057	5650	cat4	subcat4	Harris Group	Open-source optimizing database	7600	13195	successful	174	DK	DKK	2020-12-11 00:00:00	2021-08-29 00:00:00
1894	5889	cat5	subcat5	Ortiz, Coleman and Mitchell	Operative upward-trending algorithm	5200	1090	failed	18	GB	GBP	2020-07-31 00:00:00	2021-05-11 00:00:00
2669	4842	cat4	subcat4	Carter-Guzman	Centralized cohesive challenge	4500	14741	successful	227	DK	DKK	2020-12-22 00:00:00	2021-09-21 00:00:00
1114	3280	cat4	subcat4	Nunez-Richards	Exclusive attitude-oriented intranet	110100	21946	live	708	DK	DKK	2020-04-08 00:00:00	2021-03-10 00:00:00
970	5468	cat2	subcat6	Rangel, Holt and Jones	Open-source fresh-thinking model	6200	3208	failed	44	US	USD	2021-08-13 00:00:00	2021-08-31 00:00:00
2340	3064	cat5	subcat7	Green Ltd	Monitored empowering installation	5200	13838	successful	220	US	USD	2020-07-11 00:00:00	2021-08-02 00:00:00
601	4904	cat4	subcat4	Perez, Johnson and Gardner	Grass-roots zero administration system engine	6300	3030	failed	27	US	USD	2020-08-11 00:00:00	2021-06-26 00:00:00
1950	1299	cat5	subcat7	Kim Ltd	Assimilated hybrid intranet	6300	5629	failed	55	US	USD	2020-11-14 00:00:00	2021-04-09 00:00:00
671	5602	cat2	subcat8	Walker, Taylor and Coleman	Multi-tiered directional open architecture	4200	10295	successful	98	US	USD	2020-11-11 00:00:00	2021-11-06 00:00:00
1683	5753	cat2	subcat8	Rodriguez, Rose and Stewart	Cloned directional synergy	28200	18829	failed	200	US	USD	2021-11-14 00:00:00	2022-01-02 00:00:00
505	4495	cat3	subcat9	Wright, Hunt and Rowe	Extended eco-centric pricing structure	81200	38414	failed	452	US	USD	2021-10-25 00:00:00	2021-12-16 00:00:00
1245	4269	cat6	subcat10	Hines Inc	Cross-platform systemic adapter	1700	11041	successful	100	US	USD	2021-08-20 00:00:00	2021-12-22 00:00:00
2550	2226	cat5	subcat11	Cochran-Nguyen	Seamless 4thgeneration methodology	84600	134845	successful	1249	US	USD	2020-04-12 00:00:00	2021-03-24 00:00:00
875	1558	cat4	subcat4	Johnson-Gould	Exclusive needs-based adapter	9100	6089	canceled	135	US	USD	2021-03-24 00:00:00	2022-01-27 00:00:00
2283	2307	cat4	subcat4	Perez-Hess	Down-sized cohesive archive	62500	30331	failed	674	US	USD	2021-10-12 00:00:00	2021-11-17 00:00:00
118	2900	cat5	subcat7	Reeves, Thompson and Richardson	Proactive composite alliance	131800	147936	successful	1396	US	USD	2020-04-12 00:00:00	2021-04-09 00:00:00
711	5695	cat4	subcat4	Simmons-Reynolds	Re-engineered intangible definition	94000	38533	failed	558	US	USD	2021-03-14 00:00:00	2021-04-29 00:00:00
1747	5708	cat4	subcat4	Collier Inc	Enhanced dynamic definition	59100	75690	successful	890	US	USD	2020-07-06 00:00:00	2021-08-04 00:00:00
1825	1663	cat5	subcat5	Gray-Jenkins	Devolved next generation adapter	4500	14942	successful	142	GB	GBP	2021-07-23 00:00:00	2021-09-12 00:00:00
1019	3605	cat3	subcat9	Scott, Wilson and Martin	Cross-platform intermediate frame	92400	104257	successful	2673	US	USD	2021-05-01 00:00:00	2021-10-01 00:00:00
821	4678	cat7	subcat12	Caldwell, Velazquez and Wilson	Monitored impactful analyzer	5500	11904	successful	163	US	USD	2020-10-09 00:00:00	2021-05-23 00:00:00
2653	2251	cat4	subcat4	Spencer-Bates	Optional responsive customer loyalty	107500	51814	canceled	1480	US	USD	2020-11-20 00:00:00	2021-07-27 00:00:00
2502	6202	cat2	subcat2	Best, Carr and Williams	Diverse transitional migration	2000	1599	failed	15	US	USD	2021-01-08 00:00:00	2021-10-15 00:00:00
325	3715	cat4	subcat4	Campbell, Brown and Powell	Synchronized global task-force	130800	137635	successful	2220	US	USD	2020-12-23 00:00:00	2021-12-23 00:00:00
1345	4242	cat5	subcat13	Johnson, Parker and Haynes	Focused 6thgeneration forecast	45900	150965	successful	1606	CH	CHF	2020-11-06 00:00:00	2021-08-27 00:00:00
2303	4326	cat5	subcat11	Clark-Cooke	Down-sized analyzing challenge	9000	14455	successful	129	US	USD	2020-10-28 00:00:00	2021-02-15 00:00:00
2224	5560	cat7	subcat12	Schroeder Ltd	Progressive needs-based focus group	3500	10850	successful	226	GB	GBP	2020-11-25 00:00:00	2021-02-05 00:00:00
1173	4002	cat5	subcat5	Jackson PLC	Ergonomic 6thgeneration success	101000	87676	failed	2307	IT	EUR	2021-02-21 00:00:00	2021-11-26 00:00:00
210	3813	cat4	subcat4	Blair, Collins and Carter	Exclusive interactive approach	50200	189666	successful	5419	US	USD	2021-04-04 00:00:00	2021-12-09 00:00:00
1546	5336	cat5	subcat5	Maldonado and Sons	Reverse-engineered asynchronous archive	9300	14025	successful	165	US	USD	2021-01-26 00:00:00	2021-12-10 00:00:00
2871	4994	cat5	subcat7	Mitchell and Sons	Synergized intangible challenge	125500	188628	successful	1965	DK	DKK	2021-03-16 00:00:00	2021-03-25 00:00:00
2034	1471	cat4	subcat4	Jackson-Lewis	Monitored multi-state encryption	700	1101	successful	16	US	USD	2021-04-07 00:00:00	2021-11-26 00:00:00
2677	4482	cat6	subcat14	Black, Armstrong and Anderson	Profound attitude-oriented functionalities	8100	11339	successful	107	US	USD	2020-11-20 00:00:00	2021-10-18 00:00:00
1865	3241	cat8	subcat15	Maldonado-Gonzalez	Digitized client-driven database	3100	10085	successful	134	US	USD	2021-08-23 00:00:00	2022-01-10 00:00:00
170	3477	cat4	subcat4	Kim-Rice	Organized bi-directional function	9900	5027	failed	88	DK	DKK	2021-04-14 00:00:00	2021-05-01 00:00:00
462	2265	cat3	subcat9	Garcia, Garcia and Lopez	Reduced stable middleware	8800	14878	successful	198	US	USD	2020-11-18 00:00:00	2021-03-18 00:00:00
3122	5911	cat2	subcat2	Watts Group	Universal 5thgeneration neural-net	5600	11924	successful	111	IT	EUR	2021-03-17 00:00:00	2021-07-08 00:00:00
1175	2288	cat1	subcat1	Werner-Bryant	Virtual uniform frame	1800	7991	successful	222	US	USD	2020-06-20 00:00:00	2021-01-30 00:00:00
2301	4064	cat6	subcat16	Schmitt-Mendoza	Profound explicit paradigm	90200	167717	successful	6212	US	USD	2020-11-14 00:00:00	2021-07-06 00:00:00
91	1294	cat6	subcat14	Reid-Mccullough	Visionary real-time groupware	1600	10541	successful	98	DK	DKK	2020-11-25 00:00:00	2021-03-01 00:00:00
87	5008	cat4	subcat4	Woods-Clark	Networked tertiary Graphical User Interface	9500	4530	failed	48	US	USD	2021-01-18 00:00:00	2021-03-20 00:00:00
1482	3604	cat2	subcat2	Vaughn, Hunt and Caldwell	Virtual grid-enabled task-force	3700	4247	successful	92	US	USD	2021-05-23 00:00:00	2021-09-23 00:00:00
1711	3263	cat4	subcat4	Bennett and Sons	Function-based multi-state software	1500	7129	successful	149	US	USD	2020-12-18 00:00:00	2021-06-27 00:00:00
2294	5631	cat4	subcat4	Lamb Inc	Optimized leadingedge concept	33300	128862	successful	2431	US	USD	2021-02-22 00:00:00	2021-11-10 00:00:00
2389	2851	cat2	subcat2	Casey-Kelly	Sharable holistic interface	7200	13653	successful	303	US	USD	2021-01-25 00:00:00	2022-01-30 00:00:00
378	3714	cat2	subcat17	Jones, Taylor and Moore	Down-sized system-worthy secured line	100	2	failed	1	IT	EUR	2021-10-08 00:00:00	2021-11-03 00:00:00
1213	1664	cat3	subcat9	Bradshaw, Gill and Donovan	Inverse secondary infrastructure	158100	145243	failed	1467	GB	GBP	2020-09-07 00:00:00	2021-07-29 00:00:00
29	5027	cat4	subcat4	Hernandez, Rodriguez and Clark	Organic foreground leverage	7200	2459	failed	75	US	USD	2021-03-12 00:00:00	2022-01-05 00:00:00
2309	3070	cat5	subcat7	Smith-Jones	Reverse-engineered static concept	8800	12356	successful	209	US	USD	2021-10-14 00:00:00	2021-12-24 00:00:00
2101	4248	cat3	subcat9	Roy PLC	Multi-channeled neutral customer loyalty	6000	5392	failed	120	US	USD	2021-03-30 00:00:00	2021-05-24 00:00:00
1057	2034	cat2	subcat18	Wright, Brooks and Villarreal	Reverse-engineered bifurcated strategy	6600	11746	successful	131	US	USD	2021-09-29 00:00:00	2021-11-29 00:00:00
2655	4085	cat3	subcat9	Flores, Miller and Johnson	Horizontal context-sensitive knowledge user	8000	11493	successful	164	US	USD	2021-03-03 00:00:00	2021-05-22 00:00:00
202	3569	cat7	subcat12	Bridges, Freeman and Kim	Cross-group multi-state task-force	2900	6243	successful	201	US	USD	2021-07-23 00:00:00	2021-12-04 00:00:00
2025	3889	cat4	subcat4	Anderson-Perez	Expanded 3rdgeneration strategy	2700	6132	successful	211	US	USD	2021-02-09 00:00:00	2021-06-11 00:00:00
2395	3136	cat4	subcat4	Wright, Fox and Marks	Assimilated real-time support	1400	3851	successful	128	US	USD	2020-12-10 00:00:00	2021-03-07 00:00:00
1418	2103	cat4	subcat4	Crawford-Peters	User-centric regional database	94200	135997	successful	1600	CA	CAD	2020-10-20 00:00:00	2021-08-24 00:00:00
1905	2329	cat4	subcat4	Romero-Hoffman	Open-source zero administration complexity	199200	184750	failed	2253	CA	CAD	2021-06-15 00:00:00	2021-10-26 00:00:00
1969	3325	cat3	subcat3	Sparks-West	Organized incremental standardization	2000	14452	successful	249	US	USD	2021-08-19 00:00:00	2021-11-21 00:00:00
2430	3131	cat4	subcat4	Baker, Morgan and Brown	Assimilated didactic open system	4700	557	failed	5	US	USD	2021-06-25 00:00:00	2021-07-16 00:00:00
1291	4995	cat3	subcat3	Mosley-Gilbert	Vision-oriented logistical intranet	2800	2734	failed	38	US	USD	2021-05-21 00:00:00	2021-09-23 00:00:00
1934	3631	cat4	subcat4	Berry-Boyer	Mandatory incremental projection	6100	14405	successful	236	US	USD	2021-02-23 00:00:00	2021-11-20 00:00:00
1225	5373	cat4	subcat4	Sanders-Allen	Grass-roots needs-based encryption	2900	1307	failed	12	US	USD	2021-10-05 00:00:00	2021-11-06 00:00:00
1363	3126	cat3	subcat9	Lopez Inc	Team-oriented 6thgeneration middleware	72600	117892	successful	4065	GB	GBP	2020-11-03 00:00:00	2021-09-24 00:00:00
963	2194	cat4	subcat4	Moreno-Turner	Inverse multi-tasking installation	5700	14508	successful	246	IT	EUR	2020-08-10 00:00:00	2021-02-07 00:00:00
1486	2906	cat4	subcat4	Jones-Watson	Switchable disintermediate moderator	7900	1901	canceled	17	US	USD	2021-06-27 00:00:00	2022-01-17 00:00:00
676	2611	cat4	subcat4	Barker Inc	Re-engineered 24/7 task-force	128000	158389	successful	2475	IT	EUR	2021-08-08 00:00:00	2022-01-30 00:00:00
2137	2374	cat4	subcat4	Tate, Bass and House	Organic object-oriented budgetary management	6000	6484	successful	76	US	USD	2021-03-19 00:00:00	2021-06-05 00:00:00
2656	3254	cat5	subcat11	Hampton, Lewis and Ray	Seamless coherent parallelism	600	4022	successful	54	US	USD	2021-07-27 00:00:00	2021-11-30 00:00:00
1556	3571	cat2	subcat18	Collins-Goodman	Cross-platform even-keeled initiative	1400	9253	successful	88	US	USD	2020-05-11 00:00:00	2021-03-09 00:00:00
747	2812	cat2	subcat17	Davis-Michael	Progressive tertiary framework	3900	4776	successful	85	GB	GBP	2021-06-29 00:00:00	2021-08-27 00:00:00
60	3961	cat8	subcat15	White, Torres and Bishop	Multi-layered dynamic protocol	9700	14606	successful	170	US	USD	2021-02-25 00:00:00	2021-03-31 00:00:00
2459	3872	cat4	subcat4	Martin, Conway and Larsen	Horizontal next generation function	122900	95993	failed	1684	US	USD	2020-12-13 00:00:00	2021-12-26 00:00:00
1903	4736	cat5	subcat11	Acevedo-Huffman	Pre-emptive impactful model	9500	4460	failed	56	US	USD	2021-06-17 00:00:00	2021-08-27 00:00:00
2003	5119	cat6	subcat19	Montgomery, Larson and Spencer	User-centric bifurcated knowledge user	4500	13536	successful	330	US	USD	2020-12-24 00:00:00	2021-04-16 00:00:00
2885	5725	cat4	subcat4	Soto LLC	Triple-buffered reciprocal project	57800	40228	failed	838	US	USD	2021-06-13 00:00:00	2021-11-18 00:00:00
2067	4037	cat7	subcat12	Sutton, Barrett and Tucker	Cross-platform needs-based approach	1100	7012	successful	127	US	USD	2021-06-26 00:00:00	2021-10-21 00:00:00
1610	2109	cat2	subcat2	Gomez, Bailey and Flores	User-friendly static contingency	16800	37857	successful	411	US	USD	2020-11-01 00:00:00	2021-03-04 00:00:00
2909	3283	cat7	subcat12	Porter-George	Reactive content-based framework	1000	14973	successful	180	GB	GBP	2020-10-09 00:00:00	2021-11-11 00:00:00
1239	6181	cat2	subcat6	Fitzgerald PLC	Realigned user-facing concept	106400	39996	failed	1000	US	USD	2021-06-25 00:00:00	2021-08-08 00:00:00
2480	3251	cat3	subcat9	Cisneros-Burton	Public-key zero tolerance orchestration	31400	41564	successful	374	US	USD	2021-07-03 00:00:00	2021-10-05 00:00:00
2181	3443	cat2	subcat8	Hill, Lawson and Wilkinson	Multi-tiered eco-centric architecture	4900	6430	successful	71	AU	AUD	2021-05-29 00:00:00	2021-08-20 00:00:00
2030	2988	cat4	subcat4	Davis-Smith	Organic motivating firmware	7400	12405	successful	203	US	USD	2021-05-16 00:00:00	2021-09-12 00:00:00
2311	1673	cat2	subcat2	Farrell and Sons	Synergized 4thgeneration conglomeration	198500	123040	failed	1482	AU	AUD	2020-08-23 00:00:00	2021-03-24 00:00:00
2821	2085	cat6	subcat19	Clark Group	Grass-roots fault-tolerant policy	4800	12516	successful	113	US	USD	2020-07-21 00:00:00	2021-02-22 00:00:00
2468	1672	cat4	subcat4	White, Singleton and Zimmerman	Monitored scalable knowledgebase	3400	8588	successful	96	US	USD	2020-07-23 00:00:00	2021-01-18 00:00:00
656	4426	cat4	subcat4	Kramer Group	Synergistic explicit parallelism	7800	6132	failed	106	US	USD	2021-10-09 00:00:00	2021-11-15 00:00:00
2791	3211	cat6	subcat19	Frazier, Patrick and Smith	Enhanced systemic analyzer	154300	74688	failed	679	IT	EUR	2020-07-03 00:00:00	2021-06-17 00:00:00
1527	3190	cat7	subcat12	Santos, Bell and Lloyd	Object-based analyzing knowledge user	20000	51775	successful	498	CH	CHF	2020-08-05 00:00:00	2021-05-15 00:00:00
1891	2081	cat4	subcat4	Hall and Sons	Pre-emptive radical architecture	108800	65877	canceled	610	US	USD	2020-11-22 00:00:00	2021-12-05 00:00:00
580	3185	cat3	subcat3	Hanson Inc	Grass-roots web-enabled contingency	2900	8807	successful	180	GB	GBP	2021-03-14 00:00:00	2021-08-29 00:00:00
682	5044	cat5	subcat5	Sanchez LLC	Stand-alone system-worthy standardization	900	1017	successful	27	US	USD	2021-08-06 00:00:00	2021-09-05 00:00:00
3097	1883	cat4	subcat4	Howard Ltd	Down-sized systematic policy	69700	151513	successful	2331	US	USD	2021-10-18 00:00:00	2021-12-26 00:00:00
873	2067	cat1	subcat1	Stewart LLC	Cloned bi-directional architecture	1300	12047	successful	113	US	USD	2020-11-29 00:00:00	2021-06-11 00:00:00
1668	4604	cat7	subcat12	Arias, Allen and Miller	Seamless transitional portal	97800	32951	failed	1220	AU	AUD	2021-02-14 00:00:00	2021-11-03 00:00:00
3076	3203	cat4	subcat4	Baker-Morris	Fully-configurable motivating approach	7600	14951	successful	164	US	USD	2020-08-23 00:00:00	2021-02-06 00:00:00
3146	5758	cat4	subcat4	Tucker, Fox and Green	Upgradable fault-tolerant approach	100	1	failed	1	US	USD	2021-06-22 00:00:00	2021-10-23 00:00:00
253	5755	cat2	subcat6	Douglas LLC	Reduced heuristic moratorium	900	9193	successful	164	US	USD	2021-10-06 00:00:00	2022-01-27 00:00:00
3088	5150	cat3	subcat9	Garcia Inc	Front-line web-enabled model	3700	10422	successful	336	US	USD	2020-09-18 00:00:00	2021-08-18 00:00:00
393	4181	cat2	subcat6	Frye, Hunt and Powell	Polarized incremental emulation	10000	2461	failed	37	IT	EUR	2021-05-10 00:00:00	2021-08-03 00:00:00
2912	3006	cat2	subcat8	Smith, Wells and Nguyen	Self-enabling grid-enabled initiative	119200	170623	successful	1917	US	USD	2021-07-09 00:00:00	2021-10-15 00:00:00
478	4865	cat3	subcat3	Charles-Johnson	Total fresh-thinking system engine	6800	9829	successful	95	US	USD	2020-10-08 00:00:00	2021-07-23 00:00:00
1061	2862	cat4	subcat4	Brandt, Carter and Wood	Ameliorated clear-thinking circuit	3900	14006	successful	147	US	USD	2021-03-05 00:00:00	2021-05-19 00:00:00
2957	6070	cat4	subcat4	Tucker, Schmidt and Reid	Multi-layered encompassing installation	3500	6527	successful	86	US	USD	2021-05-07 00:00:00	2021-12-28 00:00:00
2015	5300	cat5	subcat5	Decker Inc	Universal encompassing implementation	1500	8929	successful	83	US	USD	2020-10-14 00:00:00	2021-07-23 00:00:00
1179	3486	cat5	subcat20	Romero and Sons	Object-based client-server application	5200	3079	failed	60	US	USD	2020-10-01 00:00:00	2021-06-12 00:00:00
2568	5989	cat1	subcat1	Castillo-Carey	Cross-platform solution-oriented process improvement	142400	21307	failed	296	US	USD	2020-05-05 00:00:00	2021-05-30 00:00:00
2869	2849	cat6	subcat16	Hart-Briggs	Re-engineered user-facing approach	61400	73653	successful	676	US	USD	2021-03-17 00:00:00	2021-10-27 00:00:00
718	1612	cat3	subcat3	Jones-Meyer	Re-engineered client-driven hub	4700	12635	successful	361	AU	AUD	2020-10-24 00:00:00	2021-04-12 00:00:00
1211	3307	cat1	subcat1	Wright, Hartman and Yu	User-friendly tertiary array	3300	12437	successful	131	US	USD	2021-01-29 00:00:00	2021-02-13 00:00:00
2431	5288	cat3	subcat9	Harper-Davis	Robust heuristic encoding	1900	13816	successful	126	US	USD	2021-07-02 00:00:00	2021-12-31 00:00:00
468	6026	cat6	subcat14	Barrett PLC	Team-oriented clear-thinking capacity	166700	145382	failed	3304	IT	EUR	2021-03-20 00:00:00	2021-04-16 00:00:00
1862	2212	cat4	subcat4	David-Clark	De-engineered motivating standardization	7200	6336	failed	73	US	USD	2021-09-02 00:00:00	2021-12-31 00:00:00
2300	4591	cat5	subcat20	Chaney-Dennis	Business-focused 24hour groupware	4900	8523	successful	275	US	USD	2021-06-18 00:00:00	2021-12-31 00:00:00
449	2771	cat8	subcat15	Robinson, Lopez and Christensen	Organic next generation protocol	5400	6351	successful	67	US	USD	2020-10-07 00:00:00	2021-10-17 00:00:00
283	5682	cat5	subcat5	Clark and Sons	Reverse-engineered full-range Internet solution	5000	10748	successful	154	US	USD	2021-07-27 00:00:00	2021-11-01 00:00:00
2484	5368	cat7	subcat21	Vega Group	Synchronized regional synergy	75100	112272	successful	1782	US	USD	2021-04-15 00:00:00	2021-10-08 00:00:00
1490	3706	cat7	subcat12	Brown-Brown	Multi-lateral homogeneous success	45300	99361	successful	903	US	USD	2020-06-21 00:00:00	2021-04-14 00:00:00
186	4034	cat6	subcat14	Taylor PLC	Seamless zero-defect solution	136800	88055	failed	3387	US	USD	2020-05-21 00:00:00	2021-01-28 00:00:00
2999	3209	cat4	subcat4	Edwards-Lewis	Enhanced scalable concept	177700	33092	failed	662	CA	CAD	2022-01-15 00:00:00	2022-02-03 00:00:00
2819	2384	cat8	subcat15	Stanton, Neal and Rodriguez	Polarized uniform software	2600	9562	successful	94	IT	EUR	2020-07-19 00:00:00	2021-02-28 00:00:00
2105	3074	cat4	subcat4	Pratt LLC	Stand-alone web-enabled moderator	5300	8475	successful	180	US	USD	2020-05-10 00:00:00	2021-05-02 00:00:00
1324	2031	cat4	subcat4	Gross PLC	Proactive methodical benchmark	180200	69617	failed	774	US	USD	2020-03-24 00:00:00	2021-03-11 00:00:00
1952	5873	cat4	subcat4	Martinez, Gomez and Dalton	Team-oriented 6thgeneration matrix	103200	53067	failed	672	CA	CAD	2021-03-03 00:00:00	2021-06-16 00:00:00
2404	5501	cat2	subcat2	Allen-Curtis	Phased human-resource core	70600	42596	canceled	532	US	USD	2020-09-13 00:00:00	2021-09-17 00:00:00
990	3489	cat1	subcat1	Morgan-Martinez	Mandatory tertiary implementation	148500	4756	canceled	55	AU	AUD	2021-03-23 00:00:00	2021-12-06 00:00:00
1459	4210	cat5	subcat7	Luna, Anderson and Fox	Secured directional encryption	9600	14925	successful	533	DK	DKK	2020-10-10 00:00:00	2021-07-13 00:00:00
1106	6151	cat3	subcat3	Fleming, Zhang and Henderson	Distributed 5thgeneration implementation	164700	166116	successful	2443	GB	GBP	2021-07-17 00:00:00	2022-01-18 00:00:00
1488	6047	cat4	subcat4	Flowers and Sons	Virtual static core	3300	3834	successful	89	US	USD	2020-10-20 00:00:00	2021-11-02 00:00:00
2107	5445	cat2	subcat22	Gates PLC	Secured content-based product	4500	13985	successful	159	US	USD	2020-07-09 00:00:00	2021-05-18 00:00:00
2660	5493	cat5	subcat5	Caldwell LLC	Secured executive concept	99500	89288	failed	940	CH	CHF	2021-07-23 00:00:00	2021-07-28 00:00:00
2647	6036	cat4	subcat4	Le, Burton and Evans	Balanced zero-defect software	7700	5488	failed	117	US	USD	2020-12-25 00:00:00	2021-12-02 00:00:00
565	2368	cat5	subcat7	Briggs PLC	Distributed context-sensitive flexibility	82800	2721	canceled	58	US	USD	2021-03-23 00:00:00	2021-04-14 00:00:00
2713	1501	cat6	subcat10	Hudson-Nguyen	Down-sized disintermediate support	1800	4712	successful	50	US	USD	2020-04-07 00:00:00	2021-02-14 00:00:00
558	4351	cat7	subcat21	Hogan Ltd	Stand-alone mission-critical moratorium	9600	9216	failed	115	US	USD	2021-05-10 00:00:00	2021-12-17 00:00:00
698	3096	cat3	subcat9	Hamilton, Wright and Chavez	Down-sized empowering protocol	92100	19246	failed	326	US	USD	2021-01-14 00:00:00	2021-07-07 00:00:00
321	6162	cat5	subcat5	Bautista-Cross	Fully-configurable coherent Internet solution	5500	12274	successful	186	US	USD	2020-10-18 00:00:00	2021-05-05 00:00:00
1302	1433	cat3	subcat3	Jackson LLC	Distributed motivating algorithm	64300	65323	successful	1071	US	USD	2020-05-07 00:00:00	2021-03-21 00:00:00
1410	2720	cat3	subcat3	Figueroa Ltd	Expanded solution-oriented benchmark	5000	11502	successful	117	US	USD	2021-05-26 00:00:00	2021-11-24 00:00:00
2465	5251	cat2	subcat8	Avila-Jones	Implemented discrete secured line	5400	7322	successful	70	US	USD	2020-12-03 00:00:00	2021-11-25 00:00:00
377	1797	cat4	subcat4	Martin, Lopez and Hunter	Multi-lateral actuating installation	9000	11619	successful	135	US	USD	2021-02-07 00:00:00	2021-04-20 00:00:00
1882	1656	cat3	subcat9	Fields-Moore	Secured reciprocal array	25000	59128	successful	768	CH	CHF	2021-01-28 00:00:00	2021-11-21 00:00:00
822	1346	cat4	subcat4	Harris-Golden	Optional bandwidth-monitored middleware	8800	1518	canceled	51	US	USD	2020-09-15 00:00:00	2021-02-01 00:00:00
2730	2989	cat4	subcat4	Moss, Norman and Dunlap	Upgradable upward-trending workforce	8300	9337	successful	199	US	USD	2021-08-21 00:00:00	2021-11-15 00:00:00
2198	5629	cat3	subcat9	White, Larson and Wright	Upgradable hybrid capability	9300	11255	successful	107	US	USD	2020-04-19 00:00:00	2021-02-15 00:00:00
2757	3456	cat2	subcat8	Payne, Oliver and Burch	Managed fresh-thinking flexibility	6200	13632	successful	195	US	USD	2020-09-08 00:00:00	2021-04-16 00:00:00
2588	3229	cat2	subcat2	Brown, Palmer and Pace	Networked stable workforce	100	1	failed	1	US	USD	2021-01-21 00:00:00	2021-07-11 00:00:00
1090	2277	cat2	subcat6	Parker LLC	Customizable intermediate extranet	137200	88037	failed	1467	US	USD	2021-12-02 00:00:00	2022-01-12 00:00:00
64	1276	cat2	subcat8	Bowen, Mcdonald and Hall	User-centric fault-tolerant task-force	41500	175573	successful	3376	US	USD	2020-11-13 00:00:00	2021-07-23 00:00:00
2171	3694	cat4	subcat4	Whitehead, Bell and Hughes	Multi-tiered radical definition	189400	176112	failed	5681	US	USD	2021-07-17 00:00:00	2021-11-12 00:00:00
625	2260	cat2	subcat8	Rodriguez-Brown	Devolved foreground benchmark	171300	100650	failed	1059	US	USD	2021-01-29 00:00:00	2021-06-20 00:00:00
1065	5374	cat4	subcat4	Hall-Schaefer	Distributed eco-centric methodology	139500	90706	failed	1194	US	USD	2021-05-23 00:00:00	2021-07-29 00:00:00
174	4420	cat2	subcat2	Meza-Rogers	Streamlined encompassing encryption	36400	26914	canceled	379	AU	AUD	2020-11-24 00:00:00	2021-12-26 00:00:00
1344	3849	cat8	subcat15	Curtis-Curtis	User-friendly reciprocal initiative	4200	2212	failed	30	AU	AUD	2021-04-20 00:00:00	2021-10-14 00:00:00
2824	1638	cat2	subcat2	Carlson Inc	Ergonomic fresh-thinking installation	2100	4640	successful	41	US	USD	2020-12-28 00:00:00	2021-11-24 00:00:00
940	5230	cat4	subcat4	Clarke, Anderson and Lee	Robust explicit hardware	191200	191222	successful	1821	US	USD	2021-05-22 00:00:00	2021-06-30 00:00:00
3024	1763	cat3	subcat9	Evans Group	Stand-alone actuating support	8000	12985	successful	164	US	USD	2021-04-26 00:00:00	2021-07-14 00:00:00
2164	4323	cat3	subcat3	Bruce Group	Cross-platform methodical process improvement	5500	4300	failed	75	US	USD	2021-02-01 00:00:00	2021-09-05 00:00:00
2427	5256	cat2	subcat2	Keith, Alvarez and Potter	Extended bottom-line open architecture	6100	9134	successful	157	CH	CHF	2021-09-05 00:00:00	2021-12-16 00:00:00
1548	4836	cat8	subcat15	Burton-Watkins	Extended reciprocal circuit	3500	8864	successful	246	US	USD	2020-08-01 00:00:00	2021-08-15 00:00:00
2657	5981	cat4	subcat4	Lopez and Sons	Polarized human-resource protocol	150500	150755	successful	1396	US	USD	2021-11-14 00:00:00	2021-11-24 00:00:00
2916	1463	cat3	subcat3	Cordova Ltd	Synergized radical product	90400	110279	successful	2506	US	USD	2021-05-05 00:00:00	2021-08-08 00:00:00
1348	4577	cat8	subcat15	Brown-Vang	Robust heuristic artificial intelligence	9800	13439	successful	244	US	USD	2021-01-11 00:00:00	2021-08-25 00:00:00
557	4951	cat4	subcat4	Cruz-Ward	Robust content-based emulation	2600	10804	successful	146	AU	AUD	2021-04-01 00:00:00	2021-10-19 00:00:00
2915	3567	cat2	subcat8	Hernandez Group	Ergonomic uniform open system	128100	40107	failed	955	DK	DKK	2020-05-16 00:00:00	2021-03-18 00:00:00
320	5475	cat5	subcat13	Tran, Steele and Wilson	Profit-focused modular product	23300	98811	successful	1267	US	USD	2020-07-10 00:00:00	2021-03-23 00:00:00
1458	2114	cat2	subcat8	Summers, Gallegos and Stein	Mandatory mobile product	188100	5528	failed	67	US	USD	2020-09-24 00:00:00	2021-07-27 00:00:00
379	5216	cat6	subcat19	Blair Group	Public-key 3rdgeneration budgetary management	4900	521	failed	5	US	USD	2020-11-17 00:00:00	2021-11-23 00:00:00
1879	1665	cat5	subcat5	Nixon Inc	Centralized national firmware	800	663	failed	26	US	USD	2020-09-04 00:00:00	2021-04-16 00:00:00
597	6051	cat4	subcat4	White LLC	Cross-group 4thgeneration middleware	96700	157635	successful	1561	US	USD	2021-03-21 00:00:00	2021-10-17 00:00:00
1130	3983	cat3	subcat9	Santos, Black and Donovan	Pre-emptive scalable access	600	5368	successful	48	US	USD	2020-04-15 00:00:00	2021-02-08 00:00:00
2354	2966	cat4	subcat4	Jones, Contreras and Burnett	Sharable intangible migration	181200	47459	failed	1130	US	USD	2021-01-27 00:00:00	2021-12-16 00:00:00
1358	4478	cat4	subcat4	Stone-Orozco	Proactive scalable Graphical User Interface	115000	86060	failed	782	US	USD	2021-01-06 00:00:00	2021-05-06 00:00:00
188	4238	cat4	subcat4	Lee, Gibson and Morgan	Digitized solution-oriented product	38800	161593	successful	2739	US	USD	2021-05-02 00:00:00	2021-08-26 00:00:00
2228	4404	cat1	subcat1	Alexander-Williams	Triple-buffered cohesive structure	7200	6927	failed	210	US	USD	2021-04-17 00:00:00	2021-07-08 00:00:00
1743	5666	cat4	subcat4	Marks Ltd	Realigned human-resource orchestration	44500	159185	successful	3537	CA	CAD	2020-09-14 00:00:00	2021-04-11 00:00:00
2563	3691	cat3	subcat9	Olsen, Edwards and Reid	Optional clear-thinking software	56000	172736	successful	2107	AU	AUD	2020-10-09 00:00:00	2021-06-06 00:00:00
2424	2703	cat3	subcat3	Daniels, Rose and Tyler	Centralized global approach	8600	5315	failed	136	US	USD	2021-03-17 00:00:00	2021-04-15 00:00:00
2369	4253	cat4	subcat4	Adams Group	Reverse-engineered bandwidth-monitored contingency	27100	195750	successful	3318	DK	DKK	2021-03-09 00:00:00	2021-08-28 00:00:00
1134	5652	cat2	subcat2	Rogers, Huerta and Medina	Pre-emptive bandwidth-monitored instruction set	5100	3525	failed	86	CA	CAD	2020-04-16 00:00:00	2021-03-02 00:00:00
2241	3279	cat4	subcat4	Howard, Carter and Griffith	Adaptive asynchronous emulation	3600	10550	successful	340	US	USD	2021-07-13 00:00:00	2021-09-11 00:00:00
2745	3233	cat5	subcat20	Bailey PLC	Innovative actuating conglomeration	1000	718	failed	19	US	USD	2020-04-28 00:00:00	2021-03-22 00:00:00
1055	3017	cat4	subcat4	Parker Group	Grass-roots foreground policy	88800	28358	failed	886	US	USD	2021-02-10 00:00:00	2021-08-16 00:00:00
1215	3482	cat5	subcat13	Fox Group	Horizontal transitional paradigm	60200	138384	successful	1442	CA	CAD	2020-06-12 00:00:00	2021-02-20 00:00:00
2036	2166	cat4	subcat4	Walker, Jones and Rodriguez	Networked didactic info-mediaries	8200	2625	failed	35	IT	EUR	2021-06-18 00:00:00	2021-10-07 00:00:00
1191	4146	cat4	subcat4	Anthony-Shaw	Switchable contextually-based access	191300	45004	canceled	441	US	USD	2021-01-30 00:00:00	2021-05-23 00:00:00
879	2651	cat4	subcat4	Cook LLC	Up-sized dynamic throughput	3700	2538	failed	24	US	USD	2021-02-24 00:00:00	2021-09-04 00:00:00
3062	1409	cat4	subcat4	Sutton PLC	Mandatory reciprocal superstructure	8400	3188	failed	86	IT	EUR	2020-07-25 00:00:00	2021-05-11 00:00:00
611	3717	cat2	subcat2	Long, Morgan and Mitchell	Upgradable 4thgeneration productivity	42600	8517	failed	243	US	USD	2020-11-07 00:00:00	2021-06-16 00:00:00
3195	3963	cat2	subcat8	Calhoun, Rogers and Long	Progressive discrete hub	6600	3012	failed	65	US	USD	2020-04-25 00:00:00	2021-03-22 00:00:00
1221	2152	cat2	subcat17	Sandoval Group	Assimilated multi-tasking archive	7100	8716	successful	126	US	USD	2021-08-30 00:00:00	2021-09-21 00:00:00
2536	2974	cat2	subcat6	Smith and Sons	Upgradable high-level solution	15800	57157	successful	524	US	USD	2021-02-02 00:00:00	2021-12-15 00:00:00
1834	1268	cat3	subcat9	King Inc	Organic bandwidth-monitored frame	8200	5178	failed	100	DK	DKK	2020-08-06 00:00:00	2021-08-30 00:00:00
593	1822	cat5	subcat7	Perry and Sons	Business-focused logistical framework	54700	163118	successful	1989	US	USD	2021-03-14 00:00:00	2021-06-02 00:00:00
3039	5066	cat2	subcat6	Palmer Inc	Universal multi-state capability	63200	6041	failed	168	US	USD	2021-04-05 00:00:00	2021-07-05 00:00:00
777	5075	cat2	subcat2	Hull, Baker and Martinez	Digitized reciprocal infrastructure	1800	968	failed	13	US	USD	2020-03-14 00:00:00	2021-03-13 00:00:00
835	3855	cat4	subcat4	Becker, Rice and White	Reduced dedicated capability	100	2	failed	1	CA	CAD	2020-09-24 00:00:00	2021-05-26 00:00:00
797	5923	cat3	subcat3	Osborne, Perkins and Knox	Cross-platform bi-directional workforce	2100	14305	successful	157	US	USD	2021-02-09 00:00:00	2021-10-26 00:00:00
509	1867	cat1	subcat1	Mcknight-Freeman	Upgradable scalable methodology	8300	6543	canceled	82	US	USD	2020-08-13 00:00:00	2021-04-22 00:00:00
2286	4376	cat4	subcat4	Hayden, Shannon and Stein	Customer-focused client-server service-desk	143900	193413	successful	4498	AU	AUD	2021-05-24 00:00:00	2021-09-24 00:00:00
2110	2785	cat2	subcat18	Daniel-Luna	Mandatory multimedia leverage	75000	2529	failed	40	US	USD	2020-10-20 00:00:00	2021-01-17 00:00:00
1038	5884	cat4	subcat4	Weaver-Marquez	Focused analyzing circuit	1300	5614	successful	80	US	USD	2021-04-10 00:00:00	2022-01-04 00:00:00
2893	2441	cat6	subcat14	Austin, Baker and Kelley	Fundamental grid-enabled strategy	9000	3496	canceled	57	US	USD	2021-06-04 00:00:00	2021-10-29 00:00:00
805	1243	cat2	subcat2	Carney-Anderson	Digitized 5thgeneration knowledgebase	1000	4257	successful	43	US	USD	2020-12-25 00:00:00	2021-08-29 00:00:00
225	3411	cat5	subcat5	Jackson Inc	Mandatory multi-tasking encryption	196900	199110	successful	2053	US	USD	2020-12-07 00:00:00	2021-08-21 00:00:00
968	2467	cat5	subcat5	Warren Ltd	Distributed system-worthy application	194500	41212	live	808	AU	AUD	2021-06-07 00:00:00	2021-09-21 00:00:00
1369	1850	cat5	subcat23	Schultz Inc	Synergistic tertiary time-frame	9400	6338	failed	226	DK	DKK	2021-01-28 00:00:00	2021-08-24 00:00:00
1417	2604	cat4	subcat4	Thompson LLC	Customer-focused impactful benchmark	104400	99100	failed	1625	US	USD	2020-06-13 00:00:00	2021-06-17 00:00:00
3011	1693	cat4	subcat4	Johnson Inc	Profound next generation infrastructure	8100	12300	successful	168	US	USD	2020-02-24 00:00:00	2021-03-05 00:00:00
2691	2969	cat2	subcat8	Morgan-Warren	Face-to-face encompassing info-mediaries	87900	171549	successful	4289	US	USD	2020-12-20 00:00:00	2021-07-30 00:00:00
2159	1544	cat2	subcat2	Sullivan Group	Open-source fresh-thinking policy	1400	14324	successful	165	US	USD	2021-06-01 00:00:00	2021-07-24 00:00:00
2515	4149	cat4	subcat4	Vargas, Banks and Palmer	Extended 24/7 implementation	156800	6024	failed	143	US	USD	2020-10-07 00:00:00	2021-05-14 00:00:00
544	3463	cat4	subcat4	Johnson, Dixon and Zimmerman	Organic dynamic algorithm	121700	188721	successful	1815	US	USD	2020-08-22 00:00:00	2021-01-06 00:00:00
3030	2939	cat5	subcat23	Moore, Dudley and Navarro	Organic multi-tasking focus group	129400	57911	failed	934	US	USD	2021-03-09 00:00:00	2021-06-28 00:00:00
817	2202	cat5	subcat13	Price-Rodriguez	Adaptive logistical initiative	5700	12309	successful	397	GB	GBP	2021-02-04 00:00:00	2021-04-26 00:00:00
1400	1728	cat5	subcat11	Huang-Henderson	Stand-alone mobile customer loyalty	41700	138497	successful	1539	US	USD	2020-08-30 00:00:00	2021-08-04 00:00:00
657	5362	cat4	subcat4	Owens-Le	Focused composite approach	7900	667	failed	17	US	USD	2021-07-31 00:00:00	2021-12-01 00:00:00
966	4840	cat1	subcat1	Huff LLC	Face-to-face clear-thinking Local Area Network	121500	119830	failed	2179	US	USD	2021-04-10 00:00:00	2021-10-01 00:00:00
1558	2955	cat8	subcat15	Johnson LLC	Cross-group cohesive circuit	4800	6623	successful	138	US	USD	2020-12-18 00:00:00	2021-04-27 00:00:00
1379	5354	cat4	subcat4	Chavez, Garcia and Cantu	Synergistic explicit capability	87300	81897	failed	931	US	USD	2021-03-28 00:00:00	2021-08-25 00:00:00
286	3847	cat5	subcat23	Lester-Moore	Diverse analyzing definition	46300	186885	successful	3594	US	USD	2021-01-01 00:00:00	2021-05-30 00:00:00
894	3025	cat2	subcat2	Fox-Quinn	Enterprise-wide reciprocal success	67800	176398	successful	5880	US	USD	2020-10-14 00:00:00	2021-02-28 00:00:00
709	1615	cat8	subcat15	Garcia Inc	Progressive neutral middleware	3000	10999	successful	112	US	USD	2020-11-26 00:00:00	2021-02-08 00:00:00
1599	5154	cat7	subcat21	Johnson-Lee	Intuitive exuding process improvement	60900	102751	successful	943	US	USD	2020-08-07 00:00:00	2021-06-15 00:00:00
905	5005	cat5	subcat11	Pineda Group	Exclusive real-time protocol	137900	165352	successful	2468	US	USD	2021-05-12 00:00:00	2021-10-18 00:00:00
146	1349	cat7	subcat21	Hoffman-Howard	Extended encompassing application	85600	165798	successful	2551	US	USD	2020-12-19 00:00:00	2021-03-10 00:00:00
1632	3670	cat7	subcat12	Miranda, Hall and Mcgrath	Progressive value-added ability	2400	10084	successful	101	US	USD	2021-01-25 00:00:00	2021-06-15 00:00:00
537	2912	cat4	subcat4	Williams, Carter and Gonzalez	Cross-platform uniform hardware	7200	5523	canceled	67	US	USD	2021-02-12 00:00:00	2021-09-13 00:00:00
1289	4336	cat4	subcat4	Davis-Rodriguez	Progressive secondary portal	3400	5823	successful	92	US	USD	2020-12-05 00:00:00	2021-11-09 00:00:00
2712	5576	cat5	subcat11	Reid, Rivera and Perry	Multi-lateral national adapter	3800	6000	successful	62	US	USD	2021-10-15 00:00:00	2021-10-19 00:00:00
1980	2736	cat7	subcat12	Mendoza-Parker	Enterprise-wide motivating matrices	7500	8181	successful	149	IT	EUR	2020-06-16 00:00:00	2021-06-28 00:00:00
296	3321	cat5	subcat11	Lee, Ali and Guzman	Polarized upward-trending Local Area Network	8600	3589	failed	92	US	USD	2020-09-15 00:00:00	2021-02-23 00:00:00
1760	3353	cat2	subcat2	Gallegos-Cobb	Object-based directional function	39500	4323	failed	57	AU	AUD	2021-01-21 00:00:00	2021-12-01 00:00:00
2435	2336	cat5	subcat11	Ellison PLC	Re-contextualized tangible open architecture	9300	14822	successful	329	US	USD	2021-03-15 00:00:00	2021-11-14 00:00:00
2343	4369	cat4	subcat4	Bolton, Sanchez and Carrillo	Distributed systemic adapter	2400	10138	successful	97	DK	DKK	2020-06-11 00:00:00	2021-02-28 00:00:00
2556	4464	cat3	subcat9	Mason-Sanders	Networked web-enabled instruction set	3200	3127	failed	41	US	USD	2021-04-12 00:00:00	2021-12-03 00:00:00
2495	5626	cat4	subcat4	Pitts-Reed	Vision-oriented dynamic service-desk	29400	123124	successful	1784	US	USD	2020-04-19 00:00:00	2021-02-20 00:00:00
2497	1669	cat6	subcat10	Gonzalez-Martinez	Vision-oriented actuating open system	168500	171729	successful	1684	AU	AUD	2021-01-17 00:00:00	2021-07-23 00:00:00
1955	5544	cat2	subcat2	Hill, Martin and Garcia	Sharable scalable core	8400	10729	successful	250	US	USD	2020-08-22 00:00:00	2021-03-01 00:00:00
1129	6078	cat4	subcat4	Garcia PLC	Customer-focused attitude-oriented function	2300	10240	successful	238	US	USD	2021-04-17 00:00:00	2021-08-28 00:00:00
636	2580	cat4	subcat4	Herring-Bailey	Reverse-engineered system-worthy extranet	700	3988	successful	53	US	USD	2021-05-02 00:00:00	2021-12-28 00:00:00
434	3592	cat4	subcat4	Russell-Gardner	Re-engineered systematic monitoring	2900	14771	successful	214	US	USD	2020-09-16 00:00:00	2021-03-22 00:00:00
1231	4914	cat3	subcat3	Walters-Carter	Seamless value-added standardization	4500	14649	successful	222	US	USD	2020-11-20 00:00:00	2021-11-27 00:00:00
3162	3848	cat6	subcat14	Johnson, Patterson and Montoya	Triple-buffered fresh-thinking frame	19800	184658	successful	1884	US	USD	2020-09-20 00:00:00	2021-01-15 00:00:00
1717	2619	cat7	subcat21	Roberts and Sons	Streamlined holistic knowledgebase	6200	13103	successful	218	AU	AUD	2020-11-03 00:00:00	2021-08-02 00:00:00
211	4605	cat6	subcat19	Avila-Nelson	Up-sized intermediate website	61500	168095	successful	6465	US	USD	2020-03-25 00:00:00	2021-02-19 00:00:00
2635	6147	cat2	subcat2	Robbins and Sons	Future-proofed directional synergy	100	3	failed	1	US	USD	2020-09-16 00:00:00	2021-02-27 00:00:00
1854	1383	cat4	subcat4	Singleton Ltd	Enhanced user-facing function	7100	3840	failed	101	US	USD	2020-08-01 00:00:00	2021-07-30 00:00:00
436	1757	cat4	subcat4	Perez PLC	Operative bandwidth-monitored interface	1000	6263	successful	59	US	USD	2020-11-25 00:00:00	2021-08-28 00:00:00
2965	4390	cat5	subcat7	Rogers, Jacobs and Jackson	Upgradable multi-state instruction set	121500	108161	failed	1335	CA	CAD	2020-09-03 00:00:00	2021-02-24 00:00:00
1034	4165	cat6	subcat10	Barry Group	De-engineered static Local Area Network	4600	8505	successful	88	US	USD	2021-06-24 00:00:00	2021-08-28 00:00:00
614	4529	cat2	subcat2	Rosales, Branch and Harmon	Upgradable grid-enabled superstructure	80500	96735	successful	1697	US	USD	2020-11-03 00:00:00	2021-09-27 00:00:00
1792	6084	cat2	subcat2	Smith-Reid	Optimized actuating toolset	4100	959	failed	15	GB	GBP	2020-11-03 00:00:00	2021-10-17 00:00:00
121	2916	cat4	subcat4	Williams Inc	Decentralized exuding strategy	5700	8322	successful	92	US	USD	2020-05-03 00:00:00	2021-05-08 00:00:00
2936	2005	cat4	subcat4	Duncan, Mcdonald and Miller	Assimilated coherent hardware	5000	13424	successful	186	US	USD	2020-11-14 00:00:00	2021-10-24 00:00:00
2081	2261	cat8	subcat15	Watkins Ltd	Multi-channeled responsive implementation	1800	10755	successful	138	US	USD	2021-04-07 00:00:00	2021-06-30 00:00:00
1204	5342	cat2	subcat2	Allen-Jones	Centralized modular initiative	6300	9935	successful	261	US	USD	2021-07-15 00:00:00	2021-10-12 00:00:00
669	4087	cat2	subcat2	Mason-Smith	Reverse-engineered cohesive migration	84300	26303	failed	454	US	USD	2021-08-04 00:00:00	2021-09-13 00:00:00
735	2761	cat2	subcat8	Lloyd, Kennedy and Davis	Compatible multimedia hub	1700	5328	successful	107	US	USD	2021-02-27 00:00:00	2021-10-02 00:00:00
933	2908	cat8	subcat15	Walker Ltd	Organic eco-centric success	2900	10756	successful	199	US	USD	2020-10-26 00:00:00	2021-05-06 00:00:00
3055	2155	cat4	subcat4	Gordon PLC	Virtual reciprocal policy	45600	165375	successful	5512	US	USD	2021-08-29 00:00:00	2021-10-30 00:00:00
270	5642	cat4	subcat4	Lee and Sons	Persevering interactive emulation	4900	6031	successful	86	US	USD	2020-05-15 00:00:00	2021-03-10 00:00:00
647	6217	cat2	subcat18	Cole LLC	Proactive responsive emulation	111900	85902	failed	3182	IT	EUR	2021-08-07 00:00:00	2022-01-13 00:00:00
1219	4222	cat4	subcat4	Acosta PLC	Extended eco-centric function	61600	143910	successful	2768	AU	AUD	2021-05-08 00:00:00	2021-09-24 00:00:00
1257	4798	cat5	subcat5	Brown-Mckee	Networked optimal productivity	1500	2708	successful	48	US	USD	2021-03-23 00:00:00	2022-01-10 00:00:00
2162	5660	cat5	subcat20	Miles and Sons	Persistent attitude-oriented approach	3500	8842	successful	87	US	USD	2021-06-11 00:00:00	2021-06-24 00:00:00
2274	5000	cat7	subcat12	Sawyer, Horton and Williams	Triple-buffered 4thgeneration toolset	173900	47260	canceled	1890	US	USD	2021-10-07 00:00:00	2021-10-13 00:00:00
2284	2809	cat8	subcat15	Foley-Cox	Progressive zero administration leverage	153700	1953	live	61	US	USD	2021-07-09 00:00:00	2022-01-13 00:00:00
407	3349	cat4	subcat4	Horton, Morrison and Clark	Networked radical neural-net	51100	155349	successful	1894	US	USD	2021-06-18 00:00:00	2021-10-25 00:00:00
2440	3647	cat4	subcat4	Thomas and Sons	Re-engineered heuristic forecast	7800	10704	successful	282	CA	CAD	2020-11-04 00:00:00	2021-07-15 00:00:00
2476	5745	cat4	subcat4	Morgan-Jenkins	Fully-configurable background algorithm	2400	773	failed	15	US	USD	2021-09-13 00:00:00	2021-12-03 00:00:00
41	2583	cat6	subcat19	Ward, Sanchez and Kemp	Stand-alone discrete Graphical User Interface	3900	9419	successful	116	US	USD	2021-06-02 00:00:00	2021-12-31 00:00:00
890	5441	cat7	subcat12	Fields Ltd	Front-line foreground project	5500	5324	failed	133	US	USD	2021-05-23 00:00:00	2021-06-21 00:00:00
2743	2090	cat4	subcat4	Ramos-Mitchell	Persevering system-worthy info-mediaries	700	7465	successful	83	US	USD	2020-12-14 00:00:00	2021-04-24 00:00:00
266	3386	cat3	subcat3	Higgins, Davis and Salazar	Distributed multi-tasking strategy	2700	8799	successful	91	US	USD	2021-03-28 00:00:00	2021-08-23 00:00:00
3113	1816	cat4	subcat4	Smith-Jenkins	Vision-oriented methodical application	8000	13656	successful	546	US	USD	2020-10-02 00:00:00	2021-07-25 00:00:00
1909	4718	cat5	subcat11	Braun PLC	Function-based high-level infrastructure	2500	14536	successful	393	US	USD	2021-07-06 00:00:00	2021-11-05 00:00:00
962	1677	cat4	subcat4	Drake PLC	Profound object-oriented paradigm	164500	150552	failed	2062	US	USD	2020-02-25 00:00:00	2021-04-06 00:00:00
213	4218	cat5	subcat20	Ross, Kelly and Brown	Virtual contextually-based circuit	8400	9076	successful	133	US	USD	2021-07-20 00:00:00	2021-08-18 00:00:00
2741	4548	cat2	subcat2	Lucas-Mullins	Business-focused dynamic instruction set	8100	1517	failed	29	DK	DKK	2020-05-27 00:00:00	2021-03-20 00:00:00
2589	1431	cat3	subcat3	Tran LLC	Ameliorated fresh-thinking protocol	9800	8153	failed	132	US	USD	2021-02-20 00:00:00	2021-04-10 00:00:00
1238	2830	cat4	subcat4	Dawson, Brady and Gilbert	Front-line optimizing emulation	900	6357	successful	254	US	USD	2020-08-19 00:00:00	2021-01-25 00:00:00
164	4400	cat4	subcat4	Obrien-Aguirre	Devolved uniform complexity	112100	19557	canceled	184	US	USD	2021-02-15 00:00:00	2021-11-12 00:00:00
2685	5773	cat2	subcat6	Ferguson PLC	Public-key intangible superstructure	6300	13213	successful	176	US	USD	2020-10-03 00:00:00	2021-02-19 00:00:00
2836	4161	cat2	subcat17	Garcia Ltd	Secured global success	5600	5476	failed	137	DK	DKK	2020-12-13 00:00:00	2021-04-14 00:00:00
2062	2062	cat4	subcat4	Smith, Love and Smith	Grass-roots mission-critical capability	800	13474	successful	337	CA	CAD	2021-03-11 00:00:00	2021-08-18 00:00:00
3111	3458	cat5	subcat5	Wilson, Hall and Osborne	Advanced global data-warehouse	168600	91722	failed	908	US	USD	2020-11-18 00:00:00	2021-08-16 00:00:00
1414	3174	cat3	subcat3	Bell, Grimes and Kerr	Self-enabling uniform complexity	1800	8219	successful	107	US	USD	2021-03-05 00:00:00	2022-02-20 00:00:00
2765	5565	cat1	subcat1	Ho-Harris	Versatile cohesive encoding	7300	717	failed	10	US	USD	2020-12-01 00:00:00	2021-09-28 00:00:00
939	1906	cat4	subcat4	Ross Group	Organized executive solution	6500	1065	canceled	32	IT	EUR	2021-02-02 00:00:00	2021-03-26 00:00:00
390	5479	cat4	subcat4	Turner-Davis	Automated local emulation	600	8038	successful	183	US	USD	2021-02-17 00:00:00	2021-06-09 00:00:00
2851	4320	cat4	subcat4	Smith, Jackson and Herrera	Enterprise-wide intermediate middleware	192900	68769	failed	1910	CH	CHF	2021-02-07 00:00:00	2021-10-24 00:00:00
1607	4213	cat4	subcat4	Smith-Hess	Grass-roots real-time Local Area Network	6100	3352	failed	38	AU	AUD	2020-04-28 00:00:00	2021-03-10 00:00:00
3201	3373	cat4	subcat4	Brown, Herring and Bass	Organized client-driven capacity	7200	6785	failed	104	AU	AUD	2020-11-26 00:00:00	2021-03-11 00:00:00
641	4184	cat2	subcat2	Chase, Garcia and Johnson	Adaptive intangible database	3500	5037	successful	72	US	USD	2021-05-20 00:00:00	2021-06-21 00:00:00
524	5472	cat1	subcat1	Ramsey and Sons	Grass-roots contextually-based algorithm	3800	1954	failed	49	US	USD	2021-11-23 00:00:00	2022-02-05 00:00:00
2423	5559	cat6	subcat10	Cooke PLC	Focused executive core	100	5	failed	1	DK	DKK	2020-12-05 00:00:00	2021-09-25 00:00:00
1532	5419	cat5	subcat5	Wong-Walker	Multi-channeled disintermediate policy	900	12102	successful	295	US	USD	2021-06-08 00:00:00	2021-09-04 00:00:00
1748	4171	cat4	subcat4	Ferguson, Collins and Mata	Customizable bi-directional hardware	76100	24234	failed	245	US	USD	2020-06-07 00:00:00	2021-05-24 00:00:00
3168	1302	cat2	subcat8	Guerrero, Flores and Jenkins	Networked optimal architecture	3400	2809	failed	32	US	USD	2021-01-12 00:00:00	2021-12-22 00:00:00
1077	3520	cat5	subcat5	Peterson PLC	User-friendly discrete benchmark	2100	11469	successful	142	US	USD	2021-02-03 00:00:00	2021-04-10 00:00:00
3114	6010	cat4	subcat4	Townsend Ltd	Grass-roots actuating policy	2800	8014	successful	85	US	USD	2021-01-27 00:00:00	2021-05-15 00:00:00
2547	4617	cat4	subcat4	Rush, Reed and Hall	Enterprise-wide 3rdgeneration knowledge user	6500	514	failed	7	US	USD	2021-08-12 00:00:00	2021-11-18 00:00:00
2065	1417	cat6	subcat14	Salazar-Dodson	Face-to-face zero tolerance moderator	32900	43473	successful	659	DK	DKK	2021-03-20 00:00:00	2021-09-25 00:00:00
1143	4770	cat4	subcat4	Davis Ltd	Grass-roots optimizing projection	118200	87560	failed	803	US	USD	2021-07-17 00:00:00	2021-11-18 00:00:00
2545	4328	cat2	subcat8	Harris-Perry	User-centric 6thgeneration attitude	4100	3087	canceled	75	US	USD	2021-03-05 00:00:00	2021-07-26 00:00:00
1315	5171	cat7	subcat12	Velazquez, Hunt and Ortiz	Switchable zero tolerance website	7800	1586	failed	16	US	USD	2021-03-28 00:00:00	2021-04-23 00:00:00
2219	4394	cat4	subcat4	Flores PLC	Focused real-time help-desk	6300	12812	successful	121	US	USD	2020-12-09 00:00:00	2021-05-09 00:00:00
854	1794	cat4	subcat4	Martinez LLC	Robust impactful approach	59100	183345	successful	3742	US	USD	2020-12-31 00:00:00	2022-02-06 00:00:00
336	3510	cat2	subcat2	Miller-Irwin	Secured maximized policy	2200	8697	successful	223	US	USD	2021-11-26 00:00:00	2021-12-02 00:00:00
3014	2487	cat5	subcat5	Sanchez-Morgan	Realigned upward-trending strategy	1400	4126	successful	133	US	USD	2020-06-04 00:00:00	2021-04-11 00:00:00
326	2215	cat4	subcat4	Lopez, Adams and Johnson	Open-source interactive knowledge user	9500	3220	failed	31	US	USD	2021-07-10 00:00:00	2021-08-03 00:00:00
2991	4136	cat1	subcat1	Martin-Marshall	Configurable demand-driven matrix	9600	6401	failed	108	IT	EUR	2020-12-19 00:00:00	2021-10-06 00:00:00
1359	3723	cat4	subcat4	Summers PLC	Cross-group coherent hierarchy	6600	1269	failed	30	US	USD	2020-07-31 00:00:00	2021-03-22 00:00:00
341	5842	cat2	subcat2	Young, Hart and Ryan	Decentralized demand-driven open system	5700	903	failed	17	US	USD	2021-07-29 00:00:00	2021-09-25 00:00:00
2365	3289	cat3	subcat3	Mills Group	Advanced empowering matrix	8400	3251	canceled	64	US	USD	2020-03-24 00:00:00	2021-02-22 00:00:00
358	1249	cat6	subcat14	Sandoval-Powell	Phased holistic implementation	84400	8092	failed	80	US	USD	2021-05-09 00:00:00	2021-08-03 00:00:00
583	5409	cat5	subcat13	Mills, Frazier and Perez	Proactive attitude-oriented knowledge user	170400	160422	failed	2468	US	USD	2021-05-30 00:00:00	2021-09-09 00:00:00
1373	2951	cat4	subcat4	Hebert Group	Visionary asymmetric Graphical User Interface	117900	196377	successful	5168	US	USD	2021-03-18 00:00:00	2021-03-22 00:00:00
2665	3432	cat5	subcat5	Cole, Smith and Wood	Integrated zero-defect help-desk	8900	2148	failed	26	GB	GBP	2021-05-03 00:00:00	2022-01-25 00:00:00
2500	2297	cat4	subcat4	Harris, Hall and Harris	Inverse analyzing matrices	7100	11648	successful	307	US	USD	2021-04-18 00:00:00	2021-08-28 00:00:00
921	6161	cat4	subcat4	Saunders Group	Programmable systemic implementation	6500	5897	failed	73	US	USD	2020-05-31 00:00:00	2021-01-31 00:00:00
135	4603	cat5	subcat11	Pham, Avila and Nash	Multi-channeled next generation architecture	7200	3326	failed	128	US	USD	2020-05-27 00:00:00	2021-04-14 00:00:00
2413	5818	cat4	subcat4	Patterson, Salinas and Lucas	Digitized 3rdgeneration encoding	2600	1002	failed	33	US	USD	2020-04-10 00:00:00	2021-04-15 00:00:00
3004	4270	cat2	subcat2	Young PLC	Innovative well-modulated functionalities	98700	131826	successful	2441	US	USD	2020-09-01 00:00:00	2021-05-03 00:00:00
1911	6007	cat7	subcat12	Willis and Sons	Fundamental incremental database	93800	21477	live	211	US	USD	2021-04-06 00:00:00	2021-06-16 00:00:00
2726	4084	cat5	subcat5	Thompson-Bates	Expanded encompassing open architecture	33700	62330	successful	1385	GB	GBP	2021-01-05 00:00:00	2021-04-18 00:00:00
2049	1340	cat1	subcat1	Rose-Silva	Intuitive static portal	3300	14643	successful	190	US	USD	2021-01-30 00:00:00	2021-06-25 00:00:00
1732	5675	cat3	subcat9	Pacheco, Johnson and Torres	Optional bandwidth-monitored definition	20700	41396	successful	470	US	USD	2020-07-30 00:00:00	2021-03-22 00:00:00
1174	2010	cat4	subcat4	Carlson, Dixon and Jones	Persistent well-modulated synergy	9600	11900	successful	253	US	USD	2020-10-28 00:00:00	2021-05-02 00:00:00
1194	6201	cat2	subcat2	Mcgee Group	Assimilated discrete algorithm	66200	123538	successful	1113	US	USD	2020-06-27 00:00:00	2021-05-04 00:00:00
3176	1791	cat2	subcat2	Jordan-Acosta	Operative uniform hub	173800	198628	successful	2283	US	USD	2020-02-27 00:00:00	2021-02-12 00:00:00
642	3314	cat2	subcat2	Nunez Inc	Customizable intangible capability	70700	68602	failed	1072	US	USD	2020-11-06 00:00:00	2021-07-21 00:00:00
34	5852	cat4	subcat4	Hayden Ltd	Innovative didactic analyzer	94500	116064	successful	1095	US	USD	2020-06-17 00:00:00	2021-07-08 00:00:00
217	4618	cat4	subcat4	Gonzalez-Burton	Decentralized intangible encoding	69800	125042	successful	1690	US	USD	2020-12-20 00:00:00	2021-04-27 00:00:00
1693	2618	cat4	subcat4	Lewis, Taylor and Rivers	Front-line transitional algorithm	136300	108974	canceled	1297	CA	CAD	2021-02-07 00:00:00	2022-02-10 00:00:00
2333	4967	cat8	subcat15	Butler, Henry and Espinoza	Switchable didactic matrices	37100	34964	failed	393	US	USD	2021-04-03 00:00:00	2021-12-23 00:00:00
80	4594	cat2	subcat8	Guzman Group	Ameliorated disintermediate utilization	114300	96777	failed	1257	US	USD	2021-02-10 00:00:00	2021-09-22 00:00:00
2847	2080	cat4	subcat4	Gibson-Hernandez	Visionary foreground middleware	47900	31864	failed	328	US	USD	2021-02-17 00:00:00	2021-06-09 00:00:00
3104	2793	cat4	subcat4	Spencer-Weber	Optional zero-defect task-force	9000	4853	failed	147	US	USD	2020-12-05 00:00:00	2021-07-13 00:00:00
980	4890	cat7	subcat12	Berger, Johnson and Marshall	Devolved exuding emulation	197600	82959	failed	830	US	USD	2020-12-12 00:00:00	2021-06-18 00:00:00
476	3528	cat5	subcat7	Taylor, Cisneros and Romero	Open-source neutral task-force	157600	23159	failed	331	GB	GBP	2021-04-06 00:00:00	2021-08-09 00:00:00
116	5810	cat2	subcat8	Little-Marsh	Virtual attitude-oriented migration	8000	2758	failed	25	US	USD	2021-10-07 00:00:00	2021-12-28 00:00:00
2900	5720	cat3	subcat3	Petersen and Sons	Open-source full-range portal	900	12607	successful	191	US	USD	2021-05-03 00:00:00	2022-02-13 00:00:00
553	4593	cat1	subcat1	Hensley Ltd	Versatile cohesive open system	199000	142823	failed	3483	US	USD	2021-07-27 00:00:00	2021-11-21 00:00:00
2834	3186	cat4	subcat4	Navarro and Sons	Multi-layered bottom-line frame	180800	95958	failed	923	US	USD	2021-05-27 00:00:00	2021-06-01 00:00:00
2314	5136	cat2	subcat18	Shannon Ltd	Pre-emptive neutral capacity	100	5	failed	1	US	USD	2021-01-19 00:00:00	2021-07-25 00:00:00
2005	2646	cat2	subcat2	Young LLC	Universal maximized methodology	74100	94631	successful	2013	US	USD	2021-09-12 00:00:00	2021-10-05 00:00:00
2514	3460	cat4	subcat4	Adams, Willis and Sanchez	Expanded hybrid hardware	2800	977	failed	33	CA	CAD	2021-04-25 00:00:00	2021-07-05 00:00:00
702	4345	cat4	subcat4	Mills-Roy	Profit-focused multi-tasking access	33600	137961	successful	1703	US	USD	2020-07-25 00:00:00	2021-04-16 00:00:00
42	2690	cat5	subcat5	Brown Group	Profit-focused transitional capability	6100	7548	successful	80	DK	DKK	2020-11-22 00:00:00	2021-04-06 00:00:00
948	4025	cat3	subcat9	Burns-Burnett	Front-line scalable definition	3800	2241	live	86	US	USD	2020-08-28 00:00:00	2021-05-19 00:00:00
2926	4524	cat4	subcat4	Glass, Nunez and Mcdonald	Open-source systematic protocol	9300	3431	failed	40	IT	EUR	2021-10-12 00:00:00	2022-01-18 00:00:00
1971	3978	cat7	subcat12	Perez, Davis and Wilson	Implemented tangible algorithm	2300	4253	successful	41	US	USD	2020-10-20 00:00:00	2021-08-25 00:00:00
748	3910	cat8	subcat15	Diaz-Garcia	Profit-focused 3rdgeneration circuit	9700	1146	failed	23	CA	CAD	2021-03-05 00:00:00	2021-03-14 00:00:00
684	5825	cat5	subcat11	Salazar-Moon	Compatible needs-based architecture	4000	11948	successful	187	US	USD	2020-09-03 00:00:00	2021-07-16 00:00:00
385	3564	cat4	subcat4	Larsen-Chung	Right-sized zero tolerance migration	59700	135132	successful	2875	GB	GBP	2020-12-28 00:00:00	2021-12-26 00:00:00
3007	2396	cat4	subcat4	Anderson and Sons	Quality-focused reciprocal structure	5500	9546	successful	88	US	USD	2021-03-07 00:00:00	2021-05-28 00:00:00
2612	2140	cat2	subcat2	Lawrence Group	Automated actuating conglomeration	3700	13755	successful	191	US	USD	2021-04-23 00:00:00	2022-01-26 00:00:00
807	3079	cat2	subcat2	Gray-Davis	Re-contextualized local initiative	5200	8330	successful	139	US	USD	2021-03-12 00:00:00	2021-10-07 00:00:00
2087	2017	cat2	subcat8	Ramirez-Myers	Switchable intangible definition	900	14547	successful	186	US	USD	2020-11-25 00:00:00	2021-10-16 00:00:00
53	5444	cat4	subcat4	Lucas, Hall and Bonilla	Networked bottom-line initiative	1600	11735	successful	112	AU	AUD	2021-07-24 00:00:00	2021-09-11 00:00:00
2944	2216	cat4	subcat4	Williams, Perez and Villegas	Robust directional system engine	1800	10658	successful	101	US	USD	2021-01-25 00:00:00	2021-07-21 00:00:00
2963	1241	cat4	subcat4	Brooks, Jones and Ingram	Triple-buffered explicit methodology	9900	1870	failed	75	US	USD	2021-05-12 00:00:00	2022-01-18 00:00:00
2976	1484	cat5	subcat5	Whitaker, Wallace and Daniels	Reactive directional capacity	5200	14394	successful	206	GB	GBP	2021-07-05 00:00:00	2021-10-15 00:00:00
3051	3475	cat5	subcat20	Smith-Gonzalez	Polarized needs-based approach	5400	14743	successful	154	US	USD	2021-03-30 00:00:00	2021-06-02 00:00:00
2777	4333	cat4	subcat4	Skinner PLC	Intuitive well-modulated middleware	112300	178965	successful	5966	US	USD	2021-07-01 00:00:00	2021-08-19 00:00:00
3064	5657	cat4	subcat4	Nolan, Smith and Sanchez	Multi-channeled logistical matrices	189200	128410	failed	2176	US	USD	2021-10-19 00:00:00	2021-10-24 00:00:00
56	2527	cat5	subcat5	Green-Carr	Pre-emptive bifurcated artificial intelligence	900	14324	successful	169	US	USD	2021-05-15 00:00:00	2021-12-02 00:00:00
763	5967	cat4	subcat4	Brown-Parker	Down-sized coherent toolset	22500	164291	successful	2106	US	USD	2021-01-23 00:00:00	2021-06-25 00:00:00
896	5698	cat5	subcat5	Marshall Inc	Open-source multi-tasking data-warehouse	167400	22073	failed	441	US	USD	2021-03-10 00:00:00	2021-04-06 00:00:00
1409	3331	cat2	subcat8	Leblanc-Pineda	Future-proofed upward-trending contingency	2700	1479	failed	25	US	USD	2021-08-13 00:00:00	2021-11-21 00:00:00
2889	3841	cat2	subcat2	Perry PLC	Mandatory uniform matrix	3400	12275	successful	131	US	USD	2020-06-23 00:00:00	2021-05-10 00:00:00
2338	6105	cat4	subcat4	Klein, Stark and Livingston	Phased methodical initiative	49700	5098	failed	127	US	USD	2021-01-17 00:00:00	2021-12-09 00:00:00
2905	3895	cat5	subcat5	Fleming-Oliver	Managed stable function	178200	24882	failed	355	US	USD	2021-02-10 00:00:00	2021-07-26 00:00:00
1779	1891	cat4	subcat4	Reilly, Aguirre and Johnson	Realigned clear-thinking migration	7200	2912	failed	44	GB	GBP	2020-07-18 00:00:00	2021-01-31 00:00:00
2291	1281	cat4	subcat4	Davidson, Wilcox and Lewis	Optional clear-thinking process improvement	2500	4008	successful	84	US	USD	2020-12-26 00:00:00	2021-04-04 00:00:00
3192	4186	cat4	subcat4	Michael, Anderson and Vincent	Cross-group global moratorium	5300	9749	successful	155	US	USD	2020-12-08 00:00:00	2021-09-05 00:00:00
1696	2511	cat8	subcat15	King Ltd	Visionary systemic process improvement	9100	5803	failed	67	US	USD	2021-03-29 00:00:00	2021-06-11 00:00:00
1559	4272	cat1	subcat1	Baker Ltd	Progressive intangible flexibility	6300	14199	successful	189	US	USD	2021-04-18 00:00:00	2021-12-22 00:00:00
1405	3533	cat5	subcat5	Baker, Collins and Smith	Reactive real-time software	114400	196779	successful	4799	US	USD	2021-09-13 00:00:00	2021-12-16 00:00:00
521	3618	cat6	subcat10	Warren-Harrison	Programmable incremental knowledge user	38900	56859	successful	1137	US	USD	2020-04-20 00:00:00	2021-01-21 00:00:00
1625	2177	cat4	subcat4	Gardner Group	Progressive 5thgeneration customer loyalty	135500	103554	failed	1068	US	USD	2021-06-20 00:00:00	2021-11-12 00:00:00
2808	4102	cat3	subcat9	Flores-Lambert	Triple-buffered logistical frame	109000	42795	failed	424	US	USD	2021-07-18 00:00:00	2021-10-05 00:00:00
764	6089	cat2	subcat8	Cruz Ltd	Exclusive dynamic adapter	114800	12938	canceled	145	CH	CHF	2020-06-26 00:00:00	2021-03-09 00:00:00
834	4701	cat4	subcat4	Knox-Garner	Automated systemic hierarchy	83000	101352	successful	1152	US	USD	2021-01-19 00:00:00	2021-08-26 00:00:00
2793	5645	cat8	subcat15	Davis-Allen	Digitized eco-centric core	2400	4477	successful	50	US	USD	2020-09-19 00:00:00	2021-05-17 00:00:00
2901	4499	cat6	subcat10	Miller-Patel	Mandatory uniform strategy	60400	4393	failed	151	US	USD	2021-11-21 00:00:00	2021-12-19 00:00:00
2141	3365	cat3	subcat9	Hernandez-Grimes	Profit-focused zero administration forecast	102900	67546	failed	1608	US	USD	2021-01-07 00:00:00	2021-05-08 00:00:00
308	2290	cat2	subcat18	Owens, Hall and Gonzalez	De-engineered static orchestration	62800	143788	successful	3059	CA	CAD	2020-11-19 00:00:00	2021-08-28 00:00:00
705	1890	cat5	subcat5	Noble-Bailey	Customizable dynamic info-mediaries	800	3755	successful	34	US	USD	2020-06-26 00:00:00	2021-04-21 00:00:00
1670	1304	cat4	subcat4	Taylor PLC	Enhanced incremental budgetary management	7100	9238	successful	220	US	USD	2020-05-21 00:00:00	2021-02-20 00:00:00
1159	3799	cat5	subcat7	Holmes PLC	Digitized local info-mediaries	46100	77012	successful	1604	AU	AUD	2020-08-11 00:00:00	2021-09-07 00:00:00
2592	2749	cat2	subcat2	Jones-Martin	Virtual systematic monitoring	8100	14083	successful	454	US	USD	2020-09-21 00:00:00	2021-02-11 00:00:00
1195	2028	cat5	subcat11	Myers LLC	Reactive bottom-line open architecture	1700	12202	successful	123	IT	EUR	2020-07-01 00:00:00	2021-04-06 00:00:00
1635	2383	cat2	subcat8	Acosta, Mullins and Morris	Pre-emptive interactive model	97300	62127	failed	941	US	USD	2021-05-28 00:00:00	2021-07-01 00:00:00
2432	5721	cat8	subcat15	Bell PLC	Ergonomic eco-centric open architecture	100	2	failed	1	US	USD	2021-10-07 00:00:00	2021-11-25 00:00:00
109	1394	cat4	subcat4	Smith-Schmidt	Inverse radical hierarchy	900	13772	successful	299	US	USD	2021-02-05 00:00:00	2021-08-08 00:00:00
1509	3451	cat5	subcat13	Ruiz, Richardson and Cole	Team-oriented static interface	7300	2946	failed	40	US	USD	2020-10-28 00:00:00	2021-04-20 00:00:00
1285	5512	cat4	subcat4	Leonard-Mcclain	Virtual foreground throughput	195800	168820	failed	3015	CA	CAD	2021-04-16 00:00:00	2021-08-22 00:00:00
500	2453	cat4	subcat4	Bailey-Boyer	Visionary exuding Internet solution	48900	154321	successful	2237	US	USD	2021-04-07 00:00:00	2021-12-19 00:00:00
2835	6055	cat4	subcat4	Lee LLC	Synchronized secondary analyzer	29600	26527	failed	435	US	USD	2021-03-26 00:00:00	2021-08-24 00:00:00
1533	5704	cat5	subcat5	Lyons Inc	Balanced attitude-oriented parallelism	39300	71583	successful	645	US	USD	2020-03-03 00:00:00	2021-03-10 00:00:00
2445	3707	cat4	subcat4	Herrera-Wilson	Organized bandwidth-monitored core	3400	12100	successful	484	DK	DKK	2021-05-03 00:00:00	2021-08-29 00:00:00
2906	2205	cat5	subcat5	Mahoney, Adams and Lucas	Cloned leadingedge utilization	9200	12129	successful	154	CA	CAD	2020-05-04 00:00:00	2021-04-29 00:00:00
1237	5976	cat2	subcat2	Stewart LLC	Secured asymmetric projection	135600	62804	failed	714	US	USD	2021-02-11 00:00:00	2021-05-09 00:00:00
1572	3290	cat7	subcat21	Mcmillan Group	Advanced cohesive Graphic Interface	153700	55536	live	1111	US	USD	2021-03-22 00:00:00	2021-12-29 00:00:00
254	4257	cat4	subcat4	Beck, Thompson and Martinez	Down-sized maximized function	7800	8161	successful	82	US	USD	2021-03-21 00:00:00	2021-06-06 00:00:00
576	4588	cat6	subcat14	Rodriguez-Scott	Realigned zero tolerance software	2100	14046	successful	134	US	USD	2020-10-14 00:00:00	2021-01-17 00:00:00
563	4785	cat5	subcat11	Rush-Bowers	Persevering analyzing extranet	189500	117628	live	1089	US	USD	2021-04-12 00:00:00	2021-12-26 00:00:00
2201	3033	cat1	subcat1	Davis and Sons	Innovative human-resource migration	188200	159405	failed	5497	US	USD	2021-05-01 00:00:00	2021-08-28 00:00:00
1339	2779	cat4	subcat4	Anderson-Pham	Intuitive needs-based monitoring	113500	12552	failed	418	US	USD	2021-02-01 00:00:00	2021-10-08 00:00:00
197	2131	cat5	subcat5	Stewart-Coleman	Customer-focused disintermediate toolset	134600	59007	failed	1439	US	USD	2021-01-15 00:00:00	2021-03-09 00:00:00
2035	6229	cat4	subcat4	Bradshaw, Smith and Ryan	Upgradable 24/7 emulation	1700	943	failed	15	US	USD	2021-05-09 00:00:00	2021-06-26 00:00:00
1739	3429	cat5	subcat5	Jackson PLC	Quality-focused client-server core	163700	93963	failed	1999	CA	CAD	2020-12-09 00:00:00	2021-04-07 00:00:00
2352	1613	cat3	subcat3	Ware-Arias	Upgradable maximized protocol	113800	140469	successful	5203	US	USD	2021-04-28 00:00:00	2021-12-10 00:00:00
691	4734	cat4	subcat4	Blair, Reyes and Woods	Cross-platform interactive synergy	5000	6423	successful	94	US	USD	2021-08-08 00:00:00	2021-09-01 00:00:00
298	4439	cat3	subcat9	Thomas-Lopez	User-centric fault-tolerant archive	9400	6015	failed	118	US	USD	2020-12-24 00:00:00	2021-03-18 00:00:00
206	1441	cat4	subcat4	Brown, Davies and Pacheco	Reverse-engineered regional knowledge user	8700	11075	successful	205	US	USD	2020-09-27 00:00:00	2021-03-15 00:00:00
1003	5799	cat1	subcat1	Jones-Riddle	Self-enabling real-time definition	147800	15723	failed	162	US	USD	2020-10-19 00:00:00	2021-07-20 00:00:00
1653	1419	cat2	subcat8	Schmidt-Gomez	User-centric impactful projection	5100	2064	failed	83	US	USD	2021-06-02 00:00:00	2021-09-04 00:00:00
1549	3059	cat8	subcat15	Sullivan, Davis and Booth	Vision-oriented actuating hardware	2700	7767	successful	92	US	USD	2021-03-21 00:00:00	2021-09-25 00:00:00
1026	3224	cat4	subcat4	Edwards-Kane	Virtual leadingedge framework	1800	10313	successful	219	US	USD	2020-11-08 00:00:00	2021-11-13 00:00:00
2523	3181	cat4	subcat4	Hicks, Wall and Webb	Managed discrete framework	174500	197018	successful	2526	US	USD	2020-04-08 00:00:00	2021-04-15 00:00:00
1620	6061	cat5	subcat11	Mayer-Richmond	Progressive zero-defect capability	101400	47037	failed	747	US	USD	2021-06-02 00:00:00	2021-06-30 00:00:00
2594	4466	cat8	subcat15	Robles Ltd	Right-sized demand-driven adapter	191000	173191	canceled	2138	US	USD	2021-02-19 00:00:00	2021-06-13 00:00:00
539	6081	cat4	subcat4	Cochran Ltd	Re-engineered attitude-oriented frame	8100	5487	failed	84	US	USD	2021-04-17 00:00:00	2021-11-03 00:00:00
687	2159	cat4	subcat4	Rosales LLC	Compatible multimedia utilization	5100	9817	successful	94	US	USD	2020-11-07 00:00:00	2021-09-06 00:00:00
2302	3324	cat4	subcat4	Harper-Bryan	Re-contextualized dedicated hardware	7700	6369	failed	91	US	USD	2020-04-09 00:00:00	2021-03-11 00:00:00
694	3176	cat5	subcat5	Potter, Harper and Everett	Decentralized composite paradigm	121400	65755	failed	792	US	USD	2020-06-12 00:00:00	2021-07-09 00:00:00
3123	5874	cat4	subcat4	Floyd-Sims	Cloned transitional hierarchy	5400	903	canceled	10	CA	CAD	2020-07-04 00:00:00	2021-02-11 00:00:00
2576	5110	cat4	subcat4	Spence, Jackson and Kelly	Advanced discrete leverage	152400	178120	successful	1713	IT	EUR	2020-08-26 00:00:00	2021-08-19 00:00:00
2349	5490	cat2	subcat18	King-Nguyen	Open-source incremental throughput	1300	13678	successful	249	US	USD	2021-06-25 00:00:00	2021-10-01 00:00:00
516	1922	cat5	subcat11	Hansen Group	Centralized regional interface	8100	9969	successful	192	US	USD	2020-05-21 00:00:00	2021-05-10 00:00:00
290	4398	cat4	subcat4	Mathis, Hall and Hansen	Streamlined web-enabled knowledgebase	8300	14827	successful	247	US	USD	2021-03-29 00:00:00	2022-01-21 00:00:00
1691	4754	cat5	subcat23	Cummings Inc	Digitized transitional monitoring	28400	100900	successful	2293	US	USD	2020-09-22 00:00:00	2021-07-09 00:00:00
1689	3309	cat5	subcat20	Miller-Poole	Networked optimal adapter	102500	165954	successful	3131	US	USD	2020-11-04 00:00:00	2021-03-08 00:00:00
2403	1244	cat3	subcat9	Rodriguez-West	Automated optimal function	7000	1744	failed	32	US	USD	2020-09-24 00:00:00	2021-04-09 00:00:00
3203	2892	cat4	subcat4	Calderon, Bradford and Dean	Devolved system-worthy framework	5400	10731	successful	143	IT	EUR	2021-03-17 00:00:00	2021-08-26 00:00:00
2113	2777	cat4	subcat4	Clark-Bowman	Stand-alone user-facing service-desk	9300	3232	canceled	90	US	USD	2020-11-15 00:00:00	2021-02-14 00:00:00
3158	4952	cat2	subcat8	Hensley Ltd	Versatile global attitude	6200	10938	successful	296	US	USD	2020-10-28 00:00:00	2021-02-27 00:00:00
348	5144	cat4	subcat4	Anderson-Pearson	Intuitive demand-driven Local Area Network	2100	10739	successful	170	US	USD	2020-09-11 00:00:00	2021-03-12 00:00:00
1136	5487	cat3	subcat9	Martin, Martin and Solis	Assimilated uniform methodology	6800	5579	failed	186	US	USD	2020-05-11 00:00:00	2021-03-29 00:00:00
956	1932	cat5	subcat20	Harrington-Harper	Self-enabling next generation algorithm	155200	37754	canceled	439	GB	GBP	2020-08-13 00:00:00	2021-06-11 00:00:00
2393	3364	cat7	subcat12	Price and Sons	Object-based demand-driven strategy	89900	45384	failed	605	US	USD	2021-10-09 00:00:00	2021-11-29 00:00:00
3208	5165	cat7	subcat12	Cuevas-Morales	Public-key coherent ability	900	8703	successful	86	DK	DKK	2020-11-02 00:00:00	2021-04-07 00:00:00
2530	3858	cat5	subcat11	Delgado-Hatfield	Up-sized composite success	100	4	failed	1	CA	CAD	2020-12-14 00:00:00	2021-07-06 00:00:00
305	4666	cat2	subcat2	Padilla-Porter	Innovative exuding matrix	148400	182302	successful	6286	US	USD	2020-12-31 00:00:00	2021-08-20 00:00:00
1383	2896	cat5	subcat7	Morris Group	Realigned impactful artificial intelligence	4800	3045	failed	31	US	USD	2021-02-14 00:00:00	2021-05-09 00:00:00
783	4520	cat5	subcat23	Saunders Ltd	Multi-layered multi-tasking secured line	182400	102749	failed	1181	US	USD	2020-05-20 00:00:00	2021-03-06 00:00:00
47	5726	cat5	subcat7	Woods Inc	Upgradable upward-trending portal	4000	1763	failed	39	US	USD	2021-11-17 00:00:00	2021-12-09 00:00:00
3157	5661	cat4	subcat4	Villanueva, Wright and Richardson	Profit-focused global product	116500	137904	successful	3727	US	USD	2020-10-14 00:00:00	2021-10-06 00:00:00
1646	4765	cat2	subcat8	Wilson, Brooks and Clark	Operative well-modulated data-warehouse	146400	152438	successful	1605	US	USD	2021-11-14 00:00:00	2021-12-14 00:00:00
1729	3710	cat4	subcat4	Sheppard, Smith and Spence	Cloned asymmetric functionalities	5000	1332	failed	46	US	USD	2021-05-20 00:00:00	2021-10-03 00:00:00
2964	4925	cat4	subcat4	Wise, Thompson and Allen	Pre-emptive neutral portal	33800	118706	successful	2120	US	USD	2021-01-16 00:00:00	2021-08-08 00:00:00
675	1533	cat5	subcat5	Lane, Ryan and Chapman	Switchable demand-driven help-desk	6300	5674	failed	105	US	USD	2021-02-22 00:00:00	2021-04-01 00:00:00
790	5264	cat4	subcat4	Rich, Alvarez and King	Business-focused static ability	2400	4119	successful	50	US	USD	2021-02-26 00:00:00	2021-08-10 00:00:00
1103	4606	cat5	subcat7	Terry-Salinas	Networked secondary structure	98800	139354	successful	2080	US	USD	2020-03-21 00:00:00	2021-05-13 00:00:00
969	2043	cat7	subcat21	Wang-Rodriguez	Total multimedia website	188800	57734	failed	535	US	USD	2021-10-13 00:00:00	2021-11-02 00:00:00
1634	3871	cat5	subcat11	Mckee-Hill	Cross-platform upward-trending parallelism	134300	145265	successful	2105	US	USD	2020-03-28 00:00:00	2021-03-08 00:00:00
2279	6205	cat4	subcat4	Gomez LLC	Pre-emptive mission-critical hardware	71200	95020	successful	2436	US	USD	2020-09-21 00:00:00	2021-02-26 00:00:00
387	3193	cat6	subcat19	Gonzalez-Robbins	Up-sized responsive protocol	4700	8829	successful	80	US	USD	2021-04-09 00:00:00	2022-02-18 00:00:00
586	1810	cat3	subcat9	Obrien and Sons	Pre-emptive transitional frame	1200	3984	successful	42	US	USD	2021-04-16 00:00:00	2021-08-18 00:00:00
1145	4797	cat3	subcat3	Shaw Ltd	Profit-focused content-based application	1400	8053	successful	139	CA	CAD	2021-06-05 00:00:00	2021-08-03 00:00:00
2776	1487	cat4	subcat4	Hughes Inc	Streamlined neutral analyzer	4000	1620	failed	16	US	USD	2021-01-17 00:00:00	2021-01-30 00:00:00
2099	3474	cat5	subcat7	Olsen-Ryan	Assimilated neutral utilization	5600	10328	successful	159	US	USD	2020-07-13 00:00:00	2021-05-04 00:00:00
470	5771	cat3	subcat9	Grimes, Holland and Sloan	Extended dedicated archive	3600	10289	successful	381	US	USD	2021-04-16 00:00:00	2021-10-13 00:00:00
343	6074	cat1	subcat1	Perry and Sons	Configurable static help-desk	3100	9889	successful	194	GB	GBP	2021-03-04 00:00:00	2022-01-01 00:00:00
2090	1568	cat2	subcat2	Turner, Young and Collins	Self-enabling clear-thinking framework	153800	60342	failed	575	US	USD	2020-10-28 00:00:00	2021-02-27 00:00:00
1401	4263	cat2	subcat6	Richardson Inc	Assimilated fault-tolerant capacity	5000	8907	successful	106	US	USD	2021-02-21 00:00:00	2021-08-15 00:00:00
596	5850	cat5	subcat20	Santos-Young	Enhanced neutral ability	4000	14606	successful	142	US	USD	2021-02-03 00:00:00	2021-07-14 00:00:00
1139	5619	cat6	subcat19	Nichols Ltd	Function-based attitude-oriented groupware	7400	8432	successful	211	US	USD	2021-07-02 00:00:00	2021-07-18 00:00:00
2080	1904	cat6	subcat14	Murphy PLC	Optional solution-oriented instruction set	191500	57122	failed	1120	US	USD	2021-06-26 00:00:00	2021-10-13 00:00:00
88	5388	cat5	subcat23	Hogan, Porter and Rivera	Organic object-oriented core	8500	4613	failed	113	US	USD	2021-07-14 00:00:00	2021-08-23 00:00:00
2806	2150	cat3	subcat9	Lyons LLC	Balanced impactful circuit	68800	162603	successful	2756	US	USD	2020-09-12 00:00:00	2021-04-13 00:00:00
3153	2653	cat1	subcat1	Long-Greene	Future-proofed heuristic encryption	2400	12310	successful	173	GB	GBP	2020-07-27 00:00:00	2021-08-21 00:00:00
2391	2687	cat8	subcat15	Robles-Hudson	Balanced bifurcated leverage	8600	8656	successful	87	US	USD	2021-08-28 00:00:00	2021-09-22 00:00:00
84	3779	cat4	subcat4	Mcclure LLC	Sharable discrete budgetary management	196600	159931	failed	1538	US	USD	2021-06-12 00:00:00	2021-12-02 00:00:00
1987	1494	cat6	subcat14	Martin, Russell and Baker	Focused solution-oriented instruction set	4200	689	failed	9	US	USD	2021-01-21 00:00:00	2021-12-30 00:00:00
2790	4129	cat4	subcat4	Rice-Parker	Down-sized actuating infrastructure	91400	48236	failed	554	US	USD	2020-06-03 00:00:00	2021-05-15 00:00:00
37	3035	cat1	subcat1	Landry Inc	Synergistic cohesive adapter	29600	77021	successful	1572	GB	GBP	2021-06-19 00:00:00	2021-06-24 00:00:00
2981	2069	cat4	subcat4	Richards-Davis	Quality-focused mission-critical structure	90600	27844	failed	648	GB	GBP	2020-06-17 00:00:00	2021-05-22 00:00:00
1730	5469	cat6	subcat19	Davis, Cox and Fox	Compatible exuding Graphical User Interface	5200	702	failed	21	GB	GBP	2021-03-28 00:00:00	2021-09-06 00:00:00
3172	3903	cat4	subcat4	Smith-Wallace	Monitored 24/7 time-frame	110300	197024	successful	2346	US	USD	2021-02-13 00:00:00	2021-09-15 00:00:00
32	4083	cat4	subcat4	Cordova, Shaw and Wang	Virtual secondary open architecture	5300	11663	successful	115	US	USD	2021-01-13 00:00:00	2021-08-26 00:00:00
2322	4003	cat3	subcat9	Clark Inc	Down-sized mobile time-frame	9200	9339	successful	85	IT	EUR	2021-06-07 00:00:00	2021-09-06 00:00:00
1095	3565	cat9	subcat24	Young and Sons	Innovative disintermediate encryption	2400	4596	successful	144	US	USD	2020-11-28 00:00:00	2021-02-28 00:00:00
1067	1640	cat1	subcat1	Henson PLC	Universal contextually-based knowledgebase	56800	173437	successful	2443	US	USD	2021-07-24 00:00:00	2021-08-08 00:00:00
2676	4769	cat5	subcat13	Garcia Group	Persevering interactive matrix	191000	45831	canceled	595	US	USD	2020-11-07 00:00:00	2021-03-15 00:00:00
549	3398	cat8	subcat15	Adams, Walker and Wong	Seamless background framework	900	6514	successful	64	US	USD	2020-03-24 00:00:00	2021-02-25 00:00:00
302	1865	cat3	subcat9	Hopkins-Browning	Balanced upward-trending productivity	2500	13684	successful	268	US	USD	2020-05-30 00:00:00	2021-06-13 00:00:00
2758	5690	cat4	subcat4	Bell, Edwards and Andersen	Centralized clear-thinking solution	3200	13264	successful	195	DK	DKK	2020-10-30 00:00:00	2021-11-15 00:00:00
2450	3814	cat5	subcat11	Morales Group	Optimized bi-directional extranet	183800	1667	failed	54	US	USD	2021-05-21 00:00:00	2022-01-07 00:00:00
2310	2942	cat3	subcat9	Lucero Group	Intuitive actuating benchmark	9800	3349	failed	120	US	USD	2020-07-14 00:00:00	2021-03-26 00:00:00
2185	5095	cat3	subcat3	Smith, Brown and Davis	Devolved background project	193400	46317	failed	579	DK	DKK	2021-12-27 00:00:00	2022-01-14 00:00:00
1929	2878	cat5	subcat5	Hunt Group	Reverse-engineered executive emulation	163800	78743	failed	2072	US	USD	2021-01-08 00:00:00	2021-04-13 00:00:00
1823	3697	cat4	subcat4	Valdez Ltd	Team-oriented clear-thinking matrix	100	0	failed	0	US	USD	2020-06-17 00:00:00	2021-06-26 00:00:00
699	4744	cat5	subcat5	Mccann-Le	Focused coherent methodology	153600	107743	failed	1796	US	USD	2021-02-01 00:00:00	2021-07-20 00:00:00
1926	2104	cat7	subcat12	Johnson Inc	Reduced context-sensitive complexity	1300	6889	successful	186	AU	AUD	2020-06-01 00:00:00	2021-03-30 00:00:00
2208	4883	cat5	subcat7	Collins LLC	Decentralized 4thgeneration time-frame	25500	45983	successful	460	US	USD	2021-04-14 00:00:00	2021-12-07 00:00:00
3136	4807	cat2	subcat2	Smith-Miller	De-engineered cohesive moderator	7500	6924	failed	62	IT	EUR	2021-04-08 00:00:00	2021-05-19 00:00:00
1623	1372	cat6	subcat16	Jensen-Vargas	Ameliorated explicit parallelism	89900	12497	failed	347	US	USD	2020-08-27 00:00:00	2021-04-06 00:00:00
277	3666	cat4	subcat4	Robles, Bell and Gonzalez	Customizable background monitoring	18000	166874	successful	2528	US	USD	2021-08-10 00:00:00	2021-08-16 00:00:00
1522	2066	cat3	subcat3	Turner, Miller and Francis	Compatible well-modulated budgetary management	2100	837	failed	19	US	USD	2020-12-26 00:00:00	2021-07-03 00:00:00
2582	1834	cat4	subcat4	Roberts Group	Up-sized radical pricing structure	172700	193820	successful	3657	US	USD	2021-01-06 00:00:00	2022-01-04 00:00:00
595	5853	cat4	subcat4	White LLC	Robust zero-defect project	168500	119510	failed	1258	US	USD	2021-01-01 00:00:00	2022-01-22 00:00:00
1060	2219	cat5	subcat7	Best, Miller and Thomas	Re-engineered mobile task-force	7800	9289	successful	131	AU	AUD	2021-06-06 00:00:00	2021-07-21 00:00:00
2551	4148	cat4	subcat4	Smith-Mullins	User-centric intangible neural-net	147800	35498	failed	362	US	USD	2020-12-22 00:00:00	2021-12-21 00:00:00
975	4477	cat7	subcat12	Williams-Walsh	Organized explicit core	9100	12678	successful	239	US	USD	2020-06-26 00:00:00	2021-02-13 00:00:00
300	1786	cat5	subcat20	Harrison, Blackwell and Mendez	Synchronized 6thgeneration adapter	8300	3260	canceled	35	US	USD	2021-07-10 00:00:00	2021-11-02 00:00:00
1883	3455	cat2	subcat2	Sanchez, Bradley and Flores	Centralized motivating capacity	138700	31123	canceled	528	CH	CHF	2021-01-30 00:00:00	2021-10-19 00:00:00
2973	5707	cat4	subcat4	Cox LLC	Phased 24hour flexibility	8600	4797	failed	133	CA	CAD	2020-10-27 00:00:00	2021-06-27 00:00:00
1831	5470	cat6	subcat10	Morales-Odonnell	Exclusive 5thgeneration structure	125400	53324	failed	846	US	USD	2020-09-03 00:00:00	2021-02-15 00:00:00
3019	3274	cat1	subcat1	Ramirez LLC	Multi-tiered maximized orchestration	5900	6608	successful	78	US	USD	2021-04-05 00:00:00	2021-06-12 00:00:00
1598	4613	cat5	subcat11	Ramirez Group	Open-architected uniform instruction set	8800	622	failed	10	US	USD	2020-12-12 00:00:00	2021-06-28 00:00:00
1898	4465	cat2	subcat2	Marsh-Coleman	Exclusive asymmetric analyzer	177700	180802	successful	1773	US	USD	2020-09-25 00:00:00	2021-03-23 00:00:00
944	1652	cat4	subcat4	Frederick, Jenkins and Collins	Organic radical collaboration	800	3406	successful	32	US	USD	2020-08-13 00:00:00	2021-05-22 00:00:00
2775	2100	cat5	subcat7	Wilson Ltd	Function-based multi-state software	7600	11061	successful	369	US	USD	2021-04-01 00:00:00	2021-11-07 00:00:00
2021	4321	cat5	subcat13	Cline, Peterson and Lowery	Innovative static budgetary management	50500	16389	failed	191	US	USD	2021-03-12 00:00:00	2021-10-24 00:00:00
1473	4168	cat5	subcat13	Underwood, James and Jones	Triple-buffered holistic ability	900	6303	successful	89	US	USD	2020-08-02 00:00:00	2021-03-16 00:00:00
353	3733	cat4	subcat4	Johnson-Contreras	Diverse scalable superstructure	96700	81136	failed	1979	US	USD	2020-06-15 00:00:00	2021-05-29 00:00:00
400	2594	cat3	subcat9	Greene, Lloyd and Sims	Balanced leadingedge data-warehouse	2100	1768	failed	63	US	USD	2021-05-01 00:00:00	2021-09-02 00:00:00
930	3909	cat4	subcat4	Smith-Sparks	Digitized bandwidth-monitored open architecture	8300	12944	successful	147	US	USD	2021-09-20 00:00:00	2021-09-27 00:00:00
1281	5179	cat5	subcat11	Rosario-Smith	Enterprise-wide intermediate portal	189200	188480	failed	6080	CA	CAD	2021-05-16 00:00:00	2021-07-22 00:00:00
726	2228	cat2	subcat8	Avila, Ford and Welch	Focused leadingedge matrix	9000	7227	failed	80	GB	GBP	2020-05-24 00:00:00	2021-05-26 00:00:00
2177	6222	cat7	subcat12	Gallegos Inc	Seamless logistical encryption	5100	574	failed	9	US	USD	2020-04-29 00:00:00	2021-04-04 00:00:00
1652	2354	cat6	subcat14	Morrow, Santiago and Soto	Stand-alone human-resource workforce	105000	96328	failed	1784	US	USD	2021-05-05 00:00:00	2021-05-26 00:00:00
65	1725	cat7	subcat12	Berry-Richardson	Automated zero tolerance implementation	186700	178338	live	3640	CH	CHF	2020-05-28 00:00:00	2021-05-29 00:00:00
911	2960	cat4	subcat4	Cordova-Torres	Pre-emptive grid-enabled contingency	1600	8046	successful	126	CA	CAD	2021-01-25 00:00:00	2021-02-05 00:00:00
2082	2077	cat2	subcat8	Holt, Bernard and Johnson	Multi-lateral didactic encoding	115600	184086	successful	2218	GB	GBP	2021-01-04 00:00:00	2021-04-11 00:00:00
458	5662	cat5	subcat7	Clark, Mccormick and Mendoza	Self-enabling didactic orchestration	89100	13385	failed	243	US	USD	2021-05-23 00:00:00	2021-06-25 00:00:00
1085	3481	cat4	subcat4	Garrison LLC	Profit-focused 24/7 data-warehouse	2600	12533	successful	202	IT	EUR	2021-01-28 00:00:00	2022-01-02 00:00:00
1451	2565	cat6	subcat14	Shannon-Olson	Enhanced methodical middleware	9800	14697	successful	140	IT	EUR	2020-10-14 00:00:00	2021-05-30 00:00:00
1068	4436	cat5	subcat5	Murillo-Mcfarland	Synchronized client-driven projection	84400	98935	successful	1052	DK	DKK	2020-10-10 00:00:00	2021-04-18 00:00:00
241	5072	cat7	subcat21	Young, Gilbert and Escobar	Networked didactic time-frame	151300	57034	failed	1296	US	USD	2020-10-11 00:00:00	2021-06-07 00:00:00
2654	5200	cat1	subcat1	Thomas, Welch and Santana	Assimilated exuding toolset	9800	7120	failed	77	US	USD	2021-01-13 00:00:00	2021-05-05 00:00:00
159	4502	cat8	subcat15	Brown-Pena	Front-line client-server secured line	5300	14097	successful	247	US	USD	2020-03-08 00:00:00	2021-02-26 00:00:00
1010	4945	cat7	subcat21	Holder, Caldwell and Vance	Polarized systemic Internet solution	178000	43086	failed	395	IT	EUR	2020-09-17 00:00:00	2021-05-25 00:00:00
1807	3012	cat2	subcat8	Harrison-Bridges	Profit-focused exuding moderator	77000	1930	failed	49	GB	GBP	2021-03-04 00:00:00	2021-09-21 00:00:00
1135	6094	cat7	subcat12	Johnson, Murphy and Peterson	Cross-group high-level moderator	84900	13864	failed	180	US	USD	2021-01-28 00:00:00	2021-08-11 00:00:00
1859	3815	cat2	subcat2	Taylor Inc	Public-key 3rdgeneration system engine	2800	7742	successful	84	US	USD	2020-08-02 00:00:00	2021-05-24 00:00:00
1265	4838	cat4	subcat4	Deleon and Sons	Organized value-added access	184800	164109	failed	2690	US	USD	2021-01-11 00:00:00	2021-12-28 00:00:00
2648	3469	cat4	subcat4	Benjamin, Paul and Ferguson	Cloned global Graphical User Interface	4200	6870	successful	88	US	USD	2020-12-17 00:00:00	2021-08-09 00:00:00
141	4874	cat5	subcat7	Hardin-Dixon	Focused solution-oriented matrix	1300	12597	successful	156	US	USD	2021-06-20 00:00:00	2022-01-31 00:00:00
1944	1792	cat4	subcat4	York-Pitts	Monitored discrete toolset	66100	179074	successful	2985	US	USD	2021-10-19 00:00:00	2022-02-23 00:00:00
3187	4356	cat3	subcat9	Jarvis and Sons	Business-focused intermediate system engine	29500	83843	successful	762	US	USD	2021-05-21 00:00:00	2021-07-20 00:00:00
1436	6196	cat2	subcat8	Morrison-Henderson	De-engineered disintermediate encoding	100	4	canceled	1	CH	CHF	2021-06-18 00:00:00	2021-11-12 00:00:00
1384	3578	cat3	subcat3	Martin-James	Streamlined upward-trending analyzer	180100	105598	failed	2779	AU	AUD	2021-01-11 00:00:00	2021-03-30 00:00:00
2446	4491	cat4	subcat4	Mercer, Solomon and Singleton	Distributed human-resource policy	9000	8866	failed	92	US	USD	2020-12-04 00:00:00	2021-05-27 00:00:00
2215	3054	cat2	subcat2	Dougherty, Austin and Mills	De-engineered 5thgeneration contingency	170600	75022	failed	1028	US	USD	2020-12-11 00:00:00	2021-05-26 00:00:00
2704	1968	cat2	subcat8	Ritter PLC	Multi-channeled upward-trending application	9500	14408	successful	554	CA	CAD	2020-12-25 00:00:00	2021-07-12 00:00:00
2470	5869	cat2	subcat2	Anderson Group	Organic maximized database	6300	14089	successful	135	DK	DKK	2020-05-09 00:00:00	2021-05-01 00:00:00
1056	5858	cat6	subcat19	Smith and Sons	Grass-roots 24/7 attitude	5200	12467	successful	122	US	USD	2020-04-01 00:00:00	2021-03-01 00:00:00
1278	5203	cat5	subcat23	Lam-Hamilton	Team-oriented global strategy	6000	11960	successful	221	US	USD	2021-06-14 00:00:00	2021-08-18 00:00:00
2987	2577	cat4	subcat4	Ho Ltd	Enhanced client-driven capacity	5800	7966	successful	126	US	USD	2020-08-03 00:00:00	2021-03-30 00:00:00
417	3216	cat4	subcat4	Brown, Estrada and Jensen	Exclusive systematic productivity	105300	106321	successful	1022	US	USD	2020-09-19 00:00:00	2021-05-22 00:00:00
670	2037	cat5	subcat11	Hunt LLC	Re-engineered radical policy	20000	158832	successful	3177	US	USD	2021-06-21 00:00:00	2022-02-07 00:00:00
1427	3867	cat4	subcat4	Fowler-Smith	Down-sized logistical adapter	3000	11091	successful	198	CH	CHF	2021-03-03 00:00:00	2021-11-19 00:00:00
2918	5109	cat2	subcat2	Blair Inc	Configurable bandwidth-monitored throughput	9900	1269	failed	26	CH	CHF	2021-02-05 00:00:00	2021-11-04 00:00:00
306	1376	cat5	subcat5	Kelley, Stanton and Sanchez	Optional tangible pricing structure	3700	5107	successful	85	AU	AUD	2021-03-29 00:00:00	2021-09-29 00:00:00
1714	5260	cat4	subcat4	Hernandez-Macdonald	Organic high-level implementation	168700	141393	failed	1790	US	USD	2020-04-27 00:00:00	2021-05-18 00:00:00
1354	2350	cat4	subcat4	Joseph LLC	Decentralized logistical collaboration	94900	194166	successful	3596	US	USD	2021-01-20 00:00:00	2021-05-11 00:00:00
810	2269	cat2	subcat6	Webb-Smith	Advanced content-based installation	9300	4124	failed	37	US	USD	2021-09-04 00:00:00	2021-11-29 00:00:00
304	3650	cat2	subcat2	Johns PLC	Distributed high-level open architecture	6800	14865	successful	244	US	USD	2020-11-01 00:00:00	2021-06-12 00:00:00
752	3934	cat4	subcat4	Hardin-Foley	Synergized zero tolerance help-desk	72400	134688	successful	5180	US	USD	2020-06-21 00:00:00	2021-05-21 00:00:00
2254	4048	cat5	subcat11	Fischer, Fowler and Arnold	Extended multi-tasking definition	20100	47705	successful	589	IT	EUR	2021-06-08 00:00:00	2022-01-21 00:00:00
1654	4266	cat2	subcat2	Martinez-Juarez	Realigned uniform knowledge user	31200	95364	successful	2725	US	USD	2021-06-07 00:00:00	2021-10-31 00:00:00
2729	3863	cat5	subcat13	Wilson and Sons	Monitored grid-enabled model	3500	3295	failed	35	IT	EUR	2021-05-16 00:00:00	2021-10-11 00:00:00
913	4922	cat2	subcat2	Clements Group	Assimilated actuating policy	9000	4896	canceled	94	US	USD	2021-02-10 00:00:00	2021-04-08 00:00:00
1388	4517	cat9	subcat24	Valenzuela-Cook	Total incremental productivity	6700	7496	successful	300	US	USD	2021-01-04 00:00:00	2021-10-04 00:00:00
76	3259	cat1	subcat1	Parker, Haley and Foster	Adaptive local task-force	2700	9967	successful	144	US	USD	2020-06-25 00:00:00	2021-05-27 00:00:00
1172	3123	cat4	subcat4	Fuentes LLC	Universal zero-defect concept	83300	52421	failed	558	US	USD	2021-04-09 00:00:00	2021-11-29 00:00:00
2579	3870	cat4	subcat4	Moran and Sons	Object-based bottom-line superstructure	9700	6298	failed	64	US	USD	2021-05-10 00:00:00	2021-06-30 00:00:00
2371	2996	cat2	subcat18	Stevens Inc	Adaptive 24hour projection	8200	1546	canceled	37	US	USD	2021-10-08 00:00:00	2021-11-27 00:00:00
359	2993	cat5	subcat23	Martinez-Johnson	Sharable radical toolset	96500	16168	failed	245	US	USD	2021-04-29 00:00:00	2021-12-14 00:00:00
1423	4556	cat2	subcat18	Franklin Inc	Focused multimedia knowledgebase	6200	6269	successful	87	US	USD	2020-05-01 00:00:00	2021-04-13 00:00:00
2239	2326	cat4	subcat4	Perez PLC	Seamless 6thgeneration extranet	43800	149578	successful	3116	US	USD	2020-06-28 00:00:00	2021-06-05 00:00:00
1835	4109	cat3	subcat3	Sanchez, Cross and Savage	Sharable mobile knowledgebase	6000	3841	failed	71	US	USD	2021-02-15 00:00:00	2021-05-05 00:00:00
2097	5739	cat7	subcat12	Pineda Ltd	Cross-group global system engine	8700	4531	failed	42	US	USD	2020-08-11 00:00:00	2021-10-08 00:00:00
1165	5887	cat5	subcat5	Powell and Sons	Centralized clear-thinking conglomeration	18900	60934	successful	909	US	USD	2020-10-17 00:00:00	2021-07-31 00:00:00
1368	1651	cat3	subcat3	Nunez-Richards	De-engineered cohesive system engine	86400	103255	successful	1613	US	USD	2020-10-12 00:00:00	2021-10-21 00:00:00
2331	1628	cat6	subcat19	Pugh LLC	Reactive analyzing function	8900	13065	successful	136	US	USD	2020-08-15 00:00:00	2021-07-04 00:00:00
3145	2642	cat2	subcat2	Rowe-Wong	Robust hybrid budgetary management	700	6654	successful	130	US	USD	2021-07-16 00:00:00	2021-12-17 00:00:00
2313	6020	cat1	subcat1	Williams-Santos	Open-source analyzing monitoring	9400	6852	failed	156	CA	CAD	2021-01-15 00:00:00	2021-04-08 00:00:00
251	4747	cat4	subcat4	Weber Inc	Up-sized discrete firmware	157600	124517	failed	1368	GB	GBP	2021-01-13 00:00:00	2021-11-02 00:00:00
1956	5534	cat5	subcat5	Avery, Brown and Parker	Exclusive intangible extranet	7900	5113	failed	102	US	USD	2020-08-11 00:00:00	2021-06-25 00:00:00
1575	4790	cat6	subcat16	Cox Group	Synergized analyzing process improvement	7100	5824	failed	86	AU	AUD	2021-01-20 00:00:00	2021-04-29 00:00:00
1917	4632	cat7	subcat12	Jensen LLC	Realigned dedicated system engine	600	6226	successful	102	US	USD	2020-10-27 00:00:00	2021-09-11 00:00:00
2447	1952	cat4	subcat4	Brown Inc	Object-based bandwidth-monitored concept	156800	20243	failed	253	US	USD	2021-09-19 00:00:00	2021-12-04 00:00:00
1813	4388	cat5	subcat11	Hale-Hayes	Ameliorated client-driven open system	121600	188288	successful	4006	US	USD	2021-01-05 00:00:00	2021-11-27 00:00:00
367	5529	cat4	subcat4	Mcbride PLC	Upgradable leadingedge Local Area Network	157300	11167	failed	157	US	USD	2020-10-18 00:00:00	2021-02-25 00:00:00
1803	1316	cat4	subcat4	Harris-Jennings	Customizable intermediate data-warehouse	70300	146595	successful	1629	US	USD	2021-05-01 00:00:00	2021-09-16 00:00:00
284	1670	cat5	subcat7	Becker-Scott	Managed optimizing archive	7900	7875	failed	183	US	USD	2021-12-23 00:00:00	2021-12-26 00:00:00
2603	4909	cat4	subcat4	Todd, Freeman and Henry	Diverse systematic projection	73800	148779	successful	2188	US	USD	2020-10-17 00:00:00	2021-06-01 00:00:00
653	3401	cat2	subcat2	Martinez, Garza and Young	Up-sized web-enabled info-mediaries	108500	175868	successful	2409	IT	EUR	2021-01-06 00:00:00	2021-10-27 00:00:00
1131	4619	cat5	subcat5	Smith-Ramos	Persevering optimizing Graphical User Interface	140300	5112	failed	82	DK	DKK	2020-09-20 00:00:00	2021-06-27 00:00:00
349	4722	cat1	subcat1	Brown-George	Cross-platform tertiary array	100	5	failed	1	GB	GBP	2021-04-20 00:00:00	2021-06-30 00:00:00
2509	2188	cat3	subcat9	Waters and Sons	Inverse neutral structure	6300	13018	successful	194	US	USD	2021-08-12 00:00:00	2022-01-16 00:00:00
3139	5497	cat4	subcat4	Brown Ltd	Quality-focused system-worthy support	71100	91176	successful	1140	US	USD	2020-11-08 00:00:00	2021-05-21 00:00:00
480	5711	cat4	subcat4	Christian, Yates and Greer	Vision-oriented 5thgeneration array	5300	6342	successful	102	US	USD	2021-02-16 00:00:00	2021-11-04 00:00:00
1205	4076	cat4	subcat4	Cole, Hernandez and Rodriguez	Cross-platform logistical circuit	88700	151438	successful	2857	US	USD	2021-03-27 00:00:00	2021-10-01 00:00:00
291	1847	cat6	subcat10	Ortiz, Valenzuela and Collins	Profound solution-oriented matrix	3300	6178	successful	107	US	USD	2021-01-04 00:00:00	2021-07-28 00:00:00
1758	2816	cat2	subcat2	Valencia PLC	Extended asynchronous initiative	3400	6405	successful	160	GB	GBP	2021-05-13 00:00:00	2021-08-21 00:00:00
766	5019	cat1	subcat1	Gordon, Mendez and Johnson	Fundamental needs-based frame	137600	180667	successful	2230	US	USD	2020-08-29 00:00:00	2021-08-05 00:00:00
569	4869	cat2	subcat18	Johnson Group	Compatible full-range leverage	3900	11075	successful	316	US	USD	2021-02-28 00:00:00	2021-05-08 00:00:00
50	3613	cat5	subcat23	Rose-Fuller	Upgradable holistic system engine	10000	12042	successful	117	US	USD	2021-09-28 00:00:00	2021-10-04 00:00:00
1875	3069	cat4	subcat4	Hughes, Mendez and Patterson	Stand-alone multi-state data-warehouse	42800	179356	successful	6406	US	USD	2021-09-30 00:00:00	2022-02-01 00:00:00
3040	2601	cat4	subcat4	Brady, Cortez and Rodriguez	Multi-lateral maximized core	8200	1136	canceled	15	US	USD	2021-03-05 00:00:00	2021-07-02 00:00:00
179	2133	cat2	subcat6	Wang, Nguyen and Horton	Innovative holistic hub	6200	8645	successful	192	US	USD	2021-09-10 00:00:00	2021-11-05 00:00:00
114	3164	cat4	subcat4	Santos, Williams and Brown	Reverse-engineered 24/7 methodology	1100	1914	successful	26	CA	CAD	2020-08-21 00:00:00	2021-08-03 00:00:00
260	3897	cat4	subcat4	Barnett and Sons	Business-focused dynamic info-mediaries	26500	41205	successful	723	US	USD	2021-04-06 00:00:00	2021-12-17 00:00:00
1810	5663	cat4	subcat4	Petersen-Rodriguez	Digitized clear-thinking installation	8500	14488	successful	170	IT	EUR	2021-06-28 00:00:00	2021-11-20 00:00:00
68	3879	cat2	subcat8	Burnett-Mora	Quality-focused 24/7 superstructure	6400	12129	successful	238	GB	GBP	2020-09-06 00:00:00	2021-08-01 00:00:00
1148	5900	cat4	subcat4	King LLC	Multi-channeled local intranet	1400	3496	successful	55	US	USD	2021-01-18 00:00:00	2021-12-31 00:00:00
2489	2272	cat6	subcat10	Miller Ltd	Open-architected mobile emulation	198600	97037	failed	1198	US	USD	2020-11-10 00:00:00	2021-10-30 00:00:00
1586	5436	cat4	subcat4	Case LLC	Ameliorated foreground methodology	195900	55757	failed	648	US	USD	2020-02-28 00:00:00	2021-03-01 00:00:00
2339	3676	cat8	subcat15	Swanson, Wilson and Baker	Synergized well-modulated project	4300	11525	successful	128	AU	AUD	2021-02-25 00:00:00	2021-05-07 00:00:00
1687	4676	cat4	subcat4	Dean, Fox and Phillips	Extended context-sensitive forecast	25600	158669	successful	2144	US	USD	2021-12-03 00:00:00	2021-12-31 00:00:00
1260	1563	cat2	subcat8	Smith-Smith	Total leadingedge neural-net	189000	5916	failed	64	US	USD	2021-03-10 00:00:00	2021-05-26 00:00:00
2240	4349	cat4	subcat4	Smith, Scott and Rodriguez	Organic actuating protocol	94300	150806	successful	2693	GB	GBP	2020-04-24 00:00:00	2021-02-24 00:00:00
1762	1658	cat8	subcat15	White, Robertson and Roberts	Down-sized national software	5100	14249	successful	432	US	USD	2020-05-09 00:00:00	2021-05-22 00:00:00
331	2552	cat4	subcat4	Martinez Inc	Organic upward-trending Graphical User Interface	7500	5803	failed	62	US	USD	2020-07-05 00:00:00	2021-06-08 00:00:00
1330	4847	cat4	subcat4	Tucker, Mccoy and Marquez	Synergistic tertiary budgetary management	6400	13205	successful	189	US	USD	2020-11-03 00:00:00	2021-06-03 00:00:00
427	1553	cat1	subcat1	Martin, Lee and Armstrong	Open-architected incremental ability	1600	11108	successful	154	GB	GBP	2020-11-18 00:00:00	2021-08-05 00:00:00
2929	2632	cat2	subcat8	Dunn, Moreno and Green	Intuitive object-oriented task-force	1900	2884	successful	96	US	USD	2021-02-23 00:00:00	2021-02-28 00:00:00
2940	1908	cat4	subcat4	Jackson, Martinez and Ray	Multi-tiered executive toolset	85900	55476	failed	750	US	USD	2021-04-05 00:00:00	2022-01-19 00:00:00
2047	5801	cat4	subcat4	Patterson-Johnson	Grass-roots directional workforce	9500	5973	canceled	87	US	USD	2021-08-30 00:00:00	2021-12-01 00:00:00
536	1935	cat4	subcat4	Carlson-Hernandez	Quality-focused real-time solution	59200	183756	successful	3063	US	USD	2021-08-21 00:00:00	2022-01-26 00:00:00
238	2609	cat4	subcat4	Parker PLC	Reduced interactive matrix	72100	30902	live	278	US	USD	2021-01-05 00:00:00	2021-07-21 00:00:00
30	2740	cat5	subcat11	Yu and Sons	Adaptive context-sensitive architecture	6700	5569	failed	105	US	USD	2021-09-28 00:00:00	2021-12-17 00:00:00
1151	1907	cat5	subcat20	Taylor, Johnson and Hernandez	Polarized incremental portal	118200	92824	canceled	1658	US	USD	2021-08-29 00:00:00	2021-09-24 00:00:00
1484	1831	cat5	subcat20	Mack Ltd	Reactive regional access	139000	158590	successful	2266	US	USD	2021-01-14 00:00:00	2021-02-16 00:00:00
1941	5177	cat5	subcat11	Lamb-Sanders	Stand-alone reciprocal frame	197700	127591	failed	2604	DK	DKK	2021-04-30 00:00:00	2021-12-26 00:00:00
546	6179	cat4	subcat4	Williams-Ramirez	Open-architected 24/7 throughput	8500	6750	failed	65	US	USD	2021-01-14 00:00:00	2021-11-04 00:00:00
221	2917	cat4	subcat4	Weaver Ltd	Monitored 24/7 approach	81600	9318	failed	94	US	USD	2020-04-12 00:00:00	2021-01-14 00:00:00
2882	1486	cat5	subcat7	Barnes-Williams	Upgradable explicit forecast	8600	4832	live	45	US	USD	2021-03-02 00:00:00	2021-12-02 00:00:00
2938	3735	cat4	subcat4	Richardson, Woodward and Hansen	Pre-emptive context-sensitive support	119800	19769	failed	257	US	USD	2020-11-08 00:00:00	2021-07-24 00:00:00
785	3838	cat4	subcat4	Hunt, Barker and Baker	Business-focused leadingedge instruction set	9400	11277	successful	194	CH	CHF	2021-05-08 00:00:00	2021-09-15 00:00:00
2785	2430	cat3	subcat9	Ramos, Moreno and Lewis	Extended multi-state knowledge user	9200	13382	successful	129	CA	CAD	2021-02-13 00:00:00	2021-10-21 00:00:00
876	2480	cat4	subcat4	Harris Inc	Future-proofed modular groupware	14900	32986	successful	375	US	USD	2020-06-05 00:00:00	2021-04-22 00:00:00
932	3431	cat4	subcat4	Peters-Nelson	Distributed real-time algorithm	169400	81984	failed	2928	CA	CAD	2021-03-15 00:00:00	2021-10-01 00:00:00
507	1742	cat2	subcat2	Ferguson, Murphy and Bright	Multi-lateral heuristic throughput	192100	178483	failed	4697	US	USD	2021-04-25 00:00:00	2021-10-10 00:00:00
1672	4628	cat7	subcat12	Robinson Group	Switchable reciprocal middleware	98700	87448	failed	2915	US	USD	2021-01-25 00:00:00	2021-11-24 00:00:00
917	2385	cat6	subcat19	Jordan-Wolfe	Inverse multimedia Graphic Interface	4500	1863	failed	18	US	USD	2021-04-10 00:00:00	2021-04-25 00:00:00
2931	2213	cat1	subcat1	Vargas-Cox	Vision-oriented local contingency	98600	62174	canceled	723	US	USD	2021-05-06 00:00:00	2021-06-22 00:00:00
2415	5188	cat4	subcat4	Yang and Sons	Reactive 6thgeneration hub	121700	59003	failed	602	CH	CHF	2021-04-29 00:00:00	2021-11-21 00:00:00
1805	3418	cat2	subcat18	Wilson, Wilson and Mathis	Optional asymmetric success	100	2	failed	1	US	USD	2021-06-11 00:00:00	2021-10-26 00:00:00
495	5637	cat5	subcat13	Wang, Koch and Weaver	Digitized analyzing capacity	196700	174039	failed	3868	IT	EUR	2021-08-01 00:00:00	2021-12-27 00:00:00
2988	3530	cat3	subcat3	Cisneros Ltd	Vision-oriented regional hub	10000	12684	successful	409	US	USD	2020-10-17 00:00:00	2021-08-24 00:00:00
3169	3731	cat3	subcat3	Williams-Jones	Monitored incremental info-mediaries	600	14033	successful	234	US	USD	2020-05-06 00:00:00	2021-05-31 00:00:00
467	3219	cat2	subcat17	Roberts, Hinton and Williams	Programmable static middleware	35000	177936	successful	3016	US	USD	2020-07-04 00:00:00	2021-03-31 00:00:00
1551	2392	cat8	subcat15	Gonzalez, Williams and Benson	Multi-layered bottom-line encryption	6900	13212	successful	264	US	USD	2020-07-30 00:00:00	2021-07-03 00:00:00
2467	5103	cat1	subcat1	Hobbs, Brown and Lee	Vision-oriented systematic Graphical User Interface	118400	49879	failed	504	AU	AUD	2021-02-07 00:00:00	2021-06-11 00:00:00
1193	3992	cat5	subcat23	Russo, Kim and Mccoy	Balanced optimal hardware	10000	824	failed	14	US	USD	2020-11-17 00:00:00	2021-09-22 00:00:00
1016	2442	cat2	subcat2	Howell, Myers and Olson	Self-enabling mission-critical success	52600	31594	canceled	390	US	USD	2021-04-24 00:00:00	2021-08-05 00:00:00
313	2913	cat5	subcat5	Bailey and Sons	Grass-roots dynamic emulation	120700	57010	failed	750	GB	GBP	2021-06-19 00:00:00	2022-01-03 00:00:00
117	1631	cat4	subcat4	Jensen-Brown	Fundamental disintermediate matrix	9100	7438	failed	77	US	USD	2021-04-01 00:00:00	2021-04-11 00:00:00
2747	4073	cat2	subcat18	Smith Group	Right-sized secondary challenge	106800	57872	failed	752	DK	DKK	2021-08-27 00:00:00	2021-12-19 00:00:00
1244	4568	cat4	subcat4	Murphy-Farrell	Implemented exuding software	9100	8906	failed	131	US	USD	2021-01-23 00:00:00	2021-04-17 00:00:00
564	1830	cat4	subcat4	Everett-Wolfe	Total optimizing software	10000	7724	failed	87	US	USD	2020-12-09 00:00:00	2021-06-14 00:00:00
3129	2623	cat2	subcat18	Young PLC	Optional maximized attitude	79400	26571	failed	1063	US	USD	2020-05-20 00:00:00	2021-02-06 00:00:00
800	4327	cat5	subcat5	Park-Goodman	Customer-focused impactful extranet	5100	12219	successful	272	US	USD	2020-10-29 00:00:00	2021-03-25 00:00:00
1255	3713	cat4	subcat4	York, Barr and Grant	Cloned bottom-line success	3100	1985	canceled	25	US	USD	2020-12-21 00:00:00	2021-02-24 00:00:00
2448	2389	cat9	subcat24	Little Ltd	Decentralized bandwidth-monitored ability	6900	12155	successful	419	US	USD	2021-01-25 00:00:00	2021-04-18 00:00:00
578	5141	cat4	subcat4	Brown and Sons	Programmable leadingedge budgetary management	27500	5593	failed	76	US	USD	2021-06-08 00:00:00	2022-01-03 00:00:00
418	3522	cat4	subcat4	Payne, Garrett and Thomas	Upgradable bi-directional concept	48800	175020	successful	1621	IT	EUR	2020-12-21 00:00:00	2021-12-15 00:00:00
255	1334	cat2	subcat8	Robinson Group	Re-contextualized homogeneous flexibility	16200	75955	successful	1101	US	USD	2020-07-03 00:00:00	2021-05-18 00:00:00
1918	4721	cat4	subcat4	Robinson-Kelly	Monitored bi-directional standardization	97600	119127	successful	1073	US	USD	2020-08-29 00:00:00	2021-06-14 00:00:00
2837	3768	cat4	subcat4	Kelly-Colon	Stand-alone grid-enabled leverage	197900	110689	failed	4428	AU	AUD	2021-09-18 00:00:00	2021-11-30 00:00:00
842	1639	cat2	subcat8	Turner, Scott and Gentry	Assimilated regional groupware	5600	2445	failed	58	IT	EUR	2021-03-31 00:00:00	2021-12-04 00:00:00
503	5149	cat8	subcat15	Sanchez Ltd	Up-sized 24hour instruction set	170700	57250	canceled	1218	US	USD	2021-05-14 00:00:00	2021-08-08 00:00:00
602	2153	cat9	subcat24	Giles-Smith	Right-sized web-enabled intranet	9700	11929	successful	331	US	USD	2022-02-01 00:00:00	2022-02-16 00:00:00
1317	2767	cat8	subcat15	Thompson-Moreno	Expanded needs-based orchestration	62300	118214	successful	1170	US	USD	2021-03-10 00:00:00	2022-01-12 00:00:00
2071	5124	cat6	subcat14	Murphy-Fox	Organic system-worthy orchestration	5300	4432	failed	111	US	USD	2021-06-08 00:00:00	2021-12-27 00:00:00
2773	2097	cat5	subcat7	Rodriguez-Patterson	Inverse static standardization	99500	17879	canceled	215	US	USD	2021-02-27 00:00:00	2021-11-23 00:00:00
1814	4796	cat1	subcat1	Davis Ltd	Synchronized motivating solution	1400	14511	successful	363	US	USD	2020-10-11 00:00:00	2021-04-05 00:00:00
2600	5849	cat7	subcat21	Nelson-Valdez	Open-source 4thgeneration open system	145600	141822	failed	2955	US	USD	2020-02-14 00:00:00	2021-04-06 00:00:00
426	1495	cat4	subcat4	Kelly PLC	Decentralized context-sensitive superstructure	184100	159037	failed	1657	US	USD	2021-03-11 00:00:00	2021-07-05 00:00:00
2206	2462	cat4	subcat4	Nguyen and Sons	Compatible 5thgeneration concept	5400	8109	successful	103	US	USD	2020-09-13 00:00:00	2021-02-12 00:00:00
2032	2280	cat4	subcat4	Jones PLC	Virtual systemic intranet	2300	8244	successful	147	US	USD	2021-01-30 00:00:00	2021-04-09 00:00:00
397	1877	cat6	subcat10	Gilmore LLC	Optimized systemic algorithm	1400	7600	successful	110	CA	CAD	2020-12-09 00:00:00	2021-07-17 00:00:00
865	6108	cat4	subcat4	Lee-Cobb	Customizable homogeneous firmware	140000	94501	failed	926	CA	CAD	2021-04-14 00:00:00	2022-01-07 00:00:00
3027	4427	cat3	subcat9	Jones, Wiley and Robbins	Front-line cohesive extranet	7500	14381	successful	134	US	USD	2020-11-01 00:00:00	2021-10-22 00:00:00
31	2881	cat4	subcat4	Martin, Gates and Holt	Distributed holistic neural-net	1500	13980	successful	269	US	USD	2021-01-11 00:00:00	2021-04-21 00:00:00
1234	2339	cat5	subcat20	Bowen, Davies and Burns	Devolved client-server monitoring	2900	12449	successful	175	US	USD	2021-01-18 00:00:00	2021-08-14 00:00:00
497	5156	cat3	subcat3	Nguyen Inc	Seamless directional capacity	7300	7348	successful	69	US	USD	2020-09-11 00:00:00	2021-06-19 00:00:00
2084	4750	cat5	subcat5	Walsh-Watts	Polarized actuating implementation	3600	8158	successful	190	US	USD	2021-10-05 00:00:00	2021-11-24 00:00:00
337	4852	cat5	subcat5	Ray, Li and Li	Front-line disintermediate hub	5000	7119	successful	237	US	USD	2021-02-04 00:00:00	2021-08-14 00:00:00
3182	5734	cat2	subcat2	Murray Ltd	Decentralized 4thgeneration challenge	6000	5438	failed	77	GB	GBP	2020-11-19 00:00:00	2021-10-20 00:00:00
1494	3801	cat4	subcat4	Bradford-Silva	Reverse-engineered composite hierarchy	180400	115396	failed	1748	US	USD	2020-10-09 00:00:00	2021-06-26 00:00:00
2570	4474	cat4	subcat4	Mora-Bradley	Programmable tangible ability	9100	7656	failed	79	US	USD	2021-01-09 00:00:00	2021-08-01 00:00:00
2205	1992	cat2	subcat2	Cardenas, Thompson and Carey	Configurable full-range emulation	9200	12322	successful	196	IT	EUR	2021-04-10 00:00:00	2021-04-20 00:00:00
314	5796	cat4	subcat4	Lopez, Reid and Johnson	Total real-time hardware	164100	96888	failed	889	US	USD	2021-03-22 00:00:00	2021-09-20 00:00:00
1659	1373	cat2	subcat6	Fox-Williams	Profound system-worthy functionalities	128900	196960	successful	7295	US	USD	2021-12-15 00:00:00	2022-01-13 00:00:00
1656	1879	cat3	subcat9	Taylor, Wood and Taylor	Cloned hybrid focus group	42100	188057	successful	2893	CA	CAD	2020-07-15 00:00:00	2021-03-11 00:00:00
514	3072	cat5	subcat7	King Inc	Ergonomic dedicated focus group	7400	6245	failed	56	US	USD	2020-12-23 00:00:00	2021-09-26 00:00:00
649	4561	cat3	subcat9	Cole, Petty and Cameron	Realigned zero administration paradigm	100	3	failed	1	US	USD	2020-08-12 00:00:00	2021-04-17 00:00:00
1769	5201	cat4	subcat4	Mcclain LLC	Open-source multi-tasking methodology	52000	91014	successful	820	US	USD	2021-01-17 00:00:00	2021-09-09 00:00:00
33	5871	cat3	subcat9	Sims-Gross	Object-based attitude-oriented analyzer	8700	4710	failed	83	US	USD	2021-03-05 00:00:00	2021-03-27 00:00:00
195	3041	cat6	subcat19	Perez Group	Cross-platform tertiary hub	63400	197728	successful	2038	US	USD	2021-05-01 00:00:00	2021-11-03 00:00:00
742	5864	cat5	subcat11	Haynes-Williams	Seamless clear-thinking artificial intelligence	8700	10682	successful	116	US	USD	2020-09-05 00:00:00	2021-04-25 00:00:00
2093	3999	cat6	subcat10	Ford LLC	Centralized tangible success	169700	168048	failed	2025	GB	GBP	2021-08-01 00:00:00	2021-10-05 00:00:00
1338	4849	cat3	subcat3	Moreno Ltd	Customer-focused multimedia methodology	108400	138586	successful	1345	AU	AUD	2021-04-14 00:00:00	2021-05-30 00:00:00
52	5461	cat5	subcat7	Moore, Cook and Wright	Visionary maximized Local Area Network	7300	11579	successful	168	US	USD	2021-03-19 00:00:00	2021-05-17 00:00:00
1651	5946	cat4	subcat4	Ortega LLC	Secured bifurcated intranet	1700	12020	successful	137	CH	CHF	2021-04-12 00:00:00	2021-09-07 00:00:00
452	4508	cat4	subcat4	Silva, Walker and Martin	Grass-roots 4thgeneration product	9800	13954	successful	186	IT	EUR	2022-01-15 00:00:00	2022-01-20 00:00:00
1808	5096	cat4	subcat4	Huynh, Gallegos and Mills	Reduced next generation info-mediaries	4300	6358	successful	125	US	USD	2021-04-14 00:00:00	2021-10-08 00:00:00
2288	5443	cat4	subcat4	Anderson LLC	Customizable full-range artificial intelligence	6200	1260	failed	14	IT	EUR	2020-05-20 00:00:00	2021-06-23 00:00:00
1855	2165	cat4	subcat4	Garza-Bryant	Programmable leadingedge contingency	800	14725	successful	202	US	USD	2021-07-16 00:00:00	2021-11-19 00:00:00
3035	2125	cat6	subcat16	Mays LLC	Multi-layered global groupware	6900	11174	successful	103	US	USD	2020-03-14 00:00:00	2021-01-31 00:00:00
2285	6141	cat2	subcat2	Evans-Jones	Switchable methodical superstructure	38500	182036	successful	1785	US	USD	2021-03-15 00:00:00	2021-09-22 00:00:00
1203	5245	cat7	subcat21	Fischer, Torres and Walker	Expanded even-keeled portal	118000	28870	failed	656	US	USD	2021-06-16 00:00:00	2021-08-03 00:00:00
2852	2190	cat4	subcat4	Tapia, Kramer and Hicks	Advanced modular moderator	2000	10353	successful	157	US	USD	2021-04-29 00:00:00	2021-08-15 00:00:00
2160	2243	cat5	subcat5	Barnes, Wilcox and Riley	Reverse-engineered well-modulated ability	5600	13868	successful	555	US	USD	2021-02-21 00:00:00	2022-01-02 00:00:00
113	3336	cat3	subcat9	Reyes PLC	Expanded optimal pricing structure	8300	8317	successful	297	US	USD	2020-09-13 00:00:00	2021-04-30 00:00:00
2609	3305	cat6	subcat14	Pace, Simpson and Watkins	Down-sized uniform ability	6900	10557	successful	123	US	USD	2020-12-02 00:00:00	2021-03-22 00:00:00
2529	6191	cat4	subcat4	Valenzuela, Davidson and Castro	Multi-layered upward-trending conglomeration	8700	3227	canceled	38	DK	DKK	2021-04-14 00:00:00	2021-07-10 00:00:00
1780	1326	cat2	subcat2	Dominguez-Owens	Open-architected systematic intranet	123600	5429	canceled	60	US	USD	2021-07-16 00:00:00	2021-08-17 00:00:00
1840	6159	cat5	subcat5	Thomas-Simmons	Proactive 24hour frame	48500	75906	successful	3036	US	USD	2021-04-10 00:00:00	2021-07-20 00:00:00
2280	2003	cat4	subcat4	Beck-Knight	Exclusive fresh-thinking model	4900	13250	successful	144	AU	AUD	2020-11-16 00:00:00	2021-09-14 00:00:00
3150	5881	cat4	subcat4	Mccoy Ltd	Business-focused encompassing intranet	8400	11261	successful	121	GB	GBP	2020-10-22 00:00:00	2021-10-11 00:00:00
2490	1918	cat7	subcat21	Dawson-Tyler	Optional 6thgeneration access	193200	97369	failed	1596	US	USD	2020-12-08 00:00:00	2021-07-28 00:00:00
3081	2157	cat4	subcat4	Johns-Thomas	Realigned web-enabled functionalities	54300	48227	canceled	524	US	USD	2020-11-25 00:00:00	2021-04-07 00:00:00
1954	3149	cat3	subcat3	Quinn, Cruz and Schmidt	Enterprise-wide multimedia software	8900	14685	successful	181	US	USD	2021-05-01 00:00:00	2021-10-20 00:00:00
2560	2444	cat4	subcat4	Stewart Inc	Versatile mission-critical knowledgebase	4200	735	failed	10	US	USD	2021-01-24 00:00:00	2021-04-13 00:00:00
1071	6207	cat5	subcat7	Moore Group	Multi-lateral object-oriented open system	5600	10397	successful	122	US	USD	2021-12-09 00:00:00	2022-02-02 00:00:00
1649	5580	cat3	subcat9	Carson PLC	Visionary system-worthy attitude	28800	118847	successful	1071	CA	CAD	2021-09-05 00:00:00	2022-02-22 00:00:00
685	5942	cat3	subcat3	Cruz, Hall and Mason	Synergized content-based hierarchy	8000	7220	canceled	219	US	USD	2021-06-06 00:00:00	2021-07-08 00:00:00
1069	1592	cat2	subcat2	Glass, Baker and Jones	Business-focused 24hour access	117000	107622	failed	1121	US	USD	2021-05-24 00:00:00	2021-12-31 00:00:00
1277	2344	cat2	subcat17	Marquez-Kerr	Automated hybrid orchestration	15800	83267	successful	980	US	USD	2021-04-01 00:00:00	2022-01-01 00:00:00
2764	5995	cat4	subcat4	Stone PLC	Exclusive 5thgeneration leverage	4200	13404	successful	536	US	USD	2021-07-13 00:00:00	2021-09-17 00:00:00
959	5022	cat8	subcat15	Caldwell PLC	Grass-roots zero administration alliance	37100	131404	successful	1991	US	USD	2020-12-17 00:00:00	2021-03-21 00:00:00
1746	5991	cat6	subcat10	Silva-Hawkins	Proactive heuristic orchestration	7700	2533	canceled	29	US	USD	2020-09-21 00:00:00	2021-01-10 00:00:00
2392	4020	cat2	subcat8	Gardner Inc	Function-based systematic Graphical User Interface	3700	5028	successful	180	US	USD	2021-07-22 00:00:00	2022-01-03 00:00:00
2762	6028	cat4	subcat4	Garcia Group	Extended zero administration software	74700	1557	failed	15	US	USD	2021-03-23 00:00:00	2021-06-16 00:00:00
1699	2790	cat2	subcat8	Meyer-Avila	Multi-tiered discrete support	10000	6100	failed	191	US	USD	2020-12-02 00:00:00	2021-05-28 00:00:00
220	4033	cat4	subcat4	Nelson, Smith and Graham	Phased system-worthy conglomeration	5300	1592	failed	16	US	USD	2020-01-15 00:00:00	2021-02-03 00:00:00
285	1261	cat4	subcat4	Garcia Ltd	Balanced mobile alliance	1200	14150	successful	130	US	USD	2020-07-12 00:00:00	2021-07-10 00:00:00
2182	1979	cat2	subcat6	West-Stevens	Reactive solution-oriented groupware	1200	13513	successful	122	US	USD	2021-03-30 00:00:00	2021-07-15 00:00:00
2244	2122	cat4	subcat4	Clark-Conrad	Exclusive bandwidth-monitored orchestration	3900	504	failed	17	US	USD	2021-07-27 00:00:00	2021-09-17 00:00:00
2357	4506	cat4	subcat4	Fitzgerald Group	Intuitive exuding initiative	2000	14240	successful	140	US	USD	2020-10-12 00:00:00	2021-11-30 00:00:00
971	3016	cat3	subcat9	Hill, Mccann and Moore	Streamlined needs-based knowledge user	6900	2091	failed	34	US	USD	2020-07-21 00:00:00	2021-06-11 00:00:00
2077	3272	cat3	subcat3	Edwards LLC	Automated system-worthy structure	55800	118580	successful	3388	US	USD	2020-12-25 00:00:00	2021-08-06 00:00:00
2197	1375	cat4	subcat4	Greer and Sons	Secured clear-thinking intranet	4900	11214	successful	280	US	USD	2021-02-25 00:00:00	2021-04-28 00:00:00
1294	4014	cat5	subcat11	Martinez PLC	Cloned actuating architecture	194900	68137	canceled	614	US	USD	2020-07-13 00:00:00	2021-06-20 00:00:00
1111	3199	cat3	subcat9	Hunter-Logan	Down-sized needs-based task-force	8600	13527	successful	366	IT	EUR	2020-08-20 00:00:00	2021-04-08 00:00:00
985	2184	cat2	subcat6	Ramos and Sons	Extended responsive Internet solution	100	1	failed	1	GB	GBP	2021-06-11 00:00:00	2021-06-28 00:00:00
487	2170	cat6	subcat10	Lane-Barber	Universal value-added moderator	3600	8363	successful	270	US	USD	2021-03-08 00:00:00	2021-07-22 00:00:00
1496	1478	cat4	subcat4	Lowery Group	Sharable motivating emulation	5800	5362	canceled	114	US	USD	2020-12-24 00:00:00	2021-08-29 00:00:00
3054	6163	cat8	subcat15	Guerrero-Griffin	Networked web-enabled product	4700	12065	successful	137	US	USD	2021-06-10 00:00:00	2022-01-08 00:00:00
501	1889	cat4	subcat4	Perez, Reed and Lee	Advanced dedicated encoding	70400	118603	successful	3205	US	USD	2020-09-01 00:00:00	2021-07-09 00:00:00
632	5912	cat4	subcat4	Chen, Pollard and Clarke	Stand-alone multi-state project	4500	7496	successful	288	DK	DKK	2021-03-17 00:00:00	2021-08-10 00:00:00
1253	2537	cat4	subcat4	Serrano, Gallagher and Griffith	Customizable bi-directional monitoring	1300	10037	successful	148	US	USD	2021-01-23 00:00:00	2021-11-08 00:00:00
665	2118	cat5	subcat7	Callahan-Gilbert	Profit-focused motivating function	1400	5696	successful	114	US	USD	2020-05-20 00:00:00	2021-03-06 00:00:00
2505	3234	cat2	subcat2	Logan-Miranda	Proactive systemic firmware	29600	167005	successful	1518	CA	CAD	2021-11-02 00:00:00	2021-11-10 00:00:00
1519	3842	cat2	subcat6	Rodriguez PLC	Grass-roots upward-trending installation	167500	114615	failed	1274	US	USD	2020-01-19 00:00:00	2021-03-14 00:00:00
1920	3032	cat7	subcat12	Smith-Kennedy	Virtual heuristic hub	48300	16592	failed	210	IT	EUR	2021-08-21 00:00:00	2021-11-19 00:00:00
2782	3238	cat2	subcat2	Mitchell-Lee	Customizable leadingedge model	2200	14420	successful	166	US	USD	2021-07-03 00:00:00	2021-07-22 00:00:00
2089	2059	cat2	subcat18	Davis Ltd	Upgradable uniform service-desk	3500	6204	successful	100	AU	AUD	2021-04-22 00:00:00	2021-07-19 00:00:00
2607	5238	cat4	subcat4	Rowland PLC	Inverse client-driven product	5600	6338	successful	235	US	USD	2020-07-22 00:00:00	2021-07-15 00:00:00
2464	2578	cat2	subcat2	Shaffer-Mason	Managed bandwidth-monitored system engine	1100	8010	successful	148	US	USD	2021-09-27 00:00:00	2021-11-24 00:00:00
335	4789	cat2	subcat8	Matthews LLC	Advanced transitional help-desk	3900	8125	successful	198	US	USD	2020-09-05 00:00:00	2021-04-21 00:00:00
1973	2357	cat5	subcat23	Montgomery-Castro	De-engineered disintermediate encryption	43800	13653	failed	248	AU	AUD	2021-01-26 00:00:00	2022-01-18 00:00:00
1006	1235	cat6	subcat19	Hale, Pearson and Jenkins	Upgradable attitude-oriented project	97200	55372	failed	513	US	USD	2020-12-17 00:00:00	2021-05-27 00:00:00
2678	3558	cat4	subcat4	Ramirez-Calderon	Fundamental zero tolerance alliance	4800	11088	successful	150	US	USD	2020-10-01 00:00:00	2021-08-11 00:00:00
2103	1707	cat7	subcat12	Johnson-Morales	Devolved 24hour forecast	125600	109106	failed	3410	US	USD	2021-01-26 00:00:00	2021-01-30 00:00:00
627	2842	cat4	subcat4	Mathis-Rodriguez	User-centric attitude-oriented intranet	4300	11642	successful	216	IT	EUR	2021-02-17 00:00:00	2021-06-02 00:00:00
2242	5318	cat4	subcat4	Smith, Mack and Williams	Self-enabling 5thgeneration paradigm	5600	2769	canceled	26	US	USD	2020-07-04 00:00:00	2021-02-14 00:00:00
2711	1620	cat2	subcat8	Johnson-Pace	Persistent 3rdgeneration moratorium	149600	169586	successful	5139	US	USD	2021-07-10 00:00:00	2022-01-12 00:00:00
1210	4998	cat4	subcat4	Meza, Kirby and Patel	Cross-platform empowering project	53100	101185	successful	2353	US	USD	2021-04-12 00:00:00	2021-04-21 00:00:00
692	3111	cat3	subcat3	Gonzalez-Snow	Polarized user-facing interface	5000	6775	successful	78	IT	EUR	2020-12-21 00:00:00	2021-12-01 00:00:00
864	1424	cat2	subcat2	Murphy LLC	Customer-focused non-volatile framework	9400	968	failed	10	US	USD	2021-02-21 00:00:00	2021-06-16 00:00:00
1349	3244	cat4	subcat4	Taylor-Rowe	Synchronized multimedia frame	110800	72623	failed	2201	US	USD	2021-06-08 00:00:00	2021-11-23 00:00:00
1582	4643	cat4	subcat4	Henderson Ltd	Open-architected stable algorithm	93800	45987	failed	676	US	USD	2020-11-30 00:00:00	2021-05-07 00:00:00
2862	6132	cat5	subcat11	Moss-Guzman	Cross-platform optimizing website	1300	10243	successful	174	CH	CHF	2020-09-08 00:00:00	2021-02-13 00:00:00
23	3790	cat4	subcat4	Webb Group	Public-key actuating projection	108700	87293	failed	831	US	USD	2020-12-18 00:00:00	2021-03-14 00:00:00
526	1312	cat5	subcat7	Brooks-Rodriguez	Implemented intangible instruction set	5100	5421	successful	164	US	USD	2021-02-19 00:00:00	2021-04-09 00:00:00
2134	5686	cat4	subcat4	Thomas Ltd	Cross-group interactive architecture	8700	4414	canceled	56	CH	CHF	2021-11-15 00:00:00	2021-12-26 00:00:00
422	2111	cat5	subcat11	Williams and Sons	Centralized asymmetric framework	5100	10981	successful	161	US	USD	2021-03-07 00:00:00	2021-06-15 00:00:00
988	5685	cat2	subcat2	Vega, Chan and Carney	Down-sized systematic utilization	7400	10451	successful	138	US	USD	2021-04-18 00:00:00	2021-11-18 00:00:00
812	1905	cat3	subcat3	Byrd Group	Profound fault-tolerant model	88900	102535	successful	3308	US	USD	2021-09-25 00:00:00	2021-09-28 00:00:00
1589	3271	cat5	subcat11	Peterson, Fletcher and Sanchez	Multi-channeled bi-directional moratorium	6700	12939	successful	127	AU	AUD	2021-10-07 00:00:00	2021-11-16 00:00:00
2504	4178	cat2	subcat18	Smith-Brown	Object-based content-based ability	1500	10946	successful	207	IT	EUR	2020-12-01 00:00:00	2021-07-19 00:00:00
1707	3275	cat2	subcat2	Vance-Glover	Progressive coherent secured line	61200	60994	failed	859	CA	CAD	2021-02-27 00:00:00	2021-11-06 00:00:00
3138	5713	cat5	subcat11	Joyce PLC	Synchronized directional capability	3600	3174	live	31	US	USD	2020-09-25 00:00:00	2021-05-18 00:00:00
120	3339	cat4	subcat4	Kennedy-Miller	Cross-platform composite migration	9000	3351	failed	45	US	USD	2020-03-08 00:00:00	2021-03-25 00:00:00
265	5585	cat4	subcat4	White-Obrien	Operative local pricing structure	185900	56774	canceled	1113	US	USD	2021-11-26 00:00:00	2021-12-31 00:00:00
2499	4407	cat1	subcat1	Stafford, Hess and Raymond	Optional web-enabled extranet	2100	540	failed	6	US	USD	2021-09-23 00:00:00	2022-01-18 00:00:00
127	1941	cat4	subcat4	Jordan, Schneider and Hall	Reduced 6thgeneration intranet	2000	680	failed	7	US	USD	2021-08-12 00:00:00	2021-10-04 00:00:00
1705	4690	cat6	subcat10	Rodriguez, Cox and Rodriguez	Networked disintermediate leverage	1100	13045	successful	181	CH	CHF	2020-06-09 00:00:00	2021-05-01 00:00:00
415	3607	cat2	subcat2	Welch Inc	Optional optimal website	6600	8276	successful	110	US	USD	2021-10-06 00:00:00	2021-12-18 00:00:00
3042	2670	cat5	subcat7	Vasquez Inc	Stand-alone asynchronous functionalities	7100	1022	failed	31	US	USD	2020-12-02 00:00:00	2021-07-02 00:00:00
2098	5261	cat7	subcat21	Freeman-Ferguson	Profound full-range open system	7800	4275	failed	78	US	USD	2021-02-10 00:00:00	2021-04-14 00:00:00
1015	4121	cat3	subcat3	Houston, Moore and Rogers	Optional tangible utilization	7600	8332	successful	185	US	USD	2021-08-12 00:00:00	2021-11-23 00:00:00
2454	4620	cat4	subcat4	Small-Fuentes	Seamless maximized product	3400	6408	successful	121	US	USD	2020-04-11 00:00:00	2021-01-28 00:00:00
662	4630	cat4	subcat4	Reid-Day	Devolved tertiary time-frame	84500	73522	failed	1225	GB	GBP	2021-07-13 00:00:00	2021-08-29 00:00:00
751	3440	cat2	subcat2	Wallace LLC	Centralized regional function	100	1	failed	1	CH	CHF	2021-06-17 00:00:00	2021-07-16 00:00:00
2336	3572	cat8	subcat15	Olson-Bishop	User-friendly high-level initiative	2300	4667	successful	106	US	USD	2020-11-04 00:00:00	2021-10-29 00:00:00
1757	5306	cat8	subcat15	Rodriguez, Anderson and Porter	Reverse-engineered zero-defect infrastructure	6200	12216	successful	142	US	USD	2020-09-30 00:00:00	2021-09-07 00:00:00
2779	5122	cat4	subcat4	Perez, Brown and Meyers	Stand-alone background customer loyalty	6100	6527	successful	233	US	USD	2020-07-17 00:00:00	2021-07-12 00:00:00
1698	1368	cat2	subcat2	English-Mccullough	Business-focused discrete software	2600	6987	successful	218	US	USD	2021-05-31 00:00:00	2021-09-19 00:00:00
550	5370	cat5	subcat5	Smith-Nguyen	Advanced intermediate Graphic Interface	9700	4932	failed	67	AU	AUD	2021-01-18 00:00:00	2021-06-12 00:00:00
746	5636	cat5	subcat7	Harmon-Madden	Adaptive holistic hub	700	8262	successful	76	US	USD	2020-10-04 00:00:00	2021-07-30 00:00:00
906	6033	cat4	subcat4	Walker-Taylor	Automated uniform concept	700	1848	successful	43	US	USD	2021-05-25 00:00:00	2021-09-11 00:00:00
3098	3599	cat1	subcat1	Harris, Medina and Mitchell	Enhanced regional flexibility	5200	1583	failed	19	US	USD	2021-01-02 00:00:00	2021-05-11 00:00:00
1052	5566	cat5	subcat5	Williams and Sons	Public-key bottom-line algorithm	140800	88536	failed	2108	CH	CHF	2020-07-12 00:00:00	2021-03-27 00:00:00
1073	1873	cat4	subcat4	Ball-Fisher	Multi-layered intangible instruction set	6400	12360	successful	221	US	USD	2020-08-19 00:00:00	2021-01-28 00:00:00
1327	3904	cat7	subcat12	Page, Holt and Mack	Fundamental methodical emulation	92500	71320	failed	679	US	USD	2021-08-01 00:00:00	2021-10-14 00:00:00
1849	4453	cat6	subcat10	Landry Group	Expanded value-added hardware	59700	134640	successful	2805	CA	CAD	2020-12-17 00:00:00	2021-06-11 00:00:00
1550	5481	cat7	subcat12	Buckley Group	Diverse high-level attitude	3200	7661	successful	68	US	USD	2020-11-29 00:00:00	2021-03-01 00:00:00
2139	2987	cat2	subcat2	Vincent PLC	Visionary 24hour analyzer	3200	2950	failed	36	DK	DKK	2021-08-13 00:00:00	2021-12-26 00:00:00
2442	2431	cat2	subcat2	Watson-Douglas	Centralized bandwidth-monitored leverage	9000	11721	successful	183	CA	CAD	2021-03-29 00:00:00	2021-11-27 00:00:00
108	4158	cat4	subcat4	Jones, Casey and Jones	Ergonomic mission-critical moratorium	2300	14150	successful	133	US	USD	2020-12-06 00:00:00	2021-02-27 00:00:00
322	3753	cat6	subcat10	Alvarez-Bauer	Front-line intermediate moderator	51300	189192	successful	2489	IT	EUR	2020-10-25 00:00:00	2021-04-24 00:00:00
2060	4391	cat4	subcat4	Martinez LLC	Automated local secured line	700	7664	successful	69	US	USD	2021-11-10 00:00:00	2022-01-12 00:00:00
589	2026	cat7	subcat12	Buck-Khan	Integrated bandwidth-monitored alliance	8900	4509	failed	47	US	USD	2021-02-02 00:00:00	2021-09-26 00:00:00
198	4547	cat2	subcat2	Valdez, Williams and Meyer	Cross-group heuristic forecast	1500	12009	successful	279	GB	GBP	2021-02-13 00:00:00	2021-12-04 00:00:00
1485	2798	cat5	subcat5	Alvarez-Andrews	Extended impactful secured line	4900	14273	successful	210	US	USD	2021-01-08 00:00:00	2021-11-09 00:00:00
2136	4732	cat2	subcat2	Stewart and Sons	Distributed optimizing protocol	54000	188982	successful	2100	US	USD	2020-02-17 00:00:00	2021-01-07 00:00:00
3200	5126	cat2	subcat2	Dyer Inc	Secured well-modulated system engine	4100	14640	successful	252	US	USD	2021-01-01 00:00:00	2021-04-05 00:00:00
2693	5151	cat6	subcat10	Anderson, Williams and Cox	Streamlined national benchmark	85000	107516	successful	1280	US	USD	2020-07-21 00:00:00	2021-03-11 00:00:00
1335	2134	cat5	subcat13	Solomon PLC	Open-architected 24/7 infrastructure	3600	13950	successful	157	GB	GBP	2020-05-31 00:00:00	2021-05-13 00:00:00
1171	5786	cat4	subcat4	Miller-Hubbard	Digitized 6thgeneration Local Area Network	2800	12797	successful	194	US	USD	2021-01-30 00:00:00	2021-09-14 00:00:00
1935	5515	cat5	subcat7	Miranda, Martinez and Lowery	Innovative actuating artificial intelligence	2300	6134	successful	82	AU	AUD	2020-09-30 00:00:00	2021-03-29 00:00:00
1097	4530	cat4	subcat4	Munoz, Cherry and Bell	Cross-platform reciprocal budgetary management	7100	4899	failed	70	US	USD	2021-02-12 00:00:00	2021-06-29 00:00:00
1307	4088	cat4	subcat4	Baker-Higgins	Vision-oriented scalable portal	9600	4929	failed	154	US	USD	2020-12-17 00:00:00	2021-07-16 00:00:00
1300	3667	cat4	subcat4	Johnson, Turner and Carroll	Persevering zero administration knowledge user	121600	1424	failed	22	US	USD	2021-09-29 00:00:00	2021-11-21 00:00:00
2587	3286	cat8	subcat15	Ward PLC	Front-line bottom-line Graphic Interface	97100	105817	successful	4233	US	USD	2020-05-05 00:00:00	2021-03-12 00:00:00
964	4804	cat6	subcat19	Bradley, Beck and Mayo	Synergized fault-tolerant hierarchy	43200	136156	successful	1297	DK	DKK	2020-10-28 00:00:00	2021-08-14 00:00:00
1093	5768	cat6	subcat19	Levine, Martin and Hernandez	Expanded asynchronous groupware	6800	10723	successful	165	DK	DKK	2021-02-01 00:00:00	2021-05-29 00:00:00
1199	6098	cat4	subcat4	Gallegos, Wagner and Gaines	Expanded fault-tolerant emulation	7300	11228	successful	119	US	USD	2021-06-15 00:00:00	2021-07-20 00:00:00
2259	2508	cat3	subcat3	Hodges, Smith and Kelly	Future-proofed 24hour model	86200	77355	failed	1758	US	USD	2020-05-06 00:00:00	2021-02-09 00:00:00
1169	5779	cat2	subcat8	Macias Inc	Optimized didactic intranet	8100	6086	failed	94	US	USD	2020-09-02 00:00:00	2021-08-06 00:00:00
2575	1717	cat2	subcat18	Cook-Ortiz	Right-sized dedicated standardization	17700	150960	successful	1797	US	USD	2021-06-11 00:00:00	2021-08-22 00:00:00
1889	3368	cat4	subcat4	Jordan-Fischer	Vision-oriented high-level extranet	6400	8890	successful	261	US	USD	2021-03-23 00:00:00	2021-09-23 00:00:00
2267	4265	cat5	subcat5	Pierce-Ramirez	Organized scalable initiative	7700	14644	successful	157	US	USD	2021-09-19 00:00:00	2021-11-01 00:00:00
78	4455	cat4	subcat4	Howell and Sons	Enhanced regional moderator	116300	116583	successful	3533	US	USD	2021-05-10 00:00:00	2021-11-19 00:00:00
55	2940	cat3	subcat3	Garcia, Dunn and Richardson	Automated even-keeled emulation	9100	12991	successful	155	US	USD	2020-10-11 00:00:00	2021-03-10 00:00:00
725	6144	cat3	subcat9	Lawson and Sons	Reverse-engineered multi-tasking product	1500	8447	successful	132	IT	EUR	2021-03-21 00:00:00	2021-05-25 00:00:00
1927	3657	cat8	subcat15	Porter-Hicks	De-engineered next generation parallelism	8800	2703	failed	33	US	USD	2021-02-22 00:00:00	2021-06-21 00:00:00
398	1537	cat5	subcat5	Rodriguez-Hansen	Intuitive cohesive groupware	8800	8747	canceled	94	US	USD	2021-09-15 00:00:00	2021-10-26 00:00:00
2554	2116	cat3	subcat3	Williams LLC	Up-sized high-level access	69900	138087	successful	1354	GB	GBP	2021-11-17 00:00:00	2021-11-28 00:00:00
2293	5102	cat3	subcat3	Cooper, Stanley and Bryant	Phased empowering success	1000	5085	successful	48	US	USD	2021-06-07 00:00:00	2021-11-30 00:00:00
2978	5815	cat1	subcat1	Miller, Glenn and Adams	Distributed actuating project	4700	11174	successful	110	US	USD	2021-03-22 00:00:00	2021-06-09 00:00:00
1443	4250	cat5	subcat7	Cole, Salazar and Moreno	Robust motivating orchestration	3200	10831	successful	172	US	USD	2020-02-01 00:00:00	2021-02-08 00:00:00
342	4533	cat2	subcat8	Jones-Ryan	Vision-oriented uniform instruction set	6700	8917	successful	307	US	USD	2021-03-27 00:00:00	2021-10-09 00:00:00
1719	3329	cat2	subcat2	Hood, Perez and Meadows	Cross-group upward-trending hierarchy	100	1	failed	1	US	USD	2020-04-04 00:00:00	2021-03-11 00:00:00
2004	3606	cat2	subcat6	Bright and Sons	Object-based needs-based info-mediaries	6000	12468	successful	160	US	USD	2021-10-23 00:00:00	2021-11-20 00:00:00
784	4749	cat7	subcat12	Brady Ltd	Open-source reciprocal standardization	4900	2505	failed	31	US	USD	2020-09-28 00:00:00	2021-03-31 00:00:00
3061	2222	cat2	subcat8	Collier LLC	Secured well-modulated projection	17100	111502	successful	1467	CA	CAD	2020-09-09 00:00:00	2021-09-05 00:00:00
559	1939	cat6	subcat14	Campbell, Thomas and Obrien	Multi-channeled secondary middleware	171000	194309	successful	2662	CA	CAD	2021-07-15 00:00:00	2021-10-23 00:00:00
978	2456	cat4	subcat4	Moses-Terry	Horizontal clear-thinking framework	23400	23956	successful	452	AU	AUD	2021-04-06 00:00:00	2021-07-20 00:00:00
1387	2794	cat1	subcat1	Williams and Sons	Profound composite core	2400	8558	successful	158	US	USD	2021-06-29 00:00:00	2021-10-21 00:00:00
499	2648	cat5	subcat13	Miranda, Gray and Hale	Programmable disintermediate matrices	5300	7413	successful	225	CH	CHF	2021-08-30 00:00:00	2021-12-03 00:00:00
1439	2545	cat1	subcat1	Ayala, Crawford and Taylor	Realigned 5thgeneration knowledge user	4000	2778	failed	35	US	USD	2021-02-16 00:00:00	2022-01-17 00:00:00
3130	3273	cat4	subcat4	Martinez Ltd	Multi-layered upward-trending groupware	7300	2594	failed	63	US	USD	2020-10-31 00:00:00	2021-11-12 00:00:00
1526	6155	cat3	subcat9	Lee PLC	Re-contextualized leadingedge firmware	2000	5033	successful	65	US	USD	2021-02-02 00:00:00	2021-09-17 00:00:00
1229	6064	cat4	subcat4	Young, Ramsey and Powell	Devolved disintermediate analyzer	8800	9317	successful	163	US	USD	2020-12-26 00:00:00	2021-09-07 00:00:00
780	1729	cat4	subcat4	Lewis and Sons	Profound disintermediate open system	3500	6560	successful	85	US	USD	2021-05-12 00:00:00	2021-08-12 00:00:00
936	4969	cat5	subcat20	Davis-Johnson	Automated reciprocal protocol	1400	5415	successful	217	US	USD	2020-08-22 00:00:00	2021-08-03 00:00:00
2820	3402	cat5	subcat13	Stevenson-Thompson	Automated static workforce	4200	14577	successful	150	US	USD	2021-01-25 00:00:00	2021-02-21 00:00:00
3118	2810	cat4	subcat4	Ellis, Smith and Armstrong	Horizontal attitude-oriented help-desk	81000	150515	successful	3272	US	USD	2021-07-01 00:00:00	2021-10-21 00:00:00
750	2217	cat8	subcat15	Jackson-Brown	Versatile 5thgeneration matrices	182800	79045	canceled	898	US	USD	2021-06-28 00:00:00	2021-12-17 00:00:00
2948	5140	cat1	subcat1	Kane, Pruitt and Rivera	Cross-platform next generation service-desk	4800	7797	successful	300	US	USD	2021-11-23 00:00:00	2022-01-14 00:00:00
1818	4497	cat4	subcat4	Wood, Buckley and Meza	Front-line web-enabled installation	7000	12939	successful	126	US	USD	2020-09-23 00:00:00	2021-04-29 00:00:00
1715	5100	cat5	subcat7	Brown-Williams	Multi-channeled responsive product	161900	38376	failed	526	US	USD	2020-06-08 00:00:00	2021-04-07 00:00:00
2667	3390	cat4	subcat4	Hansen-Austin	Adaptive demand-driven encryption	7700	6920	failed	121	US	USD	2020-05-11 00:00:00	2021-03-18 00:00:00
2818	1926	cat4	subcat4	Santana-George	Re-engineered client-driven knowledge user	71500	194912	successful	2320	US	USD	2021-03-16 00:00:00	2021-06-26 00:00:00
175	3264	cat5	subcat23	Davis LLC	Compatible logistical paradigm	4700	7992	successful	81	AU	AUD	2021-08-22 00:00:00	2021-10-12 00:00:00
2701	2573	cat8	subcat15	Vazquez, Ochoa and Clark	Intuitive value-added installation	42100	79268	successful	1887	US	USD	2020-07-17 00:00:00	2021-04-11 00:00:00
338	3628	cat8	subcat15	Chung-Nguyen	Managed discrete parallelism	40200	139468	successful	4358	US	USD	2020-03-21 00:00:00	2021-03-07 00:00:00
1372	3826	cat2	subcat2	Mueller-Harmon	Implemented tangible approach	7900	5465	failed	67	US	USD	2020-12-25 00:00:00	2021-12-16 00:00:00
399	5983	cat8	subcat15	Dixon, Perez and Banks	Re-engineered encompassing definition	8300	2111	failed	57	CA	CAD	2021-12-29 00:00:00	2022-01-16 00:00:00
2734	5678	cat1	subcat1	Estrada Group	Multi-lateral uniform collaboration	163600	126628	failed	1229	US	USD	2020-11-08 00:00:00	2021-01-22 00:00:00
2663	2093	cat2	subcat17	Lutz Group	Enterprise-wide foreground paradigm	2700	1012	failed	12	IT	EUR	2020-09-07 00:00:00	2021-07-05 00:00:00
2951	5333	cat6	subcat10	Ortiz Inc	Stand-alone incremental parallelism	1000	5438	successful	53	US	USD	2021-02-27 00:00:00	2021-03-03 00:00:00
733	5139	cat2	subcat6	Craig, Ellis and Miller	Persevering 5thgeneration throughput	84500	193101	successful	2414	US	USD	2021-01-11 00:00:00	2021-06-17 00:00:00
374	3173	cat4	subcat4	Charles Inc	Implemented object-oriented synergy	81300	31665	failed	452	US	USD	2020-12-24 00:00:00	2021-12-18 00:00:00
1949	3333	cat4	subcat4	White-Rosario	Balanced demand-driven definition	800	2960	successful	80	US	USD	2021-01-18 00:00:00	2021-09-25 00:00:00
48	2262	cat5	subcat13	Simmons-Villarreal	Customer-focused mobile Graphic Interface	3400	8089	successful	193	US	USD	2020-06-26 00:00:00	2021-06-10 00:00:00
3020	1531	cat4	subcat4	Strickland Group	Horizontal secondary interface	170800	109374	failed	1886	US	USD	2020-05-17 00:00:00	2021-04-25 00:00:00
749	4881	cat4	subcat4	Lynch Ltd	Virtual analyzing collaboration	1800	2129	successful	52	US	USD	2020-06-12 00:00:00	2021-04-30 00:00:00
1336	3928	cat2	subcat8	Sanders LLC	Multi-tiered explicit focus group	150600	127745	failed	1825	US	USD	2021-02-01 00:00:00	2022-01-16 00:00:00
2390	1803	cat4	subcat4	Cooper LLC	Multi-layered systematic knowledgebase	7800	2289	failed	31	US	USD	2021-03-13 00:00:00	2021-12-08 00:00:00
851	2321	cat4	subcat4	Palmer Ltd	Reverse-engineered uniform knowledge user	5800	12174	successful	290	US	USD	2021-10-26 00:00:00	2021-11-09 00:00:00
2394	6234	cat2	subcat6	Santos Group	Secured dynamic capacity	5600	9508	successful	122	US	USD	2020-12-13 00:00:00	2021-04-30 00:00:00
1062	1422	cat2	subcat8	Christian, Kim and Jimenez	Devolved foreground throughput	134400	155849	successful	1470	US	USD	2021-07-11 00:00:00	2021-09-17 00:00:00
1024	2660	cat5	subcat5	Williams, Price and Hurley	Synchronized demand-driven infrastructure	3000	7758	successful	165	CA	CAD	2020-12-13 00:00:00	2021-08-15 00:00:00
1261	5361	cat6	subcat19	Anderson, Parks and Estrada	Realigned discrete structure	6000	13835	successful	182	US	USD	2020-11-02 00:00:00	2021-09-04 00:00:00
2029	3420	cat5	subcat5	Collins-Martinez	Progressive grid-enabled website	8400	10770	successful	199	IT	EUR	2020-10-04 00:00:00	2021-07-20 00:00:00
267	4337	cat5	subcat20	Barrett Inc	Organic cohesive neural-net	1700	3208	successful	56	GB	GBP	2020-12-05 00:00:00	2021-12-04 00:00:00
3140	2338	cat4	subcat4	Adams-Rollins	Integrated demand-driven info-mediaries	159800	11108	failed	107	US	USD	2021-03-25 00:00:00	2021-10-04 00:00:00
2599	4140	cat1	subcat1	Wright-Bryant	Reverse-engineered client-server extranet	19800	153338	successful	1460	AU	AUD	2020-06-20 00:00:00	2021-05-23 00:00:00
1505	2373	cat4	subcat4	Berry-Cannon	Organized discrete encoding	8800	2437	failed	27	US	USD	2020-11-10 00:00:00	2021-03-17 00:00:00
2736	1344	cat5	subcat5	Davis-Gonzalez	Balanced regional flexibility	179100	93991	failed	1221	US	USD	2020-05-11 00:00:00	2021-06-01 00:00:00
2444	2141	cat2	subcat18	Best-Young	Implemented multimedia time-frame	3100	12620	successful	123	CH	CHF	2020-08-19 00:00:00	2021-06-02 00:00:00
212	3415	cat3	subcat3	Powers, Smith and Deleon	Enhanced uniform service-desk	100	2	failed	1	US	USD	2020-09-23 00:00:00	2021-06-06 00:00:00
1226	5696	cat2	subcat2	Hogan Group	Versatile bottom-line definition	5600	8746	successful	159	US	USD	2021-05-01 00:00:00	2022-01-18 00:00:00
2381	1798	cat3	subcat3	Wang, Silva and Byrd	Integrated bifurcated software	1400	3534	successful	110	US	USD	2021-01-11 00:00:00	2021-07-02 00:00:00
2510	1657	cat6	subcat10	Parker-Morris	Assimilated next generation instruction set	41000	709	live	14	US	USD	2020-02-15 00:00:00	2021-02-23 00:00:00
182	3651	cat6	subcat16	Rodriguez, Johnson and Jackson	Digitized foreground array	6500	795	failed	16	US	USD	2020-06-16 00:00:00	2021-05-25 00:00:00
1340	3574	cat4	subcat4	Haynes PLC	Re-engineered clear-thinking project	7900	12955	successful	236	US	USD	2020-08-29 00:00:00	2021-10-06 00:00:00
663	6063	cat5	subcat5	Hayes Group	Implemented even-keeled standardization	5500	8964	successful	191	US	USD	2020-10-11 00:00:00	2021-07-04 00:00:00
167	2404	cat4	subcat4	White, Pena and Calhoun	Quality-focused asymmetric adapter	9100	1843	failed	41	US	USD	2020-11-21 00:00:00	2021-11-18 00:00:00
3143	2705	cat7	subcat12	Bryant-Pope	Networked intangible help-desk	38200	121950	successful	3934	US	USD	2021-02-04 00:00:00	2021-08-06 00:00:00
1571	5059	cat4	subcat4	Gates, Li and Thompson	Synchronized attitude-oriented frame	1800	8621	successful	80	CA	CAD	2020-08-19 00:00:00	2021-04-27 00:00:00
1216	5466	cat4	subcat4	King-Morris	Proactive incremental architecture	154500	30215	canceled	296	US	USD	2020-11-27 00:00:00	2021-06-29 00:00:00
237	5821	cat3	subcat3	Carter, Cole and Curtis	Cloned responsive standardization	5800	11539	successful	462	US	USD	2020-09-08 00:00:00	2021-04-12 00:00:00
1524	5385	cat5	subcat7	Sanchez-Parsons	Reduced bifurcated pricing structure	1800	14310	successful	179	US	USD	2020-08-26 00:00:00	2021-08-05 00:00:00
218	3506	cat5	subcat7	Rivera-Pearson	Re-engineered asymmetric challenge	70200	35536	failed	523	AU	AUD	2021-02-21 00:00:00	2021-03-13 00:00:00
2508	5427	cat4	subcat4	Ramirez, Padilla and Barrera	Diverse client-driven conglomeration	6400	3676	failed	141	GB	GBP	2021-02-26 00:00:00	2021-05-02 00:00:00
1873	6142	cat5	subcat20	Riggs Group	Configurable upward-trending solution	125900	195936	successful	1866	GB	GBP	2021-01-30 00:00:00	2021-06-11 00:00:00
1378	2873	cat8	subcat15	Clements Ltd	Persistent bandwidth-monitored framework	3700	1343	failed	52	US	USD	2020-07-07 00:00:00	2021-07-27 00:00:00
2488	3916	cat5	subcat13	Cooper Inc	Polarized discrete product	3600	2097	live	27	GB	GBP	2020-11-13 00:00:00	2021-03-21 00:00:00
2924	1687	cat6	subcat16	Jones-Gonzalez	Seamless dynamic website	3800	9021	successful	156	CH	CHF	2020-06-16 00:00:00	2021-01-24 00:00:00
316	1542	cat4	subcat4	Fox Ltd	Extended multimedia firmware	35600	20915	failed	225	AU	AUD	2020-11-18 00:00:00	2021-11-16 00:00:00
531	3087	cat5	subcat11	Green, Murphy and Webb	Versatile directional project	5300	9676	successful	255	US	USD	2020-09-03 00:00:00	2021-04-30 00:00:00
435	3857	cat3	subcat3	Stevenson PLC	Profound directional knowledge user	160400	1210	failed	38	US	USD	2021-02-19 00:00:00	2021-07-23 00:00:00
1381	5921	cat2	subcat22	Soto-Anthony	Ameliorated logistical capability	51400	90440	successful	2261	US	USD	2020-10-13 00:00:00	2021-02-22 00:00:00
2606	3144	cat4	subcat4	Wise and Sons	Sharable discrete definition	1700	4044	successful	40	US	USD	2020-07-15 00:00:00	2021-07-29 00:00:00
2402	2676	cat4	subcat4	Butler-Barr	User-friendly next generation core	39400	192292	successful	2289	IT	EUR	2021-12-08 00:00:00	2022-01-01 00:00:00
761	3646	cat4	subcat4	Wilson, Jefferson and Anderson	Profit-focused empowering system engine	3000	6722	successful	65	US	USD	2020-12-17 00:00:00	2021-07-03 00:00:00
1447	1321	cat1	subcat1	Brown-Oliver	Synchronized cohesive encoding	8700	1577	failed	15	US	USD	2021-11-23 00:00:00	2021-12-06 00:00:00
1724	1399	cat4	subcat4	Davis-Gardner	Synergistic dynamic utilization	7200	3301	failed	37	US	USD	2020-04-21 00:00:00	2021-04-24 00:00:00
1050	3169	cat3	subcat3	Dawson Group	Triple-buffered bi-directional model	167400	196386	successful	3777	IT	EUR	2021-03-07 00:00:00	2021-03-22 00:00:00
443	2058	cat4	subcat4	Turner-Terrell	Polarized tertiary function	5500	11952	successful	184	GB	GBP	2020-10-14 00:00:00	2021-06-06 00:00:00
974	1300	cat4	subcat4	Hall, Buchanan and Benton	Configurable fault-tolerant structure	3500	3930	successful	85	US	USD	2021-08-05 00:00:00	2022-01-02 00:00:00
534	2075	cat4	subcat4	Lowery, Hayden and Cruz	Digitized 24/7 budgetary management	7900	5729	failed	112	US	USD	2021-06-03 00:00:00	2021-06-18 00:00:00
289	2984	cat2	subcat2	Mora, Miller and Harper	Stand-alone zero tolerance algorithm	2300	4883	successful	144	US	USD	2021-01-31 00:00:00	2021-06-07 00:00:00
2046	4768	cat4	subcat4	Espinoza Group	Implemented tangible support	73000	175015	successful	1902	US	USD	2021-01-29 00:00:00	2021-07-16 00:00:00
2614	3682	cat4	subcat4	Davis, Crawford and Lopez	Reactive radical framework	6200	11280	successful	105	US	USD	2020-12-26 00:00:00	2021-04-22 00:00:00
2652	5901	cat4	subcat4	Richards, Stevens and Fleming	Object-based full-range knowledge user	6100	10012	successful	132	US	USD	2021-02-11 00:00:00	2021-06-13 00:00:00
1303	3540	cat4	subcat4	Brown Ltd	Enhanced composite contingency	103200	1690	failed	21	US	USD	2020-09-08 00:00:00	2021-01-11 00:00:00
2638	2225	cat5	subcat5	Tapia, Sandoval and Hurley	Cloned fresh-thinking model	171000	84891	canceled	976	US	USD	2021-11-08 00:00:00	2022-01-26 00:00:00
2865	1485	cat6	subcat14	Allen Inc	Total dedicated benchmark	9200	10093	successful	96	US	USD	2020-07-20 00:00:00	2021-04-25 00:00:00
640	5343	cat7	subcat12	Williams, Johnson and Campbell	Streamlined human-resource Graphic Interface	7800	3839	failed	67	US	USD	2020-09-14 00:00:00	2021-04-07 00:00:00
910	5594	cat3	subcat3	Wiggins Ltd	Upgradable analyzing core	9900	6161	live	66	CA	CAD	2021-04-27 00:00:00	2021-11-24 00:00:00
333	2482	cat4	subcat4	Luna-Horne	Profound exuding pricing structure	43000	5615	failed	78	US	USD	2020-05-18 00:00:00	2021-05-17 00:00:00
1722	2706	cat4	subcat4	Allen Inc	Horizontal optimizing model	9600	6205	failed	67	AU	AUD	2021-03-14 00:00:00	2021-06-20 00:00:00
1437	4861	cat1	subcat1	Peterson, Gonzalez and Spencer	Synchronized fault-tolerant algorithm	7500	11969	successful	114	US	USD	2020-09-16 00:00:00	2021-07-10 00:00:00
806	2961	cat8	subcat15	Walter Inc	Streamlined 5thgeneration intranet	10000	8142	failed	263	AU	AUD	2020-12-20 00:00:00	2021-01-31 00:00:00
1563	3043	cat8	subcat15	Sanders, Farley and Huffman	Cross-group clear-thinking task-force	172000	55805	failed	1691	US	USD	2021-04-08 00:00:00	2021-12-18 00:00:00
878	6103	cat4	subcat4	Hall, Holmes and Walker	Public-key bandwidth-monitored intranet	153700	15238	failed	181	US	USD	2021-02-17 00:00:00	2021-06-05 00:00:00
2968	4708	cat4	subcat4	Smith-Powell	Upgradable clear-thinking hardware	3600	961	failed	13	US	USD	2021-09-09 00:00:00	2021-10-21 00:00:00
1876	4395	cat5	subcat5	Smith-Hill	Integrated holistic paradigm	9400	5918	canceled	160	US	USD	2021-05-09 00:00:00	2021-06-18 00:00:00
2686	4912	cat3	subcat3	Wright LLC	Seamless clear-thinking conglomeration	5900	9520	successful	203	US	USD	2021-02-22 00:00:00	2021-02-28 00:00:00
513	2030	cat4	subcat4	Williams, Orozco and Gomez	Persistent content-based methodology	100	5	failed	1	US	USD	2021-04-22 00:00:00	2021-08-20 00:00:00
3165	5235	cat2	subcat2	Peterson Ltd	Re-engineered 24hour matrix	14500	159056	successful	1559	US	USD	2020-04-26 00:00:00	2021-02-28 00:00:00
1847	5001	cat5	subcat5	Cummings-Hayes	Virtual multi-tasking core	145500	101987	canceled	2266	US	USD	2020-07-20 00:00:00	2021-07-24 00:00:00
1994	4093	cat5	subcat23	Boyle Ltd	Streamlined fault-tolerant conglomeration	3300	1980	failed	21	US	USD	2021-03-07 00:00:00	2021-09-06 00:00:00
201	2576	cat3	subcat3	Henderson, Parker and Diaz	Enterprise-wide client-driven policy	42600	156384	successful	1548	AU	AUD	2021-07-19 00:00:00	2021-12-03 00:00:00
960	6122	cat4	subcat4	Moss-Obrien	Function-based next generation emulation	700	7763	successful	80	US	USD	2021-04-20 00:00:00	2021-05-15 00:00:00
1475	2813	cat5	subcat23	Wood Inc	Re-engineered composite focus group	187600	35698	failed	830	US	USD	2020-08-17 00:00:00	2021-08-05 00:00:00
3149	3737	cat4	subcat4	Riley, Cohen and Goodman	Profound mission-critical function	9800	12434	successful	131	US	USD	2020-08-17 00:00:00	2021-04-06 00:00:00
877	2803	cat5	subcat11	Green, Robinson and Ho	De-engineered zero-defect open system	1100	8081	successful	112	US	USD	2021-07-15 00:00:00	2021-10-04 00:00:00
2122	5508	cat6	subcat19	Black-Graham	Operative hybrid utilization	145000	6631	failed	130	US	USD	2021-09-17 00:00:00	2021-10-03 00:00:00
923	3850	cat3	subcat3	Robbins Group	Function-based interactive matrix	5500	4678	failed	55	US	USD	2021-02-04 00:00:00	2021-03-07 00:00:00
1809	4220	cat6	subcat19	Mason, Case and May	Optimized content-based collaboration	5700	6800	successful	155	US	USD	2021-04-18 00:00:00	2021-11-16 00:00:00
3209	4532	cat1	subcat1	Harris, Russell and Mitchell	User-centric cohesive policy	3600	10657	successful	266	US	USD	2021-01-21 00:00:00	2021-11-02 00:00:00
1951	6013	cat8	subcat15	Rodriguez-Robinson	Ergonomic methodical hub	5900	4997	failed	114	IT	EUR	2021-07-23 00:00:00	2021-11-25 00:00:00
2566	3396	cat4	subcat4	Peck, Higgins and Smith	Devolved disintermediate encryption	3700	13164	successful	155	US	USD	2020-04-25 00:00:00	2021-03-28 00:00:00
2925	4401	cat2	subcat2	Nunez-King	Phased clear-thinking policy	2200	8501	successful	207	GB	GBP	2020-04-09 00:00:00	2021-03-05 00:00:00
3087	2981	cat4	subcat4	Davis and Sons	Seamless solution-oriented capacity	1700	13468	successful	245	US	USD	2020-10-08 00:00:00	2021-08-23 00:00:00
2040	4467	cat2	subcat22	Howard-Douglas	Organized human-resource attitude	88400	121138	successful	1573	US	USD	2020-09-22 00:00:00	2021-04-06 00:00:00
1755	1377	cat1	subcat1	Gonzalez-White	Open-architected disintermediate budgetary management	2400	8117	successful	114	US	USD	2020-12-21 00:00:00	2021-10-27 00:00:00
965	5036	cat4	subcat4	Lopez-King	Multi-lateral radical solution	7900	8550	successful	93	US	USD	2021-04-25 00:00:00	2021-09-11 00:00:00
2019	5761	cat4	subcat4	Glover-Nelson	Inverse context-sensitive info-mediaries	94900	57659	failed	594	US	USD	2021-04-10 00:00:00	2021-05-18 00:00:00
843	3699	cat5	subcat20	Garner and Sons	Versatile neutral workforce	5100	1414	failed	24	US	USD	2020-09-17 00:00:00	2021-04-26 00:00:00
1593	4519	cat3	subcat3	Sellers, Roach and Garrison	Multi-tiered systematic knowledge user	42700	97524	successful	1681	US	USD	2020-12-18 00:00:00	2021-03-15 00:00:00
2494	5395	cat4	subcat4	Herrera, Bennett and Silva	Programmable multi-state algorithm	121100	26176	failed	252	US	USD	2020-07-30 00:00:00	2021-05-04 00:00:00
2250	3057	cat2	subcat8	Thomas, Clay and Mendoza	Multi-channeled reciprocal interface	800	2991	successful	32	US	USD	2020-05-13 00:00:00	2021-03-06 00:00:00
1498	2741	cat4	subcat4	Ayala Group	Right-sized maximized migration	5400	8366	successful	135	US	USD	2020-07-22 00:00:00	2021-08-07 00:00:00
356	1675	cat4	subcat4	Huerta, Roberts and Dickerson	Self-enabling value-added artificial intelligence	4000	12886	successful	140	US	USD	2021-02-28 00:00:00	2021-08-08 00:00:00
1432	2712	cat1	subcat1	Johnson Group	Vision-oriented interactive solution	7000	5177	failed	67	US	USD	2021-04-22 00:00:00	2022-01-08 00:00:00
25	4527	cat7	subcat12	Bailey, Nguyen and Martinez	Fundamental user-facing productivity	1000	8641	successful	92	US	USD	2021-08-10 00:00:00	2021-08-20 00:00:00
488	1722	cat4	subcat4	Williams, Martin and Meyer	Innovative well-modulated capability	60200	86244	successful	1015	GB	GBP	2020-07-17 00:00:00	2021-03-03 00:00:00
423	4330	cat6	subcat10	Huff-Johnson	Universal fault-tolerant orchestration	195200	78630	failed	742	US	USD	2021-03-27 00:00:00	2021-11-17 00:00:00
2028	5219	cat3	subcat3	Diaz-Little	Grass-roots executive synergy	6700	11941	successful	323	US	USD	2021-06-26 00:00:00	2021-07-10 00:00:00
1521	4997	cat5	subcat5	Freeman-French	Multi-layered optimal application	7200	6115	failed	75	US	USD	2020-02-21 00:00:00	2021-02-23 00:00:00
2780	2239	cat5	subcat5	Beck-Weber	Business-focused full-range core	129100	188404	successful	2326	US	USD	2021-06-22 00:00:00	2021-12-17 00:00:00
2316	4587	cat4	subcat4	Lewis-Jacobson	Exclusive system-worthy Graphic Interface	6500	9910	successful	381	US	USD	2021-04-14 00:00:00	2021-05-29 00:00:00
2247	4113	cat2	subcat2	Logan-Curtis	Enhanced optimal ability	170600	114523	failed	4405	US	USD	2020-11-21 00:00:00	2021-01-19 00:00:00
2408	4762	cat2	subcat2	Chan, Washington and Callahan	Optional zero administration neural-net	7800	3144	failed	92	US	USD	2021-04-12 00:00:00	2021-07-02 00:00:00
3184	5242	cat5	subcat5	Wilson Group	Ameliorated foreground focus group	6200	13441	successful	480	US	USD	2020-07-18 00:00:00	2021-03-28 00:00:00
1680	5765	cat6	subcat16	Gardner, Ryan and Gutierrez	Triple-buffered multi-tasking matrices	9400	4899	failed	64	US	USD	2021-03-02 00:00:00	2021-09-20 00:00:00
2585	2185	cat6	subcat19	Hernandez Inc	Versatile dedicated migration	2400	11990	successful	226	US	USD	2021-06-12 00:00:00	2021-08-18 00:00:00
1561	5500	cat5	subcat7	Ortiz-Roberts	Devolved foreground customer loyalty	7800	6839	failed	64	US	USD	2021-06-09 00:00:00	2021-06-18 00:00:00
2632	3494	cat2	subcat2	Ramirez LLC	Reduced reciprocal focus group	9800	11091	successful	241	US	USD	2020-12-09 00:00:00	2021-05-26 00:00:00
439	3924	cat5	subcat7	Morrow Inc	Networked global migration	3100	13223	successful	132	US	USD	2020-06-14 00:00:00	2021-02-09 00:00:00
461	3521	cat8	subcat15	Erickson-Rogers	De-engineered even-keeled definition	9800	7608	canceled	75	IT	EUR	2021-07-03 00:00:00	2021-07-08 00:00:00
1419	5262	cat6	subcat19	Leach, Rich and Price	Implemented bi-directional flexibility	141100	74073	failed	842	US	USD	2021-11-15 00:00:00	2021-12-07 00:00:00
2986	3684	cat1	subcat1	Manning-Hamilton	Vision-oriented scalable definition	97300	153216	successful	2043	US	USD	2020-12-29 00:00:00	2021-05-30 00:00:00
2031	5784	cat4	subcat4	Butler LLC	Future-proofed upward-trending migration	6600	4814	failed	112	US	USD	2021-10-15 00:00:00	2021-11-30 00:00:00
1627	1498	cat4	subcat4	Ball LLC	Right-sized full-range throughput	7600	4603	canceled	139	IT	EUR	2021-11-06 00:00:00	2021-12-10 00:00:00
2175	6073	cat2	subcat8	Taylor, Santiago and Flores	Polarized composite customer loyalty	66600	37823	failed	374	US	USD	2020-10-08 00:00:00	2021-04-11 00:00:00
1788	4939	cat1	subcat1	Hernandez, Norton and Kelley	Expanded eco-centric policy	111100	62819	canceled	1122	US	USD	2020-12-30 00:00:00	2021-08-18 00:00:00
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (category_id, category_name) FROM stdin;
cat1	food
cat2	music
cat3	technology
cat4	theater
cat5	film & video
cat6	publishing
cat7	games
cat8	photography
cat9	journalism
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts (contact_id, first_name, last_name, email) FROM stdin;
4661	Cecilia	Velasco	cecilia.velasco@rodrigues.fr
3765	Mariana	Ellis	mariana.ellis@rossi.org
4187	Sofie	Woods	sofie.woods@riviere.com
4941	Jeanette	Iannotti	jeanette.iannotti@yahoo.com
2199	Samuel	Sorgatz	samuel.sorgatz@gmail.com
5650	Socorro	Luna	socorro.luna@hotmail.com
5889	Carolina	Murray	carolina.murray@knight.com
4842	Kayla	Moon	kayla.moon@yahoo.de
3280	Ariadna	Geisel	ariadna.geisel@rangel.com
5468	Danielle	Ladeck	danielle.ladeck@scalfaro.net
3064	Tatiana	Thompson	tatiana.thompson@hunt.net
4904	Caleb	Benavides	caleb.benavides@rubio.com
1299	Sandra	Hardy	sandra.hardy@web.de
5602	Lotti	Morris	lotti.morris@yahoo.co.uk
5753	Reinhilde	White	reinhilde.white@voila.fr
4495	Kerry	Patel	kerry.patel@hutchinson.com
4269	Sophie	Antoine	sophie.antoine@andersen.com
2226	Martha	Girard	martha.girard@web.de
1558	Stephanie	King	stephanie.king@cervantes.com
2307	Amanda	Palmer	amanda.palmer@didier.fr
2900	Lina	Alcala	lina.alcala@vespa.net
5695	Itzel	Murphy	itzel.murphy@muelichen.de
5708	Filippo	Parry	filippo.parry@live.com
1663	Katelyn	Cole	katelyn.cole@fiebig.com
3605	Brian	Novak	brian.novak@ford.net
4678	Cilly	Gay	cilly.gay@callegaro.it
2251	Yolanda	Snyder	yolanda.snyder@gmx.de
6202	Evelin	Odonnell	evelin.odonnell@ibarra.net
3715	Ingeborg	Alba	ingeborg.alba@hotmail.com
4242	Marina	Madrid	marina.madrid@galarza-alba.com
4326	Sheila	Goodwin	sheila.goodwin@yahoo.com
5560	Valeria	Rich	valeria.rich@turchetta-mondadori.it
4002	Dustin	Camacho	dustin.camacho@rhodes.org.au
3813	Amalia	Marenzio	amalia.marenzio@grupo.com
5336	Gian	Long	gian.long@hotmail.com
4994	Stewart	Hunt	stewart.hunt@anderson-vargas.biz
1471	Greca	Ruiz	greca.ruiz@carr.co.uk
4482	Gerald	Olivera	gerald.olivera@outlook.com
3241	Jaqueline	Wallace	jaqueline.wallace@gmail.com
3477	John	Lane	john.lane@gregoire.fr
2265	Pero	Joly	pero.joly@bernard.net
5911	Chad	Turner	chad.turner@gmail.com
2288	Adam	Zavala	adam.zavala@guichard.fr
4064	Tyler	Rivera	tyler.rivera@guajardo-ozuna.com
1294	Jens	Graham	jens.graham@jones-buckley.com
5008	Virginia	Caetani	virginia.caetani@sosa.biz
3604	Martino	Wagner	martino.wagner@laposte.net
3263	Martin	Meyer	martin.meyer@davis.co.uk
5631	Marguerite	Walls	marguerite.walls@martinez.fr
2851	Peter	Vogt	peter.vogt@yahoo.com
3714	Nicholas	Christian	nicholas.christian@hotmail.de
1664	Susi	Steinberg	susi.steinberg@preiss.com
5027	Tammy	Ramazzotti	tammy.ramazzotti@gmail.com
3070	Abdul	Thomas	abdul.thomas@vasari.com
4248	Justin	Luxardo	justin.luxardo@googlemail.com
2034	Antonio	Gibson	antonio.gibson@faust.net
4085	Jeremy	Gomez	jeremy.gomez@oconnor.org
3569	Raymond	Solorzano	raymond.solorzano@gmail.com
3889	Flora	Harris	flora.harris@hotmail.com.au
3136	Cheryl	Boyd	cheryl.boyd@segni.it
2103	Rhys	Leiva	rhys.leiva@gmx.de
2329	Mariano	Prieto	mariano.prieto@vodafone.it
3325	Laurie	Fibonacci	laurie.fibonacci@gmail.com
3131	David	Rudolph	david.rudolph@nelson.com
4995	Bryan	Ross	bryan.ross@yahoo.com
3631	Ubaldo	Brown	ubaldo.brown@philippe.com
5373	Clelia	Faulkner	clelia.faulkner@hotmail.com
3126	Sara	Erickson	sara.erickson@yahoo.de
2194	Rupert	Valle	rupert.valle@filogamo.it
2906	Puccio	Kitzmann	puccio.kitzmann@yahoo.com
2611	Thomas	Hutchinson	thomas.hutchinson@gmx.de
2374	Abelardo	Castro	abelardo.castro@gmail.com
3254	Greco	Walker	greco.walker@yahoo.com
3571	Miranda	Lacombe	miranda.lacombe@longoria-vanegas.net
2812	Diana	Schuchhardt	diana.schuchhardt@libero.it
3961	Stacey	Knox	stacey.knox@corporacin.com
3872	Glen	Faivre	glen.faivre@yahoo.com
4736	Andrew	Torres	andrew.torres@ruiz-torres.org
5119	Denny	Fritz	denny.fritz@despacho.biz
5725	Martyn	Caldera	martyn.caldera@hotmail.co.uk
4037	Abigail	Foster	abigail.foster@taylor.net
2109	Anthony	Hauffer	anthony.hauffer@tlustek.org
3283	Roger	Gerlach	roger.gerlach@may-mitchell.co.uk
6181	Christopher	Poirier	christopher.poirier@hotmail.com
3251	Branka	Traore	branka.traore@jacobi.com
3443	Briana	Etienne	briana.etienne@bishop-coates.com
2988	Brandon	Olson	brandon.olson@prince-moreno.net
1673	Celia	Ungaretti	celia.ungaretti@fox.com
2085	Barbara	Guibert	barbara.guibert@casares-sanches.com
1672	Daniela	Bell	daniela.bell@vollbrecht.org
4426	Phyllis	Gurule	phyllis.gurule@rodriguez-pham.com
3211	Alejandra	Joseph	alejandra.joseph@escalante-abrego.biz
3190	Giulio	Bohlander	giulio.bohlander@dbmail.com
2081	Amber	Weller	amber.weller@toso.eu
3185	Mary	Etzold	mary.etzold@conrad-harrison.com
5044	Amy	Georges	amy.georges@raedel.de
1883	Jennifer	Giraud	jennifer.giraud@yahoo.com
2067	Rosie	Peltier	rosie.peltier@voila.fr
4604	Oreste	Ward	oreste.ward@proyectos.com
3203	Luis	Edwards	luis.edwards@live.com
5758	Fiona	Griffiths	fiona.griffiths@curatoli-verdone.it
5755	Sally	Raya	sally.raya@tarchetti.it
5150	Carolyn	Charpentier	carolyn.charpentier@hotmail.de
4181	Nathalie	Alvarez	nathalie.alvarez@live.com
3006	Abril	Lowery	abril.lowery@novak.net
4865	Ottone	Sullivan	ottone.sullivan@hussain-kaur.com
2862	Esmeralda	Sollima	esmeralda.sollima@visintini.it
6070	Silvia	Gierschner	silvia.gierschner@tele2.it
5300	Kyle	Cunningham	kyle.cunningham@voila.fr
3486	Anel	Carpentier	anel.carpentier@klein-joseph.org
5989	Sarah	Davis	sarah.davis@david.com
2849	Luke	Klein	luke.klein@hotmail.com
1612	Gudrun	Mueller	gudrun.mueller@dillon-fuller.info
3307	Melissa	Canali	melissa.canali@libero.it
5288	Gabrielle	Ayala	gabrielle.ayala@hotmail.com
6026	Laura	Buckley	laura.buckley@ryan.org
2212	Wilfrido	Lorch	wilfrido.lorch@leclerc.fr
4591	Robert	Bruder	robert.bruder@manzoni.com
2771	Phillip	Soliz	phillip.soliz@outlook.com
5682	Alex	Smith	alex.smith@fournier.fr
5368	Jessica	Martinez	jessica.martinez@salieri.com
3706	Kelly	Carter	kelly.carter@hotmail.com.au
4034	Ahmad	Sosa	ahmad.sosa@gmail.com
3209	Toralf	Iglesias	toralf.iglesias@borrego.com
2384	Irene	Anichini	irene.anichini@yahoo.com
3074	Alicia	Cainero	alicia.cainero@yahoo.com
2031	Tracey	Laboy	tracey.laboy@bell.biz
5873	Donald	Reynaud	donald.reynaud@green.edu.au
5501	Venancio	Stadelmann	venancio.stadelmann@gmx.de
3489	Seth	Olivier	seth.olivier@yahoo.com
4210	Dennis	Boaga	dennis.boaga@gmx.de
6151	Pedro	Wilson	pedro.wilson@outlook.com
6047	Roland	Weihmann	roland.weihmann@gmail.com
5445	Hector	Morrison	hector.morrison@web.de
5493	Evangelos	Peters	evangelos.peters@sanchez.net
6036	Gerardo	Hamilton	gerardo.hamilton@libero.it
2368	Meta	Cuzzocrea	meta.cuzzocrea@howard-jensen.org
1501	Alma	Raymond	alma.raymond@tin.it
4351	Kathleen	Solimena	kathleen.solimena@wallace.biz
3096	Zacharie	Cordier	zacharie.cordier@gmail.com
6162	Riza	Techer	riza.techer@yahoo.com
1433	Enrique	Guillen	enrique.guillen@hotmail.co.uk
2720	Tristan	Weeks	tristan.weeks@pena.com
5251	Natalie	Lerma	natalie.lerma@boucher.com
1797	Rodney	Hamon	rodney.hamon@hotmail.com
1656	Adalberto	Lombardo	adalberto.lombardo@sfr.fr
1346	Florencia	Querini	florencia.querini@gmail.com
2989	Liam	Rolland	liam.rolland@yahoo.fr
5629	Ian	Kelly	ian.kelly@reeves.com.au
3456	Mehdi	Todd	mehdi.todd@web.de
3229	Rembrandt	Liguori	rembrandt.liguori@davis.org
2277	Irmi	Schweitzer	irmi.schweitzer@ozuna.com
1276	Gioffre	Stein	gioffre.stein@hotmail.com.au
3694	Frida	Villarreal	frida.villarreal@hotmail.de
2260	Steffen	Mangold	steffen.mangold@paul.net
5374	Elias	Marin	elias.marin@herve.net
4420	Roman	Gonzalez	roman.gonzalez@anderson.net
3849	Reina	Middleton	reina.middleton@hotmail.com
1638	Sandro	Moran	sandro.moran@hotmail.de
5230	Gebhard	Thanel	gebhard.thanel@gmail.com
1763	Antonino	Bolander	antonino.bolander@gmail.com
4323	Karl	Trevisani	karl.trevisani@anguissola.it
5256	Silvester	Brookes	silvester.brookes@franco.org
4836	Octavio	Pratt	octavio.pratt@web.de
5981	Rebecca	Greer	rebecca.greer@hotmail.com
1463	Pierina	Gaggini	pierina.gaggini@free.fr
4577	Robin	Schleich	robin.schleich@rogers-barrera.biz
4951	Sergio	Abbott	sergio.abbott@moore.net.au
3567	Gilberto	Evans	gilberto.evans@salcedo-archuleta.net
5475	James	Elliott	james.elliott@gmail.com
2114	Timoteo	Bolnbach	timoteo.bolnbach@laboratorios.com
5216	Tonino	Stanley	tonino.stanley@hotmail.com
1665	Margaretha	Murialdo	margaretha.murialdo@meunier.com
6051	Bianca	Drubin	bianca.drubin@libero.it
3983	Kaylee	Hoffmann	kaylee.hoffmann@poulain.com
2966	Teresa	Vecellio	teresa.vecellio@yahoo.com
4478	Emine	Tacchini	emine.tacchini@dbmail.com
4238	Dawn	Cortez	dawn.cortez@gmail.com
4404	Emily	Cundari	emily.cundari@clark.com.au
5666	Eleanor	Hall	eleanor.hall@hotmail.com
3691	Monique	Delgadillo	monique.delgadillo@hotmail.co.uk
2703	Arnaude	Warner	arnaude.warner@gmail.com
4253	Jason	Howell	jason.howell@gmx.de
5652	Nicole	Mccullough	nicole.mccullough@hall.com
3279	Rosmarie	Esquibel	rosmarie.esquibel@bouygtel.fr
3233	Leonor	Ferreira	leonor.ferreira@gmail.com
3017	Brett	Jones	brett.jones@alice.it
3482	Nino	Bien	nino.bien@gmail.com
2166	Jemma	Tate	jemma.tate@hotmail.de
4146	Denis	Rogers	denis.rogers@poste.it
2651	Vanesa	Khan	vanesa.khan@voila.fr
1409	Victoria	Ojeda	victoria.ojeda@doehn.com
3717	Eugenio	Martin	eugenio.martin@yahoo.de
3963	Nancy	Hayes	nancy.hayes@hotmail.com
2152	Lara	Jacob	lara.jacob@buckley.org
2974	Gino	Hernandez	gino.hernandez@covarrubias.com
1268	Vicente	Tijerina	vicente.tijerina@montanariello.com
1822	Michele	Brambilla	michele.brambilla@yahoo.com
5066	Dana	Ritacca	dana.ritacca@gmail.com
5075	Mitchell	Bachmann	mitchell.bachmann@suarez-cruz.com
3855	Vincenza	Key	vincenza.key@adams.com
5923	Salvador	Gaillard	salvador.gaillard@yahoo.de
1867	Diane	Rogner	diane.rogner@kelly.co.uk
4376	Josette	Laine	josette.laine@saracino-parisi.net
2785	Courtney	Fiebig	courtney.fiebig@doerschner.com
5884	Hugues	Oliver	hugues.oliver@stiffel.com
2441	Espartaco	Willis	espartaco.willis@hotmail.com
1243	Flavia	Yoder	flavia.yoder@hotmail.de
3411	Casey	Flores	casey.flores@baggio.org
2467	Calogero	Cross	calogero.cross@mercantini.it
1850	Charles	Begum	charles.begum@laboratorios.info
2604	Adina	Pollard	adina.pollard@outlook.com
1693	Natasha	Lara	natasha.lara@outlook.com
2969	Benita	Pottier	benita.pottier@sfr.fr
1544	Elizabeth	Valdivia	elizabeth.valdivia@gmail.com
4149	Mattia	Huet	mattia.huet@aol.de
3463	Geza	Howard	geza.howard@voila.fr
2939	Lauren	Guillaume	lauren.guillaume@sorgatz.org
2202	Joanna	Baxter	joanna.baxter@bruce-wright.com
1728	Tracy	Metz	tracy.metz@bryant.info
5362	Birgit	Pena	birgit.pena@armellini.it
4840	Elvira	Papafava	elvira.papafava@ifrance.com
2955	Ernest	Delorme	ernest.delorme@dowerg.de
5354	Christy	Grossi	christy.grossi@alarcon-tafoya.com
3847	Hermelinda	Olmos	hermelinda.olmos@portillo.com
3025	Herbert	Fraser	herbert.fraser@holloway.org.au
1615	Giancarlo	Heydrich	giancarlo.heydrich@hotmail.com
5154	Constance	Maldonado	constance.maldonado@spiess.net
5005	Giampiero	Carlier	giampiero.carlier@hotmail.com
1349	Carlo	Jacquot	carlo.jacquot@hotmail.com
3670	Gabriel	Robles	gabriel.robles@yahoo.com
2912	Gerd	Gunpf	gerd.gunpf@gmail.com
4336	Ashley	Hellwig	ashley.hellwig@libero.it
5576	Patrick	Rosas	patrick.rosas@yahoo.com
2736	Lilla	Leonard	lilla.leonard@jungfer.com
3321	Tony	Nicolas	tony.nicolas@morrocco-seddio.net
3353	Allegra	Benedetti	allegra.benedetti@miller.com
2336	Camille	Tafuri	camille.tafuri@aol.de
4369	Juan	Wheeler	juan.wheeler@gilmore.net
4464	Leopoldo	Johnson	leopoldo.johnson@hotmail.com.au
5626	Dietmar	Grenier	dietmar.grenier@tele2.it
1669	Leonid	Scholl	leonid.scholl@collin.com
5544	Olivie	Contarini	olivie.contarini@marshall-wright.biz
6078	Jeffery	Lacroix	jeffery.lacroix@medina.org
2580	Edeltraud	Chavez	edeltraud.chavez@hotmail.com.au
3592	Mesut	Morvan	mesut.morvan@gmail.com
4914	Gregory	Jackson	gregory.jackson@ortiz.com
3848	Nicola	Rossi	nicola.rossi@berry.org
2619	Eddie	Collazo	eddie.collazo@gmail.com
4605	Philippe	Gardner	philippe.gardner@howells-jones.net
6147	Roy	Fox	roy.fox@tejeda.com
1383	Heiderose	Garcia	heiderose.garcia@noos.fr
1757	Claudine	Rowley	claudine.rowley@industrias.com
4390	Astrid	Roht	astrid.roht@fastwebnet.it
4165	Auguste	Burnett	auguste.burnett@yahoo.fr
4529	Pellegrino	Allen	pellegrino.allen@gmail.com
6084	Angela	Bowers	angela.bowers@laboratorios.com
2916	Michael	Descamps	michael.descamps@gmail.com
2005	Heidelore	Kennedy	heidelore.kennedy@guinizzelli.org
2261	Lucrezia	Koch	lucrezia.koch@petit.com
5342	Ivan	Accardo	ivan.accardo@web.de
4087	Karen	Avogadro	karen.avogadro@yahoo.com
2761	Laetitia	Gallet	laetitia.gallet@aubry.org
2908	Amico	Gosselin	amico.gosselin@shaw.info
2155	Ilaria	Bowen	ilaria.bowen@hotmail.it
5642	Marlen	Coardi	marlen.coardi@colletti.eu
6217	Rafael	Alexander	rafael.alexander@jenkins.com
4222	Herma	Gabbana	herma.gabbana@hotmail.com
4798	Zachary	Vespucci	zachary.vespucci@industrias.com
5660	Marisol	Richard	marisol.richard@gmail.com
5000	Joseph	Glover	joseph.glover@laposte.net
2809	Lauretta	Neal	lauretta.neal@hotmail.de
3349	Simone	Sauvage	simone.sauvage@yahoo.com
3647	Ramona	Brooks	ramona.brooks@kensy.de
5745	Gioele	Schwital	gioele.schwital@moody.com
2583	Elena	Jimenez	elena.jimenez@yahoo.com.au
5441	Pam	Vargas	pam.vargas@guillot.net
2090	Alison	Morales	alison.morales@lewis.com
3386	Marc	Aumann	marc.aumann@holland.com
1816	Carla	Butler	carla.butler@yahoo.com
4718	Dionigi	Bruce	dionigi.bruce@industrias.com
1677	Frank	Henry	frank.henry@yahoo.com
4218	Brent	Pons	brent.pons@proyectos.net
4548	Patricia	Liebelt	patricia.liebelt@baca.org
1431	Micheletto	Sykes	micheletto.sykes@thompson-thompson.com
2830	Rose	Blanc	rose.blanc@grupo.com
4400	Vincent	Singh	vincent.singh@gmail.com
5773	Jamie	Peacock	jamie.peacock@interiano-nordio.com
4161	Giorgia	Dijoux	giorgia.dijoux@paul.com
2062	Serena	Piacentini	serena.piacentini@yahoo.de
3458	Dimitri	Posada	dimitri.posada@gmail.com
3174	Alexa	Barillaro	alexa.barillaro@ramos.net
5565	Megan	Kuhl	megan.kuhl@despacho.com
1906	Kaitlyn	Farinelli	kaitlyn.farinelli@outlook.com
5479	Jonathan	Castellitto	jonathan.castellitto@libero.it
4320	Lisa	Terragni	lisa.terragni@proyectos.com
4213	Olivier	Petrucelli	olivier.petrucelli@letta-raurica.eu
3373	Jos	Trobbiani	jos.trobbiani@samson.com
4184	Mirjam	Dawson	mirjam.dawson@yahoo.com
5472	Javier	Tessier	javier.tessier@mclaughlin.biz
5559	Mirjana	Collins	mirjana.collins@hotmail.com
5419	Vanessa	Tschentscher	vanessa.tschentscher@mitchell.com
4171	Antonina	Cobb	antonina.cobb@gibson.org
1302	Bernard	Durand	bernard.durand@royer.com
3520	Corey	Greggio	corey.greggio@johnson.org.au
6010	Rodolfo	Couturier	rodolfo.couturier@tim.it
4617	Pierre	Cardenas	pierre.cardenas@luzi-bonomo.eu
1417	Romeo	Surian	romeo.surian@batista.com
4770	Ivo	Moreno	ivo.moreno@hotmail.com
4328	Federico	Marie	federico.marie@jourdan.fr
5171	Maggie	Boito	maggie.boito@yahoo.com
4394	Brianna	Hanson	brianna.hanson@stanley.com
1794	Heiko	Bourgeois	heiko.bourgeois@togliatti.com
3510	Benito	Gritti	benito.gritti@gmail.com
2487	Mitzy	Junk	mitzy.junk@zaragoza.com
2215	Samantha	Lowe	samantha.lowe@praga.it
4136	Ernesto	Nerger	ernesto.nerger@middleton.co.uk
3723	Melinda	Canova	melinda.canova@orange.fr
5842	Mohammad	Hartung	mohammad.hartung@hotmail.com
3289	Ben	Maillot	ben.maillot@ramos.net
1249	Isabel	Pruschke	isabel.pruschke@gmail.com
5409	Linda	Franceschi	linda.franceschi@richards.net
2951	Olivia	Striebitz	olivia.striebitz@gmail.com
3432	Penny	Watson	penny.watson@matthews.net
2297	Manfred	James	manfred.james@davies.org
6161	Hazel	Pierce	hazel.pierce@outlook.com
4603	Alf	Bates	alf.bates@dunn.com
5818	Scott	Gough	scott.gough@industrias.com
4270	Konrad	Briones	konrad.briones@fierro.com
6007	Mathilde	Kruschwitz	mathilde.kruschwitz@yahoo.com
4084	Irma	Gemito	irma.gemito@googlemail.com
1340	Antoine	Guyon	antoine.guyon@yahoo.com
5675	William	Gibilisco	william.gibilisco@gaillard.com
2010	Judith	Butte	judith.butte@fischer-vaughn.info
6201	Joanne	Henderson	joanne.henderson@gmail.com
1791	Ludovica	Arellano	ludovica.arellano@morandi-argento.com
3314	Catherine	Gray	catherine.gray@hotmail.com
5852	Franco	Fioravanti	franco.fioravanti@barry-gill.com.au
4618	Heather	Zimmer	heather.zimmer@bluemel.de
2618	Hortense	Taylor	hortense.taylor@chambers.biz
4967	Livia	Ernst	livia.ernst@colas.fr
4594	Toby	Etzler	toby.etzler@industrias.com
2080	Ennio	Leoncavallo	ennio.leoncavallo@sanchez.org
2793	Philippine	Vaca	philippine.vaca@hotmail.com
4890	Rhonda	Phillips	rhonda.phillips@yahoo.com
3528	Alphonse	Nitto	alphonse.nitto@voila.fr
5810	Karina	Arreola	karina.arreola@yahoo.com.au
5720	Denise	Wood	denise.wood@mantegna.com
4593	Burghard	Rosenow	burghard.rosenow@hotmail.com
3186	Friedl	Powell	friedl.powell@laposte.net
5136	Benjamin	Schultz	benjamin.schultz@rivero-davila.com
2646	Rachel	Ulibarri	rachel.ulibarri@schueler.com
3460	Silvano	Blanchet	silvano.blanchet@yahoo.com
4345	Kurt	Sauer	kurt.sauer@almanza.biz
2690	Nayeli	Gehringer	nayeli.gehringer@hotmail.com
4025	Imelda	Guerin	imelda.guerin@stumpf.net
4524	Zbigniew	Holmes	zbigniew.holmes@stiffel.net
3978	Adela	Alfonsi	adela.alfonsi@despacho.com
3910	Hilary	Clark	hilary.clark@libero.it
5825	Kornelius	Molina	kornelius.molina@heuser.com
3564	Christian	Anderson	christian.anderson@tim.it
2396	Francisco	Dorsey	francisco.dorsey@tiscali.fr
2140	Walli	Albert	walli.albert@dussen.com
3079	Siegrun	Mota	siegrun.mota@matthews-montoya.org.au
2017	Alberico	Herve	alberico.herve@beer.net
5444	Serafina	Bonnin	serafina.bonnin@mendes.com
2216	Marcelle	Bender	marcelle.bender@edwards-robinson.info
1241	Hartmuth	Robertson	hartmuth.robertson@thomas.edu.au
1484	Herlinde	George	herlinde.george@free.fr
3475	Pamela	Payne	pamela.payne@yahoo.com
4333	Gastone	Beyer	gastone.beyer@stewart-sanchez.edu
5657	Lydia	Berengario	lydia.berengario@aol.de
2527	Lucy	Davidson	lucy.davidson@tele2.it
5967	Franck	Wade	franck.wade@gute.org
5698	Heidi	Barker	heidi.barker@gmail.com
3331	Arnaldo	Ocasio	arnaldo.ocasio@hotmail.com
3841	Francis	Bernier	francis.bernier@rodriguez.com
6105	Johanne	Strong	johanne.strong@yahoo.de
3895	Debra	Langlois	debra.langlois@schmiedecke.com
1891	Reingard	Kambs	reingard.kambs@sagese.eu
1281	Mauro	Ortiz	mauro.ortiz@oquendo.net
4186	Griselda	Carranza	griselda.carranza@krause.de
2511	Janet	Madrigal	janet.madrigal@gmail.com
4272	Jenna	Day	jenna.day@reed.com
3533	Modesto	Wright	modesto.wright@pareto.com
3618	Alice	Wall	alice.wall@zaccardo.it
2177	Brenda	Sontag	brenda.sontag@solari.com
4102	Sergius	Mace	sergius.mace@palazzo.com
6089	Antonia	Kline	antonia.kline@gmail.com
4701	Maurice	Gumprich	maurice.gumprich@griffin.net.au
5645	Daniel	Anders	daniel.anders@yahoo.com
4499	Zaira	Cattaneo	zaira.cattaneo@yahoo.com
3365	Alessio	Bruneau	alessio.bruneau@hotmail.co.uk
2290	Gerdi	Guerrero	gerdi.guerrero@tele2.fr
1890	Brigitte	Stiebitz	brigitte.stiebitz@gmail.com
1304	June	Sinisi	june.sinisi@manzoni-giannini.it
3799	Carl	Macias	carl.macias@yahoo.com
2749	Veronica	Trapp	veronica.trapp@tiscali.it
2028	Frances	Garnier	frances.garnier@aporti-guidotti.org
2383	Terri	Iannelli	terri.iannelli@hotmail.com
5721	Odette	Moore	odette.moore@hall.edu
1394	Mercedes	Trujillo	mercedes.trujillo@aol.de
3451	Babette	Dumas	babette.dumas@brady.net
5512	Jerry	Santiago	jerry.santiago@soprano-ferragni.it
2453	Ronald	Simpson	ronald.simpson@ovadia.net
6055	Emmanuel	Dominguez	emmanuel.dominguez@gmail.com
5704	Christiane	Ricciardi	christiane.ricciardi@zavala.com
3707	Ingolf	Zamora	ingolf.zamora@yahoo.com.au
2205	Rita	Sharp	rita.sharp@beard-scott.edu.au
5976	Geraldine	Cabrera	geraldine.cabrera@green-smith.info
3290	Chantal	Armas	chantal.armas@jenkins.net
4257	Louis	Gilbert	louis.gilbert@gmail.com
4588	Michelle	Collier	michelle.collier@peruzzi.it
4785	Guillermina	Nicholson	guillermina.nicholson@grondin.fr
3033	Bertrand	Hopkins	bertrand.hopkins@gmail.com
2779	Alonso	Palomo	alonso.palomo@gehringer.de
2131	Tina	Rodriguez	tina.rodriguez@web.de
6229	Eva	Francis	eva.francis@parker.org
3429	Ottavio	Rust	ottavio.rust@crespi.com
1613	Amelia	Olvera	amelia.olvera@hotmail.com
4734	Paul	Palladio	paul.palladio@mclaughlin.net.au
4439	Bernardo	Wieloch	bernardo.wieloch@budig.com
1441	Umberto	Hicks	umberto.hicks@hill.com
5799	Janko	Bishop	janko.bishop@tim.it
1419	Jessika	Meunier	jessika.meunier@gmx.de
3059	Isaac	Benard	isaac.benard@googlemail.com
3224	Alexandrie	Lambert	alexandrie.lambert@yahoo.com
3181	Roberto	Guyot	roberto.guyot@bennett.com
6061	Giulietta	Lucas	giulietta.lucas@club.com
4466	Damaris	Pininfarina	damaris.pininfarina@gmail.com
6081	Fabrizia	Renard	fabrizia.renard@higgins-marks.com
2159	Camillo	Dehmel	camillo.dehmel@brown-campbell.com
3324	Ruggero	Parpinel	ruggero.parpinel@gmail.com
3176	Stephen	Pratesi	stephen.pratesi@hotmail.com
5874	Ludger	Naccari	ludger.naccari@ingram.biz
5110	Meryem	Tapia	meryem.tapia@yahoo.com
5490	Jasmine	Juvara	jasmine.juvara@yahoo.com.au
1922	Victoire	Travaglia	victoire.travaglia@zacchia.com
4398	Adrian	Noel	adrian.noel@perrin.com
4754	Marvin	Howe	marvin.howe@gmail.com
3309	Hanne	Kidd	hanne.kidd@yahoo.com
1244	Donatello	Millet	donatello.millet@fritsch.net
2892	Eloisa	Pascarella	eloisa.pascarella@gmail.com
2777	Erica	Zambrano	erica.zambrano@gmail.com
4952	Paula	Canales	paula.canales@gilmore-guerrero.com
5144	Claudia	Bernard	claudia.bernard@mazzanti.it
5487	Paulina	Miller	paulina.miller@lewis-barker.com
1932	Kathrin	Godfrey	kathrin.godfrey@tele2.fr
3364	Pina	Passalacqua	pina.passalacqua@yahoo.co.uk
5165	Julien	Miles	julien.miles@stevens-rose.com
3858	Suzanne	Benigni	suzanne.benigni@mennea-morlacchi.com
4666	Annalisa	Pugh	annalisa.pugh@hotmail.fr
2896	Mathew	Maestas	mathew.maestas@casas-garrido.com
4520	Laszlo	Vallee	laszlo.vallee@verdier.com
5726	Helen	Polanco	helen.polanco@hotmail.com
5661	Mateo	Sorrentino	mateo.sorrentino@calderon.com
4765	Eric	Barnes	eric.barnes@barrett-winter.com
3710	Dragica	West	dragica.west@yahoo.com.au
4925	Antje	Voisin	antje.voisin@gmail.com
1533	Stanley	Mills	stanley.mills@parker-lee.biz
5264	Brandy	Meraz	brandy.meraz@yahoo.com
4606	Conor	Reinhardt	conor.reinhardt@yahoo.com.au
2043	Gabino	Blot	gabino.blot@lewis-russell.org
3871	Alvaro	Lemus	alvaro.lemus@yahoo.com
6205	Patrizia	Wilms	patrizia.wilms@dbmail.com
3193	Metin	Coulon	metin.coulon@ashley.com
1810	Reece	Valencia	reece.valencia@laboy-palomo.com
4797	Troy	Schmiedecke	troy.schmiedecke@picard.com
1487	Wendy	Bustos	wendy.bustos@libero.it
3474	Guglielmo	Caldwell	guglielmo.caldwell@loeffler.com
5771	Travis	Cowan	travis.cowan@turner.info
6074	Brandi	Abbagnale	brandi.abbagnale@tele2.fr
1568	Hanno	Gollum	hanno.gollum@smith.com
4263	Jutta	Burke	jutta.burke@elliott.com
5850	Dorothe	Paz	dorothe.paz@fiebig.de
5619	Desiree	Huerta	desiree.huerta@morris.com
1904	Ilse	Bray	ilse.bray@venturi.it
5388	Pierpaolo	Scaduto	pierpaolo.scaduto@sanders-gibson.com.au
2150	Amedeo	Bradford	amedeo.bradford@yahoo.com
2653	Julia	Ali	julia.ali@yahoo.com
2687	Catalina	Pizzetti	catalina.pizzetti@tim.it
3779	Dylan	Porzio	dylan.porzio@yahoo.de
1494	Iris	Trincavelli	iris.trincavelli@tiscali.fr
4129	Johnathan	Guidotti	johnathan.guidotti@cox-sanchez.net
3035	Walburga	Vollbrecht	walburga.vollbrecht@aol.de
2069	Kendra	David	kendra.david@allan-morton.com
5469	Aleksandr	Weiss	aleksandr.weiss@blanc.org
3903	Cornelio	Guardado	cornelio.guardado@gmail.com
4083	Ferdi	Blackburn	ferdi.blackburn@christensen.net
4003	Bill	Gallagher	bill.gallagher@green.com
3565	Leonard	Harvey	leonard.harvey@hotmail.com
1640	Milan	Montenegro	milan.montenegro@langern.com
4769	Philip	Perez	philip.perez@hotmail.co.uk
3398	Kathryn	Hentschel	kathryn.hentschel@shaw.com
1865	Xavier	Samson	xavier.samson@baggio.it
5690	Hartwig	Roberts	hartwig.roberts@saraceno.net
3814	Kimberly	Chan	kimberly.chan@gmail.com
2942	Lorraine	Crawford	lorraine.crawford@gmail.com
5095	Maximiliano	Knowles	maximiliano.knowles@gmail.com
2878	Gabriella	Avila	gabriella.avila@gmail.com
3697	Rico	Mortati	rico.mortati@faivre.fr
4744	Gail	Petrocelli	gail.petrocelli@yahoo.com
2104	Liberto	Niemeier	liberto.niemeier@germano-dibiasi.it
4883	Luciana	Petitjean	luciana.petitjean@patterson-cole.biz
4807	Ron	Cavazos	ron.cavazos@yahoo.com
1372	Aldo	Cibin	aldo.cibin@gmx.de
3666	Alexandre	Serrano	alexandre.serrano@yahoo.co.uk
2066	Lori	Fagotto	lori.fagotto@hill-anderson.com
1834	Perla	Figueroa	perla.figueroa@live.com
5853	Reginald	Hughes	reginald.hughes@gmail.com
2219	Uriel	Holt	uriel.holt@gmail.com
4148	Stefano	Lemonnier	stefano.lemonnier@binner.com
4477	Madeleine	Cooper	madeleine.cooper@poste.it
1786	Alban	Barbier	alban.barbier@ortiz.org
3455	Alfonso	Finetti	alfonso.finetti@quiroz.com
5707	Ryan	Kim	ryan.kim@noos.fr
5470	Augustin	Wohlgemut	augustin.wohlgemut@watson.info
3274	Rolando	Bibi	rolando.bibi@tin.it
4613	Berthold	Randall	berthold.randall@mcdonald.com
4465	Genaro	Briand	genaro.briand@sfr.fr
1652	Rudolf	Jenkins	rudolf.jenkins@hotmail.com
2100	Pauline	Ackermann	pauline.ackermann@arredondo-roque.com
4321	Folker	Swanson	folker.swanson@rodrigues.fr
4168	Ashleigh	Montez	ashleigh.montez@perry-schneider.com
3733	Liliana	Barber	liliana.barber@libero.it
2594	Caridad	Carr	caridad.carr@huhn.com
3909	Lolita	Borrego	lolita.borrego@gmail.com
5179	Gunar	Patrick	gunar.patrick@leroy.com
2228	Leokadia	Verdier	leokadia.verdier@hotmail.com.au
6222	Hanna	Reid	hanna.reid@salas.org
2354	Edelgard	Kreusel	edelgard.kreusel@hotmail.com
1725	Svenja	Perrin	svenja.perrin@berger.com
2960	Pierluigi	Taccola	pierluigi.taccola@gmx.de
2077	Cilli	Watts	cilli.watts@yahoo.com
5662	Emiliano	Wells	emiliano.wells@gmx.de
3481	April	Davids	april.davids@fisher.info
2565	Dolores	Didier	dolores.didier@yahoo.com.au
4436	Sylvia	Bonomo	sylvia.bonomo@poulain.com
5072	Nelly	Marsh	nelly.marsh@hotmail.it
5200	Beth	Miniati	beth.miniati@hudson.net
4502	Renee	Merino	renee.merino@gmail.com
4945	Hailey	Russell	hailey.russell@jourdan.org
3012	Raphaela	Gotthard	raphaela.gotthard@outlook.com
6094	Pomponio	Comencini	pomponio.comencini@hotmail.co.uk
3815	Leone	Richardson	leone.richardson@yahoo.com
4838	Valentine	Acosta	valentine.acosta@peters.net
3469	Ricciotti	Laureano	ricciotti.laureano@parsons.com
4874	Jacques	Heidrich	jacques.heidrich@zamudio-chapa.com
1792	Anne	Snow	anne.snow@gmail.com
4356	Sonia	Volta	sonia.volta@gmx.de
6196	Dale	Leblanc	dale.leblanc@stewart.com
3578	Alejandro	Cruz	alejandro.cruz@hotmail.com
4491	Elsa	Cugia	elsa.cugia@yahoo.com
3054	Geronimo	Pechel	geronimo.pechel@hotmail.com
1968	Melania	Klemm	melania.klemm@seidel.com
5869	Katherine	Cooley	katherine.cooley@yahoo.com
5858	Guillermo	Larsen	guillermo.larsen@yahoo.com
5203	Jill	Barrios	jill.barrios@gmail.com
2577	Austin	Musatti	austin.musatti@tin.it
3216	Jacinto	Rose	jacinto.rose@yahoo.com
2037	Lucie	Redi	lucie.redi@googlemail.com
3867	Tania	Chapman	tania.chapman@remy.com
5109	Alexandria	Best	alexandria.best@yahoo.co.uk
1376	Edward	Scott	edward.scott@yahoo.com
5260	Jake	Wiley	jake.wiley@outlook.com
2350	Claudio	Reuter	claudio.reuter@morgan-collins.org.au
2269	Laure	Traetta	laure.traetta@kay-perkins.co.uk
3650	Magarete	Valentin	magarete.valentin@yahoo.com
3934	Paige	Hill	paige.hill@jones.org.au
4048	Fulvio	Curiel	fulvio.curiel@reynolds.com
4266	Thibaut	Camarillo	thibaut.camarillo@hotmail.com
3863	Romana	Blanchard	romana.blanchard@googlemail.com
4922	Thibault	Savorgnan	thibault.savorgnan@butler.biz
4517	Alexander	Pausini	alexander.pausini@gonzalez.info
3259	Pierangelo	Scholtz	pierangelo.scholtz@lefevre.com
3123	Emmanuelle	Keller	emmanuelle.keller@morton-clarke.com
3870	Isabella	Deleon	isabella.deleon@web.de
2996	Timothy	Weitzel	timothy.weitzel@gmail.com
2993	Alfredo	Ingram	alfredo.ingram@hotmail.com
4556	Francesca	Kade	francesca.kade@luna-rael.org
2326	Tonia	Coleman	tonia.coleman@hotmail.com
4109	Gottfried	Barbe	gottfried.barbe@hotmail.com
5739	Jeffrey	Trommler	jeffrey.trommler@yahoo.com
5887	Giacobbe	Owens	giacobbe.owens@huet.fr
1651	Conchita	Pagliaro	conchita.pagliaro@googlemail.com
1628	Kevin	Delahaye	kevin.delahaye@ellis-wilson.com
2642	Rouven	Ovadia	rouven.ovadia@gmail.com
6020	Piermaria	Laporte	piermaria.laporte@wesack.com
4747	Karolin	Johann	karolin.johann@hotmail.com
5534	Steven	Folliero	steven.folliero@noos.fr
4790	Livio	Rosselli	livio.rosselli@green.co.uk
4632	Gaetano	Leonardi	gaetano.leonardi@despacho.com
1952	Cynthia	Robinson	cynthia.robinson@gilles.net
4388	Eleni	Aponte	eleni.aponte@club-internet.fr
5529	Noelia	Romo	noelia.romo@yahoo.com
1316	Evelyn	Haynes	evelyn.haynes@clark.info
1670	Katharine	Zaccagnini	katharine.zaccagnini@hotmail.com
4909	Lea	Merle	lea.merle@stey.de
3401	Marta	Huynh	marta.huynh@hernandez.info
4619	Amador	Riley	amador.riley@hotmail.com
4722	Julie	Coles	julie.coles@hotmail.fr
2188	Beverley	Telesio	beverley.telesio@regnier.fr
5497	Corinne	Mitschke	corinne.mitschke@hauffer.net
5711	Valerie	Ortega	valerie.ortega@tele2.it
4076	Carlos	Delle	carlos.delle@hicks.com
1847	Christina	Besnard	christina.besnard@delorme.com
2816	Rosario	Jacques	rosario.jacques@yahoo.com
5019	Celal	Fischer	celal.fischer@aol.de
4869	Leonardo	Guzman	leonardo.guzman@andreozzi-abba.com
3613	Clinton	Mason	clinton.mason@yahoo.com
3069	Loretta	Mallet	loretta.mallet@sansoni-toscani.it
2601	Lorenzo	Roero	lorenzo.roero@hotmail.co.uk
2133	Lando	Gutierrez	lando.gutierrez@heser.com
3164	Elaine	Patterson	elaine.patterson@rose-morris.org
3897	Marcella	Govoni	marcella.govoni@barkholz.net
5663	Ettore	Amaldi	ettore.amaldi@germain.com
3879	Rufino	Gallegos	rufino.gallegos@webster-newton.co.uk
5900	Georges	Richards	georges.richards@macdonald.com
2272	Janice	Infantino	janice.infantino@hotmail.com
5436	Svetlana	Montanariello	svetlana.montanariello@putz.de
3676	Agnolo	Cedillo	agnolo.cedillo@laboratorios.biz
4676	Hannah	Jockel	hannah.jockel@ceravolo-tonisto.eu
1563	Yvonne	Stout	yvonne.stout@sims.edu
4349	Anouk	Pace	anouk.pace@gmail.com
1658	Esteban	Valdez	esteban.valdez@hotmail.com
2552	Angelina	Davies	angelina.davies@hotmail.com
4847	Anastasie	Cadena	anastasie.cadena@live.com
1553	Hansjoachim	Lettiere	hansjoachim.lettiere@hall-mcdaniel.net
2632	Yeni	Tejada	yeni.tejada@olson.edu.au
1908	Dulce	Adinolfi	dulce.adinolfi@hotmail.com
5801	Sean	Mielcarek	sean.mielcarek@gmail.com
1935	Omar	Fonseca	omar.fonseca@grupo.org
2609	Henry	Gucci	henry.gucci@leleu.fr
2740	Samira	Bottaro	samira.bottaro@vasseur.fr
1907	Korinna	Arnold	korinna.arnold@zapata-saenz.biz
1831	Marcela	Ferrante	marcela.ferrante@gmx.de
5177	Douglas	Amaya	douglas.amaya@favata-brenna.net
6179	Katherina	Barrientos	katherina.barrientos@trobbiani.eu
2917	Brittany	Tran	brittany.tran@tele2.it
1486	Caroline	Reeves	caroline.reeves@yahoo.com
3735	Joe	Michaud	joe.michaud@yahoo.fr
3838	Marco	Vittadello	marco.vittadello@gmail.com
2430	Kim	Webb	kim.webb@yahoo.com.au
2480	Eugenia	Zichichi	eugenia.zichichi@yahoo.com
3431	Aurore	Rosemann	aurore.rosemann@leoncavallo-rusticucci.com
1742	Giustino	Luzi	giustino.luzi@rolland.fr
4628	Anita	Galindo	anita.galindo@gmail.com
2385	Gunhild	Carrillo	gunhild.carrillo@elliott-gilbert.org
2213	Rosa	Paul	rosa.paul@bien.com
5188	Marliese	Oneal	marliese.oneal@gmail.com
3418	Bethany	Hartmann	bethany.hartmann@yahoo.com
5637	Irina	Martineau	irina.martineau@gmail.com
3530	Beatriz	Moulin	beatriz.moulin@pinto.com
3731	Lucas	Austin	lucas.austin@gmail.com
3219	Carole	Nohlmans	carole.nohlmans@yahoo.com
2392	Bozena	Schmitt	bozena.schmitt@vallet.com
5103	Aimee	Foconi	aimee.foconi@outlook.com
3992	Marzena	Carrero	marzena.carrero@roskoth.de
2442	Raisa	Poulain	raisa.poulain@fastwebnet.it
2913	Marcantonio	Bennett	marcantonio.bennett@hopkins.com.au
1631	Kenneth	Hurst	kenneth.hurst@meunier.net
4073	Marisela	Mende	marisela.mende@godoy-enriquez.com
4568	Blanka	Villareal	blanka.villareal@monduzzi.net
1830	Tomislav	Stoppani	tomislav.stoppani@corporacin.org
2623	Krystal	Ammaniti	krystal.ammaniti@barbier.fr
4327	Deanna	Aporti	deanna.aporti@bouygtel.fr
3713	Donatella	Burns	donatella.burns@yahoo.de
2389	Margrit	Hooper	margrit.hooper@douglas.com
5141	Baccio	Marcacci	baccio.marcacci@laposte.net
3522	Alfio	Roman	alfio.roman@hotmail.co.uk
1334	Soledad	Soto	soledad.soto@hotmail.de
4721	Josh	Cimarosa	josh.cimarosa@hotmail.com
3768	Nath	Rico	nath.rico@yahoo.com
1639	Gary	Armani	gary.armani@web.de
5149	Miriam	Oquendo	miriam.oquendo@smith-watson.biz
2153	Monica	Mohaupt	monica.mohaupt@live.com
2767	Alec	Ho	alec.ho@parra-esparza.com
5124	Harry	Fouquet	harry.fouquet@ibarra-cooper.com
2097	Arcelia	Babati	arcelia.babati@orange.fr
4796	Trinidad	Vespa	trinidad.vespa@gmail.com
5849	Colette	Ryan	colette.ryan@hotmail.com
1495	Richard	Andre	richard.andre@porras.org
2462	Ellinor	Leclercq	ellinor.leclercq@gmail.com
2280	Patricio	Guillon	patricio.guillon@web.de
1877	Kirsten	Chindamo	kirsten.chindamo@carrillo-wall.com
6108	Leo	Petruzzi	leo.petruzzi@yahoo.com
4427	Margot	Tomaselli	margot.tomaselli@junck.org
2881	Ansaldo	Marks	ansaldo.marks@patel-odonnell.com
2339	Regina	Morin	regina.morin@barcaccia.net
5156	Karla	Medici	karla.medici@yahoo.com
4750	Morgan	Irizarry	morgan.irizarry@williams-harris.biz
4852	Natividad	Wong	natividad.wong@hoevel.com
5734	Anna	Freeman	anna.freeman@snyder.net
3801	Emilia	Vivaldi	emilia.vivaldi@garnier.fr
4474	Gerda	Cook	gerda.cook@tin.it
1992	Andrey	Faure	andrey.faure@frederick-mitchell.info
5796	Charlotte	Duke	charlotte.duke@ochoa.org
1373	Cindy	Castillo	cindy.castillo@virgilio.it
1879	Hiltrud	Thibault	hiltrud.thibault@barbe.com
3072	Kasimir	Jaime	kasimir.jaime@gmail.com
4561	Sabine	Lachmann	sabine.lachmann@phillips.org
5201	Andrea	Arroyo	andrea.arroyo@yahoo.com.au
5871	Matthew	Velasquez	matthew.velasquez@gmail.com
3041	Severino	Linares	severino.linares@angeli.com
5864	Swantje	Lomeli	swantje.lomeli@gmx.de
3999	Marcus	Espino	marcus.espino@comolli.eu
4849	Allen	Gates	allen.gates@gmail.com
5461	Mauricio	Saunders	mauricio.saunders@hotmail.co.uk
5946	Gilbert	Cornejo	gilbert.cornejo@hotmail.com
4508	Letizia	Gulotta	letizia.gulotta@howard.biz
5096	Etta	Gutknecht	etta.gutknecht@leconte.net
5443	Shelley	Perry	shelley.perry@gierschner.de
2165	Geoffrey	Williams	geoffrey.williams@poste.it
2125	Cory	Stewart	cory.stewart@voila.fr
6141	Kristy	Bartlett	kristy.bartlett@outlook.com
5245	Gianluca	Beck	gianluca.beck@green.biz
2190	Guido	Krein	guido.krein@gmail.com
2243	Leif	Monnier	leif.monnier@querini.it
3336	Jonas	Badoer	jonas.badoer@kennedy.biz
3305	Devin	Ebert	devin.ebert@yahoo.fr
6191	Slobodan	Camiscione	slobodan.camiscione@hotmail.com
1326	Volkmar	Gauthier	volkmar.gauthier@hotmail.com
6159	Jordan	Rowe	jordan.rowe@outlook.com
2003	Manon	Daugherty	manon.daugherty@segre.com
5881	Estela	Segovia	estela.segovia@vodafone.it
1918	Giada	Celentano	giada.celentano@evans.net
2157	Clayton	Salcedo	clayton.salcedo@hotmail.co.uk
3149	Raven	Pinto	raven.pinto@hotmail.com
2444	Lewis	Lewis	lewis.lewis@pisano.net
6207	Rochus	Rousseau	rochus.rousseau@nguyen.com
5580	Belinda	Gamez	belinda.gamez@leleu.com
5942	Angelo	Lozano	angelo.lozano@macias.com
1592	Jorge	Monti	jorge.monti@clement.fr
2344	Ricky	Harrell	ricky.harrell@martin.edu
5995	Adriano	Wulf	adriano.wulf@schmidtke.net
5022	Pompeo	Bourdon	pompeo.bourdon@gmail.com
5991	Kristie	Garrett	kristie.garrett@wernecke.com
4020	Lodovico	Conley	lodovico.conley@yahoo.com
6028	Jean	Berthelot	jean.berthelot@oscuro.it
2790	Tadeusz	Medina	tadeusz.medina@jackson-clark.net
4033	Ruby	Carriera	ruby.carriera@hotmail.it
1261	Theres	Antonioni	theres.antonioni@hotmail.com
1979	Gloria	Morton	gloria.morton@outlook.com
2122	Graziano	Jensen	graziano.jensen@gmail.com
4506	Gianpaolo	Massey	gianpaolo.massey@bouvier.com
3016	Alain	Farmer	alain.farmer@hotmail.it
3272	Renato	Murillo	renato.murillo@club.com
1375	Edda	Ferraris	edda.ferraris@libero.it
4014	Luce	Marty	luce.marty@waehner.org
3199	Rotraud	Mitchell	rotraud.mitchell@laboratorios.com
2184	Israel	Watkins	israel.watkins@hotmail.com
2170	Nathan	Jennings	nathan.jennings@kim.com
1478	Gavin	Proietti	gavin.proietti@gmx.de
6163	Emma	Rios	emma.rios@yahoo.com.au
1889	Todd	Douglas	todd.douglas@web.de
5912	Oscar	Holsten	oscar.holsten@yahoo.com
2537	Ann	Peron	ann.peron@grupo.biz
2118	Senta	Grassi	senta.grassi@hotmail.com
3234	Kata	Mena	kata.mena@gmail.com
3842	Gianfranco	Hethur	gianfranco.hethur@stewart-lee.com.au
3032	Florentine	Saraceno	florentine.saraceno@gmail.com
3238	Giuliano	Bolzmann	giuliano.bolzmann@pacillo.it
2059	Alwine	Kostolzin	alwine.kostolzin@holloway.com
5238	Giacinto	Briggs	giacinto.briggs@yahoo.co.uk
2578	Holly	Negrete	holly.negrete@hotmail.com
4789	Mark	Trapanese	mark.trapanese@gmail.com
2357	Alyssa	Brun	alyssa.brun@chittolini-spadafora.it
1235	Cristina	Chevalier	cristina.chevalier@proyectos.com
3558	Shannon	Lefevre	shannon.lefevre@gmail.com
1707	Logan	Hornich	logan.hornich@tin.it
2842	Rosalia	Toro	rosalia.toro@free.fr
5318	Reiner	Poerio	reiner.poerio@yahoo.com
1620	Valentina	Pages	valentina.pages@hotmail.de
4998	Enrico	Fabre	enrico.fabre@gmail.com
3111	Sevim	Begue	sevim.begue@yahoo.com.au
1424	Sonja	Patberg	sonja.patberg@hotmail.com
3244	Christine	Hiller	christine.hiller@yahoo.com
4643	Maik	Beasley	maik.beasley@harper-brooks.biz
6132	Elliot	Santana	elliot.santana@gmx.de
3790	Eloy	Renzi	eloy.renzi@gmail.com
1312	Wolf	Lutz	wolf.lutz@nichols-jackson.com.au
5686	Giuseppe	Lee	giuseppe.lee@mahe.org
2111	Angelica	Cuellar	angelica.cuellar@zaguri-bellucci.net
5685	Bekir	Normand	bekir.normand@yahoo.de
1905	Carmine	Gonzales	carmine.gonzales@schleich.net
3271	Marianne	Hubert	marianne.hubert@hotmail.com
4178	Gonzalo	Montes	gonzalo.montes@hotmail.com
3275	Shelly	Guichard	shelly.guichard@gmail.com
5713	Tobias	Carbajal	tobias.carbajal@live.com
3339	Santiago	Berry	santiago.berry@aol.de
5585	Emilio	Davenport	emilio.davenport@zamora-russo.net
4407	Maurizio	Gute	maurizio.gute@knight.info
1941	Nadia	Travaglio	nadia.travaglio@colletti-broggini.com
4690	Elisa	Barkholz	elisa.barkholz@sfr.fr
3607	Cristal	Mazzini	cristal.mazzini@gmail.com
2670	Trevor	Granados	trevor.granados@gmail.com
5261	Matthieu	Mcdonald	matthieu.mcdonald@morrison.org
4121	Juliette	Preston	juliette.preston@gmail.com
4620	Stanislaw	Montalvo	stanislaw.montalvo@mcpherson-hughes.info
4630	Lilia	Lollobrigida	lilia.lollobrigida@le.com
3440	Brigitta	Shaw	brigitta.shaw@hotmail.co.uk
3572	Rebeca	Frey	rebeca.frey@gerard.fr
5306	Nicolas	Palacios	nicolas.palacios@meraz.com
5122	Susanna	Bonneau	susanna.bonneau@klingelhoefer.de
1368	Romina	Valentine	romina.valentine@hotmail.com
5370	Erika	Toussaint	erika.toussaint@sfr.fr
5636	Lothar	Laurent	lothar.laurent@garcia.com.au
6033	Chelsea	Verdugo	chelsea.verdugo@campbell.com
3599	Ria	Venier	ria.venier@murillo-estevez.com
5566	Carly	Summers	carly.summers@yahoo.co.uk
1873	Pasquale	Tomasini	pasquale.tomasini@hotmail.co.uk
3904	Stefani	Ughi	stefani.ughi@hotmail.it
4453	Jose	Huang	jose.huang@gmx.de
5481	Petros	Gaona	petros.gaona@googlemail.com
2987	Maximilian	Siering	maximilian.siering@gaito-fornaciari.org
2431	Ermenegildo	Holzapfel	ermenegildo.holzapfel@aol.de
4158	Damien	Leger	damien.leger@dixon.biz
3753	Zeferino	Barrera	zeferino.barrera@zedillo-velazquez.com
4391	Alfred	Pohl	alfred.pohl@fechner.net
2026	Marissa	Gaito	marissa.gaito@reed-campbell.edu
4547	Ariana	Houston	ariana.houston@hotmail.it
2798	Victor	Jacobs	victor.jacobs@young.com
4732	Henriette	Lang	henriette.lang@mimun.it
5126	Wilfriede	Baca	wilfriede.baca@caraballo.com
5151	Lucia	Riviere	lucia.riviere@samaniego.biz
2134	Gordon	Vigorelli	gordon.vigorelli@solano.com
5786	Diethard	Salgado	diethard.salgado@gmail.com
5515	Sue	Corrales	sue.corrales@cardenas-serna.org
4530	Arthur	Salazar	arthur.salazar@yahoo.com.au
4088	Fortunata	Schneider	fortunata.schneider@tiscali.it
3667	Gretchen	Serna	gretchen.serna@pichon.org
3286	Egon	Caron	egon.caron@hotmail.com
4804	Roberta	Finzi	roberta.finzi@knight-davies.co.uk
5768	Editha	Savage	editha.savage@davies.co.uk
6098	Allan	Emanuelli	allan.emanuelli@fernandes.org
2508	Laurence	Lucero	laurence.lucero@martin.org
5779	Istvan	Draghi	istvan.draghi@ifrance.com
1717	Luigi	Bonnet	luigi.bonnet@carriera-federico.it
3368	Yuridia	Fantozzi	yuridia.fantozzi@mcdonald.com
4265	Eraldo	Schmiedt	eraldo.schmiedt@hotmail.de
4455	Antoinette	Cox	antoinette.cox@bustamante.com
2940	Cameron	Ocampo	cameron.ocampo@hotmail.com.au
6144	Lynn	Lawson	lynn.lawson@leclercq.com
3657	Natalia	Seifert	natalia.seifert@ifrance.com
1537	Nuray	Anguillara	nuray.anguillara@yahoo.co.uk
2116	Beate	Morgan	beate.morgan@gmail.com
5102	Mario	Rees	mario.rees@gmx.de
5815	Galasso	Junken	galasso.junken@yahoo.co.uk
4250	Luca	Moses	luca.moses@franke.de
4533	Aurelio	Gertz	aurelio.gertz@hewitt.net
3329	Uberto	Steele	uberto.steele@outlook.com
3606	Annie	Hunter	annie.hunter@allen.co.uk
4749	Jo	Mccarty	jo.mccarty@hotmail.com
2222	Eitel	Lombard	eitel.lombard@thomas.net
1939	Susan	Vigliotti	susan.vigliotti@yahoo.co.uk
2456	Jacqueline	Germano	jacqueline.germano@valette.fr
2794	Fidel	Ruppert	fidel.ruppert@yahoo.co.uk
2648	Margaret	Eigenwillig	margaret.eigenwillig@yahoo.com
2545	Yvette	Harding	yvette.harding@yahoo.co.uk
3273	Federigo	Karge	federigo.karge@bohlander.com
6155	Guenther	Armenta	guenther.armenta@free.fr
6064	Coriolano	Higgins	coriolano.higgins@murphy.org.au
1729	Felix	Rubio	felix.rubio@ebert.de
4969	Melanie	Leveque	melanie.leveque@fleury.net
3402	Abbie	Galeati	abbie.galeati@ubaldi.it
2810	Vittorio	Caccioppoli	vittorio.caccioppoli@yahoo.com
2217	Biagio	Valenzuela	biagio.valenzuela@robinson.info
5140	Dario	Green	dario.green@live.com
4497	Alwina	Textor	alwina.textor@poste.it
5100	Diether	Baeza	diether.baeza@grupo.biz
3390	Sole	Trevino	sole.trevino@hotmail.com
1926	Darren	Bernardi	darren.bernardi@brooks-martin.com
3264	Martina	Heser	martina.heser@morellato.it
2573	Bethan	Giacometti	bethan.giacometti@gmail.com
3628	Ethan	Duhamel	ethan.duhamel@sfr.fr
3826	Corrado	Warren	corrado.warren@hotmail.com.au
5983	Damian	Pulido	damian.pulido@yahoo.de
5678	Dino	Osborne	dino.osborne@despacho.com
2093	Nicolaus	Bernetti	nicolaus.bernetti@aol.de
5333	Gianna	Carroll	gianna.carroll@perez.com
5139	Grit	Knight	grit.knight@web.de
3173	Erin	Weinhold	erin.weinhold@hotmail.fr
3333	Craig	Jordan	craig.jordan@gmail.com
2262	Homero	Respighi	homero.respighi@gmail.com
1531	Fanny	Pertile	fanny.pertile@gmail.com
4881	Fridolin	Comboni	fridolin.comboni@graf.com
3928	Hugh	Cantu	hugh.cantu@libero.it
1803	Alphons	Simmons	alphons.simmons@hotmail.com
2321	Ludovico	Cafarchia	ludovico.cafarchia@gmail.com
6234	Nico	Kaiser	nico.kaiser@almonte.com
1422	Kirsty	Lamy	kirsty.lamy@alonzi.it
2660	Joshua	Scheibe	joshua.scheibe@turci.org
5361	Carin	Pineau	carin.pineau@yahoo.com
3420	Ellie	Galarza	ellie.galarza@pareto-cattaneo.net
4337	Marion	Lira	marion.lira@ifrance.com
2338	Aurelia	Angiolello	aurelia.angiolello@lord.com
4140	Maura	Ravaglioli	maura.ravaglioli@yahoo.com
2373	Brunhilde	Fletcher	brunhilde.fletcher@schomber.de
1344	Ottfried	Marques	ottfried.marques@tyler-watson.info
2141	Christelle	Blasi	christelle.blasi@morris-chan.com
3415	Augusto	Vercelloni	augusto.vercelloni@club-internet.fr
5696	Michela	Pruvost	michela.pruvost@holt.co.uk
1798	Guarino	Escalante	guarino.escalante@hotmail.com
1657	Gabriela	Padilla	gabriela.padilla@pearson-russell.com
3651	Agathe	Dias	agathe.dias@jackson.com
3574	Werner	Kallert	werner.kallert@gmail.com
6063	Lore	Delaunay	lore.delaunay@yahoo.com
2404	Enzio	Campos	enzio.campos@tim.it
2705	Walther	Duarte	walther.duarte@web.de
5059	Adelgunde	Trevisan	adelgunde.trevisan@gmail.com
5466	Thierry	Schwartz	thierry.schwartz@travaglio.net
5821	Katie	Andersen	katie.andersen@haney.com.au
5385	Kathy	Zamorani	kathy.zamorani@hotmail.com
3506	Giuseppina	Tanguy	giuseppina.tanguy@wanadoo.fr
5427	Jack	Klapp	jack.klapp@hotmail.com.au
6142	Tom	Leconte	tom.leconte@woods-johnson.com
2873	Bonnie	Cignaroli	bonnie.cignaroli@yahoo.com
3916	Danny	Farrell	danny.farrell@hotmail.com
1687	Fiorenzo	Bauer	fiorenzo.bauer@gmail.com
1542	Randy	Alfieri	randy.alfieri@verri.org
3087	Tim	Bradley	tim.bradley@schlosser.de
3857	Yves	Mendez	yves.mendez@gmail.com
5921	Raffaella	Esquivel	raffaella.esquivel@gmail.com
3144	Lawrence	Vasari	lawrence.vasari@castillo.edu
2676	Sam	Adams	sam.adams@yahoo.com
3646	Mirco	Nicolini	mirco.nicolini@blin.net
1321	Graham	Bajardi	graham.bajardi@yahoo.com
1399	Luc	Quinn	luc.quinn@walker.com
3169	Stella	Ullrich	stella.ullrich@hotmail.com.au
2058	Calcedonio	Remy	calcedonio.remy@edwards-benton.com
1300	Nanni	Almaraz	nanni.almaraz@martin.com
2075	Pascual	Corradi	pascual.corradi@lopez.net.au
2984	Kristi	Grant	kristi.grant@yahoo.co.uk
4768	Manuel	Gracia	manuel.gracia@trussardi.eu
3682	Gionata	Hussain	gionata.hussain@yahoo.com
5901	Maria	Nguyen	maria.nguyen@hernadez.com
3540	Leon	Baker	leon.baker@hotmail.com
2225	Gianmarco	Alcaraz	gianmarco.alcaraz@zacchia.net
1485	Derrick	Little	derrick.little@small.org
5343	Terry	Ramirez	terry.ramirez@hotmail.co.uk
5594	Katarina	Clarke	katarina.clarke@hotmail.com.au
2482	Leila	Washington	leila.washington@gmail.com
2706	Mirko	Townsend	mirko.townsend@schmitt.com
4861	Randall	Connolly	randall.connolly@jovinelli-castelli.com
2961	Pia	Burgess	pia.burgess@proyectos.org
3043	Justine	Mancini	justine.mancini@tiscali.it
6103	Reynaldo	Wagenknecht	reynaldo.wagenknecht@faure.com
4708	Toni	Magrassi	toni.magrassi@gmail.com
4395	Patrizio	Cisneros	patrizio.cisneros@martinez.edu.au
4912	Durante	Lindner	durante.lindner@picard.fr
2030	Rosl	Lamborghini	rosl.lamborghini@hiller.net
5235	Ugo	Harrison	ugo.harrison@morley-chapman.co.uk
5001	Isidor	Carpenter	isidor.carpenter@chauvin.com
4093	Marie	Zoppetto	marie.zoppetto@kallert.de
2576	Branko	Chambers	branko.chambers@ifrance.com
6122	Alan	Pineda	alan.pineda@proyectos.info
2813	Carmen	Oestrovsky	carmen.oestrovsky@gmail.com
3737	Shane	Fernandez	shane.fernandez@hotmail.de
2803	Debbie	Guilbert	debbie.guilbert@berg.edu
5508	Vito	Dossi	vito.dossi@hotmail.co.uk
3850	Evan	Schacht	evan.schacht@price.com
4220	Mandy	Weston	mandy.weston@free.fr
4532	Paulo	Zito	paulo.zito@nelson.biz
6013	Alberto	Girschner	alberto.girschner@laboratorios.com
3396	Giacomo	Bouvet	giacomo.bouvet@gmail.com
4401	Ehrentraud	Puga	ehrentraud.puga@laboratorios.com
2981	Cristian	Hale	cristian.hale@hotmail.co.uk
4467	Lilija	Charles	lilija.charles@gmail.com
1377	Albert	Legendre	albert.legendre@lee.com
5036	Marisa	Renaud	marisa.renaud@smith.org
5761	Sharon	Diallo	sharon.diallo@gmail.com
3699	Eduardo	Delattre	eduardo.delattre@lynch.net.au
4519	Bernadette	Wang	bernadette.wang@gmail.com
5395	Dina	Gibbons	dina.gibbons@brewer.net
3057	Clara	Armstrong	clara.armstrong@vodafone.it
2741	Elliott	Herrmann	elliott.herrmann@hotmail.com.au
1675	Graziella	Vidal	graziella.vidal@hotmail.com
2712	Francisca	Becerra	francisca.becerra@young.com.au
4527	Edeltrud	Boyer	edeltrud.boyer@outlook.com
1722	Julian	Noble	julian.noble@hill.org.au
4330	Christophe	Bohnbach	christophe.bohnbach@ifrance.com
5219	Ippazio	Angulo	ippazio.angulo@yahoo.com
4997	Grace	Kroker	grace.kroker@hotmail.com
2239	Jared	Ferguson	jared.ferguson@roberts.com
4587	Virginie	McLean	virginie.mclean@yahoo.com
4113	Mason	Potter	mason.potter@gmail.com
4762	Aaron	Anaya	aaron.anaya@hotmail.com.au
5242	Leah	Ornelas	leah.ornelas@gmail.com
5765	Harald	Roy	harald.roy@web.de
2185	Micaela	Martel	micaela.martel@hotmail.com
5500	Vincentio	Sanders	vincentio.sanders@voila.fr
3494	Bettina	Norbiato	bettina.norbiato@allen-lutz.org
3924	Julio	Renner	julio.renner@industrias.net
3521	Jelena	Stiffel	jelena.stiffel@trupp.de
5262	Guadalupe	Munoz	guadalupe.munoz@murray-hamilton.com.au
3684	Whitney	Noack	whitney.noack@laboratorios.org
5784	Gelsomina	Migliaccio	gelsomina.migliaccio@junk.com
1498	Evangelista	Pereira	evangelista.pereira@thompson-peterson.biz
6073	Gareth	Comolli	gareth.comolli@tiscali.fr
4939	Michelangelo	Hess	michelangelo.hess@bouygtel.fr
\.


--
-- Data for Name: subcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subcategory (subcategory_id, subcategory_name) FROM stdin;
subcat1	food trucks
subcat2	rock
subcat3	web
subcat4	plays
subcat5	documentary
subcat6	electric music
subcat7	drama
subcat8	indie rock
subcat9	wearables
subcat10	nonfiction
subcat11	animation
subcat12	video games
subcat13	shorts
subcat14	fiction
subcat15	photography books
subcat16	radio & podcasts
subcat17	metal
subcat18	jazz
subcat19	translations
subcat20	television
subcat21	mobile games
subcat22	world music
subcat23	science fiction
subcat24	audio
\.


--
-- Name: campaign_cf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.campaign_cf_id_seq', 1, false);


--
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_contact_id_seq', 1, false);


--
-- Name: campaign campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_pkey PRIMARY KEY (cf_id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (contact_id);


--
-- Name: subcategory subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT subcategory_pkey PRIMARY KEY (subcategory_id);


--
-- Name: campaign campaign_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- Name: campaign campaign_contact_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_contact_id_fkey FOREIGN KEY (contact_id) REFERENCES public.contacts(contact_id);


--
-- Name: campaign campaign_subcategory_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_subcategory_id_fkey FOREIGN KEY (subcategory_id) REFERENCES public.subcategory(subcategory_id);


--
-- PostgreSQL database dump complete
--

