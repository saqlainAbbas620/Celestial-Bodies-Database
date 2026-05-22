--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(100) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    number_of_planets integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    orbital_period_in_days integer,
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
    name character varying(100) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    number_of_moons integer,
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
    name character varying(100) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    temperature integer,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 'Our home galaxy containing the Solar System.', 0.00, 13600, 8);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, true, 'The nearest large galaxy to the Milky Way.', 2.54, 10000, 12);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, true, 'A smaller spiral galaxy in the Local Group.', 2.73, 12000, 4);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', false, true, 'A classic spiral galaxy interacting with a smaller companion.', 23.00, 400, 6);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, true, 'Unusual for its brilliant white core and thick dust lane.', 28.00, 13240, 15);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', false, false, 'A satellite galaxy of the Milky Way with an irregular shape.', 0.16, 13001, 2);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'Disk-shaped with spiral arms');
INSERT INTO public.galaxy_type VALUES (2, 'Elliptical', 'Smooth, featureless egg-shaped galaxies');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular', 'No distinct regular shape');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'The Moon', false, true, 'Earth''s only natural satellite.', 0.00257, 4500, 27, 1);
INSERT INTO public.moon VALUES (5, 'Phobos', false, false, 'The larger of the two Martian moons.', 0.52, 4500, 0, 2);
INSERT INTO public.moon VALUES (6, 'Deimos', false, false, 'The smaller and outermost moon of Mars.', 0.52, 4500, 1, 2);
INSERT INTO public.moon VALUES (7, 'Io', false, true, 'The most volcanically active world in the solar system.', 4.20, 4503, 1, 5);
INSERT INTO public.moon VALUES (8, 'Europa', false, true, 'Features a subsurface ocean under a thick ice crust.', 4.20, 4503, 3, 5);
INSERT INTO public.moon VALUES (9, 'Ganymede', false, true, 'The largest moon in the solar system, bigger than Mercury.', 4.20, 4503, 7, 5);
INSERT INTO public.moon VALUES (10, 'Callisto', false, true, 'A heavily cratered, ancient ice world.', 4.20, 4503, 16, 5);
INSERT INTO public.moon VALUES (11, 'Titan', false, true, 'Has a dense atmosphere and liquid methane lakes.', 8.00, 4503, 15, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', false, true, 'A highly cratered icy body with no atmosphere.', 8.00, 4503, 4, 6);
INSERT INTO public.moon VALUES (13, 'Lapetus', false, true, 'Features a distinctive two-toned dark and light coloring.', 8.00, 4503, 79, 6);
INSERT INTO public.moon VALUES (14, 'Dione', false, true, 'An icy moon with heavily cratered terrains.', 8.00, 4503, 2, 6);
INSERT INTO public.moon VALUES (15, 'Tethys', false, true, 'Composed almost entirely of water ice.', 8.00, 4503, 1, 6);
INSERT INTO public.moon VALUES (16, 'Enceladus', false, true, 'Shoots plumes of water vapor out into space.', 8.00, 4503, 1, 6);
INSERT INTO public.moon VALUES (17, 'Mimas', false, true, 'Features a giant impact crater making it look like the Death Star.', 8.00, 4503, 0, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', false, true, 'Has an extreme, pieced-together geologic terrain.', 18.20, 4503, 1, 6);
INSERT INTO public.moon VALUES (19, 'Ariel', false, true, 'The brightest moon orbiting Uranus.', 18.20, 4503, 2, 6);
INSERT INTO public.moon VALUES (20, 'Umbriel', false, true, 'The darkest of the large Uranian moons.', 18.20, 4503, 4, 6);
INSERT INTO public.moon VALUES (21, 'Titania', false, true, 'The largest moon of Uranus.', 18.20, 4503, 8, 6);
INSERT INTO public.moon VALUES (22, 'Oberon', false, true, 'The outermost large moon of Uranus.', 18.20, 4503, 13, 6);
INSERT INTO public.moon VALUES (23, 'Triton', false, true, 'Orbits Neptune backwards in a retrograde path.', 29.00, 4503, 5, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 'The third planet from the Sun and our home.', 0.00, 4540, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, true, 'The second-smallest planet in the Solar System, often called the Red Planet.', 0.52, 4600, 2, 1);
INSERT INTO public.planet VALUES (3, 'Proxima Centauri b', false, true, 'A super-Earth exoplanet orbiting within the habitable zone of Proxima Centauri.', 4.24, 4850, 0, 2);
INSERT INTO public.planet VALUES (4, 'Mercury', false, true, 'The smallest planet and closest to the Sun.', 0.61, 4503, 0, 1);
INSERT INTO public.planet VALUES (5, 'Venus', false, true, 'The second planet from the Sun, with a toxic atmosphere.', 0.28, 4503, 0, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, true, 'The largest planet in our Solar System, a gas giant.', 4.20, 4503, 95, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', false, true, 'Famous for its extensive and beautiful ring system.', 8.00, 4503, 146, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, true, 'An ice giant with a unique sideways rotation axis.', 18.20, 4503, 28, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', false, true, 'The most distant planet from the Sun, dark and cold.', 29.00, 4503, 16, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', false, true, 'A mini-Neptune exoplanet orbiting Proxima Centauri.', 4.24, 4850, 0, 2);
INSERT INTO public.planet VALUES (11, 'Sirius b Prime', false, true, 'A hypothetical rocky world near Sirius A.', 8.60, 242, 0, 3);
INSERT INTO public.planet VALUES (12, 'Betelgeuse Prime', false, true, 'A scorched, doomed planet close to a red supergiant.', 642.50, 8, 5, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, true, 'The star at the center of our Solar System.', 0.000016, 4600, 5778, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', false, true, 'The closest known star to the Sun.', 4.24, 4850, 3042, 1);
INSERT INTO public.star VALUES (3, 'Sirius A', false, true, 'The brightest star in the night sky.', 8.60, 242, 9940, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', false, true, 'A massive red supergiant nearing the end of its life.', 642.50, 8, 3500, 1);
INSERT INTO public.star VALUES (5, 'Rigel', false, true, 'A blue supergiant star and the brightest in the constellation Orion.', 860.00, 8, 12100, 1);
INSERT INTO public.star VALUES (6, 'Andromeda Beta', false, true, 'A bright giant star located in the Andromeda galaxy.', 199.00, 150, 4700, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: galaxy_type uq_galaxy_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT uq_galaxy_type_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


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

