PGDMP     *    8                z            codebook_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    codebook_db    DATABASE     u   CREATE DATABASE codebook_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE codebook_db;
                postgres    false                        2615    16385    in_house    SCHEMA        CREATE SCHEMA in_house;
    DROP SCHEMA in_house;
                postgres    false            �            1259    16386 
   auth_group    TABLE     h   CREATE TABLE in_house.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
     DROP TABLE in_house.auth_group;
       in_house         heap    postgres    false    8            �            1259    16389    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE in_house.auth_group_id_seq;
       in_house          postgres    false    203    8            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE in_house.auth_group_id_seq OWNED BY in_house.auth_group.id;
          in_house          postgres    false    204            �            1259    16391    auth_group_permissions    TABLE     �   CREATE TABLE in_house.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 ,   DROP TABLE in_house.auth_group_permissions;
       in_house         heap    postgres    false    8            �            1259    16394    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE in_house.auth_group_permissions_id_seq;
       in_house          postgres    false    205    8            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE in_house.auth_group_permissions_id_seq OWNED BY in_house.auth_group_permissions.id;
          in_house          postgres    false    206            �            1259    16396    auth_permission    TABLE     �   CREATE TABLE in_house.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 %   DROP TABLE in_house.auth_permission;
       in_house         heap    postgres    false    8            �            1259    16399    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.auth_permission_id_seq;
       in_house          postgres    false    207    8            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.auth_permission_id_seq OWNED BY in_house.auth_permission.id;
          in_house          postgres    false    208            �            1259    16401 	   auth_user    TABLE     �  CREATE TABLE in_house.auth_user (
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
       in_house         heap    postgres    false    8            �            1259    16407    auth_user_groups    TABLE     �   CREATE TABLE in_house.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 &   DROP TABLE in_house.auth_user_groups;
       in_house         heap    postgres    false    8            �            1259    16410    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.auth_user_groups_id_seq;
       in_house          postgres    false    8    210            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.auth_user_groups_id_seq OWNED BY in_house.auth_user_groups.id;
          in_house          postgres    false    211            �            1259    16412    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE in_house.auth_user_id_seq;
       in_house          postgres    false    209    8            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE in_house.auth_user_id_seq OWNED BY in_house.auth_user.id;
          in_house          postgres    false    212            �            1259    16414    auth_user_user_permissions    TABLE     �   CREATE TABLE in_house.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 0   DROP TABLE in_house.auth_user_user_permissions;
       in_house         heap    postgres    false    8            �            1259    16417 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.auth_user_user_permissions_id_seq;
       in_house          postgres    false    213    8            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.auth_user_user_permissions_id_seq OWNED BY in_house.auth_user_user_permissions.id;
          in_house          postgres    false    214            �            1259    16419    django_admin_log    TABLE     �  CREATE TABLE in_house.django_admin_log (
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
       in_house         heap    postgres    false    8            �            1259    16426    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.django_admin_log_id_seq;
       in_house          postgres    false    215    8            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.django_admin_log_id_seq OWNED BY in_house.django_admin_log.id;
          in_house          postgres    false    216            �            1259    16428    django_content_type    TABLE     �   CREATE TABLE in_house.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 )   DROP TABLE in_house.django_content_type;
       in_house         heap    postgres    false    8            �            1259    16431    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.django_content_type_id_seq;
       in_house          postgres    false    8    217            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.django_content_type_id_seq OWNED BY in_house.django_content_type.id;
          in_house          postgres    false    218            �            1259    16433    django_migrations    TABLE     �   CREATE TABLE in_house.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 '   DROP TABLE in_house.django_migrations;
       in_house         heap    postgres    false    8            �            1259    16439    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.django_migrations_id_seq;
       in_house          postgres    false    8    219            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.django_migrations_id_seq OWNED BY in_house.django_migrations.id;
          in_house          postgres    false    220            �            1259    16441    django_session    TABLE     �   CREATE TABLE in_house.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE in_house.django_session;
       in_house         heap    postgres    false    8            �            1259    16447    resume_certificates    TABLE     v  CREATE TABLE in_house.resume_certificates (
    id integer NOT NULL,
    name character varying(200),
    short_name character varying(100),
    institute_short_name character varying(50),
    institute_full_name character varying(100),
    complition_date date NOT NULL,
    duration character varying(100),
    created_at date NOT NULL,
    profile_id integer NOT NULL
);
 )   DROP TABLE in_house.resume_certificates;
       in_house         heap    postgres    false    8            �            1259    16453    resume_certificates_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_certificates_id_seq;
       in_house          postgres    false    8    222            �           0    0    resume_certificates_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_certificates_id_seq OWNED BY in_house.resume_certificates.id;
          in_house          postgres    false    223            �            1259    16455    resume_educations    TABLE     �  CREATE TABLE in_house.resume_educations (
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
       in_house         heap    postgres    false    8            �            1259    16463    resume_educations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_educations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_educations_id_seq;
       in_house          postgres    false    224    8            �           0    0    resume_educations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_educations_id_seq OWNED BY in_house.resume_educations.id;
          in_house          postgres    false    225            �            1259    16465    resume_employment    TABLE     �  CREATE TABLE in_house.resume_employment (
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
       in_house         heap    postgres    false    8            �            1259    16471    resume_employment_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_employment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_employment_id_seq;
       in_house          postgres    false    8    226            �           0    0    resume_employment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_employment_id_seq OWNED BY in_house.resume_employment.id;
          in_house          postgres    false    227            �            1259    16473    resume_language_proficiency    TABLE     �   CREATE TABLE in_house.resume_language_proficiency (
    id integer NOT NULL,
    name character varying(20),
    created_at date NOT NULL
);
 1   DROP TABLE in_house.resume_language_proficiency;
       in_house         heap    postgres    false    8            �            1259    16476 "   resume_language_proficiency_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_language_proficiency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE in_house.resume_language_proficiency_id_seq;
       in_house          postgres    false    8    228            �           0    0 "   resume_language_proficiency_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE in_house.resume_language_proficiency_id_seq OWNED BY in_house.resume_language_proficiency.id;
          in_house          postgres    false    229            �            1259    16478    resume_languages    TABLE     �   CREATE TABLE in_house.resume_languages (
    id integer NOT NULL,
    name character varying(20),
    is_other integer NOT NULL,
    created_at date NOT NULL
);
 &   DROP TABLE in_house.resume_languages;
       in_house         heap    postgres    false    8            �            1259    16481    resume_languages_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.resume_languages_id_seq;
       in_house          postgres    false    8    230            �           0    0    resume_languages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.resume_languages_id_seq OWNED BY in_house.resume_languages.id;
          in_house          postgres    false    231            �            1259    16483    resume_profile    TABLE     T  CREATE TABLE in_house.resume_profile (
    id integer NOT NULL,
    first_name character varying(120) NOT NULL,
    middle_name character varying(120) NOT NULL,
    last_name character varying(120) NOT NULL,
    profile_title character varying(120) NOT NULL,
    brief_summary text NOT NULL,
    email character varying(50) NOT NULL,
    mobile_number character varying(15) NOT NULL,
    profile_pic character varying(100) NOT NULL,
    banner_image character varying(100) NOT NULL,
    social_linkes character varying(250) NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
 $   DROP TABLE in_house.resume_profile;
       in_house         heap    postgres    false    8            �            1259    16489    resume_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.resume_profile_id_seq;
       in_house          postgres    false    8    232            �           0    0    resume_profile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.resume_profile_id_seq OWNED BY in_house.resume_profile.id;
          in_house          postgres    false    233            �            1259    16491    resume_projects    TABLE     �  CREATE TABLE in_house.resume_projects (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    description text NOT NULL,
    role_responsibility text NOT NULL,
    team_size smallint NOT NULL,
    start_date date NOT NULL,
    end_date date,
    created_at date NOT NULL,
    employment_id integer NOT NULL,
    CONSTRAINT resume_projects_team_size_check CHECK ((team_size >= 0))
);
 %   DROP TABLE in_house.resume_projects;
       in_house         heap    postgres    false    8            �            1259    16498    resume_projects_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.resume_projects_id_seq;
       in_house          postgres    false    8    234            �           0    0    resume_projects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.resume_projects_id_seq OWNED BY in_house.resume_projects.id;
          in_house          postgres    false    235            �            1259    16500    resume_projects_technology    TABLE     �   CREATE TABLE in_house.resume_projects_technology (
    id integer NOT NULL,
    projects_id integer NOT NULL,
    technologies_id integer NOT NULL
);
 0   DROP TABLE in_house.resume_projects_technology;
       in_house         heap    postgres    false    8            �            1259    16503 !   resume_projects_technology_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_technology_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_projects_technology_id_seq;
       in_house          postgres    false    236    8            �           0    0 !   resume_projects_technology_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_projects_technology_id_seq OWNED BY in_house.resume_projects_technology.id;
          in_house          postgres    false    237            �            1259    16505    resume_technologies    TABLE     �   CREATE TABLE in_house.resume_technologies (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    version character varying(120) NOT NULL,
    rate smallint NOT NULL,
    is_other integer NOT NULL,
    category_id integer NOT NULL
);
 )   DROP TABLE in_house.resume_technologies;
       in_house         heap    postgres    false    8            �            1259    16508    resume_technologies_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_technologies_id_seq;
       in_house          postgres    false    238    8            �           0    0    resume_technologies_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_technologies_id_seq OWNED BY in_house.resume_technologies.id;
          in_house          postgres    false    239            �            1259    16510    resume_technology_category    TABLE     �   CREATE TABLE in_house.resume_technology_category (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    status integer NOT NULL,
    created_at date NOT NULL
);
 0   DROP TABLE in_house.resume_technology_category;
       in_house         heap    postgres    false    8            �            1259    16513 !   resume_technology_category_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technology_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_technology_category_id_seq;
       in_house          postgres    false    240    8            �           0    0 !   resume_technology_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_technology_category_id_seq OWNED BY in_house.resume_technology_category.id;
          in_house          postgres    false    241            �            1259    16515    resume_user_interest    TABLE     �   CREATE TABLE in_house.resume_user_interest (
    id integer NOT NULL,
    name character varying(50),
    created_at date NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_interest;
       in_house         heap    postgres    false    8            �            1259    16518    resume_user_interest_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_user_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_interest_id_seq;
       in_house          postgres    false    242    8            �           0    0    resume_user_interest_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_interest_id_seq OWNED BY in_house.resume_user_interest.id;
          in_house          postgres    false    243            �            1259    16520    resume_user_language    TABLE     �   CREATE TABLE in_house.resume_user_language (
    id integer NOT NULL,
    created_at date NOT NULL,
    language_id integer NOT NULL,
    language_profiency_id integer NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_language;
       in_house         heap    postgres    false    8            �            1259    16523    resume_user_language_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_user_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_language_id_seq;
       in_house          postgres    false    244    8            �           0    0    resume_user_language_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_language_id_seq OWNED BY in_house.resume_user_language.id;
          in_house          postgres    false    245            �            1259    16525    subject_tbl_dm    TABLE     Q  CREATE TABLE in_house.subject_tbl_dm (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    created_at date NOT NULL,
    updated_at date NOT NULL,
    slug character varying(120) NOT NULL,
    status integer NOT NULL,
    is_publish boolean NOT NULL
);
 $   DROP TABLE in_house.subject_tbl_dm;
       in_house         heap    postgres    false    8            �            1259    16531    subject_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.subject_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.subject_tbl_dm_id_seq;
       in_house          postgres    false    8    246                        0    0    subject_tbl_dm_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.subject_tbl_dm_id_seq OWNED BY in_house.subject_tbl_dm.id;
          in_house          postgres    false    247            �            1259    16533    topic_section_tbl    TABLE     K  CREATE TABLE in_house.topic_section_tbl (
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
       in_house         heap    postgres    false    8            �            1259    16539    topic_section_tbl_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topic_section_tbl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.topic_section_tbl_id_seq;
       in_house          postgres    false    8    248                       0    0    topic_section_tbl_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.topic_section_tbl_id_seq OWNED BY in_house.topic_section_tbl.id;
          in_house          postgres    false    249            �            1259    16541    topics_tbl_dm    TABLE     �  CREATE TABLE in_house.topics_tbl_dm (
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
       in_house         heap    postgres    false    8            �            1259    16547    topics_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topics_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE in_house.topics_tbl_dm_id_seq;
       in_house          postgres    false    250    8                       0    0    topics_tbl_dm_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE in_house.topics_tbl_dm_id_seq OWNED BY in_house.topics_tbl_dm.id;
          in_house          postgres    false    251            �            1259    16549    tutorials_postdetail    TABLE       CREATE TABLE in_house.tutorials_postdetail (
    id integer NOT NULL,
    summary text NOT NULL,
    reference_url character varying(200) NOT NULL,
    comment_count integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    post_id integer NOT NULL
);
 *   DROP TABLE in_house.tutorials_postdetail;
       in_house         heap    postgres    false    8            �            1259    16555    tutorials_postdetail_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.tutorials_postdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.tutorials_postdetail_id_seq;
       in_house          postgres    false    252    8                       0    0    tutorials_postdetail_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.tutorials_postdetail_id_seq OWNED BY in_house.tutorials_postdetail.id;
          in_house          postgres    false    253            �            1259    16557    tutorials_posts    TABLE     h  CREATE TABLE in_house.tutorials_posts (
    id integer NOT NULL,
    name character varying(200),
    title character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    post_image character varying(100),
    is_publish integer NOT NULL,
    publish_date date,
    status integer NOT NULL,
    created_at date NOT NULL,
    desciption text
);
 %   DROP TABLE in_house.tutorials_posts;
       in_house         heap    postgres    false    8            �            1259    16563    tutorials_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.tutorials_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.tutorials_posts_id_seq;
       in_house          postgres    false    8    254                       0    0    tutorials_posts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.tutorials_posts_id_seq OWNED BY in_house.tutorials_posts.id;
          in_house          postgres    false    255            �           2604    16565    auth_group id    DEFAULT     r   ALTER TABLE ONLY in_house.auth_group ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_id_seq'::regclass);
 >   ALTER TABLE in_house.auth_group ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    204    203            �           2604    16566    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_permissions_id_seq'::regclass);
 J   ALTER TABLE in_house.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    206    205            �           2604    16567    auth_permission id    DEFAULT     |   ALTER TABLE ONLY in_house.auth_permission ALTER COLUMN id SET DEFAULT nextval('in_house.auth_permission_id_seq'::regclass);
 C   ALTER TABLE in_house.auth_permission ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    208    207            �           2604    16568    auth_user id    DEFAULT     p   ALTER TABLE ONLY in_house.auth_user ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_id_seq'::regclass);
 =   ALTER TABLE in_house.auth_user ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    212    209            �           2604    16569    auth_user_groups id    DEFAULT     ~   ALTER TABLE ONLY in_house.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_groups_id_seq'::regclass);
 D   ALTER TABLE in_house.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    211    210            �           2604    16570    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_user_permissions_id_seq'::regclass);
 N   ALTER TABLE in_house.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    214    213            �           2604    16571    django_admin_log id    DEFAULT     ~   ALTER TABLE ONLY in_house.django_admin_log ALTER COLUMN id SET DEFAULT nextval('in_house.django_admin_log_id_seq'::regclass);
 D   ALTER TABLE in_house.django_admin_log ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    216    215            �           2604    16572    django_content_type id    DEFAULT     �   ALTER TABLE ONLY in_house.django_content_type ALTER COLUMN id SET DEFAULT nextval('in_house.django_content_type_id_seq'::regclass);
 G   ALTER TABLE in_house.django_content_type ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    218    217            �           2604    16573    django_migrations id    DEFAULT     �   ALTER TABLE ONLY in_house.django_migrations ALTER COLUMN id SET DEFAULT nextval('in_house.django_migrations_id_seq'::regclass);
 E   ALTER TABLE in_house.django_migrations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    220    219            �           2604    16574    resume_certificates id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_certificates ALTER COLUMN id SET DEFAULT nextval('in_house.resume_certificates_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_certificates ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    223    222            �           2604    16575    resume_educations id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_educations ALTER COLUMN id SET DEFAULT nextval('in_house.resume_educations_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_educations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    225    224            �           2604    16576    resume_employment id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_employment ALTER COLUMN id SET DEFAULT nextval('in_house.resume_employment_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_employment ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    227    226            �           2604    16577    resume_language_proficiency id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_language_proficiency ALTER COLUMN id SET DEFAULT nextval('in_house.resume_language_proficiency_id_seq'::regclass);
 O   ALTER TABLE in_house.resume_language_proficiency ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    229    228            �           2604    16578    resume_languages id    DEFAULT     ~   ALTER TABLE ONLY in_house.resume_languages ALTER COLUMN id SET DEFAULT nextval('in_house.resume_languages_id_seq'::regclass);
 D   ALTER TABLE in_house.resume_languages ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    231    230            �           2604    16579    resume_profile id    DEFAULT     z   ALTER TABLE ONLY in_house.resume_profile ALTER COLUMN id SET DEFAULT nextval('in_house.resume_profile_id_seq'::regclass);
 B   ALTER TABLE in_house.resume_profile ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    233    232            �           2604    16580    resume_projects id    DEFAULT     |   ALTER TABLE ONLY in_house.resume_projects ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_id_seq'::regclass);
 C   ALTER TABLE in_house.resume_projects ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    235    234            �           2604    16581    resume_projects_technology id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_projects_technology ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_technology_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_projects_technology ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    237    236            �           2604    16582    resume_technologies id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technologies ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technologies_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_technologies ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    239    238            �           2604    16583    resume_technology_category id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technology_category ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technology_category_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_technology_category ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    241    240            �           2604    16584    resume_user_interest id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_interest ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_interest_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_interest ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    243    242            �           2604    16585    resume_user_language id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_language ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_language_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_language ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    245    244            �           2604    16586    subject_tbl_dm id    DEFAULT     z   ALTER TABLE ONLY in_house.subject_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.subject_tbl_dm_id_seq'::regclass);
 B   ALTER TABLE in_house.subject_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    247    246            �           2604    16587    topic_section_tbl id    DEFAULT     �   ALTER TABLE ONLY in_house.topic_section_tbl ALTER COLUMN id SET DEFAULT nextval('in_house.topic_section_tbl_id_seq'::regclass);
 E   ALTER TABLE in_house.topic_section_tbl ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    249    248            �           2604    16588    topics_tbl_dm id    DEFAULT     x   ALTER TABLE ONLY in_house.topics_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.topics_tbl_dm_id_seq'::regclass);
 A   ALTER TABLE in_house.topics_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    251    250            �           2604    16589    tutorials_postdetail id    DEFAULT     �   ALTER TABLE ONLY in_house.tutorials_postdetail ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_postdetail_id_seq'::regclass);
 H   ALTER TABLE in_house.tutorials_postdetail ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    253    252            �           2604    16590    tutorials_posts id    DEFAULT     |   ALTER TABLE ONLY in_house.tutorials_posts ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_posts_id_seq'::regclass);
 C   ALTER TABLE in_house.tutorials_posts ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    255    254            �          0    16386 
   auth_group 
   TABLE DATA           0   COPY in_house.auth_group (id, name) FROM stdin;
    in_house          postgres    false    203   aa      �          0    16391    auth_group_permissions 
   TABLE DATA           O   COPY in_house.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    in_house          postgres    false    205   ~a      �          0    16396    auth_permission 
   TABLE DATA           P   COPY in_house.auth_permission (id, name, content_type_id, codename) FROM stdin;
    in_house          postgres    false    207   �a      �          0    16401 	   auth_user 
   TABLE DATA           �   COPY in_house.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    in_house          postgres    false    209   'e      �          0    16407    auth_user_groups 
   TABLE DATA           C   COPY in_house.auth_user_groups (id, user_id, group_id) FROM stdin;
    in_house          postgres    false    210   �e      �          0    16414    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    213   �e      �          0    16419    django_admin_log 
   TABLE DATA           �   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    215   f      �          0    16428    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    217   z}      �          0    16433    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    219   w~      �          0    16441    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    221   ��      �          0    16447    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    222   {�      �          0    16455    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    224   ��      �          0    16465    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    226   ��      �          0    16473    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    228   ҂      �          0    16478    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    230   �      �          0    16483    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    232   �      �          0    16491    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    234   )�      �          0    16500    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    236   F�      �          0    16505    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    238   c�      �          0    16510    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    240   ��      �          0    16515    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    242   ��      �          0    16520    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    244   ��      �          0    16525    subject_tbl_dm 
   TABLE DATA           z   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    246   ׃      �          0    16533    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    248   f�      �          0    16541    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    250   G�      �          0    16549    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    252   <�      �          0    16557    tutorials_posts 
   TABLE DATA           �   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    254   Y�                 0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    204                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    206                       0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 88, true);
          in_house          postgres    false    208                       0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    211            	           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 1, true);
          in_house          postgres    false    212            
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 1, false);
          in_house          postgres    false    214                       0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 385, true);
          in_house          postgres    false    216                       0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.django_content_type_id_seq', 22, true);
          in_house          postgres    false    218                       0    0    django_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_migrations_id_seq', 30, true);
          in_house          postgres    false    220                       0    0    resume_certificates_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_certificates_id_seq', 1, false);
          in_house          postgres    false    223                       0    0    resume_educations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_educations_id_seq', 1, false);
          in_house          postgres    false    225                       0    0    resume_employment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_employment_id_seq', 1, false);
          in_house          postgres    false    227                       0    0 "   resume_language_proficiency_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('in_house.resume_language_proficiency_id_seq', 1, false);
          in_house          postgres    false    229                       0    0    resume_languages_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.resume_languages_id_seq', 1, false);
          in_house          postgres    false    231                       0    0    resume_profile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('in_house.resume_profile_id_seq', 1, false);
          in_house          postgres    false    233                       0    0    resume_projects_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.resume_projects_id_seq', 1, false);
          in_house          postgres    false    235                       0    0 !   resume_projects_technology_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_projects_technology_id_seq', 1, false);
          in_house          postgres    false    237                       0    0    resume_technologies_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_technologies_id_seq', 1, false);
          in_house          postgres    false    239                       0    0 !   resume_technology_category_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_technology_category_id_seq', 1, false);
          in_house          postgres    false    241                       0    0    resume_user_interest_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_interest_id_seq', 1, false);
          in_house          postgres    false    243                       0    0    resume_user_language_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_language_id_seq', 1, false);
          in_house          postgres    false    245                       0    0    subject_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.subject_tbl_dm_id_seq', 6, true);
          in_house          postgres    false    247                       0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 63, true);
          in_house          postgres    false    249                       0    0    topics_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.topics_tbl_dm_id_seq', 21, true);
          in_house          postgres    false    251                       0    0    tutorials_postdetail_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.tutorials_postdetail_id_seq', 1, false);
          in_house          postgres    false    253                       0    0    tutorials_posts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.tutorials_posts_id_seq', 1, false);
          in_house          postgres    false    255            �           2606    16594    auth_group auth_group_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 J   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_name_key;
       in_house            postgres    false    203            �           2606    16596 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 ~   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       in_house            postgres    false    205    205            �           2606    16598 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       in_house            postgres    false    205            �           2606    16600    auth_group auth_group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_pkey;
       in_house            postgres    false    203            �           2606    16602 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 r   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       in_house            postgres    false    207    207            �           2606    16604 $   auth_permission auth_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_pkey;
       in_house            postgres    false    207            �           2606    16606 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       in_house            postgres    false    210            �           2606    16608 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       in_house            postgres    false    210    210            �           2606    16610    auth_user auth_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_pkey;
       in_house            postgres    false    209            �           2606    16612 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       in_house            postgres    false    213            �           2606    16614 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       in_house            postgres    false    213    213            �           2606    16616     auth_user auth_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_username_key;
       in_house            postgres    false    209            �           2606    16618 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       in_house            postgres    false    215            �           2606    16620 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       in_house            postgres    false    217    217            �           2606    16622 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_pkey;
       in_house            postgres    false    217            �           2606    16624 (   django_migrations django_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.django_migrations DROP CONSTRAINT django_migrations_pkey;
       in_house            postgres    false    219            �           2606    16626 "   django_session django_session_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY in_house.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 N   ALTER TABLE ONLY in_house.django_session DROP CONSTRAINT django_session_pkey;
       in_house            postgres    false    221            �           2606    16628 ,   resume_certificates resume_certificates_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_pkey;
       in_house            postgres    false    222            �           2606    16630 (   resume_educations resume_educations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_pkey;
       in_house            postgres    false    224            �           2606    16632 (   resume_employment resume_employment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_pkey;
       in_house            postgres    false    226            �           2606    16634 <   resume_language_proficiency resume_language_proficiency_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY in_house.resume_language_proficiency
    ADD CONSTRAINT resume_language_proficiency_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY in_house.resume_language_proficiency DROP CONSTRAINT resume_language_proficiency_pkey;
       in_house            postgres    false    228            �           2606    16636 &   resume_languages resume_languages_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.resume_languages
    ADD CONSTRAINT resume_languages_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.resume_languages DROP CONSTRAINT resume_languages_pkey;
       in_house            postgres    false    230            �           2606    16638 "   resume_profile resume_profile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.resume_profile
    ADD CONSTRAINT resume_profile_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.resume_profile DROP CONSTRAINT resume_profile_pkey;
       in_house            postgres    false    232            �           2606    16640 $   resume_projects resume_projects_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_pkey;
       in_house            postgres    false    234            �           2606    16642 Z   resume_projects_technology resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq UNIQUE (projects_id, technologies_id);
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq;
       in_house            postgres    false    236    236            �           2606    16644 :   resume_projects_technology resume_projects_technology_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technology_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technology_pkey;
       in_house            postgres    false    236            �           2606    16646 ,   resume_technologies resume_technologies_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_pkey;
       in_house            postgres    false    238            �           2606    16648 :   resume_technology_category resume_technology_category_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_technology_category
    ADD CONSTRAINT resume_technology_category_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_technology_category DROP CONSTRAINT resume_technology_category_pkey;
       in_house            postgres    false    240                        2606    16650 .   resume_user_interest resume_user_interest_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_pkey;
       in_house            postgres    false    242                       2606    16652 .   resume_user_language resume_user_language_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_pkey;
       in_house            postgres    false    244                       2606    16654 "   subject_tbl_dm subject_tbl_dm_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_pkey;
       in_house            postgres    false    246                       2606    16656 0   subject_tbl_dm subject_tbl_dm_slug_4a3612d0_uniq 
   CONSTRAINT     m   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq UNIQUE (slug);
 \   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq;
       in_house            postgres    false    246                       2606    16658 (   topic_section_tbl topic_section_tbl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_pkey;
       in_house            postgres    false    248                       2606    16660     topics_tbl_dm topics_tbl_dm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_pkey;
       in_house            postgres    false    250                       2606    16662 .   tutorials_postdetail tutorials_postdetail_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_pkey;
       in_house            postgres    false    252                       2606    16664 $   tutorials_posts tutorials_posts_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.tutorials_posts
    ADD CONSTRAINT tutorials_posts_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.tutorials_posts DROP CONSTRAINT tutorials_posts_pkey;
       in_house            postgres    false    254            �           1259    16665    auth_group_name_a6ea08ec_like    INDEX     j   CREATE INDEX auth_group_name_a6ea08ec_like ON in_house.auth_group USING btree (name varchar_pattern_ops);
 3   DROP INDEX in_house.auth_group_name_a6ea08ec_like;
       in_house            postgres    false    203            �           1259    16666 (   auth_group_permissions_group_id_b120cbf9    INDEX     q   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON in_house.auth_group_permissions USING btree (group_id);
 >   DROP INDEX in_house.auth_group_permissions_group_id_b120cbf9;
       in_house            postgres    false    205            �           1259    16667 -   auth_group_permissions_permission_id_84c5c92e    INDEX     {   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON in_house.auth_group_permissions USING btree (permission_id);
 C   DROP INDEX in_house.auth_group_permissions_permission_id_84c5c92e;
       in_house            postgres    false    205            �           1259    16668 (   auth_permission_content_type_id_2f476e4b    INDEX     q   CREATE INDEX auth_permission_content_type_id_2f476e4b ON in_house.auth_permission USING btree (content_type_id);
 >   DROP INDEX in_house.auth_permission_content_type_id_2f476e4b;
       in_house            postgres    false    207            �           1259    16669 "   auth_user_groups_group_id_97559544    INDEX     e   CREATE INDEX auth_user_groups_group_id_97559544 ON in_house.auth_user_groups USING btree (group_id);
 8   DROP INDEX in_house.auth_user_groups_group_id_97559544;
       in_house            postgres    false    210            �           1259    16670 !   auth_user_groups_user_id_6a12ed8b    INDEX     c   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON in_house.auth_user_groups USING btree (user_id);
 7   DROP INDEX in_house.auth_user_groups_user_id_6a12ed8b;
       in_house            postgres    false    210            �           1259    16671 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON in_house.auth_user_user_permissions USING btree (permission_id);
 G   DROP INDEX in_house.auth_user_user_permissions_permission_id_1fbb5f2c;
       in_house            postgres    false    213            �           1259    16672 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     w   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON in_house.auth_user_user_permissions USING btree (user_id);
 A   DROP INDEX in_house.auth_user_user_permissions_user_id_a95ead1b;
       in_house            postgres    false    213            �           1259    16673     auth_user_username_6821ab7c_like    INDEX     p   CREATE INDEX auth_user_username_6821ab7c_like ON in_house.auth_user USING btree (username varchar_pattern_ops);
 6   DROP INDEX in_house.auth_user_username_6821ab7c_like;
       in_house            postgres    false    209            �           1259    16674 )   django_admin_log_content_type_id_c4bce8eb    INDEX     s   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON in_house.django_admin_log USING btree (content_type_id);
 ?   DROP INDEX in_house.django_admin_log_content_type_id_c4bce8eb;
       in_house            postgres    false    215            �           1259    16675 !   django_admin_log_user_id_c564eba6    INDEX     c   CREATE INDEX django_admin_log_user_id_c564eba6 ON in_house.django_admin_log USING btree (user_id);
 7   DROP INDEX in_house.django_admin_log_user_id_c564eba6;
       in_house            postgres    false    215            �           1259    16676 #   django_session_expire_date_a5c62663    INDEX     g   CREATE INDEX django_session_expire_date_a5c62663 ON in_house.django_session USING btree (expire_date);
 9   DROP INDEX in_house.django_session_expire_date_a5c62663;
       in_house            postgres    false    221            �           1259    16677 (   django_session_session_key_c0390e0f_like    INDEX     �   CREATE INDEX django_session_session_key_c0390e0f_like ON in_house.django_session USING btree (session_key varchar_pattern_ops);
 >   DROP INDEX in_house.django_session_session_key_c0390e0f_like;
       in_house            postgres    false    221            �           1259    16678 '   resume_certificates_profile_id_ff9ddcd4    INDEX     o   CREATE INDEX resume_certificates_profile_id_ff9ddcd4 ON in_house.resume_certificates USING btree (profile_id);
 =   DROP INDEX in_house.resume_certificates_profile_id_ff9ddcd4;
       in_house            postgres    false    222            �           1259    16679 %   resume_educations_profile_id_363d9f96    INDEX     k   CREATE INDEX resume_educations_profile_id_363d9f96 ON in_house.resume_educations USING btree (profile_id);
 ;   DROP INDEX in_house.resume_educations_profile_id_363d9f96;
       in_house            postgres    false    224            �           1259    16680 %   resume_employment_profile_id_a7423269    INDEX     k   CREATE INDEX resume_employment_profile_id_a7423269 ON in_house.resume_employment USING btree (profile_id);
 ;   DROP INDEX in_house.resume_employment_profile_id_a7423269;
       in_house            postgres    false    226            �           1259    16681 &   resume_projects_employment_id_574c5bf6    INDEX     m   CREATE INDEX resume_projects_employment_id_574c5bf6 ON in_house.resume_projects USING btree (employment_id);
 <   DROP INDEX in_house.resume_projects_employment_id_574c5bf6;
       in_house            postgres    false    234            �           1259    16682 /   resume_projects_technology_projects_id_2f5c3d10    INDEX        CREATE INDEX resume_projects_technology_projects_id_2f5c3d10 ON in_house.resume_projects_technology USING btree (projects_id);
 E   DROP INDEX in_house.resume_projects_technology_projects_id_2f5c3d10;
       in_house            postgres    false    236            �           1259    16683 3   resume_projects_technology_technologies_id_2ca2768d    INDEX     �   CREATE INDEX resume_projects_technology_technologies_id_2ca2768d ON in_house.resume_projects_technology USING btree (technologies_id);
 I   DROP INDEX in_house.resume_projects_technology_technologies_id_2ca2768d;
       in_house            postgres    false    236            �           1259    16684 (   resume_technologies_category_id_147f19e0    INDEX     q   CREATE INDEX resume_technologies_category_id_147f19e0 ON in_house.resume_technologies USING btree (category_id);
 >   DROP INDEX in_house.resume_technologies_category_id_147f19e0;
       in_house            postgres    false    238                       1259    16685 (   resume_user_interest_profile_id_8b18a7ed    INDEX     q   CREATE INDEX resume_user_interest_profile_id_8b18a7ed ON in_house.resume_user_interest USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_interest_profile_id_8b18a7ed;
       in_house            postgres    false    242                       1259    16686 )   resume_user_language_language_id_baa88fad    INDEX     s   CREATE INDEX resume_user_language_language_id_baa88fad ON in_house.resume_user_language USING btree (language_id);
 ?   DROP INDEX in_house.resume_user_language_language_id_baa88fad;
       in_house            postgres    false    244                       1259    16687 3   resume_user_language_language_profiency_id_81ca799f    INDEX     �   CREATE INDEX resume_user_language_language_profiency_id_81ca799f ON in_house.resume_user_language USING btree (language_profiency_id);
 I   DROP INDEX in_house.resume_user_language_language_profiency_id_81ca799f;
       in_house            postgres    false    244                       1259    16688 (   resume_user_language_profile_id_a7cd4ed1    INDEX     q   CREATE INDEX resume_user_language_profile_id_a7cd4ed1 ON in_house.resume_user_language USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_language_profile_id_a7cd4ed1;
       in_house            postgres    false    244            	           1259    16689 !   subject_tbl_dm_slug_4a3612d0_like    INDEX     r   CREATE INDEX subject_tbl_dm_slug_4a3612d0_like ON in_house.subject_tbl_dm USING btree (slug varchar_pattern_ops);
 7   DROP INDEX in_house.subject_tbl_dm_slug_4a3612d0_like;
       in_house            postgres    false    246                       1259    16690 #   topic_section_tbl_topic_id_887e7a85    INDEX     g   CREATE INDEX topic_section_tbl_topic_id_887e7a85 ON in_house.topic_section_tbl USING btree (topic_id);
 9   DROP INDEX in_house.topic_section_tbl_topic_id_887e7a85;
       in_house            postgres    false    248                       1259    16691    topics_tbl_dm_slug_6453441b    INDEX     W   CREATE INDEX topics_tbl_dm_slug_6453441b ON in_house.topics_tbl_dm USING btree (slug);
 1   DROP INDEX in_house.topics_tbl_dm_slug_6453441b;
       in_house            postgres    false    250                       1259    16692     topics_tbl_dm_slug_6453441b_like    INDEX     p   CREATE INDEX topics_tbl_dm_slug_6453441b_like ON in_house.topics_tbl_dm USING btree (slug varchar_pattern_ops);
 6   DROP INDEX in_house.topics_tbl_dm_slug_6453441b_like;
       in_house            postgres    false    250                       1259    16693 !   topics_tbl_dm_subject_id_9e370280    INDEX     c   CREATE INDEX topics_tbl_dm_subject_id_9e370280 ON in_house.topics_tbl_dm USING btree (subject_id);
 7   DROP INDEX in_house.topics_tbl_dm_subject_id_9e370280;
       in_house            postgres    false    250                       1259    16694 %   tutorials_postdetail_post_id_c1d277c1    INDEX     k   CREATE INDEX tutorials_postdetail_post_id_c1d277c1 ON in_house.tutorials_postdetail USING btree (post_id);
 ;   DROP INDEX in_house.tutorials_postdetail_post_id_c1d277c1;
       in_house            postgres    false    252                       1259    16695    tutorials_posts_slug_8695bb50    INDEX     [   CREATE INDEX tutorials_posts_slug_8695bb50 ON in_house.tutorials_posts USING btree (slug);
 3   DROP INDEX in_house.tutorials_posts_slug_8695bb50;
       in_house            postgres    false    254                       1259    16696 "   tutorials_posts_slug_8695bb50_like    INDEX     t   CREATE INDEX tutorials_posts_slug_8695bb50_like ON in_house.tutorials_posts USING btree (slug varchar_pattern_ops);
 8   DROP INDEX in_house.tutorials_posts_slug_8695bb50_like;
       in_house            postgres    false    254                       2606    16697 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       in_house          postgres    false    3010    205    207                       2606    16702 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       in_house          postgres    false    205    203    2999                       2606    16707 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       in_house          postgres    false    3035    207    217                       2606    16712 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       in_house          postgres    false    210    203    2999                       2606    16717 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       in_house          postgres    false    3012    210    209                        2606    16722 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       in_house          postgres    false    207    3010    213            !           2606    16727 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       in_house          postgres    false    213    3012    209            "           2606    16732 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       in_house          postgres    false    3035    217    215            #           2606    16737 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       in_house          postgres    false    209    215    3012            $           2606    16742 P   resume_certificates resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id;
       in_house          postgres    false    232    222    3056            %           2606    16747 L   resume_educations resume_educations_profile_id_363d9f96_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id;
       in_house          postgres    false    3056    232    224            &           2606    16752 L   resume_employment resume_employment_profile_id_a7423269_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id;
       in_house          postgres    false    3056    232    226            '           2606    16757 N   resume_projects resume_projects_employment_id_574c5bf6_fk_resume_employment_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id FOREIGN KEY (employment_id) REFERENCES in_house.resume_employment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id;
       in_house          postgres    false    3049    234    226            (           2606    16762 Q   resume_projects_technology resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr FOREIGN KEY (projects_id) REFERENCES in_house.resume_projects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr;
       in_house          postgres    false    3059    234    236            )           2606    16767 U   resume_projects_technology resume_projects_tech_technologies_id_2ca2768d_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te FOREIGN KEY (technologies_id) REFERENCES in_house.resume_technologies(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te;
       in_house          postgres    false    3068    236    238            *           2606    16772 I   resume_technologies resume_technologies_category_id_147f19e0_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te FOREIGN KEY (category_id) REFERENCES in_house.resume_technology_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te;
       in_house          postgres    false    3070    238    240            +           2606    16777 R   resume_user_interest resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id;
       in_house          postgres    false    3056    232    242            ,           2606    16782 K   resume_user_language resume_user_language_language_id_baa88fad_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la FOREIGN KEY (language_id) REFERENCES in_house.resume_languages(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la;
       in_house          postgres    false    230    3054    244            -           2606    16787 T   resume_user_language resume_user_language_language_profiency_i_81ca799f_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la FOREIGN KEY (language_profiency_id) REFERENCES in_house.resume_language_proficiency(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la;
       in_house          postgres    false    3052    228    244            .           2606    16792 R   resume_user_language resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id;
       in_house          postgres    false    3056    232    244            /           2606    16797 I   topic_section_tbl topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id;
       in_house          postgres    false    3088    248    250            0           2606    16802 D   topics_tbl_dm topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id FOREIGN KEY (subject_id) REFERENCES in_house.subject_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id;
       in_house          postgres    false    250    3080    246            1           2606    16807 P   tutorials_postdetail tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id FOREIGN KEY (post_id) REFERENCES in_house.tutorials_posts(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id;
       in_house          postgres    false    3096    254    252            �      x������ � �      �      x������ � �      �   |  x�u�ю�0E������ �������V)q�TY�������3�C�b�\rG�!F}���z-����nQF���W�.�}^��eL� ����ۅcq��*`{��A뒐S���ƾ�U�-a��[�;`�oĂE`ۍA"�O���e8.�=ٻA�ɸ�́{�qa�;��0*J���6���~t�`z�8kSq�p&�8qw@�) jr���6�����KW�d"nh��Ne��>箈f�.�!��(�&��_��=�차:��]���rX�E�`��,3N9Hɹ�o|\����~�]o�`:��#]�<��C%�O){�(o�	,{����}�yS��ZQ��R��2W.+ͣf���j�h�5��¬�X�V�w����Ǖ>��%/;b2	�[�a���F�����spww{~�e�77=��\�����+56�����z ���T,¯���)Տ�N�wS&ο������*��L$R�Am���}+	�d�SVI?,v��隒*�M]��J��WB�f[	�JH��p	UB���6�>H�(o��ӧ���<�vAav�(�{��^^�@S��&^e��0��j#�1�8�"㜤��b�9:P�t{}��� �řK;�$b-Q�c��42�kX��I�HJgg���M�ףq��=]�h�8x�
��\����2�wI�9�n��k3���na�k9p9��(�r�rGQB��`E	���v���y}S4qZҎnD�$�7��"a��[�h�.�ƛ�HJ�mr�Q�86�B7"S	 {��4%L�r��`��gUyH�U7m�T�c�Jus�;�J���ۃl��yj��e�p�aK�<G��8�`o�ҭDFc �@�!`���!�c8Li�m���8�`�[�L�D�2�c!`T��	��oZ��9q#P      �   �   x�E�A�0@�ۯ��M�o�9���K�TEKI�VjFЯ� ����j�Mq��G%(�U�����U���ݸ�Z�%ݦ�H$��a�"Na҆ٮ�>�fB+��!�eD�R��Bl�ٞEB]�� � �M�s��}ZJQ_��.���a�)�{�{�23������x0X      �      x������ � �      �      x������ � �      �      x��]K�$7�>�E��$��#o�3k��ǘ2���9����sQ/de���RRVE2"�Q�i��р�O!�)�L� ���YZڸ2q����������~z���߮��6w߮����?���c�=<� � ���z�^�����e�)kx�A���˗��~;6�H���[v�h�ѧ�����~�T��q���{����_6�������H!"�L��P�靐^AR���eHX��~�[���G��ʘ��]�������~����6��Aa��@)ѻA��������ۡA�Ѩ~e\��,��Qm���t��}��r�Ct�rK־{y�S��V`;�ONP��/ϿOȑE=�E�:�1�9.~��v�O��)R`V�u������?7S��+�]��a^����e�i7j72BO�Ұf:QN��X���y�[�vS���![����8e{.Su�G6�)t����?l�������0�	�Fc���΂� e�|���]���SHv���l��l�_7�<��G��˙Y�D;,�l�e�ͻh!�Im\���f�u����� �p��u�Fci�m���������u,���h��M�NN��Y�xw�����ج��� ��������gWE=�߰Ma[>}\N�y�����Ʋ ��%�t�g��?������j��+����k�o�e���G[U�/>�}]?�ן.Xj
�� :�v�|�fr2'@�i�
�
���$qB� �ŏۇ�>��L
��K#9N�]��G�f-��"`6�/&�O�����RN����q�xfg5h�('�#b�y
�rUpQ�;������+ۏ߽��d�ޤQ��3�#[��׍E��ʆ.���V$���Ly�v |RY�7�7RPc�=�E8�;��ͮD�����hbw�lx~���Z`�U�K�4��J,z�E|�HvrP�l^v��1	�9*d�:4p��<�cyv���HD���hd���!kvb�u�U-JԚ���	��y��~�H����dM�A|͍��bF�|���4O�,��~�
�B?���*��
���1��a�d�-g{uLn����	�N^�p(Úl��P�1��;vb)O(h$+Φ�we��X�ݚ����y�������l*�ʡ����v���@��Xȓ!����Co���n���×�����v?>
�7e�	�5y�9��3��/���w����_��MAZ��nf�Y�#{p��x��q�I�M*��<t�����`���CG�N�C��iRh0w�B�$��O���Z�$����w�~�m(�۰gg|��<=*t���G
��ܓB��P���j��ep0j����`���i3s���%h"��oB � �#b����%pC�tθ��,*tr���q.4!�!j6DtԄ�k� Rd�s��&k�d(�r:�����b��k�ZG��0�3>�o�@Q�1X���K�6�@�Xw˱/�m�Z���]h���	�
|�ƌO����&[���k0j"��X�)?ـ\�6�5����)�Y��	rP��}�&�4�!%��#�6K�Gk|�F5��K��&�rM�R��,YM� Aj��	���� ڜ�i���K�YBE���Ρsm�3A1�ַ�c����q �੉$��.�il��f��"�G:ﱍǕ�3>��FM���Ș��䭨�pt|D�@�+9�(7��B�kx�:ʛ>�:̏����5<N�x� ��M�-yp�C��|��8�4��4�Q�y�}�s���5O\9� ����,��J�J-y��I�w���\���$�#�@ /S�smx��<V�[��	В�j�������T���W����X��`�a����f��˥q�|�Zj���@.C�h}S9�� 0�BY�i*�@��<O���Zm�Ւ��L�������uJ>ؖ���� �@lJslr��<C��@�(�;�N���R��iIB��WĦ<�x$BG��B�u;�r�Hz%kO�T���c��Ձ�x����KP��F<Q�|J@�T��|C�b��r����a���]ni��iA��ȇ�d��\�~�P��� at-#�~�P�q9c3:� �%j�r�b���NF?�(���.����5���p ��z�3�2�_l�m*��'����Ā5]�O�Ƚo�mOK4�'g���؃�5�v�myO �ws�Aa#����ŞH��$@� �$�z�!*B���Xtq�^�c��WΆ�����Պ�y0'Β;�'qϛ���	�0�x��~OT<$�l4lS��yP����8��0���
��x���S�f��t0��0��"��0KO4h/.����*�x��q�u 4M�Jr.�r�В�4O�-b������<(y�ؒu��_7���(�K�4V􋝅 }zW~�Xi��%������y����C�܏ۗ�\h��%�((�}��c�ܮ(�/��c9���KVa�b��T��x���6��z7��V���|笉%'c����e�U����&k��!�p3�|���
�q�PʳaM ���n7�������ݽ<:L����ZLG���:�??�}��,ȴ��0A�UN���������2�&$Ks/�����&�bEno7//�߷쿭��r�n���Ň����,L�Ѕ�|�X��׻���q���#/Y�(�i�y&�*�3cu�5�����~sw�j��;��t	�۞?�D�0�P8��Rn!�vs*��!sr;�)�����[#鐞�W94����Y!��8�A��r#����>/u.>.3��gia�G�,�s�S�~[˻$R�.�P��"�,Y��_�mPK~�_'�}˝������ڠ����Z#��Y�)�:U<b��|�z`�C�@�v8�fwN�Nk�T����]I�qpb?.�ךFl�c遂��r�� k�lt�2�z�p񆲼|�����l�I�JʝqO�V )uK|��*���0~��+ %��>��S�r
X+
�����,]<�ħ���H�,���>ӥwn��y�]����mHZQ$p|n�Z����s���� R�����B���ԡ�uzv~KA�[�c)�.�0�r����eV�����i�E� Nb�='WZ�Q1r(��m�_�����6�������9��D9��_ya᰿~����hB�B
�F�X)��6�nv��9���F>Wm��?��ﹱIZK\��7�j(1����J�<d���h�q������\����TF��\.`�hPZ2��޴���&�d�Ă��֚N�4�?.߬D��^����~}I�����fE�K�R3�v�x�1�!o>|��ZH��!�k�Qn����ۭ�BF0ZINVf)Ĩ��GƋ�=Щ
�VF	��o�лbHv.o_�,��MZk�d]�Y��>Z|��{��3Պ�q#;�J�i�ܞ��ӟ'z���Z�J^)�r�,~x���v8�o��V*ƣ��J�%%�����??l���9���1��jM
*2Jv�����d�3X�B��AZ^�s�hqS��I� �f�aĲy�喇m�����k@.�e?��K6:/��ϧf�5H��gp(jDq��mrx��D���z���d�&�q8<W�!�l�&�,��YO�Oz<�E~�=���n��G+i��d�z�Se}�e�M�˩�q;}���9�D��#���f�U��x
4*�����V�Kj�o�|��qp�,ߥK�<�d��<g�5�[.e�ƹ��M�#��V�x������e��������~L ^C�R�K�4:���T�u#ޏ5r�K���褠A��s@P�'�팆F�%71���kJ?"��Լ�����a(����ĳW������l��sb�P��o���h���W^�jK�k���sht��D��{*v5I6�N�"�p�������z�<|�yT3��)�CkŔZ�,]��0���O��<������?�tg�w�r(*��"���&�}���>o������v��x���'^�vxHX����f��N�a@/=�!�xxI������ˈ�4�hJMQiov��fzIuIH��W()?�uȸ�2ny���L] J  8�pYe�=��2�k�q���wg����\eeӓ�� >*b����ʬ����{#�q���0��/��<�s\ͱ`mGOHW�h�4W�r�C��~o�"J�&�C�x"�Z�>4x�{6R�$n��ع��K��lp��C֔�}8��K� ���,�c�UA;�K����Uc�����!8I):��|IL<�l�$m��{���;�c�����9#҅t��x��9�����S�5�N��\�C���Y���v�l�*��S��d�0���..8j ,ZA���k��z�;z�z��L�O��ݙ�h?Y�$U=�ޔ��
�b���X{�pL�ȮE��FW��z�����Q���f˽Y#ҡ{S6�٤T�APm�Ք��/�H���)i2�9�Pۢ�%�Lr���lm�ܖ-h� NJ��3��a��-�K%����~ ������g��|�,[��!y�GckZ���ⳣ��,2��4;4�O;Řj��p7g/!�4�8�\S �)��X�c1Wf�������5�_������o<7�2ޛ0����!8��6���-lO���������׊�맧P=�� �lqꧭ��fVR��l�'�P���Zf,R��e�Ԗ�4�k7��^ ���Ia��4��lA����g�5x~���M������-�D��:�+��߳�X��~"��9r4�M|�wh}�&�^�tƔf�;s��$�yn`�3����w��\��g<�@ODWS�g��!x��M��/jp��{���6���r�}�mQ��!�c�̻�M�0����;K>��<#��)9�����L.j���D��Kk��� �fxI�Wq.�k́@��#���t-�5VHOŎϔf$�	@x�ڱ���d^Sp^	r|�~66�T �ЅD��gi�R/���m��k�ܬ��_E�AH�x�x�	A�.��r�j��AO�]�cI499$[��ʟ�s�!���[�u�տ�2Nd�D(���x�兀�"���jsw�"�ܞ�ҡrc6�|)�%=�	)�%N(	�M��� ��0����ouP4�y��Ϫ�/�ڊ�Bl@��ad��D+��UqŜF?�kl��8��kB�.��⫝U�R���;�Ć��P�C��:Y���ii����]���0��QC�L� ���M#جhj{���C�y	�+?^xʹ��(('�_��J8Q9y�DE��;�ew��h����{��nH4�Fj��Mr�p�D���j�T^��v6:Mz@��'J{*�IP>��v9���/�q�4t��qnyܞ�ڋ�ً���t�,����c�l���^C��u��8:��b��<f@G������IC�߉�E7���ή�u�5y��*�<q��� �>�5�� b�f*��r#?Ya����oG��I�f$kb����W�O"�^~M;w��ѽF�?���B=�~��I6=*t��*���"ǣ����!��E|׀�Z���ʛ!�R�^�t�*�sX��s�:�I��^�XsC�?1ysq��+v�;͗��՗���|8��!y��w������쿅��t�c����B�\�pR�ԁ3��J�8��[/k#\�ڒ4kv#��7ݜ㊅F� �:���!��,�Ǉ����v,�8���\K���ɉ����	��w�г����2���3*�\)m�aZ��`Mlá�_ڐq�@���
%�������9o�%h%�Rd�zN����D�����kD;���:��MQ��Uk�۰�f�U�>$S�K5aq�%�_���!*9A�����ӄ�	�o��o=�f[���7�|�/ײ�K      �   �   x�e��n� E���L��k�/�"F���`��C�~N#��}����^[#M�F��p��� n�J�7���2�v�B���/dD�1����mF�sI�̘.�%���'J��"�����p��1���pϔhZ��'�Xۻ��]���c�Z��Ԣn�����D���36ݧ�P���J� jD���q�٨��^}]�or7���;�ۆ�J��;l�j�5��bY
� ��C���> ��ߦ!      �   s  x����n�0E��Wd_�����k��
�*RA��%)E2c��F��h��Bu����+B���Cm�
	�3���@�8;�8"e(�BX�)�<VP�/YR��^ں{,a$@��M��鯱��݌��_���\��+���7�Qg�9�}g~7�j�/}}�첤P��wv�G5����ζn���\�Cc��F3����O%%�i�i\w���P� 牤V]H���ںy`"��W
���G��¾;�b9@V�e4և�|����s���1 +EDs�N����m7ɳ/ Qg�O���j��bC?�<|7��hZ罽~1w�Ԝ\�+M���e�T�0[I�΢o�$Q�O�dA]�~���
iƈf�C�c��~��/�Q
�̐���3�p�%R!f���[�e*���!�U��?Ɠ��iB�g瑔:��$"�I�>"�
�+J5��7����Z� g-�Zf���;�����9�HK1���!7qtl� �$^�,�7�!�z������y��d�Q��Y%B� D�BY �	#E�"�e��D�!�	l�� pB�4{�
DZ��`���'���#2�E&�!��sG��	<��9�9���#�=B}F�SG)�2!~��?l��      �   q  x����n�0�s���}��/��j�T%B��^l�!M��M���4��F�g�Z�q>u��3o�n5��Z����¨lT�c�-#�(pŁ���L��	w�F��*V|�	Wg�o]Q��>%�AuJ2���/'��7T�EU��-ZW�]��l|��l�.�w�Ƽ;ΧĿ�4�Ӌ�?W�&���_����� �_��{sQ��9�B��wǔ�Hh�?��ʢ@3�OtWLL�b��*N�Bg=OT��w��	��6�]#�Æg[�u� ��F��n� s_]�t��.�D�lo�@H�kw�#�����-ȝ��e��ɹ9�D0�����*�A�u�t�7�Y#�3-�@[DL�~���v�Z}�39]      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �     x��V�n�6}^� Mh7����5�6@j qݬ��@_(��S���nԧ|D_�{���!��8mP�u�fΜ9gȳٵ0������gM{���?�nIyԩ��k���j�¨!j�5��������z�ʴi�.�XK7�~�jR�`]�ʚ��t����Ր�V��fө��NL!�y�6�DS1 ��Δ~xv�U9a��*�xխh%�J�y��q_##پz- m@�/߷j-d0L-��ʚ�4J�@����jK��	��.6Q�S���Qh�3w�n|6;;9;��<��./3��Ys�xv#� ���;�a��{���}�����X>*����ݻȼ�J�4�L�J�U�N��l-sC'i<�6R-e$�6tTi�T�5��ɞ��(�������IQ�䀚F���*��*��@���
D�t��w���6-	�4�+P�p�/0��X�������? n�К���;�����v6B"�5��j�4r�9��S$d�D_YH� ��:�� ��4�720:V񎛂��H`��ݍ��jE�sJf���XQ#��P7��[B	;m�V����V�������%��[+n��;f1�a�Sן?���n��`޳�I鬨�H��C�ɳ ���
p�H�5[���NN`L��x�u��q�ώ�P*@��%�5.�Қ�̭�"h���󧿔�t�9<�m�L�üuv��|.�,k�Z��xp�'�_C���ex�g	�a���Ms����sTQ�
|_J�!Aۤ��sHe�]�0�q����d�>�]#f�f~��
ES��6>[.�������I��v���U���h� �d�-?�*��yR�<�KO���4�y��aPC�K�p��*�Y�v�ܡ~���4�U�
rk.�c�k�����2MP�v�f� R�TZ��ȂPh[��=g��sk������"+�$���B�\2��T����+e�ǂ�^]���/����EA?_���z��.���ע�_V��,�����'��3�w��v$7�&��
\n ټ-�P�#��6o00`��t�BR� �1yw!xm��{�����b��ή��Y���WӸ?D1	��'uq0�R�L��<�Σ���!_F�]n��o����D���)A�٫���H/Y1ti|P�Q&1`��d�EU�|?���h���Q$�: ��b���$8:��!:�"����P�����ѕ$�ӹ���ō�^��0~��,V7y��w��<3�����͆3A|�򨲿��瞞��ѣN-�xxVK���?$���� ��������؝�x�ק��ըj���TNF���4r�>�j��z-�����1��ݑ-=���햙��ɼ��׻>ߠ���|#3�:���A�z�\��]�W~�a�He�_�1��E      �      x��}�s�8���޿�Ԯ�	��|h�T9�g������n��q�h	�8�HI����� /Y�|(�����4ݍ>�[o��_f�X/�z>y�<N�0�|�������u8����;�����?�^?E'/�N���sW�"y�6J�I���ҋ��%����g��r|.�bN#1�F���Ld�i��B������\��?�+w<�����^�/"(���+��k<�����u���p0��2H����;���W^�Jq�<ߋ�X�2l�#��s�E��	<�L#�1��phh<��p��S��^�>Tް)>Ð� ��z�&���)���X��;���� �ГIS�#X�D�> '�?��i�BNq�W���;�BMqXc�^=���~���N�`OB��7a 8��"�?e�x�S��G"�0B=<��"��e���C0��z�f2��0�]_�S`O� j�n��:�N���k�{��6�w���,��M��a�\�7hx�h�A�J�#e��|$���z^z��t-�е>���I�p�����|u���?���>�!��߇��c7��d�p˻hH?|H\�S��Z�.D=}$��Ǔ�]���>b�HF0H(��Z#ګ�05I���5L����`�H({o"��Zw�!�����.���q#aPODS���g�O�V>C/����j�L��$�}1�1 ����b�f �ą)�e� yl�� {��@�.@��\��HeS�d����N*����U�����k�8	� �d�h�^�dP5]M8ǅ}��Ь��H�|N-|7�_�|7���t5&�d�����]X��~D��t��N��|��ϟ!�/;y�Ã����+�~�?5�ِLHE����;�l�}��.�������"M*,�G�y܄G7J���@@g��C|��� ��������兢2�S��(�7���o�m�@����w#���xh��0�X���y&��D�a�\j���^�(�k��ӧ�0��"W2r�j#�r�VW$����8^�^����DG�ƒ6�ȍ��n$� ��=X�7�b8A����7���eӞ/��1�0L[��!�!J؍��k)��M�V@"&����e����H�q�<�Z� z��1�&Χ�=��Ô��
6O�B�0i��Q����*��A�]�r�o�7@�aZ�_~� /�!�.���JP�e�(�	��Z� �	�h����A������` Ի�V��~f�u�� ��<�l~�����I����޼zm������� �u���v�ҵ>dj�T�j
390Of��H��)4};�ʨ��L�s�1�q�����,����\�
qE|� sGa��E Pv�x��[�N<>�p�`�������`Fp7�.�i$���(
�Rt�w���?#L�v��-B&����qw����a)�] ]P9��b:A�*�^���VP�.P��/����x<��'�E��9A�.����;_:	���	�AĪ`q:��4F0X=�a(y[� F@9.�-U�Y��N�
��d�����,��G24�/D���o?�����ۇ�5<M��i������?6?L�:��@5�Z�:4[�����0��Y^pІw I,?��G�n�J��-�2�~���)&L��	��y�4���s������&<&`����m� ���2�x�%#��2��&`����Ac�����{Ҋ#iг����i� �L���p� aX'�c�o����b�Kާ����#�P�QN�����z~A�q�8_45���Y��0��o�{%o�}���羇"D�h��&g�a4�	���g��h�9�o��o���p>M�A���4=�O�y�"�Q���QN&A�X�!����YO�6!ґk/�
!��7o^"���sˁ0�ӏ:,K�[P������p�BO`z�d���s���ϙ� N��]�owz=G����>>�:��tZ;?�R�Yw��.*@<ѻ��`S�*(��b 3�A�{��Զ �ڮ�i&�1�¸%�i���N�,��)S���/��_���'#�^�M"Z�H��9@�ۍYƼ
�	1��	H�B�á�Z����KX��,-X�/l�(���[/&�wd8���*�T����P�y����	J�0�Z@d��i�������b U��{�����Ƹ*�K5 - %�R_U�A'`�bbS�v�D�gd7.aq��F!v@ VU$ӧ!�f�i�c���G=��3	�#�ɗ$AG�_&���n�M�(~k&��^�N�?�/���b#���64p�6�d��� ȍ6�;$�aî��f��~!�6�w1[��ƹ@���r:-��rv[N��최��s�r[��[gYl��.��i��|��so|)�h��l,���l��~r:D���3��+A�iN�K�󌛺KP�MGUN[g���?�^7�V�R,�K��Zص�=+lm��7ev�Rk����m��yP�=��%�[yh�m9�FLC��k/�`+`y��C�@��s@�f�����B��P���$!'QA��]:����9s�ak*-u?�v�̒hy�Q���}�����C(e=��>�n+��N��N��kE����)M���|6D�F`�>��[���m��d�j<�ra�'(̌Qߨ�� �B^
[j�	�lv���&`��9�V��-'`�	��7�RM�۹�^ݰ3��32�w�w�~����潰O���!�x�O,�$�aӀ�ť!��2ɇ)$ �}lS[;;���=N�o�8�;��:�N����wk�5
�8�,j�B71"�8D�#��LuI��FdG�c%)�^VR�~H�l�l���4D�|_�d`J~��2* �� ��XJW"��{�X�So�_��.�d��%d*�R�}Q�A��0�1����O���R�Xt����QL�����u5�x�a���l��0u�.jj��Tb�`9�R��W(M�5�Έ���d�v�_��W�Pa,���8vT1��� ��ђ�X^��6�-����7��TV2R���z�R
!��,�n���:j���:*�sep	|x��{ �AY�����(��ψ�3�b"��[{�M�ߌeD�Ϙ����{E⑌�Dr������9�'^�³D]A��ǆy�e��*����Q�R&�p�t�7	�"�ZU_T��I�F��Q����{�'>>s�NYɺ.YO1���։���5�u]<I�M��b�\u~U��X�+rǴ }[PU#,<�����	�P�B��dw�-��M�j��F�7��%M*��e�bK�%��v{˖�ӳ��R)�󩸭�ޗ��X_�}0�7�#&�԰�Tfz�.���+H�n#�[�^F�p@�%�;o�0�Cùj�}Y�3r�����I��T�ij9�(N�ۭ�����a2�wZ��a*h�Ta�7 �a���>��D �������0_�����7"A��RI8�.�P������gXm���ڠe�0�G�)?H��h��K����������*��`=����/�)|���I�@�}|��f�S�`=��0���ɽw�K겇�����`=u�����{=٬Q�W�' ��ރ���`=<XO����v�-Z�L��ψq��~����-��M�R�8
:�"��÷J_���+P12��lX-�EdӲ�
�ޕ7����K��+���k��F��9Ee�n�T���*#��)�%��,\����U2�;����.�|��ӑ�i3�f�d�Np����^�e [U��uQ�J-S��-٩.��-�_Tz/�N�ǅ}n�K�����;%%:V	��ľUb�%�:}�f�z]ݱ���pJ*0���V�B���nY������wR��VcХD;�Mj�Hx#�>]u���_�b�6v����Mf5G�J|��� ��~��8N}��d�����j��I
箫��Lzl2�.���.L�� ��m����m}�6�D��1�E�_����޽:���#%��ϔ�3<Tԓ�e�FY��6j��e�F���Q�    m�)}�F��ѧl�)7�S�D9�ߓ��{�A@�q}�M��ײ&�)/V k��
sUZ��x��
�TZ��ܥ�
���Ta�*Ш�R�YZj�ٿS5�]��n��˖�\��F�����Z�7��ڤt��e��HP�L�Hvd��Y`4�����ì$%5��#✆A�Z�I,��:4�Nm=e�ET��a5�&2�"���h	zo�2��؋Ы#�%��P�Yk
$�@hSF�aRƠ�����c3��=/�;�:)5v�Zz0�Yq��}��e��iV),�.�pҘ�&l���/�@Z�&`�����+��aj �h���U]/Y#�����*��׹	'B�̩����h/d�\j�u���\ʽ�9K�V��/y�(�s�\�������y�����61��R�/��� ��gdA�񅴋@,���ԡ�qċ���`'�WʀT~�lJAF� �SgF5֊+����sF�d'�w�v퇻Y?���~���bh��3֌��@�]UB}˗�3e�ۊǆL|���k�@����~��6�ݾ#��0ؘ\�_x�����>m� �y]
������ƍ�.��3�%����0�'�Ԋ�1����j0q�cW�����E�`$�t����anѬ6N��lIwl�L#�/�b:d�#�	�[2���Cx��c���m`�ܙ��y�:�%�^F^���;�>yu��������a!󄅅�#��J��j�^�y�V����U�H�8�e
��������(#�����Y�����8]g����rm�V��s�ΖX���P��?��t�%��H��<\
����g�y�6{NU��:?�]^��:w�C�Jj���R�u*7H���x�eb�wy�:��	��ٸ\��hU�ن�6����X�V%y^^m�+u+�l}V��Y��c,ǖ�RT���C�rt�c5Z�0�8��0@� ~���N*;�-��d
��cE9cL�(y�4^5�K?�R����2��U��	a�y\�GgQ�9���U��c��Z�ՁK��R���?؟�9���&���'�.�-RgN��z	��|:ځ��$��u)��p�u&4����lOU=�E�^cYIS�Eq����x������q�Ʋ��MW����!��G ;;�L|���35�j=�/݌�����b������Se}�1�qƑ�)��p(����)\' �+/H�W1�����{j���esRŻ7x.M �E�N�[O{B����<�
>�vg��n�a1�:Z��W-�UD��+|����i��`0<��m �v�C7KO��S�&X����Tqm��u����Bl�"��vC�ͭR��	).'^�[(��r��"�z�� +�� j�'�K�;-�"������c��.=��	ifVi�)>4Q��S�/���_?I�#�Q�P���"�E�:Rԥw%�7�m)��S%lo	@�zi��:�u�.p�j�6��p#�L�@��Ĩ��g�����ӱ�0W6���<�tY\+��W�PG�k?���`��Ҿ���:�q�-�J�~8�~ݩ㣺�,W�$W�dNYV����P]�Ŝ���
5�!����SU��skV!Wk5za���M�5�M���_�i�͏%����z�By_��Bg,e����H�tn<|�k�g�T�4��tu��Q1V(ߦ���Կ��ă�=j�h("�
Ě�S�������K� `FV(��z��bv�]T��[x受�ҊY�Q?Az�b���!��@�|f_�C}�F7�d$��	��3�/�
��;�Yz���2̈́�T����3�. 3���1��¨��sL8Mb�d$��#���PWOs���B�V�^�����3�E=Qc�̓����F�j�s?���IȽ�z�� ��(]?���,� H��u��#���]����!H��u�.���?k4]��R�ӹK�֛�c����1j��x��m4 ��".�c�R�X�h	�2y������	bMS/�Ґ����ަ�	5�X�/�V�K:��i:;��;c�uQJ�H4J��=��,)K�u��Ŵ�Z&���]'܂ՙ�YS|�����G��2�a{/���v9�tiX���.u6S>mc\�&!ʲf��90d,�T�3�[,�J�M]�.U�۷��W����j�ZWgL���i�;�`2E|��]�4�~����ƍ��i&����x�k���*j��E��__��+�H�l�B���Y�M��d�d�.ݾYU�g��g)��w\�4�+���B=��ds�o�#����BW���ӈ`DY��t�0rK�b����c��2c��4�uQ��z48�\��u����L�n���X�Qp�˅|J�Y�����A�8;%Q�����/'gZ���L���A�����6��<����t�c�<eQ�������!
$�
}���%iw:J�}���۶����Mc׮���J*���J�^�F�W]��ow��B|�t�j��I{��'I�a�#h��S9�H�$�ߊ����P+ܐiP��v{ݰW�c��<�Զ�d��6��'llΉ%�T��Z�Ǔ~z ����Q�3l�6�p<�dT.啲Nù�D��QO�r��Q��T# V�����%��/�]Pj�(N��3������K�x�[�V���3M�'vٽ#��S��T8Q�w�p克F�*�RzxY�Nq���-���_��O�>����R��=e��Qp��Þ(;?2�8�����^�)'$u$�7Kٱ��4AD"���*<�L�%K�eb�8����5���P6�%%�1Z�˅��XCZ��!���Y86x��>S���i�x�7茦/���v�P?S�υrgڢg�0̇91�"=\����}��G������n��Н� �ݳ�:H�� ��DWYÝCJt՝��*�TUj	����1�@��|������>p'�*�s�����֗)^!�¬�/��T"�Fz��3�-�Wf��ͯ�N���G=��l�Y?�:sf��Ū�W-v���Mf*ڪZ
���VZO�0�Uva��^ɪV-��rx�3N����]Uio�I���m��^'�'~�%�q-Z@�Bw��U�A"[��6���:�����b���[lh ����y���K��N"�]��'#�c��*��m��)8*��j�u탭���Y��v�oi]�p�s��'�a�s%C؟�L��n�c������b����ڝ-xI�Rs,����֑%�1:��d1(���.�_b`D>U����1w1DQ�༳��CUwV��I��JQ������愓H���^��lp����;��M����.�cU�����#���(rg�g/<A��㶺[�ݫ|SG�\l��P�젰V�eT^߻0rb_Kψ�����1cLd"͹.��Cn<�G6�	,�^��(���S���<��L�áw1㈶ƴ٘�.w�͗3�w�U��s==/���������	Y�ֵ>���<�06��#�eT���4O�e�DZvd��[6�"?O��p@���G������ c
�!��NC�oD}�����	0�4y�%�?�9S��KO|/Y�U>���y��n�,E$d<��T��fz�������@�V���C�rV��9j�(�i;�T�BQ��>v3�Ds�׸��]��|�N��_��_߹tv/��3qh��ظ:'ͷ��l7��:���	�X�5�����?xj{c��{�p0�F.�zn�L�*M���Z�妍�F��v3�sR�.��;>.lrri��7t�t>�nk�����n]_�җ�5^��'��?�A��kN�f�V���t��j*�ۏ�������v��N����w�-����qOg����ွ��t:���J;v�w �-9'2�e�G��S����������i�+��q5f?�2S�f$HS��T�v�|�ދi"�o�+��*u���KZX����-�����]/_�G�׳~��������9�<r�0(�(�[p��F�?2A�֎�k������F"��I�ᤥ����{��V�ER�������t��Zl0�F+m9��ҍZ����9�-�E���-�Yv�^����z8��`(���wh�`    ��r\^��� Z~]뀱4_�ٗD�:�A���B\Z�����{I�2�g̳�gOA�a��!P��z�4�d�h��x��9b�>�F�A��8+�N�B:)7��'Eڰ0�4]M�a.��\��|�q����'sDe����8s��T �Z����7�X�A�X��pe�m���Q�wHh��Xl��;��e�T��W�Mp�L����Ƣ5��ʅ��ӽ{���eb��_�c�v�*��f��|PN��~�a)g�v�.+㴅F<��� ��&j�rt�o�)S�<xYb
�k&� i�M����]o�*�/��)D�Pp�6���[����R��#�EDX�KC	�`ED���9<�X��	�u��:������� ��)O����ï��޽;y�+������l��v���O�y5�/@���܍<sT�;|�D�}c�$ɦ�C8��m��(�=F3D����UbY�BS�7��jS��NF��#�u��/�{���(��ty���z<�rۆ���V�8�YD�25*�HGQ�@�>c&7�F}��9�D�(4Q��5�� *�ԓ� 	aRf���~B�	�g7�&�����t�J��ԫ�*�e �����(��6��`3�e6�r����&FL�̞$OFO�'��FS_���y[���$�;	���r#O�؊��O���W�RՀM� .��	9\_��t�9aHǃG�	C��y-���L�08��@r;	F�&�(}wT�푤$|;7�8��\lE@��1DJ��� �Wo�q��t|����P�'_MI�P���%T����0J�p*�12C��F���,z���)\M=>�i�vg��2vS2ڐ0+]�#p4��T���F�U�T�2̽Y+r�4�S��0�xԞ%S�Z�	`v�Fl�`6~>t�ў�����;�~r1?*Í8c�X_ː�3�����&�oa��&2\��n]�:6=�J�4/�J�qL�#�B��9����s��+X@s-���U;���⑰d�����nk�s�98�t���
f5w\K����ǂq��b^:�\1(-�\�}͆��L�W�B3m���m��@�v�F^ ub�U���n���R;�}&^ 5>z�j���v�G�5���*
���i�Y�����8��ϼt��ղ�� \�-ǙU$��qp)Պ�i���y�;R��˒j.�6������7��y���(�(>�y�Χ��x�T���rj��}��oq��ͧ�ϟ������:Q��^���ӱx����/'����|x_6,���3�ڰ.R���U��"�G�|9����v(�4���◘_��x�C��0�|[`���:��#긿�/��z~�Q��RD�ۍ}Ao[rN���A�X9 �Y�������Z�� vD�:����v�JE��Æ���S<��#�$U힊�f9��O��QblP�(=E-��g���@V*-"Uہ_�	��C���|���(B�����b��v�F��S�OrH+��7��/4ۡ%���v�)�TL��s
���u@��؜������u�^��(t���af��&w�d0P�� ���}ό�x<Ifԥ%��ʼ�Ty/cĉ�BϰCtC�.a8��l�L���?C]�4��f��R�;�?���*�U.�'��.%� X�k-�l���=��)��������dٵ����@�
b@-��gR��Z=�uچ~�3ǆ��]Ěs�5��Q;������;���8�k�9k�(��pJ�5!<ۢ�Y]Фh�A�t�Y� �g03nD��/������t�,��s6ZqO����]ѳX�w��t?ߌcm�v��k�S�|���pZ��:�_	��L����$���K�}ɳ((���R�j��`ӗw�?=-e���7a�o����DM�1��n��lB�?��$�l���Ð����X�Zͨ�F3,�k�V&u�$#���E'�{���*$�R �믌�ؕ{R�H��:{�0�k�a�~�l=T�������DŁ�;�W��Ț�x!�z�϶5�~~�n�g�a���"1��5@V����ǘ�Pa�4@ݴ��n
�k&m7�
$���V�[-��TPh��fy��j�ɀ��N��֩��Ȳ��۬�^$��^�8�*6�P�^�������n1��)��7�uTs�>@{*�\�)ڤ�$��LvVF���p����aJI3}��ğ��3ZxF��v?�}+
��j�|�(�g��6Ov]�g=�R�C�	�6�"�����gg���ކ'�5�ׄ��i��4���勵�N;�k�4��Kv�߲�K�6��i �۴3��D�6��!�ʿ 4���`QQONш=�4�BPSJ��M�O��S���� DBE���ȁN_��uMU�JOBDD� �T%��㜬͓�K¦���J�IE��d��6 *,�.kz�	�,�5�k�b�k$=1;�p�������2��	-�}J�J��ݤ�f�}���s9�BHh�樱
oR�qjɉ��B�|#Ne�Y��U���	����W.��lP�L1b���\%~v}�2�?4E����4��-�W]�{�aD.�(>�n�����	��$����Bt`�B,��&����(�����
r���,�/h#��8���w�"���܁����3H����<؟�;t�=�Kf�i�A�F!�o@�FN���`�hOEK1�8,^<j��l����d����>7�q�wHm߀���s��a���70�")�	�K0?�e�#҈��!r �Ƈ���h��G�U�_X)��SG&��_���Q���9��yMg���~�.GX|�Ss��}��Qk�6�H;�V��1����H �W���@ 6�$�G����BI	jFcN�85�6]� q�����v�Hr~n�b���V�7�7��Ya̐����S/RPa������'�Z��9iL*�t,�����;��h��f��ά��GZ#rN��R|J\`��`���n8M�-cs,`��xZ��#Zf�����V�bM�p?ϭ����7v�K'�}d	���<��޷?v�p�l�'3[����F���mI��͑[�S3�L�j6I�gn3_�	��F�,n��JF���Gqҷ�l�K<<ҵjL���R�y�\��_���JJS�����>)c���dE@��w�cF"=&�|c��O��O�Y�3�3�:5�%[wg��n�1��/����m�6q{�Qw��1�F���Ҍ�&]�ɬ4���GN6}c�1.��,��[{8�X�c�e�,����4S�DJ���fM/"�r��5N��3
���>3Vr��(����qe��iz�|7�b�[�nCR�1W�Uh�A/�!G�V/���,���4P�_��*鈭��aK�:�(�đ�����*iw�����-��A�2�>�8���!Z�EWYz5<ʟ���8��P/�Q'M��_�Js쌫�"�����K�93es]���AjL�&��)���yH���������tH��7Ec�7��2��J(�T��d���r��خ�d$�!0ރ��vv�:����O}����l*')7���- ��^d��i�g���ꉣ��;���l��fi��sf�����r�R��|�A#��o cN���lhf\0�I���V&0ӆw.ΐ��-��PȂ���U���d�cq�ƨC�)��%��n��{s}�R� Д����Q%��F���j	����ay�x� ��>���8d(�=g�T��4�	��P)+9��F�����S�5����@�2�)�5�������4��)������#k35s��K+��I1�9`��6��
���ZL�ѐ򞆁(;~�d��������̼EM'�@�����1i0���O<ڱ��{���Y�p��#�O�KF쏪R��M-����H�PK�.؃��t�4jCݬ�SQO�AvP:Y��Q��k�R���]LG�������!F�x8j"��L>ⳌI�t�Gm}��=���_�,�(E�a�O$~(?�8=_�e��	]��kj�g�Gj���[�u�nK��ss〻�p'7�vo���(�
�p�E�(�@��\�ӽ�    _ȍ�HT�����N��oӠ0��g/�A�5AQY˶��Zf��Έk�c6���A�����Lx,z�ydP_s.3ԲT%�i�Or"ʼ�>ju[���c�8K��'/�d^��`d �T��ܷґ����G�&�|Au[�#������:{gY��?	���$��T�c�	�ڮ#��2
{��=�x�c�6����Mq�1�f��#ez�Z����/�"T�)�Q6�x�MT.0�
�b���Q�q��4�+;	 �$��z�/ޘyt0�p#�r_9�4��*ϟ�l�M�oD�q
�%^��2u�LD��/E(G�:^�uCP��z�p�҃*Xj+�y�t��j���d�љ��f���D�iHXnj�Pq��He��z�tc�ߏJE�j_ԪC��U�����x/}��F�~����|(s<�M(��񂒕^fՌʞ�o���������]���a�7ٕ̼Xm53�g�U3V��좉gM,��m
�7)�-2���I�!���z�&�+���{%$��IG%Q�YZ�5i�Q��N��K�䇭M�B���E})HJ]����i�06�*i��Pm�J���(��
.��B��+sN�x�tw�@-��wQ������c��ieμB��W���_���|���0�:�NUKe1cZ+�n�T��R��J�wW�ݫ��t�2�|V #��m�D�I���ER�5�P�n��8��A_ D�͈�^^�w��{�U�V}�m�X�4V#@��b!�̲���ztf�`�s�sev,�!=RO2Fˍ���qkd;�Ǧ���QC�SZ!�a�.��S�6׊��SV�|e_f�֨��Ǻ'D_D��2��V�N�`��`/W�WU��Ε�Y�E��E��Vd,�s `J���Nn����ͽ�C�x��v8��S�U���~�p�Vr��R��d��Q`O��9�M����:#�Ƽ1�0�*��}��m]��I
a�4#�7��j�
D��y���!�����b���1���dyc�`�dL������#mbz�蚃l����Œ�l;(�Gҍ��؝�-�Ų{%V��]�\�O������eB������QqQ/Va6]J��1&��t3�:�L�빑ExEUt`/��!�(��);9I��ϱ��[^x݇z��d{�*_��2f����z���u'҂ni�@�]D�e9vu�ENx]vfB�]���O->�Z1V����,{���z��e��|����" K����=c�o����ni!6�^�i6����bSx�}���4��Sx����GL'�ϐF�'������7��sE����,����I�Sa�6��O�e$N�6�?�E�N��ݳ�@U�[�w��Vj}�b�F��{����w�j��t����cm�b_��Z`�����L�ԝ���C��v��ފCVF�m�b�	h�D����A�]	.}ڮ�)P �㑭)*���rT��;t��*����+�}䳠��s�f��~$��ǡ_��1���a.��g_��8l��&�F�ň7�vJ��	a����r��i!�R,D(-������)���L7��~6��mE�Tf"�iG��^�\����霉O�l��"8	P�z�m����7�a(ڡ�Q4p,h�����������2�������Ȋ�\B\���);.�[�f�Q�&�J��t��g�-W�}���`~��EWMW���abO�TϦr:]h��y��B݋c.��%��ⲻe+I�L������[̴GS���� �Aa��.�uɐ� 
�0Q\���.D7�.r�mNreK)m8s��}�O��fq�<T{i���-U!�Clf����Aț���|>�ƶ�7c���B��W�߼~e	c�#���Wh፼��D�[����F,4��A�JC���f��ȟ�hNc�R�pqh��U쥯�do�RC��≛`�P�,GJvY�9^�#6�9��ع�̒7��3��lk�[M�m\�ڳ½�s���Ğ�LԨ��Б�J���K���C�b��2�\cĽ�>[W�6�^�hL��s3ۜ����*S�Z۱қY�ede�,��g��crXVКmP��v�4��l�vQ�+_.<��9XU`��ЉM�$�1{�X���D��ü��.�jg^���qߴU�uhE�T�4M��4�F�lN�h��):��5��kj�����[Q�OAm38� �D\X}�,����"��Cj�0��]��JSy����j��ƨp�&�n�eu�+�2L�yR3D�Z*��Ns'swƖ�l$N���2�'�9��%U�W�Ï�ߑ1���
��/ucTV�Μ[-����\zZe`qx�I���)c��,=�����:�<Hj���T��܊�%ZW�{��3Utr��𯚿�b��49�vu�VV�_'��?�<��5�Ү1F�ǀP���$�&臢K�j�2	'+�
��\�m�9m}F����ffbˠ��6,ڬ+)�7VM���y��rfh8I�K74/����|�2Lw��`3w��ܔ��J������bf�$+�f6�k?�N��:�N7��i���ʹұ��Ɉ@����v�2<`Y'Ts4��V���.�=�2iR���6J��:2U�Q��͜�> a�Q��?�Өn������b����Nf��Ps'A��|�=K� �P'�]�5Eo,��Ћ6��Ʊv�;,,�Z�5�Bܣn����xxHM���t�kP�^~�*ӭ����g��*H�������|�L\�>��@�KL&�;mD�"-��y6�g�z#+�/��u�U�Z%qW�yt�nI^	�u�
��b����GfMk��\��:�q[�Z]�VW��Z�����,#TP�i�딕�Q�^���Wu��H�|ՙo�;��n��:%��*v��D����h�iLŦ0A��9Ø���3�w�K�
�s�e�m+R%�����޽�
Nn
�C��n�+�e�9�Jw�r��h;$�������Vz�DG�D�q��*�2}�pB�2Z�H_a���_8I�h^����l�[2��a�cOڐ�-Ǣ��`0�W#�Sv��D?x�.M;�b/6��@�Rn���tg i���j_(�֗��3�c�L�TF^�;4�u�po���U'�IyX��gu��|~Y�̳�TU��:���:"Wf��%r���("�	�oqW����"��L�np�����|F��{c�	���HH�t'�T?M�d��ҘNP��w��K�9�������/��A�٧S��пV�g%/�tk��\P��1���)�4nu4�%���3����(�-x1���Vj
�Ƞ��S�:��p~.��ڍ�,ݞ�K/tp���7��o�9������碸cT��iY�9MW�d�_L9pJ=�A��73����h�*��B<y�v�F��k�'����V�S����NfM욯د�Ƞ2-�ޯ0�L��0���,1�9�!�t��KBp"e��[���%�=J)�e�(�#��U�1B��R"[�@a�4���l��s�oMEoK��*�p��W�h1�j8�)&����g���v��	��'���5L�w�rpcr��3�9�G���
7*K��NS��+J�~e�yJ��T�z����y��؉
_���Q���o���K��0'�����q��ߺ�h�J���WE;U7�I�.H�
�^"2��
��ʫei�/Ci�3��2vf���~��%]�����:E�Vf��^80*EqC�@��$�@U�*M8d�ݚ|/7�ιf��7VOГ�K��y���^������k�m�=�\AK}Gͷ����6߽��w����6�w����o����a���˩��S�pwt�V���)J�U�Y�Qg� �D�kQo� �[;��������p� j�� ݆�����hj���k�s��|v7��h�3�ԸgƯq�|k����=K�v���c�S���jlǵ�&��͞�x�k�(��i�_�9��W+��ͩ9۝�l�,]��W��A��*�B&�b�v�7� �g�v(cU+�i�p�NS|f=u��9p&��@�&!݈��~#�oD��h�����h?��D2b�r�^{��D�~D�D��*�&b���h"6���5K&�#5�v�����y�Pu�v��LX% �   ���]��|X��!��)��AYmAQQa�QO�b���X���F%�QIlT��F%����JbA��#J/�?"н���}l,6�}�F߰�7���oXI�8�7z� '6���;��a^�"S�_�z#Xo�`��7��F�����Լ��7R�Fj�H�k%5[&v�F����������zӤ      �   �  x��X�rI}��"C���%ۀY�#f��%���} J�%���UM]$�_�'�����a�RW������G����h��V��貺z�)}7!A��Nf���$'��3IfE�FX�yi݄v�mHXIx['s2�\�����rO���K�������1]��?�xn²`L�c��^����w�0l���8>���{mv��k����� ��68���9����o?]�t���͑�])���~�%�VH�c@�%?�JfJ]�b�<�Z	��>�]����:!�J�]���x��o  J�n�Koft�bR�l�}�2Q{
��'%� 0³bMe(|�+�J��a������|4Z�,ӓ������|TE˧I	>����T�
o�cj���+��4pim`�FZ9��ʒT�B	�
�Ty��~RS�K,�\U�e�,���A9d�VJ�ep|8W��@Z��TN�PT�=�[!ޒ(�<m�U��8�J��.@E���Fˌd�*��,Ɂ�ܰ�-"�,�Rj�Kh��@������_I�aZ��)QR��Nꓹ���t%2HȈ��&Q)
���\��$]B��ri{_����?�{٘�VG�ѵ���������qڃ8�?�G�Q������n�܍:���L�3�frb��A��*D_操Zo���ʂ*k�V�%'�z���W �ͣa�?��R��q��!K���Ŝ@n.���Ɇ������^#>��~8U�P����֔���t�)���"��°�����. ���m�&"\�;
-G��U	������!e�F��c4��V�u�� t�袑�=�KG�ף[���Ǌ�Y�l��pQ$��Ƣk�Jr\򥸿g�Q9/#����zI��Z^7��V������g��ئ&��r��'�����͏LV���)+T=H��<�&�馕���ƴ�L�����O�W�bl1��jO�Z+���o t:�,2Q$���>��k����9 5-´�_�y^��Na"u��gO���S��/b�{�>#E;`w�U�g�m�o�i�N�2�E9c��I4(�|E���0,lD#�|��q����㐫(7:����x���R>6y�sQ��fb�LGoE��l��3>��t�J�^�i����#z�e<"��W9s��LW/1�8��X�hBi��-�n��0X4"S�م��_�!��Rv/��o:�*NV��|�D�)Ks?4�X����I+�S#͙:*��>�JaR)�v�:�;U����ǻ���$��`��M�^*y��k^	[���A�ZEג� C"E��&cx��G2l5�2��,�^n$8b�RK��n�m�H�qǬS,Ar��=ܫXS���� <f�?$�179�!cl֒���F��o�ئ���JU�!`�c��פ-.��e&]���X� �ԅ�O@�ㆄ�)���E:6XD�l���1��!JH��n�ǟe>���P��G�ǵ W��e9���E�[�Xypiۗ��H.��&�!�MY ���%礵ih;�������1_J��R7��Z�E�M���T`w[�B�����i���8�_�U*�<ޭ���'$a����&�w�d��|�r& ����a���'��!�7�]�;�cL������Qe�FZx"�s���ru�d ���ml*=a�C�"������J`4��wލ#O����{%.w�R�3��-����R�{�
̠_���)��Eav�~Z�'���}��v�=34]�n�?�k��e�^칸�������A�5�6�ʫ���&_��\K��_��|U�/�|q2�S��������������^^\\�`���O��~��'U����i7l�z�}֌��/Ҝd��X�&)`�:n�,}h��KK����A�"S5ky9���zh���M�n�1�[�VIے���Z^�=����0L=���WL��6�����E�WX2��ֶ�8\x�B���m���Vj��$ᵐke�x$�L�(�Q%ͶWOζ4�x�}���@h      �      x������ � �      �      x������ � �     