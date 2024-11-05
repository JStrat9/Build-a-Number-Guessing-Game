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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 5, 9);
INSERT INTO public.games VALUES (2, 206, 10);
INSERT INTO public.games VALUES (3, 206, 10);
INSERT INTO public.games VALUES (4, 588, 11);
INSERT INTO public.games VALUES (5, 597, 11);
INSERT INTO public.games VALUES (6, 716, 10);
INSERT INTO public.games VALUES (7, 404, 10);
INSERT INTO public.games VALUES (8, 444, 10);
INSERT INTO public.games VALUES (9, 742, 12);
INSERT INTO public.games VALUES (10, 737, 12);
INSERT INTO public.games VALUES (11, 239, 13);
INSERT INTO public.games VALUES (12, 50, 13);
INSERT INTO public.games VALUES (13, 39, 12);
INSERT INTO public.games VALUES (14, 585, 12);
INSERT INTO public.games VALUES (15, 832, 12);
INSERT INTO public.games VALUES (16, 109, 14);
INSERT INTO public.games VALUES (17, 197, 14);
INSERT INTO public.games VALUES (18, 73, 15);
INSERT INTO public.games VALUES (19, 159, 15);
INSERT INTO public.games VALUES (20, 43, 14);
INSERT INTO public.games VALUES (21, 439, 14);
INSERT INTO public.games VALUES (22, 59, 14);
INSERT INTO public.games VALUES (23, 25, 9);
INSERT INTO public.games VALUES (24, 397, 16);
INSERT INTO public.games VALUES (25, 528, 16);
INSERT INTO public.games VALUES (26, 77, 17);
INSERT INTO public.games VALUES (27, 709, 17);
INSERT INTO public.games VALUES (28, 925, 16);
INSERT INTO public.games VALUES (29, 18, 16);
INSERT INTO public.games VALUES (30, 14, 16);
INSERT INTO public.games VALUES (31, 810, 18);
INSERT INTO public.games VALUES (32, 229, 18);
INSERT INTO public.games VALUES (33, 442, 19);
INSERT INTO public.games VALUES (34, 369, 19);
INSERT INTO public.games VALUES (35, 447, 18);
INSERT INTO public.games VALUES (36, 582, 18);
INSERT INTO public.games VALUES (37, 615, 18);
INSERT INTO public.games VALUES (38, 824, 20);
INSERT INTO public.games VALUES (39, 858, 20);
INSERT INTO public.games VALUES (40, 194, 21);
INSERT INTO public.games VALUES (41, 862, 21);
INSERT INTO public.games VALUES (42, 977, 20);
INSERT INTO public.games VALUES (43, 563, 20);
INSERT INTO public.games VALUES (44, 20, 20);
INSERT INTO public.games VALUES (45, 895, 22);
INSERT INTO public.games VALUES (46, 964, 22);
INSERT INTO public.games VALUES (47, 890, 23);
INSERT INTO public.games VALUES (48, 836, 23);
INSERT INTO public.games VALUES (49, 975, 22);
INSERT INTO public.games VALUES (50, 711, 22);
INSERT INTO public.games VALUES (51, 566, 22);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '5');
INSERT INTO public.users VALUES (2, 'user_1730795956182');
INSERT INTO public.users VALUES (4, 'user_1730795956181');
INSERT INTO public.users VALUES (9, 'Joan');
INSERT INTO public.users VALUES (10, 'user_1730797607624');
INSERT INTO public.users VALUES (11, 'user_1730797607622');
INSERT INTO public.users VALUES (12, 'user_1730797786165');
INSERT INTO public.users VALUES (13, 'user_1730797786164');
INSERT INTO public.users VALUES (14, 'user_1730798054869');
INSERT INTO public.users VALUES (15, 'user_1730798054868');
INSERT INTO public.users VALUES (16, 'user_1730798228466');
INSERT INTO public.users VALUES (17, 'user_1730798228465');
INSERT INTO public.users VALUES (18, 'user_1730798320151');
INSERT INTO public.users VALUES (19, 'user_1730798320150');
INSERT INTO public.users VALUES (20, 'user_1730798339338');
INSERT INTO public.users VALUES (21, 'user_1730798339337');
INSERT INTO public.users VALUES (22, 'user_1730798430173');
INSERT INTO public.users VALUES (23, 'user_1730798430172');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 23, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

