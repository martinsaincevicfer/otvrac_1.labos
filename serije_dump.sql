--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: epizode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.epizode (
    id integer NOT NULL,
    serija_id integer,
    naziv_epizode character varying(255),
    sezona integer,
    broj_epizode integer,
    datum_emitiranja date,
    trajanje integer,
    opis text,
    ocjena double precision,
    scenarist character varying(255),
    redatelj character varying(255)
);


ALTER TABLE public.epizode OWNER TO postgres;

--
-- Name: epizode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.epizode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.epizode_id_seq OWNER TO postgres;

--
-- Name: epizode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.epizode_id_seq OWNED BY public.epizode.id;


--
-- Name: serije; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.serije (
    id integer NOT NULL,
    naslov character varying(255),
    zanr character varying(255),
    godina_izlaska integer,
    ocjena double precision,
    broj_sezona integer,
    jezik character varying(100),
    autor character varying(255),
    glumci text[],
    mreza character varying(100)
);


ALTER TABLE public.serije OWNER TO postgres;

--
-- Name: serije_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.serije_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.serije_id_seq OWNER TO postgres;

--
-- Name: serije_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.serije_id_seq OWNED BY public.serije.id;


--
-- Name: epizode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.epizode ALTER COLUMN id SET DEFAULT nextval('public.epizode_id_seq'::regclass);


--
-- Name: serije id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serije ALTER COLUMN id SET DEFAULT nextval('public.serije_id_seq'::regclass);


--
-- Data for Name: epizode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.epizode (id, serija_id, naziv_epizode, sezona, broj_epizode, datum_emitiranja, trajanje, opis, ocjena, scenarist, redatelj) FROM stdin;
1	1	Pilot	1	1	2008-01-20	58	Uvod u život Waltera Whitea, profesora kemije.	9	Vince Gilligan	Adam Bernstein
2	1	Cat in the Bag...	1	2	2008-01-27	48	Walter i Jesse pokušavaju riješiti probleme s prethodnom epizodom.	8.5	Vince Gilligan	Adam Bernstein
3	2	Winter Is Coming	1	1	2011-04-17	62	Upoznajte obitelj Stark i njihovu borbu za vlast.	9.5	David Benioff, D.B. Weiss	Tim Van Patten
4	2	The Kingsroad	1	2	2011-04-24	56	Eddard Stark kreće prema jugu.	9	David Benioff, D.B. Weiss	Tim Van Patten
5	3	The Vanishing of Will Byers	1	1	2016-07-15	47	Will nestaje, a prijatelji kreću u potragu.	8.8	The Duffer Brothers	The Duffer Brothers
6	3	The Weirdo on Maple Street	1	2	2016-07-15	55	Prijatelji istražuju misterioznu pojavu u svom gradu.	8.7	The Duffer Brothers	The Duffer Brothers
7	4	The Ends Beginning	1	1	2019-12-20	61	Geralt od Rivije suočava se s novim prijetnjama.	8	Lauren Schmidt Hissrich	Alik Sakharov
8	4	Four Marks	1	2	2019-12-20	60	Geralt se suočava s teškim odlukama.	8.5	Lauren Schmidt Hissrich	Alik Sakharov
9	5	The Pilot	1	1	1994-09-22	22	Uvod u živote prijatelja iz New Yorka.	9	David Crane, Marta Kauffman	James Burrows
10	5	The One with the Sonogram at the End	1	2	1994-09-29	22	Prijatelji se suočavaju s novim izazovima.	8.7	David Crane, Marta Kauffman	James Burrows
11	6	A Study in Pink	1	1	2010-07-25	88	Sherlock i Watson istražuju misterij u Londonu.	9.2	Mark Gatiss, Steven Moffat	Paul McGuigan
12	6	The Blind Banker	1	2	2010-08-01	88	Sherlock se suočava s misterioznim zločinom.	8.9	Mark Gatiss, Steven Moffat	Paul McGuigan
13	7	Chapter 1: The Mandalorian	1	1	2019-11-12	39	Mandalorijanac preuzima zadatak.	8.7	Jon Favreau	Dave Filoni
14	7	Chapter 2: The Child	1	2	2019-11-15	32	Mandalorijanac otkriva tajnu djeteta.	9.1	Jon Favreau	Dave Filoni
15	8	Pilot	1	1	2005-03-24	22	Uvod u živote zaposlenika Dobre kompanije.	9	Greg Daniels	Greg Daniels
16	8	Diversity Day	1	2	2005-03-29	22	Djelatnici se suočavaju s temom raznolikosti.	8.5	Greg Daniels	Greg Daniels
17	9	Chapter 1	1	1	2013-02-01	50	Frank Underwood počinje svoj uspon.	8.8	Beau Willimon	Beau Willimon
18	9	Chapter 2	1	2	2013-02-08	50	Frank se suočava s novim neprijateljima.	8.6	Beau Willimon	Beau Willimon
19	10	The National Anthem	1	1	2011-12-04	43	Premijera serije koja istražuje savremene teme.	8.4	Charlie Brooker	Paul McGuigan
20	10	Fifteen Million Merits	1	2	2011-12-11	45	U svijetu koji se temelji na zabavi, likovi se bore za preživljavanje.	9.1	Charlie Brooker	Euros Lyn
\.


--
-- Data for Name: serije; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.serije (id, naslov, zanr, godina_izlaska, ocjena, broj_sezona, jezik, autor, glumci, mreza) FROM stdin;
1	Breaking Bad	Krimi, Drama, Triler	2008	9.5	5	Engleski	Vince Gilligan	{"Bryan Cranston","Aaron Paul","Anna Gunn"}	AMC
2	Game of Thrones	Akcija, Avantura, Drama	2011	9.3	8	Engleski	David Benioff, D.B. Weiss	{"Emilia Clarke","Peter Dinklage","Kit Harington"}	HBO
3	Stranger Things	Fantazija, Horor, Misterija	2016	8.7	4	Engleski	The Duffer Brothers	{"Winona Ryder","David Harbour","Finn Wolfhard"}	Netflix
4	The Witcher	Akcija, Avantura, Drama	2019	8.2	2	Engleski	Lauren Schmidt Hissrich	{"Henry Cavill","Freya Allan","Anya Chalotra"}	Netflix
5	Friends	Komedija, Romantika	1994	8.9	10	Engleski	David Crane, Marta Kauffman	{"Jennifer Aniston","Courteney Cox","Matthew Perry"}	NBC
6	Sherlock	Krimi, Drama, Misterija	2010	9.1	4	Engleski	Mark Gatiss, Steven Moffat	{"Benedict Cumberbatch","Martin Freeman","Una Stubbs"}	BBC
7	The Mandalorian	Akcija, Avantura, Fantazija	2019	8.8	2	Engleski	Jon Favreau	{"Pedro Pascal","Gina Carano","Carl Weathers"}	Disney+
8	The Office	Komedija	2005	8.9	9	Engleski	Greg Daniels	{"Steve Carell","Rainn Wilson","John Krasinski"}	NBC
9	House of Cards	Drama	2013	8.7	6	Engleski	Beau Willimon	{"Kevin Spacey","Robin Wright","Kate Mara"}	Netflix
10	Black Mirror	Drama, Misterija, SF	2011	8.8	5	Engleski	Charlie Brooker	{"Daniel Lapaine","Hannah John-Kamen","Michaela Coel"}	Netflix
\.


--
-- Name: epizode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.epizode_id_seq', 20, true);


--
-- Name: serije_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.serije_id_seq', 10, true);


--
-- Name: epizode epizode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.epizode
    ADD CONSTRAINT epizode_pkey PRIMARY KEY (id);


--
-- Name: serije serije_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serije
    ADD CONSTRAINT serije_pkey PRIMARY KEY (id);


--
-- Name: epizode epizode_serija_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.epizode
    ADD CONSTRAINT epizode_serija_id_fkey FOREIGN KEY (serija_id) REFERENCES public.serije(id);


--
-- PostgreSQL database dump complete
--

