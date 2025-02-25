--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-25 16:10:30

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 16418)
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alunos (
    id integer NOT NULL,
    nome character varying(150) NOT NULL,
    data_nascimento date NOT NULL
);


ALTER TABLE public.alunos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16417)
-- Name: alunos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alunos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alunos_id_seq OWNER TO postgres;

--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 221
-- Name: alunos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alunos_id_seq OWNED BY public.alunos.id;


--
-- TOC entry 220 (class 1259 OID 16406)
-- Name: disciplinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplinas (
    id integer NOT NULL,
    nome character varying(150) NOT NULL,
    carga_horaria integer,
    professor_id integer
);


ALTER TABLE public.disciplinas OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16405)
-- Name: disciplinas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.disciplinas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.disciplinas_id_seq OWNER TO postgres;

--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 219
-- Name: disciplinas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.disciplinas_id_seq OWNED BY public.disciplinas.id;


--
-- TOC entry 224 (class 1259 OID 16425)
-- Name: matriculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matriculas (
    id integer NOT NULL,
    aluno_id integer,
    disciplinas_id integer,
    data_matricula date NOT NULL
);


ALTER TABLE public.matriculas OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16424)
-- Name: matriculas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matriculas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.matriculas_id_seq OWNER TO postgres;

--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 223
-- Name: matriculas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matriculas_id_seq OWNED BY public.matriculas.id;


--
-- TOC entry 218 (class 1259 OID 16398)
-- Name: professores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professores (
    id integer NOT NULL,
    nome character varying(150) NOT NULL,
    departamento character varying(100) NOT NULL
);


ALTER TABLE public.professores OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16397)
-- Name: professores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.professores_id_seq OWNER TO postgres;

--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 217
-- Name: professores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professores_id_seq OWNED BY public.professores.id;


--
-- TOC entry 4712 (class 2604 OID 16421)
-- Name: alunos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos ALTER COLUMN id SET DEFAULT nextval('public.alunos_id_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 16409)
-- Name: disciplinas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplinas ALTER COLUMN id SET DEFAULT nextval('public.disciplinas_id_seq'::regclass);


--
-- TOC entry 4713 (class 2604 OID 16428)
-- Name: matriculas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas ALTER COLUMN id SET DEFAULT nextval('public.matriculas_id_seq'::regclass);


--
-- TOC entry 4710 (class 2604 OID 16401)
-- Name: professores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professores ALTER COLUMN id SET DEFAULT nextval('public.professores_id_seq'::regclass);


--
-- TOC entry 4877 (class 0 OID 16418)
-- Dependencies: 222
-- Data for Name: alunos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alunos (id, nome, data_nascimento) FROM stdin;
1	Layssa Oliveira	2005-06-26
2	Vinicius Medeiros	2005-07-23
\.


--
-- TOC entry 4875 (class 0 OID 16406)
-- Dependencies: 220
-- Data for Name: disciplinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disciplinas (id, nome, carga_horaria, professor_id) FROM stdin;
1	Desenvolvimento Full Stack	220	1
2	Probabilidade e Estatística	120	2
3	Introdução a Engenharia de Software	120	3
\.


--
-- TOC entry 4879 (class 0 OID 16425)
-- Dependencies: 224
-- Data for Name: matriculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculas (id, aluno_id, disciplinas_id, data_matricula) FROM stdin;
1	1	1	2025-01-01
2	1	2	2025-01-01
3	2	3	2025-01-01
\.


--
-- TOC entry 4873 (class 0 OID 16398)
-- Dependencies: 218
-- Data for Name: professores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professores (id, nome, departamento) FROM stdin;
1	Vagner Henrique	Departamento de Full Stack
2	Criston Sousa	Departamento de Probabilidade
3	Rainara Cavalcante	Departamento de Engenharia de Software
\.


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 221
-- Name: alunos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alunos_id_seq', 2, true);


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 219
-- Name: disciplinas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disciplinas_id_seq', 3, true);


--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 223
-- Name: matriculas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matriculas_id_seq', 3, true);


--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 217
-- Name: professores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professores_id_seq', 3, true);


--
-- TOC entry 4719 (class 2606 OID 16423)
-- Name: alunos alunos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 16411)
-- Name: disciplinas disciplinas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_pkey PRIMARY KEY (id);


--
-- TOC entry 4721 (class 2606 OID 16432)
-- Name: matriculas matriculas_aluno_id_disciplinas_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_aluno_id_disciplinas_id_key UNIQUE (aluno_id, disciplinas_id);


--
-- TOC entry 4723 (class 2606 OID 16430)
-- Name: matriculas matriculas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_pkey PRIMARY KEY (id);


--
-- TOC entry 4715 (class 2606 OID 16403)
-- Name: professores professores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professores
    ADD CONSTRAINT professores_pkey PRIMARY KEY (id);


--
-- TOC entry 4724 (class 2606 OID 16412)
-- Name: disciplinas disciplinas_professor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.professores(id);


--
-- TOC entry 4725 (class 2606 OID 16433)
-- Name: matriculas matriculas_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id);


--
-- TOC entry 4726 (class 2606 OID 16438)
-- Name: matriculas matriculas_disciplinas_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_disciplinas_id_fkey FOREIGN KEY (disciplinas_id) REFERENCES public.disciplinas(id);


-- Completed on 2025-02-25 16:10:31

--
-- PostgreSQL database dump complete
--

