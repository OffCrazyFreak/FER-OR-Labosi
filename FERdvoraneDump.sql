--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: dvorana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dvorana (
    ozndvorana character varying(40) NOT NULL,
    oznzgrada character varying(5) NOT NULL,
    kapacitet smallint NOT NULL,
    brojstolova smallint,
    brojstolica smallint,
    imaklimu boolean,
    imaprirodnusvjetlost boolean,
    imauticnice boolean,
    dvoranasopremom boolean,
    imaracunalo boolean,
    imahdmikabel boolean,
    imamikrofon boolean
);


ALTER TABLE public.dvorana OWNER TO postgres;

--
-- Name: zgrada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zgrada (
    oznzgrada character varying(5) NOT NULL
);


ALTER TABLE public.zgrada OWNER TO postgres;

--
-- Data for Name: dvorana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dvorana (ozndvorana, oznzgrada, kapacitet, brojstolova, brojstolica, imaklimu, imaprirodnusvjetlost, imauticnice, dvoranasopremom, imaracunalo, imahdmikabel, imamikrofon) FROM stdin;
A101	A	60	31	\N	\N	t	\N	t	\N	\N	f
A102	A	60	31	\N	\N	t	\N	t	\N	\N	f
A104	A	30	16	\N	\N	t	\N	\N	\N	\N	f
A105	A	24	13	\N	\N	t	\N	\N	\N	\N	f
A109	A	40	21	\N	\N	t	\N	\N	\N	\N	f
A110	A	40	21	\N	\N	t	\N	\N	\N	\N	f
A111	A	60	31	\N	\N	t	\N	\N	\N	\N	f
A201	A	60	31	\N	\N	t	\N	\N	\N	\N	f
A202	A	60	31	\N	\N	t	\N	\N	\N	\N	f
A204	A	30	16	\N	\N	t	\N	\N	\N	\N	f
A205	A	30	16	\N	\N	t	\N	\N	\N	\N	f
A209	A	50	26	\N	\N	t	\N	\N	\N	\N	f
A210	A	60	31	\N	\N	t	\N	\N	\N	\N	f
A211	A	60	31	\N	\N	t	\N	f	f	t	f
A301	A	16	9	\N	t	t	t	\N	t	f	f
A302	A	16	9	\N	\N	t	t	\N	t	f	f
A309	A	16	9	\N	\N	t	\N	t	\N	\N	f
A310	A	16	9	\N	\N	t	\N	t	\N	\N	f
A311	A	16	9	\N	\N	t	\N	\N	\N	\N	f
A312	A	16	9	\N	\N	t	\N	\N	\N	\N	f
B1	B	100	\N	\N	\N	f	\N	\N	\N	\N	t
B2	B	50	\N	\N	\N	f	\N	\N	\N	\N	t
B3	B	50	\N	\N	\N	f	\N	\N	\N	\N	t
B4	B	100	\N	\N	\N	f	\N	\N	\N	\N	t
B5	B	40	\N	\N	\N	f	\N	\N	\N	\N	t
C603	C	36	\N	\N	\N	\N	\N	\N	\N	\N	\N
D033	D	35	\N	\N	\N	\N	\N	\N	\N	\N	\N
D1	D	100	\N	\N	\N	f	\N	\N	\N	\N	t
D152	D	50	\N	\N	\N	t	\N	\N	\N	\N	\N
D153	D	25	\N	\N	\N	t	\N	\N	\N	\N	\N
D158	D	25	\N	\N	\N	t	\N	\N	\N	\N	\N
D159	D	20	\N	\N	\N	t	\N	\N	\N	\N	\N
D160	D	60	\N	\N	\N	t	\N	\N	\N	\N	\N
D2	D	100	\N	\N	\N	f	\N	\N	\N	\N	t
D251	D	20	\N	\N	\N	t	\N	\N	\N	\N	\N
D258	D	20	\N	\N	\N	t	\N	\N	\N	\N	\N
D259	D	18	\N	\N	\N	t	\N	\N	\N	\N	\N
D260	D	64	\N	\N	\N	t	\N	\N	\N	\N	\N
D262	D	24	\N	\N	\N	t	\N	\N	\N	\N	\N
D263	D	16	\N	\N	\N	t	\N	\N	\N	\N	\N
D269	D	24	\N	\N	\N	t	\N	\N	\N	\N	\N
D270	D	24	\N	\N	\N	t	\N	\N	\N	\N	\N
D272	D	64	\N	\N	\N	t	\N	\N	\N	\N	\N
D273	D	60	\N	\N	\N	t	\N	\N	\N	\N	\N
D346	D	55	\N	\N	\N	t	\N	\N	\N	\N	\N
D347	D	25	\N	\N	\N	t	\N	\N	\N	\N	\N
Siva vijećnica	D	100	\N	\N	\N	t	\N	\N	\N	\N	t
Bijela vijećnica	D	20	\N	\N	\N	t	\N	\N	\N	\N	f
Crna vijećnica	D	50	\N	\N	\N	t	\N	\N	\N	\N	f
\.


--
-- Data for Name: zgrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zgrada (oznzgrada) FROM stdin;
A
B
C
D
\.


--
-- Name: dvorana dvorana_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dvorana
    ADD CONSTRAINT dvorana_pkey PRIMARY KEY (ozndvorana);


--
-- Name: zgrada zgrada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zgrada
    ADD CONSTRAINT zgrada_pkey PRIMARY KEY (oznzgrada);


--
-- Name: dvorana dvorana_oznzgrada_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dvorana
    ADD CONSTRAINT dvorana_oznzgrada_fkey FOREIGN KEY (oznzgrada) REFERENCES public.zgrada(oznzgrada);


--
-- PostgreSQL database dump complete
--

