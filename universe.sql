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
-- Name: cosmos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cosmos (
    cosmos_id integer NOT NULL,
    distance integer,
    galaxy_id integer,
    gravity boolean DEFAULT false NOT NULL
);


ALTER TABLE public.cosmos OWNER TO freecodecamp;

--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cosmos_cosmos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cosmos_cosmos_id_seq OWNER TO freecodecamp;

--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cosmos_cosmos_id_seq OWNED BY public.cosmos.cosmos_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(255),
    rotation_speed integer DEFAULT 123456789 NOT NULL
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
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    inhabitable boolean DEFAULT false NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(255) NOT NULL,
    radius numeric,
    life_presence boolean DEFAULT false NOT NULL,
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
    radius integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer
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
-- Name: cosmos cosmos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos ALTER COLUMN cosmos_id SET DEFAULT nextval('public.cosmos_cosmos_id_seq'::regclass);


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
-- Data for Name: cosmos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 110, 'Spiral galaxy; neighbor of Milky Way.', 'Andromeda Galaxy', 123456789);
INSERT INTO public.galaxy VALUES (2, 230, 'Spiral galaxy with a prominent companion.', 'Whirlpool Galaxy', 123456789);
INSERT INTO public.galaxy VALUES (3, 620, 'Spiral galaxy with a distinct bulge and disk.', 'Sombrero Galaxy', 123456789);
INSERT INTO public.galaxy VALUES (4, 15, 'Spiral galaxy; member of the Local Group.', 'Triangulum Galaxy', 123456789);
INSERT INTO public.galaxy VALUES (5, NULL, 'Elliptical galaxy with an active galactic nucleus.', 'Centaurus A', 123456789);
INSERT INTO public.galaxy VALUES (6, NULL, 'Spiral galaxy; home to the Solar System and Earth.', 'Milky Way Galaxy', 123456789);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Satellite1', 'XYZ001', true, 1);
INSERT INTO public.moon VALUES (2, 'Satellite2', 'XYZ002', false, 2);
INSERT INTO public.moon VALUES (3, 'Satellite3', 'XYZ003', false, 1);
INSERT INTO public.moon VALUES (4, 'Satellite4', 'XYZ004', true, 2);
INSERT INTO public.moon VALUES (5, 'Satellite5', 'ABC001', true, 3);
INSERT INTO public.moon VALUES (6, 'Satellite6', 'ABC002', false, 3);
INSERT INTO public.moon VALUES (7, 'Satellite7', 'ABC003', false, 4);
INSERT INTO public.moon VALUES (8, 'Satellite8', 'ABC004', true, 4);
INSERT INTO public.moon VALUES (9, 'Satellite9', 'DEF001', true, 5);
INSERT INTO public.moon VALUES (10, 'Satellite10', 'DEF002', false, 5);
INSERT INTO public.moon VALUES (11, 'Satellite11', 'DEF003', false, 6);
INSERT INTO public.moon VALUES (12, 'Satellite12', 'DEF004', true, 6);
INSERT INTO public.moon VALUES (13, 'Satellite13', 'GHI001', true, 7);
INSERT INTO public.moon VALUES (14, 'Satellite14', 'GHI002', false, 7);
INSERT INTO public.moon VALUES (15, 'Satellite15', 'JKL001', false, 8);
INSERT INTO public.moon VALUES (16, 'Satellite16', 'JKL002', true, 8);
INSERT INTO public.moon VALUES (17, 'Satellite17', 'Moon', true, 11);
INSERT INTO public.moon VALUES (18, 'Satellite18', 'IO', false, 12);
INSERT INTO public.moon VALUES (19, 'Satellite19', 'Europa', true, 12);
INSERT INTO public.moon VALUES (20, 'Satellite20', 'Ganymede', true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Andromeda Prime', 10000, true, 1);
INSERT INTO public.planet VALUES (2, 'Andromeda Secundus', 8500, false, 1);
INSERT INTO public.planet VALUES (3, 'Whirlpool Prime', 12000, true, 2);
INSERT INTO public.planet VALUES (4, 'Whirlpool Secundus', 9500, false, 2);
INSERT INTO public.planet VALUES (5, 'Sombrero Major', 15500, false, 3);
INSERT INTO public.planet VALUES (6, 'Sombrero Minor', 11200, true, 3);
INSERT INTO public.planet VALUES (7, 'Triangulum Alpha', 8800, true, 4);
INSERT INTO public.planet VALUES (8, 'Triangulum Beta', 10300, false, 4);
INSERT INTO public.planet VALUES (9, 'Centaurus Prime', 14000, false, 5);
INSERT INTO public.planet VALUES (10, 'Centaurus Secundus', 9700, true, 5);
INSERT INTO public.planet VALUES (11, 'Earth', 6371, true, 6);
INSERT INTO public.planet VALUES (12, 'Jupiter', 69911, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 3, 'Blue to Red', 'Andromeda Star', 1);
INSERT INTO public.star VALUES (2, 10, 'Blue to Yellow', 'Whirlpool Spark', 2);
INSERT INTO public.star VALUES (3, 7, 'Blue to Yellow', 'Sombrero Sunburst', 3);
INSERT INTO public.star VALUES (4, 3, 'Blue to Red', 'Triangulum Blaze', 4);
INSERT INTO public.star VALUES (5, 6, 'Blue to Red', 'Centaurus Radiance', 5);
INSERT INTO public.star VALUES (6, 2, 'Blue to Yellow', 'Milky Way Beacon', 6);


--
-- Name: cosmos_cosmos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cosmos_cosmos_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: cosmos cosmos_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmos
    ADD CONSTRAINT cosmos_pkey PRIMARY KEY (cosmos_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_key UNIQUE (code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

