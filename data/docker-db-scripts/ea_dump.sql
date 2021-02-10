--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Debian 10.5-1.pgdg80+1)
-- Dumped by pg_dump version 10.5 (Debian 10.5-1.pgdg80+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: condition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condition (
    condition_id bigint NOT NULL,
    name character varying(80),
    figure_id bigint NOT NULL
);


ALTER TABLE public.condition OWNER TO eauser;

--
-- Name: condition_condition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.condition_condition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.condition_condition_id_seq OWNER TO eauser;

--
-- Name: condition_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.condition_condition_id_seq OWNED BY public.condition.condition_id;


--
-- Name: condition_figure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.condition_figure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.condition_figure_id_seq OWNER TO eauser;

--
-- Name: condition_figure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.condition_figure_id_seq OWNED BY public.condition.figure_id;


--
-- Name: figure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.figure (
    figure_id bigint NOT NULL,
    figure_name character varying(80),
    cube_stage_name character varying(80),
    project_id bigint NOT NULL
);


ALTER TABLE public.figure OWNER TO eauser;

--
-- Name: figure_figure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.figure_figure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.figure_figure_id_seq OWNER TO eauser;

--
-- Name: figure_figure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.figure_figure_id_seq OWNED BY public.figure.figure_id;


--
-- Name: figure_layer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.figure_layer (
    figure_layer_id bigint NOT NULL,
    figure_id bigint NOT NULL,
    layer_id bigint NOT NULL
);


ALTER TABLE public.figure_layer OWNER TO eauser;

--
-- Name: figure_layer_figure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.figure_layer_figure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.figure_layer_figure_id_seq OWNER TO eauser;

--
-- Name: figure_layer_figure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.figure_layer_figure_id_seq OWNED BY public.figure_layer.figure_id;


--
-- Name: figure_layer_figure_layer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.figure_layer_figure_layer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.figure_layer_figure_layer_id_seq OWNER TO eauser;

--
-- Name: figure_layer_figure_layer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.figure_layer_figure_layer_id_seq OWNED BY public.figure_layer.figure_layer_id;


--
-- Name: figure_layer_layer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.figure_layer_layer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.figure_layer_layer_id_seq OWNER TO eauser;

--
-- Name: figure_layer_layer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.figure_layer_layer_id_seq OWNED BY public.figure_layer.layer_id;


--
-- Name: figure_project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.figure_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.figure_project_id_seq OWNER TO eauser;

--
-- Name: figure_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.figure_project_id_seq OWNED BY public.figure.project_id;


--
-- Name: layer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layer (
    layer_id bigint NOT NULL,
    image_file_name character varying(80),
    image_width integer,
    image_height integer,
    cube_ordinal integer,
    img_ordinal integer,
    layer_type_id bigint NOT NULL,
    layer_info_id bigint NOT NULL
);


ALTER TABLE public.layer OWNER TO eauser;

--
-- Name: layer_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layer_info (
    layer_info_id bigint NOT NULL,
    name character varying(80),
    description text,
    bg_color character varying(80),
    organ character varying(80)
);


ALTER TABLE public.layer_info OWNER TO eauser;

--
-- Name: layer_info_layer_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.layer_info_layer_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layer_info_layer_info_id_seq OWNER TO eauser;

--
-- Name: layer_info_layer_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.layer_info_layer_info_id_seq OWNED BY public.layer_info.layer_info_id;


--
-- Name: layer_layer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.layer_layer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layer_layer_id_seq OWNER TO eauser;

--
-- Name: layer_layer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.layer_layer_id_seq OWNED BY public.layer.layer_id;


--
-- Name: layer_layer_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.layer_layer_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layer_layer_info_id_seq OWNER TO eauser;

--
-- Name: layer_layer_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.layer_layer_info_id_seq OWNED BY public.layer.layer_info_id;


--
-- Name: layer_layer_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.layer_layer_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layer_layer_type_id_seq OWNER TO eauser;

--
-- Name: layer_layer_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.layer_layer_type_id_seq OWNED BY public.layer.layer_type_id;


--
-- Name: layer_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.layer_type (
    layer_type_id bigint NOT NULL,
    layer_type character varying(80) NOT NULL
);


ALTER TABLE public.layer_type OWNER TO eauser;

--
-- Name: layer_type_layer_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.layer_type_layer_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layer_type_layer_type_id_seq OWNER TO eauser;

--
-- Name: layer_type_layer_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.layer_type_layer_type_id_seq OWNED BY public.layer_type.layer_type_id;


--
-- Name: organism; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organism (
    organism_id bigint NOT NULL,
    species character varying(80) NOT NULL,
    variety character varying(80),
    description text
);


ALTER TABLE public.organism OWNER TO eauser;

--
-- Name: organism_organism_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organism_organism_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organism_organism_id_seq OWNER TO eauser;

--
-- Name: organism_organism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organism_organism_id_seq OWNED BY public.organism.organism_id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    project_id bigint NOT NULL,
    name character varying(80) NOT NULL,
    description text,
    contact character varying(80),
    expr_unit character varying(80),
    indexed_dir character varying(80),
    ordinal integer,
    blast_db character varying(80),
    organism_id bigint NOT NULL
);


ALTER TABLE public.project OWNER TO eauser;

--
-- Name: project_organism_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_organism_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_organism_id_seq OWNER TO eauser;

--
-- Name: project_organism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_organism_id_seq OWNED BY public.project.organism_id;


--
-- Name: project_project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_project_id_seq OWNER TO eauser;

--
-- Name: project_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_project_id_seq OWNED BY public.project.project_id;


--
-- Name: condition condition_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condition ALTER COLUMN condition_id SET DEFAULT nextval('public.condition_condition_id_seq'::regclass);


--
-- Name: condition figure_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condition ALTER COLUMN figure_id SET DEFAULT nextval('public.condition_figure_id_seq'::regclass);


--
-- Name: figure figure_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure ALTER COLUMN figure_id SET DEFAULT nextval('public.figure_figure_id_seq'::regclass);


--
-- Name: figure project_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure ALTER COLUMN project_id SET DEFAULT nextval('public.figure_project_id_seq'::regclass);


--
-- Name: figure_layer figure_layer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure_layer ALTER COLUMN figure_layer_id SET DEFAULT nextval('public.figure_layer_figure_layer_id_seq'::regclass);


--
-- Name: figure_layer figure_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure_layer ALTER COLUMN figure_id SET DEFAULT nextval('public.figure_layer_figure_id_seq'::regclass);


--
-- Name: figure_layer layer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure_layer ALTER COLUMN layer_id SET DEFAULT nextval('public.figure_layer_layer_id_seq'::regclass);


--
-- Name: layer layer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer ALTER COLUMN layer_id SET DEFAULT nextval('public.layer_layer_id_seq'::regclass);


--
-- Name: layer layer_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer ALTER COLUMN layer_type_id SET DEFAULT nextval('public.layer_layer_type_id_seq'::regclass);


--
-- Name: layer layer_info_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer ALTER COLUMN layer_info_id SET DEFAULT nextval('public.layer_layer_info_id_seq'::regclass);


--
-- Name: layer_info layer_info_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_info ALTER COLUMN layer_info_id SET DEFAULT nextval('public.layer_info_layer_info_id_seq'::regclass);


--
-- Name: layer_type layer_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_type ALTER COLUMN layer_type_id SET DEFAULT nextval('public.layer_type_layer_type_id_seq'::regclass);


--
-- Name: organism organism_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organism ALTER COLUMN organism_id SET DEFAULT nextval('public.organism_organism_id_seq'::regclass);


--
-- Name: project project_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project ALTER COLUMN project_id SET DEFAULT nextval('public.project_project_id_seq'::regclass);


--
-- Name: project organism_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project ALTER COLUMN organism_id SET DEFAULT nextval('public.project_organism_id_seq'::regclass);


--
-- Data for Name: condition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.condition (condition_id, name, figure_id) FROM stdin;
1		1
\.


--
-- Data for Name: figure; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.figure (figure_id, figure_name, cube_stage_name, project_id) FROM stdin;
1	layer1_Flowers	layer1	1
\.


--
-- Data for Name: figure_layer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.figure_layer (figure_layer_id, figure_id, layer_id) FROM stdin;
1	1	1
2	1	2
3	1	3
\.


--
-- Data for Name: layer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layer (layer_id, image_file_name, image_width, image_height, cube_ordinal, img_ordinal, layer_type_id, layer_info_id) FROM stdin;
1	nicotiana.png	280	250	70	70	1	1
2	nicot_Flowers.png	280	250	700	700	2	2
3	nicot_Root_Control.png	280	250	710	710	2	3
\.


--
-- Data for Name: layer_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layer_info (layer_info_id, name, description, bg_color, organ) FROM stdin;
1	layer1		#dfb6ed	plant
2	Flowers			plant
3	root			plant
\.


--
-- Data for Name: layer_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.layer_type (layer_type_id, layer_type) FROM stdin;
1	stage
2	tissue
\.


--
-- Data for Name: organism; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organism (organism_id, species, variety, description) FROM stdin;
1	species 1	 	\N
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (project_id, name, description, contact, expr_unit, indexed_dir, ordinal, blast_db, organism_id) FROM stdin;
1	species 1	Data belongs ATC Project	 	FPKM	species_index	10	\N	1
\.


--
-- Name: condition_condition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condition_condition_id_seq', 1, true);


--
-- Name: condition_figure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condition_figure_id_seq', 1, false);


--
-- Name: figure_figure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.figure_figure_id_seq', 1, true);


--
-- Name: figure_layer_figure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.figure_layer_figure_id_seq', 1, false);


--
-- Name: figure_layer_figure_layer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.figure_layer_figure_layer_id_seq', 3, true);


--
-- Name: figure_layer_layer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.figure_layer_layer_id_seq', 1, false);


--
-- Name: figure_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.figure_project_id_seq', 1, false);


--
-- Name: layer_info_layer_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.layer_info_layer_info_id_seq', 3, true);


--
-- Name: layer_layer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.layer_layer_id_seq', 3, true);


--
-- Name: layer_layer_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.layer_layer_info_id_seq', 1, false);


--
-- Name: layer_layer_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.layer_layer_type_id_seq', 1, false);


--
-- Name: layer_type_layer_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.layer_type_layer_type_id_seq', 2, true);


--
-- Name: organism_organism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organism_organism_id_seq', 1, true);


--
-- Name: project_organism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_organism_id_seq', 1, false);


--
-- Name: project_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_project_id_seq', 1, true);


--
-- Name: condition condition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condition
    ADD CONSTRAINT condition_pkey PRIMARY KEY (condition_id);


--
-- Name: figure_layer figure_layer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure_layer
    ADD CONSTRAINT figure_layer_pkey PRIMARY KEY (figure_layer_id);


--
-- Name: figure figure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure
    ADD CONSTRAINT figure_pkey PRIMARY KEY (figure_id);


--
-- Name: layer_info layer_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_info
    ADD CONSTRAINT layer_info_pkey PRIMARY KEY (layer_info_id);


--
-- Name: layer layer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer
    ADD CONSTRAINT layer_pkey PRIMARY KEY (layer_id);


--
-- Name: layer_type layer_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer_type
    ADD CONSTRAINT layer_type_pkey PRIMARY KEY (layer_type_id);


--
-- Name: organism organism_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT organism_pkey PRIMARY KEY (organism_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (project_id);


--
-- Name: condition condition_figure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condition
    ADD CONSTRAINT condition_figure_id_fkey FOREIGN KEY (figure_id) REFERENCES public.figure(figure_id);


--
-- Name: figure_layer figure_layer_figure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure_layer
    ADD CONSTRAINT figure_layer_figure_id_fkey FOREIGN KEY (figure_id) REFERENCES public.figure(figure_id);


--
-- Name: figure_layer figure_layer_layer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure_layer
    ADD CONSTRAINT figure_layer_layer_id_fkey FOREIGN KEY (layer_id) REFERENCES public.layer(layer_id);


--
-- Name: figure figure_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.figure
    ADD CONSTRAINT figure_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(project_id);


--
-- Name: layer layer_layer_info_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer
    ADD CONSTRAINT layer_layer_info_id_fkey FOREIGN KEY (layer_info_id) REFERENCES public.layer_info(layer_info_id);


--
-- Name: layer layer_layer_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.layer
    ADD CONSTRAINT layer_layer_type_id_fkey FOREIGN KEY (layer_type_id) REFERENCES public.layer_type(layer_type_id);


--
-- Name: project project_organism_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_organism_id_fkey FOREIGN KEY (organism_id) REFERENCES public.organism(organism_id);


--
-- Name: TABLE condition; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.condition TO eauser;


--
-- Name: TABLE figure; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.figure TO eauser;


--
-- Name: TABLE figure_layer; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.figure_layer TO eauser;


--
-- Name: TABLE layer; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.layer TO eauser;


--
-- Name: TABLE layer_info; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.layer_info TO eauser;


--
-- Name: TABLE layer_type; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.layer_type TO eauser;


--
-- Name: TABLE organism; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.organism TO eauser;


--
-- Name: TABLE project; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.project TO eauser;


--
-- PostgreSQL database dump complete
--

