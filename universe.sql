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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30),
    active character varying(10) NOT NULL,
    dying boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    planet_num integer,
    galaxy_type character varying(30),
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    weight numeric(2,2),
    explored boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    life boolean,
    planet_id integer NOT NULL,
    description text,
    star_id integer,
    population integer NOT NULL,
    area integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    galaxy_id integer NOT NULL,
    dying boolean,
    star_id integer NOT NULL,
    age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, NULL, 'yes', NULL);
INSERT INTO public.black_hole VALUES (2, NULL, 'no', NULL);
INSERT INTO public.black_hole VALUES (3, NULL, 'no', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 1, 7, 'spiral', 100);
INSERT INTO public.galaxy VALUES ('andromeda', 2, 13, 'peculiar', 130);
INSERT INTO public.galaxy VALUES ('black eye', 3, 111, 'spiral', 123);
INSERT INTO public.galaxy VALUES ('boombox', 4, 51, 'circle', 69);
INSERT INTO public.galaxy VALUES ('coolgs', 5, 51, 'bozos', 420);
INSERT INTO public.galaxy VALUES ('smof', 6, 142, 'curvy', 999);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m2', 2, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m3', 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('m4', 4, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m5', 5, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('m6', 6, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('m7', 7, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('m8', 8, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m9', 9, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m10', 10, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('m11', 11, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('m12', 12, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('m13', 13, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('m14', 14, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('m15', 15, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('m16', 16, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('m17', 17, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m18', 18, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('m19', 19, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('m20', 20, 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', true, 1, NULL, 1, 8, 90);
INSERT INTO public.planet VALUES ('p2', true, 2, NULL, 1, 8, 90);
INSERT INTO public.planet VALUES ('p3', true, 3, NULL, 2, 8, 90);
INSERT INTO public.planet VALUES ('p4', true, 4, NULL, 2, 3, 13);
INSERT INTO public.planet VALUES ('p5', true, 5, NULL, 3, 11, 123);
INSERT INTO public.planet VALUES ('p6', false, 6, NULL, 3, 11, 122);
INSERT INTO public.planet VALUES ('p7', true, 7, NULL, 4, 12, 444);
INSERT INTO public.planet VALUES ('p8', true, 8, NULL, 4, 55, 444);
INSERT INTO public.planet VALUES ('p9', true, 9, NULL, 5, 244, 4445);
INSERT INTO public.planet VALUES ('p10', true, 10, NULL, 6, 33, 333);
INSERT INTO public.planet VALUES ('p11', false, 11, NULL, 6, 99, 990);
INSERT INTO public.planet VALUES ('p12', true, 12, NULL, 6, 69, 890);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, false, 1, 140);
INSERT INTO public.star VALUES ('big sun', 2, false, 2, 154);
INSERT INTO public.star VALUES ('orange', 3, true, 3, 44);
INSERT INTO public.star VALUES ('blue', 4, true, 4, 450);
INSERT INTO public.star VALUES ('greenboi', 5, false, 5, 33);
INSERT INTO public.star VALUES ('fire', 6, false, 6, 4);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

