PGDMP             
            v            portfoliodb    10.6    10.6 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393    portfoliodb    DATABASE     �   CREATE DATABASE portfoliodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE portfoliodb;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16425 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    16423    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    16433    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205    3            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    16417    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    16415    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    16443 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    16453    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    16451    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209    3            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    16461    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    16459 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211    3            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    16556 	   blog_blog    TABLE     �  CREATE TABLE public.blog_blog (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    body text,
    pub_date timestamp with time zone,
    title character varying(255),
    description text,
    heading character varying(255),
    model_image character varying(100),
    para1 text,
    para2 text,
    para3 text,
    para4 text,
    plan_of_attack text,
    link character varying(255),
    github character varying(255)
);
    DROP TABLE public.blog_blog;
       public         postgres    false    3            �            1259    16554    blog_blog_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_blog_id_seq;
       public       postgres    false    3    215            �           0    0    blog_blog_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_blog_id_seq OWNED BY public.blog_blog.id;
            public       postgres    false    214            �            1259    16625    catsndogs_catsdogs    TABLE     �   CREATE TABLE public.catsndogs_catsdogs (
    id integer NOT NULL,
    name character varying(255),
    img character varying(100) NOT NULL
);
 &   DROP TABLE public.catsndogs_catsdogs;
       public         postgres    false    3            �            1259    16623    catsndogs_master_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catsndogs_master_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catsndogs_master_id_seq;
       public       postgres    false    224    3            �           0    0    catsndogs_master_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.catsndogs_master_id_seq OWNED BY public.catsndogs_catsdogs.id;
            public       postgres    false    223            �            1259    16521    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    16519    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213    3            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    16407    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    16394    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197    3            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    16573    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    16603    excel_excelmodel    TABLE     �   CREATE TABLE public.excel_excelmodel (
    id integer NOT NULL,
    name character varying(255),
    cid character varying(255),
    csv character varying(100) NOT NULL
);
 $   DROP TABLE public.excel_excelmodel;
       public         postgres    false    3            �            1259    16601    excel_excelmodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.excel_excelmodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.excel_excelmodel_id_seq;
       public       postgres    false    3    220            �           0    0    excel_excelmodel_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.excel_excelmodel_id_seq OWNED BY public.excel_excelmodel.id;
            public       postgres    false    219            �            1259    16567    jobs_job    TABLE     �   CREATE TABLE public.jobs_job (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    summary character varying(200) NOT NULL
);
    DROP TABLE public.jobs_job;
       public         postgres    false    3            �            1259    16565    jobs_job_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jobs_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.jobs_job_id_seq;
       public       postgres    false    217    3            �           0    0    jobs_job_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.jobs_job_id_seq OWNED BY public.jobs_job.id;
            public       postgres    false    216            �            1259    16614    master_master    TABLE     �   CREATE TABLE public.master_master (
    id integer NOT NULL,
    name character varying(255),
    cid character varying(255),
    csv character varying(100) NOT NULL
);
 !   DROP TABLE public.master_master;
       public         postgres    false    3            �            1259    16612    master_master_id_seq    SEQUENCE     �   CREATE SEQUENCE public.master_master_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.master_master_id_seq;
       public       postgres    false    222    3            �           0    0    master_master_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.master_master_id_seq OWNED BY public.master_master.id;
            public       postgres    false    221            �
           2604    16428    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    16420    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16446    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    16456    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    16464    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    16559    blog_blog id    DEFAULT     l   ALTER TABLE ONLY public.blog_blog ALTER COLUMN id SET DEFAULT nextval('public.blog_blog_id_seq'::regclass);
 ;   ALTER TABLE public.blog_blog ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            �
           2604    16628    catsndogs_catsdogs id    DEFAULT     |   ALTER TABLE ONLY public.catsndogs_catsdogs ALTER COLUMN id SET DEFAULT nextval('public.catsndogs_master_id_seq'::regclass);
 D   ALTER TABLE public.catsndogs_catsdogs ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            �
           2604    16524    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            �
           2604    16410    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    16606    excel_excelmodel id    DEFAULT     z   ALTER TABLE ONLY public.excel_excelmodel ALTER COLUMN id SET DEFAULT nextval('public.excel_excelmodel_id_seq'::regclass);
 B   ALTER TABLE public.excel_excelmodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220            �
           2604    16570    jobs_job id    DEFAULT     j   ALTER TABLE ONLY public.jobs_job ALTER COLUMN id SET DEFAULT nextval('public.jobs_job_id_seq'::regclass);
 :   ALTER TABLE public.jobs_job ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            �
           2604    16617    master_master id    DEFAULT     t   ALTER TABLE ONLY public.master_master ALTER COLUMN id SET DEFAULT nextval('public.master_master_id_seq'::regclass);
 ?   ALTER TABLE public.master_master ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    222    222            �          0    16425 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   A�       �          0    16435    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ^�       �          0    16417    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   {�       �          0    16443 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ��       �          0    16453    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    16461    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       �          0    16556 	   blog_blog 
   TABLE DATA               �   COPY public.blog_blog (id, image, body, pub_date, title, description, heading, model_image, para1, para2, para3, para4, plan_of_attack, link, github) FROM stdin;
    public       postgres    false    215   ծ       �          0    16625    catsndogs_catsdogs 
   TABLE DATA               ;   COPY public.catsndogs_catsdogs (id, name, img) FROM stdin;
    public       postgres    false    224   X�       �          0    16521    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   ��       �          0    16407    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   `�       �          0    16396    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    16573    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    218   9�       �          0    16603    excel_excelmodel 
   TABLE DATA               >   COPY public.excel_excelmodel (id, name, cid, csv) FROM stdin;
    public       postgres    false    220   ]�       �          0    16567    jobs_job 
   TABLE DATA               6   COPY public.jobs_job (id, image, summary) FROM stdin;
    public       postgres    false    217   z�       �          0    16614    master_master 
   TABLE DATA               ;   COPY public.master_master (id, name, cid, csv) FROM stdin;
    public       postgres    false    222   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 33, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    blog_blog_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_blog_id_seq', 5, true);
            public       postgres    false    214            �           0    0    catsndogs_master_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.catsndogs_master_id_seq', 7, true);
            public       postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 25, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);
            public       postgres    false    196            �           0    0    excel_excelmodel_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.excel_excelmodel_id_seq', 1, false);
            public       postgres    false    219            �           0    0    jobs_job_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.jobs_job_id_seq', 4, true);
            public       postgres    false    216            �           0    0    master_master_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.master_master_id_seq', 1, false);
            public       postgres    false    221            �
           2606    16432    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    16487 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    16430    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    16473 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    16422 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �
           2606    16458 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            �
           2606    16502 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    16448    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �
           2606    16466 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            �
           2606    16516 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �
           2606    16544     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207                       2606    16561    blog_blog blog_blog_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_blog DROP CONSTRAINT blog_blog_pkey;
       public         postgres    false    215                       2606    16630 (   catsndogs_catsdogs catsndogs_master_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.catsndogs_catsdogs
    ADD CONSTRAINT catsndogs_master_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catsndogs_catsdogs DROP CONSTRAINT catsndogs_master_pkey;
       public         postgres    false    224            �
           2606    16530 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    16414 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    16412 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                       2606    16580 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    218            
           2606    16611 &   excel_excelmodel excel_excelmodel_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.excel_excelmodel
    ADD CONSTRAINT excel_excelmodel_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.excel_excelmodel DROP CONSTRAINT excel_excelmodel_pkey;
       public         postgres    false    220                       2606    16572    jobs_job jobs_job_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.jobs_job
    ADD CONSTRAINT jobs_job_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.jobs_job DROP CONSTRAINT jobs_job_pkey;
       public         postgres    false    217                       2606    16622     master_master master_master_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.master_master
    ADD CONSTRAINT master_master_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.master_master DROP CONSTRAINT master_master_pkey;
       public         postgres    false    222            �
           1259    16475    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    16488 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    16489 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    16474 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �
           1259    16504 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            �
           1259    16503 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            �
           1259    16518 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            �
           1259    16517 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    16545     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            �
           1259    16541 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213                        1259    16542 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                       1259    16582 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    218                       1259    16581 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    218                       2606    16481 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2784                       2606    16476 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    2789    205                       2606    16467 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    2779    199                       2606    16496 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    203    2789    209                       2606    16491 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2797    207    209                       2606    16510 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    211    2784                       2606    16505 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    207    2797                       2606    16531 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    213    199    2779                       2606    16549 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    2797    207    213            �      x������ � �      �      x������ � �      �   i  x�]��n� F��S�	�B������AY�6T!�ַ1Ƙ�a��;(���sZ�i���[*���Ki��Pc	��ϴ.��b+�5���ٽc+�Kv�_���U����[�$l'�Kn��l_6�|��x�A:Әt��)$��>������?���̧)�G��x(=5�_ܺ��Y���U-J�ut@7�����[�~��
��M��_��KP�����7c�dldݯ;�U��$5qF
k��cñ簟j������4��42� ʎ@������g�0�0A��R�i4���]����\�E<l�f��%���T�4�%��fN��f�x��[r4���1)�����I��mL�� ��a��      �   �   x�]�A�0����+:x����ܠS*��."��&�(M���:��痑��<+~3u�e�0�r���.�yJ�o�K�"��n<�^Y����s?�`ݨD��.��%VM�'X�2�ۀ�Bi��2P������0�BV��߀�<P�7�ܣ�~ ӕ+Y      �      x������ � �      �      x������ � �      �      x��[mo�H����/��(F/~��,�8NƘ��K���9�@�-�1Erؤ����=U�M�l93��;cw"�������TU�`']Fsm���EQL]�w��Jc��|�ӟ޽S�ޝ����8;��_]�]]���Gǃ�x0����d��dx��Ã��p�	?�J�ԨH����Z��T]Ei�5+*UV:I�:��^h�<)�I���;]�#�\�F��!)VyVD	��X�_%Q1�,2�:PkUF5��Ge~sO�e�_�����[�@]*.�LǵZ��!Q&K3����<�
�D�Zj���$2SUi�]�,�ɵN��uA妎@:	��_�/�`�`��Et�U���u7�%�c�Y�i5c���bs��>�T�VQ^�J�}�9W뢩$���,Z�UZ/@"X�㣅b�1��V���.ˢbB�N�`Ѩ�~����C^CW�֍Ŏ0�f��X�6F�h��`�ѐ�`�If��+,�����>�r�z|��@��7-��)����	NYG�7�w�� �����(3Z��	��Y�׋�
t���j�����Q��]'����4}�u��YU,Y��.���!����X���>����}�4�Đ���?�Q�TzZE�\�e���ݬ����p���YZ�$r�Z��a{�;�K�Z�6i�8[�py)��4/��f�Z�i��1�b':Nɔ�h��C�uE�\j,�Si-E-I(O�e�7𠢩i��G��}Z4�Ƅ���0�>�mT�(N�\���Ca��T�î ��f����������E��4+��@�O&7�,�ky]X���m�w*�?Q�e"I#���P'/�r\�5����c:oh�¯��7K�g8�nek�#�6����gi���G:z��'��t$��?�/�o6u�ysG7Ln�a���F����HȮ;߸E:5��G�����de�Je:�TནV�+aT⨓�{�N�Ó4PÛ�n��O�k�86=���r��H��#��0���*Z��(��E��:��f�J��Gj�xȜ�&��*Z�rk�,��ɦ�|�M�(�uY��ZC���=���� �!�ط������M���~K�}
����&P�OF7����[V&�:���8�� P��DV!��DG0�;�X�,
����P@$UQ»X�%���}������RM�ꕶǚ�*r�"���P鲈F�S�
�#-�<�`���K�4�&=���������G]���ߍ`����yfj]�;-w�1X�� ��>0
�5|98vC��P�"o�`����f���`@�މrfBS�V�y��wi֍JH0�h
c#q���:ޓ�����:>pN��A2ʀeN�p<T�Ã�����3�T=@�E��i ����O:K1ST�Ҝ��2<�t��Êf�7M���Rw��J�l�r�6Zf �S�g9$r�n�LbTx
ȫ�(Ǻ�;�P_�2����-C���zt,�-��)S'���'Ef��#[Cq��3D0L[�H 8�`�duZb�-*(�.�SL�O���]���(�7����b-9>A��M�y*|GAzI�-q�>J3�f�а*�,���J]����VZ�S+���ӝ��NGE��j����D I�g��K�Ƒ��T-�B�n�l�(��'�~�.[C�U�S�8��,�*5�)Y' �	�o�ec���z+on1�,�A�[9����he$�E]���ٳ9����G?�\fu͑���z���{���4,��D�g��;F"@��Rӑ=?�?>�����������������k�X�㢸�o���+�v�v��|Pk��`&���x$ʠ��T ��Z5�)����`2:::<8|n��Ed� �[GxHR7�x�%�%���Gek�]�b�s�L:���j���J� 4�~&��Ÿd�XW�3B���f���u��Ľ8�v9�Dӡ��l��[�MT}���GW��h1ߪJ�8��:#�$��p(y�����(��9a5kh)�]�m$a"�	b�ʑ��q^�Q�)Sr��G�ð�h�����^4�E����7�~f�'����j�I�6���|����.;�/5֩֘L��tl�S ��"6�\IB��~�L�? �K�sM+�T�]��$�6o���k�Y�p�z8*S�ȤE�&����\N����)�r|�h�=V"�3>�a�f�{*LP�]�_!�k��*�O�x�랓�i�t2nyV��uM!aě��q�$T\��L����n�ʧ�bc�'d}P��Hg
D{	e�F.E[�Bd^	�OG=$I�M�;�=�YAq'�E:_xKCr>d5�ȯ3ON�)i�b7�NN��p��-��N^nss�2�9W�B�;�doU��(b��p�]��ԭ��8�q� %�����'$/!�a��,� ��TiΩ9�o2��O�����D0Agn�w̒	\��1���P]��!�2�(��xy��-�v�8LP�XHA2dU�Q-N��o�XC�l�	�g2b|�6��32f絘�	��p��>���8oߝ1��I�U����h�N���Y����K	 �'����88;��T5�i\B�����X����fںk�Vc�J$��IZAg[�vhR�ӡ��F+Z��"������\��ċ�|s<���t�
!�����5
�ʢ<:�pG<���nɏټ�z�jR�.�zѾU�yz��;��;�;l��҈�=���T������K	�tڑ�H*B�@���:�ܒ����[jb/�?`��*=� �U/8M��E���%�x��|��m����K-?y�`�Y	.V�9py2��,Jq�ʙ�0<���ã�����d�p�x��=
&�G��Ǔ���d|�x�x����hxt8:<��������x4>8a�����_�F|��+�}w�Er�8����a*!�Z`�7�[��I-�8Ȗ�/m ')�~��z����J4�jQ��@g�t[��:��`�I�Pk�(��`Z���*�)�{Q���
�G7�c��>]��DU-3ÚP܂�{��-�G�U'�pHŪָ���+�R�Sj B,6��Y��������������T�}hߴ�\��Y"5�H���T���?��
 N"RK� h��T���I���K�%H�y�j�
m���Y��Ҫ�Y Z��A�� �-��w	�M�85�����Gu�����o�nN�'�6{rJ��]����i[�����'W�����w=�/�%׺�]h�=7%4�f�+a�z]�S��X�ABE�HP:d�ĸ�-� ��iu�mM����������2��=��"���k�&����1�m�;����@�k���,%�B5#i�&�-<�xVAÍ$T�2k���e��+y���(��)z85�<�TYY����wbG���&�5FJ<q���M
��x�3���O�k�C�t`�p�1�=d\�
fES��To^q*Rj�b������Z���d�g�f�ίkʂ��z>ߜ����T�:�\.:�^!S���k8).�iֻ����6�l��⛲j��ĕxk�6A���u�Ί�l�h�@���t�pH��Jl������Ò��4P$�-�j�VU��*%�(�*wP_�%,�v �uE`$&�T���U%�`�-p�z��@�{VP�r�jW�q�vk7�Ҵ��$�̱<���wvD �`��hS�j%-�	�] Wv;��(�,3��c6�ev8�I¿�iQ%� jM��s����gp�z���I���p��*��m	��;���$Y�nj���Q�*Dj�.i��b%I�]^!�������5������I�5�D�/��>��]�-A����3Ҽ�O̻��87���FsQ�m��Ϻ�z"�cs���p��ݽ��(�pT�:�Z�y�Ho�ٽ����f?��B�\�=J��0��
A�0��C�V�ư�?���US5��&����W��J�+�9%7�b'�z�W��dH���n?���t#�=x'��m�0{�/�n����R2�x�j��r �f�$s���S:ǂ_C{��v!�ƽ+�N|j���A\d�1J׍�~�r��cJ�6V[o� n  n��T,=�JNr�TF`����Q��ԞW���A��,la��#�	�b�(eA>Q�w���<\Y��p�sA������۲gE/�9i�D�8n�w֊�]����rj�m�N����<�K�$#j3+���4\�g[�Fa�H��91��G�[���Q��ޜ�N�;UOd��Ĵ˅�m^{��xx��ܞ��?6���V$��k-tD&�/��;/9�p����z��JM���TW?�)�:W�#o������Ε ]����:+�|L¦����@#�n�y������PmL���Y����ٮ�:���^K�?�.�j-��ǖ�uN�.i'�R�r͏*��tQ�.Eت��O�D5�3�s�إڙ��j\�5�]bD���~����+�R@������w'�0Jj��e�oJ9F|���W"���K�ÊM��HS�@3�5>���)Q�/{{~ ��ұ���T�R�р�|<2MIDi�m�=���Q�G�ݧ�I�lh_��G2��,�%1z�>����y��ᣯM���L;���"�����h��h�R$$뀞�J	�~�I�W�N�����V,�^0��nt�6�j���uN�6��VA��Ļln�|��o/ߨO��߭��'�#[=xj�?�F^�	�'Qi����+g^O����L�v������RA�C���
��ソ�¼��g���K�?H�,')�.��[J<��#�$�1�r��ެ۷��?�Sov\�I�*�AxRo��K��hK�]׵�Hr^fC�߁���U��Lٿ�]$ɗ�	�mT�~f�|�X���� �65}��ѷ�`�(�]XƗ���K�v����b۷k�ǋ�#����0�Ȧ�v=�=�
}�����t��.��]Tko*uw�d,���?Ѻ_q���9憻#�Y�n�U����<�JrJm�Hz[[<|,��v"�_��m�z=�9w�6�qT���s�ehw�`e;�|7��Sor���a������y��+���D��H�/�5�h��ߵeq��/%�-B��Z�������K�������Or� �����A�ն3v~9�������J1�\��B�iwM��ś�+�����ˋ��lkI��2/e��;ʎ�����Wˋ�����6�䶇��ho	��!C8��;���h�z��m��mM�-�I��l����ˉ��
\���-�N8������;�-�S�I
�e�M,���.҂Xz|�����q�{��!��l��te��?�����Q�����_�l�緷�� <�#{s��1��O0�)����f�̊A.w�\E��.��x�Քʬ�%�P����o�O��`x�˨|�p�{{�y�ޖ��H��@��o�"�4*����Mm�i�l{�j�W�������Ⱥ�^��"x�|�ן$��B1�?>8���:>~�
�q���w��̘��eVN��<�1��m^����۫?�B.����^�{"b&C9�e>�:�m��5G�蔍Ér����fKKR:�[�2ͭ-{xu����luB�S��rt�ݜ������캁t� [�p����<-�����)�v�/=�g��RN�#�h:·���>?�4����;�Z6�oEF�5��P�N�[��M�9����vַۖ�5��f���	ߏq��m9��]�"�K��|��Aj�nrcC2���	�+�����'�܎W]��4I����׳�l�]�@��d���7�Σ+�흯/u����4,>$��2ʻV���(�-�J�Kp��mG�ğ�dvw�����$a�V�ȱyq�V��EAWٿ[f��*�F�n>��ݾ�DPL~�s����%sM?Gy����@�*Q�jJy��䷀�Ra���
��P!�ZT��z�Ӵ��آOK�)nL�L��!�zĸ#d5��:�w[���OPe.e۠Lj�I>�������[���H�*iZ4�fUEm�T�k�9�Ib��	�}k�Y��਩�j6�(�e��G��������ß�J�z15�tV?��t|,��A�� [�$��kU�?A�s��R��t���'Җ=�t����7o�{󞲵�5��%�SW#o�ʃCϏÃI�ԕ!)�ZHй&��k�%d1��P�~�j����U�(�YcF�t�Y�{�|*>/�g�|�����v�~�_����8�|FW��/�?�𿱣�)      �   ;   x�3�LI+N�L��I-�ON,�3100�O
1N��,��*H�2ª�$�2ѥ��"F��� Et�      �   �  x����OA��᯸�Ԧu�3����^M�(�i�!w"-���Cc�߻���B�b�����ٙ9������Ct('�,|��o@#��s����V��Y�r����U�4��!@;.�F�֔�O�a4~�Fy�ޯ!iO�	7Nj�,��$��pI�$��h�����&�\O�HT#�&�����d��B�u:�|p]��n�=�N�:�q���>o��$��3�u=ɦ�/[�$�f��Q��a8H�|����9�̾ϛ,I'�q������.��g�_M��`~=H�<-�{��H`�2�e ��v�f���6g��e+��ѷ���ƀ�)�����>��w-G��-�eMJ�̂if-�;^�V3�P��"K�͎U�pە*5�@�'�����O��	����@H����`e�Pa��Id�r�4�'������l>O��`.�:��� h�	m����a|��ڽ�Q7^�ׯe�=A1��@��6�pSL�����Ȗ{��x��{���Au ��Q�"o�e�e���q���{���۝�M�SƐ����R���5�r\���I��Y]ԥW�_.l����hC�l�*?�~_X�W�� w�<E�"3����{�����:
G�b8�@?K�u����"4�⯐TF�-�z��eͨ�bX@��>oY诬�l��묰      �   �   x�M�K�0Dמ� ��I+%q'�=m
��7#�lȺ2E�k�q ��&.)��8n�/�&��Д�4J�ˬ������Z�+�d��Ѱ��������{`�����$�#���V�N�v[����@G      �   6  x���In�0E��)�oX`g����	��Ar�&���e/����P\�vt�8~��PB��֏��P'�%G$�Q�������v��D��(�YD{m|��R	!f[Uh���_�wM��Lp�{�f1�0��h����7����Ӣ)5�D���Gכ��?�k��OS�����H4�ht�MCx���z�6 �@l�����>y�Dz��D�[Jm�1���:?9M��$qD��}�}��1��c@.H9�����ڱ�8{����M���\��xx����lJ�KHI4Ә`4��^��B҅ƊsHxgC�J�����T��Q 8��	��6�(�t�; ��V%�����e%A�{������L��1ݔ�XZ25�D��b�^*�Z/A#I f�?S���NWTW��#-�J�$�����6�W%�`Y-b�>/��ud���x@S�HW�s�� �2O�T���a��!���4\n�E������J2Q\�8��oP�8_	&H�,��O�c�M(�R8*���������       �     x�=�Ao�0@��+v_4�Ӫ�참Ajl%�@	�؊nN)�~s��_��kL�!��;��հ���z��4p�,a$��P�H�4wj)�l�D*|:ȞE����rM�W�vߋ�� &Pu�t��E�i�,�;Mz��:�Ցj�i-2�Yd�H�N�YU��m-�U�ĕ�9��5��ì��T�%�j*��z��qa�$p��R'��oWzt�U�Z޲4ƻ��-���k�!TEK�.z�GN��|�##���i�B�	��<X<�x5�����y?=�h�      �      x������ � �      �   a   x�3���MLO-�/�LO-��12��s��*H�,I-.�O��I�2�)r�(�,N�+�H�-ͅ+2�2�� >7,ܩ���И������`7$�1z\\\ �63      �      x������ � �     