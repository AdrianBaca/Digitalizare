--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-22 21:08:30

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
-- TOC entry 227 (class 1259 OID 16524)
-- Name: ANALIZE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ANALIZE" (
    "IdAnaliza" integer NOT NULL,
    "Nume" character(255) NOT NULL,
    "Descriere" character(255) NOT NULL,
    "Pret" double precision NOT NULL
);


ALTER TABLE public."ANALIZE" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16523)
-- Name: ANALIZE_IdAnaliza_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ANALIZE_IdAnaliza_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ANALIZE_IdAnaliza_seq" OWNER TO postgres;

--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 226
-- Name: ANALIZE_IdAnaliza_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ANALIZE_IdAnaliza_seq" OWNED BY public."ANALIZE"."IdAnaliza";


--
-- TOC entry 220 (class 1259 OID 16498)
-- Name: CONSULTATII; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CONSULTATII" (
    "IdConsultatie" bigint NOT NULL,
    "Pacient" bigint NOT NULL,
    "Medic" bigint NOT NULL
);


ALTER TABLE public."CONSULTATII" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16533)
-- Name: LISTE_ANALIZE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LISTE_ANALIZE" (
    "IdLista" integer NOT NULL,
    "Consultatie" bigint NOT NULL,
    "Analiza" bigint NOT NULL
);


ALTER TABLE public."LISTE_ANALIZE" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16532)
-- Name: LISTE_ANALIZE_IdLista_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LISTE_ANALIZE_IdLista_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LISTE_ANALIZE_IdLista_seq" OWNER TO postgres;

--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 228
-- Name: LISTE_ANALIZE_IdLista_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LISTE_ANALIZE_IdLista_seq" OWNED BY public."LISTE_ANALIZE"."IdLista";


--
-- TOC entry 221 (class 1259 OID 16503)
-- Name: LISTE_MEDICAMENTE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LISTE_MEDICAMENTE" (
    "IdMedicament" bigint NOT NULL,
    "Consultatie" bigint NOT NULL,
    "Medicament" bigint NOT NULL
);


ALTER TABLE public."LISTE_MEDICAMENTE" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16517)
-- Name: LISTE_REZULTATE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LISTE_REZULTATE" (
    "IdLista" integer NOT NULL,
    "Analiza" bigint NOT NULL,
    "Rezultat" bigint NOT NULL
);


ALTER TABLE public."LISTE_REZULTATE" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16516)
-- Name: LISTE_REZULTATE_IdLista_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LISTE_REZULTATE_IdLista_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LISTE_REZULTATE_IdLista_seq" OWNER TO postgres;

--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 224
-- Name: LISTE_REZULTATE_IdLista_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LISTE_REZULTATE_IdLista_seq" OWNED BY public."LISTE_REZULTATE"."IdLista";


--
-- TOC entry 223 (class 1259 OID 16509)
-- Name: MEDICAMENTE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MEDICAMENTE" (
    "IdMedicament" integer NOT NULL,
    "Nume" character(255) NOT NULL
);


ALTER TABLE public."MEDICAMENTE" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16508)
-- Name: MEDICAMENTE_IdMedicament_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."MEDICAMENTE_IdMedicament_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."MEDICAMENTE_IdMedicament_seq" OWNER TO postgres;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 222
-- Name: MEDICAMENTE_IdMedicament_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."MEDICAMENTE_IdMedicament_seq" OWNED BY public."MEDICAMENTE"."IdMedicament";


--
-- TOC entry 217 (class 1259 OID 16448)
-- Name: MEDICI; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MEDICI" (
    "IdMedic" bigint NOT NULL,
    "Persoana" bigint NOT NULL,
    "Specializare" bigint NOT NULL
);


ALTER TABLE public."MEDICI" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16483)
-- Name: PACIENTI; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PACIENTI" (
    "IdPacient" bigint NOT NULL,
    "Persoana" bigint NOT NULL,
    "Programare" bigint NOT NULL
);


ALTER TABLE public."PACIENTI" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16400)
-- Name: PERSOANE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PERSOANE" (
    "IdPersoana" integer NOT NULL,
    "Nume" character(250) NOT NULL,
    "Prenume" character(250) NOT NULL,
    "Adresa" character(250) NOT NULL,
    "Email" character(100) NOT NULL,
    "Telefon" character(10) NOT NULL
);


ALTER TABLE public."PERSOANE" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16399)
-- Name: PERSOANE_IdPersoana_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PERSOANE_IdPersoana_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PERSOANE_IdPersoana_seq" OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 214
-- Name: PERSOANE_IdPersoana_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PERSOANE_IdPersoana_seq" OWNED BY public."PERSOANE"."IdPersoana";


--
-- TOC entry 218 (class 1259 OID 16463)
-- Name: PROGRAMARI; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PROGRAMARI" (
    "IdProgramare" bigint NOT NULL,
    "Medic" bigint NOT NULL,
    "Data" date NOT NULL,
    "Ora" time without time zone NOT NULL
);


ALTER TABLE public."PROGRAMARI" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16540)
-- Name: REZULTATE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."REZULTATE" (
    "IdRezultat" integer NOT NULL,
    "Rezultat" double precision NOT NULL,
    "Data" date NOT NULL
);


ALTER TABLE public."REZULTATE" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16539)
-- Name: REZULTATE_IdRezultat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."REZULTATE_IdRezultat_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."REZULTATE_IdRezultat_seq" OWNER TO postgres;

--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 230
-- Name: REZULTATE_IdRezultat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."REZULTATE_IdRezultat_seq" OWNED BY public."REZULTATE"."IdRezultat";


--
-- TOC entry 216 (class 1259 OID 16443)
-- Name: SPECIALIZARI; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SPECIALIZARI" (
    "IdSpecializare" bigint NOT NULL,
    "Descriere" character(250) NOT NULL
);


ALTER TABLE public."SPECIALIZARI" OWNER TO postgres;

--
-- TOC entry 3224 (class 2604 OID 16536)
-- Name: LISTE_ANALIZE IdLista; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_ANALIZE" ALTER COLUMN "IdLista" SET DEFAULT nextval('public."LISTE_ANALIZE_IdLista_seq"'::regclass);


--
-- TOC entry 3223 (class 2604 OID 16520)
-- Name: LISTE_REZULTATE IdLista; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_REZULTATE" ALTER COLUMN "IdLista" SET DEFAULT nextval('public."LISTE_REZULTATE_IdLista_seq"'::regclass);


--
-- TOC entry 3222 (class 2604 OID 16512)
-- Name: MEDICAMENTE IdMedicament; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MEDICAMENTE" ALTER COLUMN "IdMedicament" SET DEFAULT nextval('public."MEDICAMENTE_IdMedicament_seq"'::regclass);


--
-- TOC entry 3225 (class 2604 OID 16543)
-- Name: REZULTATE IdRezultat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."REZULTATE" ALTER COLUMN "IdRezultat" SET DEFAULT nextval('public."REZULTATE_IdRezultat_seq"'::regclass);


--
-- TOC entry 3418 (class 0 OID 16524)
-- Dependencies: 227
-- Data for Name: ANALIZE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ANALIZE" ("IdAnaliza", "Nume", "Descriere", "Pret") FROM stdin;
1	Analiza 1                                                                                                                                                                                                                                                      	Descrierea pentru analiza 1.                                                                                                                                                                                                                                   	100
2	Analiza 2                                                                                                                                                                                                                                                      	Descrierea pentru analiza 2.                                                                                                                                                                                                                                   	200
3	Analiza 3                                                                                                                                                                                                                                                      	Descrierea pentru analiza 3.                                                                                                                                                                                                                                   	300
4	Analiza 4                                                                                                                                                                                                                                                      	Descrierea pentru analiza 4.                                                                                                                                                                                                                                   	400
5	Analiza 5                                                                                                                                                                                                                                                      	Descrierea pentru analiza 5.                                                                                                                                                                                                                                   	500
\.


--
-- TOC entry 3411 (class 0 OID 16498)
-- Dependencies: 220
-- Data for Name: CONSULTATII; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."CONSULTATII" ("IdConsultatie", "Pacient", "Medic") FROM stdin;
1	1	1
2	2	2
3	2	3
4	2	4
5	3	10
\.


--
-- TOC entry 3420 (class 0 OID 16533)
-- Dependencies: 229
-- Data for Name: LISTE_ANALIZE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LISTE_ANALIZE" ("IdLista", "Consultatie", "Analiza") FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	2
5	4	3
\.


--
-- TOC entry 3412 (class 0 OID 16503)
-- Dependencies: 221
-- Data for Name: LISTE_MEDICAMENTE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LISTE_MEDICAMENTE" ("IdMedicament", "Consultatie", "Medicament") FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	2	5
\.


--
-- TOC entry 3416 (class 0 OID 16517)
-- Dependencies: 225
-- Data for Name: LISTE_REZULTATE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."LISTE_REZULTATE" ("IdLista", "Analiza", "Rezultat") FROM stdin;
1	1	1
2	2	2
3	3	4
4	4	3
5	5	5
\.


--
-- TOC entry 3414 (class 0 OID 16509)
-- Dependencies: 223
-- Data for Name: MEDICAMENTE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MEDICAMENTE" ("IdMedicament", "Nume") FROM stdin;
1	Medicament 1                                                                                                                                                                                                                                                   
2	Medicament 2                                                                                                                                                                                                                                                   
3	Medicament 3                                                                                                                                                                                                                                                   
4	Medicament 4                                                                                                                                                                                                                                                   
5	Medicament 5                                                                                                                                                                                                                                                   
\.


--
-- TOC entry 3408 (class 0 OID 16448)
-- Dependencies: 217
-- Data for Name: MEDICI; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MEDICI" ("IdMedic", "Persoana", "Specializare") FROM stdin;
1	1	1
2	1	5
3	1	3
4	2	1
5	2	5
6	2	4
7	2	3
8	2	2
9	5	1
10	5	2
\.


--
-- TOC entry 3410 (class 0 OID 16483)
-- Dependencies: 219
-- Data for Name: PACIENTI; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PACIENTI" ("IdPacient", "Persoana", "Programare") FROM stdin;
1	1	1
2	2	2
3	3	3
4	3	4
5	4	5
\.


--
-- TOC entry 3406 (class 0 OID 16400)
-- Dependencies: 215
-- Data for Name: PERSOANE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PERSOANE" ("IdPersoana", "Nume", "Prenume", "Adresa", "Email", "Telefon") FROM stdin;
1	Andrei                                                                                                                                                                                                                                                    	Ionut                                                                                                                                                                                                                                                     	Aleea Liliacului, 1, Eforie, Constanta                                                                                                                                                                                                                    	andrei@yahoo.com                                                                                    	0734744350
2	Mihai                                                                                                                                                                                                                                                     	George                                                                                                                                                                                                                                                    	Aleea Liliacului, 2, Eforie, Constanta                                                                                                                                                                                                                    	george@yahoo.com                                                                                    	0734251621
3	Robert                                                                                                                                                                                                                                                    	George                                                                                                                                                                                                                                                    	Aleea Liliacului, 3, Eforie, Constanta                                                                                                                                                                                                                    	robert@gmail.com                                                                                    	0723145261
4	Mirea                                                                                                                                                                                                                                                     	Razvan                                                                                                                                                                                                                                                    	Aleea Liliacului, 4, Eforie, Constanta                                                                                                                                                                                                                    	mirea@gmail.com                                                                                     	0712321415
5	Craciun                                                                                                                                                                                                                                                   	Mircea                                                                                                                                                                                                                                                    	Aleea Liliacului, 5, Eforie, Constanta                                                                                                                                                                                                                    	craciun@yahoo.com                                                                                   	0723141512
\.


--
-- TOC entry 3409 (class 0 OID 16463)
-- Dependencies: 218
-- Data for Name: PROGRAMARI; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PROGRAMARI" ("IdProgramare", "Medic", "Data", "Ora") FROM stdin;
1	1	2023-04-11	11:00:00
2	3	2023-04-21	12:00:00
3	4	2023-11-12	08:00:00
4	5	2023-04-11	12:00:00
5	2	2023-04-11	12:00:00
6	6	2023-11-12	14:00:00
7	7	2023-11-12	11:00:00
8	8	2023-11-12	09:00:00
9	9	2023-11-12	08:00:00
10	10	2023-11-12	09:00:00
\.


--
-- TOC entry 3422 (class 0 OID 16540)
-- Dependencies: 231
-- Data for Name: REZULTATE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."REZULTATE" ("IdRezultat", "Rezultat", "Data") FROM stdin;
1	12	2023-03-20
2	11.2	2023-03-20
3	14	2023-03-20
4	15	2023-03-20
5	17	2023-03-20
\.


--
-- TOC entry 3407 (class 0 OID 16443)
-- Dependencies: 216
-- Data for Name: SPECIALIZARI; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SPECIALIZARI" ("IdSpecializare", "Descriere") FROM stdin;
1	Dermatologie                                                                                                                                                                                                                                              
2	Pediatrie                                                                                                                                                                                                                                                 
3	Cardiologie                                                                                                                                                                                                                                               
4	Neurologie                                                                                                                                                                                                                                                
5	Reumatologie                                                                                                                                                                                                                                              
\.


--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 226
-- Name: ANALIZE_IdAnaliza_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ANALIZE_IdAnaliza_seq"', 1, false);


--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 228
-- Name: LISTE_ANALIZE_IdLista_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."LISTE_ANALIZE_IdLista_seq"', 5, true);


--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 224
-- Name: LISTE_REZULTATE_IdLista_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."LISTE_REZULTATE_IdLista_seq"', 1, false);


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 222
-- Name: MEDICAMENTE_IdMedicament_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."MEDICAMENTE_IdMedicament_seq"', 1, false);


--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 214
-- Name: PERSOANE_IdPersoana_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PERSOANE_IdPersoana_seq"', 1, false);


--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 230
-- Name: REZULTATE_IdRezultat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."REZULTATE_IdRezultat_seq"', 1, false);


--
-- TOC entry 3245 (class 2606 OID 16531)
-- Name: ANALIZE ANALIZE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ANALIZE"
    ADD CONSTRAINT "ANALIZE_pkey" PRIMARY KEY ("IdAnaliza");


--
-- TOC entry 3237 (class 2606 OID 16502)
-- Name: CONSULTATII CONSULTATII_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CONSULTATII"
    ADD CONSTRAINT "CONSULTATII_pkey" PRIMARY KEY ("IdConsultatie");


--
-- TOC entry 3239 (class 2606 OID 16507)
-- Name: LISTE_MEDICAMENTE LISTEMEDICAMENTE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_MEDICAMENTE"
    ADD CONSTRAINT "LISTEMEDICAMENTE_pkey" PRIMARY KEY ("IdMedicament");


--
-- TOC entry 3247 (class 2606 OID 16538)
-- Name: LISTE_ANALIZE LISTE_ANALIZE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_ANALIZE"
    ADD CONSTRAINT "LISTE_ANALIZE_pkey" PRIMARY KEY ("IdLista");


--
-- TOC entry 3243 (class 2606 OID 16522)
-- Name: LISTE_REZULTATE LISTE_REZULTATE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_REZULTATE"
    ADD CONSTRAINT "LISTE_REZULTATE_pkey" PRIMARY KEY ("IdLista");


--
-- TOC entry 3241 (class 2606 OID 16514)
-- Name: MEDICAMENTE MEDICAMENTE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MEDICAMENTE"
    ADD CONSTRAINT "MEDICAMENTE_pkey" PRIMARY KEY ("IdMedicament");


--
-- TOC entry 3231 (class 2606 OID 16452)
-- Name: MEDICI MEDICI_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MEDICI"
    ADD CONSTRAINT "MEDICI_pkey" PRIMARY KEY ("IdMedic");


--
-- TOC entry 3235 (class 2606 OID 16487)
-- Name: PACIENTI PACIENTI_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PACIENTI"
    ADD CONSTRAINT "PACIENTI_pkey" PRIMARY KEY ("IdPacient");


--
-- TOC entry 3227 (class 2606 OID 16408)
-- Name: PERSOANE PERSOANE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PERSOANE"
    ADD CONSTRAINT "PERSOANE_pkey" PRIMARY KEY ("IdPersoana");


--
-- TOC entry 3233 (class 2606 OID 16467)
-- Name: PROGRAMARI PROGRAMARE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PROGRAMARI"
    ADD CONSTRAINT "PROGRAMARE_pkey" PRIMARY KEY ("IdProgramare");


--
-- TOC entry 3249 (class 2606 OID 16545)
-- Name: REZULTATE REZULTATE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."REZULTATE"
    ADD CONSTRAINT "REZULTATE_pkey" PRIMARY KEY ("IdRezultat");


--
-- TOC entry 3229 (class 2606 OID 16447)
-- Name: SPECIALIZARI SPECIALIZARI_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SPECIALIZARI"
    ADD CONSTRAINT "SPECIALIZARI_pkey" PRIMARY KEY ("IdSpecializare");


--
-- TOC entry 3255 (class 2606 OID 16551)
-- Name: CONSULTATII CONSULTATII_Medic_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CONSULTATII"
    ADD CONSTRAINT "CONSULTATII_Medic_fkey" FOREIGN KEY ("Medic") REFERENCES public."MEDICI"("IdMedic") NOT VALID;


--
-- TOC entry 3256 (class 2606 OID 16546)
-- Name: CONSULTATII CONSULTATII_Pacient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CONSULTATII"
    ADD CONSTRAINT "CONSULTATII_Pacient_fkey" FOREIGN KEY ("Pacient") REFERENCES public."PACIENTI"("IdPacient") NOT VALID;


--
-- TOC entry 3257 (class 2606 OID 16566)
-- Name: LISTE_MEDICAMENTE LISTEMEDICAMENTE_Consultatie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_MEDICAMENTE"
    ADD CONSTRAINT "LISTEMEDICAMENTE_Consultatie_fkey" FOREIGN KEY ("Consultatie") REFERENCES public."CONSULTATII"("IdConsultatie") NOT VALID;


--
-- TOC entry 3258 (class 2606 OID 16571)
-- Name: LISTE_MEDICAMENTE LISTEMEDICAMENTE_Medicament_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_MEDICAMENTE"
    ADD CONSTRAINT "LISTEMEDICAMENTE_Medicament_fkey" FOREIGN KEY ("Medicament") REFERENCES public."MEDICAMENTE"("IdMedicament") NOT VALID;


--
-- TOC entry 3261 (class 2606 OID 16581)
-- Name: LISTE_ANALIZE LISTE_ANALIZE_Analiza_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_ANALIZE"
    ADD CONSTRAINT "LISTE_ANALIZE_Analiza_fkey" FOREIGN KEY ("Analiza") REFERENCES public."ANALIZE"("IdAnaliza") NOT VALID;


--
-- TOC entry 3262 (class 2606 OID 16576)
-- Name: LISTE_ANALIZE LISTE_ANALIZE_Consultatie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_ANALIZE"
    ADD CONSTRAINT "LISTE_ANALIZE_Consultatie_fkey" FOREIGN KEY ("Consultatie") REFERENCES public."CONSULTATII"("IdConsultatie") NOT VALID;


--
-- TOC entry 3259 (class 2606 OID 16586)
-- Name: LISTE_REZULTATE LISTE_REZULTATE_Analiza_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_REZULTATE"
    ADD CONSTRAINT "LISTE_REZULTATE_Analiza_fkey" FOREIGN KEY ("Analiza") REFERENCES public."LISTE_ANALIZE"("IdLista") NOT VALID;


--
-- TOC entry 3260 (class 2606 OID 16591)
-- Name: LISTE_REZULTATE LISTE_REZULTATE_Rezultat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LISTE_REZULTATE"
    ADD CONSTRAINT "LISTE_REZULTATE_Rezultat_fkey" FOREIGN KEY ("Rezultat") REFERENCES public."REZULTATE"("IdRezultat") NOT VALID;


--
-- TOC entry 3250 (class 2606 OID 16453)
-- Name: MEDICI MEDICI; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MEDICI"
    ADD CONSTRAINT "MEDICI" FOREIGN KEY ("Persoana") REFERENCES public."PERSOANE"("IdPersoana");


--
-- TOC entry 3251 (class 2606 OID 16458)
-- Name: MEDICI MEDICI_Specializare_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MEDICI"
    ADD CONSTRAINT "MEDICI_Specializare_fkey" FOREIGN KEY ("Specializare") REFERENCES public."SPECIALIZARI"("IdSpecializare");


--
-- TOC entry 3253 (class 2606 OID 16488)
-- Name: PACIENTI PACIENTI_Persoana_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PACIENTI"
    ADD CONSTRAINT "PACIENTI_Persoana_fkey" FOREIGN KEY ("Persoana") REFERENCES public."PERSOANE"("IdPersoana");


--
-- TOC entry 3254 (class 2606 OID 16493)
-- Name: PACIENTI PACIENTI_Programare_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PACIENTI"
    ADD CONSTRAINT "PACIENTI_Programare_fkey" FOREIGN KEY ("Programare") REFERENCES public."PROGRAMARI"("IdProgramare");


--
-- TOC entry 3252 (class 2606 OID 16478)
-- Name: PROGRAMARI PROGRAMARE2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PROGRAMARI"
    ADD CONSTRAINT "PROGRAMARE2" FOREIGN KEY ("Medic") REFERENCES public."MEDICI"("IdMedic") NOT VALID;


-- Completed on 2023-03-22 21:08:30

--
-- PostgreSQL database dump complete
--

