--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: areas; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE areas (
    id_area integer NOT NULL,
    area character varying(100)
);


ALTER TABLE public.areas OWNER TO academias;

--
-- Name: areas_id_area_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE areas_id_area_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.areas_id_area_seq OWNER TO academias;

--
-- Name: areas_id_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE areas_id_area_seq OWNED BY areas.id_area;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO academias;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO academias;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO academias;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO academias;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO academias;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO academias;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO academias;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO academias;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO academias;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO academias;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO academias;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO academias;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: carreras; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE carreras (
    id_carrera integer NOT NULL,
    carrera character varying(100),
    titulo character varying(100),
    num_ciclos integer,
    id_area integer
);


ALTER TABLE public.carreras OWNER TO academias;

--
-- Name: carreras_id_carrera_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE carreras_id_carrera_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carreras_id_carrera_seq OWNER TO academias;

--
-- Name: carreras_id_carrera_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE carreras_id_carrera_seq OWNED BY carreras.id_carrera;


--
-- Name: clasificacion_institucion; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE clasificacion_institucion (
    id_clasificacion_institucion integer NOT NULL,
    clasificacion_institucion character varying(30)
);


ALTER TABLE public.clasificacion_institucion OWNER TO academias;

--
-- Name: clasificacion_institucion_id_clasificacion_institucion_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE clasificacion_institucion_id_clasificacion_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clasificacion_institucion_id_clasificacion_institucion_seq OWNER TO academias;

--
-- Name: clasificacion_institucion_id_clasificacion_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE clasificacion_institucion_id_clasificacion_institucion_seq OWNED BY clasificacion_institucion.id_clasificacion_institucion;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO academias;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO academias;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO academias;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO academias;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO academias;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO academias;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO academias;

--
-- Name: instituciones; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE instituciones (
    id_institucion integer NOT NULL,
    nombre character varying(200),
    direccion character varying(250),
    telefono integer,
    mensualidad numeric,
    matricula numeric,
    id_tipo_institucion integer,
    id_clasificacion_institucion integer,
    latitud character varying(20),
    longitud character varying(20),
    pagina_web character varying(100),
    cant_profesores_m integer,
    cant_profesores_f integer,
    cant_alumnos_m integer,
    cant_alumnos_f integer
);


ALTER TABLE public.instituciones OWNER TO academias;

--
-- Name: instituciones_carreras; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE instituciones_carreras (
    id_institucion integer,
    id_carrera integer
);


ALTER TABLE public.instituciones_carreras OWNER TO academias;

--
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE instituciones_id_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instituciones_id_institucion_seq OWNER TO academias;

--
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE instituciones_id_institucion_seq OWNED BY instituciones.id_institucion;


--
-- Name: instituciones_modalidades; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE instituciones_modalidades (
    id_institucion integer,
    id_modalidad integer
);


ALTER TABLE public.instituciones_modalidades OWNER TO academias;

--
-- Name: instituciones_niveles; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE instituciones_niveles (
    id_institucion integer,
    id_nivel integer
);


ALTER TABLE public.instituciones_niveles OWNER TO academias;

--
-- Name: modalidades; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE modalidades (
    id_modalidad integer NOT NULL,
    modalidad character varying(15)
);


ALTER TABLE public.modalidades OWNER TO academias;

--
-- Name: modalidades_id_modalidad_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE modalidades_id_modalidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.modalidades_id_modalidad_seq OWNER TO academias;

--
-- Name: modalidades_id_modalidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE modalidades_id_modalidad_seq OWNED BY modalidades.id_modalidad;


--
-- Name: niveles; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE niveles (
    id_nivel integer NOT NULL,
    nivel character varying(20),
    edad character varying(10)
);


ALTER TABLE public.niveles OWNER TO academias;

--
-- Name: niveles_id_nivel_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE niveles_id_nivel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.niveles_id_nivel_seq OWNER TO academias;

--
-- Name: niveles_id_nivel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE niveles_id_nivel_seq OWNED BY niveles.id_nivel;


--
-- Name: tipo_institucion; Type: TABLE; Schema: public; Owner: academias; Tablespace: 
--

CREATE TABLE tipo_institucion (
    id_tipo_institucion integer NOT NULL,
    tipo character varying(50)
);


ALTER TABLE public.tipo_institucion OWNER TO academias;

--
-- Name: tipo_institucion_id_tipo_institucion_seq; Type: SEQUENCE; Schema: public; Owner: academias
--

CREATE SEQUENCE tipo_institucion_id_tipo_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_institucion_id_tipo_institucion_seq OWNER TO academias;

--
-- Name: tipo_institucion_id_tipo_institucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: academias
--

ALTER SEQUENCE tipo_institucion_id_tipo_institucion_seq OWNED BY tipo_institucion.id_tipo_institucion;


--
-- Name: id_area; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY areas ALTER COLUMN id_area SET DEFAULT nextval('areas_id_area_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id_carrera; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY carreras ALTER COLUMN id_carrera SET DEFAULT nextval('carreras_id_carrera_seq'::regclass);


--
-- Name: id_clasificacion_institucion; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY clasificacion_institucion ALTER COLUMN id_clasificacion_institucion SET DEFAULT nextval('clasificacion_institucion_id_clasificacion_institucion_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id_institucion; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones ALTER COLUMN id_institucion SET DEFAULT nextval('instituciones_id_institucion_seq'::regclass);


--
-- Name: id_modalidad; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY modalidades ALTER COLUMN id_modalidad SET DEFAULT nextval('modalidades_id_modalidad_seq'::regclass);


--
-- Name: id_nivel; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY niveles ALTER COLUMN id_nivel SET DEFAULT nextval('niveles_id_nivel_seq'::regclass);


--
-- Name: id_tipo_institucion; Type: DEFAULT; Schema: public; Owner: academias
--

ALTER TABLE ONLY tipo_institucion ALTER COLUMN id_tipo_institucion SET DEFAULT nextval('tipo_institucion_id_tipo_institucion_seq'::regclass);


--
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO areas VALUES (2, 'Biológica y Biomédica');
INSERT INTO areas VALUES (3, 'Sociohumanística');
INSERT INTO areas VALUES (4, 'Técnica');
INSERT INTO areas VALUES (1, 'Administrativa');


--
-- Name: areas_id_area_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('areas_id_area_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: academias
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: academias
--



--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO auth_permission VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO auth_permission VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO auth_permission VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO auth_permission VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO auth_permission VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO auth_permission VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO auth_permission VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO auth_permission VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO auth_permission VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO auth_permission VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO auth_permission VALUES (19, 'Can add areas', 7, 'add_areas');
INSERT INTO auth_permission VALUES (20, 'Can change areas', 7, 'change_areas');
INSERT INTO auth_permission VALUES (21, 'Can delete areas', 7, 'delete_areas');
INSERT INTO auth_permission VALUES (22, 'Can add carreras', 8, 'add_carreras');
INSERT INTO auth_permission VALUES (23, 'Can change carreras', 8, 'change_carreras');
INSERT INTO auth_permission VALUES (24, 'Can delete carreras', 8, 'delete_carreras');
INSERT INTO auth_permission VALUES (25, 'Can add clasificacion institucion', 9, 'add_clasificacioninstitucion');
INSERT INTO auth_permission VALUES (26, 'Can change clasificacion institucion', 9, 'change_clasificacioninstitucion');
INSERT INTO auth_permission VALUES (27, 'Can delete clasificacion institucion', 9, 'delete_clasificacioninstitucion');
INSERT INTO auth_permission VALUES (28, 'Can add instituciones', 10, 'add_instituciones');
INSERT INTO auth_permission VALUES (29, 'Can change instituciones', 10, 'change_instituciones');
INSERT INTO auth_permission VALUES (30, 'Can delete instituciones', 10, 'delete_instituciones');
INSERT INTO auth_permission VALUES (31, 'Can add instituciones carreras', 11, 'add_institucionescarreras');
INSERT INTO auth_permission VALUES (32, 'Can change instituciones carreras', 11, 'change_institucionescarreras');
INSERT INTO auth_permission VALUES (33, 'Can delete instituciones carreras', 11, 'delete_institucionescarreras');
INSERT INTO auth_permission VALUES (34, 'Can add instituciones jornada', 12, 'add_institucionesjornada');
INSERT INTO auth_permission VALUES (35, 'Can change instituciones jornada', 12, 'change_institucionesjornada');
INSERT INTO auth_permission VALUES (36, 'Can delete instituciones jornada', 12, 'delete_institucionesjornada');
INSERT INTO auth_permission VALUES (37, 'Can add instituciones modalidades', 13, 'add_institucionesmodalidades');
INSERT INTO auth_permission VALUES (38, 'Can change instituciones modalidades', 13, 'change_institucionesmodalidades');
INSERT INTO auth_permission VALUES (39, 'Can delete instituciones modalidades', 13, 'delete_institucionesmodalidades');
INSERT INTO auth_permission VALUES (40, 'Can add instituciones niveles', 14, 'add_institucionesniveles');
INSERT INTO auth_permission VALUES (41, 'Can change instituciones niveles', 14, 'change_institucionesniveles');
INSERT INTO auth_permission VALUES (42, 'Can delete instituciones niveles', 14, 'delete_institucionesniveles');
INSERT INTO auth_permission VALUES (43, 'Can add jornada', 15, 'add_jornada');
INSERT INTO auth_permission VALUES (44, 'Can change jornada', 15, 'change_jornada');
INSERT INTO auth_permission VALUES (45, 'Can delete jornada', 15, 'delete_jornada');
INSERT INTO auth_permission VALUES (46, 'Can add modalidades', 16, 'add_modalidades');
INSERT INTO auth_permission VALUES (47, 'Can change modalidades', 16, 'change_modalidades');
INSERT INTO auth_permission VALUES (48, 'Can delete modalidades', 16, 'delete_modalidades');
INSERT INTO auth_permission VALUES (49, 'Can add niveles', 17, 'add_niveles');
INSERT INTO auth_permission VALUES (50, 'Can change niveles', 17, 'change_niveles');
INSERT INTO auth_permission VALUES (51, 'Can delete niveles', 17, 'delete_niveles');
INSERT INTO auth_permission VALUES (52, 'Can add tipo institucion', 18, 'add_tipoinstitucion');
INSERT INTO auth_permission VALUES (53, 'Can change tipo institucion', 18, 'change_tipoinstitucion');
INSERT INTO auth_permission VALUES (54, 'Can delete tipo institucion', 18, 'delete_tipoinstitucion');
INSERT INTO auth_permission VALUES (55, 'Can add areas', 19, 'add_areas');
INSERT INTO auth_permission VALUES (56, 'Can change areas', 19, 'change_areas');
INSERT INTO auth_permission VALUES (57, 'Can delete areas', 19, 'delete_areas');
INSERT INTO auth_permission VALUES (58, 'Can add auth group', 20, 'add_authgroup');
INSERT INTO auth_permission VALUES (59, 'Can change auth group', 20, 'change_authgroup');
INSERT INTO auth_permission VALUES (60, 'Can delete auth group', 20, 'delete_authgroup');
INSERT INTO auth_permission VALUES (61, 'Can add auth group permissions', 21, 'add_authgrouppermissions');
INSERT INTO auth_permission VALUES (62, 'Can change auth group permissions', 21, 'change_authgrouppermissions');
INSERT INTO auth_permission VALUES (63, 'Can delete auth group permissions', 21, 'delete_authgrouppermissions');
INSERT INTO auth_permission VALUES (64, 'Can add auth permission', 22, 'add_authpermission');
INSERT INTO auth_permission VALUES (65, 'Can change auth permission', 22, 'change_authpermission');
INSERT INTO auth_permission VALUES (66, 'Can delete auth permission', 22, 'delete_authpermission');
INSERT INTO auth_permission VALUES (67, 'Can add auth user', 23, 'add_authuser');
INSERT INTO auth_permission VALUES (68, 'Can change auth user', 23, 'change_authuser');
INSERT INTO auth_permission VALUES (69, 'Can delete auth user', 23, 'delete_authuser');
INSERT INTO auth_permission VALUES (70, 'Can add auth user groups', 24, 'add_authusergroups');
INSERT INTO auth_permission VALUES (71, 'Can change auth user groups', 24, 'change_authusergroups');
INSERT INTO auth_permission VALUES (72, 'Can delete auth user groups', 24, 'delete_authusergroups');
INSERT INTO auth_permission VALUES (73, 'Can add auth user user permissions', 25, 'add_authuseruserpermissions');
INSERT INTO auth_permission VALUES (74, 'Can change auth user user permissions', 25, 'change_authuseruserpermissions');
INSERT INTO auth_permission VALUES (75, 'Can delete auth user user permissions', 25, 'delete_authuseruserpermissions');
INSERT INTO auth_permission VALUES (76, 'Can add carreras', 26, 'add_carreras');
INSERT INTO auth_permission VALUES (77, 'Can change carreras', 26, 'change_carreras');
INSERT INTO auth_permission VALUES (78, 'Can delete carreras', 26, 'delete_carreras');
INSERT INTO auth_permission VALUES (79, 'Can add clasificacion institucion', 27, 'add_clasificacioninstitucion');
INSERT INTO auth_permission VALUES (80, 'Can change clasificacion institucion', 27, 'change_clasificacioninstitucion');
INSERT INTO auth_permission VALUES (81, 'Can delete clasificacion institucion', 27, 'delete_clasificacioninstitucion');
INSERT INTO auth_permission VALUES (85, 'Can add django admin log', 29, 'add_djangoadminlog');
INSERT INTO auth_permission VALUES (86, 'Can change django admin log', 29, 'change_djangoadminlog');
INSERT INTO auth_permission VALUES (87, 'Can delete django admin log', 29, 'delete_djangoadminlog');
INSERT INTO auth_permission VALUES (88, 'Can add django content type', 30, 'add_djangocontenttype');
INSERT INTO auth_permission VALUES (89, 'Can change django content type', 30, 'change_djangocontenttype');
INSERT INTO auth_permission VALUES (90, 'Can delete django content type', 30, 'delete_djangocontenttype');
INSERT INTO auth_permission VALUES (91, 'Can add django migrations', 31, 'add_djangomigrations');
INSERT INTO auth_permission VALUES (92, 'Can change django migrations', 31, 'change_djangomigrations');
INSERT INTO auth_permission VALUES (93, 'Can delete django migrations', 31, 'delete_djangomigrations');
INSERT INTO auth_permission VALUES (94, 'Can add django session', 32, 'add_djangosession');
INSERT INTO auth_permission VALUES (95, 'Can change django session', 32, 'change_djangosession');
INSERT INTO auth_permission VALUES (96, 'Can delete django session', 32, 'delete_djangosession');
INSERT INTO auth_permission VALUES (97, 'Can add instituciones', 33, 'add_instituciones');
INSERT INTO auth_permission VALUES (98, 'Can change instituciones', 33, 'change_instituciones');
INSERT INTO auth_permission VALUES (99, 'Can delete instituciones', 33, 'delete_instituciones');
INSERT INTO auth_permission VALUES (100, 'Can add instituciones carreras', 34, 'add_institucionescarreras');
INSERT INTO auth_permission VALUES (101, 'Can change instituciones carreras', 34, 'change_institucionescarreras');
INSERT INTO auth_permission VALUES (102, 'Can delete instituciones carreras', 34, 'delete_institucionescarreras');
INSERT INTO auth_permission VALUES (103, 'Can add instituciones modalidades', 35, 'add_institucionesmodalidades');
INSERT INTO auth_permission VALUES (104, 'Can change instituciones modalidades', 35, 'change_institucionesmodalidades');
INSERT INTO auth_permission VALUES (105, 'Can delete instituciones modalidades', 35, 'delete_institucionesmodalidades');
INSERT INTO auth_permission VALUES (106, 'Can add instituciones niveles', 36, 'add_institucionesniveles');
INSERT INTO auth_permission VALUES (107, 'Can change instituciones niveles', 36, 'change_institucionesniveles');
INSERT INTO auth_permission VALUES (108, 'Can delete instituciones niveles', 36, 'delete_institucionesniveles');
INSERT INTO auth_permission VALUES (109, 'Can add modalidades', 37, 'add_modalidades');
INSERT INTO auth_permission VALUES (110, 'Can change modalidades', 37, 'change_modalidades');
INSERT INTO auth_permission VALUES (111, 'Can delete modalidades', 37, 'delete_modalidades');
INSERT INTO auth_permission VALUES (112, 'Can add niveles', 38, 'add_niveles');
INSERT INTO auth_permission VALUES (113, 'Can change niveles', 38, 'change_niveles');
INSERT INTO auth_permission VALUES (114, 'Can delete niveles', 38, 'delete_niveles');
INSERT INTO auth_permission VALUES (115, 'Can add tipo institucion', 39, 'add_tipoinstitucion');
INSERT INTO auth_permission VALUES (116, 'Can change tipo institucion', 39, 'change_tipoinstitucion');
INSERT INTO auth_permission VALUES (117, 'Can delete tipo institucion', 39, 'delete_tipoinstitucion');


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('auth_permission_id_seq', 117, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO auth_user VALUES (1, 'pbkdf2_sha256$12000$pPv27oBK30qN$apsoueMcKx6hUqlcF158XJZ1067EvT7Ww0PBES+CyP8=', '2016-01-08 08:38:28.338845-05', true, 'admin', '', '', 'javier@hotmail.com', true, true, '2016-01-08 08:37:54.880647-05');
INSERT INTO auth_user VALUES (2, 'pbkdf2_sha256$12000$YBTdzu9ZLqUw$PNfhJyHv9rCM42Hn0fOenTts4/AKuBGG9ka+aKDo3fs=', '2016-02-10 23:39:36.824785-05', true, 'academias', '', '', 'javier@fsf.com', true, true, '2016-02-05 15:54:22.09254-05');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: academias
--



--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: academias
--



--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: carreras; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO carreras VALUES (2, 'Ingeniería en Hotelería y Turísmo', 'Licenciado/a en Administración de Empresas Turísticas y Hoteleras', 10, 1);
INSERT INTO carreras VALUES (3, 'Administración en Banca y Finanzas', 'Licenciado/a en Administración en Banca y Finanzas', 10, 1);
INSERT INTO carreras VALUES (4, 'Contabilidad y Auditoría', 'Licenciado/a en Contabilidad y Auditoría', 10, 1);
INSERT INTO carreras VALUES (5, 'Economía', 'Economista', 10, 1);
INSERT INTO carreras VALUES (6, 'Gastronomía', 'Licenciado en Gastronomía', 8, 1);
INSERT INTO carreras VALUES (7, 'Biología', 'Biólogo', 10, 2);
INSERT INTO carreras VALUES (8, 'Ingeniería Agropecuaria', 'Ingeniero Agropecuario', 10, 2);
INSERT INTO carreras VALUES (9, 'Bioquímica y Farmacia', 'Bioquímico Farmacéutico', 10, 2);
INSERT INTO carreras VALUES (10, 'Gestión Ambiental', 'Licenciado en Gestión Ambiental', 10, 2);
INSERT INTO carreras VALUES (11, 'Ingeniero en Alimentos', 'Ingeniero en Alimentos', 10, 2);
INSERT INTO carreras VALUES (12, 'Ingeniería Industrial', 'Ingeniero Industrial', 10, 2);
INSERT INTO carreras VALUES (13, 'Ingeniería Química', 'Ingeniero Químico', 10, 2);
INSERT INTO carreras VALUES (14, 'Medicina', 'Médico', 12, 2);
INSERT INTO carreras VALUES (15, 'Enfermería', 'Licenciado en Enfermería', 9, 2);
INSERT INTO carreras VALUES (16, 'Derecho', 'Abogado', 10, 3);
INSERT INTO carreras VALUES (17, 'Comunicación Social', 'Licenciado en Comunicación Social', 8, 3);
INSERT INTO carreras VALUES (18, 'Relaciones Públicas', 'Licenciado en Relaciones Públicas', 8, 3);
INSERT INTO carreras VALUES (19, 'Psicología', 'Licenciado en Psicología', 10, 3);
INSERT INTO carreras VALUES (20, 'Inglés', 'Licenciado en Ciencias de la Educación mención Inglés', 8, 3);
INSERT INTO carreras VALUES (21, 'Arquitectura', 'Arquitecto', 10, 4);
INSERT INTO carreras VALUES (22, 'Artes Plásticas y Diseño', 'Licenciado en Arte y Diseño', 9, 4);
INSERT INTO carreras VALUES (23, 'Electrónica y Telecomunicaciones', 'Ingeniero en Electrónica y Telecomunicaciones', 10, 4);
INSERT INTO carreras VALUES (24, 'Geología y Minas', 'Ingeniero en Geología y Minas', 10, 4);
INSERT INTO carreras VALUES (25, 'Ingeniería Civil', 'Ingeniero Civil', 10, 4);
INSERT INTO carreras VALUES (26, 'Sistemas Informáticos y Computación', 'Ingeniero en Sistemas Informáticos y Computación', 10, 4);
INSERT INTO carreras VALUES (27, 'Diseño Gráfico y Publicidad', 'Licenciados en Diseño Grafico y Publicidad', 6, NULL);
INSERT INTO carreras VALUES (29, 'Sistemas De Automatización', NULL, 6, NULL);
INSERT INTO carreras VALUES (30, 'Escuela De Electrónica', NULL, 6, NULL);
INSERT INTO carreras VALUES (31, 'Gestión Ambiental', 'Ingenieria en Gestion Ambiental', 6, NULL);
INSERT INTO carreras VALUES (32, 'Administración Turística', NULL, 6, NULL);
INSERT INTO carreras VALUES (33, 'Secretariado Ejecutivo', NULL, 6, NULL);
INSERT INTO carreras VALUES (34, 'Banca y Finanzas', 'Ingenieria en Banca y Finanzas', 6, NULL);
INSERT INTO carreras VALUES (1, 'Administración De Empresas
', 'Licenciado/a en Administración de Empresas
', 10, 1);
INSERT INTO carreras VALUES (28, 'Gastronomía-Tecnología', 'Licenciado de Gastronomia', 6, NULL);


--
-- Name: carreras_id_carrera_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('carreras_id_carrera_seq', 1, false);


--
-- Data for Name: clasificacion_institucion; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO clasificacion_institucion VALUES (2, 'Fiscomisional');
INSERT INTO clasificacion_institucion VALUES (3, 'Municipal');
INSERT INTO clasificacion_institucion VALUES (4, 'Particular Laico');
INSERT INTO clasificacion_institucion VALUES (5, 'Particular Religioso');
INSERT INTO clasificacion_institucion VALUES (1, 'Fiscal');


--
-- Name: clasificacion_institucion_id_clasificacion_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('clasificacion_institucion_id_clasificacion_institucion_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO django_admin_log VALUES (1, '2016-02-11 14:24:52.191112-05', '20', 'Senior', 2, 'Changed edad.', 38, 2);
INSERT INTO django_admin_log VALUES (2, '2016-02-11 21:48:11.236968-05', '495', ' TRATADO DE GIRON     SACAPALCA ', 2, 'Changed telefono.', 33, 2);
INSERT INTO django_admin_log VALUES (3, '2016-02-11 23:06:52.824289-05', '497', 'Loxa Dance   Av. Orillas del Zamora y Segundo Puertas Moreno', 1, '', 33, 2);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 3, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO django_content_type VALUES (1, 'log entry', 'admin', 'logentry');
INSERT INTO django_content_type VALUES (2, 'permission', 'auth', 'permission');
INSERT INTO django_content_type VALUES (3, 'group', 'auth', 'group');
INSERT INTO django_content_type VALUES (4, 'user', 'auth', 'user');
INSERT INTO django_content_type VALUES (5, 'content type', 'contenttypes', 'contenttype');
INSERT INTO django_content_type VALUES (6, 'session', 'sessions', 'session');
INSERT INTO django_content_type VALUES (7, 'areas', 'estudiantes', 'areas');
INSERT INTO django_content_type VALUES (8, 'carreras', 'estudiantes', 'carreras');
INSERT INTO django_content_type VALUES (9, 'clasificacion institucion', 'estudiantes', 'clasificacioninstitucion');
INSERT INTO django_content_type VALUES (10, 'instituciones', 'estudiantes', 'instituciones');
INSERT INTO django_content_type VALUES (11, 'instituciones carreras', 'estudiantes', 'institucionescarreras');
INSERT INTO django_content_type VALUES (12, 'instituciones jornada', 'estudiantes', 'institucionesjornada');
INSERT INTO django_content_type VALUES (13, 'instituciones modalidades', 'estudiantes', 'institucionesmodalidades');
INSERT INTO django_content_type VALUES (14, 'instituciones niveles', 'estudiantes', 'institucionesniveles');
INSERT INTO django_content_type VALUES (15, 'jornada', 'estudiantes', 'jornada');
INSERT INTO django_content_type VALUES (16, 'modalidades', 'estudiantes', 'modalidades');
INSERT INTO django_content_type VALUES (17, 'niveles', 'estudiantes', 'niveles');
INSERT INTO django_content_type VALUES (18, 'tipo institucion', 'estudiantes', 'tipoinstitucion');
INSERT INTO django_content_type VALUES (19, 'areas', 'instituciones', 'areas');
INSERT INTO django_content_type VALUES (20, 'auth group', 'instituciones', 'authgroup');
INSERT INTO django_content_type VALUES (21, 'auth group permissions', 'instituciones', 'authgrouppermissions');
INSERT INTO django_content_type VALUES (22, 'auth permission', 'instituciones', 'authpermission');
INSERT INTO django_content_type VALUES (23, 'auth user', 'instituciones', 'authuser');
INSERT INTO django_content_type VALUES (24, 'auth user groups', 'instituciones', 'authusergroups');
INSERT INTO django_content_type VALUES (25, 'auth user user permissions', 'instituciones', 'authuseruserpermissions');
INSERT INTO django_content_type VALUES (26, 'carreras', 'instituciones', 'carreras');
INSERT INTO django_content_type VALUES (27, 'clasificacion institucion', 'instituciones', 'clasificacioninstitucion');
INSERT INTO django_content_type VALUES (29, 'django admin log', 'instituciones', 'djangoadminlog');
INSERT INTO django_content_type VALUES (30, 'django content type', 'instituciones', 'djangocontenttype');
INSERT INTO django_content_type VALUES (31, 'django migrations', 'instituciones', 'djangomigrations');
INSERT INTO django_content_type VALUES (32, 'django session', 'instituciones', 'djangosession');
INSERT INTO django_content_type VALUES (33, 'instituciones', 'instituciones', 'instituciones');
INSERT INTO django_content_type VALUES (34, 'instituciones carreras', 'instituciones', 'institucionescarreras');
INSERT INTO django_content_type VALUES (35, 'instituciones modalidades', 'instituciones', 'institucionesmodalidades');
INSERT INTO django_content_type VALUES (36, 'instituciones niveles', 'instituciones', 'institucionesniveles');
INSERT INTO django_content_type VALUES (37, 'modalidades', 'instituciones', 'modalidades');
INSERT INTO django_content_type VALUES (38, 'niveles', 'instituciones', 'niveles');
INSERT INTO django_content_type VALUES (39, 'tipo institucion', 'instituciones', 'tipoinstitucion');


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('django_content_type_id_seq', 39, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO django_migrations VALUES (1, 'contenttypes', '0001_initial', '2016-01-08 08:34:55.23059-05');
INSERT INTO django_migrations VALUES (2, 'auth', '0001_initial', '2016-01-08 08:34:56.12224-05');
INSERT INTO django_migrations VALUES (3, 'admin', '0001_initial', '2016-01-08 08:34:56.34418-05');
INSERT INTO django_migrations VALUES (4, 'sessions', '0001_initial', '2016-01-08 08:34:56.466754-05');
INSERT INTO django_migrations VALUES (5, 'estudiantes', '0001_initial', '2016-01-08 08:36:35.068178-05');
INSERT INTO django_migrations VALUES (6, 'instituciones', '0001_initial', '2016-02-05 15:57:29.029752-05');
INSERT INTO django_migrations VALUES (7, 'instituciones', '0002_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_cuenta', '2016-02-05 15:57:29.149213-05');
INSERT INTO django_migrations VALUES (8, 'instituciones', '0003_auto_20160205_1915', '2016-02-05 15:57:29.184457-05');
INSERT INTO django_migrations VALUES (9, 'instituciones', '0004_delete_cuentasusuario', '2016-02-10 11:32:52.941643-05');


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('django_migrations_id_seq', 9, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO django_session VALUES ('7tqjiac2x1tvwdur94m5abn4ndzny4as', 'OWIzZmZkYmYwZjVkZjU5ZmMyZTM5YTZjNTI0YWU3YWViNWMzNDAyNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1ZDhmYjM4ZGRkMWE1OWYzYzVhMmFjNTk1MTAwNjY1OWQ1MWUzOTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-01-22 08:38:28.349914-05');
INSERT INTO django_session VALUES ('5ey3hksfqi0rnlsqcvgw3nuwglxlz7n3', 'ZGNkMjQ0NmQxOGZmMThiMmYzYWQ5NjE0YWNhNjAxMTI1NWRmNTQ2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjIzNjljMWFlODNkN2ZlMzI1ZjE1YTIzNzc3ODRhZjEwMzczODJiZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9', '2016-02-24 23:39:36.861142-05');


--
-- Data for Name: instituciones; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO instituciones VALUES (11, 'CENTRO DE AUDICION Y LENGUAJE', 'MERCADILLO 12-88 BERNARDO VALDIVIESO Y OLMEDO ', NULL, NULL, NULL, 12, 4, '-4.001426391080', '-79.200672685500', NULL, 3, 12, 91, 62);
INSERT INTO instituciones VALUES (28, 'CENTRO DE PRIMARIA POPULAR BRIGADA DE INFANTERIA N 7', 'CUXIBAMBA GUAYAQUIL ', NULL, NULL, NULL, 2, 1, '-3.979752659930', '-79.205248833000', NULL, 0, 1, 0, 0);
INSERT INTO instituciones VALUES (2, 'ALFONSO MARIA SILVA', 'BARRIO CELEN', 2573081, NULL, NULL, 2, 1, '-3.811803546700', '-79.400051779900', NULL, 1, 0, 6, 8);
INSERT INTO instituciones VALUES (24, 'CENTRO DE EDUCACION INICIAL PARTICULAR MADRE ETERNA', 'LEONIDAS GUERRERO SEGUNDO ABEL MORENO ', NULL, NULL, NULL, 1, 4, '-3.965940088080', '-79.229974614400', NULL, 0, 2, 4, 0);
INSERT INTO instituciones VALUES (23, 'CENTRO DE EDUCACION INICIAL PARTICULAR LAS TRAVESURAS DE CAMILO', 'MERCADILLO 16-41 BOLIVAR Y SUCRE ', NULL, NULL, NULL, 1, 4, '-4.001357776820', '-79.202365612900', NULL, 1, 4, 11, 9);
INSERT INTO instituciones VALUES (25, 'CENTRO DE EDUCACION INICIAL PARTICULAR MUNDO DE JUGUETE', 'ANTONIO CANALETO 2320 MIGUEL ANGEL Y SALVADOR DALI ', NULL, NULL, NULL, 1, 4, '-3.941221618900', '-79.229974614400', NULL, 0, 2, 12, 7);
INSERT INTO instituciones VALUES (15, 'CENTRO DE EDUCACION BASICA JUVENTUD EN MARCHA PARA PEI', 'CHUQUIRIBAMBA', NULL, NULL, NULL, 1, 1, '-3.842973427610
', '-79.341968089200
', NULL, 0, 0, 0, 0);
INSERT INTO instituciones VALUES (29, 'CENTRO DE REHABILITACION DE ADULTOS DE LOJA', 'AVENIDA EMILIANO ORTEGA LEOPOLDO PALACIOS ', NULL, NULL, NULL, 11, 1, '-4.003365300220', '-79.194212485000', NULL, 0, 2, 0, 0);
INSERT INTO instituciones VALUES (32, 'CENTRO EDUC COM INTERC BIL DE EDUC BASICA MONS LEONIDAS PROAÑO N 3', 'COMUNIDAD DE BUNQUE', NULL, NULL, NULL, 1, 1, '-3.814308094040', '-79.216528249200', NULL, 1, 1, 16, 15);
INSERT INTO instituciones VALUES (36, 'CENTRO EDUC COM INTERC BILINGUE DE EDUCACION BASICA BALBINA HIDALGO', 'COMUNIDAD SAN JOSE', NULL, NULL, NULL, 1, 1, '-3.792607438430', '-79.234801982400', NULL, 4, 5, 51, 56);
INSERT INTO instituciones VALUES (30, 'CENTRO EDUC COM INTERC BIL DE EDUC BASICA MARIANA DE JESUS GUANUCHE', 'COMUNIDAD DE HIERBA BUENA A LADO DE LA VIA GRANDE', NULL, NULL, NULL, 1, 1, '-3.764608310520', '-79.260135776300', NULL, 1, 1, 6, 10);
INSERT INTO instituciones VALUES (34, 'CENTRO EDUC COM INTERC BIL DE EDUCACION BASICA ROBERTO ANDRADE', 'COMUNIDAD DE PURUZHUMA', NULL, NULL, NULL, 1, 1, '-3.783496288240', '-79.245559843300', NULL, 3, 2, 27, 22);
INSERT INTO instituciones VALUES (33, 'CENTRO EDUC COM INTERC BIL DE EDUCACION BASICA LUZ COSTA ZABALETA', 'COMUNIDAD DE CAÑI A 3 KM DE LA VÍA PANANAMERICANA LOJA - CUENCA', NULL, NULL, NULL, 1, 1, '-3.720610741070', '-79.276191267600', NULL, 0, 2, 12, 8);
INSERT INTO instituciones VALUES (35, 'CENTRO EDUC COM INTERC BILINGUE DE EDUCACION BASICA AMARILIS FUENTE', 'COMUNIDAD DE PUEBLO VIEJO A 3KM DE LA PANAMERICANA', NULL, NULL, NULL, 1, 1, '-3.732275586610', '-79.271388684100', NULL, 2, 1, 14, 23);
INSERT INTO instituciones VALUES (39, 'CENTRO EDUCATIVO COM INTERC BIL DE EDUCACION BASICA AMAWTA KAWSAY', 'BARRIO SANTA ROSA VIA GUALEL', NULL, NULL, NULL, 1, 1, '-3.851307215140', '-79.425386259900', NULL, 1, 0, 5, 1);
INSERT INTO instituciones VALUES (37, 'CENTRO EDUC COM INTERC BILINGUE DE EDUCACION BASICA INTI PAKARI', 'COMUNIDAD DE CENSO', NULL, NULL, NULL, 1, 1, '-3.769612490640', '-79.248414322700', NULL, 1, 2, 11, 10);
INSERT INTO instituciones VALUES (41, 'CENTRO EDUCATIVO COM INTERC BIL DE EDUCACION BASICA INKA PIRKA', 'COMUNIDAD DE RAMOS', NULL, NULL, NULL, 1, 1, '-3.705357289990', '-79.272503293500', NULL, 0, 2, 16, 12);
INSERT INTO instituciones VALUES (40, 'CENTRO EDUCATIVO COM INTERC BIL DE EDUCACION BASICA INKA ÑAN', 'COMUNIDAD DE LINDEROS', NULL, NULL, NULL, 1, 1, '-3.734725806000', '-79.252975597400', NULL, 1, 2, 17, 19);
INSERT INTO instituciones VALUES (42, 'CENTRO EDUCATIVO COM INTERC BIL DE EDUCACION BASICA YACHAYTA MICHIKI', 'COMUNIDAD BELLAVISTA', NULL, NULL, NULL, 1, 1, '-3.797501073340', '-79.244415341900', NULL, 3, 0, 10, 9);
INSERT INTO instituciones VALUES (44, 'CENTRO EDUCATIVO COM INTERC BILINGUE DE EDUCACION BASICA KAPAK RAYMI', 'COMUNIDAD TUN TUN BUCASHI', NULL, NULL, NULL, 1, 1, '-3.751524114400', '-79.269559582200', NULL, 2, 2, 20, 26);
INSERT INTO instituciones VALUES (46, 'CENTRO EDUCATIVO COM INTERC BILINGUE DE EDUCACION BASICA SANTA CATALIN', 'PARROQUIA SAN LUCAS AL LADO DE LA IGLESIA CENTRAL', NULL, NULL, NULL, 1, 2, '-3.734503197460', '-79.263804950700', NULL, 2, 12, 131, 133);
INSERT INTO instituciones VALUES (50, 'CENTRO EDUCATIVO INTEGRAL ALBORADA', 'THOMAS RODRIGUEZ SN ABRAHAM LINCOLN Y KENNEDY ', NULL, NULL, NULL, 3, 4, '-4.003528800850', '-79.198642161100', NULL, 1, 4, 16, 8);
INSERT INTO instituciones VALUES (27, 'CENTRO DE FORMACION ARTESANAL RAMONA CABRERA', 'AZUAY 1270 BERNARDO VALDIVIESO ', NULL, NULL, NULL, 13, 1, '-4.000467819430', '-79.200638761200', NULL, 0, 9, 6, 69);
INSERT INTO instituciones VALUES (10, 'CENTINELA DEL SUR', 'LAGO MICHIGAN SN AV CHUQUIRIBAMBA ', NULL, NULL, NULL, 3, 4, '-3.951404966060', '-79.222191848900', NULL, 2, 1, 1, 57);
INSERT INTO instituciones VALUES (12, 'CENTRO DE CAPACITACIÓN DE INFORMÁTICA E INGLÉS LOJA CADIL', 'AV MANUEL AGUSTIN AGUIRRE 06-17 COLON Y JOSE ANTONIO EGUIGUREN ', NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, 2, 2, 0, 0);
INSERT INTO instituciones VALUES (88, 'COLEGIO PARTICULAR JOSE MARIA VIVAR CASTRO', 'BELEN BAJO CHARITI Y PROLONGACION DE LA BUENA VENTURA ', NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, 1, 6, 40, 11);
INSERT INTO instituciones VALUES (90, 'CONSERVATORIO PARTICULAR DE ARTE ANTON BRUCKNER', 'JUAN DE SALINAS 1332 BOLIVAR Y BERNARDO ', NULL, NULL, NULL, 7, 5, NULL, NULL, NULL, 2, 2, 0, 0);
INSERT INTO instituciones VALUES (82, 'COLEGIO EXPERIMENTAL BERNARDO VALDIVIESO', 'AV. EDUARDO KINGMAN 00 PABLO NERUDA Y CATAMAYO ', NULL, NULL, NULL, 3, 1, '-4.009221001990', '-79.200691671000', NULL, 85, 102, 2384, 1165);
INSERT INTO instituciones VALUES (16, 'CENTRO DE EDUCACION BASICA PARA PCEI VILCABAMBA', 'VILCABAMBA CENTRO CERCA DEL PARQUE', NULL, NULL, NULL, 13, 1, NULL, NULL, NULL, 0, 5, 0, 46);
INSERT INTO instituciones VALUES (17, 'CENTRO DE EDUCACION INICAL PARTICULAR HUMANITOS', 'OLMEDO 12-04 MIGUEL RIOFRIO ', NULL, NULL, NULL, 1, 4, '-3.998956077380
', '-79.199885715100
', NULL, 0, 5, 20, 13);
INSERT INTO instituciones VALUES (43, 'CENTRO EDUCATIVO COM INTERC BILINGUE DE EDUCACION BASICA CARCHI', 'COMUNIDAD DE CAPUR', NULL, NULL, NULL, 1, 1, '-3.82610747021', '-79.2290261691', NULL, 2, 2, 37, 43);
INSERT INTO instituciones VALUES (4, 'ANTONIO PENA CELI', 'IMBABURA 1474 BOLIVAR Y SUCRE ', NULL, NULL, NULL, 2, 4, '-3.98633141906', '-79.2283029429', NULL, 7, 34, 345, 342);
INSERT INTO instituciones VALUES (8, 'CAMINOS DEL SABER', 'COMUNIDAD DE MOLIN', 2546789, 45, 80, 2, 1, '-3.807977887250', '-79.225048339200', 'https://www.facebook.com/caminosdel.saber.5', 5, 0, 50, 69);
INSERT INTO instituciones VALUES (26, 'CENTRO DE EDUCACION INICIAL PIO JARAMILLO ALVARADO', 'BERNARDO VALDIVIEZO ANDRES BELLO ', NULL, NULL, NULL, 1, 1, '-3.930442509070', '-79.277194353500', NULL, 1, 11, 112, 88);
INSERT INTO instituciones VALUES (22, 'CENTRO DE EDUCACION INICIAL PARTICULAR GOTITAS DE MIEL', 'JOSE PICOITA 18-21 LAURO GUERRERO Y RAMON PINTO ', 2567823, 60, 40, 1, 4, '-4.005026559160', '-79.205365007200', 'S/P', 0, 8, 36, 42);
INSERT INTO instituciones VALUES (6, 'BURBUJITAS DE SABIDURIA', 'ERNESTO CHE GUEVARA JAIME HURTADO CUIDAD VICTORIA ', 2547536, 85, 120, 2, 4, '-3.995140748560', '-79.241754389800', 'http://ec.tiching.com/colegio/burbujitas-de-sabiduria/444467', 0, 5, 16, 24);
INSERT INTO instituciones VALUES (9, 'CDI YACUARCUNA ANEXO A LA GUARDERIA', 'ALISOS GOBERNACION DE MAINAS ', 2567842, 0, 0, 1, 1, '-4.017108047070', '-79.197531904300', 'http://ec.tiching.com/colegio/cdi-yacuarcuna-anexo-a-la-guarderia/444398', 0, 1, 7, 7);
INSERT INTO instituciones VALUES (21, 'CENTRO DE EDUCACION INICIAL PARTICULAR ARCOIRIS', 'LOURDES 1617 18 DE NOVIEMBRE ', 2543569, 75, 45, 1, 4, '-4.004580713560', '-79.199999489000', 'S/P', 1, 2, 13, 14);
INSERT INTO instituciones VALUES (84, 'COLEGIO PARTICULAR A DISTANCIA AMAZONAS- REGIMEN COSTA', 'AVENIDA MANUEL AGUSTIN AGUIRRE 1063 ENTRE MIGUEL RIOFRIO Y AZUAY ', NULL, NULL, NULL, 3, 4, '-3.999861389480', '-79.204484846000', NULL, 4, 9, 49, 31);
INSERT INTO instituciones VALUES (83, 'COLEGIO NACIONAL RUMISHITANA', 'BARRIO RUMISHITANA', NULL, NULL, NULL, 3, 1, '-4.150027393010', '-79.207754011600', NULL, 3, 4, 69, 52);
INSERT INTO instituciones VALUES (86, 'COLEGIO PARTICULAR EUGENIO ESPEJO', 'AV. SALVADOR BUSTAMANTE CELI 00 S/N ', NULL, NULL, NULL, 3, 4, '-3.957447938720', '-79.210807255900', NULL, 13, 30, 282, 343);
INSERT INTO instituciones VALUES (87, 'COLEGIO PARTICULAR ISIDRO AYORA', 'AV. EMILIANO ORTEGA 1101-93 LOURDES ', NULL, NULL, NULL, 3, 4, '-4.002499462840', '-79.195222843500', NULL, 3, 7, 147, 151);
INSERT INTO instituciones VALUES (89, 'COLEGIO POPULAR A DISTANCIA PIO JARAMILLO ALVARADO', 'BOLíVAR 1479 CATACOCHA ', NULL, NULL, NULL, 3, 1, '-4.003418391250', '-79.201883897400', NULL, 4, 6, 39, 133);
INSERT INTO instituciones VALUES (91, 'CONSERVATORIO SUPERIOR SALVADOR BUSTAMANTE CELI', 'AV SALVADOR BUSTAMANTE CELI ORILLAS DEL ZAMORA ', NULL, NULL, NULL, 7, 1, '-3.983362728030', '-79.202089629300', NULL, 29, 33, 0, 0);
INSERT INTO instituciones VALUES (49, 'CENTRO EDUCATIVO COMUNITARIA INTERCULTURAL BILINGUJOSE VICENTE ANDRADE', 'BARRIO MOLLEPAMBA', NULL, NULL, NULL, 6, 1, '-4.285191107800', '-79.218361145400', NULL, 1, 1, 6, 10);
INSERT INTO instituciones VALUES (57, 'COLEGIO DE BACHILLERATO AGUSTIN CURIPOMA', 'PARROQUIA GUALEL', NULL, NULL, NULL, 3, 1, '-3.770003862500', '-79.379971896200', NULL, 5, 2, 27, 50);
INSERT INTO instituciones VALUES (94, 'ESC. ADOLFO JURADO GONZALEZ', 'A ZUAY 1016 24 DE MAYO Y JUAN JOSE PEÑA ', NULL, NULL, NULL, 2, 1, '-4.000254153130', '-79.198055046900', NULL, 5, 17, 320, 138);
INSERT INTO instituciones VALUES (58, 'COLEGIO DE BACHILLERATO ABDON CALDERON MUÑOZ', 'AVENIDA AMADEO AGUIRRE', NULL, NULL, NULL, 3, 1, '-3.79005987359', '-79.2853363262', NULL, 3, 5, 65, 55);
INSERT INTO instituciones VALUES (59, 'COLEGIO DE BACHILLERATO ADOLFO VALAREZO', 'CARLOS ROMAN HINOSTROZA ADOLFO VALAREZO Y MANUEL CARRION PINZANO ', NULL, NULL, NULL, 3, 1, '-3.99302650336', '-79.2091638244', NULL, 18, 32, 738, 394);
INSERT INTO instituciones VALUES (60, 'COLEGIO DE BACHILLERATO BEATRIZ CUEVA DE AYORA', 'ORILLAS DEL ZAMORA 07-90 10 DE AGOSTO ', NULL, NULL, NULL, 3, 1, '-3.99633720138', '-79.1973342738', NULL, 35, 74, 229, 1873);
INSERT INTO instituciones VALUES (62, 'COLEGIO DE BACHILLERATO DR EDUARDO MORA MORENO', 'BARRIO MOTUPE', NULL, NULL, NULL, 3, 1, '-3.880363687020
', '-79.3266976735', NULL, 3, 6, 89, 75);
INSERT INTO instituciones VALUES (63, 'COLEGIO DE BACHILLERATO DR BALTAZAR AGUIRRE', 'ninguna', NULL, NULL, NULL, 3, 1, '-4.317864375730
', '-79.235057843200
', NULL, 5, 3, 95, 92);
INSERT INTO instituciones VALUES (64, 'COLEGIO DE BACHILLERATO EL CISNE', 'VIA A GUALEL BARRIO LA CONCHA EL CISNE', NULL, NULL, NULL, 3, 1, '-3.849497969920
', '-79.420221559500
', NULL, 5, 5, 37, 48);
INSERT INTO instituciones VALUES (66, 'COLEGIO DE BACHILLERATO GUILLERMO HERRERA SANCHEZ', 'CENTRO TAQUIL', NULL, NULL, NULL, 3, 1, '-3.893275868640
', '-79.290136093900
', NULL, 2, 3, 37, 33);
INSERT INTO instituciones VALUES (67, 'COLEGIO DE BACHILLERATO LIBERTADOR BOLIVAR', 'CENTRO PARROQUIA CERCA DEL SUBCENTRO DE SALUD', NULL, NULL, NULL, 3, 1, '-3.859999833490
', '-79.169809119400
', NULL, 1, 8, 42, 39);
INSERT INTO instituciones VALUES (68, 'COLEGIO PARTICULAR DE BACHILLERATO LICEO DE LOJA ', 'NO HAY NO HAY ', NULL, NULL, NULL, 3, 4, '-4.030026386360
', '-79.204220817000
', NULL, 12, 27, 263, 257);
INSERT INTO instituciones VALUES (69, 'COLEGIO DE BACHILLERATO MANUEL BENJAMIN CARRION', 'CENTRO DE YANGANA', NULL, NULL, NULL, 3, 1, '-4.363137934710
', '-79.177362611700
', NULL, 5, 5, 80, 56);
INSERT INTO instituciones VALUES (55, 'CENTRO OCUPACIONAL DE MÚSICA EMILIO ESCUDERO', 'PARROQUIA CHUQUIRIBAMBA', NULL, NULL, NULL, 7, 1, '-3.813218512410
', '-79.345086287000
', NULL, 0, 0, 0, 0);
INSERT INTO instituciones VALUES (71, 'COLEGIO DE BACHILLERATO PARTICULAR ANTONIO PEÑA CELI', 'BARRIO COLINAS DE BELEN COLINAS DE BELEN ', NULL, NULL, NULL, 3, 5, '-4.267062157690
', '-79.222762530100
', NULL, 12, 10, 152, 146);
INSERT INTO instituciones VALUES (72, 'COLEGIO DE BACHILLERATO PARTICULAR CORDILLERA', 'BERNARDO VALDIVIESO 06-34 JOSÉ ANTONIO EGUIGUREN ', NULL, NULL, NULL, 3, 4, '-3.996074172200
', '-79.201080540200
', NULL, 10, 20, 132, 147);
INSERT INTO instituciones VALUES (74, 'COLEGIO DE BACHILLERATO PARTICULAR PCEI AMAZONAS', 'AV MANUEL AGUISTIN AGUIRRE 10-63 AZUAY Y MIGUEL RIOFRIO ', NULL, NULL, NULL, 3, 4, '-3.999989050690
', '-79.204970791400
', NULL, 5, 10, 229, 105);
INSERT INTO instituciones VALUES (73, 'COLEGIO DE BACHILLERATO PARTICULAR MIGUEL ANGEL SUAREZ', 'AV SALVADOR BUSTAMANTE CELI AV GUAYAQUIL Y PASAJE ', NULL, NULL, NULL, 3, 5, '-3.981580627790
', '-79.201751348800
', NULL, 10, 6, 151, 63);
INSERT INTO instituciones VALUES (75, 'COLEGIO DE BACHILLERATO PARTICULAR SAN GERARDO', 'KM TRES Y MEDIO VIA VILCABAMBA 1171 SIN NOMBRE ', NULL, NULL, NULL, 3, 4, '-4.052107090030
', '-79.195698823000
', NULL, 21, 65, 399, 396);
INSERT INTO instituciones VALUES (77, 'COLEGIO DE BACHILLERATO PRESIDENTE ISIDRO AYORA', 'AVENIDA VIRGILIO RODAS SIN NOMBRE ', NULL, NULL, NULL, 3, 1, '-4.002499462840
', '-79.195222843500
', NULL, 3, 5, 68, 52);
INSERT INTO instituciones VALUES (78, 'COLEGIO DE BACHILLERATO RAFAEL RODRIGUEZ PALACIOS', 'VIA A MALACATOS', NULL, NULL, NULL, 3, 1, '-4.219218086810
', '-79.258502740100
', NULL, 2, 12, 124, 81);
INSERT INTO instituciones VALUES (79, 'COLEGIO DE BACHILLERATO SAN PEDRO DE VILCABAMBA', 'BARRIO PANECILLO', NULL, NULL, NULL, 3, 1, '-4.238250233730
', '-79.217721652800
', NULL, 6, 5, 64, 64);
INSERT INTO instituciones VALUES (80, 'COLEGIO DE BACHILLERATO SAN VICENTE FERRER', 'BARRIO SAN VICENTE', NULL, NULL, NULL, 3, 2, '-3.844691246550
', '-79.341775705000
', NULL, 9, 13, 113, 83);
INSERT INTO instituciones VALUES (96, 'ESCUELA DE EDUCACIAON BASICA LUIS PASTEUR', 'CENTRO SANTIAGO', NULL, NULL, NULL, 2, 1, '-3.792525254400
', '-79.283666040700
', NULL, 4, 4, 54, 56);
INSERT INTO instituciones VALUES (95, 'ESCUELA DE EDUCACION BASICA ISABEL DE ARAGON', 'CENTRO DE CHUQUIRIBAMBA', NULL, NULL, NULL, 2, 1, '-3.839337218580
', '-79.346170541400
', NULL, 1, 9, 44, 43);
INSERT INTO instituciones VALUES (53, 'CENTRO EDUCATIVO PARTICULAR LA CALANDRIA', 'JUAN MONTALVO Y VALLE SAGRADO ESQUINA', NULL, NULL, NULL, 1, 4, '-4.268718804190', '-79.184973635000', NULL, 1, 2, 3, 2);
INSERT INTO instituciones VALUES (56, 'CHISPITAS', 'AV. PIO JARAMILLO 18-164 CHILE ', NULL, NULL, NULL, 7, 4, '-4.009663805860', '-79.204670573500', NULL, 0, 3, 14, 9);
INSERT INTO instituciones VALUES (93, 'DOLORES PALACIO BRAVO', 'BARRIO SAN JOSE', NULL, NULL, NULL, 3, 1, '-4.270051313720', '-79.213307041400', NULL, 1, 0, 4, 2);
INSERT INTO instituciones VALUES (92, 'DIRIGENTES DEL FUTURO', 'CENTRO JUNTO A CACPE CALLEPÍO JARAMILLO ENTRE JUSTINIANO ESTUPIÑAN Y ALEJANDRO BRAVO', NULL, NULL, NULL, 2, 1, '-4.218580609010', '-79.260530703500', NULL, 0, 3, 25, 39);
INSERT INTO instituciones VALUES (98, 'ESCUELA DE EDUCACION BASICA VICENTE JARAMILLO PALACIO', 'BARRIO LIMON', NULL, NULL, NULL, 2, 1, '-3.935913184190
', '-79.312334235300
', NULL, 0, 1, 7, 4);
INSERT INTO instituciones VALUES (99, 'ESCUELA DE EDUCACION BAICA ROLANDO MERCHAN SEMERIA', 'BARRIO LA TRINIDAD', NULL, NULL, NULL, 2, 1, '-4.218971598630
', '-79.273634871400
', NULL, 0, 1, 3, 2);
INSERT INTO instituciones VALUES (102, 'ESCUELA DE EDUCACION BASICA 10 DE DICIEMBRE', 'BARRIO SAN FRANCISCO', NULL, NULL, NULL, 2, 1, '-3.784224663490
', '-79.363281664500
', NULL, 1, 1, 14, 17);
INSERT INTO instituciones VALUES (101, 'ESCUELA DE EDUCACION BASICA PROF JOSE BENIGNO JARAMILLO', 'EL PEDREGAL', NULL, NULL, NULL, 2, 1, '-4.202802992060
', '-79.269473373900
', NULL, 0, 3, 11, 12);
INSERT INTO instituciones VALUES (103, 'ESCUELA DE EDUCACION BASICA 16 DE JULIO', 'BARRIO EL CARMEN', NULL, NULL, NULL, 2, 1, '-4.200387901210
', '-79.228939993300
', NULL, 0, 3, 13, 5);
INSERT INTO instituciones VALUES (104, 'ESCUELA DE EDUCACION BASICA 18 DE NOVIEMBRE', 'MERCADILLO 10-91 JUAN JOSE PEÑA ', NULL, NULL, NULL, 2, 1, '-4.000969790170
', '-79.198638750400
', NULL, 2, 25, 108, 486);
INSERT INTO instituciones VALUES (108, 'ESCUELA DE EDUCACION BASICA ADOLFO JURADO GONZALEZ PARA PCI', 'AV SALVADOR BUSTAMANTE CELI 1186 CHONE Y SANTA ROSA ', NULL, NULL, NULL, 2, 1, '-4.000254153130
', '-79.198055046900
', NULL, 2, 3, 3, 42);
INSERT INTO instituciones VALUES (109, 'ESCUELA DE EDUCACION BASICA ADOLFO VALAREZO', 'TESALIA', NULL, NULL, NULL, 2, 1, '-3.993026503360
', '-79.209163824400
', NULL, 0, 2, 10, 11);
INSERT INTO instituciones VALUES (111, 'ESCUELA DE EDUCACION BASICA ALFONSO AULESTIA BRAVO', 'BARRIO TRES LEGUAS', NULL, NULL, NULL, 2, 1, '-4.130042991860
', '-79.203485296800
', NULL, 0, 3, 16, 15);
INSERT INTO instituciones VALUES (112, 'ESCUELA DE EDUCACION BASICA ALONSO DE MERCADILLO', 'AV PIO JARAMILLO 17-101 CUBA Y PUERTO RICO ', NULL, NULL, NULL, 2, 1, '-4.008082475480
', '-79.205169256500
', NULL, 11, 28, 479, 451);
INSERT INTO instituciones VALUES (113, 'ESCUELA DE EDUCACION BASICA ALVAREZ SANCHEZ COLOMBIA', 'GUALEL', NULL, NULL, NULL, 2, 1, '-3.769139348980
', '-79.377083694400
', NULL, 6, 11, 166, 165);
INSERT INTO instituciones VALUES (115, 'ESCUELA DE EDUCACION BASICA ANDRES MACHADO MONTERO', 'BARRIO MENFIS BAJO', NULL, NULL, NULL, 2, 1, '-4.005059282560
', '-79.207913125000
', NULL, 0, 5, 55, 43);
INSERT INTO instituciones VALUES (118, 'ESCUELA DE EDUCACION BASICA ANGEL RUBEN PLACENCIA', 'BARRIO ZENEN ALTO VIA NUEVA A CUENCA KILOMETRO VEINTITRES', NULL, NULL, NULL, 2, 1, '-3.845496804710
', '-79.291888450100
', NULL, 1, 1, 21, 12);
INSERT INTO instituciones VALUES (119, 'ESCUELA DE EDUCACION BASICA ANTONIO JIMENEZ DE MONTE', 'BARRIO PORDEL', NULL, NULL, NULL, 2, 1, '-3.849747522080
', '-79.328531307700
', NULL, 0, 1, 2, 5);
INSERT INTO instituciones VALUES (120, 'ESCUELA DE EDUCACION BASICA ATAHUALPA N 18', 'BARRIO LAS JUNTAS', NULL, NULL, NULL, 2, 1, '-3.818747560720
', '-79.246973977100
', NULL, 2, 1, 12, 17);
INSERT INTO instituciones VALUES (121, 'ESCUELA DE EDUCACION BASICA BENIGNO BAYANCELA', 'LENINGRADO PARIS Y BUCAREST ', NULL, NULL, NULL, 2, 1, '-3.981830437710
', '-79.196087346900
', NULL, 2, 14, 156, 129);
INSERT INTO instituciones VALUES (123, 'ESCUELA DE EDUCACION BASICA BLANCA CANO PALACIOS', 'BARRIO BELEN', NULL, NULL, NULL, 2, 1, '-4.193584430290
', '-79.243392681900
', NULL, 1, 4, 37, 35);
INSERT INTO instituciones VALUES (124, 'ESCUELA DE EDUCACION BASICA CAMILO DESTRUGE ILLINWORTH', 'BARRIO SAN FRANCISCO BAJO', NULL, NULL, NULL, 2, 1, '-4.198057696430
', '-79.258252549400
', NULL, 1, 0, 6, 4);
INSERT INTO instituciones VALUES (125, 'ESCUELA DE EDUCACION BASICA CARDENAL PABLO MUÑOZ VEGA', 'LAS PALMAS', NULL, NULL, NULL, 2, 1, '-3.854253496380
', '-79.197278942900
', NULL, 0, 1, 0, 0);
INSERT INTO instituciones VALUES (126, 'ESCUELA DE EDUCACION BASICA CARLOS BURNEO ARIAS', 'BARRIO PUNZARA GRANDE -RECINTO ARAMARA', NULL, NULL, NULL, 2, 1, '-4.047135498320
', '-79.208667518600
', NULL, 1, 3, 31, 22);
INSERT INTO instituciones VALUES (128, 'ESCUELA DE EDUCACION BASICA CLODOVEO CARRION', 'barrio la palma', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, 0, 5, 8);
INSERT INTO instituciones VALUES (129, 'ESCUELA DE EDUCACION BASICA CLOTARIO ESPINOSA SIGCHO', 'MACAINUMA', NULL, NULL, NULL, 2, 1, '-3.951554903140
', '-79.284669217500
', NULL, 1, 2, 13, 21);
INSERT INTO instituciones VALUES (132, 'ESCUELA DE EDUCACION BASICA CUERPO DE PAZ', 'BARRIO SANTORUM', NULL, NULL, NULL, 2, 1, '-4.251857911380
', '-79.288892457800
', NULL, 0, 1, 0, 4);
INSERT INTO instituciones VALUES (133, 'ESCUELA DE EDUCACION BASICA DOROTEA CARRION', 'BARRIO EL CAPULI', NULL, NULL, NULL, 2, 1, '-4.047109546880
', '-79.196997554200
', NULL, 0, 10, 62, 28);
INSERT INTO instituciones VALUES (134, 'ESCUELA DE EDUCACION BASICA DR ANGEL MINOS CUEVA', 'BARRIO SAN JOSE DE CEIBOPAMBA', NULL, NULL, NULL, 2, 1, '-4.192273655420
', '-79.300749734200
', NULL, 0, 1, 6, 4);
INSERT INTO instituciones VALUES (135, 'ESCUELA DE EDUCACION BASICA DR ANGEL RAFAEL MORALES', 'BARRIO MOTUPE ALTO VIA A SAN AGUSTIN', NULL, NULL, NULL, 2, 1, '-3.945080808730
', '-79.233279799800
', NULL, 0, 3, 14, 14);
INSERT INTO instituciones VALUES (136, 'ESCUELA DE EDUCACION BASICA DR BENJAMIN AYORA CUEVA', 'CENTRO TAQUIL', NULL, NULL, NULL, 2, 1, '-3.889586261680
', '-79.290080512600
', NULL, 0, 4, 26, 17);
INSERT INTO instituciones VALUES (137, 'ESCUELA DE EDUCACION BASICA DR DANIEL RODAS BUSTAMANTE', 'NICOLASA JURADO 24-77 AVENIDA DE LOS PALTAS ', NULL, NULL, NULL, 2, 1, '-3.999722371250
', '-79.211193240000
', NULL, 10, 11, 246, 190);
INSERT INTO instituciones VALUES (140, 'ESCUELA DE EDUCACION BASICA DR HOMERO VITERI LA FRONTE', 'BARRIO GULASPAMBA', NULL, NULL, NULL, 2, 1, '-3.759390005850
', '-79.371889369000
', NULL, 2, 0, 14, 12);
INSERT INTO instituciones VALUES (139, 'ESCUELA DE EDUCACION BASICA DR FRANCISCO COSTA MALDONADO', 'BARRIO LA PAZ DE BELLAVISTA', NULL, NULL, NULL, 2, 1, '-4.101641062370
', '-79.223801908000
', NULL, 0, 1, 6, 5);
INSERT INTO instituciones VALUES (142, 'ESCUELA DE EDUCACION BASICA DR JORGE CASTILLO CARRION', 'BARRIO AMABLE MARIA', NULL, NULL, NULL, 2, 1, '-3.946642589770
', '-79.211001487300
', NULL, 1, 5, 26, 21);
INSERT INTO instituciones VALUES (144, 'ESCUELA DE EDUCACION BASICA DR LUIS EMILIO RODRIGUEZ', 'BARRIO LALANGUI', NULL, NULL, NULL, 2, 1, '-4.207696467190
', '-79.225942314700
', NULL, 2, 2, 17, 15);
INSERT INTO instituciones VALUES (146, 'ESCUELA DE EDUCACION BASICA DR MANUEL BENJAMIN CARRION MORA', 'AV. MANUEL AGUSTIN AGUIRRE 19-61 ENTRE CHILE Y RAMON BURNEO ', NULL, NULL, NULL, 2, 1, '-4.011388464480
', '-79.203559284700
', NULL, 1, 9, 123, 68);
INSERT INTO instituciones VALUES (147, 'ESCUELA DE EDUCACION BASICA DR MAXIMO AGUSTIN RODRIGUEZ', 'COMUNIDAD DE VINOYACU CHICO', NULL, NULL, NULL, 2, 1, '-3.761940383760
', '-79.255469101500
', NULL, 1, 9, 83, 85);
INSERT INTO instituciones VALUES (150, 'ESCUELA DE EDUCACION BASICA DRA MATILDE HIDALGO DE PROCEL N1', 'ARGENTINA 14127 SEVILLA DE ORO Y URUGUAY ', NULL, NULL, NULL, 2, 1, '-4.004607655680
', '-79.208139212800
', NULL, 2, 17, 234, 247);
INSERT INTO instituciones VALUES (151, 'ESCUELA DE EDUCACION BASICA EDUCARE', 'AV.ORIENTAL DE PASO 08-91 AV. SALVADOR BUSTAMANTE CELI ', NULL, NULL, NULL, 2, 4, '-3.975691806290
', '-79.200746686600
', NULL, 5, 14, 97, 96);
INSERT INTO instituciones VALUES (153, 'ESCUELA DE EDUCACION BASICA EMILIANO MORA', 'VIA ANTIGUA A CUENCA KM 14 BARRIO MASACA', NULL, NULL, NULL, 2, 1, '-3.885109245960
', '-79.224195464300
', NULL, 0, 2, 11, 13);
INSERT INTO instituciones VALUES (154, 'ESCUELA DE EDUCACION BASICA ENRIQUE AGUIRRE BUSTAMANTE', 'BARRIO QUILLOLLACO MARGEN DERECHO RIO MALACATOS', NULL, NULL, NULL, 2, 1, '-4.068996635790
', '-79.199002108500
', NULL, 6, 2, 54, 36);
INSERT INTO instituciones VALUES (143, 'ESCUELA DE EDUCACION BÁSICA DR JOSE MARIA TORRES RIOFRIO', 'RUMICORRAL VIA ANTIGUA A CATAMAYO KM', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, 0, 10, 7);
INSERT INTO instituciones VALUES (156, 'ESCUELA DE EDUCACION BASICA FEDERICO GARCIA LORCA', 'BARRIO ZHUCOS', NULL, NULL, NULL, 2, 1, '-3.934608761030
', '-79.211801504100
', NULL, 0, 3, 16, 10);
INSERT INTO instituciones VALUES (155, 'ESCUELA DE EDUCACION BASICA FEDER ARTESANOS DE LOJA PARA PCEI', 'BERNARDO VALDIVIEZO 12-42 LOURDES Y MERCADILLO ', NULL, NULL, NULL, 13, 1, NULL, NULL, NULL, 3, 6, 0, 120);
INSERT INTO instituciones VALUES (158, 'ESCUELA DE EDUCACION BASICA FISCOMISIONAL EDUVIGES PORTALET', 'GONZALEZ SUAREZ 0999 ANDRÉS BELLO ', NULL, NULL, NULL, 2, 2, '-4.004583638850
', '-79.197226202200
', NULL, 2, 8, 111, 74);
INSERT INTO instituciones VALUES (159, 'ESCUELA DE EDUCACION BASICA FISCOMISIONAL SANTO DOMINGO DE GUZMAN', 'JUAN JOSE PEÑA 1065 AZUAY Y MIGUEL RIOFRIO ', NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, 0, 7, 18, 76);
INSERT INTO instituciones VALUES (160, 'ESCUELA DE EDUCACION BASICA FRANCISCO EGUIGUREN', 'BARRIO SANTO DOMINGO', NULL, NULL, NULL, 2, 1, '-4.175695850970
', '-79.299722698000
', NULL, 1, 1, 7, 2);
INSERT INTO instituciones VALUES (161, 'ESCUELA DE EDUCACION BASICA FRAY VICENTE SOLANO', 'CENTRO DE YANGANA', NULL, NULL, NULL, 2, 1, '-4.364329619000
', '-79.176585034800
', NULL, 2, 3, 60, 46);
INSERT INTO instituciones VALUES (157, 'ESCUELA DE EDUCACION BASICA FERNANDO CHAVEZ', 'BARRIO CHINGUILANCHI', NULL, NULL, NULL, 2, 1, '-3.958975390350
', '-79.206302121600
', NULL, 2, 8, 51, 38);
INSERT INTO instituciones VALUES (179, 'ESCUELA DE EDUCACION BASICA JOSE MARIA RIOFRIO', 'BARRIO PACAYPAMBA', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 0, 2, 13, 15);
INSERT INTO instituciones VALUES (186, 'ESCUELA DE EDUCACION BASICA JUAN ZAMBRANO', 'BARRIO GONZABAL', NULL, NULL, NULL, 2, 1, '-3.906775789680
', '-79.316363300900
', NULL, 1, 1, 7, 11);
INSERT INTO instituciones VALUES (187, 'ESCUELA DE EDUCACION BASICA JULIAN DE RUA PIZARRO', 'YAMBURARA', NULL, NULL, NULL, 2, 1, '-4.262613586810
', '-79.211225570100
', NULL, 2, 2, 12, 15);
INSERT INTO instituciones VALUES (189, 'ESCUELA DE EDUCACION BASICA LAURO DAMERVAL AYORA N2', 'AV. BENJAMIN CARRION 1 PABLO PALACIO ', NULL, NULL, NULL, 2, 1, '-4.013392763880
', '-79.206247185700
', NULL, 3, 4, 43, 42);
INSERT INTO instituciones VALUES (190, 'ESCUELA DE EDUCACION BASICA LEONARDO GALAN PEREZ', 'BARRIO ILLINZHAPA', NULL, NULL, NULL, 2, 1, '-3.829579237910
', '-79.211392357200
', NULL, 0, 1, 4, 5);
INSERT INTO instituciones VALUES (191, 'ESCUELA DE EDUCACION BASICA LEONCIO JARAMILLO ESCUDERO', 'BARRIO ZAÑE', NULL, NULL, NULL, 2, 1, '-3.813218512410
', '-79.345086287000
', NULL, 1, 0, 4, 0);
INSERT INTO instituciones VALUES (192, 'ESCUELA DE EDUCACION BASICA LEOPOLDO NICOLAS CHAVEZ', 'BARRIO PUCALA', NULL, NULL, NULL, 2, 1, '-3.856189930410
', '-79.210724731300
', NULL, 1, 0, 5, 0);
INSERT INTO instituciones VALUES (194, 'ESCUELA DE EDUCACION BASICA LIC NELSON BERMEO', 'POTOPAMBA', NULL, NULL, NULL, 2, 1, '-4.176447187390
', '-79.202857952900
', NULL, 1, 0, 6, 6);
INSERT INTO instituciones VALUES (195, 'ESCUELA DE EDUCACION BASICA LINDEMBERG', 'BARRIO PUEBLO NUEVO', NULL, NULL, NULL, 2, 1, '-4.016137108140
', '-79.200082248200
', NULL, 0, 1, 7, 2);
INSERT INTO instituciones VALUES (196, 'ESCUELA DE EDUCACION BASICA LOPEZ DE LEON', 'LA CHORRERA', NULL, NULL, NULL, 2, 1, '-3.789913270640
', '-79.257303698000
', NULL, 1, 0, 4, 4);
INSERT INTO instituciones VALUES (198, 'ESCUELA DE EDUCACION BASICA LUIS VIVES', 'BARRIO SAN FRANCISCO ALTO', NULL, NULL, NULL, 2, 1, '-4.185419770040
 ', '-79.247779010900
', NULL, 0, 1, 0, 6);
INSERT INTO instituciones VALUES (166, 'ESCUELA DE EDUCACION BASICA GONZALO PIZARRO', 'CERCA DE LA IGLESIA DE JIMBI8LLA', NULL, NULL, NULL, 2, 1, '-3.860639031220
', '-79.172697544400
', NULL, 3, 5, 33, 36);
INSERT INTO instituciones VALUES (167, 'ESCUELA DE EDUCACION BASICA GRACIELA FELIPA ATARIHUANA', 'AV LOS PALTAS CALLE ESTADOS UNIDOS ', NULL, NULL, NULL, 2, 1, '-4.011944245230
', '-79.213696897700
', NULL, 3, 13, 176, 136);
INSERT INTO instituciones VALUES (202, 'ESCUELA DE EDUCACION BASICA MANUEL ESTEBAN GODOY O', 'BARRIO NANGORA', NULL, NULL, NULL, 2, 1, '-4.189108551690
', '-79.211610202900
', NULL, 0, 1, 14, 15);
INSERT INTO instituciones VALUES (169, 'ESCUELA DE EDUCACION BASICA HERNANDO DE BENAVENTE', 'BARRIO STA TERESITA VIA PORTOVELO KILOMETRO 20', NULL, NULL, NULL, 2, 1, '-3.807777103590
', '-79.525141511700
', NULL, 0, 1, 3, 5);
INSERT INTO instituciones VALUES (170, 'ESCUELA DE EDUCACION BASICA IBARRA', 'BARRIO JESUS MARIA BAJO', NULL, NULL, NULL, 2, 1, '-3.843752033440
', '-79.208608113000
', NULL, 1, 0, 3, 4);
INSERT INTO instituciones VALUES (171, 'ESCUELA DE EDUCACION BASICA ING EDUARDO UNDA BUSTAMANTE', 'HUIÑACAPAC ORIENTAL', NULL, NULL, NULL, 2, 1, '-3.818969806070
', '-79.354393264300
', NULL, 1, 0, 10, 5);
INSERT INTO instituciones VALUES (173, 'ESCUELA DE EDUCACION BASICA JOAQUIN PALACIOS', 'BARRIO SAHUAICO', NULL, NULL, NULL, 2, 1, '-4.357335927970
', '-79.227777535500
', NULL, 1, 0, 8, 3);
INSERT INTO instituciones VALUES (175, 'ESCUELA DE EDUCACION BASICA JOSE INGENIEROS N 2', 'AV. 8 DE DICIEMBRE AV JAIME ROLDOS Y LEONIDAS PLAZA ', NULL, NULL, NULL, 2, 1, '-3.965498085820
', '-79.207719667200
', NULL, 3, 17, 207, 151);
INSERT INTO instituciones VALUES (176, 'ESCUELA DE EDUCACION BASICA JOSE INGENIEROS NUMERO 1', 'PTE LEONIDAS PLAZA AV OCHO DE DICIEMBRE ', NULL, NULL, NULL, 2, 1, '-3.965498085820
', '-79.207719667200
', NULL, 7, 23, 420, 346);
INSERT INTO instituciones VALUES (177, 'ESCUELA DE EDUCACION BASICA JOSE MARIA BUSTAMANTE', 'BARRIO CACHIPAMBA', NULL, NULL, NULL, 2, 1, '-3.893471126730
', '-79.279475707100
', NULL, 0, 4, 26, 30);
INSERT INTO instituciones VALUES (178, 'ESCUELA DE EDUCACION BASICA JOSE MARIA JARAMILLO SUAREZ', 'BARRIO SOLAMAR KM 15 VIA ANTIGUA A CUENCA', NULL, NULL, NULL, 2, 1, '-3.867140074920
', '-79.219137379300
', NULL, 1, 2, 22, 25);
INSERT INTO instituciones VALUES (203, 'ESCUELA DE EDUCACION BASICA MANUEL GOMEZ DE SALAZAR', 'BARRIO PICOTAS', NULL, NULL, NULL, 2, 1, '-4.173359417960
', '-79.273356790900
', NULL, 0, 1, 6, 4);
INSERT INTO instituciones VALUES (205, 'ESCUELA DE EDUCACION BASICA MANUEL RIOFRIO MORA', 'BARRIO CAPAMACO', NULL, NULL, NULL, 2, 1, '-4.273692798290
', '-79.200607404800
', NULL, 1, 1, 6, 11);
INSERT INTO instituciones VALUES (207, 'ESCUELA DE EDUCACION BASICA MATER DEI', 'AV. DE LOS PALTAS 23-141 BENJAMIN CARRION ', NULL, NULL, NULL, 2, 2, '-4.019999603310
', '-79.217137070400
', NULL, 8, 31, 510, 475);
INSERT INTO instituciones VALUES (301, 'REHABILITACION DE ADULTOS DE LOJA', 'EMILIANO ORTEGA LEOPOLDO PALACIOS ', NULL, NULL, NULL, 11, 3, '-4.003365300220
', '-79.194212485000
', NULL, 0, 0, 0, 0);
INSERT INTO instituciones VALUES (209, 'ESCUELA DE EDUCACION BASICA MERCEDES ALCIRA PALACIOS DE CARPIO', 'BARRIO CHALLIPACCHA', NULL, NULL, NULL, 2, 1, '-3.829334901400
', '-79.255000728700
', NULL, 1, 0, 2, 3);
INSERT INTO instituciones VALUES (210, 'ESCUELA DE EDUCACION BASICA MIGUEL RIOFRIO N 1', 'BERNARDO VALDIVIESO MERCADILLO Y OLMEDO ', NULL, NULL, NULL, 2, 1, '-4.001163408770
', '-79.200331102700
', NULL, 12, 31, 1084, 97);
INSERT INTO instituciones VALUES (211, 'ESCUELA DE EDUCACION BASICA MIGUEL RIOFRIO N 2', 'BERNADO VALDIVIESO MERCADILLO Y AZUAY ', NULL, NULL, NULL, 2, 1, '-4.000277533080
', '-79.200459094100
', NULL, 6, 20, 375, 141);
INSERT INTO instituciones VALUES (213, 'ESCUELA DE EDUCACION BASICA MUNICIPAL ECOLOGICA', 'YARUCO CAZADEROS ', NULL, NULL, NULL, 2, 3, '-4.027057588590
', '-79.223469899800
', NULL, 5, 8, 92, 59);
INSERT INTO instituciones VALUES (215, 'ESCUELA DE EDUCACION BASICA NUEVE DE OCTUBRE', 'BARRIO PANECILLO', NULL, NULL, NULL, 2, 1, '-4.242754458070
', '-79.222106720400
', NULL, 3, 5, 31, 40);
INSERT INTO instituciones VALUES (216, 'ESCUELA DE EDUCACION BASICA OLGA MOROCHO CORREA', 'PAJA BLANCA', NULL, NULL, NULL, 2, 1, '-3.956806620670
', '-79.279274003500
', NULL, 0, 1, 5, 3);
INSERT INTO instituciones VALUES (217, 'ESCUELA DE EDUCACION BASICA ORIENTE ECUATORIANO', 'AV UNIVERSITARIA JOSE FELIX DE VALDIVIEZO ', NULL, NULL, NULL, 2, 1, '-3.992548296940
', '-79.205509209200
', NULL, 0, 1, 2, 0);
INSERT INTO instituciones VALUES (219, 'ESCUELA DE EDUCACION BASICA PARTICULAR EL TESORO DEL SABER', 'AZUAY 1138 OLMEDO Y JUAN JOSE PENA ', NULL, NULL, NULL, 2, 4, '-4.000193495070
', '-79.199252726100
', NULL, 2, 9, 80, 56);
INSERT INTO instituciones VALUES (180, 'ESCUELA DE EDUCACION BASICA JOSE MIGUEL BURNEO BURNEO', 'BARRIO OBRAPIA', NULL, NULL, NULL, 2, 1, '-3.999669877090
', '-79.224447532800
', NULL, 6, 9, 168, 168);
INSERT INTO instituciones VALUES (181, 'ESCUELA DE EDUCACION BASICA JOSE RAFAEL ARIZAGA VEGA', 'BARRIO ZALAPA ALTO', NULL, NULL, NULL, 2, 1, '-3.909112417930
', '-79.247634731200
', NULL, 0, 3, 27, 17);
INSERT INTO instituciones VALUES (183, 'ESCUELA DE EDUCACION BASICA JOSEFA AMELIA ORTEGA ESPINOZA', 'BARRIO NARANJO', NULL, NULL, NULL, 2, 1, '-3.829774658600
', '-79.222698935200
', NULL, 1, 0, 3, 1);
INSERT INTO instituciones VALUES (182, 'ESCUELA DE EDUCACION BASICA JOSE VASCONCELOS', 'BARRIO LA PALMIRA', NULL, NULL, NULL, 2, 1, '-4.336998086070
', '-79.234941459600
', NULL, 0, 4, 32, 26);
INSERT INTO instituciones VALUES (164, 'ESCUELA DE EDUCACION BASICA GONZALEZ SUAREZ', 'CENTRO CHUQUIRIBAMBA', NULL, NULL, NULL, 2, 1, '-3.845166802420

', '-79.344502734500

', NULL, 4, 5, 65, 58);
INSERT INTO instituciones VALUES (185, 'ESCUELA DE EDUCACION BASICA JUAN ULLAURI', 'LA ELVIRA', NULL, NULL, NULL, 2, 1, '-4.350358705610
', '-79.210191823600
', NULL, 0, 1, 9, 16);
INSERT INTO instituciones VALUES (221, 'ESCUELA DE EDUCACION BASICA PARTICULAR JUAN PABLO II', '24 DE MAYO 07-35 DIEZ DE AGOSTO Y JOSE ANTONIO EGUIGUREN ', NULL, NULL, NULL, 2, 5, '-3.996194407240
', '-79.198189971500
', NULL, 1, 9, 40, 33);
INSERT INTO instituciones VALUES (222, 'ESCUELA DE EDUCACION BASICA PARTICULAR LICEO AMERICANO', 'FARADAY 00 TEODORO WOLF ', NULL, NULL, NULL, 2, 4, '-4.030026386360
', '-79.204220817000
', NULL, 2, 12, 75, 73);
INSERT INTO instituciones VALUES (271, 'ESCUELA DE EDUCAION BASICA BENJAMIN AYORA PARA PCEI', 'CENTRO TAQUIL', NULL, NULL, NULL, 2, 1, '-3.889667885300
', '-79.290197391700
', NULL, 0, 2, 0, 25);
INSERT INTO instituciones VALUES (225, 'ESCUELA DE EDUCACION BASICA PARTICULAR PUNTO DE PARTIDA', 'AZUAY JUAN JOSE PENA Y OLMEDO ', NULL, NULL, NULL, 2, 4, '-3.999995831820
', '-79.199829420900
', NULL, 4, 24, 154, 115);
INSERT INTO instituciones VALUES (226, 'ESCUELA DE EDUCACION BASICA PARTICULAR SAN ANDRES', 'AV PIO JARAMILLO GALILEO GALILY ', NULL, NULL, NULL, 2, 4, '-4.027166700000
', '-79.203191579900
', NULL, 4, 9, 61, 59);
INSERT INTO instituciones VALUES (227, 'ESCUELA DE EDUCACION BASICA PARTICULAR TIMOTEO', 'PANAMA ESQUINA URUGUAY ', NULL, NULL, NULL, 2, 4, '-3.999691995300
', '-79.205583719300
', NULL, 0, 11, 64, 56);
INSERT INTO instituciones VALUES (228, 'ESCUELA DE EDUCACION BASICA PEDRO DE CIANCA', 'BARRIO DURAZNILLO VIA A CATAMAYO KM 17', NULL, NULL, NULL, 2, 1, '-3.992031285450
', '-79.208913867700
', NULL, 0, 2, 12, 8);
INSERT INTO instituciones VALUES (229, 'ESCUELA DE EDUCACION BASICA PEDRO FERMIN CEVALLOS', 'BARRIO CARAMELO', NULL, NULL, NULL, 2, 1, '-3.859142448660
', '-79.337309116600
', NULL, 0, 1, 9, 6);
INSERT INTO instituciones VALUES (231, 'ESCUELA DE EDUCACION BASICA PEDRO PINTO GUZMAN', 'ZENEN BAJO', NULL, NULL, NULL, 2, 1, '-3.848301222000
', '-79.278999717900
', NULL, 1, 0, 7, 8);
INSERT INTO instituciones VALUES (232, 'ESCUELA DE EDUCACION BASICA PEREZ TAGLE', 'BARRIO CACHIPIRCA', NULL, NULL, NULL, 2, 1, '-3.844274782740
', '-79.268915657400
', NULL, 0, 1, 4, 2);
INSERT INTO instituciones VALUES (224, 'ESCUELA DE EDUCACION BASICA PARTICULAR PIONEROS DEL SABER', 'LAURO GUERRERO 06-64 JOSE ANTONIO EGUIGUREN Y COLON ', NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, 0, 6, 42, 25);
INSERT INTO instituciones VALUES (269, 'ESCUELA DE EDUCACION BASICA ZOILA ALVARADO DE JARAMILLO', 'BERNARDO VALDIVIESO 12-42 MERCADILLO Y LOURDES ', NULL, NULL, NULL, 2, 1, '-4.001725939260
', '-79.201194271600
', NULL, 1, 20, 18, 525);
INSERT INTO instituciones VALUES (268, 'ESCUELA DE EDUCACION BASICA VICTOR MERCANTE', 'BARRIO VERGEL', NULL, NULL, NULL, 2, 1, '-4.223830369100
', '-79.254718564500
', NULL, 3, 7, 62, 76);
INSERT INTO instituciones VALUES (267, 'ESCUELA DE EDUCACION BASICA VICTOR MANUEL BURNEO', 'BARRIO EL SAUCE', NULL, NULL, NULL, 2, 1, '-4.204471931410
', '-79.235496562100
', NULL, 0, 2, 7, 7);
INSERT INTO instituciones VALUES (266, 'ESCUELA DE EDUCACION BASICA VICTOR GERARDO PILCO', 'BARRIO PALANDA', NULL, NULL, NULL, 2, 1, '-4.153308588370
', '-79.251470580600
', NULL, 0, 1, 15, 7);
INSERT INTO instituciones VALUES (264, 'ESCUELA DE EDUCACION BASICA VICENTE PAZ', 'AVENIDA PRINCIPAL NINGUNA ', NULL, NULL, NULL, 2, 1, '-4.337025276710
', '-79.234968420800
', NULL, 2, 5, 74, 90);
INSERT INTO instituciones VALUES (263, 'ESCUELA DE EDUCACION BASICA VICENTE BASTIDAS REINOSO', 'RIO DE JANEIRO ASUNCION IQUITOS Y CORDOVA CIUDADELA CLODOVEO JARAMILLO ALVARADO ', NULL, NULL, NULL, 2, 1, '-3.976829120430
', '-79.224775692300
', NULL, 5, 15, 176, 165);
INSERT INTO instituciones VALUES (261, 'ESCUELA DE EDUCACION BASICA TRECE DE ABRIL', 'BOLIVAR LUIS FERNANDO DE LA VEGA ', NULL, NULL, NULL, 2, 1, '-4.261391344340
', '-79.222253146300
', NULL, 1, 9, 71, 108);
INSERT INTO instituciones VALUES (259, 'ESCUELA DE EDUCACION BASICA TEODORO WOLF', 'BARRIO TAXICHE VIA A VILCABAMBA', NULL, NULL, NULL, 2, 1, '-4.218141697510
', '-79.242328907200
', NULL, 1, 7, 35, 46);
INSERT INTO instituciones VALUES (257, 'ESCUELA DE EDUCACION BASICA TENIENTE HUGO ORTIZ N1', 'AV. SALVADOR BUSTAMANTE CELI SANTA ROSA Y CHONE ', NULL, NULL, NULL, 2, 1, '-3.978441499730
', '-79.201109880400
', NULL, 6, 16, 178, 236);
INSERT INTO instituciones VALUES (262, 'ESCUELA DE EDUCACION BASICA ULPIANO MOSCOSO', 'BARRIO CHICHACA', NULL, NULL, NULL, 2, 1, '-3.999562194150
', '-79.200010449700
', NULL, 1, 0, 9, 13);
INSERT INTO instituciones VALUES (255, 'ESCUELA DE EDUCACION BASICA SIGLO XXI PARTICULAR', 'OLMEDO 10-53 AZUAY Y MIGUEL RIOFRIO ', NULL, NULL, NULL, 2, 4, '-3.999562194150
', '-79.200010449700
', NULL, 5, 18, 113, 77);
INSERT INTO instituciones VALUES (253, 'ESCUELA DE EDUCACION BASICA ROSA SANCHEZ DE FIERRO', 'BARRIO SAN JUAN', NULL, NULL, NULL, 2, 1, '-3.922856839570
', '-79.226051860000
', NULL, 2, 2, 12, 18);
INSERT INTO instituciones VALUES (252, 'ESCUELA DE EDUCACION BASICA ROSA MATILDE ALVEAR', 'BARRIO LLIGLLA', NULL, NULL, NULL, 2, 1, '-3.824000943880
', '-79.264500182800
', NULL, 0, 1, 6, 6);
INSERT INTO instituciones VALUES (251, 'ESCUELA DE EDUCACION BASICA ROSA JOSEFINA BURNEO DE BURNEO', 'AVENIDA BARCELONA BARRIO TURUNUMA JUNTO A CAFRILOSA ninguna ', NULL, NULL, NULL, 2, 1, '-3.976135136700
', '-79.213306149100
', NULL, 3, 12, 133, 146);
INSERT INTO instituciones VALUES (250, 'ESCUELA DE EDUCACION BASICA ROSA GRIMANESA ORTEGA', 'MANUEL IGNACIO TOLEDO 0131 AV EMILIANO ORTEGA Y JUAN DE SALINAS ', NULL, NULL, NULL, 2, 1, '-3.990499327010
', '-79.203055558200
', NULL, 2, 7, 58, 53);
INSERT INTO instituciones VALUES (249, 'ESCUELA DE EDUCACION BASICA ROSA CEVALLOS DE LUDEÑA', 'BARRIO CARARANGO VIA A SAN PEDRO DE VILCABAMBA', NULL, NULL, NULL, 2, 1, '-4.233058318790
', '-79.232802017200
', NULL, 0, 1, 4, 2);
INSERT INTO instituciones VALUES (248, 'ESCUELA DE EDUCACION BASICA RIO LAGARTOCOCHA', 'BARRIO EL AUXILIO', NULL, NULL, NULL, 2, 1, '-3.901191337330
', '-79.341107476700
', NULL, 0, 1, 1, 3);
INSERT INTO instituciones VALUES (247, 'ESCUELA DE EDUCACION BASICA RICARDO VALDIVIESO', 'BARRIO CERA', NULL, NULL, NULL, 2, 1, '-3.906440714350
', '-79.289362188300
', NULL, 4, 9, 137, 120);
INSERT INTO instituciones VALUES (245, 'ESCUELA DE EDUCACION BASICA REINA JULIANA DE HOLANDA', 'BARRIO LA GRANJA', NULL, NULL, NULL, 2, 1, '-4.208502713570
', '-79.250528618000
', NULL, 2, 2, 10, 9);
INSERT INTO instituciones VALUES (244, 'ESCUELA DE EDUCACION BASICA RAMON SEBASTIAN VALDIVIEZO', 'BARRIO MENFIS ALTO AVENIDA EUGENIO ESPEJO KM OCHO Y MEDIO', NULL, NULL, NULL, 2, 1, '-4.014722532960
', '-79.235472491500
', NULL, 1, 2, 20, 14);
INSERT INTO instituciones VALUES (243, 'ESCUELA DE EDUCACION BASICA RAMON BURNEO', 'BARRIO ZALAPA BAJO VIA AL SEMINARIO MAYOR', NULL, NULL, NULL, 2, 1, '-3.909031034240
', '-79.247634900200
', NULL, 2, 7, 53, 47);
INSERT INTO instituciones VALUES (240, 'ESCUELA DE EDUCACION BASICA PROF JULIA JARAMILLO', 'EL RODEO', NULL, NULL, NULL, 2, 1, '-3.768390205620
', '-79.377859297100
', NULL, 1, 0, 8, 4);
INSERT INTO instituciones VALUES (239, 'ESCUELA DE EDUCACION BASICA PROF FRANCISCO QUEZADA ALVAREZ', 'BARRIO MASACA ALTO', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, 0, 4, 9);
INSERT INTO instituciones VALUES (238, 'ESCUELA DE EDUCACION BASICA PROF CLORINDA ESPINOSA', 'BARRIO NUEVA FATIMA', NULL, NULL, NULL, 2, 1, '-3.873418824510
', '-79.335948793300
', NULL, 0, 2, 8, 4);
INSERT INTO instituciones VALUES (242, 'ESCUELA DE EDUCACION BASICA RAFAEL RIOFRIO', 'BARRIO LAS ACHIRAS. VIA SAN ANTONIO ENTRADA A PIEDRA BOLA', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 0, 1, 4, 9);
INSERT INTO instituciones VALUES (236, 'ESCUELA DE EDUCACION BASICA PRF JULIO ORDOÑEZ ESPINOSA', 'AV. UNIVERSITARIA JUAN DE SALINAS Y PASAJE RODRIGUEZ ', NULL, NULL, NULL, 2, 1, '-3.991417305810
', '-79.205196523900
', NULL, 20, 26, 722, 174);
INSERT INTO instituciones VALUES (237, 'ESCUELA DE EDUCACION BASICA PRIMERO DE JUNIO', 'BARRO LLUGLLA', NULL, NULL, NULL, 2, 1, '-3.801580249700
', '-79.359386823200
', NULL, 1, 0, 5, 5);
INSERT INTO instituciones VALUES (233, 'ESCUELA DE EDUCACION BASICA PIEDAD BURNEO DE OJEDA', 'BARRIO MOYOCOCHA', NULL, NULL, NULL, 2, 1, '-4.277861005290
', '-79.283079010800
', NULL, 1, 0, 3, 3);
INSERT INTO instituciones VALUES (299, 'PEDRO BENAVENTE', 'BARRIO BAHIN', NULL, NULL, NULL, 2, 1, '-3.780468517200
', '-79.375973341800
', NULL, 0, 1, 7, 8);
INSERT INTO instituciones VALUES (300, 'RAINBOW PLAY SCHOOL', 'PARIS 02-16 ZOILO RODRIGUEZ ', NULL, NULL, NULL, 1, 4, '-3.992249061280
', '-79.196892997500
', NULL, 1, 3, 37, 48);
INSERT INTO instituciones VALUES (18, 'CENTRO DE EDUCACION INICIAL CEI JOSE MIGUEL GARCIA MORENO', 'CALLE BOLIVAR 01-35 JUAN DE SALINAS Y MANUEL IGNACIO TOLEDO ', NULL, NULL, NULL, 1, 1, '-3.991086964220', '-79.203000256400', NULL, 0, 10, 118, 85);
INSERT INTO instituciones VALUES (31, 'CENTRO EDUC COM INTERC BIL DE EDUC BASICA MONS LEONIDAS PROAÑO N 2', 'COMUNIDAD DE LANCAPAC 4KM DE LA PANAMERICANA', NULL, NULL, NULL, 1, 1, '-3.727447431440', '-79.271749181300', NULL, 3, 2, 19, 23);
INSERT INTO instituciones VALUES (38, 'CENTRO EDUC COMUN INTERC BIL DE EDUCACION BASICA VICTOR MARCOS MEDINA', 'COMUNIDAD DE NOGAL', NULL, NULL, NULL, 1, 1, '-3.804858209710', '-79.225054728400', NULL, 1, 1, 11, 14);
INSERT INTO instituciones VALUES (45, 'CENTRO EDUCATIVO COM INTERC BILINGUE DE EDUCACION BASICA MIGUEL ESPINO', 'BARRIO EL DURAZNO A MANO DERECHA VIA A CUENCA', NULL, NULL, NULL, 1, 1, '-3.779556869200', '-79.256082121100', NULL, 0, 1, 16, 9);
INSERT INTO instituciones VALUES (47, 'CENTRO EDUCATIVO COM INTERC BILINGUE DE EDUCACION BASICA WAKA KUSKA', 'COMUNIDAD DE CIUDADELA', NULL, NULL, NULL, 1, 1, '-3.722748970020', '-79.246302182800', NULL, 2, 0, 4, 4);
INSERT INTO instituciones VALUES (48, 'CENTRO EDUCATIVO COMUNITARIA INTERCULTURAL BILINGUE DE EDUC PACHAKUTIK', 'PARROQUIA EL VALLE BARRIO EL CASTILLO', NULL, NULL, NULL, 6, 1, '-3.934751940670', '-79.219526187100', NULL, 2, 1, 19, 19);
INSERT INTO instituciones VALUES (61, 'COLEGIO DE BACHILLERATO DOCTOR BENJAMIN CARRION', 'AV. PIO JARAMILLO CUBA ', NULL, NULL, NULL, 3, 1, '-4.00808247548', '-79.2051692565', NULL, 6, 11, 127, 74);
INSERT INTO instituciones VALUES (65, 'COLEGIO DE BACHILLERATO FISCOMISIONAL DANIEL ALVAREZ BURNEO', 'AV DANIEL ALVAREZ 12-51 AV ORILLAS DEL ZAMORA ', NULL, NULL, NULL, 3, 2, '-3.987918158240
', '-79.201197341400
', NULL, 82, 88, 1400, 1644);
INSERT INTO instituciones VALUES (70, 'COLEGIO DE BACHILLERATO MANUEL ENRIQUE RENGEL', 'AV. UNIVERSITARIA JUAN DE SALINAS ENTRE DIECIOCHO DE NOVIEMBRE Y AVENIDA UNIVERSIARIA ', NULL, NULL, NULL, 3, 1, '-3.991479379610
', '-79.204638138300
', NULL, 9, 7, 123, 79);
INSERT INTO instituciones VALUES (76, 'COLEGIO DE BACHILLERATO PIO JARAMILLO ALVARADO', 'BOLIVAR 1479 CATACOCHA Y LOURDES ', NULL, NULL, NULL, 3, 1, '-4.003418747970
', '-79.202045971500
', NULL, 23, 56, 78, 930);
INSERT INTO instituciones VALUES (297, 'MUNDO DE COLORES', 'CARIAMANGA 1455 SUCRE Y BOLÍVAR ', NULL, NULL, NULL, 1, 4, '-4.003644867110
', '-79.202072490600
', NULL, 0, 7, 49, 37);
INSERT INTO instituciones VALUES (294, 'MERCEDES DE JESUS MOLINA Y AYALA', 'OLMEDO 09-60 MIGUEL RIOFRIO Y ROCAFUERTE ', NULL, NULL, NULL, 3, 2, '-3.998567869420
', '-79.200165689400
', NULL, 0, 5, 28, 100);
INSERT INTO instituciones VALUES (295, 'MONS. FRANCISCO VALDIVIEZO ALVARADO', 'BOLIVAR 05-41 IMBABURA ', NULL, NULL, NULL, 2, 1, '-3.994557741350
', '-79.202308397100
', NULL, 0, 11, 0, 146);
INSERT INTO instituciones VALUES (293, 'MATILDE HIDALGO DE PROCEL NRO 2', 'ARGENTINA SEVILLA DE ORO ', NULL, NULL, NULL, 2, 1, '-4.004607655680
', '-79.208139212800
', NULL, 1, 5, 49, 45);
INSERT INTO instituciones VALUES (326, 'UNIDAD EDUCATIVA MUNICIPAL DR ANGEL FELICISIMO ROJAS', 'COLINAS DE BELEN SIN NOMBRE ', NULL, NULL, NULL, 3, 3, '-3.976829120430
', '-79.224775692300
', NULL, 4, 11, 95, 110);
INSERT INTO instituciones VALUES (324, 'UNIDAD EDUCATIVA MANUEL JOSÉ RODRIGUEZ', 'BARRIO LA TRINIDAD', NULL, NULL, NULL, 3, 2, '-4.216140308290
', '-79.269164699700
', NULL, 12, 21, 349, 348);
INSERT INTO instituciones VALUES (283, 'IBEROAMERICANO SAN AGUSTIN', 'AGUSTIN CARRION AVENIDA SALVADOR BUSTAMANTE CELI ', NULL, NULL, NULL, 3, 4, '-3.973193311630
', '-79.199473560600
', NULL, 7, 12, 101, 106);
INSERT INTO instituciones VALUES (322, 'UNIDAD EDUCATIVA LA PORCIUNCULA', 'CALLE BOLIVAR 0639 COLON Y JOSE ANTONIO EGUIGUREN ', NULL, NULL, NULL, 3, 5, '-3.995806560150
', '-79.202746877800
', NULL, 9, 36, 139, 863);
INSERT INTO instituciones VALUES (305, 'TULCAN', 'NARANJITO', NULL, NULL, NULL, 2, 1, '-3.910470535960
', '-79.274552200400
', NULL, 1, 1, 8, 7);
INSERT INTO instituciones VALUES (320, 'UNIDAD EDUCATIVA FISCOMISIONAL PARA PCEI HNO ANGEL PASTRANA CORRAL', 'JUAN DE SALINAS AVENIDA ORILLAS DEL ZAMORA Y SANTIAGO DE LAS MONTAÑAS ', NULL, NULL, NULL, 3, 2, '-3.987918158240
', '-79.201197341400
', NULL, 13, 33, 443, 598);
INSERT INTO instituciones VALUES (304, 'SERVICIO ECUATORIANO DE CAPACITACIÓN PROFESIONAL SECAP', 'GRANADA LOJA AV ISIDRO AYORA ', NULL, NULL, NULL, 5, 3, NULL, NULL, NULL, 1, 1, 13, 0);
INSERT INTO instituciones VALUES (292, 'MARIA MONTESSORI', 'ALEJANDRO BRAVO MONTUFAR CENTRO DE MALACATOS ALEJANDRO BRAVO Y MONTUFAR', NULL, NULL, NULL, 2, 1, '-4.219415891380
', '-79.257997915000
', NULL, 4, 8, 152, 170);
INSERT INTO instituciones VALUES (291, 'LUCRECIA ALDEAN', 'BARRIO "EL CHAUPI"', NULL, NULL, NULL, 1, 1, '-4.245443347450
', '-79.247221231300
', NULL, 0, 1, 4, 2);
INSERT INTO instituciones VALUES (290, 'LOS OLIVOS', 'AV EDUARDO KINGMAN 20-36 YAHUARZONGO ', NULL, NULL, NULL, 1, 4, '-4.011086334160
', '-79.201867146000
', NULL, 0, 3, 36, 27);
INSERT INTO instituciones VALUES (288, 'LAURO DAMERVAL AYORA 1', 'AVENIDA BENJAMIN CARRION 21197 PABLO PALACIO ', NULL, NULL, NULL, 2, 1, '-4.013392763880
', '-79.206247185700
', NULL, 15, 31, 559, 449);
INSERT INTO instituciones VALUES (286, 'JARDIN ANTONIO PEÑA CELI', 'JOSE DAVID TOLEDO 1 DIEGO VACA DE LA VEGA ', NULL, NULL, NULL, 1, 1, '-4.267062157690
', '-79.222762530100
', NULL, 0, 3, 31, 17);
INSERT INTO instituciones VALUES (284, 'INSTITUTO ESPECIAL FISCAL PARA CIEGOS BYRON EGUIGUREN', 'BOLIVAR 0131 EMILIANO ORTEGA ', NULL, NULL, NULL, 10, 1, '-3.993531244270
', '-79.200167667900
', NULL, 2, 7, 16, 17);
INSERT INTO instituciones VALUES (323, 'UNIDAD EDUCATIVA MANUEL IGNACIO MONTERO VALDIVIESO', 'AVENIDA VILLONACO OBRA PIA', NULL, NULL, NULL, 3, 1, '-3.999082173290
 ', '-79.224475810700
', NULL, 9, 17, 161, 124);
INSERT INTO instituciones VALUES (282, 'I.E. ESPECIAL DE LOJA NO. 2', 'AGUSTIN PALACIOS TRAS DEL ASILO DE ANCIANO DANIEL ALVAREZ SANCHEZ ', NULL, NULL, NULL, 10, 2, '-3.971886224190
', '-79.197198433800
', NULL, 4, 8, 37, 20);
INSERT INTO instituciones VALUES (281, 'HUGO GUILLERMO GONZALEZ', 'VELASCO IBARRA LEONIDAS PLAZA ', NULL, NULL, NULL, 3, 1, '-3.868553063350
', '-79.326495802000
', NULL, 0, 4, 46, 43);
INSERT INTO instituciones VALUES (280, 'HERNAN GALLARDO MOSCOSO', 'AV ISIDRO AYORA BARQUISIMETO ', NULL, NULL, NULL, 3, 1, '-3.983691623330
', '-79.236997545300
', NULL, 6, 4, 115, 79);
INSERT INTO instituciones VALUES (279, 'FRANCISCO JAVIER SALAZAR', 'BARRIO LINDEROS', NULL, NULL, NULL, 2, 1, '-4.250836677790
', '-79.260918021200
', NULL, 1, 0, 8, 3);
INSERT INTO instituciones VALUES (277, 'FILOMENA ROJAS', 'AVENIDA VILLONACO SIN NOMBRE ', NULL, NULL, NULL, 2, 1, '-3.995195062090
', '-79.241781286900
', NULL, 1, 9, 120, 95);
INSERT INTO instituciones VALUES (276, 'FILOMENA MORA DE CARRION', 'CALLE BOLIVAR BAILÓN 00 AV CUXIBAMBA ', NULL, NULL, NULL, 2, 1, '-3.989836395600
', '-79.210026122500
', NULL, 3, 18, 123, 281);
INSERT INTO instituciones VALUES (275, 'ESCUERLA DE EDUCACION BASICA AZUAY N 12', 'BARRIO MONTECRISTI', NULL, NULL, NULL, 2, 1, '-3.863307820410
', '-79.190138781800
', NULL, 0, 2, 5, 3);
INSERT INTO instituciones VALUES (273, 'ESCUELA PARTICULAR VESPERTINA CONFESIONAL LA DOLOROSA', 'JOSE ANTONIO EGUIGUREN 11-92 OLMEDO ', NULL, NULL, NULL, 2, 5, '-3.995392628000
', '-79.199551334400
', NULL, 13, 6, 262, 0);
INSERT INTO instituciones VALUES (3, 'AMAWTA WASI', 'COMUNIDAD DE MINUYACU GRANDE A 5 KM DE VIA ANTIGUA A CUENCA', NULL, NULL, NULL, 2, 1, '-3.752131836260', '-79.243372262600', NULL, 1, 2, 17, 15);
INSERT INTO instituciones VALUES (1, 'ALBERGUE INFANTIL PADRE JULIO VILLARROEL OCAÑA', 'AGUSTIN CARRION PALACIOS NINGUNA ', 2572736, NULL, NULL, 1, 1, '-3.971274318300', '-79.198559334400', NULL, 0, 3, 38, 32);
INSERT INTO instituciones VALUES (81, 'COLEGIO DE BACHILLERATO VILCABAMBA', 'AV DIEGO VACA DE VEGA Y LA PAZ KM 1 VIA A YAMBURARA', NULL, NULL, NULL, 3, 1, '-4.261248298100
', '-79.219055930800
', NULL, 12, 25, 323, 350);
INSERT INTO instituciones VALUES (97, 'ESCUELA DE EDUCACION BASICA LUIS HUMBERTO BENITEZ COSTA', 'BARRIO PUNZARA CHICO', NULL, NULL, NULL, 2, 1, '-4.031151613420
', '-79.210107284900
', NULL, 2, 9, 80, 97);
INSERT INTO instituciones VALUES (100, 'ESCUELA DE EDUCACION BASICA PARTICULAR BETEL', 'IMBABURA 14-49 BOLÍVAR Y SUCRE ', NULL, NULL, NULL, 2, 4, '-3.998253944640
', '-79.197222037400
', NULL, 1, 18, 110, 75);
INSERT INTO instituciones VALUES (52, 'CENTRO EDUCATIVO PARTICULAR BILINGUE DIRIGENTES DEL FUTURO', 'MIGUEL RIOFRIO 15-35 18 DE NOVIEMBRE Y SUCRE ', NULL, NULL, NULL, 1, 4, '-3.999442670220', '-79.203225179900', NULL, 2, 9, 65, 63);
INSERT INTO instituciones VALUES (106, 'ESCUELA DE EDUCACION BASICA 25 DE DICIEMBRE', 'PANAMERICANA CALLE HABANA ', NULL, NULL, NULL, 2, 1, '-3.978444499710
', '-79.223277570800
', NULL, 1, 7, 83, 70);
INSERT INTO instituciones VALUES (110, 'ESCUELA DE EDUCACION BASICA AGUSTIN ALFONSO PALACIO PALACIO', 'VIA NUEVA A ZAMORA VIA NUEVA A ZAMORA ', NULL, NULL, NULL, 2, 1, '-3.981803310620
', '-79.196087406000
', NULL, 2, 2, 20, 15);
INSERT INTO instituciones VALUES (117, 'ESCUELA DE EDUCACION BASICA ANGEL MODESTO VALLEJO VIVANCO', 'BARRIO YANACOCHA', NULL, NULL, NULL, 2, 1, '-3.981829214390
', '-79.179142095500
', NULL, 0, 3, 21, 18);
INSERT INTO instituciones VALUES (272, 'ESCUELA FISCAL DE NIÑAS ELISEO ÁLVAREZ', 'BOLIVAR 14-71 LOURDES Y CATACOCHA ', NULL, NULL, NULL, 2, 1, '-4.00308322839', '-79.2016145042', NULL, 3, 17, 29, 367);
INSERT INTO instituciones VALUES (303, 'SAN JUAN BAUTISTA DE LA SALLE', 'AV. ORILLAS DEL ZAMORA 1 ROCAFUERTE ', NULL, NULL, NULL, 3, 2, '-3.998837110880
', '-79.195140819800
', NULL, 4, 14, 131, 78);
INSERT INTO instituciones VALUES (307, 'U.E MUNICIPAL HEROES DEL CENEPA', 'TENIENTE GEOVANY CALLES 1 CABO HERNESTO VACA ', NULL, NULL, NULL, 2, 3, '-4.026445683150
', '-79.208361705900
', NULL, 4, 11, 187, 144);
INSERT INTO instituciones VALUES (308, 'UNIDAD DE EDUCACION ESPECIAL CIUDAD DE LOJA N1', 'AV. MANUEL AGUSTIN AGUIRRE 19-51 CHILE Y GOBERNACION DE MAINAS ', NULL, NULL, NULL, 3, 1, '-4.011026748920
', '-79.203551070700
', NULL, 0, 8, 41, 28);
INSERT INTO instituciones VALUES (309, 'UNIDAD EDUCATIVA 27 DE FEBRERO', 'PABLO PALACIO 21-51 JHON F KENNEDY ', NULL, NULL, NULL, 3, 1, '-4.014502600020
', '-79.205164246900
', NULL, 21, 56, 540, 617);
INSERT INTO instituciones VALUES (310, 'UNIDAD EDUCATIVA CORAZON DE MARIA', 'JUNTO AL CAMPO MARIANO', NULL, NULL, NULL, 3, 2, '-3.850611385830
', '-79.425666649000
', NULL, 6, 12, 74, 61);
INSERT INTO instituciones VALUES (312, 'UNIDAD EDUCATIVA A DISTANCIA DE LOJA EXT MADRE LAURA MONTOYA', 'VIA ANTIGUA A CUENCA', NULL, NULL, NULL, 3, 2, '-3.816419711130
', '-79.245079198100
', NULL, 3, 5, 19, 24);
INSERT INTO instituciones VALUES (313, 'UNIDAD EDUCATIVA CALASANZ', 'AVENIDA ORILLAS DEL ZAMORA ISIDRO AYORA ', NULL, NULL, NULL, 3, 2, '-3.976996903350
', '-79.202112444000
', NULL, 30, 65, 1234, 1006);
INSERT INTO instituciones VALUES (314, 'UNIDAD EDUCATIVA COMUNITARIA INTERCULTURAL BILINGUE RUMIÑAHUI', 'BARRIO PICHIG', NULL, NULL, NULL, 3, 1, '-3.712280517150
', '-79.266080840500
', NULL, 6, 9, 84, 92);
INSERT INTO instituciones VALUES (317, 'UNIDAD EDUCATIVA FERNANDO SUAREZ PALACIO', 'AVENIDA PABLO PALACIO 1 SIN NOMBRE ', NULL, NULL, NULL, 3, 1, '-3.951781032850
', '-79.241612126800
', NULL, 5, 20, 183, 188);
INSERT INTO instituciones VALUES (319, 'UNIDAD EDUCATIVA FISCOMISIONAL VICENTE ANDA AGUIRRE', 'JOSE ANTONIO EGUIGUREN 11-92 OLMEDO ', NULL, NULL, NULL, 3, 2, '-3.995392628000
', '-79.199551334400
', NULL, 69, 31, 1501, 184);
INSERT INTO instituciones VALUES (330, 'UNIDAD EDUCATIVA PARTICULAR ATENEO', 'CALLE SUCRE 05-43 COLÓN E IMBABAURA ', NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, 6, 29, 187, 133);
INSERT INTO instituciones VALUES (51, 'CENTRO EDUCATIVO IV CENTENARIO 2', 'LAURO GUERRERO RAMON PINTO ENTRE ROCAFUERTE Y MIGUEL RIOFRIO ', NULL, NULL, NULL, 2, 1, '-3.999304455900', '-79.206169831400', NULL, 3, 11, 109, 108);
INSERT INTO instituciones VALUES (54, 'CENTRO EDUCATIVO SAGRADO CORAZON PRIMARIA', 'ARGENTINA 18-24 BRASIL ESQUINA ', NULL, NULL, NULL, 2, 4, '-4.007888292910', '-79.207330695500', NULL, 2, 7, 15, 9);
INSERT INTO instituciones VALUES (105, 'ESCUELA DE EDUCACION BASICA 24 DE MAYO', 'BARRIO PUCACOCHA', NULL, NULL, NULL, 2, 1, '-3.951614316560
', '-79.222830665600
', NULL, 2, 10, 102, 109);
INSERT INTO instituciones VALUES (107, 'ESCUELA DE EDUCACION BASICA ABDON CALDERON', 'BARRIO UNION Y PROGRESO', NULL, NULL, NULL, 2, 1, '-3.854554971760
', '-79.426001535300
', NULL, 0, 6, 46, 41);
INSERT INTO instituciones VALUES (122, 'ESCUELA DE EDUCACION BASICA BENJAMIN FRANKLIN NO 30', 'BARRIO MOTUPE', NULL, NULL, NULL, 2, 1, '-3.880165169720
', '-79.326914146500
', NULL, 2, 7, 75, 77);
INSERT INTO instituciones VALUES (127, 'ESCUELA DE EDUCACION BASICA CIUDAD DE LOJA', 'MANUEL IGNACIO TOLEDO 0131 EMILIANO ORTEGA ', NULL, NULL, NULL, 2, 1, '-4.011026748920
', '-79.203551070700
', NULL, 4, 34, 84, 706);
INSERT INTO instituciones VALUES (130, 'ESCUELA DE EDUCACION BASICA CLOTILDE GUILLEN DE REZANO', 'BARRIO SEVILLA DE ORO KM 12 VIA ANTIGUA A CUENCA', NULL, NULL, NULL, 2, 1, '-3.897137266270
', '-79.224863509000
', NULL, 1, 1, 4, 5);
INSERT INTO instituciones VALUES (131, 'ESCUELA DE EDUCACION BASICA CUARTO CENTENARIO N 1', 'LAURO GUERRERO 09-07 ROCAFUERTE ', NULL, NULL, NULL, 2, 1, '-3.998671052800
', '-79.205973118100
', NULL, 7, 18, 392, 157);
INSERT INTO instituciones VALUES (138, 'ESCUELA DE EDUCACION BASICA DR EDISON CALLE LOAIZA', 'AV. BENJAMIN CARRION FRANCISCO DE NARIÑO ', NULL, NULL, NULL, 2, 1, '-4.018973252190
', '-79.210944279400
', NULL, 1, 10, 133, 118);
INSERT INTO instituciones VALUES (145, 'ESCUELA DE EDUCACION BASICA DR LUIS FELIPE ZAPATER ALVAREZ BLANCO', 'CARIGAN PANAMERICANA A CUENCA KM CUATRO Y MEDIO', NULL, NULL, NULL, 2, 1, '-3.958196806260
', '-79.239500701600
', NULL, 4, 8, 127, 110);
INSERT INTO instituciones VALUES (148, 'ESCUELA DE EDUCACION BASICA DR REINALDO ESPINOSA AGUILAR', 'BARRIO REINALDO ESPINOSA', NULL, NULL, NULL, 2, 1, '-4.014859466070
', '-79.219444346000
', NULL, 6, 9, 137, 130);
INSERT INTO instituciones VALUES (149, 'ESCUELA DE EDUCACION BASICA DR RICARDO SOTOMAYOR', 'BARRIO SURO', NULL, NULL, NULL, 2, 1, '-4.340138932480
', '-79.190470401600
', NULL, 0, 2, 9, 8);
INSERT INTO instituciones VALUES (152, 'ESCUELA DE EDUCACION BASICA ELVIA BÉLGICA JIMÉNEZ DE GONZÁLEZ', 'BARRIO RUMIZHITANA', NULL, NULL, NULL, 2, 1, '-4.150027393010
', '-79.207754011600
', NULL, 1, 9, 75, 58);
INSERT INTO instituciones VALUES (14, 'UNIDAD EDUCATIVA SANTA MARIANA DE JESUS', 'OLMEDO 0960 ROCAFUERTE Y MIGUEL RIOFRIO ', NULL, NULL, NULL, 3, 5, '-3.998115770290
', '-79.200175679800
', NULL, 12, 51, 57, 1233);
INSERT INTO instituciones VALUES (5, 'UNIDAD EDUCATIVA PARTICULAR LA INMACULADA', 'BOLIVAR 09-35 ROCAFUERTE Y MIGUEL RIOFRIO ', NULL, NULL, NULL, 3, 5, '-3.998526380730
', '-79.201858551200
', NULL, 17, 63, 86, 1374);
INSERT INTO instituciones VALUES (85, 'UNIDAD EDUCATIVA PARTICULAR JUAN MONTALVO', 'AV. EMILIANO ORTEGA 1375 LOURDES ', NULL, NULL, NULL, 3, 4, '-4.003302760020
', '-79.194554778800
', NULL, 2, 10, 79, 64);
INSERT INTO instituciones VALUES (331, 'UNIDAD EDUCATIVA PARTICULAR JOSE ANTONIO EGUIGUREN LA SALLE', 'AVENIDA ORILLAS DEL ZAMORA 3 ROCAFUERTE ', NULL, NULL, NULL, 3, 5, '-3.998277339160
', '-79.195529219700
', NULL, 17, 28, 672, 323);
INSERT INTO instituciones VALUES (329, 'UNIDAD EDUCATIVA MUSHUK RIMAK', 'CABECERA PARROQUIAL', NULL, NULL, NULL, 3, 1, '-3.738634821110
', '-79.263337741700
', NULL, 14, 9, 134, 175);
INSERT INTO instituciones VALUES (327, 'UNIDAD EDUCATIVA MUNICIPAL MONSEÑOR JORGE GUILLERMO ARMIJOS', 'VIA A CUENCA KM UNO Y AV PABLO PALACIO', NULL, NULL, NULL, 3, 3, '-3.972441695960
', '-79.215583079200
', NULL, 2, 10, 97, 94);
INSERT INTO instituciones VALUES (13, 'UNIDAD EDUCATIVA TENIENTE CORONEL LAURO GUERRERO', 'SALVADOR BUSTAMANTE CELI ninguna ', NULL, NULL, NULL, 3, 4, '-3.948808534320
', '-79.217416436100
', '', 21, 47, 837, 434);
INSERT INTO instituciones VALUES (188, 'ESCUELA DE EDUCACION BASICA JULIO MARIA MATOVELLE', 'BARRIO LA BANDA, KM. 3 1/2 VIA A MOTUPE', NULL, NULL, NULL, 2, 1, '-3.958253110290
', '-79.219359074300
', NULL, 2, 23, 264, 249);
INSERT INTO instituciones VALUES (193, 'ESCUELA DE EDUCACION BASICA LIBIA MELIDA JARAMILLO', 'BARRIO GUAYLLAS GRANDE', NULL, NULL, NULL, 2, 1, '-3.849944977940
', '-79.379084052100
', NULL, 0, 1, 10, 4);
INSERT INTO instituciones VALUES (197, 'ESCUELA DE EDUCACION BASICA LUIS ANTONIO ENRIQUE ORTEGA', 'AV VIRGILIO RODAS , CONTROL DE LA POLICIA MANO IZQUIERZA', NULL, NULL, NULL, 2, 1, '-3.984971283550
', '-79.239164816700
', NULL, 3, 14, 190, 161);
INSERT INTO instituciones VALUES (199, 'ESCUELA DE EDUCACION BASICA LUZ HORTENSIA RUIZ PARA PCEI', 'AV BENJAMIN CARRION PABLO PALACIOS ', NULL, NULL, NULL, 2, 1, '-4.013003940420
', '-79.206248034300
', NULL, 3, 9, 0, 116);
INSERT INTO instituciones VALUES (200, 'ESCUELA DE EDUCACION BASICA MACARA', 'BARRIO CUCANAMA BAJO', NULL, NULL, NULL, 2, 1, '-4.249446605480
', '-79.254030624000
', NULL, 0, 1, 3, 1);
INSERT INTO instituciones VALUES (201, 'ESCUELA DE EDUCACION BASICA MANUEL BENIGNO FIGUEROA CARRION', 'BARRIO SAN FRANCISCO MEDIO', NULL, NULL, NULL, 2, 1, '-4.187474737210
', '-79.256888984200
', NULL, 1, 0, 1, 4);
INSERT INTO instituciones VALUES (302, 'ROSA ELENA EGUIGUREN', 'BARRIO PUNZARA ALTO (FRENTE AL RELLENO SANITARIIO)', NULL, NULL, NULL, 3, 1, '-4.040247576330
', '-79.226196674200
', NULL, 1, 0, 3, 4);
INSERT INTO instituciones VALUES (306, 'U.E MUNICIPAL BORJA', 'AV. BELLO HORIZONTE CHARITY Y CUCUTA "BARRIO" SAN FRANCISCO DE BORJA ', NULL, NULL, NULL, 2, 3, '-3.998610005060
', '-79.219416463300
', NULL, 3, 10, 58, 64);
INSERT INTO instituciones VALUES (311, 'UNIDAD EDUCATIVA MUNICIPAL PRADERA', 'ARUPOS 1 NOGALES Y CEDROS ', NULL, NULL, NULL, 3, 3, '-4.013525777660
', '-79.196864446300
', NULL, 3, 8, 120, 84);
INSERT INTO instituciones VALUES (315, 'UNIDAD EDUCATIVA DR MANUEL AGUSTIN CABRERA LOZANO', 'AVENIDA PIO JARMILLO ALVARADO CIUDADELA GUILLERMO FALCONI LA ARGELIA AV REINALDO ESPINOSA ', NULL, NULL, NULL, 3, 1, '-4.029642462170
', '-79.214639849200
', NULL, 29, 45, 955, 624);
INSERT INTO instituciones VALUES (316, 'UNIDAD EDUCATIVA EXPERIMENTAL PARA CIEGOS LUIS BRAILLE', 'BUGANVILLAS 2427 AVENIDA GOBERNACION DE MAINAS ', NULL, NULL, NULL, 3, 1, '-4.014753366160
', '-79.199968224700
', NULL, 7, 4, 9, 9);
INSERT INTO instituciones VALUES (19, 'CENTRO DE EDUCACION INICIAL LA FLORIDA', 'BARRIO LA FLORIDA', NULL, NULL, NULL, 1, 1, '-3.915915202950
', '-79.218989886500
', NULL, 0, 1, 11, 4);
INSERT INTO instituciones VALUES (114, 'ESCUELA DE EDUCACION BASICA AMAUTA PARTICULAR', 'COMUNIDA EL CARMEN, ZAMORA HUAYCO ALTO - RESERVA EL MADRIGAL', NULL, NULL, NULL, 2, 4, '-4.040948345010
', '-79.175337353400
', NULL, 2, 13, 61, 52);
INSERT INTO instituciones VALUES (141, 'ESCUELA DE EDUCACION BASICA DR HUGO GUILLERMO GONZALEZ', 'BARRIO CUMBE', NULL, NULL, NULL, 2, 1, '-3.969500822490
', '-79.206306442600
', NULL, 1, 2, 13, 10);
INSERT INTO instituciones VALUES (162, 'ESCUELA DE EDUCACION BASICA GALO PLAZA LASSO', 'BARRIO LA CHONTA', NULL, NULL, NULL, 2, 1, '-3.871143323090
', '-79.142363579100
', NULL, 0, 1, 5, 4);
INSERT INTO instituciones VALUES (163, 'ESCUELA DE EDUCACION BASICA GASPAR GOMEZ DE SALAZAR', 'EL ARI', NULL, NULL, NULL, 2, 1, '-3.810721195850
', '-79.401584295100
', NULL, 1, 1, 17, 10);
INSERT INTO instituciones VALUES (165, 'ESCUELA DE EDUCACION BASICA GONZALO ABAD GRIJALVA', 'TUMIANUMA', NULL, NULL, NULL, 2, 1, '-4.303749927270', '-79.258997088600
', NULL, 0, 2, 16, 20);
INSERT INTO instituciones VALUES (168, 'ESCUELA DE EDUCACION BASICA GUSTAVO DARQUEA TERAN', 'BARRIO VIRGENPAMBA', NULL, NULL, NULL, 2, 1, '-3.941746269440
', '-79.204808536000
', NULL, 3, 4, 24, 24);
INSERT INTO instituciones VALUES (172, 'ESCUELA DE EDUCACION BASICA ING JOSE ALEJANDRINO VELASCO', 'CARLOS ROMAN 0321 AURELIO GUERRERO Y ADOLFO VALAREZO ', NULL, NULL, NULL, 2, 1, '-3.992138770740
', '-79.208445423000
', NULL, 3, 15, 221, 165);
INSERT INTO instituciones VALUES (204, 'ESCUELA DE EDUCACION BASICA MANUEL JOSE AGUIRRE', 'AVENIDA RIO MARAÑON ORINOCO ', NULL, NULL, NULL, 2, 1, '-4.010607317870
', '-79.185642626300
', NULL, 3, 10, 75, 80);
INSERT INTO instituciones VALUES (208, 'ESCUELA DE EDUCACION BASICA MATILDE PALACIO DE JARAMILLO', 'BARRIO MASANAMACA', NULL, NULL, NULL, 2, 1, '-4.320162951450
', '-79.205029348700
', NULL, 0, 3, 11, 7);
INSERT INTO instituciones VALUES (214, 'ESCUELA DE EDUCACION BASICA NICOLASA JURADO PARA PCEI', 'BOLIVAR 1453 LOURDES Y CATACOCHA ', NULL, NULL, NULL, 2, 1, '-4.002829783950
 ', '-79.201498003400
', NULL, 1, 5, 2, 46);
INSERT INTO instituciones VALUES (220, 'ESCUELA DE EDUCACION BASICA PARTICULAR INTERANDINO', 'AV SALVADOR BUSTAMANTE CELI GUAYAQUIL ', NULL, NULL, NULL, 2, 4, '-3.994356725100
', '-79.197248558000
', NULL, 1, 14, 83, 88);
INSERT INTO instituciones VALUES (298, 'NIÑO JESUS', 'CUBA 18-91 AV. PIO JARAMILLO ', NULL, NULL, NULL, 1, 2, '-4.008947006960
', '-79.207670550400
', NULL, 0, 9, 69, 60);
INSERT INTO instituciones VALUES (296, 'MONTSERRAT', 'UNIVERSO 2658 TELEGRAFO CERCA A LA ESCUELA JOSE INGENIEROS ', NULL, NULL, NULL, 2, 4, '-3.969807803420
', '-79.214418236100
', NULL, 0, 2, 12, 9);
INSERT INTO instituciones VALUES (325, 'UNIDAD EDUCATIVA MUNICIPAL CAPULÍ LOMA', 'CALLE HUANCAVILCA CALLE PUNAES Y JIBAROS ', NULL, NULL, NULL, 3, 3, '-4.002532221870
', '-79.214248572200
', NULL, 5, 8, 91, 85);
INSERT INTO instituciones VALUES (184, 'ESCUELA DE EDUCACION BASICA JUAN MONTALVO', 'VíA A ZUMBA A UNA CUADRA DEL MERCADO MUNICIPAL', NULL, NULL, NULL, 2, 1, '-4.262361845170
', '-79.223529937600
', NULL, 3, 11, 252, 175);
INSERT INTO instituciones VALUES (223, 'ESCUELA DE EDUCACION BASICA PARTICULAR MIGUEL ANGEL SUAREZ', 'ROCAFUERTE JUAN JOSE PEÑA Y PASAJE SINCHONA ', NULL, NULL, NULL, 2, 5, '-3.981580627790
', '-79.201751348800
', NULL, 6, 10, 384, 1);
INSERT INTO instituciones VALUES (230, 'ESCUELA DE EDUCACION BASICA PEDRO LÓPEZ MEDRANO', 'BARRIO COMUNIDADES', NULL, NULL, NULL, 2, 1, '-4.350358705610
', '-79.210191823600
', NULL, 1, 0, 6, 7);
INSERT INTO instituciones VALUES (116, 'ESCUELA DE EDUCACION BASICA ANDRES TINOCO DE MERCADO', 'BARRIO ARGENTINA', NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, 2, 11, 14);
INSERT INTO instituciones VALUES (287, 'LAS ABEJITAS', 'RAMON BURNEO Y JOSE MARIA RIOFRIO CERCA AL INSTITU IDIOMAS NACIONAL 0000 BENJAMIN PEREIRA ', NULL, NULL, NULL, 1, 4, '-3.990719858450
', '-79.208790653300
', NULL, 0, 8, 13, 14);
INSERT INTO instituciones VALUES (235, 'ESCUELA DE EDUCACION BASICA POMPILIO REINOSO JARAMILLO', 'BARRIO SAUCES NORTE ANTONIO CANALETO 00 MIGUEL ANGEL Y RAFAEL DE SANZIO ', NULL, NULL, NULL, 2, 1, '-3.937726630460
', '-79.223607475600
', NULL, 3, 9, 100, 89);
INSERT INTO instituciones VALUES (256, 'ESCUELA DE EDUCACION BASICA SR MANUEL DE JESUS AUQUILLA CAMBISACA', 'BARRIO CHAQUIRCUÑA', NULL, NULL, NULL, 2, 1, '-3.889303193210
', '-79.403670659200
', NULL, 0, 1, 2, 6);
INSERT INTO instituciones VALUES (260, 'ESCUELA DE EDUCACION BASICA TNTE HUGO ORTIZ PARA PCEI', 'ESMERALDAS 00 MANTA, GUAYAQUIL Y PORTOVIEJO ', NULL, NULL, NULL, 13, 4, '-3.981941278420
', '-79.201273357900
', NULL, 4, 4, 90, 32);
INSERT INTO instituciones VALUES (212, 'ESCUELA DE EDUCACION BASICA MONS JUAN MARIA RIOFRIO', 'AV. DE LOS PALTAS MANUEL CARRION PINZANO ', NULL, NULL, NULL, 2, 1, '-3.996669772710
', '-79.208777749000
', NULL, 4, 11, 154, 138);
INSERT INTO instituciones VALUES (206, 'ESCUELA DE EDUCACION BASICA MARIETA DE VEINTIMILLA', 'AV CHUQUIRIBAMBA 00 AV INTEGRACION BARRIAL Y LAGUNA DE YAMBO ', NULL, NULL, NULL, 2, 1, '-3.944304254910
', '-79.225331215600
', NULL, 13, 28, 605, 436);
INSERT INTO instituciones VALUES (174, 'ESCUELA DE EDUCACION BASICA JOSE ANGEL PALACIO', 'AV.UNIVERSITARIA 01110 AV UNIVERSITARIA JUAN DE SALINAS Y JOSE RODRIGUEZ ', NULL, NULL, NULL, 2, 1, '-3.991263012930
', '-79.204935741800
', NULL, 7, 10, 116, 79);
INSERT INTO instituciones VALUES (318, 'UNIDAD EDUCATIVA SAN FRANCISCO DE ASIS', 'IMBABURA 13-46 BOLIVAR Y BERNARDO VALDIVIESO ', NULL, NULL, NULL, 3, 2, '-3.994529150910
', '-79.201642158600
', NULL, 18, 40, 865, 618);
INSERT INTO instituciones VALUES (388, ' FULTON ', ' GUAYQUICHUMA ', NULL, NULL, NULL, 2, 1, ' -3.867496623250 ', ' -79.552780997700 ', NULL, 0, 1, 4, 2);
INSERT INTO instituciones VALUES (328, 'UNIDAD EDUCATIVA MUNICIPAL TIERRAS COLORADAS', 'AVENIDA EUGENIO ESPEJO KILÓMETRO SIETE Y MEDIO VIA ANTIGUA A CATAMAYO ninguna ', NULL, NULL, NULL, 2, 3, '-4.011385245100
', '-79.243583644200
', NULL, 4, 11, 134, 119);
INSERT INTO instituciones VALUES (321, 'UNIDAD EDUCATIVA FISCOMISIONAL PARA PCEI JOSE MARIA VELAZ', 'ESMERALDAS GUAYAQUIL Y MANTA ', NULL, NULL, NULL, 3, 2, '-3.981941278420
', '-79.201273357900
', NULL, 2, 7, 85, 89);
INSERT INTO instituciones VALUES (289, 'LINDEROS (S/N)', 'BARRIO LINDEROS CERCA A CHANTACO', NULL, NULL, NULL, 1, 1, '-3.905805691390
', '-79.333193130000
', NULL, 0, 1, 1, 1);
INSERT INTO instituciones VALUES (285, 'INSTITUTO PARTICULAR DE EDUCACION BASICA SIMON BOLIVAR', 'SUCRE 1249 LOURDES Y MERCADILLO ', NULL, NULL, NULL, 2, 4, '-4.001828832610
', '-79.202751763900
', NULL, 2, 33, 138, 103);
INSERT INTO instituciones VALUES (278, 'FINE TUNED ENGLISH', 'MACARA SN ROCAFUERTE Y MIGUEL RIOFRÍO ', NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, 15, 44, 0, 0);
INSERT INTO instituciones VALUES (274, 'ESCUELAS DE EDUCACION BASICA MIIGUEL CARPIO MENDIETA', 'BARRIO CUCANAMA ALTO', NULL, NULL, NULL, 2, 1, '-4.251781652900
', '-79.239055433900
', NULL, 0, 1, 7, 2);
INSERT INTO instituciones VALUES (270, 'ESCUELA DE EDUCACION BASICA ZOILA MARIA ASTUDILLO CELI', 'CARLOS ROMAN 0321 AURELIO GUERRERO ', NULL, NULL, NULL, 2, 1, '-3.992031659460
', '-79.209084944300
', NULL, 3, 6, 63, 70);
INSERT INTO instituciones VALUES (265, 'ESCUELA DE EDUCACION BASICA VICTOR AMABLE ZHUNAULA', 'BARRIO JESUS MARIA ALTO DE LA LIBERTAD', NULL, NULL, NULL, 2, 1, '-3.847087322460
', '-79.199391597400
', NULL, 0, 1, 5, 3);
INSERT INTO instituciones VALUES (258, 'ESCUELA DE EDUCACION BASICA TENIENTE HUGO ORTIZ N2', 'AV. SALVADOR BUSTAMANTE CELI SANTA ROSA Y CHONE ', NULL, NULL, NULL, 2, 1, '-3.978470084720
', '-79.201776106000
', NULL, 3, 7, 84, 50);
INSERT INTO instituciones VALUES (254, 'ESCUELA DE EDUCACION BASICA SAN FRANCISCO JAVIER PARTICULAR', 'LAURO GUERRERO 12-31 MERCADILLO Y TNTE. MAXIMILIANO RODRIGUEZ ', NULL, NULL, NULL, 2, 4, '-4.001916684030
', '-79.205695931200
', NULL, 2, 11, 73, 64);
INSERT INTO instituciones VALUES (246, 'ESCUELA DE EDUCACION BASICA REPUBLICA DE CUBA', 'PAYANCHI', NULL, NULL, NULL, 2, 1, '-4.014829722770
', '-79.251635317700
', NULL, 0, 3, 15, 13);
INSERT INTO instituciones VALUES (241, 'ESCUELA DE EDUCACION BASICA PROF MARIA DOMINGA GUAYA SINCHE', 'BARRIO CALUCAY', NULL, NULL, NULL, 2, 1, '-3.864469126100
', '-79.328277455200
', NULL, 1, 0, 1, 6);
INSERT INTO instituciones VALUES (234, 'ESCUELA DE EDUCACION BASICA PIO JARAMILLO ALVARADO', 'LA AGUANGORA', NULL, NULL, NULL, 2, 1, '-4.004580713560
', '-79.199999489000
', NULL, 2, 2, 27, 25);
INSERT INTO instituciones VALUES (218, 'ESCUELA DE EDUCACION BASICA PARTICULAR CARPE DIEM', 'DIEZ DE AGOSTO 08-76 AV ORILLAS DEL ZAMORA Y ZOILO RODRIGUEZ ', NULL, NULL, NULL, 2, 4, '-3.996751979690

', '-79.196802128000

', NULL, 2, 8, 35, 26);
INSERT INTO instituciones VALUES (334, ' 22 DE MAYO DE 1981 ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -4.000860307750 ', ' -79.352498623500 ', NULL, 0, 8, 69, 100);
INSERT INTO instituciones VALUES (391, ' 8 DE DICIEMBRE ', ' SAN PEDRO DE LA BENDITA ', NULL, NULL, NULL, 3, 1, ' -3.944030198130 ', ' -79.435001710400 ', NULL, 6, 20, 180, 105);
INSERT INTO instituciones VALUES (366, ' ANDRES TINOCO DE MERCADO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.095301451430 ', ' -79.260413739100 ', NULL, 2, 1, 15, 14);
INSERT INTO instituciones VALUES (395, ' ASSAD BUCARAM ', ' ZAMBI ', NULL, NULL, NULL, 2, 1, ' -3.927389351150 ', ' -79.528833760000 ', NULL, 0, 1, 5, 5);
INSERT INTO instituciones VALUES (367, ' BALBINA CASTRO ', ' EL TAMBO ', NULL, NULL, NULL, 1, 1, ' -4.121943250790 ', ' -79.298892040600 ', NULL, 0, 4, 18, 13);
INSERT INTO instituciones VALUES (335, ' BILINGUE CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 1, 4, ' -3.985890561080 ', ' -79.359858303300 ', NULL, 7, 10, 130, 156);
INSERT INTO instituciones VALUES (336, ' CARLOS AUGUSTO ORTEGA ERIQUE ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.982108330040 ', ' -79.354246888900 ', NULL, 5, 3, 80, 60);
INSERT INTO instituciones VALUES (337, ' CENTRO ARTESANAL NOCTURNO CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 13, 1, ' -3.989250409480 ', ' -79.362273920500 ', NULL, 3, 3, 200, 141);
INSERT INTO instituciones VALUES (338, ' CENTRO EDUCATIVO MUNICIPAL CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 3, 3, ' -3.981780917970 ', ' -79.366908106200 ', NULL, 8, 11, 157, 150);
INSERT INTO instituciones VALUES (339, ' CENTRO PSICOPEDAGOGICO CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 2, 4, ' -3.987304740600 ', ' -79.370661202100 ', NULL, 0, 2, 12, 10);
INSERT INTO instituciones VALUES (340, ' COLEGIO NACIONAL NOCTURNO CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 3, 1, ' -3.985309193160 ', ' -79.363083142700 ', NULL, 21, 21, 500, 215);
INSERT INTO instituciones VALUES (341, ' COMPENSATORIO CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.985362263160 ', ' -79.353448009600 ', NULL, 5, 4, 98, 42);
INSERT INTO instituciones VALUES (342, ' CORINA DEL PARRAL ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.987664849540 ', ' -79.356252896700 ', NULL, 4, 6, 30, 29);
INSERT INTO instituciones VALUES (343, ' CORONEL AUGUSTO WITT ANAZCO ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -4.005579653090 ', ' -79.383583326700 ', NULL, 6, 7, 60, 39);
INSERT INTO instituciones VALUES (368, ' DANIEL GONZALEZ IRENE ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.144719278360 ', ' -79.293331697600 ', NULL, 0, 2, 12, 10);
INSERT INTO instituciones VALUES (344, ' DOLORES ORDOÑEZ ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -4.025525380200 ', ' -79.345776404800 ', NULL, 0, 1, 9, 9);
INSERT INTO instituciones VALUES (345, ' DR JOSE MARIA TORRES RIOFRIO ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -4.007059465260 ', ' -79.271641804500 ', NULL, 0, 1, 6, 14);
INSERT INTO instituciones VALUES (369, ' DR. GONZALO ARIAS CASTILLO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.134447863080 ', ' -79.289724262700 ', NULL, 0, 2, 15, 16);
INSERT INTO instituciones VALUES (370, ' EMILIANO ABENDAÑO GONZALEZ ', ' EL TAMBO ', NULL, NULL, NULL, 3, 1, ' -4.144447994380 ', ' -79.293332279400 ', NULL, 5, 5, 66, 50);
INSERT INTO instituciones VALUES (346, ' EMILIANO ORTEGA ESPINOZA ', ' CATAMAYO ', NULL, NULL, NULL, 3, 1, ' -3.985779994200 ', ' -79.363361358000 ', NULL, 18, 18, 420, 416);
INSERT INTO instituciones VALUES (396, ' ENRIQUE VACAS GALINDO ', ' ZAMBI ', NULL, NULL, NULL, 2, 1, ' -3.910558456630 ', ' -79.533887757400 ', NULL, 2, 4, 15, 12);
INSERT INTO instituciones VALUES (371, ' ESCUELA CIUDAD DE MONTEVIDEO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.053890936090 ', ' -79.305276117300 ', NULL, 0, 1, 2, 4);
INSERT INTO instituciones VALUES (372, ' ESCUELA FISCAL MIXTA SANCHEZ DE ORELLANA ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.088612358230 ', ' -79.320837260700 ', NULL, 0, 2, 15, 14);
INSERT INTO instituciones VALUES (397, ' ESCUELA VICENTE BURNEO ', ' ZAMBI ', NULL, NULL, NULL, 2, 1, ' -3.962500103290 ', ' -79.475281885100 ', NULL, 0, 1, 1, 0);
INSERT INTO instituciones VALUES (373, ' ESCUELA VICTORIANO JARAMILLO VIVANCO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.036386239080 ', ' -79.359163239600 ', NULL, 0, 3, 16, 12);
INSERT INTO instituciones VALUES (398, ' FLAVIO ALFARO ', ' ZAMBI ', NULL, NULL, NULL, 2, 1, ' -3.949441951040 ', ' -79.530830165900 ', NULL, 0, 1, 5, 3);
INSERT INTO instituciones VALUES (348, ' GABRIELA MISTRAL N1 ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.987664849540 ', ' -79.356252896700 ', NULL, 14, 10, 325, 248);
INSERT INTO instituciones VALUES (349, ' GABRIELA MISTRAL N2 ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.987610464450 ', ' -79.356189971800 ', NULL, 6, 4, 70, 51);
INSERT INTO instituciones VALUES (399, ' GERONIMO CASTAÑEDA ', ' ZAMBI ', NULL, NULL, NULL, 2, 1, ' -3.943110233760 ', ' -79.520107388500 ', NULL, 0, 1, 6, 4);
INSERT INTO instituciones VALUES (350, ' HIPOLITO QUEZADA GONZALEZ ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.993891018510 ', ' -79.309587282100 ', NULL, 0, 1, 7, 7);
INSERT INTO instituciones VALUES (351, ' ING ALFONSO CORONEL B ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.972971576680 ', ' -79.366277121600 ', NULL, 0, 13, 86, 76);
INSERT INTO instituciones VALUES (352, ' INSTITUTO TECNOLOGICO SUPERIOR NUESTRA SEÑORA DEL ROSARIO ', ' CATAMAYO ', NULL, NULL, NULL, 5, 2, ' -3.985747544220 ', ' -79.360696025000 ', NULL, 24, 30, 644, 423);
INSERT INTO instituciones VALUES (353, ' JAIME ROLDOS AGUILERA ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.990003551160 ', ' -79.359030714900 ', NULL, 0, 1, 5, 4);
INSERT INTO instituciones VALUES (347, ' FINE TUNED CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 6, 4, ' -3.982045510060 ', ' -79.363539828900 ', NULL, 0, 3, 80, 70);
INSERT INTO instituciones VALUES (332, 'Universidad Técnica Particular de Loja', 'San Cayetano Alto, Calle París.', 73701444, 0, 1450, 4, 5, '-3.986745 ', '-79.198958', 'http://utpl.edu.ec/', NULL, NULL, NULL, NULL);
INSERT INTO instituciones VALUES (374, ' JOSE MARIA RIOFRIO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.130667708760 ', ' -79.252330822700 ', NULL, 0, 2, 12, 17);
INSERT INTO instituciones VALUES (354, ' JOSE MARIA VELAZ SJ EXTENSION N2 CATAMAYO ', ' CATAMAYO ', NULL, NULL, NULL, 3, 4, ' -3.990003605240 ', ' -79.359057729000 ', NULL, 3, 10, 50, 48);
INSERT INTO instituciones VALUES (375, ' JOSE MIGUEL SAMANIEGO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.156389347950 ', ' -79.287218379200 ', NULL, 0, 1, 2, 4);
INSERT INTO instituciones VALUES (376, ' JUAN FRANCISCO RODRIGUEZ MORA ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.144719278360 ', ' -79.293331697600 ', NULL, 0, 5, 22, 30);
INSERT INTO instituciones VALUES (355, ' LUIS ALFREDO SAMANIEGO ARTEAGA ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.992332324790 ', ' -79.347860196700 ', NULL, 0, 14, 158, 100);
INSERT INTO instituciones VALUES (356, ' MARIA INES QUINDE BURNEO ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.987637666020 ', ' -79.356225936600 ', NULL, 0, 2, 6, 3);
INSERT INTO instituciones VALUES (392, ' MARIANA GUTIERREZ DE HIDALGO ', ' SAN PEDRO DE LA BENDITA ', NULL, NULL, NULL, 2, 1, ' -3.941280859190 ', ' -79.434943821100 ', NULL, 0, 9, 67, 50);
INSERT INTO instituciones VALUES (357, ' MERCEDES QUINDE BURNEO ', ' CATAMAYO ', NULL, NULL, NULL, 1, 1, ' -3.991862350520 ', ' -79.361503338600 ', NULL, 0, 6, 90, 50);
INSERT INTO instituciones VALUES (378, ' MIGUEL ANGEL CARRION CUEVA ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.094441903840 ', ' -79.302219359700 ', NULL, 0, 3, 34, 43);
INSERT INTO instituciones VALUES (358, ' MOISES ALBERTO HIDALGO JARRIN ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.964696702600 ', ' -79.384473575700 ', NULL, 0, 4, 12, 22);
INSERT INTO instituciones VALUES (379, ' MONSEÑOR LEONIDAS PROAÑO VILLALBA ', ' EL TAMBO ', NULL, NULL, NULL, 3, 1, ' -4.071662614330 ', ' -79.306391710600 ', NULL, 6, 7, 15, 67);
INSERT INTO instituciones VALUES (389, ' NELSON ROMERO ', ' GUAYQUICHUMA ', NULL, NULL, NULL, 2, 1, ' -3.819162398420 ', ' -79.556391955800 ', NULL, 0, 2, 12, 6);
INSERT INTO instituciones VALUES (359, ' NUESTRA SEÑORA DEL ROSARIO ', ' CATAMAYO ', NULL, NULL, NULL, 1, 2, ' -3.985747544220 ', ' -79.360696025000 ', NULL, 20, 21, 680, 360);
INSERT INTO instituciones VALUES (360, ' OVIDIO DECROLY ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.989361037670 ', ' -79.358806871500 ', NULL, 15, 16, 385, 270);
INSERT INTO instituciones VALUES (361, ' PADRE ELISEO ARIAS CARRION ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.990057197020 ', ' -79.358724446800 ', NULL, 8, 12, 156, 150);
INSERT INTO instituciones VALUES (362, ' PADRE JULIO MARIA MATOVELLE ', ' CATAMAYO ', NULL, NULL, NULL, 1, 2, ' -3.972197167320 ', ' -79.367944495500 ', NULL, 6, 9, 125, 230);
INSERT INTO instituciones VALUES (380, ' PIO CUEVA SAMANIEGO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.072775476870 ', ' -79.306668551800 ', NULL, 7, 4, 79, 60);
INSERT INTO instituciones VALUES (381, ' RAFAEL RIOFRIO ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.106918165830 ', ' -79.242503591000 ', NULL, 0, 1, 5, 8);
INSERT INTO instituciones VALUES (382, ' REPUBLICA DE VENEZUELA ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.071947870360 ', ' -79.321664359900 ', NULL, 0, 4, 16, 89);
INSERT INTO instituciones VALUES (383, ' RIO PALORA ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -4.036108933810 ', ' -79.378642267100 ', NULL, 0, 1, 13, 12);
INSERT INTO instituciones VALUES (363, ' SAN JUAN BAUTISTA ', ' CATAMAYO ', NULL, NULL, NULL, 1, 5, ' -3.998662941580 ', ' -79.352557042200 ', NULL, 9, 10, 143, 125);
INSERT INTO instituciones VALUES (393, ' SAN VICENTE FERRER ', ' SAN PEDRO DE LA BENDITA ', NULL, NULL, NULL, 1, 1, ' -3.944362698880 ', ' -79.433884519200 ', NULL, 5, 8, 67, 87);
INSERT INTO instituciones VALUES (384, ' SANTA ELENA ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.101108880960 ', ' -79.303331012200 ', NULL, 0, 2, 6, 5);
INSERT INTO instituciones VALUES (364, ' SEMILLITAS DEL SABER ', ' CATAMAYO ', NULL, NULL, NULL, 1, 4, ' -3.986634708800 ', ' -79.356642145800 ', NULL, 0, 4, 12, 34);
INSERT INTO instituciones VALUES (394, ' TERESA LUCIA CELI GALVAN ', ' SAN PEDRO DE LA BENDITA ', NULL, NULL, NULL, 2, 1, ' -3.955685392360 ', ' -79.433998356100 ', NULL, 0, 1, 5, 3);
INSERT INTO instituciones VALUES (365, ' ULPIANO MOSCOSO ', ' CATAMAYO ', NULL, NULL, NULL, 2, 1, ' -3.916774488450 ', ' -79.328444439200 ', NULL, 0, 3, 16, 14);
INSERT INTO instituciones VALUES (385, ' UNIDAD EDUCATIVA A DISTANCIA DE LOA EXTENSION SAN BERNABE ', ' EL TAMBO ', NULL, NULL, NULL, 3, 2, ' -4.098190812910 ', ' -79.304642992500 ', NULL, 0, 7, 38, 30);
INSERT INTO instituciones VALUES (390, ' UNIDAD EDUCATIVA A DISTANCIA DE LOJA EXTENSION EL PRADO ', ' GUAYQUICHUMA ', NULL, NULL, NULL, 3, 2, ' -3.889046833110 ', ' -79.536131120600 ', NULL, 0, 4, 15, 16);
INSERT INTO instituciones VALUES (386, ' WILLIAN KING ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.102222899760 ', ' -79.287226464800 ', NULL, 0, 1, 3, 4);
INSERT INTO instituciones VALUES (387, ' YAGUACHI ', ' EL TAMBO ', NULL, NULL, NULL, 2, 1, ' -4.057440888930 ', ' -79.307718149200 ', NULL, 0, 1, 2, 2);
INSERT INTO instituciones VALUES (400, 'PEDRO VICTOR FALCONI ', 'ZAMBI ', NULL, NULL, NULL, 3, 1, '-3.912498028020 ', '-79.531110952400 ', NULL, 4, 5, 40, 16);
INSERT INTO instituciones VALUES (377, 'MEDARDO FILOMENO CUEVA ', 'EL TAMBO ', NULL, NULL, NULL, 2, 1, '-4.119889583860 ', '-79.311162505300 ', NULL, 0, 2, 13, 13);
INSERT INTO instituciones VALUES (443, ' 12 DE JUNIO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.102332732050 ', ' -79.460836037100 ', NULL, 0, 1, 2, 5);
INSERT INTO instituciones VALUES (427, ' 12 DE OCTUBRE ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.231393117660 ', ' -79.433525468500 ', NULL, 0, 9, 60, 46);
INSERT INTO instituciones VALUES (444, ' ABEL ABIATAR QUEVEDO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.109086043280 ', ' -79.459670264800 ', NULL, 0, 2, 7, 7);
INSERT INTO instituciones VALUES (445, ' ABELARDO FLORES ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.140447274330 ', ' -79.431112329800 ', NULL, 0, 7, 40, 47);
INSERT INTO instituciones VALUES (481, ' ADAN CASTILLO CAÑAR ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.129361407880 ', ' -79.545611273000 ', NULL, 0, 3, 12, 11);
INSERT INTO instituciones VALUES (471, ' AGUSTIN CUEVA ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.212948496720 ', ' -79.373888096200 ', NULL, 0, 8, 40, 21);
INSERT INTO instituciones VALUES (428, ' AMBROSIO CEVALLOS ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.211358217280 ', ' -79.418333907400 ', NULL, 0, 1, 0, 3);
INSERT INTO instituciones VALUES (446, ' AMERICA RUTH LOZADA RAMIREZ ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.144079077980 ', ' -79.411191272000 ', NULL, 0, 2, 5, 6);
INSERT INTO instituciones VALUES (401, ' ANTONIO DE ULLOA ( NARANJILLO) ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.218392707390 ', ' -79.566580512900 ', NULL, 0, 2, 2, 3);
INSERT INTO instituciones VALUES (402, ' ARCADIO MENDIETA VIRGEN DEL CISNE ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.293195310310 ', ' -79.505226420400 ', NULL, 0, 2, 12, 11);
INSERT INTO instituciones VALUES (429, ' BALBINA MORENO ', ' GONZANAMA ', NULL, NULL, NULL, 2, 2, ' -4.229190570490 ', ' -79.435529619400 ', NULL, 4, 6, 75, 60);
INSERT INTO instituciones VALUES (430, ' BALBINA MORENO (COLEGIO) ', ' GONZANAMA ', NULL, NULL, NULL, 3, 2, ' -4.229190570490 ', ' -79.435529619400 ', NULL, 6, 8, 87, 56);
INSERT INTO instituciones VALUES (482, ' BARTOLOME RUIZ ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.181856782530 ', ' -79.481282194600 ', NULL, 0, 2, 9, 10);
INSERT INTO instituciones VALUES (403, ' BATTALLON RIFLES ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.177525739330 ', ' -79.583085210100 ', NULL, 0, 1, 6, 6);
INSERT INTO instituciones VALUES (447, ' BELGICA ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.142081718210 ', ' -79.429893197900 ', NULL, 0, 10, 40, 90);
INSERT INTO instituciones VALUES (448, ' CABO MINACHO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.100559196050 ', ' -79.441691871700 ', NULL, 0, 1, 5, 2);
INSERT INTO instituciones VALUES (483, ' CALIXTO CUEVA SANCHEZ ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.154252793570 ', ' -79.517832287800 ', NULL, 0, 4, 27, 20);
INSERT INTO instituciones VALUES (484, ' CAMILO PONCE ENRIQUEZ ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.144665898020 ', ' -79.571551440100 ', NULL, 0, 2, 9, 12);
INSERT INTO instituciones VALUES (449, ' CENTRO ARTESANAL BELGICA ', ' NAMBACOLA ', NULL, NULL, NULL, 13, 1, ' -4.142081718210 ', ' -79.429893197900 ', NULL, 6, 5, 68, 60);
INSERT INTO instituciones VALUES (431, ' CENTRO ARTESANAL DR. LYA HARTN ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.228468261840 ', ' -79.436107565600 ', NULL, 0, 9, 24, 30);
INSERT INTO instituciones VALUES (404, ' CENTRO ARTESANAL JUAN MARIA RIOFRIO ANEXO A LA UE SAN VICENTE DE PAUL ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 13, 1, ' -4.227559601150 ', ' -79.521333493500 ', NULL, 0, 9, 49, 20);
INSERT INTO instituciones VALUES (485, ' CIUDAD DE GONZANAMA ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.180478261450 ', ' -79.521764517900 ', NULL, 0, 6, 25, 30);
INSERT INTO instituciones VALUES (405, ' CLORINDA  ANTONIA  JARAMILLO RIOS ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.258885332770 ', ' -79.515580546300 ', NULL, 0, 1, 6, 4);
INSERT INTO instituciones VALUES (406, ' COCHASQUI ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.273920569790 ', ' -79.480967816200 ', NULL, 0, 1, 1, 3);
INSERT INTO instituciones VALUES (432, ' COLEGIO COMPENSATORIO ARTESANAL DE GONZANAMA ', ' GONZANAMA ', NULL, NULL, NULL, 3, 1, ' -4.228944758950 ', ' -79.439196279400 ', NULL, 0, 8, 60, 50);
INSERT INTO instituciones VALUES (472, ' COLEGIO TECNICO AGRICOLA 30 DE SEPTIEMBRE ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 3, 1, ' -4.210332743210 ', ' -79.372803646400 ', NULL, 7, 8, 42, 40);
INSERT INTO instituciones VALUES (450, ' COLEGIO TECNICO AGROPECUARIO  DR AGUSTIN CUEVA SAENZ ', ' NAMBACOLA ', NULL, NULL, NULL, 3, 1, ' -4.141029199990 ', ' -79.432696371900 ', NULL, 9, 6, 78, 65);
INSERT INTO instituciones VALUES (433, ' COLEGIO TECNICO AGROPECUARIO GONZANAMA ', ' GONZANAMA ', NULL, NULL, NULL, 3, 1, ' -4.232526263070 ', ' -79.434865354300 ', NULL, 14, 21, 125, 157);
INSERT INTO instituciones VALUES (451, ' DANIEL SALVADOR OJEDA LUNA ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.164920541160 ', ' -79.422912649000 ', NULL, 0, 2, 8, 10);
INSERT INTO instituciones VALUES (452, ' DE MIS MANOS VISTEN ', ' NAMBACOLA ', NULL, NULL, NULL, 13, 1, ' -4.062838426260 ', ' -79.381966178600 ', NULL, 0, 1, 0, 0);
INSERT INTO instituciones VALUES (453, ' DOMINGA LEON DE ANDRADE ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.147135646350 ', ' -79.366863520900 ', NULL, 0, 2, 7, 6);
INSERT INTO instituciones VALUES (454, ' DON DIEGO RIOFRIO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.134224272260 ', ' -79.453524287200 ', NULL, 0, 1, 1, 2);
INSERT INTO instituciones VALUES (407, ' DR ALFREDO PEREZ GUERRERO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.235696741350 ', ' -79.563251654800 ', NULL, 0, 1, 9, 9);
INSERT INTO instituciones VALUES (434, ' DR CARLOS ANDRADE MARIN ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.274663939940 ', ' -79.472777645100 ', NULL, 0, 2, 7, 7);
INSERT INTO instituciones VALUES (408, ' DR JOSE GABRIEL NAVARRO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.207776460530 ', ' -79.562447237100 ', NULL, 0, 1, 6, 2);
INSERT INTO instituciones VALUES (487, ' DR MANUEL DE JESUS LEON ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.123858531000 ', ' -79.558195131100 ', NULL, 0, 1, 1, 2);
INSERT INTO instituciones VALUES (455, ' DR. BALTAZAR AGUIRRE ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.129892918140 ', ' -79.403636053100 ', NULL, 0, 7, 30, 33);
INSERT INTO instituciones VALUES (473, ' DR. JAVIER SIMANCAS ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.204329056600 ', ' -79.386308963400 ', NULL, 0, 1, 0, 7);
INSERT INTO instituciones VALUES (456, ' DR. JOSE MARIA RIOFRIO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.113472006330 ', ' -79.346974824200 ', NULL, 0, 2, 0, 15);
INSERT INTO instituciones VALUES (474, ' DR. JUAN FRANCISCO RUBIO ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.190752075820 ', ' -79.367439998200 ', NULL, 0, 2, 0, 16);
INSERT INTO instituciones VALUES (457, ' ESCUELA FISCAL   AGRIPINA LUZURIAGA ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.166051567370 ', ' -79.436781217700 ', NULL, 0, 2, 0, 18);
INSERT INTO instituciones VALUES (409, ' ESCUELA FISCAL MIXTA ROSAURA SALCEDO ROJAS ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.215690431410 ', ' -79.533696921100 ', NULL, 0, 1, 0, 3);
INSERT INTO instituciones VALUES (488, ' ESTADOS UNIDOS ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.132386382850 ', ' -79.509028131700 ', NULL, 0, 1, 0, 10);
INSERT INTO instituciones VALUES (435, ' EUGENIA  CORDOVEZ DE FEBRES CORDERO ANEXO GURDERIA INFA ', ' GONZANAMA ', NULL, NULL, NULL, 1, 1, ' -4.228947800180 ', ' -79.436223705100 ', NULL, 0, 1, 0, 15);
INSERT INTO instituciones VALUES (489, ' GALAPAGOS ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.178001206110 ', ' -79.503222697300 ', NULL, 0, 2, 0, 28);
INSERT INTO instituciones VALUES (410, ' GENERAL MANUEL SERRANO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.199190914220 ', ' -79.541474537500 ', NULL, 0, 1, 1, 2);
INSERT INTO instituciones VALUES (475, ' GONZALO PROCEL JARAMILLO ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.235871380150 ', ' -79.360292987000 ', NULL, 0, 1, 0, 11);
INSERT INTO instituciones VALUES (476, ' HAYDEE SIMANCAS ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.261031559000 ', ' -79.378363646100 ', NULL, 0, 1, 0, 15);
INSERT INTO instituciones VALUES (411, ' INDOAMERICA ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.220555986370 ', ' -79.524139249100 ', NULL, 6, 3, 0, 59);
INSERT INTO instituciones VALUES (458, ' JESUS DEL GRAN PODER ', ' NAMBACOLA ', NULL, NULL, NULL, 12, 1, ' -4.163616141770 ', ' -79.421843417300 ', NULL, 0, 1, 0, 0);
INSERT INTO instituciones VALUES (490, ' JORGE JUAN HERRERA ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.162475601070 ', ' -79.587670026700 ', NULL, 0, 2, 4, 8);
INSERT INTO instituciones VALUES (412, ' JOSE ANGEL ALEJANDRO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.214118406750 ', ' -79.510783610300 ', NULL, 0, 1, 3, 7);
INSERT INTO instituciones VALUES (459, ' JOSE MARIA BURNEO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.138774339050 ', ' -79.486831941100 ', NULL, 0, 4, 21, 30);
INSERT INTO instituciones VALUES (491, ' JOSE MARTI ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.116637895090 ', ' -79.541392136400 ', NULL, 0, 1, 0, 8);
INSERT INTO instituciones VALUES (413, ' JOSE MIGUEL RIOFRIO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.316745986060 ', ' -79.469360615800 ', NULL, 0, 1, 0, 5);
INSERT INTO instituciones VALUES (436, ' JUAN BAUTISTA AGUIRRE ', ' GONZANAMA ', NULL, NULL, NULL, 1, 1, ' -4.231583704510 ', ' -79.433858373900 ', NULL, 0, 3, 0, 41);
INSERT INTO instituciones VALUES (492, ' JUAN DE SALINAS ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.156114256410 ', ' -79.521810033700 ', NULL, 3, 3, 12, 10);
INSERT INTO instituciones VALUES (414, ' JUAN DELGADO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.260335887710 ', ' -79.484976201300 ', NULL, 0, 2, 7, 9);
INSERT INTO instituciones VALUES (437, ' JUAN MANUEL OJEDA LUNA ', ' GONZANAMA ', NULL, NULL, NULL, 2, 2, ' -4.229532088590 ', ' -79.434475024200 ', NULL, 0, 9, 51, 50);
INSERT INTO instituciones VALUES (438, ' LAUTARO VICENTE LOAIZA ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.231862606430 ', ' -79.437614069300 ', NULL, 0, 7, 32, 21);
INSERT INTO instituciones VALUES (439, ' LIC GILBERTO LEON YAGUANA ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.196083479770 ', ' -79.477165311300 ', NULL, 0, 2, 3, 3);
INSERT INTO instituciones VALUES (460, ' MANUEL CHAVEZ PAREDES ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.050698027930 ', ' -79.521193325600 ', NULL, 0, 1, 3, 3);
INSERT INTO instituciones VALUES (461, ' MANUEL JOSE JARAMILLO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.130779500080 ', ' -79.372697140600 ', NULL, 0, 2, 8, 8);
INSERT INTO instituciones VALUES (415, ' MARIA CELESTE BARRAGAN DE CHAVEZ ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.219079054940 ', ' -79.575857715200 ', NULL, 0, 1, 3, 4);
INSERT INTO instituciones VALUES (477, ' MIGUEL ANGEL ALVAREZ CASTILLO ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.179080492430 ', ' -79.390801195400 ', NULL, 0, 2, 0, 9);
INSERT INTO instituciones VALUES (462, ' MONFILIO ZAMBRANO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.084837412440 ', ' -79.462940893900 ', NULL, 0, 1, 0, 4);
INSERT INTO instituciones VALUES (493, ' NEWTON ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.094832500730 ', ' -79.531254195100 ', NULL, 0, 3, 18, 0);
INSERT INTO instituciones VALUES (416, ' NUESTRA SENORA DE LA NUBE ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.229030616740 ', ' -79.505584547600 ', NULL, 0, 1, 4, 4);
INSERT INTO instituciones VALUES (463, ' NUEVA ESPERANZA ', ' NAMBACOLA ', NULL, NULL, NULL, 13, 1, ' -4.159555965220 ', ' -79.472389927900 ', NULL, 0, 5, 10, 10);
INSERT INTO instituciones VALUES (417, ' P ROF   ROSALINA PIEDRA OJEDA ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.237666198570 ', ' -79.547609494500 ', NULL, 0, 1, 4, 5);
INSERT INTO instituciones VALUES (464, ' PEDRO BOUGUER ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.083887079550 ', ' -79.520169112000 ', NULL, 0, 1, 6, 6);
INSERT INTO instituciones VALUES (494, ' PIÑONALES ', ' SACAPALCA ', NULL, NULL, NULL, 2, 1, ' -4.162665812470 ', ' -79.562880817400 ', NULL, 0, 1, 0, 5);
INSERT INTO instituciones VALUES (418, ' PLATANILLO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.297167845830 ', ' -79.488083901900 ', NULL, 0, 1, 0, 8);
INSERT INTO instituciones VALUES (419, ' PROFESORA CRIMILDA TORRES DE GUARNIZO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.278750814500 ', ' -79.523001580400 ', NULL, 1, 3, 17, 10);
INSERT INTO instituciones VALUES (465, ' PROVINCIA DE LOJA ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.097193252440 ', ' -79.436168529100 ', NULL, 1, 2, 20, 20);
INSERT INTO instituciones VALUES (420, ' PUERTO BOLIVAR ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.191752488690 ', ' -79.573385120400 ', NULL, 0, 1, 0, 7);
INSERT INTO instituciones VALUES (478, ' RAFAEL GARCIA ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.185553545630 ', ' -79.329531763500 ', NULL, 0, 2, 0, 9);
INSERT INTO instituciones VALUES (479, ' RAQUEL BENIGNA ESPINOZA FIGUEROA ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 2, 1, ' -4.194336425830 ', ' -79.338997418500 ', NULL, 0, 1, 0, 13);
INSERT INTO instituciones VALUES (421, ' REINA DEL CISNE ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.239421073710 ', ' -79.557443365600 ', NULL, 0, 2, 0, 10);
INSERT INTO instituciones VALUES (466, ' RIO GUAYAS ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.104196875950 ', ' -79.509026568600 ', NULL, 0, 1, 0, 16);
INSERT INTO instituciones VALUES (422, ' RIO SARAGURO ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.305080980010 ', ' -79.497167288300 ', NULL, 0, 5, 0, 28);
INSERT INTO instituciones VALUES (467, ' ROSA DELGADO RIOFRIO ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.095502708760 ', ' -79.351028408600 ', NULL, 0, 1, 0, 8);
INSERT INTO instituciones VALUES (423, ' SANTA MARIANITA DE JESUS (PILLINUMA) ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 2, ' -4.234419759060 ', ' -79.533418516500 ', NULL, 0, 2, 11, 0);
INSERT INTO instituciones VALUES (424, ' SANTA TERESA ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.175359986830 ', ' -79.556002924000 ', NULL, 0, 1, 11, 7);
INSERT INTO instituciones VALUES (468, ' SEGUNDO CUEVA CELI ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.047669561930 ', ' -79.389362857300 ', NULL, 0, 2, 5, 15);
INSERT INTO instituciones VALUES (469, ' SIN NOMBRE ( CARBONERA) ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.082530481420 ', ' -79.443780121600 ', NULL, 0, 1, 0, 5);
INSERT INTO instituciones VALUES (440, ' TARQUI NO 96 ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.248386334880 ', ' -79.460722574200 ', NULL, 0, 5, 0, 8);
INSERT INTO instituciones VALUES (441, ' UNIDAD EDUCATIVA A DISTANCIA DE LOJA  EXTENSION GONZANAMA ', ' GONZANAMA ', NULL, NULL, NULL, 3, 2, ' -4.231862606430 ', ' -79.437614069300 ', NULL, 3, 4, 60, 55);
INSERT INTO instituciones VALUES (480, ' UNIDAD EDUCATIVA A DISTANCIA DE LOJA EXTENSION PURUNUMA ', ' PURUNUMA (EGUIGUREN) ', NULL, NULL, NULL, 3, 2, ' -4.204329056600 ', ' -79.386308963400 ', NULL, 0, 7, 28, 20);
INSERT INTO instituciones VALUES (425, ' UNIDAD EDUCATIVA SAN VICENTE DE PAUL ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 3, 2, ' -4.222472808760 ', ' -79.523892410200 ', NULL, 15, 16, 115, 106);
INSERT INTO instituciones VALUES (426, ' VALDIVIA ', ' CHANGAIMINA (LA LIBERTAD) ', NULL, NULL, NULL, 2, 1, ' -4.243245711340 ', ' -79.509385763300 ', NULL, 0, 1, 5, 3);
INSERT INTO instituciones VALUES (470, ' VICENTE ROCAFUERTE ', ' NAMBACOLA ', NULL, NULL, NULL, 2, 1, ' -4.161004130770 ', ' -79.472999623700 ', NULL, 3, 2, 26, 20);
INSERT INTO instituciones VALUES (442, ' VICTOR MANUEL SAMANIEGO ', ' GONZANAMA ', NULL, NULL, NULL, 2, 1, ' -4.200441933770 ', ' -79.440307004000 ', NULL, 2, 0, 10, 7);
INSERT INTO instituciones VALUES (486, ' COLEGIO  NACIONAL JOSE FELIX DE VALDIVIESO ', ' SACAPALCA ', NULL, NULL, NULL, 3, 1, ' -4.153556472590 ', ' -79.517860609300 ', NULL, 6, 6, 60, 50);
INSERT INTO instituciones VALUES (495, ' TRATADO DE GIRON ', ' SACAPALCA ', 2546572, NULL, NULL, 2, 1, ' -4.130024708710 ', ' -79.518003482200 ', '', 0, 1, 7, 8);
INSERT INTO instituciones VALUES (496, 'COLEGIO FISCO-MISIONAL LA DOLOROSA', 'Olmedo, Sector Parque Central', NULL, NULL, NULL, 3, 2, '-3.995392628000', '-79.199551334400', NULL, 30, 24, 800, 0);
INSERT INTO instituciones VALUES (497, 'Loxa Dance', 'Av. Orillas del Zamora y Segundo Puertas Moreno', 980219219, 25, 15, 9, 4, '-3.982113', '-79.205329', 'https://www.facebook.com/loxa.dance', 4, 2, 15, 18);
INSERT INTO instituciones VALUES (498, 'The Canadian House Center', 'Venezuela ', 2584334, 40, 36, 6, 4, '-4.005273', '-79.207111', 'www.thecanadianhousecenter.com', 20, 12, 230, 245);
INSERT INTO instituciones VALUES (499, 'Instituto Tecnológico Sudamericano', 'Miguel Riofrío 14-55, Loja, Ecuador', 2587210, NULL, 600, 5, 4, '-3.999145', '-79.202076', 'http://www.tecnologicosudamericano.edu.ec/', 45, 50, 240, 185);
INSERT INTO instituciones VALUES (500, 'Universidad Internacional del ecuador- Sede Loja', 'Ramon Pinto', 2584567, NULL, NULL, 4, 4, '-4.002170', '-79.204698', 'http://uide.edu.ec/extension-loja-2/', 45, 50, 400, 435);
INSERT INTO instituciones VALUES (7, 'CABO MINACHO', 'AV EDUARDO KIDJMAN Y GONZANAMA GONZANAMA ', 2546756, 0, 0, 8, 2, '-4.0072964042', '-79.2013441816', 'https://www.facebook.com/pages/Fuerte-Militar-Cabo-Minacho/343870395741076', 0, 1, 0, 0);
INSERT INTO instituciones VALUES (20, 'CENTRO DE EDUCACION INICIAL PARTICULAR APRENDER JUGANDO', 'AV. PIO JARAMILLO 2637 MORILLO ', 2554345, 55, 87, 1, 4, '-4.020304461770', '-79.203629826600', 'https://www.facebook.com/pages/Aprender-Jugando/690024661024230?fref=ts', 0, 2, 7, 9);
INSERT INTO instituciones VALUES (333, 'UNIVERSIDAD NACIONAL DE LOJA', 'Redondel de La Argelia, Cuidadela Julio Ordonez', 2547252, 0, 0, 4, 1, '-4.033069', '-79.202520', 'http://unl.edu.ec/', 78, 65, 650, 658);


--
-- Data for Name: instituciones_carreras; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO instituciones_carreras VALUES (332, 1);
INSERT INTO instituciones_carreras VALUES (332, 2);
INSERT INTO instituciones_carreras VALUES (332, 3);
INSERT INTO instituciones_carreras VALUES (332, 4);
INSERT INTO instituciones_carreras VALUES (332, 5);
INSERT INTO instituciones_carreras VALUES (332, 6);
INSERT INTO instituciones_carreras VALUES (332, 7);
INSERT INTO instituciones_carreras VALUES (332, 8);
INSERT INTO instituciones_carreras VALUES (332, 9);
INSERT INTO instituciones_carreras VALUES (332, 10);
INSERT INTO instituciones_carreras VALUES (332, 11);
INSERT INTO instituciones_carreras VALUES (332, 12);
INSERT INTO instituciones_carreras VALUES (332, 13);
INSERT INTO instituciones_carreras VALUES (332, 14);
INSERT INTO instituciones_carreras VALUES (332, 15);
INSERT INTO instituciones_carreras VALUES (332, 16);
INSERT INTO instituciones_carreras VALUES (332, 17);
INSERT INTO instituciones_carreras VALUES (332, 18);
INSERT INTO instituciones_carreras VALUES (332, 19);
INSERT INTO instituciones_carreras VALUES (332, 20);
INSERT INTO instituciones_carreras VALUES (332, 21);
INSERT INTO instituciones_carreras VALUES (332, 22);
INSERT INTO instituciones_carreras VALUES (332, 23);
INSERT INTO instituciones_carreras VALUES (332, 24);
INSERT INTO instituciones_carreras VALUES (332, 25);
INSERT INTO instituciones_carreras VALUES (332, 26);


--
-- Name: instituciones_id_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('instituciones_id_institucion_seq', 1, false);


--
-- Data for Name: instituciones_modalidades; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO instituciones_modalidades VALUES (332, 1);
INSERT INTO instituciones_modalidades VALUES (332, 2);


--
-- Data for Name: instituciones_niveles; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO instituciones_niveles VALUES (278, 1);
INSERT INTO instituciones_niveles VALUES (278, 2);
INSERT INTO instituciones_niveles VALUES (278, 4);
INSERT INTO instituciones_niveles VALUES (278, 20);
INSERT INTO instituciones_niveles VALUES (278, 3);


--
-- Data for Name: modalidades; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO modalidades VALUES (2, 'Distancia');
INSERT INTO modalidades VALUES (1, 'Presencial');


--
-- Name: modalidades_id_modalidad_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('modalidades_id_modalidad_seq', 1, false);


--
-- Data for Name: niveles; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO niveles VALUES (1, 'Tiny Kids', '3');
INSERT INTO niveles VALUES (2, 'Children', '8');
INSERT INTO niveles VALUES (3, 'Teens', '12');
INSERT INTO niveles VALUES (4, 'Youth', '14');
INSERT INTO niveles VALUES (5, 'Sub-5', NULL);
INSERT INTO niveles VALUES (6, 'Sub-6', NULL);
INSERT INTO niveles VALUES (7, 'Sub-7', NULL);
INSERT INTO niveles VALUES (8, 'Sub-8', NULL);
INSERT INTO niveles VALUES (9, 'Sub-9', NULL);
INSERT INTO niveles VALUES (10, 'Sub-10', NULL);
INSERT INTO niveles VALUES (11, 'Sub-11', NULL);
INSERT INTO niveles VALUES (12, 'Sub-12', NULL);
INSERT INTO niveles VALUES (13, 'Sub-13', NULL);
INSERT INTO niveles VALUES (14, 'Sub-14', NULL);
INSERT INTO niveles VALUES (15, 'Sub-15', NULL);
INSERT INTO niveles VALUES (16, 'Sub-16', NULL);
INSERT INTO niveles VALUES (17, 'Sub-17', NULL);
INSERT INTO niveles VALUES (18, 'Sub-18', NULL);
INSERT INTO niveles VALUES (19, 'Sub-19', NULL);
INSERT INTO niveles VALUES (20, 'Senior', '17');


--
-- Name: niveles_id_nivel_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('niveles_id_nivel_seq', 3, true);


--
-- Data for Name: tipo_institucion; Type: TABLE DATA; Schema: public; Owner: academias
--

INSERT INTO tipo_institucion VALUES (1, 'Inicial');
INSERT INTO tipo_institucion VALUES (4, 'Universidad');
INSERT INTO tipo_institucion VALUES (5, 'Instituto Tecnologico');
INSERT INTO tipo_institucion VALUES (6, 'Academia Idiomas');
INSERT INTO tipo_institucion VALUES (7, 'Academia Musica');
INSERT INTO tipo_institucion VALUES (8, 'Academia Deportes');
INSERT INTO tipo_institucion VALUES (9, 'Academia Baile');
INSERT INTO tipo_institucion VALUES (10, 'Educacion Especial');
INSERT INTO tipo_institucion VALUES (11, 'Centro de Rehabilitacion');
INSERT INTO tipo_institucion VALUES (12, 'Centro de Audicion y Lenguaje');
INSERT INTO tipo_institucion VALUES (13, 'Centro de Formacion Artesanal');
INSERT INTO tipo_institucion VALUES (2, 'Educación Básica');
INSERT INTO tipo_institucion VALUES (3, 'Bachillerato');


--
-- Name: tipo_institucion_id_tipo_institucion_seq; Type: SEQUENCE SET; Schema: public; Owner: academias
--

SELECT pg_catalog.setval('tipo_institucion_id_tipo_institucion_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: pk_areas; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY areas
    ADD CONSTRAINT pk_areas PRIMARY KEY (id_area);


--
-- Name: pk_carreras; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY carreras
    ADD CONSTRAINT pk_carreras PRIMARY KEY (id_carrera);


--
-- Name: pk_clasificacion_institucion; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY clasificacion_institucion
    ADD CONSTRAINT pk_clasificacion_institucion PRIMARY KEY (id_clasificacion_institucion);


--
-- Name: pk_instituciones; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY instituciones
    ADD CONSTRAINT pk_instituciones PRIMARY KEY (id_institucion);


--
-- Name: pk_modalidad; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY modalidades
    ADD CONSTRAINT pk_modalidad PRIMARY KEY (id_modalidad);


--
-- Name: pk_nivel; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY niveles
    ADD CONSTRAINT pk_nivel PRIMARY KEY (id_nivel);


--
-- Name: pk_tipo_institucion; Type: CONSTRAINT; Schema: public; Owner: academias; Tablespace: 
--

ALTER TABLE ONLY tipo_institucion
    ADD CONSTRAINT pk_tipo_institucion PRIMARY KEY (id_tipo_institucion);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: academias; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fk_areas; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY carreras
    ADD CONSTRAINT fk_areas FOREIGN KEY (id_area) REFERENCES areas(id_area);


--
-- Name: fk_carreras; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones_carreras
    ADD CONSTRAINT fk_carreras FOREIGN KEY (id_carrera) REFERENCES carreras(id_carrera);


--
-- Name: fk_clasificacion_institucion; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones
    ADD CONSTRAINT fk_clasificacion_institucion FOREIGN KEY (id_clasificacion_institucion) REFERENCES clasificacion_institucion(id_clasificacion_institucion);


--
-- Name: fk_instituciones; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones_modalidades
    ADD CONSTRAINT fk_instituciones FOREIGN KEY (id_institucion) REFERENCES instituciones(id_institucion);


--
-- Name: fk_instituciones; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones_niveles
    ADD CONSTRAINT fk_instituciones FOREIGN KEY (id_institucion) REFERENCES instituciones(id_institucion);


--
-- Name: fk_instituciones; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones_carreras
    ADD CONSTRAINT fk_instituciones FOREIGN KEY (id_institucion) REFERENCES instituciones(id_institucion);


--
-- Name: fk_modalidad; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones_modalidades
    ADD CONSTRAINT fk_modalidad FOREIGN KEY (id_modalidad) REFERENCES modalidades(id_modalidad);


--
-- Name: fk_niveles; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones_niveles
    ADD CONSTRAINT fk_niveles FOREIGN KEY (id_nivel) REFERENCES niveles(id_nivel);


--
-- Name: fk_tipo_institucion; Type: FK CONSTRAINT; Schema: public; Owner: academias
--

ALTER TABLE ONLY instituciones
    ADD CONSTRAINT fk_tipo_institucion FOREIGN KEY (id_tipo_institucion) REFERENCES tipo_institucion(id_tipo_institucion);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

