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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(30) NOT NULL,
    origin text
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    type character varying(30),
    distance_mly numeric,
    constellations_id integer NOT NULL
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
    name character varying(30),
    year_discovered integer,
    planet_id integer NOT NULL,
    is_sperical boolean
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
    name character varying(30),
    solar_mass numeric,
    have_moon boolean,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_mly numeric(5,2),
    temperature_k integer,
    is_in_our_galaxy boolean,
    galaxy_id integer NOT NULL,
    constellations_id integer NOT NULL
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
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellations_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'Sagittarius', 'ancient(ptolemy)');
INSERT INTO public.constellations VALUES (2, 'Ursa Major', 'ancient(ptolemy)');
INSERT INTO public.constellations VALUES (3, 'Canis Minor', 'ancient(ptolemy)');
INSERT INTO public.constellations VALUES (4, 'Centaurus', 'ancient(ptolemy)');
INSERT INTO public.constellations VALUES (5, 'Piscis Austrinus', 'ancient(ptolemy)');
INSERT INTO public.constellations VALUES (6, 'Cetus', 'ancient(ptolemy)');
INSERT INTO public.constellations VALUES (7, 'Andomeda', 'ancient(ptolemy');
INSERT INTO public.constellations VALUES (8, 'Corvus', 'ancient(ptolemy)');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Wolf-Lundmark-Melotte', 'barred irregular', 3.04, 6);
INSERT INTO public.galaxy VALUES (2, 'Bodes Galaxy', 'spiral', 12, 2);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'spiral', 111, 4);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'barred spiral', 0.0265, 1);
INSERT INTO public.galaxy VALUES (5, 'Andromeda galaxy', 'spiral', 2.5, 7);
INSERT INTO public.galaxy VALUES (6, 'Antennae galaxies', 'barred spiral', 55, 8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (19, 'moon', NULL, 20, true);
INSERT INTO public.moon VALUES (4, 'aitne', 2001, 22, true);
INSERT INTO public.moon VALUES (6, 'amalthea', 1892, 22, true);
INSERT INTO public.moon VALUES (7, 'ananke', 1951, 22, true);
INSERT INTO public.moon VALUES (14, 'jarnsaxa', 2006, 22, true);
INSERT INTO public.moon VALUES (20, 'neso', 2002, 25, false);
INSERT INTO public.moon VALUES (22, 'psamathe', 2003, 25, false);
INSERT INTO public.moon VALUES (2, 'aegaeon', 2008, 23, false);
INSERT INTO public.moon VALUES (3, 'aegir', 2004, 23, false);
INSERT INTO public.moon VALUES (8, 'bebhionn', 2004, 23, false);
INSERT INTO public.moon VALUES (10, 'bergelmir', 2004, 23, false);
INSERT INTO public.moon VALUES (15, 'tethys', 1684, 23, false);
INSERT INTO public.moon VALUES (18, 'kari', 2006, 23, false);
INSERT INTO public.moon VALUES (23, 'mab', 2003, 24, false);
INSERT INTO public.moon VALUES (24, 'margaret', 2003, 24, false);
INSERT INTO public.moon VALUES (25, 'miranda', 1948, 24, false);
INSERT INTO public.moon VALUES (12, 'deimos', 1877, 21, true);
INSERT INTO public.moon VALUES (13, 'phobos', 1877, 21, true);
INSERT INTO public.moon VALUES (1, 'adrastea', 1979, 22, true);
INSERT INTO public.moon VALUES (11, 'locaste', 2000, 22, true);
INSERT INTO public.moon VALUES (17, 'thebe', 1979, 22, true);
INSERT INTO public.moon VALUES (16, 'thalassa', 1989, 25, true);
INSERT INTO public.moon VALUES (21, 'proteus', 1989, 25, true);
INSERT INTO public.moon VALUES (5, 'albiorix', 2000, 23, true);
INSERT INTO public.moon VALUES (9, 'belinda', 1986, 24, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet d', 0.26, false, 2);
INSERT INTO public.planet VALUES (2, 'planet b', 1.07, false, 2);
INSERT INTO public.planet VALUES (3, 'planet c', 7, false, 2);
INSERT INTO public.planet VALUES (4, 'planet b', 2.64, false, 3);
INSERT INTO public.planet VALUES (5, 'planet d', 4.1, false, 3);
INSERT INTO public.planet VALUES (6, 'planet c', 14.2, false, 3);
INSERT INTO public.planet VALUES (7, 'planet b', 4.2, false, 4);
INSERT INTO public.planet VALUES (8, 'planet c', 7.6, false, 4);
INSERT INTO public.planet VALUES (9, 'planet d', 8.3, false, 4);
INSERT INTO public.planet VALUES (10, 'planet c', 1.18, false, 5);
INSERT INTO public.planet VALUES (11, 'planet b', 2.89, false, 5);
INSERT INTO public.planet VALUES (12, 'planet d', 10.8, false, 5);
INSERT INTO public.planet VALUES (13, 'planet e', 9.3, false, 5);
INSERT INTO public.planet VALUES (14, 'planet e', 0.472, false, 6);
INSERT INTO public.planet VALUES (15, 'planet b', 0.7, false, 6);
INSERT INTO public.planet VALUES (16, 'planet c', 1.14, false, 6);
INSERT INTO public.planet VALUES (17, 'planet d', 1.09, false, 6);
INSERT INTO public.planet VALUES (18, 'mercury', 0.055, false, 1);
INSERT INTO public.planet VALUES (19, 'venus', 0.815, false, 1);
INSERT INTO public.planet VALUES (20, 'earth', 0, true, 1);
INSERT INTO public.planet VALUES (21, 'mars', 0.107, true, 1);
INSERT INTO public.planet VALUES (22, 'jupiter', 317.8, true, 1);
INSERT INTO public.planet VALUES (23, 'saturn', 95.159, true, 1);
INSERT INTO public.planet VALUES (24, 'uranus', 14.536, true, 1);
INSERT INTO public.planet VALUES (25, 'neptune', 17.147, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.57, 5778, true, 4, 1);
INSERT INTO public.star VALUES (2, 'Proxima centuari', 4.85, 3042, false, 3, 4);
INSERT INTO public.star VALUES (3, 'Lalande 21185', 8.05, 3601, false, 2, 2);
INSERT INTO public.star VALUES (4, 'Lacaille 9352', 4.57, 3688, true, 4, 5);
INSERT INTO public.star VALUES (5, 'Luytens star', NULL, 3150, false, 5, 3);
INSERT INTO public.star VALUES (6, 'YZ ceti', 4.00, 3056, false, 1, 6);


--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellations_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 24, true);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


--
-- Name: constellations constellations_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_unique UNIQUE (constellations_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: star fk1_constellations; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk1_constellations FOREIGN KEY (constellations_id) REFERENCES public.constellations(constellations_id);


--
-- Name: galaxy fk_constellations; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_constellations FOREIGN KEY (constellations_id) REFERENCES public.constellations(constellations_id);


--
-- Name: star fk_galay; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galay FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

