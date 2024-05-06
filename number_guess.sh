--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: username; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.username (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.username OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.username.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: username user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 1);
INSERT INTO public.games VALUES (2, 528, 2);
INSERT INTO public.games VALUES (3, 532, 2);
INSERT INTO public.games VALUES (4, 180, 3);
INSERT INTO public.games VALUES (5, 385, 3);
INSERT INTO public.games VALUES (6, 801, 2);
INSERT INTO public.games VALUES (7, 619, 2);
INSERT INTO public.games VALUES (8, 976, 2);
INSERT INTO public.games VALUES (9, 607, 4);
INSERT INTO public.games VALUES (10, 291, 4);
INSERT INTO public.games VALUES (11, 15, 5);
INSERT INTO public.games VALUES (12, 521, 5);
INSERT INTO public.games VALUES (13, 356, 4);
INSERT INTO public.games VALUES (14, 999, 4);
INSERT INTO public.games VALUES (15, 291, 4);
INSERT INTO public.games VALUES (16, 248, 6);
INSERT INTO public.games VALUES (17, 436, 6);
INSERT INTO public.games VALUES (18, 112, 7);
INSERT INTO public.games VALUES (19, 111, 7);
INSERT INTO public.games VALUES (20, 345, 6);
INSERT INTO public.games VALUES (21, 683, 6);
INSERT INTO public.games VALUES (22, 400, 6);
INSERT INTO public.games VALUES (23, 538, 8);
INSERT INTO public.games VALUES (24, 799, 8);
INSERT INTO public.games VALUES (25, 708, 9);
INSERT INTO public.games VALUES (26, 720, 9);
INSERT INTO public.games VALUES (27, 424, 8);
INSERT INTO public.games VALUES (28, 71, 8);
INSERT INTO public.games VALUES (29, 690, 8);


--
-- Data for Name: username; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.username VALUES (1, 'maria');
INSERT INTO public.username VALUES (2, 'user_1715019832845');
INSERT INTO public.username VALUES (3, 'user_1715019832844');
INSERT INTO public.username VALUES (4, 'user_1715020143902');
INSERT INTO public.username VALUES (5, 'user_1715020143901');
INSERT INTO public.username VALUES (6, 'user_1715020219507');
INSERT INTO public.username VALUES (7, 'user_1715020219506');
INSERT INTO public.username VALUES (8, 'user_1715020249295');
INSERT INTO public.username VALUES (9, 'user_1715020249294');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 29, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 9, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: username username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: username username_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.username(user_id);


--
-- PostgreSQL database dump complete
--
