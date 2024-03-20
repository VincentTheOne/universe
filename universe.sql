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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    galaxy_id integer NOT NULL,
    number_of_stars integer NOT NULL,
    galaxy_size integer NOT NULL,
    galaxy_type character varying(50),
    supercluster_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50),
    moon_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    orbiting_planet boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50),
    planet_id integer NOT NULL,
    number_of_moons integer,
    distance_from_earth numeric NOT NULL,
    description text,
    has_moon boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50),
    star_id integer NOT NULL,
    star_size integer NOT NULL,
    number_of_planets integer,
    distance_from_eart integer NOT NULL,
    has_planet boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: supercluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supercluster (
    number_of_galaxies integer NOT NULL,
    supercluster_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.supercluster OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 0, 400, 27, 'Sbc', 0);
INSERT INTO public.galaxy VALUES ('Andromeda', 1, 420, 30, 'SAb', 0);
INSERT INTO public.galaxy VALUES ('Antennae', 2, 234, 12, 'Sbm', 1);
INSERT INTO public.galaxy VALUES ('Backward', 3, 268, 21, 'SAab', 1);
INSERT INTO public.galaxy VALUES ('Bear Paw', 4, 125, 15, 'SBdm', 2);
INSERT INTO public.galaxy VALUES ('Black Eye', 5, 300, 27, 'SAab', 2);
INSERT INTO public.galaxy VALUES ('Butterfly', 6, 231, 20, 'SAbc', 3);
INSERT INTO public.galaxy VALUES ('Eye of God', 7, 310, 29, 'SABc', 3);
INSERT INTO public.galaxy VALUES ('Hoags Object', 8, 400, 38, 'SA0a', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 0, 1, true, true, 'Our moon', 0);
INSERT INTO public.moon VALUES ('Titan', 1, 2, true, true, 'Coolest moon name contender', 1);
INSERT INTO public.moon VALUES ('Colossus', 2, 3, true, true, 'I made it up and it sounds great', 1);
INSERT INTO public.moon VALUES ('Llama', 3, 4, true, true, 'I made it up and it sounds great', 2);
INSERT INTO public.moon VALUES ('Phoebe', 4, 5, true, true, 'Im sorry its 11pm and Im tired', 2);
INSERT INTO public.moon VALUES ('Chungus', 5, 6, true, true, 'This one is defo spehical', 2);
INSERT INTO public.moon VALUES ('Slimmy', 6, 7, false, true, 'This one is not spehical', 2);
INSERT INTO public.moon VALUES ('Mystara', 7, 8, true, true, 'I used a random name generator for this', 2);
INSERT INTO public.moon VALUES ('Zoraxia', 8, 8, true, true, 'This planet has a lot of moons huh', 2);
INSERT INTO public.moon VALUES ('Celadria', 9, 8, true, true, 'I should have used constraints to limit the number of moons to planets as they are in the other table', 2);
INSERT INTO public.moon VALUES ('Crescenta', 10, 8, false, true, 'You win some you lose some', 2);
INSERT INTO public.moon VALUES ('Astoril', 11, 8, false, true, 'There is nothing we can do', 2);
INSERT INTO public.moon VALUES ('Aegis', 12, 8, true, true, 'Fine I skipped to the next planet', 3);
INSERT INTO public.moon VALUES ('Nova', 13, 8, true, true, 'I do have to admit there are some pretty cool planets though', 3);
INSERT INTO public.moon VALUES ('J1407b', 14, 8, true, true, 'There is this planet called J1407b and its so beautiful', 3);
INSERT INTO public.moon VALUES ('Dreams', 15, 8, true, true, 'I really hope I will get to go to space in my lifetime', 3);
INSERT INTO public.moon VALUES ('Ignis', 16, 8, true, true, 'That would be amazing', 3);
INSERT INTO public.moon VALUES ('Orboros', 17, 8, true, true, 'But first I must learn databases', 3);
INSERT INTO public.moon VALUES ('Ryzon', 18, 8, true, true, 'Because I love data', 3);
INSERT INTO public.moon VALUES ('Jovorin', 19, 8, true, true, 'Do you think I can land an internship as a Data Analyst if I keep being persistent', 3);
INSERT INTO public.moon VALUES ('Sandman', 20, 8, true, true, 'That will be the last description', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Terra', 0, 1, 0, 'Earth', true, 0);
INSERT INTO public.planet VALUES ('Venus', 1, 0, 1, 'Second planet from sun', true, 0);
INSERT INTO public.planet VALUES ('Mercury', 2, 0, 1, 'Closest planet to the Sun in our solar system', true, 0);
INSERT INTO public.planet VALUES ('Mars', 3, 0, 1, 'The red planet', true, 0);
INSERT INTO public.planet VALUES ('Jupiter', 4, 0, 1, 'Largest planet in our solar system', true, 0);
INSERT INTO public.planet VALUES ('Saturn', 6, 0, 1, 'Has a really cool ring', true, 0);
INSERT INTO public.planet VALUES ('Uranus', 7, 0, 1, 'Has a funny name', true, 0);
INSERT INTO public.planet VALUES ('Neptune', 8, 0, 1, 'Really blue', true, 0);
INSERT INTO public.planet VALUES ('Pluto', 9, 0, 1, 'Not real', true, 0);
INSERT INTO public.planet VALUES ('Delphini b', 10, 1, 10, 'Sounds cool', true, 1);
INSERT INTO public.planet VALUES ('Herculis b', 11, 1, 10, 'Sounds cool', true, 1);
INSERT INTO public.planet VALUES ('Andromedae b', 12, 1, 11, 'Sounds cooler', true, 1);
INSERT INTO public.planet VALUES ('Cygni Bb', 13, 1, 11, 'Has to b-s in it', true, 1);
INSERT INTO public.planet VALUES ('Kepler', 14, 1, 11, 'Epic name for a planet', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sol', 0, 696, 8, 1, true, 0);
INSERT INTO public.star VALUES ('Sirius', 1, 632, 4, 23, true, 0);
INSERT INTO public.star VALUES ('Arcturus', 2, 327, 10, 34, true, 0);
INSERT INTO public.star VALUES ('Altair', 3, 201, 4, 53, true, 1);
INSERT INTO public.star VALUES ('Pollux', 4, 125, 9, 83, true, 1);
INSERT INTO public.star VALUES ('Gacrux', 5, 251, 4, 121, true, 1);
INSERT INTO public.star VALUES ('Vega', 6, 242, 7, 180, true, 1);
INSERT INTO public.star VALUES ('Capella', 7, 324, 14, 222, true, 1);


--
-- Data for Name: supercluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supercluster VALUES (100, 0, 'Virgo');
INSERT INTO public.supercluster VALUES (43, 1, 'Shapley');
INSERT INTO public.supercluster VALUES (64, 2, 'Laniakea');
INSERT INTO public.supercluster VALUES (76, 3, 'Hercules');
INSERT INTO public.supercluster VALUES (39, 4, 'Hydra-Centaurus');
INSERT INTO public.supercluster VALUES (25, 5, 'Coma');
INSERT INTO public.supercluster VALUES (124, 6, 'Hyperion');
INSERT INTO public.supercluster VALUES (74, 7, 'Perseus-Pisces');
INSERT INTO public.supercluster VALUES (67, 8, 'Caelum');
INSERT INTO public.supercluster VALUES (32, 9, 'Vela');


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
-- Name: supercluster supercluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_name_key UNIQUE (name);


--
-- Name: supercluster supercluster_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_name_key1 UNIQUE (name);


--
-- Name: supercluster supercluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_pkey PRIMARY KEY (supercluster_id);


--
-- Name: supercluster supercluster_supercluster_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supercluster
    ADD CONSTRAINT supercluster_supercluster_id_key UNIQUE (supercluster_id);


--
-- Name: galaxy galaxy_supercluster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_supercluster_id_fkey FOREIGN KEY (supercluster_id) REFERENCES public.supercluster(supercluster_id);


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

