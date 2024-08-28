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
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    celestial_bodies_id integer NOT NULL,
    name character varying(60),
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_bodies_celestial_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_bodies_celestial_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_bodies_celestial_bodies_id_seq OWNED BY public.celestial_bodies.celestial_bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean NOT NULL,
    description text
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
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean NOT NULL,
    description text,
    planet_id integer
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
    name character varying(60),
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean NOT NULL,
    description text,
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
    name character varying(60),
    has_life integer,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    is_spherical boolean NOT NULL,
    description text,
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
-- Name: celestial_bodies celestial_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies ALTER COLUMN celestial_bodies_id SET DEFAULT nextval('public.celestial_bodies_celestial_bodies_id_seq'::regclass);


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
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES (3, 'Himalia', 1, 19, 9, 11);
INSERT INTO public.celestial_bodies VALUES (6, 'Sinope', 5, 12, 8, 15);
INSERT INTO public.celestial_bodies VALUES (9, 'Himalia', 1, 19, 9, 11);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, ' Samanyolu', 131, 31, 54, true, 'Bizim gökadamız.');
INSERT INTO public.galaxy VALUES (2, ' Andromeda', 315, 32, 32, false, 'Genelde sadece Andromeda adıyla bilinir, ayrıca Andromeda Gökadası, Andromeda Bulutsusu, Büyük Andromeda Bulutsusu, Andromeda Sarmal Bulutsusu adlarıyla da bilinir. ');
INSERT INTO public.galaxy VALUES (3, ' Araba Tekeri Gökadası', 647, 131, 2, false, NULL);
INSERT INTO public.galaxy VALUES (4, ' Komet gökadası', 453, 23, 32, true, 'Kuyruklu yıldıza benzediği için bu adı almıştır.');
INSERT INTO public.galaxy VALUES (5, ' Küçük Macellan Bulutu', 46, 32, 3, false, 'This is named after Ferdinand Magellan');
INSERT INTO public.galaxy VALUES (6, ' Mayall nesnesi', 75, 24, 322, true, 'Bu adı kaşifi Nicholas U. Mayall olduğu için almıştır.');
INSERT INTO public.galaxy VALUES (7, ' Fırıldak gökadası', 878, 435, 131, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ay', 254, 73, 39, false, 'Dünya', 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 766, 39, 22, false, 'Mars', 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 903, 82, 81, true, 'Mars', 5);
INSERT INTO public.moon VALUES (4, 'Io', 572, 62, 57, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (5, 'Europa', 917, 93, 63, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (6, 'Ganymede', 420, 82, 47, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 241, 56, 61, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (8, 'Amalthea', 57, 78, 29, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (9, 'Himalia', 14, 46, 73, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (10, 'Elara', 961, 93, 1, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 68, 11, 21, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (12, 'Sinope', 715, 90, 33, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (13, 'Lysithea', 658, 52, 78, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (14, 'Carme', 667, 79, 47, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (15, 'Ananke', 934, 41, 45, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (16, 'Leda', 927, 93, 30, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (17, 'Thebe', 635, 20, 81, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (18, 'Adrastea', 736, 23, 1, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (19, 'Metis', 334, 34, 40, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 365, 51, 97, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (21, 'Themisto', 278, 77, 87, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (22, 'Megaclite', 329, 84, 63, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (23, 'Taygete', 941, 21, 8, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (24, 'Chaldene', 940, 96, 10, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (25, 'Harpalyke', 664, 87, 89, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (26, 'Kalyke', 80, 61, 77, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (27, 'Iocaste', 700, 9, 29, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (28, 'Erinome', 997, 36, 79, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (29, 'Isonoe', 212, 2, 62, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (30, 'Praxidike', 650, 77, 68, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (31, 'Autonoe', 833, 32, 49, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (32, 'Thyone', 32, 5, 44, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (33, 'Hermippe', 736, 21, 64, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (34, 'Aitne', 242, 44, 90, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (35, 'Eurydome', 776, 69, 94, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (36, 'Euanthe', 514, 78, 28, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (37, 'Euporie', 32, 50, 58, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (38, 'Orthosie', 776, 19, 49, false, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (39, 'Sponde', 240, 97, 54, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (40, 'Kale', 666, 27, 93, true, 'Jüpiter', 6);
INSERT INTO public.moon VALUES (41, 'Pasithee', 268, 96, 77, false, 'Jüpiter', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Piscium b', 478, 73, 9, true, 'Gama Cygni', 16);
INSERT INTO public.planet VALUES (2, 'Mercury', 567, 58, 2, false, 'Kappa Orionis', 15);
INSERT INTO public.planet VALUES (3, 'Venus', 676, 68, 8, false, 'Tau Pegasi', 1);
INSERT INTO public.planet VALUES (4, 'Earth', 19, 56, 8, true, 'Teta Scorpii', 6);
INSERT INTO public.planet VALUES (5, 'Mars', 697, 75, 3, false, 'Delta Herculis', 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', 735, 16, 6, true, 'Teta Ursae Majoris', 2);
INSERT INTO public.planet VALUES (7, 'Saturn', 853, 16, 8, false, 'Epsilon Leporis', 12);
INSERT INTO public.planet VALUES (8, 'Uranus', 176, 35, 9, false, '53 Eridani', 17);
INSERT INTO public.planet VALUES (9, 'Neptune', 126, 26, 3, false, 'Beta Pegasi', 10);
INSERT INTO public.planet VALUES (10, 'Ceres', 741, 6, 6, true, 'Delta Capricorni', 10);
INSERT INTO public.planet VALUES (11, 'Pluto', 76, 80, 6, false, 'Alfa Cassiopeiae', 22);
INSERT INTO public.planet VALUES (12, 'Orcus', 9, 94, 7, true, 'Epsilon Cassiopeiae', 6);
INSERT INTO public.planet VALUES (13, 'Quaoar', 724, 24, 1, false, 'Gama Boötis', 26);
INSERT INTO public.planet VALUES (14, 'Makemake', 525, 12, 9, false, 'Alfa Sagittae', 3);
INSERT INTO public.planet VALUES (15, 'Haumea', 22, 77, 6, true, 'Lambda Scorpii', 16);
INSERT INTO public.planet VALUES (16, 'Gonggong', 252, 35, 8, false, 'Beta Lyrae', 5);
INSERT INTO public.planet VALUES (17, 'Eris', 518, 94, 2, false, 'Beta Arietis', 9);
INSERT INTO public.planet VALUES (18, 'Sedna', 906, 18, 3, false, 'Zeta Tauri', 17);
INSERT INTO public.planet VALUES (19, 'Vulcan', 630, 30, 6, true, 'Nu Ophiuchi', 4);
INSERT INTO public.planet VALUES (20, 'Antichthon', 795, 96, 7, false, 'Alfa Canis Majoris', 19);
INSERT INTO public.planet VALUES (21, 'Nibiru', 669, 2, 1, false, 'Kappa Aquarii', 17);
INSERT INTO public.planet VALUES (22, 'Theia', 346, 30, 9, true, 'Delta Aquarii', 28);
INSERT INTO public.planet VALUES (23, 'Phaeton', 826, 79, 3, false, 'Alfa Virginis', 12);
INSERT INTO public.planet VALUES (24, 'Fifth Giant', 345, 77, 1, false, '22 Tauri', 12);
INSERT INTO public.planet VALUES (25, 'Planet 9', 797, 35, 3, true, 'Alfa Delphini', 17);
INSERT INTO public.planet VALUES (26, 'Planet 10', 849, 81, 5, true, 'Omicron Leonis', 20);
INSERT INTO public.planet VALUES (27, 'Nemesis', 17, 14, 4, false, 'Lambda Velorum', 15);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sadr', 417, 5, 97, true, 'Gama Cygni', 3);
INSERT INTO public.star VALUES (2, 'Saiph', 715, 8, 9, false, 'Kappa Orionis', 2);
INSERT INTO public.star VALUES (3, 'Salm', 978, 1, 44, false, 'Tau Pegasi', 5);
INSERT INTO public.star VALUES (4, 'Sargas', 739, 3, 53, true, 'Teta Scorpii', 3);
INSERT INTO public.star VALUES (5, 'Sarin', 498, 3, 96, false, 'Delta Herculis', 4);
INSERT INTO public.star VALUES (6, 'Sarir', 708, 4, 12, true, 'Teta Ursae Majoris', 4);
INSERT INTO public.star VALUES (7, 'Sasin', 216, 4, 2, false, 'Epsilon Leporis', 6);
INSERT INTO public.star VALUES (8, 'Sceptrum', 349, 6, 61, false, '53 Eridani', 5);
INSERT INTO public.star VALUES (9, 'Scheat', 161, 4, 1, false, 'Beta Pegasi', 5);
INSERT INTO public.star VALUES (10, 'Scheddi', 749, 8, 84, true, 'Delta Capricorni', 3);
INSERT INTO public.star VALUES (11, 'Schedir veya Schedar', 66, 2, 76, false, 'Alfa Cassiopeiae', 5);
INSERT INTO public.star VALUES (12, 'Segin', 885, 8, 21, true, 'Epsilon Cassiopeiae', 1);
INSERT INTO public.star VALUES (13, 'Seginus', 510, 8, 71, false, 'Gama Boötis', 6);
INSERT INTO public.star VALUES (14, 'Sham', 31, 1, 31, false, 'Alfa Sagittae', 1);
INSERT INTO public.star VALUES (15, 'Shaula', 3, 2, 85, true, 'Lambda Scorpii', 3);
INSERT INTO public.star VALUES (16, 'Sheliak', 168, 5, 32, false, 'Beta Lyrae', 5);
INSERT INTO public.star VALUES (17, 'Sheratan', 815, 1, 18, false, 'Beta Arietis', 5);
INSERT INTO public.star VALUES (18, 'Shurnarkabtishashutu', 488, 6, 59, false, 'Zeta Tauri', 5);
INSERT INTO public.star VALUES (19, 'Sinistra', 43, 9, 8, true, 'Nu Ophiuchi', 1);
INSERT INTO public.star VALUES (20, 'Sirius', 893, 5, 4, false, 'Alfa Canis Majoris', 1);
INSERT INTO public.star VALUES (21, 'Situla', 874, 5, 24, false, 'Kappa Aquarii', 6);
INSERT INTO public.star VALUES (22, 'Skat', 498, 2, 11, true, 'Delta Aquarii', 1);
INSERT INTO public.star VALUES (23, 'Spica', 18, 1, 22, false, 'Alfa Virginis', 6);
INSERT INTO public.star VALUES (24, 'Sterope II', 944, 3, 35, false, '22 Tauri', 6);
INSERT INTO public.star VALUES (25, 'Sualocin', 561, 1, 41, true, 'Alfa Delphini', 5);
INSERT INTO public.star VALUES (26, 'Subra', 507, 6, 35, true, 'Omicron Leonis', 6);
INSERT INTO public.star VALUES (27, 'Suhail', 830, 2, 10, false, 'Lambda Velorum', 5);
INSERT INTO public.star VALUES (28, 'Sulafat', 86, 8, 42, false, 'Gama Lyrae', 6);


--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_bodies_celestial_bodies_id_seq', 12, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 41, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 27, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: celestial_bodies celestial_bodies_celestial_bodies_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_celestial_bodies_id_key UNIQUE (celestial_bodies_id);


--
-- Name: celestial_bodies celestial_bodies_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_id UNIQUE (celestial_bodies_id);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


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
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: celestial_bodies celestial_bodies_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: celestial_bodies celestial_bodies_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: celestial_bodies celestial_bodies_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: celestial_bodies celestial_bodies_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

