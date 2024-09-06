--
-- PostgreSQL database dump
--

-- Dumped from database version 15.7
-- Dumped by pg_dump version 15.7

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
-- Name: items; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE public.items (
    id uuid NOT NULL,
    seller uuid,
    buyer uuid,
    picture text,
    cost real,
    purchasedate bigint
);


ALTER TABLE public.items OWNER TO manager;

--
-- Name: users; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE public.users (
    id uuid NOT NULL,
    username text NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL,
    password text NOT NULL,
    picture text
);


ALTER TABLE public.users OWNER TO manager;

--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY public.items (id, seller, buyer, picture, cost, purchasedate) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY public.users (id, username, firstname, lastname, password, picture) FROM stdin;
\.


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: items items_buyer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_buyer_fkey FOREIGN KEY (buyer) REFERENCES public.users(id);


--
-- Name: items items_seller_fkey; Type: FK CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_seller_fkey FOREIGN KEY (seller) REFERENCES public.users(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO manager;


--
-- PostgreSQL database dump complete
--

