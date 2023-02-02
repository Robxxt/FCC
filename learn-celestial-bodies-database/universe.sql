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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth integer NOT NULL,
    age integer,
    page integer,
    is_cool integer,
    more text,
    is_cold boolean DEFAULT true NOT NULL,
    is_fast boolean DEFAULT true NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL,
    shit boolean DEFAULT false,
    more text,
    is_cool boolean DEFAULT true NOT NULL,
    is_cold boolean DEFAULT true NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    diameter integer NOT NULL,
    has_life boolean,
    water_ratio numeric(3,1),
    star_id integer NOT NULL,
    more text,
    is_cool boolean DEFAULT true NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: scientist; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scientist (
    scientist_id integer NOT NULL,
    name character varying(60),
    age integer,
    more text,
    is_cool boolean DEFAULT true NOT NULL,
    is_nudist boolean DEFAULT true NOT NULL
);


ALTER TABLE public.scientist OWNER TO freecodecamp;

--
-- Name: scientist_scientist_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scientist_scientist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scientist_scientist_id_seq OWNER TO freecodecamp;

--
-- Name: scientist_scientist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scientist_scientist_id_seq OWNED BY public.scientist.scientist_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    galaxy_id integer,
    is_cool integer,
    age integer,
    more text,
    is_cold boolean DEFAULT true NOT NULL,
    is_big boolean DEFAULT true NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: scientist scientist_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist ALTER COLUMN scientist_id SET DEFAULT nextval('public.scientist_scientist_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 10, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 20, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy03', 1428, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxion', 124089, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (5, 'hola', 1, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (6, 'mundo', 40, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (7, 'ayer', 1024, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (8, 'es cool', 199990001, NULL, NULL, NULL, NULL, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mongo', true, 1, false, NULL, true, true);
INSERT INTO public.moon VALUES (2, 'flask', true, 1, false, NULL, true, true);
INSERT INTO public.moon VALUES (3, 'wp', false, 1, false, NULL, true, true);
INSERT INTO public.moon VALUES (4, 'm1', false, 4, false, NULL, true, true);
INSERT INTO public.moon VALUES (5, 'm2', false, 7, false, NULL, true, true);
INSERT INTO public.moon VALUES (6, 'm3', false, 8, false, NULL, true, true);
INSERT INTO public.moon VALUES (7, 'm4', false, 4, false, NULL, true, true);
INSERT INTO public.moon VALUES (8, 'm5', false, 7, false, NULL, true, true);
INSERT INTO public.moon VALUES (9, 'm6', false, 8, false, NULL, true, true);
INSERT INTO public.moon VALUES (10, 'ma4', false, 4, false, NULL, true, true);
INSERT INTO public.moon VALUES (11, 'm9', false, 7, false, NULL, true, true);
INSERT INTO public.moon VALUES (12, 'm8', false, 8, false, NULL, true, true);
INSERT INTO public.moon VALUES (13, 'ma4', false, 4, false, NULL, true, true);
INSERT INTO public.moon VALUES (14, 'm9', false, 7, false, NULL, true, true);
INSERT INTO public.moon VALUES (15, 'm8', false, 8, false, NULL, true, true);
INSERT INTO public.moon VALUES (16, 'a', false, 3, false, NULL, true, true);
INSERT INTO public.moon VALUES (17, 'b', false, 5, false, NULL, true, true);
INSERT INTO public.moon VALUES (18, 'm11', false, 3, false, NULL, true, true);
INSERT INTO public.moon VALUES (19, 'm400', false, 4, false, NULL, true, true);
INSERT INTO public.moon VALUES (20, 'm90', false, 7, false, NULL, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet10', 12000, true, 75.0, 1, NULL, true);
INSERT INTO public.planet VALUES (2, 'palnet', 10, true, 99.9, 8, NULL, true);
INSERT INTO public.planet VALUES (3, 'skynet', 541209, true, 10.0, 3, NULL, true);
INSERT INTO public.planet VALUES (4, 'matrix', 10000000, false, 0.0, 5, NULL, true);
INSERT INTO public.planet VALUES (5, 'r1', 21, false, 10.1, 2, NULL, true);
INSERT INTO public.planet VALUES (6, 'r2', 43, false, 5.1, 2, NULL, true);
INSERT INTO public.planet VALUES (7, 'r4', 21, false, 10.1, 2, NULL, true);
INSERT INTO public.planet VALUES (8, 'r3', 43, false, 5.1, 2, NULL, true);
INSERT INTO public.planet VALUES (9, 'r5', 21, false, 10.1, 2, NULL, true);
INSERT INTO public.planet VALUES (10, 'r6', 43, false, 5.1, 2, NULL, true);
INSERT INTO public.planet VALUES (11, 'r8', 21, false, 10.1, 2, NULL, true);
INSERT INTO public.planet VALUES (12, 'r7', 43, false, 5.1, 2, NULL, true);


--
-- Data for Name: scientist; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scientist VALUES (1, 'Somone1', 57, NULL, true, true);
INSERT INTO public.scientist VALUES (2, 'Martha', 30, NULL, true, true);
INSERT INTO public.scientist VALUES (3, 'Lambert', 50, NULL, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star2', 'This star is cool', NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (2, 'star4', 'This star has a surprise', NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (3, 'star-ab12904', '14285', 1, NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (4, 'star-bc01', '124089', 2, NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (5, 'start-az01', '1', 2, NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (6, 'star-aa00', '40', 1, NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (7, 'start-ab1476', '1024', 1, NULL, NULL, NULL, true, true);
INSERT INTO public.star VALUES (8, 'star-hj6756', '199990001', 2, NULL, NULL, NULL, true, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: scientist_scientist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scientist_scientist_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_more_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_more_key UNIQUE (more);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_more_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_more_key UNIQUE (more);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_more_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_more_key UNIQUE (more);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: scientist scientist_more_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT scientist_more_key UNIQUE (more);


--
-- Name: scientist scientist_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientist
    ADD CONSTRAINT scientist_pkey PRIMARY KEY (scientist_id);


--
-- Name: star star_more_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_more_key UNIQUE (more);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

