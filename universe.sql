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
    name character varying,
    galaxy_type text,
    stars integer NOT NULL,
    galaxy_id integer NOT NULL,
    description character varying(60)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying,
    moon_id integer NOT NULL,
    description text,
    age numeric NOT NULL,
    satelite boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying,
    planet_id integer NOT NULL,
    sisters numeric NOT NULL,
    description text,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying,
    star_id integer NOT NULL,
    speed integer NOT NULL,
    description text,
    stars integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: starship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starship (
    name character varying,
    starship_id integer NOT NULL,
    people_on integer NOT NULL,
    speed integer NOT NULL
);


ALTER TABLE public.starship OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'a', 100, 1, NULL);
INSERT INTO public.galaxy VALUES ('Cigarette', 'b', 50, 2, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 'c', 250, 3, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 'd', 125, 4, NULL);
INSERT INTO public.galaxy VALUES ('Blackeye', 'e', 225, 5, NULL);
INSERT INTO public.galaxy VALUES ('Sunflower', 'f', 85, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('a', 1, 'a', 2000, true, 1);
INSERT INTO public.moon VALUES ('b', 2, 'b', 12000, true, 2);
INSERT INTO public.moon VALUES ('c', 3, 'c', 20020, true, 3);
INSERT INTO public.moon VALUES ('d', 4, 'd', 120020, true, 4);
INSERT INTO public.moon VALUES ('e', 5, 'e', 22000, true, 5);
INSERT INTO public.moon VALUES ('f', 6, 'f', 120001, false, 6);
INSERT INTO public.moon VALUES ('g', 7, 'g', 200202, false, 7);
INSERT INTO public.moon VALUES ('h', 8, 'h', 1200208, false, 8);
INSERT INTO public.moon VALUES ('i', 9, 'i', 20009, false, 9);
INSERT INTO public.moon VALUES ('j', 10, 'j', 1200010, true, 10);
INSERT INTO public.moon VALUES ('k', 11, 'k', 2002011, true, 11);
INSERT INTO public.moon VALUES ('l', 12, 'l', 12002012, false, 12);
INSERT INTO public.moon VALUES ('m', 13, 'm', 2200012, true, 13);
INSERT INTO public.moon VALUES ('n', 14, 'n', 12000113, true, 14);
INSERT INTO public.moon VALUES ('o', 15, 'o', 200215, false, 15);
INSERT INTO public.moon VALUES ('p', 16, 'p', 1200216, false, 16);
INSERT INTO public.moon VALUES ('r', 17, 'r', 2200017, false, 17);
INSERT INTO public.moon VALUES ('s', 18, 's', 12000118, true, 18);
INSERT INTO public.moon VALUES ('t', 19, 't', 2002019, false, 19);
INSERT INTO public.moon VALUES ('u', 20, 'u', 1200220, true, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('a', 1, 6, 'a', true, 1);
INSERT INTO public.planet VALUES ('b', 2, 6, 'b', true, 2);
INSERT INTO public.planet VALUES ('c', 3, 6, 'c', true, 3);
INSERT INTO public.planet VALUES ('d', 4, 6, 'd', true, 4);
INSERT INTO public.planet VALUES ('e', 5, 6, 'e', true, 5);
INSERT INTO public.planet VALUES ('f', 6, 6, 'f', true, 6);
INSERT INTO public.planet VALUES ('g', 7, 6, 'g', false, 7);
INSERT INTO public.planet VALUES ('h', 8, 6, 'h', true, 8);
INSERT INTO public.planet VALUES ('i', 9, 6, 'i', false, 9);
INSERT INTO public.planet VALUES ('j', 10, 6, 'j', true, 10);
INSERT INTO public.planet VALUES ('k', 11, 6, 'k', true, 11);
INSERT INTO public.planet VALUES ('l', 12, 6, 'l', false, 12);
INSERT INTO public.planet VALUES ('m', 13, 6, 'm', true, 13);
INSERT INTO public.planet VALUES ('n', 14, 6, 'n', true, 14);
INSERT INTO public.planet VALUES ('o', 15, 6, 'o', true, 15);
INSERT INTO public.planet VALUES ('p', 16, 6, 'p', true, 16);
INSERT INTO public.planet VALUES ('r', 17, 6, 'r', true, 17);
INSERT INTO public.planet VALUES ('s', 18, 6, 's', true, 18);
INSERT INTO public.planet VALUES ('t', 19, 6, 't', false, 19);
INSERT INTO public.planet VALUES ('u', 20, 6, 'u', true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('a', 1, 100, 'a', 100);
INSERT INTO public.star VALUES ('b', 2, 50, 'b', 50);
INSERT INTO public.star VALUES ('c', 3, 250, 'c', 250);
INSERT INTO public.star VALUES ('d', 4, 125, 'd', 125);
INSERT INTO public.star VALUES ('e', 5, 225, 'e', 225);
INSERT INTO public.star VALUES ('f', 6, 85, 'f', 85);
INSERT INTO public.star VALUES ('m', 13, 100, 'm', 100);
INSERT INTO public.star VALUES ('n', 14, 50, 'n', 50);
INSERT INTO public.star VALUES ('o', 15, 250, 'o', 250);
INSERT INTO public.star VALUES ('p', 16, 125, 'p', 125);
INSERT INTO public.star VALUES ('r', 17, 225, 'r', 225);
INSERT INTO public.star VALUES ('s', 18, 125, 's', 125);
INSERT INTO public.star VALUES ('t', 7, 250, 't', 250);
INSERT INTO public.star VALUES ('h', 8, 100, 'h', 100);
INSERT INTO public.star VALUES ('i', 9, 115, 'i', 85);
INSERT INTO public.star VALUES ('j', 10, 85, 'j', 85);
INSERT INTO public.star VALUES ('k', 11, 50, 'k', 50);
INSERT INTO public.star VALUES ('l', 12, 125, 'l', 125);
INSERT INTO public.star VALUES ('u', 19, 250, 'u', 250);
INSERT INTO public.star VALUES ('v', 20, 100, 'v', 100);


--
-- Data for Name: starship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starship VALUES ('a', 1, 3, 100);
INSERT INTO public.starship VALUES ('b', 2, 6, 75);
INSERT INTO public.starship VALUES ('c', 3, 12, 140);


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
-- Name: galaxy galaxy_stars_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_stars_key UNIQUE (stars);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: starship starship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starship_name_key UNIQUE (name);


--
-- Name: starship starship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starship_pkey PRIMARY KEY (starship_id);


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
-- Name: star star_stars_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_stars_fkey FOREIGN KEY (stars) REFERENCES public.galaxy(stars);


--
-- PostgreSQL database dump complete
--

