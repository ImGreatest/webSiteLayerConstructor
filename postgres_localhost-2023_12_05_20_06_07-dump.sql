--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: layout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layout (
    id integer NOT NULL,
    layout oid
);


ALTER TABLE public.layout OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login character varying(100),
    password character varying(100),
    layout_id integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: layout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layout (id, layout) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, login, password, layout_id) FROM stdin;
\.


--
-- Name: layout layout_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layout
    ADD CONSTRAINT layout_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_layout_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_layout_id_fkey FOREIGN KEY (layout_id) REFERENCES public.layout(id);


--
-- PostgreSQL database dump complete
--

