toc.dat                                                                                             0000600 0004000 0002000 00000157157 14077304420 0014460 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       0    5    
            y         
   Happy_Pets    10.17    12.7 ?               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    24634 
   Happy_Pets    DATABASE     ?   CREATE DATABASE "Happy_Pets" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE "Happy_Pets";
                postgres    false         ?            1259    42319    breeds    TABLE     ?   CREATE TABLE public.breeds (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.breeds;
       public            postgres    false         ?            1259    42317    breeds_id_seq    SEQUENCE     v   CREATE SEQUENCE public.breeds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.breeds_id_seq;
       public          postgres    false    241                    0    0    breeds_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.breeds_id_seq OWNED BY public.breeds.id;
          public          postgres    false    240         ?            1259    42261 
   close_days    TABLE     ?   CREATE TABLE public.close_days (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.close_days;
       public            postgres    false         ?            1259    42259    close_days_id_seq    SEQUENCE     z   CREATE SEQUENCE public.close_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.close_days_id_seq;
       public          postgres    false    231                    0    0    close_days_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.close_days_id_seq OWNED BY public.close_days.id;
          public          postgres    false    230         ?            1259    42269    close_months    TABLE     ?   CREATE TABLE public.close_months (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.close_months;
       public            postgres    false         ?            1259    42267    close_months_id_seq    SEQUENCE     |   CREATE SEQUENCE public.close_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.close_months_id_seq;
       public          postgres    false    233                    0    0    close_months_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.close_months_id_seq OWNED BY public.close_months.id;
          public          postgres    false    232         ?            1259    42110    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public            postgres    false         ?            1259    42108    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    209                    0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    208         ?            1259    37144 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false         ?            1259    37142    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    197                    0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196         ?            1259    42327    notes_advice    TABLE     ?   CREATE TABLE public.notes_advice (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.notes_advice;
       public            postgres    false         ?            1259    42325    notes_advice_id_seq    SEQUENCE     |   CREATE SEQUENCE public.notes_advice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.notes_advice_id_seq;
       public          postgres    false    243                    0    0    notes_advice_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.notes_advice_id_seq OWNED BY public.notes_advice.id;
          public          postgres    false    242         ?            1259    42073    oauth_access_tokens    TABLE     d  CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    user_id bigint,
    client_id bigint NOT NULL,
    name character varying(255),
    scopes text,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone
);
 '   DROP TABLE public.oauth_access_tokens;
       public            postgres    false         ?            1259    42064    oauth_auth_codes    TABLE     ?   CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    user_id bigint NOT NULL,
    client_id bigint NOT NULL,
    scopes text,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);
 $   DROP TABLE public.oauth_auth_codes;
       public            postgres    false         ?            1259    42090    oauth_clients    TABLE     ?  CREATE TABLE public.oauth_clients (
    id bigint NOT NULL,
    user_id bigint,
    name character varying(255) NOT NULL,
    secret character varying(100),
    provider character varying(255),
    redirect text NOT NULL,
    personal_access_client boolean NOT NULL,
    password_client boolean NOT NULL,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.oauth_clients;
       public            postgres    false         ?            1259    42088    oauth_clients_id_seq    SEQUENCE     }   CREATE SEQUENCE public.oauth_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.oauth_clients_id_seq;
       public          postgres    false    205                     0    0    oauth_clients_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;
          public          postgres    false    204         ?            1259    42102    oauth_personal_access_clients    TABLE     ?   CREATE TABLE public.oauth_personal_access_clients (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 1   DROP TABLE public.oauth_personal_access_clients;
       public            postgres    false         ?            1259    42100 $   oauth_personal_access_clients_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.oauth_personal_access_clients_id_seq;
       public          postgres    false    207         !           0    0 $   oauth_personal_access_clients_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;
          public          postgres    false    206         ?            1259    42082    oauth_refresh_tokens    TABLE     ?   CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);
 (   DROP TABLE public.oauth_refresh_tokens;
       public            postgres    false         ?            1259    42237    orders    TABLE     ?   CREATE TABLE public.orders (
    id bigint NOT NULL,
    price_total integer NOT NULL,
    price_staid integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.orders;
       public            postgres    false         ?            1259    42235    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    227         "           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    226         ?            1259    42295    outlays    TABLE     ?   CREATE TABLE public.outlays (
    id bigint NOT NULL,
    outlays_day json NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.outlays;
       public            postgres    false         ?            1259    42293    outlays_id_seq    SEQUENCE     w   CREATE SEQUENCE public.outlays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.outlays_id_seq;
       public          postgres    false    237         #           0    0    outlays_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.outlays_id_seq OWNED BY public.outlays.id;
          public          postgres    false    236         ?            1259    42057    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false         ?            1259    42219    pet_user    TABLE     ?   CREATE TABLE public.pet_user (
    id bigint NOT NULL,
    pet_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pet_user;
       public            postgres    false         ?            1259    42217    pet_user_id_seq    SEQUENCE     x   CREATE SEQUENCE public.pet_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pet_user_id_seq;
       public          postgres    false    225         $           0    0    pet_user_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pet_user_id_seq OWNED BY public.pet_user.id;
          public          postgres    false    224         ?            1259    42206    pets    TABLE       CREATE TABLE public.pets (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    photo character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pets;
       public            postgres    false         ?            1259    42204    pets_id_seq    SEQUENCE     t   CREATE SEQUENCE public.pets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pets_id_seq;
       public          postgres    false    223         %           0    0    pets_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;
          public          postgres    false    222         ?            1259    42146    products    TABLE     ?  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    price integer NOT NULL,
    quantity integer NOT NULL,
    total_price integer NOT NULL,
    percentaje integer NOT NULL,
    price_sell integer NOT NULL,
    photo character varying(255) NOT NULL,
    types_products_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public            postgres    false         ?            1259    42144    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    215         &           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    214         ?            1259    42245 	   providers    TABLE       CREATE TABLE public.providers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    cellphone character varying(255) NOT NULL,
    id_orders bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.providers;
       public            postgres    false         ?            1259    42243    providers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.providers_id_seq;
       public          postgres    false    229         '           0    0    providers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;
          public          postgres    false    228         ?            1259    42277    providers_products    TABLE     ?   CREATE TABLE public.providers_products (
    id bigint NOT NULL,
    providers_id bigint NOT NULL,
    products_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.providers_products;
       public            postgres    false         ?            1259    42275    providers_products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.providers_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.providers_products_id_seq;
       public          postgres    false    235         (           0    0    providers_products_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.providers_products_id_seq OWNED BY public.providers_products.id;
          public          postgres    false    234         ?            1259    42188 	   role_user    TABLE     ?   CREATE TABLE public.role_user (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.role_user;
       public            postgres    false         ?            1259    42186    role_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.role_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_user_id_seq;
       public          postgres    false    221         )           0    0    role_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.role_user_id_seq OWNED BY public.role_user.id;
          public          postgres    false    220         ?            1259    42177    roles    TABLE     ?   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false         ?            1259    42175    roles_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    219         *           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    218         ?            1259    42164    sells    TABLE     2  CREATE TABLE public.sells (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    observation character varying(255),
    price integer NOT NULL,
    quantity integer NOT NULL,
    debt boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sells;
       public            postgres    false         ?            1259    42162    sells_id_seq    SEQUENCE     u   CREATE SEQUENCE public.sells_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.sells_id_seq;
       public          postgres    false    217         +           0    0    sells_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.sells_id_seq OWNED BY public.sells.id;
          public          postgres    false    216         ?            1259    42306    service_hairdresses    TABLE     b  CREATE TABLE public.service_hairdresses (
    id bigint NOT NULL,
    observation character varying(255) NOT NULL,
    price integer NOT NULL,
    buns boolean NOT NULL,
    shawl boolean NOT NULL,
    hygienic boolean NOT NULL,
    pets_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.service_hairdresses;
       public            postgres    false         ?            1259    42304    service_hairdresses_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_hairdresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.service_hairdresses_id_seq;
       public          postgres    false    239         ,           0    0    service_hairdresses_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.service_hairdresses_id_seq OWNED BY public.service_hairdresses.id;
          public          postgres    false    238         ?            1259    42135 
   types_pets    TABLE     ?   CREATE TABLE public.types_pets (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.types_pets;
       public            postgres    false         ?            1259    42133    types_pets_id_seq    SEQUENCE     z   CREATE SEQUENCE public.types_pets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.types_pets_id_seq;
       public          postgres    false    213         -           0    0    types_pets_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.types_pets_id_seq OWNED BY public.types_pets.id;
          public          postgres    false    212         ?            1259    42124    types_products    TABLE     ?   CREATE TABLE public.types_products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.types_products;
       public            postgres    false         ?            1259    42122    types_products_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.types_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.types_products_id_seq;
       public          postgres    false    211         .           0    0    types_products_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.types_products_id_seq OWNED BY public.types_products.id;
          public          postgres    false    210         ?            1259    42044    users    TABLE     7  CREATE TABLE public.users (
    id bigint NOT NULL,
    cedula character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    lastname character varying(255),
    cellphone character varying(255),
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    photo character varying(255) NOT NULL,
    estate boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public            postgres    false         ?            1259    42042    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    199         /           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    198                    2604    42322 	   breeds id    DEFAULT     f   ALTER TABLE ONLY public.breeds ALTER COLUMN id SET DEFAULT nextval('public.breeds_id_seq'::regclass);
 8   ALTER TABLE public.breeds ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                    2604    42264    close_days id    DEFAULT     n   ALTER TABLE ONLY public.close_days ALTER COLUMN id SET DEFAULT nextval('public.close_days_id_seq'::regclass);
 <   ALTER TABLE public.close_days ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231                    2604    42272    close_months id    DEFAULT     r   ALTER TABLE ONLY public.close_months ALTER COLUMN id SET DEFAULT nextval('public.close_months_id_seq'::regclass);
 >   ALTER TABLE public.close_months ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233                    2604    42113    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         	           2604    37147    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    197    197                    2604    42330    notes_advice id    DEFAULT     r   ALTER TABLE ONLY public.notes_advice ALTER COLUMN id SET DEFAULT nextval('public.notes_advice_id_seq'::regclass);
 >   ALTER TABLE public.notes_advice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243                    2604    42093    oauth_clients id    DEFAULT     t   ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);
 ?   ALTER TABLE public.oauth_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                    2604    42105     oauth_personal_access_clients id    DEFAULT     ?   ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);
 O   ALTER TABLE public.oauth_personal_access_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                    2604    42240 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227                    2604    42298 
   outlays id    DEFAULT     h   ALTER TABLE ONLY public.outlays ALTER COLUMN id SET DEFAULT nextval('public.outlays_id_seq'::regclass);
 9   ALTER TABLE public.outlays ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237                    2604    42222    pet_user id    DEFAULT     j   ALTER TABLE ONLY public.pet_user ALTER COLUMN id SET DEFAULT nextval('public.pet_user_id_seq'::regclass);
 :   ALTER TABLE public.pet_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                    2604    42209    pets id    DEFAULT     b   ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);
 6   ALTER TABLE public.pets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                    2604    42149    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                    2604    42248    providers id    DEFAULT     l   ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);
 ;   ALTER TABLE public.providers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229                    2604    42280    providers_products id    DEFAULT     ~   ALTER TABLE ONLY public.providers_products ALTER COLUMN id SET DEFAULT nextval('public.providers_products_id_seq'::regclass);
 D   ALTER TABLE public.providers_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                    2604    42191    role_user id    DEFAULT     l   ALTER TABLE ONLY public.role_user ALTER COLUMN id SET DEFAULT nextval('public.role_user_id_seq'::regclass);
 ;   ALTER TABLE public.role_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221                    2604    42180    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                    2604    42167    sells id    DEFAULT     d   ALTER TABLE ONLY public.sells ALTER COLUMN id SET DEFAULT nextval('public.sells_id_seq'::regclass);
 7   ALTER TABLE public.sells ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                    2604    42309    service_hairdresses id    DEFAULT     ?   ALTER TABLE ONLY public.service_hairdresses ALTER COLUMN id SET DEFAULT nextval('public.service_hairdresses_id_seq'::regclass);
 E   ALTER TABLE public.service_hairdresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239                    2604    42138    types_pets id    DEFAULT     n   ALTER TABLE ONLY public.types_pets ALTER COLUMN id SET DEFAULT nextval('public.types_pets_id_seq'::regclass);
 <   ALTER TABLE public.types_pets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                    2604    42127    types_products id    DEFAULT     v   ALTER TABLE ONLY public.types_products ALTER COLUMN id SET DEFAULT nextval('public.types_products_id_seq'::regclass);
 @   ALTER TABLE public.types_products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211         
           2604    42047    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199                   0    42319    breeds 
   TABLE DATA           <   COPY public.breeds (id, created_at, updated_at) FROM stdin;
    public          postgres    false    241       3089.dat           0    42261 
   close_days 
   TABLE DATA           @   COPY public.close_days (id, created_at, updated_at) FROM stdin;
    public          postgres    false    231       3079.dat 	          0    42269    close_months 
   TABLE DATA           B   COPY public.close_months (id, created_at, updated_at) FROM stdin;
    public          postgres    false    233       3081.dat ?          0    42110    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    209       3057.dat ?          0    37144 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197       3045.dat           0    42327    notes_advice 
   TABLE DATA           B   COPY public.notes_advice (id, created_at, updated_at) FROM stdin;
    public          postgres    false    243       3091.dat ?          0    42073    oauth_access_tokens 
   TABLE DATA           ?   COPY public.oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) FROM stdin;
    public          postgres    false    202       3050.dat ?          0    42064    oauth_auth_codes 
   TABLE DATA           _   COPY public.oauth_auth_codes (id, user_id, client_id, scopes, revoked, expires_at) FROM stdin;
    public          postgres    false    201       3049.dat ?          0    42090    oauth_clients 
   TABLE DATA           ?   COPY public.oauth_clients (id, user_id, name, secret, provider, redirect, personal_access_client, password_client, revoked, created_at, updated_at) FROM stdin;
    public          postgres    false    205       3053.dat ?          0    42102    oauth_personal_access_clients 
   TABLE DATA           ^   COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at) FROM stdin;
    public          postgres    false    207       3055.dat ?          0    42082    oauth_refresh_tokens 
   TABLE DATA           X   COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at) FROM stdin;
    public          postgres    false    203       3051.dat           0    42237    orders 
   TABLE DATA           V   COPY public.orders (id, price_total, price_staid, created_at, updated_at) FROM stdin;
    public          postgres    false    227       3075.dat           0    42295    outlays 
   TABLE DATA           J   COPY public.outlays (id, outlays_day, created_at, updated_at) FROM stdin;
    public          postgres    false    237       3085.dat ?          0    42057    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    200       3048.dat           0    42219    pet_user 
   TABLE DATA           O   COPY public.pet_user (id, pet_id, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    225       3073.dat ?          0    42206    pets 
   TABLE DATA           T   COPY public.pets (id, name, description, photo, created_at, updated_at) FROM stdin;
    public          postgres    false    223       3071.dat ?          0    42146    products 
   TABLE DATA           ?   COPY public.products (id, name, description, price, quantity, total_price, percentaje, price_sell, photo, types_products_id, created_at, updated_at) FROM stdin;
    public          postgres    false    215       3063.dat           0    42245 	   providers 
   TABLE DATA           [   COPY public.providers (id, name, cellphone, id_orders, created_at, updated_at) FROM stdin;
    public          postgres    false    229       3077.dat           0    42277    providers_products 
   TABLE DATA           c   COPY public.providers_products (id, providers_id, products_id, created_at, updated_at) FROM stdin;
    public          postgres    false    235       3083.dat ?          0    42188 	   role_user 
   TABLE DATA           Q   COPY public.role_user (id, role_id, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    221       3069.dat ?          0    42177    roles 
   TABLE DATA           N   COPY public.roles (id, name, description, created_at, updated_at) FROM stdin;
    public          postgres    false    219       3067.dat ?          0    42164    sells 
   TABLE DATA           k   COPY public.sells (id, product_id, observation, price, quantity, debt, created_at, updated_at) FROM stdin;
    public          postgres    false    217       3065.dat           0    42306    service_hairdresses 
   TABLE DATA           }   COPY public.service_hairdresses (id, observation, price, buns, shawl, hygienic, pets_id, created_at, updated_at) FROM stdin;
    public          postgres    false    239       3087.dat ?          0    42135 
   types_pets 
   TABLE DATA           S   COPY public.types_pets (id, name, description, created_at, updated_at) FROM stdin;
    public          postgres    false    213       3061.dat ?          0    42124    types_products 
   TABLE DATA           W   COPY public.types_products (id, name, description, created_at, updated_at) FROM stdin;
    public          postgres    false    211       3059.dat ?          0    42044    users 
   TABLE DATA           ?   COPY public.users (id, cedula, name, lastname, cellphone, email, email_verified_at, password, remember_token, photo, estate, created_at, updated_at) FROM stdin;
    public          postgres    false    199       3047.dat 0           0    0    breeds_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.breeds_id_seq', 1, false);
          public          postgres    false    240         1           0    0    close_days_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.close_days_id_seq', 1, false);
          public          postgres    false    230         2           0    0    close_months_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.close_months_id_seq', 1, false);
          public          postgres    false    232         3           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    208         4           0    0    migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.migrations_id_seq', 428, true);
          public          postgres    false    196         5           0    0    notes_advice_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.notes_advice_id_seq', 1, false);
          public          postgres    false    242         6           0    0    oauth_clients_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.oauth_clients_id_seq', 2, true);
          public          postgres    false    204         7           0    0 $   oauth_personal_access_clients_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, true);
          public          postgres    false    206         8           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    226         9           0    0    outlays_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.outlays_id_seq', 1, false);
          public          postgres    false    236         :           0    0    pet_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pet_user_id_seq', 1, false);
          public          postgres    false    224         ;           0    0    pets_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pets_id_seq', 1, false);
          public          postgres    false    222         <           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 3, true);
          public          postgres    false    214         =           0    0    providers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.providers_id_seq', 1, false);
          public          postgres    false    228         >           0    0    providers_products_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.providers_products_id_seq', 1, false);
          public          postgres    false    234         ?           0    0    role_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.role_user_id_seq', 2, true);
          public          postgres    false    220         @           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 5, true);
          public          postgres    false    218         A           0    0    sells_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.sells_id_seq', 1, false);
          public          postgres    false    216         B           0    0    service_hairdresses_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.service_hairdresses_id_seq', 1, false);
          public          postgres    false    238         C           0    0    types_pets_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.types_pets_id_seq', 1, false);
          public          postgres    false    212         D           0    0    types_products_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.types_products_id_seq', 2, true);
          public          postgres    false    210         E           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    198         ^           2606    42324    breeds breeds_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.breeds DROP CONSTRAINT breeds_pkey;
       public            postgres    false    241         T           2606    42266    close_days close_days_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.close_days
    ADD CONSTRAINT close_days_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.close_days DROP CONSTRAINT close_days_pkey;
       public            postgres    false    231         V           2606    42274    close_months close_months_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.close_months
    ADD CONSTRAINT close_months_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.close_months DROP CONSTRAINT close_months_pkey;
       public            postgres    false    233         8           2606    42119    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    209         :           2606    42121 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    209         !           2606    37149    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197         `           2606    42332    notes_advice notes_advice_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.notes_advice
    ADD CONSTRAINT notes_advice_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.notes_advice DROP CONSTRAINT notes_advice_pkey;
       public            postgres    false    243         -           2606    42080 ,   oauth_access_tokens oauth_access_tokens_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.oauth_access_tokens DROP CONSTRAINT oauth_access_tokens_pkey;
       public            postgres    false    202         *           2606    42071 &   oauth_auth_codes oauth_auth_codes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.oauth_auth_codes DROP CONSTRAINT oauth_auth_codes_pkey;
       public            postgres    false    201         3           2606    42098     oauth_clients oauth_clients_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.oauth_clients DROP CONSTRAINT oauth_clients_pkey;
       public            postgres    false    205         6           2606    42107 @   oauth_personal_access_clients oauth_personal_access_clients_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT oauth_personal_access_clients_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.oauth_personal_access_clients DROP CONSTRAINT oauth_personal_access_clients_pkey;
       public            postgres    false    207         1           2606    42086 .   oauth_refresh_tokens oauth_refresh_tokens_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.oauth_refresh_tokens DROP CONSTRAINT oauth_refresh_tokens_pkey;
       public            postgres    false    203         P           2606    42242    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    227         Z           2606    42303    outlays outlays_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.outlays
    ADD CONSTRAINT outlays_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.outlays DROP CONSTRAINT outlays_pkey;
       public            postgres    false    237         N           2606    42224    pet_user pet_user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pet_user
    ADD CONSTRAINT pet_user_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pet_user DROP CONSTRAINT pet_user_pkey;
       public            postgres    false    225         J           2606    42216    pets pets_photo_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_photo_unique UNIQUE (photo);
 @   ALTER TABLE ONLY public.pets DROP CONSTRAINT pets_photo_unique;
       public            postgres    false    223         L           2606    42214    pets pets_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pets DROP CONSTRAINT pets_pkey;
       public            postgres    false    223         @           2606    42161    products products_photo_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_photo_unique UNIQUE (photo);
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT products_photo_unique;
       public            postgres    false    215         B           2606    42154    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    215         R           2606    42253    providers providers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.providers DROP CONSTRAINT providers_pkey;
       public            postgres    false    229         X           2606    42282 *   providers_products providers_products_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.providers_products
    ADD CONSTRAINT providers_products_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.providers_products DROP CONSTRAINT providers_products_pkey;
       public            postgres    false    235         H           2606    42193    role_user role_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_pkey;
       public            postgres    false    221         F           2606    42185    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    219         D           2606    42169    sells sells_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.sells
    ADD CONSTRAINT sells_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.sells DROP CONSTRAINT sells_pkey;
       public            postgres    false    217         \           2606    42311 ,   service_hairdresses service_hairdresses_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.service_hairdresses
    ADD CONSTRAINT service_hairdresses_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.service_hairdresses DROP CONSTRAINT service_hairdresses_pkey;
       public            postgres    false    239         >           2606    42143    types_pets types_pets_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.types_pets
    ADD CONSTRAINT types_pets_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.types_pets DROP CONSTRAINT types_pets_pkey;
       public            postgres    false    213         <           2606    42132 "   types_products types_products_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.types_products
    ADD CONSTRAINT types_products_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.types_products DROP CONSTRAINT types_products_pkey;
       public            postgres    false    211         #           2606    42054    users users_cedula_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cedula_unique UNIQUE (cedula);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT users_cedula_unique;
       public            postgres    false    199         %           2606    42056    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    199         '           2606    42052    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    199         .           1259    42081 !   oauth_access_tokens_user_id_index    INDEX     d   CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);
 5   DROP INDEX public.oauth_access_tokens_user_id_index;
       public            postgres    false    202         +           1259    42072    oauth_auth_codes_user_id_index    INDEX     ^   CREATE INDEX oauth_auth_codes_user_id_index ON public.oauth_auth_codes USING btree (user_id);
 2   DROP INDEX public.oauth_auth_codes_user_id_index;
       public            postgres    false    201         4           1259    42099    oauth_clients_user_id_index    INDEX     X   CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);
 /   DROP INDEX public.oauth_clients_user_id_index;
       public            postgres    false    205         /           1259    42087 *   oauth_refresh_tokens_access_token_id_index    INDEX     v   CREATE INDEX oauth_refresh_tokens_access_token_id_index ON public.oauth_refresh_tokens USING btree (access_token_id);
 >   DROP INDEX public.oauth_refresh_tokens_access_token_id_index;
       public            postgres    false    203         (           1259    42063    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    200         e           2606    42225     pet_user pet_user_pet_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pet_user
    ADD CONSTRAINT pet_user_pet_id_foreign FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.pet_user DROP CONSTRAINT pet_user_pet_id_foreign;
       public          postgres    false    2892    225    223         f           2606    42230 !   pet_user pet_user_user_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pet_user
    ADD CONSTRAINT pet_user_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.pet_user DROP CONSTRAINT pet_user_user_id_foreign;
       public          postgres    false    199    225    2855         a           2606    42155 +   products products_types_products_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_types_products_id_foreign FOREIGN KEY (types_products_id) REFERENCES public.types_products(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.products DROP CONSTRAINT products_types_products_id_foreign;
       public          postgres    false    2876    211    215         g           2606    42254 %   providers providers_id_orders_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_id_orders_foreign FOREIGN KEY (id_orders) REFERENCES public.orders(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.providers DROP CONSTRAINT providers_id_orders_foreign;
       public          postgres    false    2896    229    227         i           2606    42288 9   providers_products providers_products_products_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.providers_products
    ADD CONSTRAINT providers_products_products_id_foreign FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.providers_products DROP CONSTRAINT providers_products_products_id_foreign;
       public          postgres    false    235    2882    215         h           2606    42283 :   providers_products providers_products_providers_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.providers_products
    ADD CONSTRAINT providers_products_providers_id_foreign FOREIGN KEY (providers_id) REFERENCES public.providers(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.providers_products DROP CONSTRAINT providers_products_providers_id_foreign;
       public          postgres    false    229    2898    235         c           2606    42194 #   role_user role_user_role_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_role_id_foreign;
       public          postgres    false    219    2886    221         d           2606    42199 #   role_user role_user_user_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_user_id_foreign;
       public          postgres    false    199    2855    221         b           2606    42170    sells sells_product_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sells
    ADD CONSTRAINT sells_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.sells DROP CONSTRAINT sells_product_id_foreign;
       public          postgres    false    2882    215    217         j           2606    42312 7   service_hairdresses service_hairdresses_pets_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.service_hairdresses
    ADD CONSTRAINT service_hairdresses_pets_id_foreign FOREIGN KEY (pets_id) REFERENCES public.pets(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.service_hairdresses DROP CONSTRAINT service_hairdresses_pets_id_foreign;
       public          postgres    false    223    2892    239                                                                                                                                                                                                                                                                                                                                                                                                                         3089.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3079.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3081.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3057.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3045.dat                                                                                            0000600 0004000 0002000 00000002313 14077304420 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        404	2014_10_12_000000_create_users_table	1
405	2014_10_12_100000_create_password_resets_table	1
406	2016_06_01_000001_create_oauth_auth_codes_table	1
407	2016_06_01_000002_create_oauth_access_tokens_table	1
408	2016_06_01_000003_create_oauth_refresh_tokens_table	1
409	2016_06_01_000004_create_oauth_clients_table	1
410	2016_06_01_000005_create_oauth_personal_access_clients_table	1
411	2019_08_19_000000_create_failed_jobs_table	1
412	2021_06_02_145129_create_types_products	1
413	2021_06_02_160520_create_types_pets	1
414	2021_06_29_145012_create_products_table	1
415	2021_06_29_145038_create_sells_table	1
416	2021_06_29_145531_create_roles_table	1
417	2021_06_29_145543_create_role_user_table	1
418	2021_06_29_164505_create_pets_table	1
419	2021_06_29_164639_create_pet_user_table	1
420	2021_07_03_142605_create_orders_table	1
421	2021_07_03_144155_create_providers_table	1
422	2021_07_05_143846_create_close_days_table	1
423	2021_07_05_144633_create_close_months_table	1
424	2021_07_05_151905_create_providers_products	1
425	2021_07_05_152504_create_outlays_table	1
426	2021_07_05_152632_create_service_hairdresses_table	1
427	2021_07_05_181919_create_breeds_table	1
428	2021_07_14_041427_create_notes_advice_table	1
\.


                                                                                                                                                                                                                                                                                                                     3091.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3050.dat                                                                                            0000600 0004000 0002000 00000000261 14077304420 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        cf4b242c03120ba17fa5ccdc15c08bf774e6f906092344679631239f45f9ea3f48302c640716f10f	2	1	Personal Access Token	[]	f	2021-07-25 15:49:34	2021-07-25 15:49:34	2022-07-25 15:49:34
\.


                                                                                                                                                                                                                                                                                                                                               3049.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3053.dat                                                                                            0000600 0004000 0002000 00000000453 14077304420 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	\N	Happy_Pets Personal Access Client	lpnGpDh1ncehEDUbEtgzz76oyVRKBF2tj0XFCnVZ	\N	http://localhost	t	f	f	2021-07-25 15:49:06	2021-07-25 15:49:06
2	\N	Happy_Pets Password Grant Client	v15U0jV75PkCu2yMgH2vjn0wQoGgzOn4A0mKmmXr	users	http://localhost	f	t	f	2021-07-25 15:49:07	2021-07-25 15:49:07
\.


                                                                                                                                                                                                                     3055.dat                                                                                            0000600 0004000 0002000 00000000061 14077304420 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	2021-07-25 15:49:07	2021-07-25 15:49:07
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                               3051.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3075.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3085.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3048.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3073.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3071.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3063.dat                                                                                            0000600 0004000 0002000 00000000152 14077304420 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Comedero Patas	Grandes	2500	9	22500	100	5000	sinfoto.png	1	2021-07-25 15:51:26	2021-07-25 15:51:26
\.


                                                                                                                                                                                                                                                                                                                                                                                                                      3077.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3083.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3069.dat                                                                                            0000600 0004000 0002000 00000000035 14077304420 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	\N	\N
2	1	2	\N	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3067.dat                                                                                            0000600 0004000 0002000 00000000466 14077304420 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	superAdmin	Administrator	2021-07-24 16:28:06	2021-07-24 16:28:06
2	admin	Administrator	2021-07-24 16:28:06	2021-07-24 16:28:06
3	user	Usuario	2021-07-24 16:28:06	2021-07-24 16:28:06
4	hairdress	Peluquera	2021-07-24 16:28:06	2021-07-24 16:28:06
5	customer	Cliente	2021-07-24 16:28:06	2021-07-24 16:28:06
\.


                                                                                                                                                                                                          3065.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3087.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3061.dat                                                                                            0000600 0004000 0002000 00000000005 14077304420 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3059.dat                                                                                            0000600 0004000 0002000 00000000174 14077304420 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Venta	Ventas	2021-07-24 16:28:06	2021-07-24 16:28:06
2	Inventario	Inventario	2021-07-24 16:28:06	2021-07-24 16:28:06
\.


                                                                                                                                                                                                                                                                                                                                                                                                    3047.dat                                                                                            0000600 0004000 0002000 00000000546 14077304420 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1007156489	Danna	Cardona	\N	dk1007156489@gmail.com	\N	$2y$10$qfUbizqJ9TDe6ONNJhBdLesdt7.CjrKDJzfLe.6nR4igd9J/aCUSO	\N	sinfoto.png	t	2021-07-24 16:28:06	2021-07-24 16:28:06
2	1073179018	Christian	Diaz	\N	christian.xd.417@gmail.com	\N	$2y$10$FQW3M7q8e5SiP5gystp59ehMoxzSZlkywlMpodWjvxW/VmoSEXgqm	\N	sinfoto.png	t	2021-07-24 16:28:06	2021-07-24 16:28:06
\.


                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000130616 14077304420 0015374 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17
-- Dumped by pg_dump version 12.7

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

DROP DATABASE "Happy_Pets";
--
-- Name: Happy_Pets; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Happy_Pets" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';


ALTER DATABASE "Happy_Pets" OWNER TO postgres;

\connect "Happy_Pets"

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

--
-- Name: breeds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.breeds (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.breeds OWNER TO postgres;

--
-- Name: breeds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.breeds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.breeds_id_seq OWNER TO postgres;

--
-- Name: breeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.breeds_id_seq OWNED BY public.breeds.id;


--
-- Name: close_days; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.close_days (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.close_days OWNER TO postgres;

--
-- Name: close_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.close_days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.close_days_id_seq OWNER TO postgres;

--
-- Name: close_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.close_days_id_seq OWNED BY public.close_days.id;


--
-- Name: close_months; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.close_months (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.close_months OWNER TO postgres;

--
-- Name: close_months_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.close_months_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.close_months_id_seq OWNER TO postgres;

--
-- Name: close_months_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.close_months_id_seq OWNED BY public.close_months.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: notes_advice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notes_advice (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.notes_advice OWNER TO postgres;

--
-- Name: notes_advice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notes_advice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_advice_id_seq OWNER TO postgres;

--
-- Name: notes_advice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notes_advice_id_seq OWNED BY public.notes_advice.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    user_id bigint,
    client_id bigint NOT NULL,
    name character varying(255),
    scopes text,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_access_tokens OWNER TO postgres;

--
-- Name: oauth_auth_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    user_id bigint NOT NULL,
    client_id bigint NOT NULL,
    scopes text,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_auth_codes OWNER TO postgres;

--
-- Name: oauth_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_clients (
    id bigint NOT NULL,
    user_id bigint,
    name character varying(255) NOT NULL,
    secret character varying(100),
    provider character varying(255),
    redirect text NOT NULL,
    personal_access_client boolean NOT NULL,
    password_client boolean NOT NULL,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_clients OWNER TO postgres;

--
-- Name: oauth_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_clients_id_seq OWNER TO postgres;

--
-- Name: oauth_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;


--
-- Name: oauth_personal_access_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_personal_access_clients (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_personal_access_clients OWNER TO postgres;

--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_personal_access_clients_id_seq OWNER TO postgres;

--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;


--
-- Name: oauth_refresh_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);


ALTER TABLE public.oauth_refresh_tokens OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    price_total integer NOT NULL,
    price_staid integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO postgres;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: outlays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.outlays (
    id bigint NOT NULL,
    outlays_day json NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.outlays OWNER TO postgres;

--
-- Name: outlays_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outlays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outlays_id_seq OWNER TO postgres;

--
-- Name: outlays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outlays_id_seq OWNED BY public.outlays.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: pet_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pet_user (
    id bigint NOT NULL,
    pet_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.pet_user OWNER TO postgres;

--
-- Name: pet_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pet_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pet_user_id_seq OWNER TO postgres;

--
-- Name: pet_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pet_user_id_seq OWNED BY public.pet_user.id;


--
-- Name: pets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pets (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    photo character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.pets OWNER TO postgres;

--
-- Name: pets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pets_id_seq OWNER TO postgres;

--
-- Name: pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    price integer NOT NULL,
    quantity integer NOT NULL,
    total_price integer NOT NULL,
    percentaje integer NOT NULL,
    price_sell integer NOT NULL,
    photo character varying(255) NOT NULL,
    types_products_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: providers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.providers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    cellphone character varying(255) NOT NULL,
    id_orders bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.providers OWNER TO postgres;

--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.providers_id_seq OWNER TO postgres;

--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;


--
-- Name: providers_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.providers_products (
    id bigint NOT NULL,
    providers_id bigint NOT NULL,
    products_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.providers_products OWNER TO postgres;

--
-- Name: providers_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.providers_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.providers_products_id_seq OWNER TO postgres;

--
-- Name: providers_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.providers_products_id_seq OWNED BY public.providers_products.id;


--
-- Name: role_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_user (
    id bigint NOT NULL,
    role_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.role_user OWNER TO postgres;

--
-- Name: role_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_user_id_seq OWNER TO postgres;

--
-- Name: role_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_user_id_seq OWNED BY public.role_user.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: sells; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sells (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    observation character varying(255),
    price integer NOT NULL,
    quantity integer NOT NULL,
    debt boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.sells OWNER TO postgres;

--
-- Name: sells_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sells_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sells_id_seq OWNER TO postgres;

--
-- Name: sells_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sells_id_seq OWNED BY public.sells.id;


--
-- Name: service_hairdresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_hairdresses (
    id bigint NOT NULL,
    observation character varying(255) NOT NULL,
    price integer NOT NULL,
    buns boolean NOT NULL,
    shawl boolean NOT NULL,
    hygienic boolean NOT NULL,
    pets_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.service_hairdresses OWNER TO postgres;

--
-- Name: service_hairdresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_hairdresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_hairdresses_id_seq OWNER TO postgres;

--
-- Name: service_hairdresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_hairdresses_id_seq OWNED BY public.service_hairdresses.id;


--
-- Name: types_pets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types_pets (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.types_pets OWNER TO postgres;

--
-- Name: types_pets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_pets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_pets_id_seq OWNER TO postgres;

--
-- Name: types_pets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_pets_id_seq OWNED BY public.types_pets.id;


--
-- Name: types_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types_products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.types_products OWNER TO postgres;

--
-- Name: types_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_products_id_seq OWNER TO postgres;

--
-- Name: types_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_products_id_seq OWNED BY public.types_products.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    cedula character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    lastname character varying(255),
    cellphone character varying(255),
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    photo character varying(255) NOT NULL,
    estate boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: breeds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds ALTER COLUMN id SET DEFAULT nextval('public.breeds_id_seq'::regclass);


--
-- Name: close_days id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.close_days ALTER COLUMN id SET DEFAULT nextval('public.close_days_id_seq'::regclass);


--
-- Name: close_months id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.close_months ALTER COLUMN id SET DEFAULT nextval('public.close_months_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: notes_advice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notes_advice ALTER COLUMN id SET DEFAULT nextval('public.notes_advice_id_seq'::regclass);


--
-- Name: oauth_clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);


--
-- Name: oauth_personal_access_clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: outlays id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlays ALTER COLUMN id SET DEFAULT nextval('public.outlays_id_seq'::regclass);


--
-- Name: pet_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_user ALTER COLUMN id SET DEFAULT nextval('public.pet_user_id_seq'::regclass);


--
-- Name: pets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: providers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);


--
-- Name: providers_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.providers_products ALTER COLUMN id SET DEFAULT nextval('public.providers_products_id_seq'::regclass);


--
-- Name: role_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user ALTER COLUMN id SET DEFAULT nextval('public.role_user_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: sells id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sells ALTER COLUMN id SET DEFAULT nextval('public.sells_id_seq'::regclass);


--
-- Name: service_hairdresses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_hairdresses ALTER COLUMN id SET DEFAULT nextval('public.service_hairdresses_id_seq'::regclass);


--
-- Name: types_pets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_pets ALTER COLUMN id SET DEFAULT nextval('public.types_pets_id_seq'::regclass);


--
-- Name: types_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_products ALTER COLUMN id SET DEFAULT nextval('public.types_products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: breeds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.breeds (id, created_at, updated_at) FROM stdin;
\.
COPY public.breeds (id, created_at, updated_at) FROM '$$PATH$$/3089.dat';

--
-- Data for Name: close_days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.close_days (id, created_at, updated_at) FROM stdin;
\.
COPY public.close_days (id, created_at, updated_at) FROM '$$PATH$$/3079.dat';

--
-- Data for Name: close_months; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.close_months (id, created_at, updated_at) FROM stdin;
\.
COPY public.close_months (id, created_at, updated_at) FROM '$$PATH$$/3081.dat';

--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.
COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM '$$PATH$$/3057.dat';

--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.
COPY public.migrations (id, migration, batch) FROM '$$PATH$$/3045.dat';

--
-- Data for Name: notes_advice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notes_advice (id, created_at, updated_at) FROM stdin;
\.
COPY public.notes_advice (id, created_at, updated_at) FROM '$$PATH$$/3091.dat';

--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) FROM stdin;
\.
COPY public.oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) FROM '$$PATH$$/3050.dat';

--
-- Data for Name: oauth_auth_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth_auth_codes (id, user_id, client_id, scopes, revoked, expires_at) FROM stdin;
\.
COPY public.oauth_auth_codes (id, user_id, client_id, scopes, revoked, expires_at) FROM '$$PATH$$/3049.dat';

--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth_clients (id, user_id, name, secret, provider, redirect, personal_access_client, password_client, revoked, created_at, updated_at) FROM stdin;
\.
COPY public.oauth_clients (id, user_id, name, secret, provider, redirect, personal_access_client, password_client, revoked, created_at, updated_at) FROM '$$PATH$$/3053.dat';

--
-- Data for Name: oauth_personal_access_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at) FROM stdin;
\.
COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at) FROM '$$PATH$$/3055.dat';

--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at) FROM stdin;
\.
COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at) FROM '$$PATH$$/3051.dat';

--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, price_total, price_staid, created_at, updated_at) FROM stdin;
\.
COPY public.orders (id, price_total, price_staid, created_at, updated_at) FROM '$$PATH$$/3075.dat';

--
-- Data for Name: outlays; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.outlays (id, outlays_day, created_at, updated_at) FROM stdin;
\.
COPY public.outlays (id, outlays_day, created_at, updated_at) FROM '$$PATH$$/3085.dat';

--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.
COPY public.password_resets (email, token, created_at) FROM '$$PATH$$/3048.dat';

--
-- Data for Name: pet_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pet_user (id, pet_id, user_id, created_at, updated_at) FROM stdin;
\.
COPY public.pet_user (id, pet_id, user_id, created_at, updated_at) FROM '$$PATH$$/3073.dat';

--
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pets (id, name, description, photo, created_at, updated_at) FROM stdin;
\.
COPY public.pets (id, name, description, photo, created_at, updated_at) FROM '$$PATH$$/3071.dat';

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, description, price, quantity, total_price, percentaje, price_sell, photo, types_products_id, created_at, updated_at) FROM stdin;
\.
COPY public.products (id, name, description, price, quantity, total_price, percentaje, price_sell, photo, types_products_id, created_at, updated_at) FROM '$$PATH$$/3063.dat';

--
-- Data for Name: providers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.providers (id, name, cellphone, id_orders, created_at, updated_at) FROM stdin;
\.
COPY public.providers (id, name, cellphone, id_orders, created_at, updated_at) FROM '$$PATH$$/3077.dat';

--
-- Data for Name: providers_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.providers_products (id, providers_id, products_id, created_at, updated_at) FROM stdin;
\.
COPY public.providers_products (id, providers_id, products_id, created_at, updated_at) FROM '$$PATH$$/3083.dat';

--
-- Data for Name: role_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_user (id, role_id, user_id, created_at, updated_at) FROM stdin;
\.
COPY public.role_user (id, role_id, user_id, created_at, updated_at) FROM '$$PATH$$/3069.dat';

--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name, description, created_at, updated_at) FROM stdin;
\.
COPY public.roles (id, name, description, created_at, updated_at) FROM '$$PATH$$/3067.dat';

--
-- Data for Name: sells; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sells (id, product_id, observation, price, quantity, debt, created_at, updated_at) FROM stdin;
\.
COPY public.sells (id, product_id, observation, price, quantity, debt, created_at, updated_at) FROM '$$PATH$$/3065.dat';

--
-- Data for Name: service_hairdresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_hairdresses (id, observation, price, buns, shawl, hygienic, pets_id, created_at, updated_at) FROM stdin;
\.
COPY public.service_hairdresses (id, observation, price, buns, shawl, hygienic, pets_id, created_at, updated_at) FROM '$$PATH$$/3087.dat';

--
-- Data for Name: types_pets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types_pets (id, name, description, created_at, updated_at) FROM stdin;
\.
COPY public.types_pets (id, name, description, created_at, updated_at) FROM '$$PATH$$/3061.dat';

--
-- Data for Name: types_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types_products (id, name, description, created_at, updated_at) FROM stdin;
\.
COPY public.types_products (id, name, description, created_at, updated_at) FROM '$$PATH$$/3059.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, cedula, name, lastname, cellphone, email, email_verified_at, password, remember_token, photo, estate, created_at, updated_at) FROM stdin;
\.
COPY public.users (id, cedula, name, lastname, cellphone, email, email_verified_at, password, remember_token, photo, estate, created_at, updated_at) FROM '$$PATH$$/3047.dat';

--
-- Name: breeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.breeds_id_seq', 1, false);


--
-- Name: close_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.close_days_id_seq', 1, false);


--
-- Name: close_months_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.close_months_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 428, true);


--
-- Name: notes_advice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notes_advice_id_seq', 1, false);


--
-- Name: oauth_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth_clients_id_seq', 2, true);


--
-- Name: oauth_personal_access_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- Name: outlays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outlays_id_seq', 1, false);


--
-- Name: pet_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pet_user_id_seq', 1, false);


--
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pets_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 3, true);


--
-- Name: providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.providers_id_seq', 1, false);


--
-- Name: providers_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.providers_products_id_seq', 1, false);


--
-- Name: role_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_user_id_seq', 2, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 5, true);


--
-- Name: sells_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sells_id_seq', 1, false);


--
-- Name: service_hairdresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_hairdresses_id_seq', 1, false);


--
-- Name: types_pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_pets_id_seq', 1, false);


--
-- Name: types_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_products_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: breeds breeds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.breeds
    ADD CONSTRAINT breeds_pkey PRIMARY KEY (id);


--
-- Name: close_days close_days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.close_days
    ADD CONSTRAINT close_days_pkey PRIMARY KEY (id);


--
-- Name: close_months close_months_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.close_months
    ADD CONSTRAINT close_months_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: notes_advice notes_advice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notes_advice
    ADD CONSTRAINT notes_advice_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: oauth_auth_codes oauth_auth_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id);


--
-- Name: oauth_clients oauth_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_personal_access_clients oauth_personal_access_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT oauth_personal_access_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_refresh_tokens oauth_refresh_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: outlays outlays_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlays
    ADD CONSTRAINT outlays_pkey PRIMARY KEY (id);


--
-- Name: pet_user pet_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_user
    ADD CONSTRAINT pet_user_pkey PRIMARY KEY (id);


--
-- Name: pets pets_photo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_photo_unique UNIQUE (photo);


--
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);


--
-- Name: products products_photo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_photo_unique UNIQUE (photo);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- Name: providers_products providers_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.providers_products
    ADD CONSTRAINT providers_products_pkey PRIMARY KEY (id);


--
-- Name: role_user role_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: sells sells_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sells
    ADD CONSTRAINT sells_pkey PRIMARY KEY (id);


--
-- Name: service_hairdresses service_hairdresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_hairdresses
    ADD CONSTRAINT service_hairdresses_pkey PRIMARY KEY (id);


--
-- Name: types_pets types_pets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_pets
    ADD CONSTRAINT types_pets_pkey PRIMARY KEY (id);


--
-- Name: types_products types_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_products
    ADD CONSTRAINT types_products_pkey PRIMARY KEY (id);


--
-- Name: users users_cedula_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cedula_unique UNIQUE (cedula);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);


--
-- Name: oauth_auth_codes_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_auth_codes_user_id_index ON public.oauth_auth_codes USING btree (user_id);


--
-- Name: oauth_clients_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);


--
-- Name: oauth_refresh_tokens_access_token_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_refresh_tokens_access_token_id_index ON public.oauth_refresh_tokens USING btree (access_token_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: pet_user pet_user_pet_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_user
    ADD CONSTRAINT pet_user_pet_id_foreign FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- Name: pet_user pet_user_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_user
    ADD CONSTRAINT pet_user_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: products products_types_products_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_types_products_id_foreign FOREIGN KEY (types_products_id) REFERENCES public.types_products(id) ON DELETE CASCADE;


--
-- Name: providers providers_id_orders_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_id_orders_foreign FOREIGN KEY (id_orders) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: providers_products providers_products_products_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.providers_products
    ADD CONSTRAINT providers_products_products_id_foreign FOREIGN KEY (products_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: providers_products providers_products_providers_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.providers_products
    ADD CONSTRAINT providers_products_providers_id_foreign FOREIGN KEY (providers_id) REFERENCES public.providers(id) ON DELETE CASCADE;


--
-- Name: role_user role_user_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: role_user role_user_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: sells sells_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sells
    ADD CONSTRAINT sells_product_id_foreign FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: service_hairdresses service_hairdresses_pets_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_hairdresses
    ADD CONSTRAINT service_hairdresses_pets_id_foreign FOREIGN KEY (pets_id) REFERENCES public.pets(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  