PGDMP         -                z            codebook_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17342    codebook_db    DATABASE     u   CREATE DATABASE codebook_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE codebook_db;
                postgres    false                        2615    17343    in_house    SCHEMA        CREATE SCHEMA in_house;
    DROP SCHEMA in_house;
                postgres    false            �            1259    17344 
   auth_group    TABLE     h   CREATE TABLE in_house.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
     DROP TABLE in_house.auth_group;
       in_house         heap    postgres    false    8            �            1259    17347    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE in_house.auth_group_id_seq;
       in_house          postgres    false    8    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE in_house.auth_group_id_seq OWNED BY in_house.auth_group.id;
          in_house          postgres    false    204            �            1259    17349    auth_group_permissions    TABLE     �   CREATE TABLE in_house.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 ,   DROP TABLE in_house.auth_group_permissions;
       in_house         heap    postgres    false    8            �            1259    17352    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE in_house.auth_group_permissions_id_seq;
       in_house          postgres    false    205    8            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE in_house.auth_group_permissions_id_seq OWNED BY in_house.auth_group_permissions.id;
          in_house          postgres    false    206            �            1259    17354    auth_permission    TABLE     �   CREATE TABLE in_house.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 %   DROP TABLE in_house.auth_permission;
       in_house         heap    postgres    false    8            �            1259    17357    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.auth_permission_id_seq;
       in_house          postgres    false    8    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.auth_permission_id_seq OWNED BY in_house.auth_permission.id;
          in_house          postgres    false    208            �            1259    17359 	   auth_user    TABLE     �  CREATE TABLE in_house.auth_user (
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
    DROP TABLE in_house.auth_user;
       in_house         heap    postgres    false    8            �            1259    17365    auth_user_groups    TABLE     �   CREATE TABLE in_house.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 &   DROP TABLE in_house.auth_user_groups;
       in_house         heap    postgres    false    8            �            1259    17368    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.auth_user_groups_id_seq;
       in_house          postgres    false    210    8            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.auth_user_groups_id_seq OWNED BY in_house.auth_user_groups.id;
          in_house          postgres    false    211            �            1259    17370    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE in_house.auth_user_id_seq;
       in_house          postgres    false    209    8            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE in_house.auth_user_id_seq OWNED BY in_house.auth_user.id;
          in_house          postgres    false    212            �            1259    17372    auth_user_user_permissions    TABLE     �   CREATE TABLE in_house.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 0   DROP TABLE in_house.auth_user_user_permissions;
       in_house         heap    postgres    false    8            �            1259    17375 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.auth_user_user_permissions_id_seq;
       in_house          postgres    false    8    213            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.auth_user_user_permissions_id_seq OWNED BY in_house.auth_user_user_permissions.id;
          in_house          postgres    false    214            �            1259    17377    django_admin_log    TABLE     �  CREATE TABLE in_house.django_admin_log (
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
 &   DROP TABLE in_house.django_admin_log;
       in_house         heap    postgres    false    8            �            1259    17384    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.django_admin_log_id_seq;
       in_house          postgres    false    215    8            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.django_admin_log_id_seq OWNED BY in_house.django_admin_log.id;
          in_house          postgres    false    216            �            1259    17386    django_content_type    TABLE     �   CREATE TABLE in_house.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 )   DROP TABLE in_house.django_content_type;
       in_house         heap    postgres    false    8            �            1259    17389    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.django_content_type_id_seq;
       in_house          postgres    false    8    217            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.django_content_type_id_seq OWNED BY in_house.django_content_type.id;
          in_house          postgres    false    218            �            1259    17391    django_migrations    TABLE     �   CREATE TABLE in_house.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 '   DROP TABLE in_house.django_migrations;
       in_house         heap    postgres    false    8            �            1259    17397    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.django_migrations_id_seq;
       in_house          postgres    false    8    219            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.django_migrations_id_seq OWNED BY in_house.django_migrations.id;
          in_house          postgres    false    220            �            1259    17399    django_session    TABLE     �   CREATE TABLE in_house.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE in_house.django_session;
       in_house         heap    postgres    false    8            �            1259    17405    notes_dm    TABLE     �   CREATE TABLE in_house.notes_dm (
    name character varying(200) NOT NULL,
    description text NOT NULL,
    created_at date NOT NULL,
    id integer NOT NULL
);
    DROP TABLE in_house.notes_dm;
       in_house         heap    postgres    false    8            �            1259    17411    notes_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.notes_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE in_house.notes_dm_id_seq;
       in_house          postgres    false    222    8            �           0    0    notes_dm_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE in_house.notes_dm_id_seq OWNED BY in_house.notes_dm.id;
          in_house          postgres    false    223            �            1259    17413    post_category_tbl_dm    TABLE     �   CREATE TABLE in_house.post_category_tbl_dm (
    id integer NOT NULL,
    name character varying(200),
    description text,
    status integer NOT NULL,
    created_at date NOT NULL
);
 *   DROP TABLE in_house.post_category_tbl_dm;
       in_house         heap    postgres    false    8            �            1259    17419    post_category_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.post_category_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.post_category_tbl_dm_id_seq;
       in_house          postgres    false    8    224            �           0    0    post_category_tbl_dm_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.post_category_tbl_dm_id_seq OWNED BY in_house.post_category_tbl_dm.id;
          in_house          postgres    false    225            �            1259    17421    post_tbl_dm    TABLE     q  CREATE TABLE in_house.post_tbl_dm (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    summary text NOT NULL,
    post_image character varying(100),
    is_publish integer NOT NULL,
    publish_date date,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    post_category_id integer NOT NULL
);
 !   DROP TABLE in_house.post_tbl_dm;
       in_house         heap    postgres    false    8            �            1259    17427    post_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.post_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE in_house.post_tbl_dm_id_seq;
       in_house          postgres    false    8    226            �           0    0    post_tbl_dm_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE in_house.post_tbl_dm_id_seq OWNED BY in_house.post_tbl_dm.id;
          in_house          postgres    false    227            �            1259    17429    resume_educations    TABLE     �  CREATE TABLE in_house.resume_educations (
    id integer NOT NULL,
    course_short_name character varying(100),
    course_full_name character varying(100),
    institute_short_name character varying(50),
    institute_full_name character varying(100),
    university character varying(100),
    start_year smallint NOT NULL,
    end_year smallint NOT NULL,
    duration character varying(100),
    created_at date NOT NULL,
    is_school integer NOT NULL,
    profile_id integer NOT NULL,
    CONSTRAINT resume_educations_end_year_check CHECK ((end_year >= 0)),
    CONSTRAINT resume_educations_start_year_check CHECK ((start_year >= 0))
);
 '   DROP TABLE in_house.resume_educations;
       in_house         heap    postgres    false    8            �            1259    17437    resume_educations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_educations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_educations_id_seq;
       in_house          postgres    false    228    8            �           0    0    resume_educations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_educations_id_seq OWNED BY in_house.resume_educations.id;
          in_house          postgres    false    229            �            1259    17439    resume_employment    TABLE     �  CREATE TABLE in_house.resume_employment (
    id integer NOT NULL,
    "position" character varying(120) NOT NULL,
    employer character varying(120) NOT NULL,
    location character varying(120),
    summary text NOT NULL,
    start_date date NOT NULL,
    end_date date,
    is_current_org integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    profile_id integer NOT NULL
);
 '   DROP TABLE in_house.resume_employment;
       in_house         heap    postgres    false    8            �            1259    17445    resume_employment_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_employment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_employment_id_seq;
       in_house          postgres    false    8    230            �           0    0    resume_employment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_employment_id_seq OWNED BY in_house.resume_employment.id;
          in_house          postgres    false    231            �            1259    17447    resume_profile    TABLE     �  CREATE TABLE in_house.resume_profile (
    id integer NOT NULL,
    first_name character varying(120) NOT NULL,
    middle_name character varying(120) NOT NULL,
    last_name character varying(120) NOT NULL,
    profile_title character varying(120) NOT NULL,
    brief_summary text NOT NULL,
    email character varying(50) NOT NULL,
    mobile_number character varying(15) NOT NULL,
    profile_pic character varying(100) NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    data json
);
 $   DROP TABLE in_house.resume_profile;
       in_house         heap    postgres    false    8            �            1259    17453    resume_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.resume_profile_id_seq;
       in_house          postgres    false    8    232            �           0    0    resume_profile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.resume_profile_id_seq OWNED BY in_house.resume_profile.id;
          in_house          postgres    false    233            �            1259    17455    resume_projects    TABLE     �  CREATE TABLE in_house.resume_projects (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    description text NOT NULL,
    role_responsibility text NOT NULL,
    team_size smallint NOT NULL,
    start_date date NOT NULL,
    end_date date,
    created_at date NOT NULL,
    employment_id integer NOT NULL,
    tech_stack json,
    CONSTRAINT resume_projects_team_size_check CHECK ((team_size >= 0))
);
 %   DROP TABLE in_house.resume_projects;
       in_house         heap    postgres    false    8            �            1259    17462    resume_projects_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.resume_projects_id_seq;
       in_house          postgres    false    8    234            �           0    0    resume_projects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.resume_projects_id_seq OWNED BY in_house.resume_projects.id;
          in_house          postgres    false    235            �            1259    17464    resume_projects_technology    TABLE     �   CREATE TABLE in_house.resume_projects_technology (
    id integer NOT NULL,
    projects_id integer NOT NULL,
    technologies_id integer NOT NULL
);
 0   DROP TABLE in_house.resume_projects_technology;
       in_house         heap    postgres    false    8            �            1259    17467 !   resume_projects_technology_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_technology_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_projects_technology_id_seq;
       in_house          postgres    false    8    236            �           0    0 !   resume_projects_technology_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_projects_technology_id_seq OWNED BY in_house.resume_projects_technology.id;
          in_house          postgres    false    237            �            1259    17469    resume_technologies    TABLE     )  CREATE TABLE in_house.resume_technologies (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    version character varying(120) NOT NULL,
    rate smallint NOT NULL,
    is_other integer NOT NULL,
    category_id integer NOT NULL,
    tech_order smallint,
    status smallint
);
 )   DROP TABLE in_house.resume_technologies;
       in_house         heap    postgres    false    8            �            1259    17472    resume_technologies_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_technologies_id_seq;
       in_house          postgres    false    8    238            �           0    0    resume_technologies_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_technologies_id_seq OWNED BY in_house.resume_technologies.id;
          in_house          postgres    false    239            �            1259    17474    resume_technology_category    TABLE     �   CREATE TABLE in_house.resume_technology_category (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    status integer NOT NULL,
    created_at date NOT NULL,
    cat_order smallint
);
 0   DROP TABLE in_house.resume_technology_category;
       in_house         heap    postgres    false    8            �            1259    17477 !   resume_technology_category_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technology_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_technology_category_id_seq;
       in_house          postgres    false    8    240            �           0    0 !   resume_technology_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_technology_category_id_seq OWNED BY in_house.resume_technology_category.id;
          in_house          postgres    false    241            �            1259    17479    subject_tbl_dm    TABLE     r  CREATE TABLE in_house.subject_tbl_dm (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    created_at date NOT NULL,
    updated_at date NOT NULL,
    slug character varying(120) NOT NULL,
    status integer NOT NULL,
    is_publish boolean NOT NULL,
    icon character varying(100)
);
 $   DROP TABLE in_house.subject_tbl_dm;
       in_house         heap    postgres    false    8            �            1259    17485    subject_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.subject_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.subject_tbl_dm_id_seq;
       in_house          postgres    false    8    242            �           0    0    subject_tbl_dm_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.subject_tbl_dm_id_seq OWNED BY in_house.subject_tbl_dm.id;
          in_house          postgres    false    243            �            1259    17487    topic_section_tbl    TABLE     K  CREATE TABLE in_house.topic_section_tbl (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    section_order integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    topic_id integer NOT NULL,
    status integer NOT NULL,
    is_publish boolean NOT NULL
);
 '   DROP TABLE in_house.topic_section_tbl;
       in_house         heap    postgres    false    8            �            1259    17493    topic_section_tbl_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topic_section_tbl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.topic_section_tbl_id_seq;
       in_house          postgres    false    8    244            �           0    0    topic_section_tbl_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.topic_section_tbl_id_seq OWNED BY in_house.topic_section_tbl.id;
          in_house          postgres    false    245            �            1259    17495    topics_tbl_dm    TABLE     �  CREATE TABLE in_house.topics_tbl_dm (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    topic_order integer NOT NULL,
    image character varying(100),
    created_at date NOT NULL,
    updated_at date NOT NULL,
    subject_id integer NOT NULL,
    slug character varying(120) NOT NULL,
    status integer NOT NULL,
    is_publish boolean NOT NULL
);
 #   DROP TABLE in_house.topics_tbl_dm;
       in_house         heap    postgres    false    8            �            1259    17501    topics_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topics_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE in_house.topics_tbl_dm_id_seq;
       in_house          postgres    false    8    246            �           0    0    topics_tbl_dm_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE in_house.topics_tbl_dm_id_seq OWNED BY in_house.topics_tbl_dm.id;
          in_house          postgres    false    247            �            1259    17503    web_access_log    TABLE       CREATE TABLE in_house.web_access_log (
    id bigint NOT NULL,
    ip_address character varying,
    post_id integer,
    topic_id integer,
    city character varying,
    state character varying,
    country character varying,
    created_at timestamp without time zone
);
 $   DROP TABLE in_house.web_access_log;
       in_house         heap    postgres    false    8            �           0    0     COLUMN web_access_log.ip_address    COMMENT     F   COMMENT ON COLUMN in_house.web_access_log.ip_address IS 'ip_address';
          in_house          postgres    false    248            �           0    0    COLUMN web_access_log.city    COMMENT     :   COMMENT ON COLUMN in_house.web_access_log.city IS 'city';
          in_house          postgres    false    248            �            1259    17509    web_access_log_id_seq    SEQUENCE     �   ALTER TABLE in_house.web_access_log ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME in_house.web_access_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            in_house          postgres    false    248    8            �           2604    17511    auth_group id    DEFAULT     r   ALTER TABLE ONLY in_house.auth_group ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_id_seq'::regclass);
 >   ALTER TABLE in_house.auth_group ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    204    203            �           2604    17512    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_permissions_id_seq'::regclass);
 J   ALTER TABLE in_house.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    206    205            �           2604    17513    auth_permission id    DEFAULT     |   ALTER TABLE ONLY in_house.auth_permission ALTER COLUMN id SET DEFAULT nextval('in_house.auth_permission_id_seq'::regclass);
 C   ALTER TABLE in_house.auth_permission ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    208    207            �           2604    17514    auth_user id    DEFAULT     p   ALTER TABLE ONLY in_house.auth_user ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_id_seq'::regclass);
 =   ALTER TABLE in_house.auth_user ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    212    209            �           2604    17515    auth_user_groups id    DEFAULT     ~   ALTER TABLE ONLY in_house.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_groups_id_seq'::regclass);
 D   ALTER TABLE in_house.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    211    210            �           2604    17516    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_user_permissions_id_seq'::regclass);
 N   ALTER TABLE in_house.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    214    213            �           2604    17517    django_admin_log id    DEFAULT     ~   ALTER TABLE ONLY in_house.django_admin_log ALTER COLUMN id SET DEFAULT nextval('in_house.django_admin_log_id_seq'::regclass);
 D   ALTER TABLE in_house.django_admin_log ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    216    215            �           2604    17518    django_content_type id    DEFAULT     �   ALTER TABLE ONLY in_house.django_content_type ALTER COLUMN id SET DEFAULT nextval('in_house.django_content_type_id_seq'::regclass);
 G   ALTER TABLE in_house.django_content_type ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    218    217            �           2604    17519    django_migrations id    DEFAULT     �   ALTER TABLE ONLY in_house.django_migrations ALTER COLUMN id SET DEFAULT nextval('in_house.django_migrations_id_seq'::regclass);
 E   ALTER TABLE in_house.django_migrations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    220    219            �           2604    17520    notes_dm id    DEFAULT     n   ALTER TABLE ONLY in_house.notes_dm ALTER COLUMN id SET DEFAULT nextval('in_house.notes_dm_id_seq'::regclass);
 <   ALTER TABLE in_house.notes_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    223    222            �           2604    17521    post_category_tbl_dm id    DEFAULT     �   ALTER TABLE ONLY in_house.post_category_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.post_category_tbl_dm_id_seq'::regclass);
 H   ALTER TABLE in_house.post_category_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    225    224            �           2604    17522    post_tbl_dm id    DEFAULT     t   ALTER TABLE ONLY in_house.post_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.post_tbl_dm_id_seq'::regclass);
 ?   ALTER TABLE in_house.post_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    227    226            �           2604    17523    resume_educations id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_educations ALTER COLUMN id SET DEFAULT nextval('in_house.resume_educations_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_educations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    229    228            �           2604    17524    resume_employment id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_employment ALTER COLUMN id SET DEFAULT nextval('in_house.resume_employment_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_employment ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    231    230            �           2604    17525    resume_profile id    DEFAULT     z   ALTER TABLE ONLY in_house.resume_profile ALTER COLUMN id SET DEFAULT nextval('in_house.resume_profile_id_seq'::regclass);
 B   ALTER TABLE in_house.resume_profile ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    233    232            �           2604    17526    resume_projects id    DEFAULT     |   ALTER TABLE ONLY in_house.resume_projects ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_id_seq'::regclass);
 C   ALTER TABLE in_house.resume_projects ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    235    234            �           2604    17527    resume_projects_technology id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_projects_technology ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_technology_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_projects_technology ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    237    236            �           2604    17528    resume_technologies id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technologies ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technologies_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_technologies ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    239    238            �           2604    17529    resume_technology_category id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technology_category ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technology_category_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_technology_category ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    241    240            �           2604    17530    subject_tbl_dm id    DEFAULT     z   ALTER TABLE ONLY in_house.subject_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.subject_tbl_dm_id_seq'::regclass);
 B   ALTER TABLE in_house.subject_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    243    242            �           2604    17531    topic_section_tbl id    DEFAULT     �   ALTER TABLE ONLY in_house.topic_section_tbl ALTER COLUMN id SET DEFAULT nextval('in_house.topic_section_tbl_id_seq'::regclass);
 E   ALTER TABLE in_house.topic_section_tbl ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    245    244            �           2604    17532    topics_tbl_dm id    DEFAULT     x   ALTER TABLE ONLY in_house.topics_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.topics_tbl_dm_id_seq'::regclass);
 A   ALTER TABLE in_house.topics_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    247    246            �          0    17344 
   auth_group 
   TABLE DATA           0   COPY in_house.auth_group (id, name) FROM stdin;
    in_house          postgres    false    203   R3      �          0    17349    auth_group_permissions 
   TABLE DATA           O   COPY in_house.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    in_house          postgres    false    205   o3      �          0    17354    auth_permission 
   TABLE DATA           P   COPY in_house.auth_permission (id, name, content_type_id, codename) FROM stdin;
    in_house          postgres    false    207   �3      �          0    17359 	   auth_user 
   TABLE DATA           �   COPY in_house.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    in_house          postgres    false    209   ~7      �          0    17365    auth_user_groups 
   TABLE DATA           C   COPY in_house.auth_user_groups (id, user_id, group_id) FROM stdin;
    in_house          postgres    false    210   �8      �          0    17372    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    213   �8      �          0    17377    django_admin_log 
   TABLE DATA           �   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    215   �8      �          0    17386    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    217   2r      �          0    17391    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    219   Ds      �          0    17399    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    221   �u      �          0    17405    notes_dm 
   TABLE DATA           G   COPY in_house.notes_dm (name, description, created_at, id) FROM stdin;
    in_house          postgres    false    222   �w      �          0    17413    post_category_tbl_dm 
   TABLE DATA           [   COPY in_house.post_category_tbl_dm (id, name, description, status, created_at) FROM stdin;
    in_house          postgres    false    224   y      �          0    17421    post_tbl_dm 
   TABLE DATA           �   COPY in_house.post_tbl_dm (id, title, slug, summary, post_image, is_publish, publish_date, created_at, updated_at, post_category_id) FROM stdin;
    in_house          postgres    false    226   1y      �          0    17429    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    228   Ny      �          0    17439    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    230   �y      �          0    17447    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, created_at, updated_at, data) FROM stdin;
    in_house          postgres    false    232   4|      �          0    17455    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id, tech_stack) FROM stdin;
    in_house          postgres    false    234   C      �          0    17464    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    236   �      �          0    17469    resume_technologies 
   TABLE DATA           s   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id, tech_order, status) FROM stdin;
    in_house          postgres    false    238   :�      �          0    17474    resume_technology_category 
   TABLE DATA           _   COPY in_house.resume_technology_category (id, name, status, created_at, cat_order) FROM stdin;
    in_house          postgres    false    240   n�      �          0    17479    subject_tbl_dm 
   TABLE DATA           �   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish, icon) FROM stdin;
    in_house          postgres    false    242   ��      �          0    17487    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    244   ;�      �          0    17495    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    246   �      �          0    17503    web_access_log 
   TABLE DATA           o   COPY in_house.web_access_log (id, ip_address, post_id, topic_id, city, state, country, created_at) FROM stdin;
    in_house          postgres    false    248   ?7      �           0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    204            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    206            �           0    0    auth_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 100, true);
          in_house          postgres    false    208            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    211            �           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 2, true);
          in_house          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 6, true);
          in_house          postgres    false    214            �           0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 910, true);
          in_house          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.django_content_type_id_seq', 25, true);
          in_house          postgres    false    218            �           0    0    django_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_migrations_id_seq', 32, true);
          in_house          postgres    false    220            �           0    0    notes_dm_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('in_house.notes_dm_id_seq', 2, true);
          in_house          postgres    false    223            �           0    0    post_category_tbl_dm_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.post_category_tbl_dm_id_seq', 1, false);
          in_house          postgres    false    225            �           0    0    post_tbl_dm_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('in_house.post_tbl_dm_id_seq', 1, false);
          in_house          postgres    false    227            �           0    0    resume_educations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.resume_educations_id_seq', 2, true);
          in_house          postgres    false    229            �           0    0    resume_employment_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.resume_employment_id_seq', 5, true);
          in_house          postgres    false    231            �           0    0    resume_profile_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.resume_profile_id_seq', 3, true);
          in_house          postgres    false    233            �           0    0    resume_projects_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('in_house.resume_projects_id_seq', 9, true);
          in_house          postgres    false    235            �           0    0 !   resume_projects_technology_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_projects_technology_id_seq', 1, false);
          in_house          postgres    false    237            �           0    0    resume_technologies_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_technologies_id_seq', 21, true);
          in_house          postgres    false    239            �           0    0 !   resume_technology_category_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.resume_technology_category_id_seq', 8, true);
          in_house          postgres    false    241            �           0    0    subject_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.subject_tbl_dm_id_seq', 7, true);
          in_house          postgres    false    243            �           0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 92, true);
          in_house          postgres    false    245            �           0    0    topics_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.topics_tbl_dm_id_seq', 29, true);
          in_house          postgres    false    247            �           0    0    web_access_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('in_house.web_access_log_id_seq', 30, true);
          in_house          postgres    false    249            �           2606    17540    auth_group auth_group_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 J   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_name_key;
       in_house            postgres    false    203            �           2606    17542 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 ~   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       in_house            postgres    false    205    205            �           2606    17544 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       in_house            postgres    false    205            �           2606    17546    auth_group auth_group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_pkey;
       in_house            postgres    false    203            �           2606    17548 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 r   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       in_house            postgres    false    207    207            �           2606    17550 $   auth_permission auth_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_pkey;
       in_house            postgres    false    207            �           2606    17552 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       in_house            postgres    false    210            �           2606    17554 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       in_house            postgres    false    210    210            �           2606    17556    auth_user auth_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_pkey;
       in_house            postgres    false    209            �           2606    17558 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       in_house            postgres    false    213            �           2606    17560 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       in_house            postgres    false    213    213            �           2606    17562     auth_user auth_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_username_key;
       in_house            postgres    false    209            �           2606    17564 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       in_house            postgres    false    215            �           2606    17566 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       in_house            postgres    false    217    217            �           2606    17568 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_pkey;
       in_house            postgres    false    217            �           2606    17570 (   django_migrations django_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.django_migrations DROP CONSTRAINT django_migrations_pkey;
       in_house            postgres    false    219            �           2606    17572 "   django_session django_session_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY in_house.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 N   ALTER TABLE ONLY in_house.django_session DROP CONSTRAINT django_session_pkey;
       in_house            postgres    false    221            �           2606    17574    notes_dm notes_dm_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY in_house.notes_dm
    ADD CONSTRAINT notes_dm_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY in_house.notes_dm DROP CONSTRAINT notes_dm_pkey;
       in_house            postgres    false    222            �           2606    17576 .   post_category_tbl_dm post_category_tbl_dm_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.post_category_tbl_dm
    ADD CONSTRAINT post_category_tbl_dm_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.post_category_tbl_dm DROP CONSTRAINT post_category_tbl_dm_pkey;
       in_house            postgres    false    224            �           2606    17578    post_tbl_dm post_tbl_dm_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY in_house.post_tbl_dm
    ADD CONSTRAINT post_tbl_dm_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY in_house.post_tbl_dm DROP CONSTRAINT post_tbl_dm_pkey;
       in_house            postgres    false    226            �           2606    17580 (   resume_educations resume_educations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_pkey;
       in_house            postgres    false    228            �           2606    17582 (   resume_employment resume_employment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_pkey;
       in_house            postgres    false    230            �           2606    17584 "   resume_profile resume_profile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.resume_profile
    ADD CONSTRAINT resume_profile_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.resume_profile DROP CONSTRAINT resume_profile_pkey;
       in_house            postgres    false    232            �           2606    17586 $   resume_projects resume_projects_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_pkey;
       in_house            postgres    false    234            �           2606    17588 Z   resume_projects_technology resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq UNIQUE (projects_id, technologies_id);
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq;
       in_house            postgres    false    236    236            �           2606    17590 :   resume_projects_technology resume_projects_technology_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technology_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technology_pkey;
       in_house            postgres    false    236            �           2606    17592 ,   resume_technologies resume_technologies_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_pkey;
       in_house            postgres    false    238            �           2606    17594 :   resume_technology_category resume_technology_category_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_technology_category
    ADD CONSTRAINT resume_technology_category_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_technology_category DROP CONSTRAINT resume_technology_category_pkey;
       in_house            postgres    false    240            �           2606    17596 "   subject_tbl_dm subject_tbl_dm_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_pkey;
       in_house            postgres    false    242            �           2606    17598 0   subject_tbl_dm subject_tbl_dm_slug_4a3612d0_uniq 
   CONSTRAINT     m   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq UNIQUE (slug);
 \   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq;
       in_house            postgres    false    242            �           2606    17600 (   topic_section_tbl topic_section_tbl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_pkey;
       in_house            postgres    false    244            �           2606    17602     topics_tbl_dm topics_tbl_dm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_pkey;
       in_house            postgres    false    246            �           1259    17603    auth_group_name_a6ea08ec_like    INDEX     j   CREATE INDEX auth_group_name_a6ea08ec_like ON in_house.auth_group USING btree (name varchar_pattern_ops);
 3   DROP INDEX in_house.auth_group_name_a6ea08ec_like;
       in_house            postgres    false    203            �           1259    17604 (   auth_group_permissions_group_id_b120cbf9    INDEX     q   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON in_house.auth_group_permissions USING btree (group_id);
 >   DROP INDEX in_house.auth_group_permissions_group_id_b120cbf9;
       in_house            postgres    false    205            �           1259    17605 -   auth_group_permissions_permission_id_84c5c92e    INDEX     {   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON in_house.auth_group_permissions USING btree (permission_id);
 C   DROP INDEX in_house.auth_group_permissions_permission_id_84c5c92e;
       in_house            postgres    false    205            �           1259    17606 (   auth_permission_content_type_id_2f476e4b    INDEX     q   CREATE INDEX auth_permission_content_type_id_2f476e4b ON in_house.auth_permission USING btree (content_type_id);
 >   DROP INDEX in_house.auth_permission_content_type_id_2f476e4b;
       in_house            postgres    false    207            �           1259    17607 "   auth_user_groups_group_id_97559544    INDEX     e   CREATE INDEX auth_user_groups_group_id_97559544 ON in_house.auth_user_groups USING btree (group_id);
 8   DROP INDEX in_house.auth_user_groups_group_id_97559544;
       in_house            postgres    false    210            �           1259    17608 !   auth_user_groups_user_id_6a12ed8b    INDEX     c   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON in_house.auth_user_groups USING btree (user_id);
 7   DROP INDEX in_house.auth_user_groups_user_id_6a12ed8b;
       in_house            postgres    false    210            �           1259    17609 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON in_house.auth_user_user_permissions USING btree (permission_id);
 G   DROP INDEX in_house.auth_user_user_permissions_permission_id_1fbb5f2c;
       in_house            postgres    false    213            �           1259    17610 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     w   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON in_house.auth_user_user_permissions USING btree (user_id);
 A   DROP INDEX in_house.auth_user_user_permissions_user_id_a95ead1b;
       in_house            postgres    false    213            �           1259    17611     auth_user_username_6821ab7c_like    INDEX     p   CREATE INDEX auth_user_username_6821ab7c_like ON in_house.auth_user USING btree (username varchar_pattern_ops);
 6   DROP INDEX in_house.auth_user_username_6821ab7c_like;
       in_house            postgres    false    209            �           1259    17612 )   django_admin_log_content_type_id_c4bce8eb    INDEX     s   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON in_house.django_admin_log USING btree (content_type_id);
 ?   DROP INDEX in_house.django_admin_log_content_type_id_c4bce8eb;
       in_house            postgres    false    215            �           1259    17613 !   django_admin_log_user_id_c564eba6    INDEX     c   CREATE INDEX django_admin_log_user_id_c564eba6 ON in_house.django_admin_log USING btree (user_id);
 7   DROP INDEX in_house.django_admin_log_user_id_c564eba6;
       in_house            postgres    false    215            �           1259    17614 #   django_session_expire_date_a5c62663    INDEX     g   CREATE INDEX django_session_expire_date_a5c62663 ON in_house.django_session USING btree (expire_date);
 9   DROP INDEX in_house.django_session_expire_date_a5c62663;
       in_house            postgres    false    221            �           1259    17615 (   django_session_session_key_c0390e0f_like    INDEX     �   CREATE INDEX django_session_session_key_c0390e0f_like ON in_house.django_session USING btree (session_key varchar_pattern_ops);
 >   DROP INDEX in_house.django_session_session_key_c0390e0f_like;
       in_house            postgres    false    221            �           1259    17616 %   post_tbl_dm_post_category_id_19d8f7e9    INDEX     k   CREATE INDEX post_tbl_dm_post_category_id_19d8f7e9 ON in_house.post_tbl_dm USING btree (post_category_id);
 ;   DROP INDEX in_house.post_tbl_dm_post_category_id_19d8f7e9;
       in_house            postgres    false    226            �           1259    17617    post_tbl_dm_slug_a6bb306d    INDEX     S   CREATE INDEX post_tbl_dm_slug_a6bb306d ON in_house.post_tbl_dm USING btree (slug);
 /   DROP INDEX in_house.post_tbl_dm_slug_a6bb306d;
       in_house            postgres    false    226            �           1259    17618    post_tbl_dm_slug_a6bb306d_like    INDEX     l   CREATE INDEX post_tbl_dm_slug_a6bb306d_like ON in_house.post_tbl_dm USING btree (slug varchar_pattern_ops);
 4   DROP INDEX in_house.post_tbl_dm_slug_a6bb306d_like;
       in_house            postgres    false    226            �           1259    17619 %   resume_educations_profile_id_363d9f96    INDEX     k   CREATE INDEX resume_educations_profile_id_363d9f96 ON in_house.resume_educations USING btree (profile_id);
 ;   DROP INDEX in_house.resume_educations_profile_id_363d9f96;
       in_house            postgres    false    228            �           1259    17620 %   resume_employment_profile_id_a7423269    INDEX     k   CREATE INDEX resume_employment_profile_id_a7423269 ON in_house.resume_employment USING btree (profile_id);
 ;   DROP INDEX in_house.resume_employment_profile_id_a7423269;
       in_house            postgres    false    230            �           1259    17621 &   resume_projects_employment_id_574c5bf6    INDEX     m   CREATE INDEX resume_projects_employment_id_574c5bf6 ON in_house.resume_projects USING btree (employment_id);
 <   DROP INDEX in_house.resume_projects_employment_id_574c5bf6;
       in_house            postgres    false    234            �           1259    17622 /   resume_projects_technology_projects_id_2f5c3d10    INDEX        CREATE INDEX resume_projects_technology_projects_id_2f5c3d10 ON in_house.resume_projects_technology USING btree (projects_id);
 E   DROP INDEX in_house.resume_projects_technology_projects_id_2f5c3d10;
       in_house            postgres    false    236            �           1259    17623 3   resume_projects_technology_technologies_id_2ca2768d    INDEX     �   CREATE INDEX resume_projects_technology_technologies_id_2ca2768d ON in_house.resume_projects_technology USING btree (technologies_id);
 I   DROP INDEX in_house.resume_projects_technology_technologies_id_2ca2768d;
       in_house            postgres    false    236            �           1259    17624 (   resume_technologies_category_id_147f19e0    INDEX     q   CREATE INDEX resume_technologies_category_id_147f19e0 ON in_house.resume_technologies USING btree (category_id);
 >   DROP INDEX in_house.resume_technologies_category_id_147f19e0;
       in_house            postgres    false    238            �           1259    17625 !   subject_tbl_dm_slug_4a3612d0_like    INDEX     r   CREATE INDEX subject_tbl_dm_slug_4a3612d0_like ON in_house.subject_tbl_dm USING btree (slug varchar_pattern_ops);
 7   DROP INDEX in_house.subject_tbl_dm_slug_4a3612d0_like;
       in_house            postgres    false    242            �           1259    17626 #   topic_section_tbl_topic_id_887e7a85    INDEX     g   CREATE INDEX topic_section_tbl_topic_id_887e7a85 ON in_house.topic_section_tbl USING btree (topic_id);
 9   DROP INDEX in_house.topic_section_tbl_topic_id_887e7a85;
       in_house            postgres    false    244            �           1259    17627    topics_tbl_dm_slug_6453441b    INDEX     W   CREATE INDEX topics_tbl_dm_slug_6453441b ON in_house.topics_tbl_dm USING btree (slug);
 1   DROP INDEX in_house.topics_tbl_dm_slug_6453441b;
       in_house            postgres    false    246            �           1259    17628     topics_tbl_dm_slug_6453441b_like    INDEX     p   CREATE INDEX topics_tbl_dm_slug_6453441b_like ON in_house.topics_tbl_dm USING btree (slug varchar_pattern_ops);
 6   DROP INDEX in_house.topics_tbl_dm_slug_6453441b_like;
       in_house            postgres    false    246            �           1259    17629 !   topics_tbl_dm_subject_id_9e370280    INDEX     c   CREATE INDEX topics_tbl_dm_subject_id_9e370280 ON in_house.topics_tbl_dm USING btree (subject_id);
 7   DROP INDEX in_house.topics_tbl_dm_subject_id_9e370280;
       in_house            postgres    false    246            �           2606    17630 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       in_house          postgres    false    205    2989    207            �           2606    17635 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       in_house          postgres    false    203    205    2978            �           2606    17640 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       in_house          postgres    false    3014    207    217            �           2606    17645 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       in_house          postgres    false    2978    203    210            �           2606    17650 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       in_house          postgres    false    209    210    2991            �           2606    17655 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       in_house          postgres    false    213    207    2989            �           2606    17660 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       in_house          postgres    false    213    209    2991                        2606    17665 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       in_house          postgres    false    217    3014    215                       2606    17670 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       in_house          postgres    false    215    2991    209                       2606    17675 >   post_tbl_dm post_tbl_dm_post_category_id_19d8f7e9_fk_post_cate    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.post_tbl_dm
    ADD CONSTRAINT post_tbl_dm_post_category_id_19d8f7e9_fk_post_cate FOREIGN KEY (post_category_id) REFERENCES in_house.post_category_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY in_house.post_tbl_dm DROP CONSTRAINT post_tbl_dm_post_category_id_19d8f7e9_fk_post_cate;
       in_house          postgres    false    3024    226    224                       2606    17680 L   resume_educations resume_educations_profile_id_363d9f96_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id;
       in_house          postgres    false    232    3037    228                       2606    17685 L   resume_employment resume_employment_profile_id_a7423269_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id;
       in_house          postgres    false    232    230    3037                       2606    17690 N   resume_projects resume_projects_employment_id_574c5bf6_fk_resume_employment_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id FOREIGN KEY (employment_id) REFERENCES in_house.resume_employment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id;
       in_house          postgres    false    234    3034    230                       2606    17695 Q   resume_projects_technology resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr FOREIGN KEY (projects_id) REFERENCES in_house.resume_projects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr;
       in_house          postgres    false    3040    236    234                       2606    17700 U   resume_projects_technology resume_projects_tech_technologies_id_2ca2768d_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te FOREIGN KEY (technologies_id) REFERENCES in_house.resume_technologies(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te;
       in_house          postgres    false    236    238    3049                       2606    17705 I   resume_technologies resume_technologies_category_id_147f19e0_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te FOREIGN KEY (category_id) REFERENCES in_house.resume_technology_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te;
       in_house          postgres    false    238    240    3051            	           2606    17710 I   topic_section_tbl topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id;
       in_house          postgres    false    246    3061    244            
           2606    17715 D   topics_tbl_dm topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id FOREIGN KEY (subject_id) REFERENCES in_house.subject_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id;
       in_house          postgres    false    3053    242    246                       2606    17720 *   web_access_log web_access_log_post_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.web_access_log
    ADD CONSTRAINT web_access_log_post_id_fkey FOREIGN KEY (post_id) REFERENCES in_house.post_tbl_dm(id);
 V   ALTER TABLE ONLY in_house.web_access_log DROP CONSTRAINT web_access_log_post_id_fkey;
       in_house          postgres    false    226    248    3026                       2606    17725 +   web_access_log web_access_log_topic_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.web_access_log
    ADD CONSTRAINT web_access_log_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id);
 W   ALTER TABLE ONLY in_house.web_access_log DROP CONSTRAINT web_access_log_topic_id_fkey;
       in_house          postgres    false    3061    248    246            �      x������ � �      �      x������ � �      �   �  x�u�͎�0���S�	����}�(�,Ҭ����A���W?�8���Z��b5�U�ϧasz�|{���γ��z���d�����&-��ػ���� �>b{���(ȡt��>���d�hl���bK@rGl��MX�Hl�0(d�I\�]���7O��`v`2-�j�^K\YeE��K�2̊Z|�<�fz����i6�h:�9�j�ni�Lq@wD�)"����	�mԯ�ͧ�j�DZ�U[:1ݕ��sD�[�P�l��*�u����p�l�Ѭ,�Z�D��a��U�!3
�N��\�/>N�G7����?�n8?MM�=ز���+9U����Wo���� �{��5���E��iUžKm��\Q�G��zZ���zi<�ʬ� u��ՙ.���dw:z���Θ�_���3�!�P:ތHgw�=����|ۜO������+v3��-�S�|������W/�^��=D��<��5���1��[���*Ϳ�ʋv�ҽTP��H�|)��
�})���CQI?���|ӭj������X���e%(�JDԖ��D*A�<��R�ӧЯ��v��^���V�)�s��#^�HK�����)c�=�>mT����2����H�9rt�$����c�?<�f��؃��Fy��2�idB!��M�HI�����7y\����k���Y��Y+T.K��
e�G9<^6~4�fD�w��g{�9EՓQE��`E���������X�i)+�Q)�(�X�U�4ͧhH�f��R�u������،�Q�� �#F�)3d��Q&��oT�5�6wW۴eS��Jmӕ4�7m���2��&i[H���0o��͙:M+ZK�Ձ(h
t
��Oq@X�0��?��`�G۪( �wL�T��K&s��-�I��q��ӌ��N{�'7����!8�mü����R�m,�tzp�<܆D�'H)�+�Hp���|/�Q�Znp�kK�a|ڮ+�l�{�V�	@�a|�����#      �     x�m�Mo�@��˯���@fwYH�[�U��R7M�QT_��&��b{0M�9�{z�>��a��;�yJ�	[�t�����N���
�*)��A�b{�gO1�櫚�Ә��h�/T$Գ�0`� i���	�QiZ8���i����N�`i,�+Kk�R��&-�̰L[˾����*H��2��p;�Fo,p8��Ũ��PO&{�>�qv,&�z�N2�f��2��
�؏_|�˫s{`{���eJ��/]�ߺ$!�|��mPѣ���,S���>LM�~ �h      �      x������ � �      �   +   x�3�4��2��\�@�Ѐ�H�p�IS.3 i����� o�#      �      x��}K�9���+h}��N���x馮�t�VUזj��mmT��8�$sH���c���݁�zD0H&3�d��C �w�za�1_)��vK_��
\�5��R������~�?���~������_-�����/�wF>�^��+��:���|~X BX��Q�R�by\ߝ6C�����W��٫z���j�!?��������������������"�+�\��FH/ ]�	�I;ǐf��j�n54[�x8{<�R��M2R8{�҈ޜV����5��k|p)��A�u�l���sHP�$��l��-hs;���؀sʧ�'���?/�規������yz��ڽ2����d	�.~|��<��4��q)�4D�o�_և����p?��Q��m\��X����_ތ=���敋M��O�_��?�>�#tD�/J�%�T�{��և�iS=:�!Pckt�c��:Q'}�Sޅ�Z�|������괹[�c�mFI,x�}�����������n�m�NcH��d�l�)���[�~�X~aT����6@��Ư�Mʃ�Ҹ�����f���a��q�,\�uT�]�$xze}QgF�˳��,폺ն�K�����ևθ|EP�/�z��t�poyq�&��C��֨SP����m��s�X�l4.�4>��~�$�Q��> y���bh����4>�`m|-�5�wh<�"�~��ݧ���p�T[#Ќ�����6a�V2ڙ��e�  �^%2BL��7��+��_�	4�&M���pm��	�֨���	|Vy_�w��~��]v}��)O6V����cX��`��^l��)ʬ�
xf�b����A��&�bɜq>�f@y�����M�!�O��������u��~���~x&5����m"�:O
�|M��h�z�O;4��^~�l�j���*�id��\��%r�u����!���EACFyZa��@�U�1�Cx?�|=[rz)�蜛��D֯ 4�ۚsyP�5�ך �֞-��u��qu�&�A��HGs
�-4oȆ%5�l+0��<�4������g2��h�h�p���F�{�+��`L*輷�����}Q��teP�U���s����FB�#�D�dl��v/�59��J:n^�5Z�I�,��Z�yX�mV��d��<�$$m�x�[n��<��n��Ӑ�H0^I�yw`��yG���������n������`���e�1��_(�H��
��.{��ЭD�}�dov:t�2dpu�*�]���������	�R�ȳ��o+��\ڀ��B�N�XV�,�(�Q���\Hƞ�a��E��6��J<l=��Q������~tAK��49���B`$A"CD�ʝK`��鬲�֙"`��+em�B������*^ZEZ[k�|d)�H�E �w���RB��:�ou���Q�5�o��LP|:D_`�)�#dk�-�Yo׬��o�w�X~Rj ��MP�d'o����f�t�w� 	��F_Q_��&�K��.��S���R��Ѭ )Weu�s�w|�c�`�֙ /�5����L�
������XE��'p	���T�)J� �<ܤ�7��K��$�t���Ku���%A �dR�o�L����!�J���I.T�� 1�Οk�H9F������ �5��愈A������J�
u>�d��B�=ԱՒ�c��訢�bJi%���n��|����I':#����a��s�����z��a
��<�bGL�*�<��q�����2O�$�Q�x�}�s���%O|e�1!T���g!Ù\[W�'J�Drq:�5�5O<Ed�NK�m��V�G�[L�<���ђ'�6�>��¡����j�h)Wsh)�F���Uכ��N�ͩ�B�)�Zj:FM�T��Uׁ�8�J#O�u ���t蝮*�Z�2��&�'U��Hu`��uJ>��c�:p����Ī4�ڀ��[?9j�x��:n�5W���������*��?���꼝i�z(0�'_u�>��ׇ�5��	����d��^�'J��'��8Su$�C�����<��M�n Q���r�_������7e��9-�P��ɘ���(�G�c9�3Z�dM�<�,E�k݈%��q6����%ٛ�AG�����41�㽟t��������� %ЫO��йo�uwKP��c�������)غ������6\����T쑀�Ob\�;��aƗn"A�4_4�U0�!��w.�|�P��/A_�x|�8���#,��<K�Q%t�B�~������ST�`tU�$y�.��V9_�)0�Ȱ�q{$˾�F�3�N ��� ��a��H#y<�@h��Tⱂǲ�h�U�}@� ���MA'
5y���$\�!g&���(�^9ԤY�������a$zJwό^*M��B0|�)2y(�@wBҞhps�8����6����q,�Zw��

PT��U1�|����v(ژa:Qh����KŮ�-�7�"��P@[��},��U��CX���VhX�N6���6`q=:}�p��~ࢤk�:��ow��)��ڽ�ҥ�(��,gqZ��O�A����M�ԝX2B2�8��A�=��iY ��;acȔW��9�x}w�>	�oٽ[�$�cW]Aƍ������"L��8ʾ%�"���?��p��a;�G�22j��S�yF����ꃡ8�'h�����~wFK���9���=|~i���à@���=�*c�|_o�Ů�`%$�ţ��X�\֑��ZQ �G�7����Y�E:���\�ZӉ�u>��8�y�ٹx�d��ג��.�1�(�y\Z�/`��N!غI)d��DZ�����?-�Q@��s�C�7�٘T����_�h>�Ut,�+Ϊ�]��Nt�+��%��8�V?띋{A��@��h{{�o���=����a� ���d|�~�3ٿY
űJ�)��(��?Q��c4�M�R>��/�'Q
�1�$�p�+����ax��8RV%+46�r�g/��%`)(��
��<u�\_2B	g��h��N�n�RR�:H7��=�˟!IA!7��K�4�g�aD��P�7:�F`�4?2\O�]�G�7���E�;��%3
�[�����E�5�
��x�e�Q��r��J�#�Jh����'��o�s}wZ�?��_�A�-:��t�˻�v�(TO�`(TYK�g���>,W/A��~z�U]��_|�[Nl��˧�ʻ�J��M<Rh��)4D\	4���~�zy]%��jʩV
|>\��� s8�{��0�4!&%�ؘO��e�6Jʏ哕�V�S��0ߧ'�+)]�NV(3\�F"ŎB��S��FI)t���&�S��X�>Vc.�QR�(̔�QR���#��1�()��ȣ��s ��h\�=Uh��4h)uu�س*�}n�ݦk	��T
��hDMi��r;V׏?�T#�/��`!�8�������O�w���]��vs7�ь�B�x.��uvD�]��N��T|�%��h)c.r��b0Pt����͍6Z�b@�be�sn�&oO�R@r�����9O�<��ֻ��s.�R�v ~:��C.��9~\=\�� \ �M#���F���5���<iq?Z������� M6>�R�֫��|��A~��7���h��4��Q��*�w����>��7�����cJ��MV��.ެ>I\�/��
YC���b���M���㇎7V��Y�Ү�#�B6��^��p����)�=�a����\bȠ'�*)o�y��K�:.�n7Ǐϕ�����ag�̈́}h�=b��#G����Z(�tІҔ�!(y�7C[%��N�ULi8_|
C�d�%C����qq��}ԈG�݉G;.A�%������؅N�ɁP���_$>��[p�ٔ�@�R -W����%�W����R�=w�Ч�1O`�G�%����q%2�=O�-�r5��ι�a	��4%����d�N���݋u�:1�L�F�r��6�q}�O��[�w�6���B}�	�xD��M�    �oև����G<!�3�mH�\��#2�� ��I9E�0�Ƴ�1�����}��V=���[�Yo�c�E�I84�\�5p�?��w/�QG2l\��';�B|p�u�Z6��QK��[=�a�(؀�Ж3PC=vcl��@i��M��Ӻa
�D;p��6�]޷M𒻡	�-݀Ot���7<Љ=*��7�Jl�Jk�`n68����!���>����J�ƔJ����%^�ڠ]�|� �5g�Q������R�q��_�I��ɖJT�o.�W<�c[��=-^pc8f��Ξo$8ǟᄻ8|�?�
p�i:N�r�3$8�z�f�I��1�h���E
��m��*,)���ѱ�f���F�S���w&��wgn��`	h���zt9)9*du�)�T�A�&��]�:f��`7�Z�F�ژ�S�74����Fpm���lV�Q6(�p�dXU6l�o�Q�JmU2'�ǜ�RP�.��d�D�K��lA�2�j�_�5�-J�ȇJ轩�%�����]k�=�^?�ϵ���!���KX�����Q���&٨4;�HpK�v�1�$�9��VBRF��#�>8Ś�`Ro�u�Y��LLؠ��^R�W�7��m��w�Ks)�U}���c}ypK�/MlG�\)jO,��%c|����)���G8����[q��,��+0�E���J5?�2����R�mi��L1���� �-[8rG���N�{�4T��Ƚ�+�^��؍�q��-E�����y�����V$�@�)$f�u���S�C�+���T�3�4ܪsyu�s�{���%��tNcS�?r#���O[B�g��>8�&��OHpG#�J��,p�����S)�:���-dޖ:�C����8���Y�~E���S9fv0P~��$H�'��KS�&Hg���%�flĹO14-E�G��!��\�)ZPM����HfI�)jG���*��)牀�����7 A`��@��O8��$����z_g��$�bu@��������S�_�U!����.����7�H�e=�H���K㫉e��kT����5:�8mr'�a"�'�ϵ>K�X��� �ȉf�J��_�XA�<�vm��l8#�|I�)<�
��S����H��}�]Byo#��A�8��a L6�E.ڔ7�Z���P��������L�r1aL�/m�%6�9�j��% R��Mxk�6�~D*or`� v����R��FG\mv��$���p}�C��� �9�*P~��a�l�P�������G�z�(��N��2
��R�C��W̥.dNN��(h��ci4G�#Q�&IǱgޕ�#uh@	�w���͇�shF<wZ��|����e��#�@�A�H��y�=ˆ�>>Ă�й���r{4HhO�bD+��DvgȔiH�?�8���h/���[��G�s�C�4!�R�ct�Іn2�㳳�:Ih�0e����프fSF[􆆊<L���N}�u��O�]���]bf
�;�5����]�R<t�mH|GE3�V�xǽ��	��9���pse�0�Ktn;�b��B=p^?@���B��z]�g=�u<��?� �	�-�8�S	7+��48K�j1��4̡%��u�{扗?��P��BL^]]%a�W�V�q[ \�>�V��>}G��_��	>�(�	��~:ߧ��Y��r��+�Z� �(��1V�S��p�G�^VgqKK��l>Fgs�xq�	� 1.�E�Y�d���SJa=�,pyoclM)����C��8��"�;�(i�+A�<pD8��G뼘�t �,A�u8��S2t\k �a�Z!G�k���zγj	R�)(�Ӛ�寀D)�t���JD��e8r�)נp��:,F�pְI��RUX�dI�;OǊ 8h������
�$���2���*~���:b���JA��R.����4HP��opG*u����ȵD����bʃ눡��C\���s��k�"�В��MI����]i��p�:�\�#5�p�Y��XS~��+F�!߃BtE�������p<-w%���U�/�ޯ6�%2Т�d����{���������ąt�A�g�;��ˣ3bt��m&��wW��y<]h+��IXJɔ�q�@_<t��+�n\�T����\��y�@�x��	&t��Yv)Hω�8SoWHQ�P棦�^�*�$��䄋�V�.��`Ae
����T�@i�b9��?y@UX�d��)�/�Kr&֚Z�I&���S�
���;����ԡq�Fs���.�p�J4^��U���T��D$��)gK��i��P�O��6��!I.=���Cv����v���~�?|u<}Ɵp;)�ˠZI��-���[pt�� Z"�rT��ո/}.ؼբD�x��0R2s
����K����p�s��f����ZNRp1Ge�t%
/)ejE:�E�S�·�f>���bPĻ�W�c,�
4:E��%z�9���JBhH�S�+�L�z���T��V.��m��n�]P�+�������Ԛ�C�>Ѝ�b�N �qh4��qe9�	˥H�9��*�RM�Kp�䤮M����Kp:��8�(,�Kqz���es�җ��3�q9�m�8��tTw�1�G���P��t��b��8�jѹ�^����8��[t1J��/Ai$%����������d
��(w1����Z���E/���N�q�?cR�W���%�MM��ͩ>[l��tLL1}�w���e=��ْd����Qa��d ՌՔ��[����$HC����k,�A��a,�XT
BΪ��R�P�)*��`�
�r#l�Tp_`�H�|=F���U�M*��{љҗ�.�T(h�)JsBw���l������Ⱥ�C���z�).���_l�0��I}A����)�U���Х�EE��$3����b����d�䬤�tJ�?��_�\U�!Ž;��M_eg���������b�_�A�J����^�cKFq|���v���O��v��t�	��hS��F��v�݌��>�K�?��k]���Z��R��
&�n`�}�x%	��TJ��f����AÚ�."��XH�G�7?pP'�}5�ď�1�})�<�x�Kq3Z��nL{6t�y�j�R�b78(�]ΑL��(
�.�n��?��Mnu�kԕ�YS$M`G�MacРN�n���Ƕ�e�T��u�`0tj:z�f�>h��-=��� �l#����w6o	S����)[)��96�^1��f��Il.�l[�j��ؼk����U�t�#S���=�R8���}��p7[
'�bױtn��T�f����;�QJ��tec4s>J�t�+R �\l)��y�����ʜ�b9ܙ-e�Z� �)���*i=9��Aw��U�|��D���F� p;j���Y��!��܆����~][��ͨI�Q�"4ny3P;b)%��n!ֶ��ϻ1���ˢ����&ph��Fԁ�����1�~M)�t;4Hh�g9FAjV5�Ih�>k�-�g@{	M�#�$3:h�\���䳊w��͞��\i����Ek���J��q�L��t�<Ip�y+)��Щ�1���u#�2
��5l(}�&N����������FSڜM������L�m?�h6����×�鸔���7k):%e�E>��V�0z95���ʹ�n��9��R�����h�)a"����>>E@�T*Q͚�s񴬴��P֔xԶ�u.V��H߹��c5�B����T_�i%i��U�rśh�B�Z8�޵w|_��HN���\�Ϸ�ø�������ʑ#P������>�!a�-���[�Lx'��ױ��Lt/�W���:�3Ⴤ��=|ʷz3ᣄ���6�����I�{V�!�܄z|7D,ó�(�+T��>r�zD��U�7�rDwe0�>m�ӉL%n������y�x7K�=�l��/��A���:��StW[*ގ,�Q3S�ՙ�RԀ�^���R���5-�l�ݎ,��q����&�JѢj`�1	JW�ۑ�T9.���ͅ�№���zqĳ$Y)I�{���xڽ����2�֧���N�ΞK��    Iۀ��4�����NҰQ�F�Is&p�� �pƚPڛ��7���ׇ��������|��ޖ�A�%>�V>����u�G �`�|�u(�(�&AIZ7��b�������*���Ԓ�S��ʭ�QIɽ/L�!�~J+)�eP�K�+�Q�zc��Jo�t�ҡ�������P�k.���Z�6�S�qJqA��Ж�Û2�(88-��Qjq$�A���J]@NƯ����k�"G|-
-)4W.���j�a$G޲��W��J���DJ��-��G>�M��T�W�}i�WsH���(�QKs�+�B
)%�P��_H�9)�`�hC�����?��6d`��F�"��L�\��H����y�
#r�@�B���~Pi�{;���	_*�O����~���������2��M�i��ǩ�XP���i���6��蛆
��.�H�\��WZ���	
J{��2�>7�כ�����BA"�	_ʄƳ�8Szt�������MH%G�G�s ���!�^�h!�\[��*�9�5�/�����?^[8����_j�m��M�Ss5��'RL-�'j��*��7�[�&n�Th����p���I�Mt''J���f8MԻA�_��E�P��u�Ó(��d���^b���SRz�j�J/��T
�3�x�5�\��+e�q���>�)(a��.�(�Ry�s������������$a������q���p���]u��`0�Վ&{9h�|��ݡ����o����uQ������sd���=i`��9��J� /@�_kG�w���>�S���.3�Kp�©P{�x�Y�A�S��H�����G	�E�|>x��ȓ���R�LJ>�=?����*]-hbH�L��Z1��s�Ჭ�
l$��M�[�4�0(�Jx�@DK!��J	�>ב)�+�r>���T���=s��x������E��ھ�S��K>B'��Z�4)>YU,ָ�_�v���	*l�y|V67�N���O�$՗����}'R�	}�|��~���ƾ퓟�r�n�L1���~3E{�N��3dl��!��^9�u|'�� sNl������ ��%[�+� ��?�W�^�IL�gcC	�D?��i��W^B�*7t��o�RP�X���^����@J]tRW?�r�+��\44�;�u��s������W�"��C��~����8�i%��D��� ��d�OFEQϖ+�9d������}�H���5�-��XMre'��7�O��!�NH&�j�afͯ��d��(n��}�R�5g�֛� �8��{�t�S�L9����1�v�uaw�Zj��/YZ��(�I��|c�Ġ�Z.�*�1#%�p�܈S�&�1#%��ϨJy�����5�9�z��	|ct{R:�����nb��ZW^�8�A5����T{/8�L�P����G�s �3ѽt��B��t�6:֣��ʦg?ᓫB�)�c@�5S$I�����Ұ�e����p?iM2�U�j�P3z�ٰ\��˛p������:��Q�>��h+_���O���á,�O��ST��J�9�
}\G���������Zn@�1�Y�|Ԅ��q}⢃���z�is���׻2�}'�H�m�n��.�ۿY�V�V�/(�a��ǧFv�,}����	��:?�z�o�����(���G	�Q!�
��f�w.z�`$��w��t�B�&��O%��}�9��B%�N����,�8A�o�ǻ������z�c���H����xq�w���?E��TZ������#���D�]G�A|'l�@��H�mK������z|'�	�v?�J���~|��W|==�=���F�yD�`�Y6�c���bO�x��[�J[9�c��ȞH�ղhT�����AO@H�5�y/��0$x�ھ=c��IJ[�����\��-�	�f;�z��m�pd>�t�x�ޖ[�?�_~��>��F��z���U)k�І��Qm��Q��pw+��C��q�:�ݰ�T�Qz�>qrt�s�ߐo�V��![ y�֧��P���ّ��TP�A�K�T��%e����g��S��r���?w:Q(�J}a����7�>0U��R��j�Aǩ�RЩ� z�1Λ�$q�v��>�l��a&���Z���2%3���ΦAT!W�R޷K.�zOmm�[ųz��Ēԃ�[L��;�&x ��T!u|6x�G������є>��.#/��p�
�Cq��>���Z����׸���sQ��d���	sH;4IАCMBk劅v-KP}Д�o�3آ��Ԩ��]wW���G��p&o��\ ������n�����xw��6�`�Q�����joʤ��H|�b�v�
�$����[;uyf��xA�
I.��*$�Ob|c���l�I��t��5�ur�
	��ݰ�D&������%`��0��L�Y������&�1=�Ga:���Q
��}sFีvBs��Ҥz.�����*�����A>�h �R\�ۧ�	R��Nyd��&��xA�;*��mj%� i��UH�x�%J�D�Q��m)�b|�o�U��4d�+ II ���)9_pSo[:IKV�M��|u�s��\:N�_�s<au$)��kj���w;��I����,
]�_�k���R۹��T"���г�UT�AwJ���ݼ�;�1�Ns���Z��ۗjD����n���t��ᣨ��:�1:q�j܂�\h-��X�k�BQ�3�M}҄�3��3����$bP��\h�й��3t�6�I���:�r�w;��W4�\)hGF�>�=�>}(tq�E/Z�χ~o?/�_�]o���@�109��O�V�!!�x�B��C�)�t"�.�(�Bi�]_�=*PhA�!��Rj���H�~�X��J�����(�OAe�L0���Ct�|d
/(H�X���k�T���n#��6�Z%er�I�J��
R����l��%�U�^B@�O%�^��-l�`����x�5Q�~�����U��1�hܸ
U�!�m�]�?&�mc%�����6�6 h\�ct�Ԡ
���I.�:�E�F�3�Ҩ�1�K��ܭD$���ox;�%n����r���ל�$h����ƘB�I�J�P�Zt���oc���#\Ej�t�Dc$Pd.s������K_�TWX�4���5'��ip_r�n�_�iQ�������L	I�|>�_��tQ��e��nn�R~�բyZ�T&�t���: GM(G��"�R*~�����fd)���P�8]��������A� m�fԋcwѼ;}~�	p.P�H��8��`�I��Je�jxH�,���� NRr|�6��ЙL9�f��y����k���f�0l�\��iCW��X�d�Y�a�߮W;�Ρز�A,��(�2�x�.��lO���������J+�m�IZ��~���r�u��rJ ��hB!�+�-��9<]��P���u�����σ=�3�飐���51<���8�c.�Mي�(�y4w�_�@��%4C�y}�3a}u�{'L�����r?��nV��3d��}φ�mt� r!�TϙM%A>e���i�	�$��<*�\n��tb�
�-T��)We�:A���9��	��!0��Q��rx2�J|>tH��\L}�'��G:FO,��M����ͽ�%5��-<���	�_��Xe6A�|���A�y�(�d�7����&H����!	s��3AP����BC�'�H�&В�Q�	���2C�H|ʔi��:R� ��|Om-�*
;�$�܄9P�K��RL-�y�C�	�R�["u��Ƨ*�2H)�l�xg/o���R
)�����Tu{�B����B'��u�煽B<�A���n�n+\Cf����Z�sc}���
?h�E#HW'�ା��>n������\JUVq<��\��4A+S�itEO�r��Ѡ����i���(L�3e�^b{�4���lp �}�\�"ݳR����O�hR�����1J�D'�)�ڟ n�1�{�Sb��噤�ϐۂPԳG�t�p������C8*"���1���8O��|�z�;���ӌRi{����5���i����p* 	  ��ɓ�e�]>����?-w���v�mV���Ol�j�h��Uoώ)��q��)��A7et����Т�W�y~�$��j�:Q�Լ	�J`S�F�r���&$*�ǥJ�΅R�b΄t��r`-�,�y�rY�NB孑\�>�I�Y�G�('Z��yG�>�YF�@b7��r��e��`:�9(@�L#�PxAAI��q������#vcpl{K5�Փ�L�[Dk�Y,U�1�F��-}�p��E7Ԧ����S�-��6L�|ojl��!W�0���P�е����>�w	�>H
 ;!8�b���Hp����P��1�80.7#�ܒL��UJ%��=��"��x��P�le��|cS���6ɐPw��od1�b7�%Sq��mp�ҡ�z����@��u�|ۨ�4�mݾ�ta2�dT��41����j%j"E�viiv��>�!ǉ���-��|��i0b��n�
�	���*��NP��x	O�tT�8V���g(ӗ3ᣄg��h_�$τOޚҹ�d�̓�J�s>�u�R�|G�|{.�^x�R�M/~�|�8x���+!�>P�^W]�5�]�n����M+�b�������i��U0���U"��� �գ�;�x�PfoU���������^��=�k��m��_��_�oX��ڭ>��
�(\�p�++�P�_Q��w���>lv��@��i�� +�şOׇ!S�D�^�!��	��n�FF���)hK��� �Cryr�Cc�5y��$����I����B6����DIُ#�ř��i�._������8�\��KQ���G������u_�A���qh��r���_#�R��8=7$B��-�x��������[����\��㓏�_C�B
Jo9r.��c�������{�1ЄF*w��5�-~������1��z�2x�Xڨ�u��������o�Az�4rj�R%����V��Ӡ�f��2͵��~(%8����F]�*�T�6B���͇���p���[�)=�R�N�������V��e��Q��3�7����oW�^��P��Mڪ�U=,^?��>���!�(�\����⚇RAͲ�?.���yM�[���M1_0�=���qvr�n�d] (!���v��B^�WD�R��|���7��_�C����Z�����@&��a�����������hG�%�28��V?�����������i}?���J$JCj\J��"~X�?9W�qۚ;�6w�fq	��-:u���w��o{��v�_�ww���Ð
�xN�q9�S�2ӋןV��M��s�P>�Y��m���w����c�
�p�ncJ�%��鰧J2Sc�+�(A-�(˗@/��h�O��_ˡb�K�hS �o��׫�i�����f��S��^����M�5�T�/\=4��������~~���ܕZ�Ў�u�Z����}�,�@�h���p*��U�%�����m�ظ%Ptt^j7��$ќ�hq'6��Kpt)���rù��A�\ſp��'k:g� K�,%���,Ծ�㊰���%��(W�i���C���j��nv�3�!I��7H��CM��$O���Zn�S�F�ܩ��;d�*�p�y�<>�߯�9bz��bJ�7T���JL�w��"�´he�,���b��� ޠ������KU�w��o�|N������ ݾIr�����O��z���DA0|����]���O�B7!��T�
��O#.�3�g� p(7�4ڠ�~��TU4���{�At��z�ӹ9}�du�<n��~R'=��n���"o�K|���j8����͒J*3�F�&�&/��n�D&��|��n���|ˌw�+RI��ڌh`�*��gd������)�`g�%�ȌTҡ�4/�l��v�u=��A�r�[�����ݯ�����u��o����檻�/4b'G̅�l����0��U;8 � �KJ� F�B�	b��w�CA^B�+��s�� ]t��e<8UL��7�Oh�n>={�/�ww�o����y?k����8I�I
N�Y��r��o����L�M\�IIE���P�Xj��rؠ�4�'%����K����Ǥ����oaT�/�><��II�渙���滠�
��w���?|x��II=�w�r,��&[;	�`Z*��cT[���R��a��\en4�/���$$^"c)�J���7����߯W��p���$���ɒ*�T��_��ۯ~^���.0I�$���ϟ�-~��ڮ��߭�o��Ǳ�~=���(�F�r��y��_-���E?x�Mc���~���4�[      �     x�e��n� E���L�&k�/�*J��)������DD�}�����֊���D����rL��ߐT��k)���_Ȁl��*#��i�ˌ��R�d�X����w�[���%�U��M�T	�{�8�q�;�8Ƽ��5[��m�q%f��n^Tu���+��1�PDOV!��af/���e��%�d���U��O�0Ϟhݣ��ẖ$0�=Z���E�����`�"�:P}�i��j�t���]�؏�[_ ��T��      �   �  x���ݎ�@���S�Jd{�y�J#6�f���lw߾��%aC��AJ�|���f���C����e ���˾,���hz�j�&W2G�'!�� ʊ�}��ʨYq<��s�h�D^%��ą����-x~��q������W�|q�˦������My`VYF[J��;�賚醏w|]��:�i�䆙�#_T}h�%���bIQ��Ż�B}��P
H�H�3IL���K8e��(uj��yK��TMs���Q�L�@��Q]�/���Z��D6�8S4��g(���d���=�("� �x�����*�Eߴ]~hۦ���u���ܕ�crQ�4�j�3�5	�r&�;���2`'��'
aB��f�|�,���3�pa�������M�c-��a�6tg��nZ�"�ua�?�Y�C沞��'��s H%�	�:Ϗ(�ʣb������%B������w�pZ�j�4ji���^~�C�?��.���R�nj��<�N����i�I.�����Fj�0w�GN�̒^"�B�!X2�͉)nϋ����s�"t�0'����^�"��A�A��-p�#�I
�aBޜ;��JP�����<"�#�W�ͥ���Ǳ0��8!���
�K?��%(�^�h^�$�#�E���Ct\���~�����+h      �   �  x����n�0�u�ُ��miU�F��(Jp4� !��@	?���Б�)�?�=�t��kv�t?��f��o-*����gu�:��6L�}�]sɧ�y
J �p�=��`:ܶ�W؆�&�A��J��m�`2��UD�)��q�os��ˇ<�(��,�x�,Gޜ���*?mj��Լ���x>z��p~��s�Hy��E��K��"ֻ����~r%�0FX�_� p@�P�`���:�����u2p������$��Q��C�<�J����X+̖�q��RӰa��������B�*kT� Y6m�4-��%�x��v�`��\B�2��tqI�ʙ�tsz�fP�d����Ayҭ�Y����5-=�5�ю([ME
2VmK.]�R������n�C�D���5�� �]�t��i0Yi��� q�w6��n��b���%<�KL�vL��l��X,��      �   ;  x��Q]O�0}�~��L�F�Д��g|41�v�*�m��_oK��Gn�=�~<�ŸT�2�uGo뢪���\���^=d�����q�۸�n�£Q�=�HH�#�f��@ f�>�?D��/������m�.ڎ�c�^E�d�Gn�Q�f��?O�7��G@%v(��mT�V�s��נz-�����|[E�s��$1XmѕM��B%��o�ܣ��F�?QyR�?��D�t(�����6����pj
�����@nu�k駱�xQnk�:Y��DM�G$�&�/����ˈ=����	����yVv��,��/�0� JH��      �      x������ � �      �      x������ � �      �   �   x�3��uv��M,.I-R�OSp��-(�
r2�K2��9��tb��g^qIf	PH�kNjrIQ~^fr��P*-�(�P!$��Ѐ�PN#CCa�i���t�u��98���8��nqJL�H����Ow?�P����b2��1z\\\ ��Ck      �   1  x��S�n�0>;O���I��,;tX�)��.����dɐdg�ӏr���;���QYt0'AK������F{�\���ѮQ��d[��E;R%GcP� �H���2�����|I`��2����w`Np�㭱"���%�K�i�g�'� u!͊[���E�5�)��t2��
�B�&��GH��zr��=Y�(�k0��� W���Je�F��Q]�
��X���$��r�������B��'B߈�E�%�:N�q���n(��eqrg��r9[F�����Y�I<ۺf�
��Ly��2g�p��(3����
sB˦qcF�[TP%͡�ڋ���8݄r����1'�>a��l1�9�&P>t�S����"}[T�'�RP8߶���-D�}�^/C�g�h��Y����>Zl#֚~ˤǄ���}Ui��u��5v��Щn���T/�!NVqֳO�d9��0-��u�C�#�N^�/#�F5���!����^e �\�ۄ�<Z3���i*�^S)uݫZ�.,F��i�&ټ#��b6������      �   �  x��TQO�@~��
�^֦�
xH�l<������ewNC���/�!�����?�g�$9sU�\�֭�O>W�&Ǌ��R[D�̠R+�GE��4�90��e�_��3�:��<ǆ�-!��1hKѱF��Ua8[=B��@���
�:�����d
�Ѥ z��gd���D�]h*dXI�x.��uc\�8O�դ99��\G���
av	��ȶ����q��=���Oz�6���[P'e�B��:͈�14������
��Ϟbj�ԧ<Fl���@�%�9��¼�θ�qUJ}>:&��^�5��m�+m�8p�N���,r�(9WC:\�z��̮�YI�s-"�����<��?�ڣ��&��>:����+�% i'=�!�)���'�9����kV*W9��0�y�2k�K���`=�a�U�,!�.�����Zi�1f��`��;����`��0l[������r�w7����5e�;���������C\��I��CjU�|J��Kd�F�/T:�mrW5�p4�.{�:#v�y	���ᒗp�7ݛO�ӃQ�8��	J��ǰ�x����r���P=�P�6�>��P�ƸZ	공X)�͕l�Q�����˥K���6�A1����tv)梍��qg������e�J����K�	2:T��)��rsο� �?/�>i^�7��ć��w_��MrK�a�9��7~�d���Z	��t�:9m�p�pCz�u�mmm����l      �   �  x��Z�n��-?�A��ݕ�X �vm�JTKMR������R�NH�J� @_���'鹗�ٙ��ZM ����㒼��s/}�sV����;'��������b���'�vB�\�[��L&J���B��	o���L���k%f���*Ĥr�P�)�/R���U��n_���T������4\�u/S2Ň��:�'�R�j�2S�������m�J�����%�16U��NU��A&�yᔴ�\X�����S�i���������sژ��4&Ц�{�$��q�)�LL^�B�=�[��m��&�B	��p��Ly��0�&_�j��<�9��ӓL���`�p��nn2�n?�-���)��r"�:9@ϓ�s�3�����#���cz;~�&?�z��?:/��ݯ���-d��{n��o.wb��0���y V�.�v�������n��q���a��<;8w�pk��bVeҾsk�����k�S8L#�U�t��8�c.<0���R15V�V&^'��� ���k+SE��t<G}�Mr}�<��o38#A�*��y�+����Q�h4;!�m8ie	�j	@8� �>˸����S�����T֪"Y�Rj�/m�������Ǆy��r�I���*�	[��\kA���%z���v����UI�T��X��R����eeq+d� ̴{����^b�
�(�=Nmm�6��U�6�^�#��ϊ���[��C߽z��<x�Z��L�e�9��������8?��Yf��y9��-�	)"0�O:hƙ-3�'�����Lϊ�n*��t�|��t��6�2qVjڞ������V��KW��J�Y1C�����6/3Ek��?���dOL ��pgu BK�wc&�)bo�Aa���#1����q4�W�l+G��Vb���!,���H���
,�N.䕷��[�� ?Cv|䛨�p�@����b��k8�~��6|������]� :��δG,&�O5�R���\����E��h��|=�����B��,�-[��1��
���.fJ�#Q%¥U����+��:uB-�}�A�&����\]L7bg"Cg2(�*��yN�i�\����Te�Ii$٥�@��Z!<T)���>�a4#�e fhO�s>I��g�����FgiN&�Be��9q�@������.�Kb�n |��!_����+��Wn���g���WW�M�7x�����hq��U.����tѶ�Z)!"D�Kk�V��h�-\�#�VP ��u6���{�!�DA�8<6*f��!>'`hS/�}ur�?������^�,?�|�xJ
Q��'؆@Y�{�Ɍ���&��/��^?}:��ї �0�jhL�>C|B3M��B�n��)}� m�:�+�AYFm�F���)(�@��Q�����#�����(��~��!R�b���ʳ�Ճ��f�Z9���׿�xQ���@�1�͖���� ����h| ���f8<��ݱhX)X�n��&+�,Ͻ6ҀVff���L�7��Fl6YX'_��E5B.r����3����"G����k�ĆlGu�� ���ި���um+��U�u;��l��n;zDg%"��&Ǫ{���i��M@�-df
Bwx
`�[�U§|�!�����p�໹�3��1Bti�+ٟz�(��p+ކ�"F8��N�8�K.	���*+�H�t�8�ط��jP��Dh�\=2k�|탚ih�(�_H�݃wO��KJ�Y��TH���ϑ>�)y��?�Z�=�)\p$���e���:�8q�9o���q�*KH�t#�Z���㛩3�p6�2�Z5(�]��X���dNv��I���kkLb'jVp"���j�}D:"#��c���4���"	a�ڮf/��u�A����iiȍ�by�s.3$&�D��p���
}`g"MG�Z&������)�p6��@%;��K:���s�&�TM�Eۦ��x���1��28�*V��ra�~�@��@f���;�;v^"`���̍�'xw� nO�W4����屐�j������~FpnN�6�.@z�&K3l�*n�[���2k,I�zJT�����E��8?�s�-�tC
8�U%��>Y=ӹ5����з�`��Wc��w[��)��)�uk����w]�>�C�S	r/�}_�e���,���6�WM��Qv�����';/��n&�+i�e�u��Gg����;�+���!�ȂN*T	N�����Ĳ�=A�ƀL���n�QURA�+6&/��\��8�45�^ha�e��J*��9 ���Z�TQ�"	/X.�Xu�+��)ֆP���T�MV����r1�֠�NOlNeE���:eA�:Aְa,$����S�򐡳~)(�v��������RA?������⢃�t�QY���t�5S]����ac��g�[�Z���5��#�I��U������/�5TWB�Į�epҩ�t��WE��4�[=}�74��z���P�{�7�O��������M�m�D��F�~=�y��p�ӝs�e{X�v����6��:�Ͱ�!6�H�.��~Oe�4S�R���W9��$�S��٢v�Z��&6�*�(�)��T�&�Y���a��*���U���� d��v��D�9��p.Ic�lF�g����xr]$$ne+A7[v�L8���yN���Ydp�P电�2$ZC���(���(���[�5��GO� �h�e*����K�vj�3�~���Z/�h��rEᴿ�;�����>��E�@�+�g�ocfE�ɉ�����Ĕ��n�����w���P�Ru�p��R�%��;�����x�J���h�����יt�� �l�*r)� ��6���?U�_��\U�xK:#թK�t))[F���q��R�^h��B��P�X��1Mk��3�J�1V�\���j�IM�M�P��$V�N�+�f�&6�?�VФ��OD�7Z2��r�%R�2��b�R����Q�% �yۼ1Y�jش�sX���t��P��Ժ����4�T���Rz�g� "��B��odnL�Pm�qY����.\wR����:�wȧ�������l��xYM*�Bu~�E��O�D�H%�-f�ޤ���ߔ�,����H�[�A�M��
ac����xU�I�����	%�W�!�/�{U`ղ�\wmNvm/#{��ĈK*]s�����!t�e�To�d:k����8O%�^���ݟ�׫D���?z��^�o�      �      x������ � �      �   $  x�]�Kn�0E�7�`)v�Q)T�VH:a�&Ib�M)��b)���9�~3l��?E:��O{<�-5G�@2�����^���&Ĳ&]�?���ҙ*/�Z�*��z��� ��Jmr%�����3|<Z�1�h �o���J-He;P�I���&&ky���WC�8��r2#`�Y�M�FSY�U��G��F�O5U�_B�T����BL�:����H��]O�濤���sz�v��L�~R�2���:�fX��3ۿ���s��폇-��z{��?C�{      �   �   x�m�1�@����)� V[�SL(��ud�:�k��� c������c���eՕ��xt[�t��-��$��j��&f]!�rL�?�!���L��@B�X�yu����Lw��5�Yg��9�{76;      �   -  x��V�n�6}^��&�{�M��5�6Ej q�YI�%Qc�Txٵ����K/_�3���v�p�H"9�9s��O��o���vg�IǸf��9l!2���+����Y7S%�B�Κ�򶕺f��:�Z���`�dy�N��F�g��,[��;�\hй�^�>�������c�=�`�K��b��;��K�`���-Ǯ�
r�d���Úe�^��dE௅c���>��nF�j���j��'��7p��߹`�!(QU�C"ƞy�� U	zv%ሩF3nvQ	�,�Y��:+�'KPl/�H�0'�N	�z���l+F�{�L�G������x��إ�O�ą�<�IF��ie���'���v=e~�>,{v+3�|�� �,����;�	ˎW�=�+�����ɔGY�+b����Kw`2��e)[�]b���,�e�d��T��$]�Q�m���ZG���xzˀKci6�VA1=��P1y�:!�i�R@Hk!��{A����?�\
\�ڄ~z8�+�Ӄ�(c�u�h1�O����Cʷ����,G�B�E�ؖ"X��w�7YI-Xn I�L(#^FO���Y�
�Q�Mh��Z�K���p��u��Y%vE�d��b-,A��
��R�nŌ�9lA4e�%$���B�S�̆jЮ%���� 1�+EՄ���P}cM�@>��$*�/��aD7�pˠWD>�q=����bk�_?�h�MF�n|��{
x�⫋��2�r���U���DAJ��}�[nO�����Ki	'���8T��>F� ��E���Q�Xш2�!��h�H��{��EE�N�?M�߸�������vf��#�H�[W�HK���N(� �ܞ%Qi��1'k-���A'�GH"�K�Ҩ���
�FE;�G���?�X��V�K�Oo�E��W�v1y�a��������kI��k��5EXT��뿈�8ݳ�!�Y'�skx��xi:j�(G�3�_Ah�A}������:	%6�[Y�&}*�;[�jer�����JEuE š�����.T(�$U(,`:����7�����5V�H�J:1h��<�֚��-�3R�!�d�?p �P��-Pp�ݹ ��d�rd��ڬ)��;��D�ƥ�x:Y�h���NHs�#Dt9�i�|�Ȇ����G~Hg���o�
�D�?]����Ϲ�v����=���m��31� C�&� @l0k\Cӎ�bT:�l�4Հ�f�:3�	�53jI�K%}�%FАQ��N7�Z�Ey�엻XQ�pLG�m�g�B���D����e����u��_���?f��ի���������9;G_����b�̀IF.mxzr����i)
�eCU KXn�YV@�a�Y\%F����vjWi#8|�Y�7������ndTd�|��=��I����J\�k	{�مD�Ԓ��H�&#@%j�PI=���P�����u|�FSUu�~���r��4�1q$����'�m磛d��WOyG�ؿn̂�ɓq	�w����7�c��An*s!��4�~$nER}�T�Qk�~X�(��.aG-�^5Hp�9�ƕ������Z��      �      x���v�H�(�[�9�3M����ڪ�s奺<��خ�3#���dJDX (�ݷ�3����l��%7,�HS�#WI"�\"3###"cio��3_|�Md*R9Ȃh��ɳ��,���g
�Ѵ/^�C)^}�ǓP�zG??Q�~E'��#�����}1J����(�&�ѓ'A�5/��� ?�=���Y<M� M�`2�Y*�i]��K~���=����T���`dP�<��A�b
�ƃ8�Ȥ)^$~
G�`,�l:�}��$H=qd��� �4HE(�8�ߧ�X�>�����4�#(�	?����xz1���Bu��)�2���n��¯s�E�A_F�*��@fM�`� �L�F�I�9Ex�E�_C_�`
m4���s<b�Q�?��p' {�L��#9@�y!���0�]�YП� ?q2���Q�d0i�	,3�*�a�8�C���5fa��L�>���1 ��5�jouZ�N���h�܏m����:[ǰ�c?"�9�a�h���7���(��R�H��r��u�����5]���#����Q�p����{�|����?���>�!��߇��#�>b���í�!��!�L	�k=8u�H�!꧓�����!b��F0H(��Z#ګ�05Y��	�L����`�I(���W�;�����F�i	�G���8�g�)�O�3���'I��a�NBS5�N&�f�о�K�dc1O3�I�Ô�2C��6�t���z zD �ؗ�>RC�#��k|��
�$mթj���
�N�}�V��ݫ���MW�.pa�f)4+�$��~����Ok�]La��Y6���3��Ν�N��HT����NwJ�h�KW��	��"��g<<�Ѹ�����8���& 7�	��|y[_`��m��~ܥ���&]�I��@3���x�'О��y����e0v���s5��P�\&)`J0e�*q���y���(T<��~�7���F@��b�W�����H9�ȥ�H���L��^���'L�_�ȥL<��(���� �i0����� ��9�Ʃ�>�ᕟ�"�o�~ �[�'�[G�7F��$3q�C��9�8���82��ݨ;���h�vZ 1�f0���#<Ƙ\$�O�� 8�W��3���!06џ!��/S�c��(�t<�
s�I#��`���U�4������~m�*ӊ���[ ���Hw9D�V�j-gE�OX����&��Q�:���>���� �w�+�ܦ�*>U�!�y��"��39Eq���߿�|��������/0�*�s���A�k���f/�S�)�l�<��"鎧�tv��ICa���C���9��X�i_�
qE|� sGa��EPv�x��[�N<>�p�`�E����`Fp7���.�qe��WI'��6�E�e�pF���,:�	<[�L� ��������Rb�@��r:���t��U½2�ӝCa�@a�:�n�f��T�^'p��,�Ok}��"�Uh ?��䢿���<���}�������j�>��lFD�;v��Í`�!��⌰�����8�-���9�[�E
!~��ȗ��@z�����)�)L L�^_أ@�a�}��/)C� &첇>��%�#X֧��܇�~ݫ�)�'���*q��p�`�N��&�Ҥ�p��9+������%A:Ͱ��Py @`���l �%3��P�Y��u��f�}"�N3�^�Ë���5̵���O3�zu�^� 5��~���}lr��[���)�k���X�2\��Hu��B�!�sBpf�2dp��ⴰjF0��z/c�4vl �g\�[�#�0��m+l���7��%3t��y�ڰ�__�y�^|��Ͽ�Wù�'�3xW���zk�w �Xԡٺ��ji��N'(O��e�6����jN��o�Zp�~�15@�''���q�1�P{�H�+έ,� �O�H𘀻2:�S�4�Pa{VBB�)am+��@Ҧ����S���OT��V�=;�L$*$	��;��X���y���,���C ���(����D��r��aN�AH����A�9�I3���2��G��/�5��4|�s�|Z'�*���U�aBy� ��,'�����
b�gb>��LmD���d�'�<vQ��n� �"uP�ݐO���[O�6t�\*8k`=���
�Ώ`XX���T��Âz߁��W �>�5X��<�z��tZx��Lw��A���E�& 1���%"1�Ĺ��m���J��[9�#Q�ٙ#��?l
u P��OO�F���
Z��*-d\p��SV`\� e�$dU���Q 
��fks�ߢf�B���?т�����J� ����DLü �`Y��Q�3�t?r�&�.�y�&"s
H�-�G��"p�ߚ�%~��;�UI��C�Rbp�!e	U5`J5qn>%iW*}F^��l���3�㪊d�4$�LU#M�*dd��Qφ �L��H�9�g^���~�U�(~�}&�՞�N~~�/�14;�%��F���mh��m���9���m�I�ǆ}=s��Lz%�t��l�#����v�봼n��my������[�A�;l��n����b��F��מ��/D��֞�%p[O�A����!*P���`o_�Ns]@�'��M��l:�r�:;�y��N�u���/�"=[�W�®���Yikɒ�)�VZ#�h��o���R�% ,��*B�h�.b��ۀ-^{v[�C\�3��z5��pP����+Ն"v�pxFJ��']
@Z��b�R�6�ȑ�L	�v��Ki�y�Q���}�����C(�<��>�~�*��N��N�47�6Q<S�(2 AO�|�0�ρj��v(��	�6�UQ����C]@.��D��1�Au3�9�A(��+�5�M�n���7�1�����9�7�S�	r�p^«kv��Jl������]�ݣ߼����>�� /��/IBr��4�cqeȾ{��� ۡ�������t����Q����J�y��~�c�����Z�~���M��?���(*����
nDv�>V�2�e%�ƴ�FȦ��Ocdʷ�H�@�$�'��1�> �� ��XJW"��K�T�So����.�d��#d*�BF�}Q�F��0�)�(R(5� �Z���@}ݞh��`J4�ﬦ���ƫ3wpu�(���䆩�tQ�P��R�;|x��K�f_�4֜;#6²�����:_MC�-���b����9�Ϳ������Qn���`_��%<���tTRi���(��u��z��$Ŭ��
�\] G���;  <ct7e���B�'D�w1������&^��2!�gL��s���ȿ$�H�"�DND8=-�8�N�e�~k�<6�+�,C�T�~�=ߴXOꎦ��+���XŐ�W���Z4�K�4�B��"l������d��d]��[̧'�u�z�xMu]?Xpm�]�R�ί�b�q�C�-ȑ+�����{P�����h�[z���́��&�g�V~��T	�&s�؆���B�d������ls�TEJ�|*nk6* �1շ�F��9鈉=5�*�����%�V|���W��V���r'�a��.��f:L��p��a_U�\�"*�E�$)�k�Z�$��G����OW�0uZ��a*h�Tq��k�8�����L �������`�:@gU1ͯ-D�����x2�Bُ�3���ϰ�$}uA�=a8r��S~`��h��ˆ������ݣU���z�w�S��S|g=�����pg=���z�"`�==!�{�d��ewOw[w�S��z��YO�;�i��zrY�\��O" zw6Խ;�i��z:����nC�!�h;���b����^�,kz[�[����zC�Y��[��/]P��OS6�����"���E��2N���%��d�Z"#��OQ��?g�]e��6ş��B���0�32y'u�Q{�� k������kVL��	ns�t�fY �CuT�Ⱥ(��+�ɗ��/    ��/�_Vz��Npǅ}n�+���_�;%:N���ľSb�%�:}Nf�z]ݱ���xJ*0��pV�AP{u����	o��v���wR��VcХD;�Mj�Dx#�!]u���_�b�6�����Mf5O�J|��� �a��8NC��d������ѓ�
.\W�����d@]*��]���A�< b�o�9��Pmn�J-$bl���b�]��yu��sGJ��)�gx��'�j�G5�f���FyT�<�Qn��~�F{���G}ʣ>�Q��O�N��'ʙ��5�0���d���wڔz1q�j��.Q��b%�V]�4W��J�WY��L��J�]Y���*K�6e���,U�������U�ݤ��{�B�w����Kϫ�n����֋�߻6�x~3D,�i�\$?�Q�,0�J�q7F�aV����MI�qAàM���$��JQ��ߧ���2s�"�Yǰ�z9o��Dw9Z�޻����(���E'v֚�ƨyڔ�j��1�f���X�sjƲ��eq��P#��.ZKF;k���/Z���:�*����NsԌ͕��>��H��DC�^;{�q?�P��wY{^Y��T�52���~�"Yy]�p"ʜZ��j?>����+m��^P���:g)�Jr�%��@dW1�25�+w�s��l��'#�/5��`.��,��J��b[/?*K=�O<}�	�v�{�
H���F����:3��ι��ގ�`DOv�a��a�}���j?}v�P]�=aΚ�����J�o�2a�[��P���ɔt�(����Uߦ`�۷q"c7�
�k��� �>��4�m�Q6�O1?x݂�#�i��{|B�Xl �;�hp�N��èZO�� G:0�����]TFr�UWm�gs���Z{�Vt�&�4j�-�c�>�%����9�מ�!V����ʝ�,�ת�Y2��T��t�EG�����~�iÜ��{��B�
���y�r/̼�W�l�	U7H�<�U
�����ۂ�,#T����Y{�ۙ�������ܝ�f��;[a�7cB�V>8���+*�H��<\	��s�� ��m��y�v��N������й��ͥ��Wj�3w�t���C�<�P����*�B�0�q�2�њ�f�{��w�n�ҵ�����N\�J����'����O:�w���+E�؏�*G8V�Y�	)�:�E�c(?�X��C�m�Q�'S��;�=pܗI:
&6^5�K�<��gU
K�G����΢tsʽ�����	Fj�V>�4K�"�>�?/0�v����L�;�%�OF]�5ZXgN��y	�@>�@Eb����l8�:
2k��96ۏ������A�bYI�ɢ�cdP44^���8N�p�XU�Z@B�$�g
�hQt ��x2	�~�^��ďT�G������<̀1,�����7w�쯯1F9��8l?�tEݹ~0���yD��#&�C=|�b?:��z�<�x�����Xv�D��cO���4�A�;P��h�p���V�ޫ�u�~�r�QE���ķ^I�{4�T���p�� �Nw�f��#Q�)P��_w��Q�����m����Rl�2��vC�ͭ:�['��-�c�}AQ\�`�S�DM�Q�,v�2k�j~��V�0�o���OH3�J�L�ǉ"U�b|�%_��I�٧���B�؋4
��HQ�V��m�)�L-����L�2�R�źyW�D5u��Xˉ̦I��xbH|�t�o(�t�'̕|�;�:]V�����=�Q�:�/e!�"�to�?�n��:E����}T�����<+�x](�zAYV����0��_0�w�>*�p���2�>LU�;�_Xs�
�֣��޴<Ps�T\9�Ey����X�Vq���`*T��.u�RF�@�� eB����k�M��)�4�T�:Uר+�oS��u�??uă�=j�h("�
���S�����Ӌׯy�9y
~�Z���9�ܠ=��*A!���/���~����憋/Ƈg��̽�3����n�H@l�3�/vv������)�L3��Uz��� �����1��sL�^��p���Y*����"x�����r�1I�*�K������'jl�E�~�x�hPmI{�� R#��r/�^�7���pJ��3��Ro�똧�?7h��z�ak������M��>���tnҼ�z��8�?f�D���Z�!��iH��H��X�;f��Z&�~����4A�i�P�U����[k�P�s�"�ᄾ�S��ӱc���7vX��J��@�l<�s�ɒ��X��^L��cb�Ĉ�/Y���5ŧ mMĪ(���	�B���q�K��D�t�S՘��9pA��$Ϛ=�������>g\wX8���1�:�.UI��忯P�-!����ΘZ�]Ӷ�|�d��N�i�1���Q����\�����V��5�Ω��O�����)���D͆���R�-[�����r��U-�0����R�q�m�W@y�z*�Ǚ��"1������ӈ`DY��t�0rK�b����c��2c�J��(�1�F���nm�K1�4��+>c��r��one��#ՠR���(q����/'gZ���l�)��A8m2iy< ��JǮy8�*�46�E	��CH����+��t����{tx�v�U��hn���n��Q��?�[�W�qԛ_�}��uJU�ױ��ۓ�`O���G����r�I�z#���wׄ�X�L��e����ƽR�<����\ ����>acsN,[y�hi�'��@l#�7�;���'�m@�tJɨ|�+圆�I�ţ����d��Y�F �N��+9 J�
��7vA�Q�<���t+7ӻ�/��n�S8�wW�i�78Ѱ�n�W�r<���d��?�`(�}4jWq�����:�����<�69>~|��o�z����"E��N83w���@���Wlg#wA���ԑ�_-d��nm�<�D:�9!U��4�%K�ebs8���ܨ59���P.�%�1Z�ˇ��XCZ���!Y|�,<wv�)�B��S>�tF��=�v��Q��*�i˞�g�0��d �{���w�����7o^�zMV��B��A����-$���R���DWŦ楖PMlC�)��.�}��u̶/�p:�*�PJ#�Gu;�[A����.0X`[\E���ͩ��uz���T9�*�[/�n�'3!�c��F�_TΓ\S�L�x�v[+�����^}�I��y8�nq���'~��B�Bw�-	�@�X��6���z=F[Dnc��U��-�5f!��"���K���\��g�$�X�<|�m��)8��d�b��[obe����/FT]�p�S�i��Ź�!�/n�W�r�봫6�n����7wZ:�*��sq~IvU)�;ޤ��B�Y�ƃ����#��6ِv��&,gb����46��l��*ֲT_N�3��{�Ea,����m�"P^Jά�а���A�N�;�83��M��e_�3�!
�oٔ'zq��u�:��������@B@��Y!�QT��e��O'���sK���^�:��A�1���+�y��~Ɩ�����d����Ubڿ�݌K�Szb�ݨ��ap�	+n������6&�P3���	�)A	Л����&�^W8�p�vq}�iؽ�3�%{r�5'���l ���7��WO�����o���$���QP�
�x0�&sl���ܦ�@U�qO��Q�Ma��7�f�ˢ�9�w|Z����!�CWO�=ۛ��jK�^�ν�9-}�Z�=���)�����i6h�ͮ��USvo��"V��=o�M[�ٶF���wܻ����=�q'����R��D��K���N��TF���ĕ��y�ϙ�{]���/3'�٤u�3���1{��L��*^@ds�T�q�|�>Hi"7o�����iW� 3h���Z[��k�&�1�^���wc��څG������O��][F=�M�LM��N� �kэZ�DN�M���[Kp�l̗К��6�	��LΩ[?��|�¶Q�����Ҏ�H*�d�U�v��    ��xzT(Z�8�0Ȫk���������s��F@ь��CS� �-�Q�u��㠱	K�.:Y��l=4��(ĥ��,�M�q�!a�]�<'�4�XB�
={��_`PN�I�6���}ӑ#�4�D�������k��L�悕��)�/d{���V�ѽ#N4�?�䎨<2xg!��$���+J�፥���y
W���_�7�s��f��L�v�q�s��Q�+9�?'�F�d��dj5���6��Y��(�a�޾�q�rN�&x�r}p�"J&��@M�PF��C'xq�Y#,����e�/Јǔb����D-W�.�M9e
��/KLu�� ��)���n��MC��`�s�J~�&���4زd|9�8�YD���4��VD����Y �㌍U]�pqRwڬ��)Oq�<ϫ�V���d������۷����cB�:�x�*��?!�S�M�����
�Z��6����
_���1��ک%'丫��Q~8�f���W���^B�o��-�*���|UG8�^���|=�Qȇ��ē��x��뵓�B���\S���6���)�`�9��a<'�_j��=tkN;NAT,`�j�c $�I��O?#���'��]���fZc��Ub��W�+UF-J%�+&��GwQD�m�b�f��m'v��-�M���0�!�a�C��"0�R��`K{��X�#�'.�$��)u��(�x��*������T\�����:�C�����?`L=�$�c�y�K�']In'�0����
�;��M��`�TCQ�Ȳ�@�)�:�}|�Hy����^��?}|��]�ɡO������7�Tʉ��8��8���!�i�3L�҂D���ݩ��_��T8��ʱ�mH����8Ja�[�G#Ç*�!����,��N���L�� �Β)�,�0;S#vW0պ��h��Η_�_���>_�^}-�8ň��*����v8�p�I�[�f���W��x��9�2��2w�W_#�8�P�	��Ȝ����9G������`���R�N�HX1ͼ���nk�s�98�t����J�p\+�蔪ǂ��Ģ�
�(�3PZ�����{�79�����f�h���H�������H���7*���)m��v�I�L<j|��תcr����g�;
�;���i�Y����K��y�g^z��j�KG �ܖ��*��8��jE�qļҝ)U�U��_JH�ES�k�L�à;�*�"�M��<^�YE<�X�c���޾z�����/?���	Kz���lE+����_�|%޾����/�?�~��jX�+(��ua]�G%��#��������w�C���<~�ť�O��<d��5#���%��A<�����׸��/��zq�P�k�RF��	 ��~o������̴��В��2'^ ����c_��+�����O���'>�U히�rVk�VE�+ĕ� (P�
?�!�*3Ā�TYD���:^���f3g���Q�	q�٩h��?:���V
������h�CK�H��~-�TΖ������u@��999��%]���T�$���laf��&w�l0p�ob>�9�X^�'ٌ�t���N�7��E��q������KNp>[:�2�FI��P�$��Y����Ҟ������
o���k�Y�Y ��uk�[���G��\Ef�Q���dM׍�:�Ԟ�N N1��k�)au��:iC� �ˌ��>bM�g�Nnb������;��q�	6
b3�ʬ+϶(EUU4�0Z�i���\p*"�F�n��z�TyA'����`����Sj��=I���P��y����vM�wx���4�cN�pAg�+�_#�㯈	�}ޓ��!V��bVJЗ<˂B[�5��־�i��I�(���Ģ��C�����$�h2�s�Ze*�e
O"ɶ9*:��`.ڪՌ�m4�"�o$fQO��k�U��J�:���!��0�c�F�I=#)R��u�Ю��������PmN�n�*\8�)���We�|�1�sq�������9fk^4*f�����jaB+z���2*L�F��vu�M@Awͤ��Hk$`�1��p�E��@��f��mV����T�X�D�h����Y6�;c�5ҋ��"('���C�F�4Hr@�A��c�k�\�)������S��ʨO�&�4 �̥�rB�儣��fsÙ�N&Д�9��g��i�c��E�WM�O����no�d��{Γ} �8t� n�/bi:��{v�o��m����p�?i���cR��b���Ig�b��� �b�.�[�uE��<i |��f�A�����8�^���,K#�[S4b�h�;��x����>iV�.q���{���:2�!������:���S�g����Aj�J*�~��ͳ������8�����GE���l��6 *,�.kz�	�,�5�k�b�k$=1;�p�������r��	-�J�J��ۤ�f�}��~o5�BHh��q
o��8u���H�d�on�҉9�>�'<�ko}ʆ[Y!�rv�Uf�x��׍.p(/_�$�x��	J_v�x���/�y4v��Mi���MS����|5�Yڍ�Թ�����)����C?�$�>��4��E�"V7����M����'#i�R��&����G8G�k�Uh�崜��Pz=<��.:�f�uxpp�����[d�`!�N�����v�����9����$N:���ag���=������^{��'�������Ag���������=�t���F�p�po����n�w����.В�޹K����9�t��Ra# ��l�d4�J���B1�T�<b��>Ȯ"��y$�W0HWK���0�4	���	`���Z{���r�!3�|�BC_��������ᠦ���9�\S�n[�vA�i���I��:HF���{-�/Z�^����-R�d��n:��p��Ç/2�k#��4�L��.��R^_O\ʁIά����~��{1p�~r�l/
wqER�ЪDa��o�-J��)��N������<�D�%䄁H��V�py�e�ya�o6����1jf�8.�ƙ�C�k����9�u<��A��`�VV��O�I�'?���4M�~��}kC���%����R��m/�6� �s�x2�D¯(�g�����	.�o~��d
�b�� �9�BQWV���m ��@@���0-�7O����'j��6��B�� ?.��Q�C��A6s���o�:�lX/�'^���a
�@E�2jap�t�`јe��㔏~N��2���8�?�6H~%N �
"Ģ(����l1eˁr��k#*ld��9�r�}�Q�co*�(�RZ)�s�f�"�_���d[�s�Mǋ��iԯ���qj.��jؗyXM��g�
�p) �hE�撯3��#�b�t��UjFS�?�4�m2@Q�*A7�����$��x�m?cy�8��Yy��>���d�?���]��b�#��]�
(���ğ��<���-9�iG��D%&׈\���)�eB����Ԗ#ԍ���#@�NK�yL��_�A��������GE�	,�	P�t4tV���(Q5�_1��}�#z{��71�3Ӊ'�� ZzpTou|L(�5�7 �VW�d߲J��B�%�|�*�zEP�r��n�S���M�^�үS���h0���9H/A�p!�=�a0�O��=x5�K�	�a^l�kr0''B G*:��bFE��7!v�y�O�TF�6�d��D�g����p8�Y��G([�v:[/��̽��H3	�W9�Mwm7_�c\�+���d6��Ѿ[�Gdq�����m��|�#���^}�k:��}!�o���}ǘU��Y+3��Kk�37�l�� ��[cF">��N+o�zn��ng
�gd�#jt��X�8V5��C�XES,��a��Q7��`���\��1�B��Tṋ!�|@[����!���s��*:Xe+�2���ִx����,us���J�7�H�Jyl��,��    ?6J�v���[E�����qe���5g�Lq�e
6c���<�*���Ȑ�wk���|g@�H��%=�\:�ދ���p]
d�鎡(&毆w�	�o��-��A�����t��h�^]e��P\5L�`b�^~�N�X�x�0D���Ko��
V��A6"�1�&���I�F�q%�I�H�I.�m:���+*ŭ-}�t�ʉ�"/�j�_uH�S��Ѵö�T�rr�ĬAj�~hJ}���!ڊ�d6�k�OJMRn$1^2�(���$4>휞8�?�ØH�6��Ɓۧ�ڍ��,�r1��&� ���҂�t�Q#��o �FYo�lh�K��I)�жf�HJ�R"6�ER7�Ԓ4c��I�QN�Nĕ���H��FZ>��׉֖)k=}�R� �Խ����4e�b�!��U��>��"�dA������% $T(�=��Te$�,���P)�'9;�ދ�^�Z�+��M!�A��9�J���J����`N��>�������,0U��~{��ʪ���r]9P�t+	�ߡ��/	���bݦ���S�M��RL`m\��m�G������2Y�Z�e���{��'t�S-�F�/�xN���:^��;��z�����ó3M�s��� �>��u. ��[��o��3P%px�hM3u���H���;�W��l�gvJd�9FL7k��ϱυxA�$m� ��o}��Al����BqX%�������K�t,]?�F%_�`Y�QA�@n IB<M�
���"��		�d�q
�2������	��ȟ��
k@�#�C-���6�%�w����}D��F׼'��/U�*�8u�p���Xx���w��|�P�6p�H����?��aJ5�T�JY�cG�xW���9��[��7��P&]d�B`2Osxqʼ� s�x�9�������a��r��e����b��O-4�}W8��[N8W;^�m�oY*�>�UdAlati�i��D���;�+�ae5P����(<&
���t��C:%��}n㳥-�l���n�#�[�̿Zi=7s'0�})�W�|��m倃��,Gk8Q�niS � b�+#�<��{��th�$V��dC���a�����Z@_-���Lnё'��'�zFC�P���M��6(O��~���Ԑ�pjc���>�Q��0�J����Z����$c�[�	�M +�KZ���}��h����;Q�jo�)�U���Z�(C����#���G���P+E�a�O$~�Vn��,���:_@�&�@���a�?"Pks��N�z�m�xyn�p�{�)���B3�WI'%7|�����\���{E�W�`=5@�ڎP�MU]�j�1�íWA�7qwOa���$�U[6�����ev����6��4�h�0'�
�@�%<��2G-+:M�QNd OࣾL/�зLgb[��#�ЙL��k�[0 &�Ei��I�`�Ls���M���{�0�GTR������)J�W׾��Q�.���N��yb�{�s����h���Km�������g ��w=� m�d*�q�����˅�m���o=�^6et��X���$A�@��M
E��a��px�I��ָ��T:��T{9BE���S��P�i���9��Z��p+S`Sܸ�	�<Q&pu�֭MT��#���2ك*8הz�0Hv�|��&gcU�3�Y�f�-����m�!nj����H�`���vc.ޏ�JX�uP�TիvK?u��}���+Gk3q�̇�����=:AT�ҫ��1���[�z����SÞ��s^�*:o�+�{��j����f����EG����flE��Z;\{B����$לT;�൓�ll6X�T�wc5��?i�]yj��L�{��G�k��L �A����a쒵J׻�#Ie�9ό9�mHzv*�hn�Z�����CьHW����QU$�V�=����*��&�DEH��c\~��������-�6���<�������/���h���&��y^KU��[k�n�U��V��Z�wתݛ���e,D�Xk�=�����l�(�l�dp�@B��m��4}�@��#�;y����o�W��^���ac=�X� 5��n7˦�`H��3sc4ݐ�(�v�F#�H}�s�o�.�[#�p<6}{�ګ�F��B�V٪K�b���32��)_^�:r��xk�\��W��V��r��N�N�`g^�^�`o^�F�P�����+�;[��,ρ�)��˃8��Wj�����Rm��=��B��ƫ^S|
�A57�l.�"�G�ȐeB�G��*�s��v���5n6��y1b )-�S"�0��+ך6'�¼iN�or���*�.�6���m0W��:�g����UH������Ol������-�5�죿)��q�d��CA?�~jf��=}�=��3A����u�y�#4>��9)�R��r�h��d.8��#�z\_�f�u<������TA4�C�Q�&Tv�rb���i�W{�k_Ex-�z��d��y;���li��|�E�F���2��.��$��.s��˜��2̄.�_�Z|>u"����w����+3��Veǋ�Wf�� ��j�����bS��X떖b�M�e�fSx�^�!6�Wه�1�+��a<�w9Z��t2�i�z�<}|����W�E��אּ�K��Q��pa�6_}� �H��� ��Y;i힭���:j؀�F1�R*���toz�{G���qU`����E���W9��s�h�;.�����w�1��7;�ޚCVFs��L����ؽ����\��]�	R0� r�#�PT&�K�����}�X�`-F��>Y�TI`Y�DR?��ճ.ݘ���T��g_UUюt�?�F�e"4�v*��	����r���|)� "dK�*J�N�%
�'�0�M����/~[S+��q�Q3��2W�<|�55o��T��S'*9������5e;���8�b~�����p(E��B�R]p�P}WIV�d�E.�>�ә);.4���lZŚQLS�x�Z�`����s�1'\���7���+�z2�בճ����ZqD�G�r�HҔKdhɦ���n�IE=Cy��=�'�s��T�2�0�}P�9��0A]2�)�%L� .�6ڥ��y�͙�\y�RJG��e�	N������qk�hx�2{�ڲu�6���ĉC�����7���R���J۔
$�V����j�1�!꺮�EOe����_�g���6�g�������B휷Pg���\��f���ɠ�x�+#���r.v�;�Y#�a��ӈ?C�nzSx:i"�Y���WY���D��������e�«�
����;Fna"*?r�y ��5�OV��@��g��\g�9e����Ju�Fӵ��0G�v��X�eL�Y%Hy?����X�U�p���}��o���LΚ�🾋#
�}�ϪW����̛Ɍ>�GOK�Ą�D!�0��F_J��騋^��3��	3��:w��T�G�sL���D6�\5L��q�r5Մ&�0c?��s��䢿���<���}�k{��0�/x�~_��+5d�8�M�1B���#9��Y���?��)b�1�9,���0u��.�P���728��EE��۹�HB�	8� 
��"=ģK瀇(T���a��mZ^��>dϨ�qL��ݩ�UzYRC���qQv._snR��rKR�/=�O�t_Z��_�|���n��\�1�Q~��8O'�w\���BU-G�YA��Y�D&,�P4?�!������7kh�=\L"��c�F%����D���^P���,i��y���]�k� ��`o%u8q܀����2����r���J?T��H<�y�ڙ�%�b��H��SJ'�3�s�rb�J7A*_w'pj��}��L�f?�8�3��},0�Q*�Un�7|Z\�6I#�,ƫ��ذ<n 7rq��S���T����*�<l�R]����v�T/(�^q>��8�`�8��=m��d���HP IW���,�i�Al?X�/�Fe�(��S�Ҍ���(6�{
�b���,�2���a�E|\Sۄ�͘Sb�/{J��~��{AT��!���6zu ���    ��bb���1xH�mv�����/��l0�c�[��Kw��nf�(ƃ�4���9���!�Jc�g۝q�4�F*��:>�sN�t�_�]�I"S�~��1��wta9t�����,c7v�'�^2�ι�����y�<@����j�R �J���`Q��0=�u���"��]��L�8F_ٯ��S�T��F��k������$������1��,�c��S:1!ìa���4f����0:N�Ƀ[�2� Xm��p���k���2�Qk�\k�t�]I9���j�-좸h�LȆ9��l�J~���39|�
���� y���]�s�W���k7c�`��խ2g�D��hYdU��z]k��V{�B�A���er�U�)�x�;<\P�(��(���Z?B�m�<�*Z�����GQ"p{��%�}��cP����Lw�ts�}@�^(�� ����Hؼp�X,�f�G׎]��i��.�r��"���S_�E�KuU�X�����-�x����[�6�0RSU+�&�z�W��������L?���Luf�5�� m�]Qj3`t��.a�sw0�h��
�L��`�M�<�ƀ��[t�q������}����/}�Ç���]�
/�ݱ��(:~����-<Z��� d˘��	�<��3V�D_��MvjG�i�o�2�rkMP�M)Ѷ8ʀ�Ӕl�U��]%�`�N����$Oa�A�ɒ}Y�9o��2ןS�e�)Q|t?yơu4_�	���b��a*O�Їʎ�+�'4��=�XE��Ȍ��/>&�YF,���v �7��릠)~q���18�m��+r|�0����.9�`D i����S�[��ߟ-�{\�L��3(M�eT�j���fuoG��9u�N���^��<�Pxۙ���Y��1��~L�*��i�"f��{r��k_o`��r���s��y��gDP���!�S�#������z)£�����vx�������.�菓�p�9��2}��_��1j���V�$;y(yA�Cު��N��BJ���먔|�$e�����N�=eUE^&zn>D Ӹo@Nt�ȹ��*gVM� ��1��
�̴'�� �Bc?�@����vk��@bn��w�mb��@�&<���*�T��+v��w�[�}��~����y�V�	R{�0T�lr����j��Oö�^���Վ�g��!	��t�~�^bB`�B`���R���f�|�:�?I�9
�0z�٬h��瑧�^Q#�J\ē�o0LG�ժr:el�k����7�e�H���m����w��W�ŕ��tO����8H�(�i�r���҃�.�(L9��.�(,y�S(�i�p6�!��?NMI��E�p(����^��WA,ĕD)�t��Y������-uL�d���ՁAQmǣ~�d�3qD��۟�g�^>�,�4���B��ʌ]���S\���N�|,2z��g�A�,� �Q�z�}[��G��b5G�(�x���_��X�&�ն�V�p6�����m⤩�V�Va���V����	C1 ���w����M��5S%�:�)>���ukuu����n�w@U�TP�i���4�Ҭ��5�&�ܶ飦N�b3�E�t�ͨթȫ�p�`+2\!�j�R�EW���qtS%�&��x�(.�����Kx~=O���u�Se-�.?����j�s�SX��P���x,a�l�s���H�@�@BL(+6����2喁G��lC��(��JMǹ�/d�쩩0����g�$g4O�?�'�vK�62,�}�Ir��,�������߿��޽+������"� y]�T�����t� i�N�D98�S�?��`_��u��T���|o@�Iժ���Dm4͝�����>���l�󋃪�a�jϑ��Y��*���
���I�K�>���D	A�χN�s����ؾ��tf����dc����Oŉ�M�Z���J�$
�/�}�MH��/�N��^�
��Uzn�N���� �����u���?f7/G�|<�+��J�X�����>�����w������)㓎��9��?����>�wR�+uK>/�A���I)h���b��Y%�[V�L�&:��oܰ�\n���b��W���� �*?U1�Bg#���S_|6.�H�2ZR" �2�}`��J���%#.�3k�A`�==�[1i�>�o(⥸�y%�֋8U�_iE����9�K?Jٖ���ɕ�ٞ�//�(�9�G��]8�����ܶ�x��xh%��
i!V�ߔY����r/5(pBq��m����5�J����8�B��������E�MP��nK���5_�_�2���H�W�g�5�8���i�0�Ȋ4�tUBN���=��/v�z��H@Tjm|��)T�1B����~NN�j�6��m�*}@n��A����\�T_ƈ�@^Q�TX�3�'Le��ʬ�&*G��aL��[s(}��L	2}g�­}��5o����W��2�����]P�fƳ�Ӵ/]Ƕ�+���e�&����EY%E���$�[U��7"�.ӑY29J;�^~�䁖lH�|����+�@J���9�ff��&��Y���5k�&�?�Z�����0 ���mRl��/_���B[�Ҷ�~u�:��Զ�L�In��2�^?�b٫}���w�!ˋ#�S������t����H�[0^{>�����t[�
2<AŹ����gú'���f�)0eUؒ���o��p�cf.�l�3�L?�hf�������*���Y�&��ԥ�sn>���}Vk�����;����}4�L�vU�|�o������}�<!�����;�00�e�P��Y�^ԙ��b�ل�\%r�&S��0�4C8����f����i�k~��j�W|��|��CA`�3^�ӌ���C^���*�8��W7�0�N�\=�PiQ�Ң�)�M���5w�^�<��Yg�+'�L3m���lX7��2�$��n������A��%7�w�K�Z���<�nd�DO�;��fp�S�X�J�{א�I�R����K�r3a֌�7ɯ���JR ]94R"L��H�� �**濞�+I7�Jȡ���Z��QlK��F,s5V!ͲRItg����oS��%�`�z�Ǎ����?���T���r<7��Фι���X9Y�v[]K�d����6���ΜsǸ9�l:��Ej�=e���g̜N�t�C�)	��WG��d�0y�Y��Jp��'x!��4^�/�n�o��<����Cw�j_C�NdP8F/����o�r -MN�j�[O���o��� (�����ҋ�.��o���Ȑ��>��6�kx��v�u��d	G�U� (b�Ǹ�6��r�뫴e���d���Z[��)�'�~�0�z��M`�תy
��:���SeΜ�ؤ��n�%-�iF����4{H�7'ٲ$���}l�����I����>L����>5���H�	�ۀ��J��X�Z�.)/'��Ky9Q͘�vMHv�t�Ky!d��zC��v�C'ͧ�	��E��\]ơ���jжa&�!��7�a��~"(P�W��aU����A&�J9�8cc>6E� #���$-��M��qD�O)\|�C���w���i٢���4|�sv@'�u��R ���]�T��0���be�g�4HM��c���	nN�,�d�ʌ��s�
��D�iV����ʯ�`�����V��*�j`������f�5C �r��C	�K�x0Op�F]3"� ?v�?��7d�ܕ�S��+'�m"�y<��YR9{(��j���+z��bct��6iu��tk����W�bN��U(��L�!Et��V�q�Y�#�$\������pu1�����};b�_�!�WhU�a��@4�SՊ��.�+�:O���i�4w�hCш�t�����m��fv�����P�{�I6��C��fB��s+��^2��u�/j��M�	l|e�	�h�ή_ F��KY�VC�*I���A�Y���d�ȣ�բ�*6�6�t�    U.���\;Q�$H:��b|u>�LFQ �_f��:�ᤊ:�!�L�g�ɝ�#o�U�j�<�m�kr�s`��+)#��I��D
�8�׫X�R�GHk�A6 9��xNƻ'ʗlAf ����:j�sS��QI���@��A���N�à��i���y�Hہ\#�*���W�.�M�"HI���:�B�FS�J�W5#j|��Pf�!���ϼޗ���芔���2�{�Tt�8$C�,�G��q�-�����^�d��F0�Ԍ��P��?��2�Ic̡5�\�3��p��<͖�$r�tn������"X�+�wf��}��A]V�N3�����+��t�9	�Wt`�:��Jt��ʕ �ďb$�-Զ>)��(!e^�@X�wN���u'�;���[�x�4����� |Wn �Z HE������GƔ�R�\b�rڈ
F`i�@��y��w^�l�*�,K�%&cU2F w�@hhQ���X�ã�d厍ґQ</V�i:O��d)m�yJ�^>�pj�,�S�-�Mx��i.�jӏ�3�  �mܩ���$߶�m�v�%�!�+T5�]Q����}<���i���:4Bp4�ՊJ�������);V����X�n�? u���_MP0�U�nؿ����E��/J��勑����
-4ޓ���Y�����۩�3'w�c�N���%?*�nv�Ͷ���YzS�M�cM߅��BtZ��]�@, 2������K�c��ca��x�K.�G�#o���h�<�0!�b�~.���j4~]�X3�������S�r��֜"M�ܷax�$ �ݥ߻��G�Mֲ#�<{%E����'r�Z�D�.��#���X�~*�K1$՗ ��lg�6�A禨�H�J��g -��~'i��r�h{���1m��ʛ(�Ґ�#'X��
�"�u;�P��(��6��	�T�����V]�;����v�W!���c0�E��S���N{x^ōa �5���PaGG0qr&G2�)�R�ڭx���2a!���{�>�=�1b�@��;����S;��	���i�OPG/��g?�� q��r�z��\S� ���u�[f݋�H��L[��b�ġObG��ֻ̄1[m����}��3M��F7ǋ�o���k]�A�xV�yy*ϧ!�N�S�d��[]x��0	�C^�W >��H�f!UI�va�#�1e�,T],�Z�� �T��uڵ#Q�.�x�O:�I������S ���>_}�����w�6h�șPb�ѮK�U�d.��S}jd��/?jCh��L�Y���� �?���8�?��k�N�0d3<����B	J�FW���{咨G������g�שS\�|6G\�y�LQZ�֏L�슩�u6�N�xֲS�����T�R��	c��Q��b�w�O=gl�:�O��W�����Y�UAɋ�9�sx�"��R\o�6��n�ܛ�ˏ=i�#�?p��RMo���7ʗ2$��"��}G�s�D-��~� �+n1bv����R��Jai�h���q�����)ⲛ���|CV߮|uҕ�F>}\6ð'f�m>(��OE9?�MB?�m
 (���Ѽï�6X��g*���2���5���-�8�*��l�2��uTᵫ� �ӱu;6�#�[]��`bAo"��6 ��C��,��$DPj7���2�Ɯ� ^�$�5y{��Q�u0[�/�>�����,��f���'�*{��������6I���c��Y2�SA��^�.ra��+:��ٷ�o� �oH�A퐑�ڹ˲���šR&�I����tᥚ0l]�58r��
o�o�V���b�t_���K�H���R�đJS��8rb��S�`��i�F ��C*N����^/�9,��a��Aj�����W���;C��nJ����k;��6�7��Uise������V�<�f�,Is��^ږPF��^�c����N�JC���l-�g�U�E�u��#I	���(��	�o��Fk�\�Zs	�9��w��>�tG�vڐPA�_�助@|Wo�W^
;��B��������ԁ��!�VC�(��d�G�`�
Z���%�Q���,��"���y�q�Փ\Xc�3�(1����X�W�9�}0�6>�l}��*;#�QJ���μ����U��3dwn� ��&��D��A;H�$Q��<���7���a>	��0����!L�?�q=e���g՝ ^F����ϊzi��:�0��_�*\W���-�.T��#J�̉�x�e�v,����7����4@���ݍh�V�6���<x����u�����HRH���`�^Q
�xK1�Q
ew��^��:��w2�QuL��R�_|xj*p`H6�:�^0���<+� ���[܃�1��`(�q�:��9/UE^���֌e��TZ���Q2��܇�`�w��U:_w9�*�BD�$��8��2�r�{%��Rz
ts�Ν��yC��L(�	d�B�2���i*p��J� �(�9���uLD^���!}�rg�׍Mz����4�1f� 
���2�2q:�kg�����z'Ծ36&c<�r,s�2+A�	$F�G��g"������ ��wuO��ߑ�����ԏ����m���Uo6B�jv[����v��[����{o�S�>f��Y"�3Aq�1�U�� ��s �P�A�a|��"�s�������y>�z��M��⽎(B�s6R1
d��a���r��&�i[�gWE��	�[m2����m�2�À;6��J��^�a0p5�*�I0�X+�O@��t�&.�Uz��\���k�k^ �_�\N��3�0[�-�6u?$�4�CsNfq�x������d�T�@�d�ȮǞ@`u�ŭˉ.��Bv��I��	��}��t���q���|����<KD�ZJ�K�yc�O%=��RN:tjB���k]�+�e�E�:�oC�B/���.�x)��$xX`�4�t�Z�8�5�7敼K��8�X��6F��������B�2A�n����6߹�滷����6߻���n����m��v�?�5_q�um?���Ӽ��a<���?���3��QO�6��h�K]}�D�����q�nD���ho� ��8�6�Í���*��=4�$>�M��Ѿe��qx�����ݸe֣q˜S���-�[f��,54�e�oy��|�i�,V��yb~�14c�MX�L9:6�z�;*_@�/U�D~��Ԝ�^udX+K��R���t�Z��ef���%�y����k�o@��M��zM�����g#8B<(�[_]��(�?������h�(�?������@�D��د�6�����C��!�WA8P?j"5���GM�Қcf��b�Jհr��%T'����wG���x���#����B{� 0�m���em����z"�g���gGa�~TI<�$U�*�G��}C�A*�%��C�^v"н����>--����G}��L}�Vt�G�88j�J
���Oa�٢@�+BcrӪ�6����`�(X?
֏���`�(X?
֏��R���(5?J͏R�FKͻG���*�� �*iG�k$S�:��g��0i2v�����n���?��b#��Aq�����Q� �?�܏2����(s?���.wu6U�z4����	�Ҿ�Q�~��e�G��I��U_'+q�0��rOg�qCh�ged'��~/�Y
YI�?����,����x�w݄��u^K����ˀX0f"��o��Z��<���nU�u��cX4��8���?���.��?�@�;1�r|%�4m�����Ԣ��*�lS��:���B�Z��W��8N���gGS2u[?���lJSo�lX�Vd^D*ѡ8f�޵/��B��#�w���I�h��8it��3'27e��tw��vͻݹ��b�f��*ݣ�	�D՘w��.�/KQ����-�",����W�RcstNN�
�('2*Q�7��0&��� �E�?����b��Ĵ�C��QW@-�R�9P��    �DʨV�b��E�� � �9�w�뾜�N���Na�`�_���{_�EW�"b`]���V������ߧA"S�4E
�?0���ħ���05aLz̔R5ti%�zdN������w��
1�`'����[�Rt{���K_��|^N�{���bwW�yZ��i�3ŏ��*X"��{Nʑ�G09^iv*���u��*G�_iT��yb�v=�2��ڥ7*j�z{�Q󗈛]��i�`�\�~�|jrd�l��ȉ��䘃Lbdu�=P�(�31ӅKN}d�7�_�qV��~W\�g���ʏ(n���t׼���?��2�F�*���5*���e�	��	��uO�{ZoE�oeG�b#+�wB�4q4������{^9؍��zD�;p1��*�*؈��t(�\�5ؒ:�U�̨��߀aRr�ޕ-�P����K�d���w�Ag�y�Xw��q��*����j��O�Lov 08��ɀ��fs`V@6��,m�9
�a֐�����T��/�ڡLIF��L65���b��l})ĖSS_�)MuRjK#>&`��& � �$	��Q<E��i>�@O#"�P�#ʷKz� �2,*��"$���D�̃�-��Z^��눂��f���:J�gS���̈́&Tو�8%�a�yX�8C�gzh/Z)T�s�kş s��\,��R'[�M(��pO��� �LhE�)�۶�Ƙ�`��mÄM�Hu��M9JV���`�~�q�1�xh^쬙�I��7�;�S��#qb�����dڀ�ޏ�?��O���'���>��9�jg�iX�:�tZ^$��.��}�;(�u�[N�ߧ@�	��v=�3)@X�GNYJr����0� ^��O�W���<$����\'��!��Sڗ�D��~0���:��T5ף���i��p�ь�f4	����f��+���_�_�O3Z����4�=�~�D��N3^=(�/z���4�ń��b�i
��x�n�:����r�T�����s��f��j_�V>�<M�`:`��$؄#�H��N���m2K2]ꔳ���X>eh��f��M�ܻa��};�}����qFK�'����H�Gq��$�#��8��L�����'�֑O,���;��+hf'�_��41����C��m��*Ii�Jcv%{R��  ���d�0���3�� �K�+>���"dK�I�ȅ��d.¬�ޭ���n�v��c���\�ɽ�:��`��X� �%�[X^_@>��Pr�@�ʲ5��s�O��~����KO��Hk���gb���|p�A?��,*q�d~��w
�#WL'�?Sl�4|�s~��x��6��f���N��#��d���Gl��Z,�{�<����˝�Sd4cq!9/̀�$_pB@ԗ���� ���)�$ߞ��;�fG�
E1���:�W}�������sł���^<E4a#�1B���=�
\/j����j��(��An�X-A4EuҮ1,b]aB*�����^�|L�UDܧtwT�� 1��cL� E���k��*�1��"L"W߹���_��I����=��U�}<�A2��yq�p%2 �Ȃ�ϩ�Y�-�SP��fb���(-��Yn�$k�Z�`�N��Z"��cH+�X�ɫg�[7D��\�hv_����Fp�e��N8g�]6ҩ�tm����?�9|W'�3��Pdϧ�WW��$�� j@�4�3�2U��R���s)b����]u�?�b��,Ņ�����h](�����FA=	� b�Y'��:�Y�}�I��>�,N���&��Wf��HJ�5���q|��;��TV�����W٩m�\��T��"��s�hAt�� PV�)5%֛ٿ���H�i$x�ǄH�D!���H������ŋ�Hn�����CB)�8���2��LBt�����$���>��>��{S9�Xw��5_MB�&����q���Q�K�3(�{�l�S6�� qp�9��l�U-�i<�F� �=�;Bn�B�Κ�!ݻ|:u8��O�nA[�Q�^�����39��@'=3eV��uފ#Y F�4,Ѿk��T�!� RKw9�k6�'��� ���͸��iՠB��-g��T�vz����	|�>�[K��/���6O`ö9�p���	�25�9#FR���0Z��,���I�ͽ���L�����eJY��#�5�PZ(j��,�^}̗��O����)��L�<���M�{��:1�$�������$������9��Ty�]f�!Wh�H6t���Z�.&V�G;ZP3�CSUݓ����}�6�%��k.��VT�4e.&���y����!ڞ���E��/^c�*�� xs�fq�l��8�����qm4�8|p���4 8(�@]#:�|�=`�X�,O� 8�k^�
��2Z|�T&�)F-�V�����DQ�Ər�[�@��a���#8���ϝ	Zm�P+���6�����>���f��u��m�Ȫ}�e�m�iw��{Z= [�y�:N��r]���RF˝�7.�/��W�һ�yW�N^m�3�gT�Cu&��(��qD`�.Ɨ�������"�Eqb��;��Z'3�@֜�K!��&��	(�׈�{Ǧ�;Ǧ񀵌�[V�(��ifؿ�L�����PT���x��0����/EH����$�3�{C*[�|a0n{���EO�a��j~������Qe������䛀���|�ʏ�߯�}���K�����Y��ޠ�4�2�ۦC�R��$� �\�K�!0�J|�'��C��D�R�i�X�o�^a��F)�7u4�c��w\|l6������v=�:�����|��-��k���ԕ+cۆ|��0��>�����(c�fû�e�fㅾ��ԙ.cƦC���f�]m�T����t�6n�6��FeS��6��k�l�Z�M]�2�7@�j���o�P]�l�B�T�ɍ�&.�6e�o�(S&\f��1纱�
��{2��*e��K��?�L�!���pK8�MG�A<�=$�lx]��H�VLfE��Dh���j�bwow�xx�G�!�|������=�Fy7Of��~���1�Ai2�~��~ �.I�������ߣPw�x<�)ԅ	u�����WGX:� �Lq��:�6�RF��.�T���Pc:��b|�a���Rf�d|(���t��dn`�SP��N��`�Tu'l��:Uqd|2�!�I|%��ihhp%�j_�V��6�� ��G3w���h��Z���V.�!�v���4ƫ�D#��k���D��R��
�2��h�'(��Oe�PhZ��SH�&c���pKOL(���f�(M!V@�c�$�U��^{��W=Ӌ�����`1R�����O*Y&�2�Ǎ}L�(�:���o9�̝�i!�ȃ061B��LD��h�GVOl:u���:0v`<��d힎�&���ł�U��j�G4��� !tO��� T������	��&	��&M�c�DY֟����518Nv���g��{�!ٸ�q;T�T7��:6��I���:_{-o��4���>�@���;�����嶍,�[y�.�f%�@0^Dj�S%[�YW��[q&���T 	J�IBC���ݭ�w�_�z�${n}@��L�;���sNw��w������ފ���y~^�`r�\z=�郓���-�_>�;��:�"�$��7��[�x�"�b��*ꨘ�f�zJ���nG���3��J�T��`knC�A�<�Y.~F:6t�u� �7�Iܐw L2M�Ț�uPiF�3b�C$s�#�iĖ���Q����8�Žg�����&M��5|U`K��	"߄A�R����#�vF1M���x��L�!���9H�R	X�Y�^�'5<�����c�#}gN!�&	�7	N>̒\/ �2��úB���E3m�ET�0Z2 ��1H�n��6�������:��W;^�:�Vԩ*<ҡ�.�T�X�����*:S�PE#�HG*�U�UqO�}T|�⡊Y��e5܇&�-��;�6�-�FP�x�x�"�qv����R�^ϑw����|� b�7t����^���    Ri1	���������ơ%o���!:t�D�I��q/�V��4VE�\�uW��_E\~��]]�_���<_e��T�u�7x=�痑�� �����t��]gt�0II�+�-V��q�(�L$��g�g�O��:��f�e�T~��>:)omU�r]f):��򂀴鵅4�D�b c�r��"j�t��+�s��L=�6�dn l��@W�[@("�T��(�p���K!"˾1#BmI��'�k�Oy��Q/���e�HB��8���xY�:��c���S*V�o�{�5���0�D.<��]��M�)^"XU��9�Ks�}����㉬WQ�0��:Tj�w�ð1�aޤF+˓��ջ��j���q!�H߀�Q�	x�Ɏ�B�I�G�Zcr�MR����^�#�D\$C�� ��� ��J~ROW���䘬Ŷ�:�.c��?p`U嬤�\9is*ҽ⦼{ͣb�@��$�չp$�����\G~޻:��Ǖ�;�:Q�0�ad �t�S�s��� ��CwN*etaG9�¸R�9~x�uDx�� ������D�;3"|�G�"��p6HWWt�.ɖ�~]��t�?�S��5-����V�/٨�So�� }v�y�>].�r�M6%��H�ƛ݄�~Ȫ?��kJ_͘,���'��]���B&�Dl�����p�hm���ƻ� ��xg�����yS��.oܬa�֏|-W&���~^��\Ӣ��@ŧ���[�^�³�VT�vX�G���n�AU;��Ǭ8ш�	��rp��N���NQ�I��̀���ӎƆךϦ�".�;��P�)�G�<�����8e�>���N�t<���V+ّv�4Q�E@�f������*i������fJ��_���y	�����1	�$s��+¿��n�#��0�s����wx$�FG�:�`�%α���P5̑3��
�n�	�s�hB�5e��� ��y���Ѝ���5_�	��������/�<(����ᬰr;��Ń Hd;�G�\�����_fY��[?V�t���J����IƆD�-�!�!h�c�'��bʶ�,zFT7~1|������ه-�B�/���R�h�W
�:|9�RZ%G�D�F����ú�0p�����g�y}M�'�V@S�X�6ǽ`����Qu�,J�_�9�L��U`�^뱯���}�$y坚����a���/遯��o?Q����¸���A�J���9�9jD�2gOԆ�Mk��˃xϹ���2���5����z��Z�� �$��#ۏe7&2��� ���L�D�TC=�SF���,ŗ���D�|�v���x����D�[���`Pq�+���|�Ucc��xuPO^R�}�G�P�kO& #�sby�H�UJ~D:8�llq%�6O�"B;��h����,
�I���)��h��L
����ed�z	��.�w�5��W�N��NȺ�.������"�!
I׹�'�%^�FҒutF�f@�,%�p��rhs�y�����oI�6#X�i��[ێX�&�帽��c�EҗI�mꏣ��#>=�-��l�a�)��^�1��J��r��<�F��2�Q'ͮH�Jľxbf��h;�����n�D�	Ғ��׵�\�[k�J�M�1�jKeK���)�ݝ�����";��}��;�ULۆȓD5�"�L��.8��pO���e>�~���V�_�i�ŽJ�=��m9K[SUGE*V֢4>�ɧg@
����^Z�LQ�>�,��%�V�kwRc>^�l)�"�؎�(Q�7v햳�-���ҥ�J�ʓ�K*篘'���_.^No#5O��"�x�/iw�"N}�ׂ�����jp�D1����S����z*�?���@��m��z���]h+|���h���@ro-24�z�>�
Xޮ�-t�'4�/>���r�ʆc��*5�ΣQS�F#O΍FO��h��?�ã��<�rF�S�dF�Z:�B�k�35^���"�d�=^�9V=6/�$s�$E&O3�a�]̕�Lѱ��wyQd�'r�`I%���F?g�I`��f�������ENY].x�-;t �*$��K13�mH&sRa�J�c�F����/�6>1	a%���?h�bzo���)�`�������*�Z��G$ <�����ޥ���F%�K��_��J;ؔ��;E;,��	0�p6&���d��a���&³i�`��q�~�' �����IAsD_bB�8�$"����C�M�����Nb��isS���L.&r�����Eb���{Q_�*��\��<7�0��C�6�?6���i�� г#�S�?��ÛD&�*��H�CD#w1;������>����m��T�c��"Q�w��:
��sp�-o�4$[���Z�xj;C������v����=M�����l�-����&��P�*����φV�=mnui8�D��6��d6Mb��5�[�5�U�$5�Nô��4�����T�g����$]�s�)p���|m|�n�Mi��Y�m��DT!��Cg�]��!=m��o&�1.����_���0��'P��$�K��a�K�H�J�'#���o�l�n��]��M���/�����.�$Ll����%��W լ����e���C�?}RL3R�@�Qt�>����b�=E���	��6����z�$
�?󗇷eyW��x�;��������F�__l���y捨f5�&��6vs#�Gh���t���a�����&���ש��Ia�Y<��}�7<ƹ�_��9I��l �>H�S����� 8a�n%W�tM��N5�mzS4�L��¬�=�\��G��:��i�r��p��sV��_Ĝ��-A�dAq��@H&xV���)VeQ5$�3�6�1lU�`�6^~$4O�$�E��Ō�(��C��J	���RҼJd3�#^0/".hx�����s��x����?����VE���h<�����e��-BYF����Ү"�t�!7h�j��s]�ec^U@�ff��S��/�e@�]���M��o��+����&����Z��������U2��v�%L��tY`�Fj���OÏ䑨E��w[�Ѽ'E%KLk��ǘ��c�(�����O����pzȗ�/h?����"OEbj�g$��:5d3S�s�� u�t!Ab��u����$J_����E��%�l�V��Z+��9��8�J궃���R�s/�[�Gfǃ*���Y9 =�}��+y/כ)� E������ �rs*�L�x�+���KB��ՖM��=T�N�<O`_�%k�@�f��m��(�{�^?m"y�囃��hU�R��*��$� �V˄6ZvK��kJ�-A`5g�U��/_,�r���p�}=��t����/�yfu�V7���o��Bn�5��JC�#�{2ZK<o��i �aYHV)�7������4�,��/�*���QH4�������a!���8�V$x���I��%:�����B�Ӡ�s�.n����}2+��N���*�]���蓜iMH֋g=�5���hĊ�����]p:#�Rc�����옙�1�W��s�iɯ6�[Fp۠�;���%�O�ޗkR�E�>�8�O\�zQ@�u���mvs�h zg`
W<�����(��8��)]����\��kk�"�R@��^�,I���w-���iK]z�6�� �OLn�ӟي
	X�W(��,�V�4j"���9��	E����C[�*%H�rR�VxՓ��JB��Y�!����P���>����ej�Q�>����!��P�?l*Z�c3BEf8;�F1��\dk8ؤe6���i�F���a#�{��O�)��5?'������"Y�.Č"Ul&�I?䰙Mbj�s���y��̽��Ua�E�U:�� ;�uZ���D�Q��P�1�t)����Ƅ]���=�Y��ٺ(��x�BeY���o$f^��i$s儮��/���D�c�:���:���\x"J!Os��{8X�T("9h
u���w����T���[�s{wE@t\Q�N�>�"x������hZ���u�c��R�ݭH�S���]?�����y�P<�z��l��xQ /  �o�V�Z�c]��z�Ϟ���E)��L��������@����p�F#vT�CC="g�3q,�^_�%�z�Ug�F\��Y���R=�'�1��;�+@^�ި���P���g�z'T�Oy����3�\pG��ę�z��j�;#.g�4jf���`�����b��Mr�\.�H��@�����(�0�	'��z�fE���������xvVme�.�N�F5��GǗd=�EWvq�@���
� 3R����U��
]���t���I�������(�e�� �|�5�A���(W�r���
��K%JC�>�t?
��5�{c�hb��h�|�&Q�n��6dܵ�%��il�V�f��SOe�����\��_�脎<�㐉�bʛ֗�f�7R�Xt�j��b�qB��b������l���hT��;��k��S"�9�V�t��*��ܯu�)���R�Cε�+���T^�Lr�)����˅^���W��v�aj7:���"* Ѕ�9M��byF&#Z����$Q#rc���Z���G��+�t�i��>K~�-7��W4d���	��]���G��r���kS������"5h���~�)+��z+m�6_$e��͞���Z@�p����*7��'%���S����Z{K�TJ�8����R���zd�YG�u���6���!�=:��@����6����6"��Cʓ��5���t��o���v��8��8���^��$ w���I�@X�t��W�oB�잏1��q��hõ�mI�����4+�noZk��W�f�۷�����[(8Jmo e} ��
��� �0���Ƀ���Ol����n ��i�X
�I���"A:��yyWj�[����ڴ�]�S�q���R!�ml+��S,�w[ $y�`x�(Wv���f�����A7�P�����Դ�^[�9�a�} bz������_T��"T1����ӥ����| V�gQXq��%��/l[FG�le��l�e�V�2��J�(V��jM-QS^�\�',��"��r������-�\�s,��a�����á���oZ?�cX=wm����}�9xgC�p�L�	Z�n�� 4�D�P��J�[�Q����4i���������8��/vPds��h^��6�����%���Á����P��q�D�hv��t1g�tl��o�n�~�a���O-B�݃��A���p��c��5߹6P����Д�G�����T!TIiA�\4���/�UX7�h��_��Ѵ��(`��5����l1�t����Ѳ|y���n��y�K�~�;����Z�z���.��F��1.��X����� ��:���ɽ]X�ٙ|�D���\1)�[9ƖU�<|��G�5\����SXr!��`�U�ޥ�r�g�ďT��?/�`�4��_�ʔ,��PI9U�<���&Nf@��E�[l�������d3xHM;=UܬE2Idt�}�qF��0;�ɳxO�4�7��bB�i��]��q:��)��E�"ڜh8G��t$~���6Iڜ�F�c\�~���L��$�#�x�䧀s��y��ơb���xNÊrk˸.�f�0
��|Qx�2�:���~5%�h��y�hLw_��S(,�V��U���痱���ye�����rV�JMv�N�p��0̐6�'Ft�7�A�kmܺPX�T�nx���#��5ae��̧�����G��*���s�r��W&�R7�)��½�X���4�K�K��ŝ�)U�Pym��*w�*��r��N;Ζ��v��u�j�N"�=0��n�l��4
o^���X!o8G�[rEk��dw�~�_���j����*b#;��W��q�kǥRR��L�|�2e�� �%M���E����r�Lİ�['���I�1.TR��0�+����ׯ�˶!7=3u���A�X�'��E{NՒ�_�����,��%׿n�����~��5����2j{V���z3�������w��|�Ǔ��t�������x܆1���,���N���۬��� ��W�@#�ɊÀ���ħ�L��.��fM�mW�t�V�۴c�|҆GZ�G�h��8b?3l��w�懲&T�H+
_��D>�BKxt��o��6Wr6"z.Ro)���!x��8�s̋D�0{�5��4Yg6pe?I���P�Z�C��F���W��+B���^�"�«�D8�ij����s�fʈ��s��Q|`��xh��r��&�u��бQ&&Jδ(�tĤ��)�$6���PuZN�A�T��!gT9�
5B� ��(�*�	 �;�'�����xL��n�����J/���`�g����p�#����C�����C:C�-Gx�e���� �s�pQ\�$���&��Jr܋y�������6#g:�o�tG�����S�L�����j��̻���B���`�Ck��9� �w���c�n�Ә�N�	��Ɉv稟(+ivC�h}ʹ�ff-$���*z��
pN�%i�(��w���~���K4>J_�M����K]K]S�.`2xP���`���`Z�gR�}j��"'5.P��A���Z	q��,�v"Y﬽6ݐʂ�cx�)���	K�oЄ��v�#Vx�&���C�.�p>H0p�K x]���mwh� �[���Y�l�B[k��uy���J3+��W=��q�Gm��_�l�f��-����u��K��/ؼ-�7�/w�N[��Z��<��
��#t����������08��իE2� �7p��u����Mz��37{�I[��
�a��*����L[3ˋ�7#�=2_��Y�=���ʣB�Υ����E�c{�s/#��~��W��#       �      x��\�nG��M?E���%L�)ɲۀbَ�ֲ����dG��NW�df�@c�y�<�~眪�P����M"��:Uu������-�\��*��G哗��g��*.rk�ڥ�FY�{m�بb�⥮t�Le#u�L�ҕQx��$���������fke<3�uU�/�l�W��գ�Ó��u�p[�-���{�������C;S�.��*W�6�,q�N}Xbp�la��7/��=}�m���Vz�R�NЖ�a���^��-M��E����Ʋ���G;����UF;�{]8c�[b�^:�ǘ���?����e�,[��h2'�0
 F;Z8W�:s</Ks@	���Q�^>���t��`4y��8���,����tP��Ү�,�֙�]���9�E��.Me��UQ��JK[�p��v�:���ȳ�3���N�2�1��d���Sʩy������$]��P��L������v�a�w�6o��RLs�RW)�����+S%�hk,Q��"7�2�*�&.I u��e.�Y0�,���&������i ���K��G�:l-���z�2:j�G&��m3й�S��=Vϱ�-��Ό�u�U��E`�� ��hVu�
=�~�t�1��M��i�a]&ϒ�a{ݏ�A�4O������.Ss5hy���+,�+[�Ul�b�h8*��7I�L�Qf.M�ʪXTz�"�f:_�z��+ `���E�&H�����lr)�59:�(07	�M��{��
:�eZ�RG��Zc�
�b�n��+����Y��.����
K,#�or���@0B" �C�lQ��v�t��8�Ӻ����O�
M�N�N8֒h���a���ؿ}Ǳ@��h��Qc�������I�c+�F@Lv�>Ǧdy�'�Ro_ڣ��̈́��e3��N��^I�	߶'_���O#`�W�u��:�a`1˼΂a���PY`���%PaI˅]S"3���HP�+bQ���|M�ڌmMV�z�:Z�֨H����P�2�MeH=�����Z�W"#3؜�~������Ar"hq�Zil�U ���?��D�<
#������<����ѹ�<j��,Sy�ad��T��J&^-�.�EM,l�N��x!��=�H�U�L�)g@��lc,���UЮ�H��f��)��_,Ln��n��=�H�c�i�\C����s�낇��NSf*]�{��𫠒v"+��Α���R~�b�A)|]�L��Q����I:��l���)����:�޾Lr���e�����)Ks���`��ֹӟ��[e�<�̎3���0(�Q�ib��n�D�߸�����70�$���?CH�Un����Լ)��q�����c�B�DH�<�Ñ�G�f����|�)�U1b�Ê����@w$� �L�1��^�	L����g`N�g��*�� ��E���f�ȟ��C;#+P:^�G$�K}IkB �1"5�I�W�Ti5hV�7b���>�ܲ��ʹ�$��:��h�9�O����U�x��2p�v��@��W��$�'���N�ev\�L�H}?���J4����-�9�6��7��dA{Kj���tU���'[�HU]Ɨ�ccqX��F�T
 �������A�br�ۈ��4�J���e_��13,�^��UtYf��i��z:bo�B�C�'><O3�n�|R�3�x���"��2sw�[~�~��y�,�V���5;�໕�Sz�2Kaf�5�sb�bb�1 ��+4��_y�9��g�_�`�F�6E��ۏu�6��[
�
������-o݈����C\������0�}I$j��c5����e�Gv��}.)F G��pPȸ'���:ڐ��s&��0E�wI��ûw�6�mv=��سh�0�����Δ���}a���nX���������3���=8��˜B3�rZ�'\[����h0��U��cHN(��&$�2e�8gp�>���vs�|<|��ʢr*�U�+���f������6敷~�F���atM���4�ۍ|��C����T)�)����(<؋�iZ����<�D�?}��mhQ�2"9�g��Z-��y�p�2�(��v#H!Xˈ����p��Y��ba���� �Dڔ2/�H�$����o:�G��SɄK�j�X)rd!����4Ϫ ���ɂ�ޑ#8[�&CM�GWE-.������g?����#
��O����%;L�
k6��n�����lP'�HI�_?�z($���+��/�V:��ql/�&�G���_���*�$A��8,8�7�)1s�o����g��W�����
����t�?�����e�i��,s<�8%m�G;.��E�ԭ��l���g6��Ìp�ar7q9��ۚ���qz�Q����m�yz��M��Q6;��伫rp7��wp��yr*w}�涎zJw�{�;�q��nm��h��Q+sLv�®FDJ��� ����I�7���R��%��x��78Qi;]��>AAq��Չ�&���9�w-<��:�1�$&���W!(G��b*B���m\����|&A�q�mߛd��X^����m?�b:�I��hm��B���k+n�V��a�'\"` ��+ �m7���fO��sX�)���Ԙ��ʘ<T(Y�`嘋)7#�We�@��i���S�8LHE���aBP,����	(��� �C���BuboΧ�j)s�	1 �'#��k�M�Q��(�n��8	%��ޚ�njK͜���2��SҞp�d`3�&�4u&��U�[S�W�(��Ј��y+�3�H����sm)_�YOJϙ�<�:1՚u�?磕�.B�M��`�&C�>��9{�f���E���g9�B�4��I(���x�FX�~qάJ��q!n�KfW�r�TV������+3�XmMw#���}��rno~�|�ˣ�^v�2�+k�բ�_B�(�L�	�h���>�~��&�<BD�uɩ9.�l�����̗���g�Bm50Ĥw��.^�"q`_������X�P��d��*����m�W��Y�ܷS��&���ع���N����Jb]5���B��N"�����-��׀lR�-<*��	J�D�>�j�R,���>�ܔ��dS�8�ݏ��9\�<贚�T�8K{`�oӝ�P�����4c�g�؁UYkP�۷�h��t��Q7W�4�G��AN�,�+_�� Q4.��̥ h��OAŘ��I��Nc����Ҫ�ӓv�͔�ހ�a���AҰ.�J�r>$a��P�[o!�����ҘF�z����<��jt�Rǝ�ږ�����U�y���i����2{���@K�<�E�ii�5�;<d{A�Đ�N�
���$N�}"�v[�H���Hk]Eu���^�9u�Q7���vM�]����2Ο�)R>TRs�:j8�
��Wr+�ܳˢ�#Yr����2갴�`�{PIԡ��`q~g��}nt(���@��ph'�YgOei��K����~˺P�K�b&~Y	hRT���AMV�H�E�s+�F�2"�v����<F�b<똫;}ķ��O�uV������{�������/�����S�/C��A�?�iVSɱ��#um�ʸj�D����L��8SK�k�>M�\�#��pY ��J#-����?�\�^���E�'���k*5�G�\,���5�e�ft�cX������6�ܮ�{}sӽ�S��P+ؠ���e�h0t�B�l�̥j��c�;�S��[&m��F�$��M*�1]��y����Cg$ұt��2�f�ޞ��]y���K�'����� C��JCKve��X���8RJn�n�����#��%E���/�(�e4����q��d�t���!�ϗ��{i��.ơ\g��Φ{�BC�
�5���!����b����B��� 3�� D���-�������v�4���v]7��3��e�/���N��k���m����k�ȹ�98h�f�T���0���JW����M��|-��ä��ͺ���Y�|�L���;,V5Rt[����#�L�"���[ɋ_AOb�a֫4q���x��￭E��ů�?� �  s���a���oR7J�u��Bm���Ht�׹=��DɣYp�$*i��E���9��'��$�+�'�5�+Ӿ���K���_����X�)�蛔�Ĳ����,zS�Y�@�X�������[m��w�K_��!��aڂ����ȇ&h�4#�( �	sj���*E���8F��½�����?�*�ژ=S�A��cTf�ǭs�f�LB+R\�YBB�ן�㝼���GD_�]�_�a/R�	>��9�����7�������t��{.��@�&�X�lkr�|=��n�#(_��7
ͦ��իtnH��d��u��pC�&Q07Dp��;LY�rC��� �o�UԮ2��T���њ ���R�f-�M6�E՗`��3���GX�A:įż��f�#��6��h��<��A��($��fAp�F�;L
<�ؒ�d5����"oU&u�ȘIj4�L��K�Uw_Ԛ5��RMɉ����#@QD�-�;pow�zh&9��!.*�����mN�A+�/��jܮx�,�s>q��<?�&�.�W�b)O��f����s��^2�y�5X�h0rc$|���;*�w��������3Cv#W�޲g�zmo�E��w�¦�������v�[DjY;����w��� ���/]W9�}ܐ;gcs�����DN�Ҳ�^Xj���R�'0y��>L��2�=���k��[�	d��� �ٻ1?H��(.Zi�o�sl�tY�h��V�*�Ptke���򳼡kcXP
��!�N����s>d��)8y��G�Fm��`a	�t���usc1�tݛ$d7��RC�T���Tp�ɑ��Z�>�X�q]�o��v=:���Q���q�O(�E������I��=��7�� "=pq���*���Jc�w5[��� ��v���7Y���qp������%�|J��O˦�(2�+i�f1R��TgY\�Ax��k���
�qեo(�7]b���m�l�r�Ԇ��i9A��i�l7��|B�3��l���O#���o����kZ�Nʧ�4��A�{BLش�s��9���'��捪����n��B��S��ض��B�+J��z��$m�4R�v���x�|!��a����v���M5�k���k
l1�k����qo�ȝA����v���~[�p4��}t��GmӶ��?�##.i.~�g��R�͙@O�PF,+p��v#D��I��#��k�
�v�M����uI+���>p�G���Z�f���dɽ���k\���	iu߰��\�o�{׮�l4As���91��9{���M�����R��qW`�p���1�U��] }���V�C�r	�6���q#��E0E-�����!-Eg�LC��HY6�]
qk��%_)���]y�ٕY��_�
�f;��9M�4�B����>��_��k'��ps��צ��A�F��(��>0]I�NI?�u����5$�c���D�C��)��p���G�p�>a�x2���}�C���1��6�r������hr�M���?����p�3�ۙy7�H�G� R���`��H�QglLm��Z��a5�7�x~���/��|��?J E�J�l�� ��[��,���X������׊��Hp�_�Qp����JǹcҜ;`���^������n��}<����a�>^�ɹRb�!^v�a0o��d7̙�;����3e�����9�Z�;f	�:[��)9�]i��{883������Y�+��78+^IJv��-�p��`ڂ�E��%m)�F�j"\�m���Q5p�ᄉ��X��7Ŭ�haV����C��]\"r1'f�!C핐��������� %����sQ�͉�ܡ�Σ$��:��xԾ� �:����4�]	�S�k0��k��/]�e�1������_��C      �   �   x����� �o������ ���$�"\�_>�AWF����C�f}�_�C@�@Z(< �Ǳ�
�ߊ�� l��99
i/D�#�!"� �J�x��E�$����`��R� L��}��&�i�'L�0i�H1Ќ�͐��H9�W���Fȁ��ڜ9@���6��H��$6D|LM�x�<NJC����{	��nH>�ꬵo�'�     