--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(32) NOT NULL,
    best_game integer DEFAULT 0,
    games_played integer DEFAULT 0,
    user_id integer NOT NULL
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1674805587596', 371, 2, 140);
INSERT INTO public.users VALUES ('user_1674805651042', 132, 2, 144);
INSERT INTO public.users VALUES ('user_1674805587597', 416, 5, 139);
INSERT INTO public.users VALUES ('user_1674805862533', 46, 2, 158);
INSERT INTO public.users VALUES ('user_1674805651043', 532, 5, 143);
INSERT INTO public.users VALUES ('user_1674805862534', 258, 5, 157);
INSERT INTO public.users VALUES ('user_1674806073482', 113, 2, 169);
INSERT INTO public.users VALUES ('user_1674805602665', 16, 2, 142);
INSERT INTO public.users VALUES ('user_1674805674595', 35, 2, 146);
INSERT INTO public.users VALUES ('user_1674806073483', 151, 5, 168);
INSERT INTO public.users VALUES ('user_1674805602666', 173, 5, 141);
INSERT INTO public.users VALUES ('user_1674806197755', 296, 2, 181);
INSERT INTO public.users VALUES ('user_1674805674596', 254, 5, 145);
INSERT INTO public.users VALUES ('user_1674806841999', 259, 2, 211);
INSERT INTO public.users VALUES ('user_1674805870892', 84, 2, 160);
INSERT INTO public.users VALUES ('user_1674806556218', 175, 2, 203);
INSERT INTO public.users VALUES ('user_1674806197756', 59, 5, 180);
INSERT INTO public.users VALUES ('user_1674805870893', 19, 5, 159);
INSERT INTO public.users VALUES ('user_1674805683884', 273, 2, 148);
INSERT INTO public.users VALUES ('user_1674806359039', 45, 2, 193);
INSERT INTO public.users VALUES ('user_1674806079176', 75, 2, 171);
INSERT INTO public.users VALUES ('user_1674805683885', 51, 5, 147);
INSERT INTO public.users VALUES ('user_1674806079178', 183, 5, 170);
INSERT INTO public.users VALUES ('user_1674805918219', 253, 2, 162);
INSERT INTO public.users VALUES ('user_1674805765338', 594, 2, 150);
INSERT INTO public.users VALUES ('user_1674806359040', 261, 5, 192);
INSERT INTO public.users VALUES ('user_1674805918220', 269, 5, 161);
INSERT INTO public.users VALUES ('user_1674805765339', 47, 5, 149);
INSERT INTO public.users VALUES ('user_1674806556219', 35, 5, 202);
INSERT INTO public.users VALUES ('user_1674806206231', 16, 2, 183);
INSERT INTO public.users VALUES ('user_1674805770396', 388, 2, 152);
INSERT INTO public.users VALUES ('user_1674805770397', 71, 5, 151);
INSERT INTO public.users VALUES ('user_1674805960381', 321, 2, 164);
INSERT INTO public.users VALUES ('Joe', 11, 2, 167);
INSERT INTO public.users VALUES ('user_1674806087120', 398, 2, 173);
INSERT INTO public.users VALUES ('user_1674805960382', 118, 5, 163);
INSERT INTO public.users VALUES ('user_1674806206232', 208, 5, 182);
INSERT INTO public.users VALUES ('user_1674805775058', 129, 2, 154);
INSERT INTO public.users VALUES ('user_1674806087121', 231, 5, 172);
INSERT INTO public.users VALUES ('user_1674805775059', 400, 5, 153);
INSERT INTO public.users VALUES ('user_1674806842000', 197, 5, 210);
INSERT INTO public.users VALUES ('user_1674805968673', 711, 2, 166);
INSERT INTO public.users VALUES ('user_1674805780017', 925, 2, 156);
INSERT INTO public.users VALUES ('user_1674805780018', 105, 5, 155);
INSERT INTO public.users VALUES ('user_1674806365049', 634, 2, 195);
INSERT INTO public.users VALUES ('user_1674806096868', 104, 2, 175);
INSERT INTO public.users VALUES ('user_1674805968674', 511, 5, 165);
INSERT INTO public.users VALUES ('user_1674806214491', 367, 2, 185);
INSERT INTO public.users VALUES ('user_1674806096869', 549, 5, 174);
INSERT INTO public.users VALUES ('user_1674806214492', 627, 5, 184);
INSERT INTO public.users VALUES ('user_1674806365050', 103, 5, 194);
INSERT INTO public.users VALUES ('user_1674806099576', 824, 2, 177);
INSERT INTO public.users VALUES ('user_1674806794391', 247, 2, 205);
INSERT INTO public.users VALUES ('user_1674806251949', 268, 2, 187);
INSERT INTO public.users VALUES ('user_1674806099577', 87, 5, 176);
INSERT INTO public.users VALUES ('user_1674806794392', 176, 5, 204);
INSERT INTO public.users VALUES ('user_1674806251950', 44, 5, 186);
INSERT INTO public.users VALUES ('user_1674806108744', 36, 2, 179);
INSERT INTO public.users VALUES ('user_1674806376319', 209, 2, 197);
INSERT INTO public.users VALUES ('user_1674806108745', 13, 5, 178);
INSERT INTO public.users VALUES ('user_1674805578027', 267, 2, 138);
INSERT INTO public.users VALUES ('user_1674806376320', 66, 5, 196);
INSERT INTO public.users VALUES ('user_1674805578028', 27, 5, 137);
INSERT INTO public.users VALUES ('user_1674806279434', 148, 2, 189);
INSERT INTO public.users VALUES ('user_1674806279435', 392, 5, 188);
INSERT INTO public.users VALUES ('user_1674806385639', 77, 2, 199);
INSERT INTO public.users VALUES ('user_1674806804139', 262, 2, 207);
INSERT INTO public.users VALUES ('user_1674806283835', 96, 2, 191);
INSERT INTO public.users VALUES ('user_1674806283836', 30, 5, 190);
INSERT INTO public.users VALUES ('user_1674806385640', 21, 5, 198);
INSERT INTO public.users VALUES ('user_1674806804140', 102, 5, 206);
INSERT INTO public.users VALUES ('user_1674806391770', 361, 2, 201);
INSERT INTO public.users VALUES ('user_1674806391771', 276, 5, 200);
INSERT INTO public.users VALUES ('user_1674806838090', 59, 2, 209);
INSERT INTO public.users VALUES ('user_1674806838091', 158, 5, 208);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 211, true);


--
-- Name: users username_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_unique UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

