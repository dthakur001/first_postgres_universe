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
    has_life boolean NOT NULL,
    name character varying(30),
    age_in_millions numeric,
    distance_from_earth numeric
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
    description text,
    name character varying(30),
    planet_id integer NOT NULL,
    is_spherical boolean
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
    num_moons integer,
    day_length_hrs numeric,
    has_moon boolean NOT NULL,
    star_id integer,
    name character varying(30)
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
-- Name: sample; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sample (
    col1 integer,
    col2 integer,
    col5 integer NOT NULL,
    col4 integer NOT NULL,
    col3 integer,
    name character varying(30),
    sample_id integer NOT NULL
);


ALTER TABLE public.sample OWNER TO freecodecamp;

--
-- Name: sample_sample_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sample_sample_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_sample_id_seq OWNER TO freecodecamp;

--
-- Name: sample_sample_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sample_sample_id_seq OWNED BY public.sample.sample_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    num_planets_revolving integer NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_id integer,
    name character varying(30)
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
-- Name: sample sample_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sample ALTER COLUMN sample_id SET DEFAULT nextval('public.sample_sample_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, false, 'Andromeda', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, false, 'Cygnus A', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, true, 'Milky way', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, false, 'Virgo A', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, false, 'Magellanic clouds', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, false, 'Canis major dwarf', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ICED MOON', 'Moon', 3, NULL);
INSERT INTO public.moon VALUES (2, NULL, 'Deimos', 4, NULL);
INSERT INTO public.moon VALUES (3, NULL, 'Phobos', 4, NULL);
INSERT INTO public.moon VALUES (4, NULL, 'Amelthia', 5, NULL);
INSERT INTO public.moon VALUES (5, NULL, 'Callisto', 5, NULL);
INSERT INTO public.moon VALUES (6, NULL, 'Europa', 5, NULL);
INSERT INTO public.moon VALUES (7, NULL, 'Ganymede', 5, NULL);
INSERT INTO public.moon VALUES (8, NULL, 'Lo', 5, NULL);
INSERT INTO public.moon VALUES (9, NULL, 'Dione', 6, NULL);
INSERT INTO public.moon VALUES (10, NULL, 'Enceladus', 6, NULL);
INSERT INTO public.moon VALUES (11, NULL, 'Hyperion', 6, NULL);
INSERT INTO public.moon VALUES (12, NULL, 'Lapitus', 6, NULL);
INSERT INTO public.moon VALUES (13, NULL, 'Mimas', 6, NULL);
INSERT INTO public.moon VALUES (14, NULL, 'Phoebe', 6, NULL);
INSERT INTO public.moon VALUES (15, NULL, 'Rhea', 6, NULL);
INSERT INTO public.moon VALUES (16, NULL, 'Tethys', 6, NULL);
INSERT INTO public.moon VALUES (17, NULL, 'Titan', 6, NULL);
INSERT INTO public.moon VALUES (18, NULL, 'Umbriel', 7, NULL);
INSERT INTO public.moon VALUES (19, NULL, 'Titania', 7, NULL);
INSERT INTO public.moon VALUES (20, NULL, 'Oberon', 7, NULL);
INSERT INTO public.moon VALUES (21, NULL, 'Miranda', 7, NULL);
INSERT INTO public.moon VALUES (22, NULL, 'Ariel', 7, NULL);
INSERT INTO public.moon VALUES (23, NULL, 'Triton', 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0, 40, false, 7, 'Mercury');
INSERT INTO public.planet VALUES (2, 0, 50, false, 7, 'Venus');
INSERT INTO public.planet VALUES (3, 1, 24, true, 7, 'Earth');
INSERT INTO public.planet VALUES (4, 2, 24, true, 7, 'Mars');
INSERT INTO public.planet VALUES (5, 79, 10, true, 7, 'Jupiter');
INSERT INTO public.planet VALUES (6, 82, 11, true, 7, 'Saturn');
INSERT INTO public.planet VALUES (7, 27, 17, true, 7, 'Uranus');
INSERT INTO public.planet VALUES (8, 14, 16, true, 7, 'Neptune');
INSERT INTO public.planet VALUES (9, 0, 0, false, 3, 'Methuselah');
INSERT INTO public.planet VALUES (10, 0, 0, false, 2, 'Epsilon Eridani');
INSERT INTO public.planet VALUES (11, 0, 0, false, 5, '55 Cancri');
INSERT INTO public.planet VALUES (12, 0, 0, false, 4, 'Gliese 876 b');


--
-- Data for Name: sample; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sample VALUES (NULL, NULL, 3, 3, NULL, NULL, 1);
INSERT INTO public.sample VALUES (NULL, NULL, 4, 4, NULL, NULL, 2);
INSERT INTO public.sample VALUES (NULL, NULL, 5, 5, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 6, true, 1, 'Nahn');
INSERT INTO public.star VALUES (2, 8, true, 2, 'Ain');
INSERT INTO public.star VALUES (3, 7, false, 2, 'Acrux');
INSERT INTO public.star VALUES (4, 16, false, 4, 'Vega');
INSERT INTO public.star VALUES (5, 11, true, 4, 'Wurren');
INSERT INTO public.star VALUES (6, 9, false, 5, 'Deneb');
INSERT INTO public.star VALUES (7, 8, true, 3, 'Sun');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: sample_sample_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sample_sample_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: sample sample_col3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_col3_key UNIQUE (col3);


--
-- Name: sample sample_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_pkey PRIMARY KEY (sample_id);


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

