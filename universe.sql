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
    name character varying(20) NOT NULL,
    distance integer,
    diameter integer,
    introduce text
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
    name character varying(20) NOT NULL,
    planet_id integer,
    moon_2 integer,
    moon32 integer,
    moon321 integer
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
-- Name: mytable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mytable (
    mytable_id integer NOT NULL,
    name character varying(20) NOT NULL,
    hobby character varying(20)
);


ALTER TABLE public.mytable OWNER TO freecodecamp;

--
-- Name: mytable_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mytable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mytable_id_seq OWNER TO freecodecamp;

--
-- Name: mytable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mytable_id_seq OWNED BY public.mytable.mytable_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area numeric(5,2),
    dead boolean,
    solar_system boolean,
    star_id integer
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    star_name character varying(20),
    star_system character varying(20),
    star_syst1em character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_star_id_seq OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: mytable mytable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable ALTER COLUMN mytable_id SET DEFAULT nextval('public.mytable_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'solar system', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'solar 2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'solar 3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'solar 4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'solar 5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'solar 6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'American', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Russia', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'China', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Vietnam', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Vietnam', 1, NULL, NULL, NULL);


--
-- Data for Name: mytable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mytable VALUES (1, 'Obama', NULL);
INSERT INTO public.mytable VALUES (2, 'Trump', NULL);
INSERT INTO public.mytable VALUES (3, 'Bush', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'mars', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'mercury', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'venus', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'venus1', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'venus12', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'venus3', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'venus5', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (9, 'venus6', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'venus7', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'venus8', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'venus9', NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mars', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'mercury', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'venus', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'jupiter', 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'neptune', 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'uranus', 6, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: mytable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mytable_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: start_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_star_id_seq', 6, true);


--
-- Name: galaxy a; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT a UNIQUE (name);


--
-- Name: star ab; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT ab UNIQUE (name);


--
-- Name: star ab1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT ab1 UNIQUE (star_id);


--
-- Name: planet ab3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT ab3 UNIQUE (name);


--
-- Name: planet ab32; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT ab32 UNIQUE (planet_id);


--
-- Name: moon ab322; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT ab322 UNIQUE (moon_id);


--
-- Name: moon ab3f22; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT ab3f22 UNIQUE (moon32);


--
-- Name: galaxy b; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT b UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: mytable mytable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable
    ADD CONSTRAINT mytable_pkey PRIMARY KEY (mytable_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: mytable unieque_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable
    ADD CONSTRAINT unieque_name UNIQUE (name);


--
-- Name: mytable unieque_namekey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable
    ADD CONSTRAINT unieque_namekey UNIQUE (mytable_id);


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

