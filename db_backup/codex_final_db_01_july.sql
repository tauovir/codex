PGDMP         	                z            codex_final_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) ?    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17671    codex_final_db    DATABASE     t   CREATE DATABASE codex_final_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
    DROP DATABASE codex_final_db;
                postgres    false                        2615    17672    in_house    SCHEMA        CREATE SCHEMA in_house;
    DROP SCHEMA in_house;
                postgres    false            ?            1259    17704 
   auth_group    TABLE     h   CREATE TABLE in_house.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
     DROP TABLE in_house.auth_group;
       in_house         heap    postgres    false    6            ?            1259    17702    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE in_house.auth_group_id_seq;
       in_house          postgres    false    210    6                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE in_house.auth_group_id_seq OWNED BY in_house.auth_group.id;
          in_house          postgres    false    209            ?            1259    17714    auth_group_permissions    TABLE     ?   CREATE TABLE in_house.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 ,   DROP TABLE in_house.auth_group_permissions;
       in_house         heap    postgres    false    6            ?            1259    17712    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE in_house.auth_group_permissions_id_seq;
       in_house          postgres    false    6    212                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE in_house.auth_group_permissions_id_seq OWNED BY in_house.auth_group_permissions.id;
          in_house          postgres    false    211            ?            1259    17696    auth_permission    TABLE     ?   CREATE TABLE in_house.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 %   DROP TABLE in_house.auth_permission;
       in_house         heap    postgres    false    6            ?            1259    17694    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.auth_permission_id_seq;
       in_house          postgres    false    208    6                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.auth_permission_id_seq OWNED BY in_house.auth_permission.id;
          in_house          postgres    false    207            ?            1259    17722 	   auth_user    TABLE     ?  CREATE TABLE in_house.auth_user (
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
       in_house         heap    postgres    false    6            ?            1259    17732    auth_user_groups    TABLE     ?   CREATE TABLE in_house.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 &   DROP TABLE in_house.auth_user_groups;
       in_house         heap    postgres    false    6            ?            1259    17730    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.auth_user_groups_id_seq;
       in_house          postgres    false    216    6                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.auth_user_groups_id_seq OWNED BY in_house.auth_user_groups.id;
          in_house          postgres    false    215            ?            1259    17720    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE in_house.auth_user_id_seq;
       in_house          postgres    false    214    6                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE in_house.auth_user_id_seq OWNED BY in_house.auth_user.id;
          in_house          postgres    false    213            ?            1259    17740    auth_user_user_permissions    TABLE     ?   CREATE TABLE in_house.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 0   DROP TABLE in_house.auth_user_user_permissions;
       in_house         heap    postgres    false    6            ?            1259    17738 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.auth_user_user_permissions_id_seq;
       in_house          postgres    false    218    6                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.auth_user_user_permissions_id_seq OWNED BY in_house.auth_user_user_permissions.id;
          in_house          postgres    false    217            ?            1259    17800    django_admin_log    TABLE     ?  CREATE TABLE in_house.django_admin_log (
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
       in_house         heap    postgres    false    6            ?            1259    17798    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.django_admin_log_id_seq;
       in_house          postgres    false    220    6                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.django_admin_log_id_seq OWNED BY in_house.django_admin_log.id;
          in_house          postgres    false    219            ?            1259    17686    django_content_type    TABLE     ?   CREATE TABLE in_house.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 )   DROP TABLE in_house.django_content_type;
       in_house         heap    postgres    false    6            ?            1259    17684    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.django_content_type_id_seq;
       in_house          postgres    false    6    206                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.django_content_type_id_seq OWNED BY in_house.django_content_type.id;
          in_house          postgres    false    205            ?            1259    17675    django_migrations    TABLE     ?   CREATE TABLE in_house.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 '   DROP TABLE in_house.django_migrations;
       in_house         heap    postgres    false    6            ?            1259    17673    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.django_migrations_id_seq;
       in_house          postgres    false    6    204                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.django_migrations_id_seq OWNED BY in_house.django_migrations.id;
          in_house          postgres    false    203            ?            1259    18013    django_session    TABLE     ?   CREATE TABLE in_house.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE in_house.django_session;
       in_house         heap    postgres    false    6            ?            1259    17941    resume_certificates    TABLE     v  CREATE TABLE in_house.resume_certificates (
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
       in_house         heap    postgres    false    6            ?            1259    17939    resume_certificates_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_certificates_id_seq;
       in_house          postgres    false    244    6                       0    0    resume_certificates_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_certificates_id_seq OWNED BY in_house.resume_certificates.id;
          in_house          postgres    false    243            ?            1259    17928    resume_educations    TABLE     ?  CREATE TABLE in_house.resume_educations (
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
       in_house         heap    postgres    false    6            ?            1259    17926    resume_educations_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_educations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_educations_id_seq;
       in_house          postgres    false    6    242                       0    0    resume_educations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_educations_id_seq OWNED BY in_house.resume_educations.id;
          in_house          postgres    false    241            ?            1259    17833    resume_employment    TABLE     ?  CREATE TABLE in_house.resume_employment (
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
       in_house         heap    postgres    false    6            ?            1259    17831    resume_employment_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_employment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_employment_id_seq;
       in_house          postgres    false    6    222                       0    0    resume_employment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_employment_id_seq OWNED BY in_house.resume_employment.id;
          in_house          postgres    false    221            ?            1259    17844    resume_language_proficiency    TABLE     ?   CREATE TABLE in_house.resume_language_proficiency (
    id integer NOT NULL,
    name character varying(20),
    created_at date NOT NULL
);
 1   DROP TABLE in_house.resume_language_proficiency;
       in_house         heap    postgres    false    6            ?            1259    17842 "   resume_language_proficiency_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_language_proficiency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE in_house.resume_language_proficiency_id_seq;
       in_house          postgres    false    224    6                       0    0 "   resume_language_proficiency_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE in_house.resume_language_proficiency_id_seq OWNED BY in_house.resume_language_proficiency.id;
          in_house          postgres    false    223            ?            1259    17852    resume_languages    TABLE     ?   CREATE TABLE in_house.resume_languages (
    id integer NOT NULL,
    name character varying(20),
    is_other integer NOT NULL,
    created_at date NOT NULL
);
 &   DROP TABLE in_house.resume_languages;
       in_house         heap    postgres    false    6            ?            1259    17850    resume_languages_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.resume_languages_id_seq;
       in_house          postgres    false    226    6                       0    0    resume_languages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.resume_languages_id_seq OWNED BY in_house.resume_languages.id;
          in_house          postgres    false    225            ?            1259    17860    resume_profile    TABLE     T  CREATE TABLE in_house.resume_profile (
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
       in_house         heap    postgres    false    6            ?            1259    17858    resume_profile_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.resume_profile_id_seq;
       in_house          postgres    false    228    6                       0    0    resume_profile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.resume_profile_id_seq OWNED BY in_house.resume_profile.id;
          in_house          postgres    false    227            ?            1259    17903    resume_projects    TABLE     ?  CREATE TABLE in_house.resume_projects (
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
       in_house         heap    postgres    false    6            ?            1259    17901    resume_projects_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.resume_projects_id_seq;
       in_house          postgres    false    238    6                       0    0    resume_projects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.resume_projects_id_seq OWNED BY in_house.resume_projects.id;
          in_house          postgres    false    237            ?            1259    17915    resume_projects_technology    TABLE     ?   CREATE TABLE in_house.resume_projects_technology (
    id integer NOT NULL,
    projects_id integer NOT NULL,
    technologies_id integer NOT NULL
);
 0   DROP TABLE in_house.resume_projects_technology;
       in_house         heap    postgres    false    6            ?            1259    17913 !   resume_projects_technology_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_projects_technology_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_projects_technology_id_seq;
       in_house          postgres    false    240    6                       0    0 !   resume_projects_technology_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_projects_technology_id_seq OWNED BY in_house.resume_projects_technology.id;
          in_house          postgres    false    239            ?            1259    17895    resume_technologies    TABLE     ?   CREATE TABLE in_house.resume_technologies (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    version character varying(120) NOT NULL,
    rate smallint NOT NULL,
    is_other integer NOT NULL,
    category_id integer NOT NULL
);
 )   DROP TABLE in_house.resume_technologies;
       in_house         heap    postgres    false    6            ?            1259    17893    resume_technologies_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_technologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_technologies_id_seq;
       in_house          postgres    false    236    6                       0    0    resume_technologies_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_technologies_id_seq OWNED BY in_house.resume_technologies.id;
          in_house          postgres    false    235            ?            1259    17871    resume_technology_category    TABLE     ?   CREATE TABLE in_house.resume_technology_category (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    status integer NOT NULL,
    created_at date NOT NULL
);
 0   DROP TABLE in_house.resume_technology_category;
       in_house         heap    postgres    false    6            ?            1259    17869 !   resume_technology_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_technology_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_technology_category_id_seq;
       in_house          postgres    false    6    230                       0    0 !   resume_technology_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_technology_category_id_seq OWNED BY in_house.resume_technology_category.id;
          in_house          postgres    false    229            ?            1259    17887    resume_user_interest    TABLE     ?   CREATE TABLE in_house.resume_user_interest (
    id integer NOT NULL,
    name character varying(50),
    created_at date NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_interest;
       in_house         heap    postgres    false    6            ?            1259    17885    resume_user_interest_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_user_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_interest_id_seq;
       in_house          postgres    false    6    234                        0    0    resume_user_interest_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_interest_id_seq OWNED BY in_house.resume_user_interest.id;
          in_house          postgres    false    233            ?            1259    17879    resume_user_language    TABLE     ?   CREATE TABLE in_house.resume_user_language (
    id integer NOT NULL,
    created_at date NOT NULL,
    language_id integer NOT NULL,
    language_profiency_id integer NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_language;
       in_house         heap    postgres    false    6            ?            1259    17877    resume_user_language_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.resume_user_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_language_id_seq;
       in_house          postgres    false    232    6            !           0    0    resume_user_language_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_language_id_seq OWNED BY in_house.resume_user_language.id;
          in_house          postgres    false    231            ?            1259    18025    subject_tbl_dm    TABLE     Q  CREATE TABLE in_house.subject_tbl_dm (
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
       in_house         heap    postgres    false    6            ?            1259    18023    subject_tbl_dm_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.subject_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.subject_tbl_dm_id_seq;
       in_house          postgres    false    247    6            "           0    0    subject_tbl_dm_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.subject_tbl_dm_id_seq OWNED BY in_house.subject_tbl_dm.id;
          in_house          postgres    false    246            ?            1259    18047    topic_section_tbl    TABLE     K  CREATE TABLE in_house.topic_section_tbl (
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
       in_house         heap    postgres    false    6            ?            1259    18045    topic_section_tbl_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.topic_section_tbl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.topic_section_tbl_id_seq;
       in_house          postgres    false    251    6            #           0    0    topic_section_tbl_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.topic_section_tbl_id_seq OWNED BY in_house.topic_section_tbl.id;
          in_house          postgres    false    250            ?            1259    18036    topics_tbl_dm    TABLE     ?  CREATE TABLE in_house.topics_tbl_dm (
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
       in_house         heap    postgres    false    6            ?            1259    18034    topics_tbl_dm_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.topics_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE in_house.topics_tbl_dm_id_seq;
       in_house          postgres    false    249    6            $           0    0    topics_tbl_dm_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE in_house.topics_tbl_dm_id_seq OWNED BY in_house.topics_tbl_dm.id;
          in_house          postgres    false    248            ?            1259    18093    tutorials_postdetail    TABLE       CREATE TABLE in_house.tutorials_postdetail (
    id integer NOT NULL,
    summary text NOT NULL,
    reference_url character varying(200) NOT NULL,
    comment_count integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    post_id integer NOT NULL
);
 *   DROP TABLE in_house.tutorials_postdetail;
       in_house         heap    postgres    false    6            ?            1259    18091    tutorials_postdetail_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.tutorials_postdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.tutorials_postdetail_id_seq;
       in_house          postgres    false    6    255            %           0    0    tutorials_postdetail_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.tutorials_postdetail_id_seq OWNED BY in_house.tutorials_postdetail.id;
          in_house          postgres    false    254            ?            1259    18076    tutorials_posts    TABLE     h  CREATE TABLE in_house.tutorials_posts (
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
       in_house         heap    postgres    false    6            ?            1259    18074    tutorials_posts_id_seq    SEQUENCE     ?   CREATE SEQUENCE in_house.tutorials_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.tutorials_posts_id_seq;
       in_house          postgres    false    253    6            &           0    0    tutorials_posts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.tutorials_posts_id_seq OWNED BY in_house.tutorials_posts.id;
          in_house          postgres    false    252            ?           2604    17707    auth_group id    DEFAULT     r   ALTER TABLE ONLY in_house.auth_group ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_id_seq'::regclass);
 >   ALTER TABLE in_house.auth_group ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    210    209    210            ?           2604    17717    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY in_house.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_permissions_id_seq'::regclass);
 J   ALTER TABLE in_house.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    212    211    212            ?           2604    17699    auth_permission id    DEFAULT     |   ALTER TABLE ONLY in_house.auth_permission ALTER COLUMN id SET DEFAULT nextval('in_house.auth_permission_id_seq'::regclass);
 C   ALTER TABLE in_house.auth_permission ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    207    208    208            ?           2604    17725    auth_user id    DEFAULT     p   ALTER TABLE ONLY in_house.auth_user ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_id_seq'::regclass);
 =   ALTER TABLE in_house.auth_user ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    214    213    214            ?           2604    17735    auth_user_groups id    DEFAULT     ~   ALTER TABLE ONLY in_house.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_groups_id_seq'::regclass);
 D   ALTER TABLE in_house.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    216    215    216            ?           2604    17743    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY in_house.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_user_permissions_id_seq'::regclass);
 N   ALTER TABLE in_house.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    218    217    218            ?           2604    17803    django_admin_log id    DEFAULT     ~   ALTER TABLE ONLY in_house.django_admin_log ALTER COLUMN id SET DEFAULT nextval('in_house.django_admin_log_id_seq'::regclass);
 D   ALTER TABLE in_house.django_admin_log ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    219    220    220            ?           2604    17689    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY in_house.django_content_type ALTER COLUMN id SET DEFAULT nextval('in_house.django_content_type_id_seq'::regclass);
 G   ALTER TABLE in_house.django_content_type ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    206    205    206            ?           2604    17678    django_migrations id    DEFAULT     ?   ALTER TABLE ONLY in_house.django_migrations ALTER COLUMN id SET DEFAULT nextval('in_house.django_migrations_id_seq'::regclass);
 E   ALTER TABLE in_house.django_migrations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    204    203    204            ?           2604    17944    resume_certificates id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_certificates ALTER COLUMN id SET DEFAULT nextval('in_house.resume_certificates_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_certificates ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    243    244    244            ?           2604    17931    resume_educations id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_educations ALTER COLUMN id SET DEFAULT nextval('in_house.resume_educations_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_educations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    241    242    242            ?           2604    17836    resume_employment id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_employment ALTER COLUMN id SET DEFAULT nextval('in_house.resume_employment_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_employment ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    222    221    222            ?           2604    17847    resume_language_proficiency id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_language_proficiency ALTER COLUMN id SET DEFAULT nextval('in_house.resume_language_proficiency_id_seq'::regclass);
 O   ALTER TABLE in_house.resume_language_proficiency ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    223    224    224            ?           2604    17855    resume_languages id    DEFAULT     ~   ALTER TABLE ONLY in_house.resume_languages ALTER COLUMN id SET DEFAULT nextval('in_house.resume_languages_id_seq'::regclass);
 D   ALTER TABLE in_house.resume_languages ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    226    225    226            ?           2604    17863    resume_profile id    DEFAULT     z   ALTER TABLE ONLY in_house.resume_profile ALTER COLUMN id SET DEFAULT nextval('in_house.resume_profile_id_seq'::regclass);
 B   ALTER TABLE in_house.resume_profile ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    227    228    228            ?           2604    17906    resume_projects id    DEFAULT     |   ALTER TABLE ONLY in_house.resume_projects ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_id_seq'::regclass);
 C   ALTER TABLE in_house.resume_projects ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    238    237    238            ?           2604    17918    resume_projects_technology id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_projects_technology ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_technology_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_projects_technology ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    239    240    240            ?           2604    17898    resume_technologies id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_technologies ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technologies_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_technologies ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    236    235    236            ?           2604    17874    resume_technology_category id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_technology_category ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technology_category_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_technology_category ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    229    230    230            ?           2604    17890    resume_user_interest id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_user_interest ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_interest_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_interest ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    233    234    234            ?           2604    17882    resume_user_language id    DEFAULT     ?   ALTER TABLE ONLY in_house.resume_user_language ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_language_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_language ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    232    231    232            ?           2604    18028    subject_tbl_dm id    DEFAULT     z   ALTER TABLE ONLY in_house.subject_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.subject_tbl_dm_id_seq'::regclass);
 B   ALTER TABLE in_house.subject_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    246    247    247            ?           2604    18050    topic_section_tbl id    DEFAULT     ?   ALTER TABLE ONLY in_house.topic_section_tbl ALTER COLUMN id SET DEFAULT nextval('in_house.topic_section_tbl_id_seq'::regclass);
 E   ALTER TABLE in_house.topic_section_tbl ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    251    250    251            ?           2604    18039    topics_tbl_dm id    DEFAULT     x   ALTER TABLE ONLY in_house.topics_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.topics_tbl_dm_id_seq'::regclass);
 A   ALTER TABLE in_house.topics_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    249    248    249            ?           2604    18096    tutorials_postdetail id    DEFAULT     ?   ALTER TABLE ONLY in_house.tutorials_postdetail ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_postdetail_id_seq'::regclass);
 H   ALTER TABLE in_house.tutorials_postdetail ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    255    254    255            ?           2604    18079    tutorials_posts id    DEFAULT     |   ALTER TABLE ONLY in_house.tutorials_posts ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_posts_id_seq'::regclass);
 C   ALTER TABLE in_house.tutorials_posts ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    253    252    253            ?          0    17704 
   auth_group 
   TABLE DATA           0   COPY in_house.auth_group (id, name) FROM stdin;
    in_house          postgres    false    210   9b      ?          0    17714    auth_group_permissions 
   TABLE DATA           O   COPY in_house.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    in_house          postgres    false    212   Vb      ?          0    17696    auth_permission 
   TABLE DATA           P   COPY in_house.auth_permission (id, name, content_type_id, codename) FROM stdin;
    in_house          postgres    false    208   sb      ?          0    17722 	   auth_user 
   TABLE DATA           ?   COPY in_house.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    in_house          postgres    false    214   ?e      ?          0    17732    auth_user_groups 
   TABLE DATA           C   COPY in_house.auth_user_groups (id, user_id, group_id) FROM stdin;
    in_house          postgres    false    216   ?f      ?          0    17740    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    218   ?f      ?          0    17800    django_admin_log 
   TABLE DATA           ?   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    220   ?f      ?          0    17686    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    206   Nz      ?          0    17675    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    204   K{      ?          0    18013    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    245   ?}      ?          0    17941    resume_certificates 
   TABLE DATA           ?   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    244   &      ?          0    17928    resume_educations 
   TABLE DATA           ?   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    242   C      ?          0    17833    resume_employment 
   TABLE DATA           ?   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    222   `      ?          0    17844    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    224   }      ?          0    17852    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    226   ?      ?          0    17860    resume_profile 
   TABLE DATA           ?   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    228   ?      ?          0    17903    resume_projects 
   TABLE DATA           ?   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    238   ?      ?          0    17915    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    240   ?      ?          0    17895    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    236   ?      ?          0    17871    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    230   +?      ?          0    17887    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    234   H?      ?          0    17879    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    232   e?      ?          0    18025    subject_tbl_dm 
   TABLE DATA           z   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    247   ??                0    18047    topic_section_tbl 
   TABLE DATA           ?   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    251   ?                 0    18036    topics_tbl_dm 
   TABLE DATA           ?   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    249   ??                0    18093    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    255   ?                0    18076    tutorials_posts 
   TABLE DATA           ?   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    253   %?      '           0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    209            (           0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    211            )           0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 88, true);
          in_house          postgres    false    207            *           0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    215            +           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 1, true);
          in_house          postgres    false    213            ,           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 1, false);
          in_house          postgres    false    217            -           0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 306, true);
          in_house          postgres    false    219            .           0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.django_content_type_id_seq', 22, true);
          in_house          postgres    false    205            /           0    0    django_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_migrations_id_seq', 30, true);
          in_house          postgres    false    203            0           0    0    resume_certificates_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_certificates_id_seq', 1, false);
          in_house          postgres    false    243            1           0    0    resume_educations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_educations_id_seq', 1, false);
          in_house          postgres    false    241            2           0    0    resume_employment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_employment_id_seq', 1, false);
          in_house          postgres    false    221            3           0    0 "   resume_language_proficiency_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('in_house.resume_language_proficiency_id_seq', 1, false);
          in_house          postgres    false    223            4           0    0    resume_languages_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.resume_languages_id_seq', 1, false);
          in_house          postgres    false    225            5           0    0    resume_profile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('in_house.resume_profile_id_seq', 1, false);
          in_house          postgres    false    227            6           0    0    resume_projects_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.resume_projects_id_seq', 1, false);
          in_house          postgres    false    237            7           0    0 !   resume_projects_technology_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_projects_technology_id_seq', 1, false);
          in_house          postgres    false    239            8           0    0    resume_technologies_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_technologies_id_seq', 1, false);
          in_house          postgres    false    235            9           0    0 !   resume_technology_category_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_technology_category_id_seq', 1, false);
          in_house          postgres    false    229            :           0    0    resume_user_interest_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_interest_id_seq', 1, false);
          in_house          postgres    false    233            ;           0    0    resume_user_language_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_language_id_seq', 1, false);
          in_house          postgres    false    231            <           0    0    subject_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.subject_tbl_dm_id_seq', 6, true);
          in_house          postgres    false    246            =           0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 63, true);
          in_house          postgres    false    250            >           0    0    topics_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.topics_tbl_dm_id_seq', 21, true);
          in_house          postgres    false    248            ?           0    0    tutorials_postdetail_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.tutorials_postdetail_id_seq', 1, false);
          in_house          postgres    false    254            @           0    0    tutorials_posts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.tutorials_posts_id_seq', 1, false);
          in_house          postgres    false    252            ?           2606    17829    auth_group auth_group_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 J   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_name_key;
       in_house            postgres    false    210            ?           2606    17756 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 ~   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       in_house            postgres    false    212    212            ?           2606    17719 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       in_house            postgres    false    212            ?           2606    17709    auth_group auth_group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_pkey;
       in_house            postgres    false    210            ?           2606    17747 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 r   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       in_house            postgres    false    208    208            ?           2606    17701 $   auth_permission auth_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_pkey;
       in_house            postgres    false    208            ?           2606    17737 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       in_house            postgres    false    216            ?           2606    17771 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       in_house            postgres    false    216    216            ?           2606    17727    auth_user auth_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_pkey;
       in_house            postgres    false    214            ?           2606    17745 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       in_house            postgres    false    218            ?           2606    17785 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       in_house            postgres    false    218    218            ?           2606    17823     auth_user auth_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_username_key;
       in_house            postgres    false    214            ?           2606    17809 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       in_house            postgres    false    220            ?           2606    17693 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       in_house            postgres    false    206    206            ?           2606    17691 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_pkey;
       in_house            postgres    false    206            ?           2606    17683 (   django_migrations django_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.django_migrations DROP CONSTRAINT django_migrations_pkey;
       in_house            postgres    false    204            '           2606    18020 "   django_session django_session_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY in_house.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 N   ALTER TABLE ONLY in_house.django_session DROP CONSTRAINT django_session_pkey;
       in_house            postgres    false    245            #           2606    17949 ,   resume_certificates resume_certificates_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_pkey;
       in_house            postgres    false    244                        2606    17938 (   resume_educations resume_educations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_pkey;
       in_house            postgres    false    242                       2606    17841 (   resume_employment resume_employment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_pkey;
       in_house            postgres    false    222                       2606    17849 <   resume_language_proficiency resume_language_proficiency_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY in_house.resume_language_proficiency
    ADD CONSTRAINT resume_language_proficiency_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY in_house.resume_language_proficiency DROP CONSTRAINT resume_language_proficiency_pkey;
       in_house            postgres    false    224                       2606    17857 &   resume_languages resume_languages_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.resume_languages
    ADD CONSTRAINT resume_languages_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.resume_languages DROP CONSTRAINT resume_languages_pkey;
       in_house            postgres    false    226                       2606    17868 "   resume_profile resume_profile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.resume_profile
    ADD CONSTRAINT resume_profile_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.resume_profile DROP CONSTRAINT resume_profile_pkey;
       in_house            postgres    false    228                       2606    17912 $   resume_projects resume_projects_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_pkey;
       in_house            postgres    false    238                       2606    17987 Z   resume_projects_technology resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq UNIQUE (projects_id, technologies_id);
 ?   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq;
       in_house            postgres    false    240    240                       2606    17920 :   resume_projects_technology resume_projects_technology_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technology_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technology_pkey;
       in_house            postgres    false    240                       2606    17900 ,   resume_technologies resume_technologies_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_pkey;
       in_house            postgres    false    236            
           2606    17876 :   resume_technology_category resume_technology_category_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_technology_category
    ADD CONSTRAINT resume_technology_category_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_technology_category DROP CONSTRAINT resume_technology_category_pkey;
       in_house            postgres    false    230                       2606    17892 .   resume_user_interest resume_user_interest_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_pkey;
       in_house            postgres    false    234                       2606    17884 .   resume_user_language resume_user_language_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_pkey;
       in_house            postgres    false    232            *           2606    18033 "   subject_tbl_dm subject_tbl_dm_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_pkey;
       in_house            postgres    false    247            -           2606    18089 0   subject_tbl_dm subject_tbl_dm_slug_4a3612d0_uniq 
   CONSTRAINT     m   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq UNIQUE (slug);
 \   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq;
       in_house            postgres    false    247            4           2606    18055 (   topic_section_tbl topic_section_tbl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_pkey;
       in_house            postgres    false    251            /           2606    18044     topics_tbl_dm topics_tbl_dm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_pkey;
       in_house            postgres    false    249            ;           2606    18101 .   tutorials_postdetail tutorials_postdetail_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_pkey;
       in_house            postgres    false    255            7           2606    18084 $   tutorials_posts tutorials_posts_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.tutorials_posts
    ADD CONSTRAINT tutorials_posts_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.tutorials_posts DROP CONSTRAINT tutorials_posts_pkey;
       in_house            postgres    false    253            ?           1259    17830    auth_group_name_a6ea08ec_like    INDEX     j   CREATE INDEX auth_group_name_a6ea08ec_like ON in_house.auth_group USING btree (name varchar_pattern_ops);
 3   DROP INDEX in_house.auth_group_name_a6ea08ec_like;
       in_house            postgres    false    210            ?           1259    17767 (   auth_group_permissions_group_id_b120cbf9    INDEX     q   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON in_house.auth_group_permissions USING btree (group_id);
 >   DROP INDEX in_house.auth_group_permissions_group_id_b120cbf9;
       in_house            postgres    false    212            ?           1259    17768 -   auth_group_permissions_permission_id_84c5c92e    INDEX     {   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON in_house.auth_group_permissions USING btree (permission_id);
 C   DROP INDEX in_house.auth_group_permissions_permission_id_84c5c92e;
       in_house            postgres    false    212            ?           1259    17753 (   auth_permission_content_type_id_2f476e4b    INDEX     q   CREATE INDEX auth_permission_content_type_id_2f476e4b ON in_house.auth_permission USING btree (content_type_id);
 >   DROP INDEX in_house.auth_permission_content_type_id_2f476e4b;
       in_house            postgres    false    208            ?           1259    17783 "   auth_user_groups_group_id_97559544    INDEX     e   CREATE INDEX auth_user_groups_group_id_97559544 ON in_house.auth_user_groups USING btree (group_id);
 8   DROP INDEX in_house.auth_user_groups_group_id_97559544;
       in_house            postgres    false    216            ?           1259    17782 !   auth_user_groups_user_id_6a12ed8b    INDEX     c   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON in_house.auth_user_groups USING btree (user_id);
 7   DROP INDEX in_house.auth_user_groups_user_id_6a12ed8b;
       in_house            postgres    false    216            ?           1259    17797 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON in_house.auth_user_user_permissions USING btree (permission_id);
 G   DROP INDEX in_house.auth_user_user_permissions_permission_id_1fbb5f2c;
       in_house            postgres    false    218            ?           1259    17796 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     w   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON in_house.auth_user_user_permissions USING btree (user_id);
 A   DROP INDEX in_house.auth_user_user_permissions_user_id_a95ead1b;
       in_house            postgres    false    218            ?           1259    17824     auth_user_username_6821ab7c_like    INDEX     p   CREATE INDEX auth_user_username_6821ab7c_like ON in_house.auth_user USING btree (username varchar_pattern_ops);
 6   DROP INDEX in_house.auth_user_username_6821ab7c_like;
       in_house            postgres    false    214            ?           1259    17820 )   django_admin_log_content_type_id_c4bce8eb    INDEX     s   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON in_house.django_admin_log USING btree (content_type_id);
 ?   DROP INDEX in_house.django_admin_log_content_type_id_c4bce8eb;
       in_house            postgres    false    220            ?           1259    17821 !   django_admin_log_user_id_c564eba6    INDEX     c   CREATE INDEX django_admin_log_user_id_c564eba6 ON in_house.django_admin_log USING btree (user_id);
 7   DROP INDEX in_house.django_admin_log_user_id_c564eba6;
       in_house            postgres    false    220            %           1259    18022 #   django_session_expire_date_a5c62663    INDEX     g   CREATE INDEX django_session_expire_date_a5c62663 ON in_house.django_session USING btree (expire_date);
 9   DROP INDEX in_house.django_session_expire_date_a5c62663;
       in_house            postgres    false    245            (           1259    18021 (   django_session_session_key_c0390e0f_like    INDEX     ?   CREATE INDEX django_session_session_key_c0390e0f_like ON in_house.django_session USING btree (session_key varchar_pattern_ops);
 >   DROP INDEX in_house.django_session_session_key_c0390e0f_like;
       in_house            postgres    false    245            $           1259    18012 '   resume_certificates_profile_id_ff9ddcd4    INDEX     o   CREATE INDEX resume_certificates_profile_id_ff9ddcd4 ON in_house.resume_certificates USING btree (profile_id);
 =   DROP INDEX in_house.resume_certificates_profile_id_ff9ddcd4;
       in_house            postgres    false    244            !           1259    18006 %   resume_educations_profile_id_363d9f96    INDEX     k   CREATE INDEX resume_educations_profile_id_363d9f96 ON in_house.resume_educations USING btree (profile_id);
 ;   DROP INDEX in_house.resume_educations_profile_id_363d9f96;
       in_house            postgres    false    242                       1259    18000 %   resume_employment_profile_id_a7423269    INDEX     k   CREATE INDEX resume_employment_profile_id_a7423269 ON in_house.resume_employment USING btree (profile_id);
 ;   DROP INDEX in_house.resume_employment_profile_id_a7423269;
       in_house            postgres    false    222                       1259    17985 &   resume_projects_employment_id_574c5bf6    INDEX     m   CREATE INDEX resume_projects_employment_id_574c5bf6 ON in_house.resume_projects USING btree (employment_id);
 <   DROP INDEX in_house.resume_projects_employment_id_574c5bf6;
       in_house            postgres    false    238                       1259    17998 /   resume_projects_technology_projects_id_2f5c3d10    INDEX        CREATE INDEX resume_projects_technology_projects_id_2f5c3d10 ON in_house.resume_projects_technology USING btree (projects_id);
 E   DROP INDEX in_house.resume_projects_technology_projects_id_2f5c3d10;
       in_house            postgres    false    240                       1259    17999 3   resume_projects_technology_technologies_id_2ca2768d    INDEX     ?   CREATE INDEX resume_projects_technology_technologies_id_2ca2768d ON in_house.resume_projects_technology USING btree (technologies_id);
 I   DROP INDEX in_house.resume_projects_technology_technologies_id_2ca2768d;
       in_house            postgres    false    240                       1259    17979 (   resume_technologies_category_id_147f19e0    INDEX     q   CREATE INDEX resume_technologies_category_id_147f19e0 ON in_house.resume_technologies USING btree (category_id);
 >   DROP INDEX in_house.resume_technologies_category_id_147f19e0;
       in_house            postgres    false    236                       1259    17973 (   resume_user_interest_profile_id_8b18a7ed    INDEX     q   CREATE INDEX resume_user_interest_profile_id_8b18a7ed ON in_house.resume_user_interest USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_interest_profile_id_8b18a7ed;
       in_house            postgres    false    234                       1259    17965 )   resume_user_language_language_id_baa88fad    INDEX     s   CREATE INDEX resume_user_language_language_id_baa88fad ON in_house.resume_user_language USING btree (language_id);
 ?   DROP INDEX in_house.resume_user_language_language_id_baa88fad;
       in_house            postgres    false    232                       1259    17966 3   resume_user_language_language_profiency_id_81ca799f    INDEX     ?   CREATE INDEX resume_user_language_language_profiency_id_81ca799f ON in_house.resume_user_language USING btree (language_profiency_id);
 I   DROP INDEX in_house.resume_user_language_language_profiency_id_81ca799f;
       in_house            postgres    false    232                       1259    17967 (   resume_user_language_profile_id_a7cd4ed1    INDEX     q   CREATE INDEX resume_user_language_profile_id_a7cd4ed1 ON in_house.resume_user_language USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_language_profile_id_a7cd4ed1;
       in_house            postgres    false    232            +           1259    18090 !   subject_tbl_dm_slug_4a3612d0_like    INDEX     r   CREATE INDEX subject_tbl_dm_slug_4a3612d0_like ON in_house.subject_tbl_dm USING btree (slug varchar_pattern_ops);
 7   DROP INDEX in_house.subject_tbl_dm_slug_4a3612d0_like;
       in_house            postgres    false    247            5           1259    18067 #   topic_section_tbl_topic_id_887e7a85    INDEX     g   CREATE INDEX topic_section_tbl_topic_id_887e7a85 ON in_house.topic_section_tbl USING btree (topic_id);
 9   DROP INDEX in_house.topic_section_tbl_topic_id_887e7a85;
       in_house            postgres    false    251            0           1259    18069    topics_tbl_dm_slug_6453441b    INDEX     W   CREATE INDEX topics_tbl_dm_slug_6453441b ON in_house.topics_tbl_dm USING btree (slug);
 1   DROP INDEX in_house.topics_tbl_dm_slug_6453441b;
       in_house            postgres    false    249            1           1259    18070     topics_tbl_dm_slug_6453441b_like    INDEX     p   CREATE INDEX topics_tbl_dm_slug_6453441b_like ON in_house.topics_tbl_dm USING btree (slug varchar_pattern_ops);
 6   DROP INDEX in_house.topics_tbl_dm_slug_6453441b_like;
       in_house            postgres    false    249            2           1259    18061 !   topics_tbl_dm_subject_id_9e370280    INDEX     c   CREATE INDEX topics_tbl_dm_subject_id_9e370280 ON in_house.topics_tbl_dm USING btree (subject_id);
 7   DROP INDEX in_house.topics_tbl_dm_subject_id_9e370280;
       in_house            postgres    false    249            <           1259    18109 %   tutorials_postdetail_post_id_c1d277c1    INDEX     k   CREATE INDEX tutorials_postdetail_post_id_c1d277c1 ON in_house.tutorials_postdetail USING btree (post_id);
 ;   DROP INDEX in_house.tutorials_postdetail_post_id_c1d277c1;
       in_house            postgres    false    255            8           1259    18102    tutorials_posts_slug_8695bb50    INDEX     [   CREATE INDEX tutorials_posts_slug_8695bb50 ON in_house.tutorials_posts USING btree (slug);
 3   DROP INDEX in_house.tutorials_posts_slug_8695bb50;
       in_house            postgres    false    253            9           1259    18103 "   tutorials_posts_slug_8695bb50_like    INDEX     t   CREATE INDEX tutorials_posts_slug_8695bb50_like ON in_house.tutorials_posts USING btree (slug varchar_pattern_ops);
 8   DROP INDEX in_house.tutorials_posts_slug_8695bb50_like;
       in_house            postgres    false    253            ?           2606    17762 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       in_house          postgres    false    208    3039    212            >           2606    17757 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       in_house          postgres    false    212    3044    210            =           2606    17748 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       in_house          postgres    false    208    3034    206            A           2606    17777 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       in_house          postgres    false    210    216    3044            @           2606    17772 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       in_house          postgres    false    214    3052    216            C           2606    17791 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       in_house          postgres    false    3039    218    208            B           2606    17786 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       in_house          postgres    false    3052    214    218            D           2606    17810 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       in_house          postgres    false    3034    220    206            E           2606    17815 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       in_house          postgres    false    214    220    3052            P           2606    18007 P   resume_certificates resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id;
       in_house          postgres    false    3080    244    228            O           2606    18001 L   resume_educations resume_educations_profile_id_363d9f96_fk_resume_profile_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id;
       in_house          postgres    false    242    228    3080            F           2606    17921 L   resume_employment resume_employment_profile_id_a7423269_fk_resume_profile_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id;
       in_house          postgres    false    222    3080    228            L           2606    17980 N   resume_projects resume_projects_employment_id_574c5bf6_fk_resume_employment_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id FOREIGN KEY (employment_id) REFERENCES in_house.resume_employment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id;
       in_house          postgres    false    238    3073    222            M           2606    17988 Q   resume_projects_technology resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr FOREIGN KEY (projects_id) REFERENCES in_house.resume_projects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr;
       in_house          postgres    false    238    3096    240            N           2606    17993 U   resume_projects_technology resume_projects_tech_technologies_id_2ca2768d_fk_resume_te    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te FOREIGN KEY (technologies_id) REFERENCES in_house.resume_technologies(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te;
       in_house          postgres    false    240    236    3093            K           2606    17974 I   resume_technologies resume_technologies_category_id_147f19e0_fk_resume_te    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te FOREIGN KEY (category_id) REFERENCES in_house.resume_technology_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te;
       in_house          postgres    false    230    3082    236            J           2606    17968 R   resume_user_interest resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id;
       in_house          postgres    false    228    3080    234            G           2606    17950 K   resume_user_language resume_user_language_language_id_baa88fad_fk_resume_la    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la FOREIGN KEY (language_id) REFERENCES in_house.resume_languages(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la;
       in_house          postgres    false    232    226    3078            H           2606    17955 T   resume_user_language resume_user_language_language_profiency_i_81ca799f_fk_resume_la    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la FOREIGN KEY (language_profiency_id) REFERENCES in_house.resume_language_proficiency(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la;
       in_house          postgres    false    232    3076    224            I           2606    17960 R   resume_user_language resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id;
       in_house          postgres    false    232    3080    228            R           2606    18062 I   topic_section_tbl topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id;
       in_house          postgres    false    251    249    3119            Q           2606    18561 D   topics_tbl_dm topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id FOREIGN KEY (subject_id) REFERENCES in_house.subject_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id;
       in_house          postgres    false    247    249    3114            S           2606    18104 P   tutorials_postdetail tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id    FK CONSTRAINT     ?   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id FOREIGN KEY (post_id) REFERENCES in_house.tutorials_posts(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id;
       in_house          postgres    false    253    3127    255            ?      x?????? ? ?      ?      x?????? ? ?      ?   |  x?u?ю?0E?????? ???????V)q?TY???????3?C?b?\rG??!F}???z-????nQF???W?.?}^??eL? ????ۅcq??*`{??A뒐S????ƾ?U?-a??[?;`?oĂE`ۍA"?O???e8.?=ٻA?ɸ?́{?qa?;??0*J????6???~t???`z?8kSq?p&?8qw@?) jr???6?????KW?d"nh??Ne??>箈f??.?!??(?&??_??=?차:??]???rX?E?`??,3N9Hɹ?o|\????~?]o?`:??#]?<??C%?O){?(o?	,{????}?yS??ZQ??R??2W.+ͣf???j?h?5??¬?X?V?w????Ǖ>??%/;b2	?[?a???F?????spww{~?e?77=??\??????+56?????z ???T,¯?????)Տ?N?wS&ο??????*??L$R?Am???}+	?d?SVI?,v??隒*?M]??J??WB?f[	?JH???p	UB???6?>H?(o??ӧ???<?vAav?(?{??^^?@S??&^e??0??j#?1?8?"㜤??b?9:P?t{}??? ?řK;?$b-Q?c??42?kX??I?HJgg???M?ףq??=]?h?8x?
??\????2??wI?9?n??k3???na?k9p9??(?r?rGQB??`E	???v???y}S4qZҎnD?$?7??"a??[?h?.?ƛ?HJ?mr?Q?86?B7"S	 {??4%L?r??`??gUyH?U7m?T?c?Jus?;?J???ۃl??yj??e?p?aK?<G??8?`o?ҭDFc ?@?!`???!?c8Li?m???8?`?[?L?D?2?c!`T??	??oZ??9q#P      ?   ?   x?E??
?@ ??St?&.?~۶?d?vI?ʢb3R??4#??+????a??/G??r??c3??=???	???y??2???2?????pz?U????h?0	6?9?D:.b|L1I?Ł4?????%HB??ˌ.N4??O??0?B?P*lS!8H??X[jY?ر1?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x??]ˎc7?]?_!x;?F0??j?????40??^ș?*????F???#(݇??ꑢ??a@???q?A?0C??????/|Z71x????`????/?????ˇ??÷?????????o?"?b1!?Yn??_?x]?AAA???¥Ƒ?1A??????cC?F=X?;A???? ?oB???|??????z???&???o]?????w?Z?ؠ???Q?AŬ??20??8?e???<6s????Ɉ??E85???r???Y???@nB????lq*?Jg?W???g??,|#Vo?10???]??ٕ??|L?c1F`?[??&^ 4>?????~????Ǆq???sC@?Z+?ٯ??f??e?4?b??"?p??[???s7?{???&?쩝?0???m?is???C????*`C??????j?ܾl???1????R:??.??? ?86?C?8????????????/Dg?h??????/?????l;c0???????z???<?_όm`?q??`N?0wC?)v?ׯ??????'???B?97 ?Ob]?*?,?||h(Ad<???9??q>?7???zy?E?<?6?х1??????ǂ???0???&I?K????+q@"?????d?PV>Y???@l<???K?+[|??(?E?E??ý\??Y?? lB???J`(H5???n?}x??|?.?]0??
???19>xŨ?9j??H!??${?C?e?.kV?F???~Zo??9??l ??I)??4?_~ C???A??????<o7/?s?֫???1g[R?hђ??,??	??U?Tq?????Cp??r???~?vb??ó??"qH‎uKM?????c?V&?oW?o????(??????1zj4?C1V?$?tr?:?N??a?B??? ,?;C?t  ??	?%??3?=S??I?#?@7?G.??Q?e@?0?+?-;?A?kPj?n?\J.V???Vpv???#???o????$???旍????J?3J?L??K??;??4SV??g??[??? ???????M\+I?@?3r>~?a4?."??4e?K????v?~?48$??D?.z?n???????CP??ʰ??gC???5)|?,%?z[??K 	n?ܩY?ܻ???z??????c?VA?Uj!1? ?o??OO_???֏???BV???H??????? ??~\??e???n?<???s1?)T8@?4%???un?Ȓ\n=-?ڿV????xK ?G	???62(
C?Z?c?/`K?{??D??,? ?@0??>|?/??@\???х?[?M??????q?u? .y'?."'??>????t$??7?|?,Ǯ^c?S?Ł?#kN???E????????W?+2?u?.G?}???c)!&?\?#X??v཯??q?!?K$????)ҘB?????V#[
əC?B?Pk??U?p@h?c??ě9??5????P?;????J??E?S?+(?ȅ??,?s?V<Y?#i^?(;?e??j\?P7?|??????.?M???/?$y??r?ոppn@r Wm??ȥ>?0??Uۭي??nĳ?\-f+r???#c????j\(D???E?lEN?s]?9?S`?*???I????jV?±???-??̡d?Ri?%?-G?H??Xm͓???*6!P??-?1??K?Vb?Y?r???a??C
????*UK?9zjO?*4T5P??]?}q??TAf0??2??84I?c_???j??"???M?!???Ҡ??JO?X{!??H?j???2U?TY%?d^݅q1U6T?I?z?}p?C?R?VԺs?2?u????Ceрu?Q7?R??f???}?*?m?`]?nt?&$??????
ݴ??u??fa}Si&??m?[p?m??P[?`???lz????T??B
@R[?9D??U??T?Nc??L`?$??)<+?JT?????M?be?Co????D???P?? ?R???'??F)?'??"???1??*?%??Jb???g??*Q%K?N-#cm?ȆJ?8?II?????a?T.g???FY??n?B??sN???`]y~??U;???1%_?\?Xe=oq?!6y?b?2Y??~?C*?(??B??????O`?T?|ڠ?{?=ܰ??0a?ԕBm[O?ʓ:S????բ?c*ݟ??z?%g?J_??|o??M?5?0?Y?|???g?;
H??M2@~̃?H?	]k????wq??D(?znM7r?idC?Y?1??ͭUSQiMfI??5T?o@?o????,?V????????VB?M?-i?R???T{?A/?)??Ԛa?^SgЃֹ?ny?oՏ?BK4??b???P%*???^???"2??_E?
@???u3?2[??u%???????"???Xn?x?????u?G?vs???kD??[3W?q???&??I?r?E??;?????ߦ:?a?w?"m?b7Ԛhl??_^?5f?A??It%????hH-?_?e???c]|;8?qh<??5???~.?w{???٧?????\MN???n?#????h??_?߯^K?????ã??L"?ї???m???????q??-??v`?k?"?(?R??ܚ??b??F?=i??R???????M??C?????VD? ?&8??????z?vɊD??Rd??P????u?Y???2???!???X?f???dP??+xъE/?zI???D???zۮN#Y???-??wv?P>???s???v?rw??~?cW;??Ѫ?Rq??N??he@z/?	?????<?U??|g??}??t??sH?Q#?2????8/???g??G#R??Ⱦ??SZ8o?@^?RαKV0?????f?3?IL????????I¼??K?!Z?P?av???Z??[Vz?v$???"i??ƴ???wR'?????r?|ט????\?`uÚ}5^L
;
߮с?? ??G??ޙ??M=?z???+?????E??3&?IVN?zq1K??/???????Jb????ܟg?SJ:?me$?2L??(??1??SpVAz?O?Z??????\?#=??&??k????U?VFZxx?|??OЧ"?8V<??<BW?^???Gb??I??g?l????J?$?HQ?۲????~xz}???aN?PZVA??9ER1l7???~????v?q??t{$???>????(???6?h#?h??G??K?8{Z=???̗??F???t%>C?q??߳??5?q?v??}	sdR?E??T?$?ᾏ???Ǘ??yKA?,?y?(t???(?g<6?????V?@???w>?{th1??O?dk?io
???p~?ä׉?sM?<????=?Aǆ
Ax}L0l?*O???l6˩?]?H???N????]?y?`3?????E??E!?Í+A????{?c?qn?V????K]?oS????0͜??????_$?[ŭE????x??,X?	??r?.?3?~x~X??fw???i߇`%?E$JЕ??g֛?秕>?r.?F?
?Tn?]???[????e??;??uR}/??̳?]h?D???]Z???[N?!%?o?|?ì>|y?G???[?=?}^???U?/?=>v:?4{Z?>?`e Z?M?nn??i??0k??P.??????ZNCX????9:???a?Ekς@?-??k?(Ai?P??;?]?????%hۗ}???????_-?&????y?i?:~J0?%?!Z7q?????/? ?|?t??????|?itV0?F??K?'???e?z?Z.Ka?]?q??)????_~{\?}??C=?.}3ߎ????YL???<Yp???r?z]܀???⟵??/Ⱦ?;?Nz ?RΓO \C?{?
,I?;J)z?4M???@??AQ???Wo_?????/]rR~c?Ovx,q?ד? m???????yO?8[??fI??Λږ?8T?< ??!??_?8N?T7?C???????ѓEO?!???j?8N2P/??J?8<?x-(?}Hn?o?G???B?77$?x[m?
y?????7/?'^r?A?I?)?%`??"F?ݭ6?ɣ??t ?&???O.??}?9?E?????y?^?;???Ġ?c?K??\
?صMI??????߭ E  WS?Z;D??EP??q'(I[$gخ6󇳟6Ѝo??@-!?[??ް??%??\?ڿ???R?8a2?PN=$?D??K??~ߕ"?_Oa???t?}sHygp?7^Q??8|?V??O????|??QO"ĝ?7o???<?쳔~\?????\?$܄?c|)b?h?M?V߾??J?]|+g*? ??#T???|??	??????.?8????
????v'?^j?O??e,?6??n??	V?\z?d?9Mv;\??_Mw?-+??F݄O????֙?????Jڙ??O??{??s???????
?垏????,??	;'}c6?P?3??????V?+fn?yB???~???{87??a?
?z??q?vW??DKX?Nă?VP??[B=?ЧC?w?*!	w?<I????]??-?n_????,k?g???^?0ZB=?mH???mm?&K??V???*??x????|???
?????@??nیw??'??N8??i?|??^s??R???݂????dd??U?oN?._1???ϭ`??K?"?L??QϞ?L),04Q????$XURy?ͅ???I?ߊP?????p?$4?????? ???0?a+?+?R?ac?nw????#???a???: ?548lj??]m?V?5?i???BZ? ?t?<.?g????YT???8%Qp??<??C??Q?S??@g????,???ǝͰi?O?y?<??}??d??9A??M9ߎ??3????? ?5????r?}NUƏ??m?D?ož	ߏ?˾s?\e~????q??A}??M?V?T.g?r???-?V?Z?I?|?w'???~???7?|?o}?-      ?   ?   x?e??n? E???L??k?/?"F???`??C?~N#??}????^[#M?F??p??? n?J?7???2?v?B???/dD?1????mF?sI?̘.?%???'J??"??????p??1????pϔhZ??'?Xۻ??]???c?Z??Ԣn?????D???36ݧ?P???J? jD???q?٨??^}]?or7???;?ۆ?J??;l?j?5??bY
?? ??C???> ??ߦ!      ?   w  x????n?0???S?~??3??YV???7e?_mS5o???Mh???83g????G??x]?!`????m+$??D<BZ#?A?2???5%??_?(??l?ʞ???b$??b?
M;\R??j???7gR????>Fp?p??CWL?{??Л߭????М??8)??ĝ{?kZ^????m??iZ ???b'?F???|ׄ06#Lg?M??K?j??	r??T??6?ts?mڇ &r????-h?}?4?q?)Z? ?o1?qD?:??? p???I $?ׯS???S0?_p8?Μ5?r)?Ͷ??????D8?o:??|?T?5?T?F=2] ?9??
L???-?$j??g??v??4~???L?f?[Ό~x??D???Z0??.L?P<??E?????<T???Z򧫘??OC?	E?g?d+??f?
܀?t??eWBM??Lh?˾\0?"ǭ??0???N? )t?;ҭ??4???4O??G??'˻ ٖ"?)z?????o)??B?>E?f9?(?uC?X?O.k???Ȓu?rK??H?%?R?bM!??r??U|Q?|?V
?!֎????@??(??h:`w????8?P?ݦ???>ST??R*?B?y<??!m      ?   D  x????n?0 F??)?_4??$?0?bK0(??öPp? <?tY?K?˓|'G?|+T7$?u?J?V?3\?&???]5??+
?n)????}?d?(wCo cP??5p}Z2H6??Ӯ0ϣS?`?#?HBO??~آ????yD?????Fi?FćOU????4$?}gQ ????e?ASx?ҝ?l?Ty??q?n??C9????	$??\??y?q??????6???A&?????_?D?????g`9?x
?e,??/u???ڣf_w?hh??+???V?ʨ?M?P?????)??-???r?o????i?$Ҝ      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?     x??V?n?6}^? Mh7????5?6@j qݬ??@_(??S???nԧ|D_?{???!??8mP?u?fΜ9gȳٵ0???????gM{?????nIyԩ??k???j?¨!j?5????????z?ʴi??.?XK7?~?jR?`]?ʚ??t????Ր??V??fө??NL!?y?6?DS1 ??Δ~xv?U9a??*?xխh%?J?y??q_##پz- m@?/߷j-d0L-??ʚ?4J?@????jK??	??.6Q?S???Qh?3w?n|6;;9;??<??./3??Ys?xv#? ???;?a???{???}??????X>*????ݻȼ??J?4?L?J?U?N??l-sC'i<?6R-e$?6tTi?T?5??ɞ??(???????IQ?䀚F???*??*???@???
D?t??w???6-	?4?+P?p?/0??X????????? n?К???;?????v6B"?5??j?4r?9??S$d?D_YH? ??:?? ???4?720:V񎛂??H`??ݍ??jE?sJf???XQ#??P7??[B	;m?V????V????????%??[+n??;f1?a?Sן????n??`޳?I鬨?H??C?ɳ ???
p?H?5[???NN`L??x?u??q?ώ?P*@??%?5.??Қ?̭?"h???󧿔?t?9<?m?L?üuv??|.?,k?Z??xp?'?_C???ex?g	?a???Ms????sTQ?
|_J?!Aۤ??sHe?]?0?q????d?>?]#f?f~??
ES??6>[.???????I??v???U???h? ?d??-??*??yR?<?KO???4?y??aPC?K?p??*?Y?v?ܡ~???4?U?
rk.?c?k?????2MP?v?f? R?TZ??ȂPh[??=g??sk??????"+?$???B?\2??T????+e?ǂ?^]???/????EA?_???z???.???ע?_V??,?????'??3?w??v$7?&??
\n ټ-?P?#??6o00`??t?BR? ?1yw!xm??{?????b??ή??Y???WӸ?D1	??'uq0?R?L??<?Σ????!_F?]n??o????D???)A?٫???H/Y1ti|P?Q&1`??d?EU?|????h???Q$?: ??b???$8:??!:?"????P??????ѕ$?ӹ???ō?^??0~??,V7y??w??<3?????͆3A|?򨲿??瞞??ѣN-?xxVK????$???? ?????????؝?x?ק??ըj????TNF???4r?>??j????z-?????1??ݑ-=???햙??ɼ??׻>ߠ???|#3?:???A?z?\??]?W~?a?He?_?1??E            x??=iWǲ??_?W>7?xZ?b|?8?=???9?6?g4jIϢ????WU?L?"!?{?H3?T??U?????+;???l?cs'q?ڋ??q?????n2I?8rvrk?S??z?????m(:}?G?2???M">:?O?d????n?4??F?	???K?????4b6?tʓ????????/?m????k?Oc?G#?q?<????y6K????єGMv?14]?I??>?v??Ů???ld;???n?<6ّ????>?m?7???4?(a1;??|???N?)?f?m?3w?d0$7Hx4?^ ?)<?+?_#?E?????ȡ˓&;'Xؔ{ ?㿠?4
l?S???#???̵??h???s8tC?Q??zIhN?`OB?ī0?.???_<N?A?4?#F??G?"'e??0??I?*a???!????`?m?ǩ?'???H?Z??iu:[?ݭv??؆?:?# ?o'??B??Cxb?'6??l??RO,?5?n?#i?n?,???)??<??'&|0&??N??`r??w??j????'?>?!?R߇???c?8??f???ۀ8????Y2	?/???fc '{[0?is6?B@??#?xv0N?1g?I?8 t?@??r??7cI??????7bg???i?j?T?Y??4?	4?c0????o?aW(,??}?,??=??e4l??p ??N??C?π???????Z??@;	? ;<Ʊ?P?4H??? F7?FO?b?n8C??	?* ?q??TZp5
#.?@t???i"???8?)-؊AtN?#??hLccL?mx?׈??g?i??Ȏ?E???	b?'?x"e???H? !?Bvc?	vM?؁?܁?kW?-???G?j JQ????t?c?%Q????tC??_#{:????z???7??_?h???l ??p6<A???ǁ?v ??<N??@y??j??X)đf??/?)?????ϭc?????v???iuq?T??,?ȣ?KpJ?!?2{dSI^?̏]?????????=??Q??????|#!ږ,?G<???5?3???n ???;Fqp/?)???an?a?[???K??>?x???B???H??(?c???E??????m?70q??Az??[??Z???4?`<??"?8??L9?̀V?Di!$s<nG?P*?4?VM?c@?dKp?j??C*??? "،_?S)?"??@? 5??b ?!?Y??\??Le;??/?(???C|7??`?]?t??7j?I?.QJ?^^??U.?X4.j?)?8?T&P|????c??@?e"#??RF??O?<Sb?%+???] ?3??????Eۂ?? v?	?*???????Eܞa?3`? ?|	???qX+0????L??|?$T?da@ȕAɯ??ԤE_??kM??u?J??0??ϱ3F??L??[3????9b?0M?<o?8NK?<"2?u=)??k?eg????P??@T0?x?̀hl??V?Ib?_d?S???H????\LS?<???`N#??Л??9?gPK?շ???`??	???0?p??`*???r?ۋq|>?XZ?????A0yT9P;???2?|E`V??j$[<?2Mb?c?]5?&???????;??e9:h???éOs??-?@2c?0f=?t???YM&TY?A???n8??U?m-??O?0?\2sPSǊ?	??Q5L?@???,?llz???8?8??Xa?0i??$t9>Q5??y???W))?p??[W?0??r?+h{?Vq~kĪU'?,Kd)%ҹ8\??0?9h???
???	?PU?????+?B1zIz??V????~9?}l???4?ɀK???????j??̩?d0?Of???1??
c"&?-?e?4׾?p?@???
?i:??B?)??	L	?/?# ??C???X????~?<??Ό?.?????I?Q%?g????Go8eX=??4?b??ܱ?.??.?.?O??NH??݅??掶?M?a??Q?????X#{?f!?d:ZegP?!(?r?r7??+w?????|?????
՛????0??H???n?_?[&?1??3????Q???A???\#R?<???[f?9?-̘??l??9șy ?Й???????rH???y⬝ʆ
???\+ n?(Dt3??<tU?|?(Ʃ"????b??mM?S?/???;2:??>???l?f??|??/?@??U?s}ri?W?W?5??:V??{}?k??????S?Oiu??]$???4???????SXBR>A? ????%????R8Ð???h	zP	?????_?m?h<???41?K24?f???????{????wo?Hk|??s??n??.M`??/???K?ڀf?ʆ)mk?<???d?jV*l'?Ҿ?k??Qe津?]?,? e?`A?4E(h??%?7WP?	???O?	?T,??dB?(?ZeM?????8??c? ?SYw?Q?*??fV????????P??????-???,?*?#?ۙ? ?`_L?-s5??9?b?D??=?`?P??as??	]?G_???!????????q?/|vFC@???Xf?9?T3?3??'66??6H) ?p?qm?ꁜ@??EA?߻??i? %?L&@i??S???7n?@?/?T ?b~??<?<9((N?G1??2???6? ??)?'Nf??g?-lШ??^ϒ???g??V???????L?k??]vz{???0%`)h4*9?? ???????6?dO2|L?(?$?-}V?ܜ3???QP??q??a{_O?`?@??7???;??(jo;?uP?i???O?Y$??ϙ?F4?ĴWN???e??.?ܘTߑ??1>?Y?????bB?????1a?? ?f?3??X???<R?:Z???&u???)??*?4? -P%??jOV?])'F1x??@w`??g4??@@?0???U???hH???F????B??8??\?????Gd?E??%/|;??X???3㨋?/U'/???K?&vIuEj??\???KZ$A? ?[mp8(8??
s͜?$?WdF?e?l???-?Ӳ?-k?e?Z?n??kY?-??Bݺ?s????n??|????8r??>????O?-??t?++?{???g??Ӝc??-????BGU>???uK}?,??j?K?H/+Ыja?h`??$???&kJK?J4?Q?v?6??=(ٮY?b{?"4oA7?'n2&?????_?*nɊC???s??0??D-?q .??m??Hs?D0(?D?r?o,???\??g?;???].?G?f?t_*?'U?B)?9??X?????`	?!Ь ?????Ð??r?w)&??D?Qf?AkzF??)???ɪ??φ?@]h?%?? ??A?,?A(?AV?5??@??y???,"?@??:?P?r?0_«;$ce/Xp?~w?????o!{?{?~?o??̃E?$"?l?4-??W#P?|@!???`????,?S?8?K?<.^+=?N???K\?U;F??/\???&C??C?n?[	Ȣ???Fj???,?80!??Ȭ?l??W?Q???pQj???G.?(E?K??T%r?l?rŲ?|Ӽ?ꪜ?=???)}?mě???
8?QE????[?p
??#?nLUD??????jс?D6????5d???/??*??(C???J???,VJ2??????c#,?????׮?U7T??Bs??o?Un?ei4<*?/Mbo?????|?'?K8+K?_
???m???f?a?Ơ?$i??ڹ<?>?@?,?2@??al??????z??>]L??+????????b???n?p?????ر?\?ȹ?>0?q??1x??E@ml?+n??A??ڳu???a?i)?????yT썬?lM??@9t?Z????.??E?NUɆ*??8????D?|??????e?fUv?J???xը?????N? }?Q?#,=1    eP?? ?	?h?[z?sO́??%?Z/???&U?????܆?YC???{Ed?ݮ?>z6?V?T%E;?Z?J????p??fD1b2O??Je?A??^?5tiW??<A??*??;LC?&KTwz?Q???rU??qg?b?R?/?&)?^W?r?ѝ??[?۟o?a2?wZ??a??Oũ?? a??~UQ?P?v?`o?????YY]?;?#g?$??/?P???D?3??6r??_M?rO?Gةx???h??K?ߧé=?P??#*?y????????>XOj&????XO??)y??&?????I?~w?Kᲇ׻????`=u????????z2M?\??N" z6???i??z???N?Pw?]?-M?m2?ͥ?e????,Ȁ?+??8::Z#?G?j?H|i??|?????bob`?L?Mcc0t??aj{z-???8???"J?=0???)????*kWnB???w??ᆅ??	홣p?[??ѹ?lg_d?j#b??_??͍?Տ5Y ????_?hwQ~I-W??/ٙ_r/_r??^-?`???hT?ko?%:F	??ĞQb&J,??t????\c3?}xX <u?.aP?`?l?nՀ?o??6{&$)M???ƠK??L???#?A?<Z???qa???n?Y?즳??($???? ?G/?????qǆ\.???(????q?R??t?B,T????"?=?S?H?6?>{}??h?J-Tbb/???[?????ǈ?ynJ??sJ?N*??S?)??==?Q??(Oa???v߫M{O???x?S<?)??O?+??W?	?M?l?}?6?????J?X?V5??.i??b%?V]????b%?U?*1Se?sW?*	[e???W?*???R%?YYjI??0۷}m\?._???j???????b??M?<??"	?4S.?٤?	?[??G???iaD?Cl%ћ??պ???ؠR?????S?OmU?g4ҽ??iJ?#?Z??e?I7?SE0??xE?JAEcvW??Qh??1x?B?2?bα??'/??Cu&2?]?-?L6?I7?}????	??O???ގ???J??ۂ?7v??????@a???P??6@%??˽?*B]??v#???G?]?"x]@8)??Z?՞??R??+?~Ԏ)???Β[+??o?R??b@r??LMvb"???*W$?h??tb??_2???U???(K????lC???!?b?????,?J??\??JG?? ??Ìr?s?$??G_?DO???N?î?p'?}x?u?.???????????[???+#??sڐ???(?X?
{??|?Cٷ.X??<?xh???????????x?z$??G?צ?(?nn??0?T????M?d?@Z?	#hp??Z?|?`?Fl4?8Q?cd?;?;?P?L??EU?̶?*??Ʃ:=[ѝزL#?Ǹc:???' kIK?w???0??F??F???D;?w?Åg?˅??Ū?i??r??~?;q??Ü??{"???#t??,TD?%??5^??X??Īk?]?dU??????^Ж}?j???t??=?ؙձ??ΕPR???3?͞?{?????+?v@??e?U@?wb?6??J?ם?|??Wn?g?k????tW???????՘o?6??y??:s?ku?~??7b?.P??uX?'?????xec?5??6?{??fn ?Zs????k#/X???N?B?X??'u?Dl?/??J?\<U?G?D-?P&WLro???盙kl??m?P?']??M#Ϩ?KD?ĝf?r??_???!}Y?4
?lBXp??峳?؜<??Y??s??Z?UǦl???2?????1^?ySKH4Ǻ??ɤ??b??0?NFb????D>??v 31???㺔?l8T1?ě???ٞ?LЊ??? Ʋ?f[er}?	-??oS?yʓ?L0V?Ş2h????t???L??? ???t?q?O1Sϩ?s????5???a??Ew?5?????8??8Fܟ??e(??p????.?  ?+7H?W"c?8P??u???yvE6+??t??Q,K;?n=?1?)??<c?>??v??h?@?F???cի???*???k|k????4??0?6 x#ޤ???}? H?? w-{|?2?tY?.???4w?r?????h??mL)p9u3i?????(J??s??(?:???2???ܓ?e??,إ<?&&5Cj̚b?F???Ăw???'Nqd?2J??j??(QT?2E?]??A?󶅔??Ǚ?b?i	`?Fe?????]1??Tm?RG<I?@??Ĝ?
??8lI?T?b#͕	|?;	?}??N???u?%{?#??^?B?Exi??C??<?pͳs8?~?jࣆ??P??P?tAY	V????0?֟?=_?jC?yW????/?9w?Z????iݴ<P??T????<N?mq,ٺV??`???2_?:^FaB?VAʊN]??o?l??-HeFS??JK?rs????C????C?=(??敆T??@??=???A.?OO???9??D??	8=??I{TQY?Rl???.&s?? ??	ޓ(67?~1??ؠ1???z??Zn??D?$?6lds??_2
l?5?Y??'?2aB??; ?Z,?34 s???czقQo??1a??<?y??G???C\>Y?p?8
A?r???^?ϰ?D?????o5?-???1?T??/b?%?k?qn`??Ac}???? ???]G]?^#t?????:???????`Ajw:?r{???1Yƾ???DG|?mj??8??m?@*>??l??+?cY?V????p`?ԕ?(?ʪ??N?m?9??,c?E??H}I?04M?cG?5????RE\?@??}??<??2?\??^t????0??2?????????q??2U????Ǎ
}f]??.?i?ѥ??G?Ϛ??c?$Dy?l??7??x??0L8????#uY?T%n??}ɪ??T>0j??!8??7̭m?b?I??"f1? Pc?	J?Gu?h???R???ƹ???5?????a???u?{?H$62?A?^?,Łfe??U?pW?o>?r???+?]߅J?_??5Ʃ0???
I??Mv?boA?????kD0?,Փ10uKr??6bx??|L???Ҡ.J???'i ?<?D[]??k&T7?W4|?p?Ņ?qA??e??#?}ܞ?G???J???іm??.~?x?t????2 ???P??7?????)J??V?????t??}?????td??c??o??U????4V)p?J?~???x:?R?W????/???;?N?
>?:Y??ɤ9X&?$???a?>?A.<R ??3?Ǜ?w?ڸ?
???ޅ?놽?=y?C??fr???0H9????a??w?-??I=?g??[?M????FX8N#y?8n??fÅ?D??TOw??'??\)G ?N??? K?uA?o?@?X????c??????K?1?[&
?czgUL?@|CD??}w?^?8M?Sy??Gۇ`?G6nj?y????????y?n?|?~??n??ʤ:?u??"Fǁf8=Q??@t?6]Z\Q??LL??b?|J^Gb1??ú?.??'???*?=?"K???]??ͰLp:?ff????B??V?@??Ԣ?\6??r??_????Sg??๹?J-?O???}??h?º}??.??
?E????zŴ??gL?~?M????wo.?x?ޝ?????V???P?]?VN矦 l᢫?Ɲ?誻被bS󮖐M???F<R??]X????V??t?ނHP?]{?c4?KwW?Ԏ?)?+??[\?[?k?~?[??܀???ĹF?7?S? ??4W?`q?^?2ŕsArq'????uw	M?)gĨ?x)?ꋸ???y$?????>!1M?\?6??6$2JTX?yD#ݖ _?od?v&r?\?юfK?b_4?Y??9-Σ?l??𙓤9mͣ?lk???cw`w?dS?
?GY???.??Nk??e?v????ӥe???:Y=?H?!-?"?j?[;??z?-x????5wj?>nB?m,ױ??W?M??v???<|??H?$??5)q!-????;?֮B?Q$???j???B?o???^,Ҫ?A?"??G?a?sC?7/?fzU,7oPuu??<??˩?vG???t?UT%2Ե?&??#7J&>t????B ?  !?S???A????'??j?s?cYls??rl"????B???? ??~ͷo?É?H?wP??`9l????9???P!???o??I???9?i??[d6vE?L?????T==?V?va_?rE6??F.jWMEZ?Gy?FN.L??^ﹺ?-?1??ۿ?C????sx(;?????F\7???S9R???w]{3??Cw4Y???v??x?=b?n?z_ü?EaQ$??ڈ??W\\ʳЈx?Co{X???|D????vx?=S??????m?l2?IO?J8Ўn???ב~??v0?L?E?QŪ???W>???????#1?i.@飒:?zn?6T?q?漩"???CL#?2NaR?@h???RB?t??Ҍ?(???]+z????ŵ?#?x)?͛?? ??,??!??Y6?.?7??????N??[?]??B=ҋ6???@?XD??????)???????ګ??8??k(?AJ???]?lm(t?4?s?Q?m?$ *???$XkEn?5"7(n?fL?%?<5XH|\rpri?????<m???H?	?-#"}5?q?]>???'?5?9	?Q\Ku&???d???X??G?u#?7[?S?.ō??w??qggD?t?x??-]<q??V?????py?@\fe?f?,?sP??d???dw??????q#fc2S??j&Ȯ?#?z??|i?Ƅ??????|^8?f?&?-??Y????)??\?&ã??lZ??ȎHs?\r?RoO?k????xJ???5u ;~d?@V?֊??z??"??)?!Ҳta^v?
??F??e?+?????'?i!lkElL2?F?6?܎ZϨ?gu??`E???9?
??ZFoD?.?-?p:(n#??P???1sˉT~%?q?o8????;?H?а???Z1.?j?87v}???=?7???HC???P????j?S|???5ZCx_w????5b??S*:u9Ť?<mO˺ai+XF????B???6vo5??q??|??MQyf?
1?B?,??P?K?<rf??b??<?+???????IN?Xь?Fk?`?񙣊+?Z?????!?Ч?V>?????????Y????Px~?R??S??o?Ԝy???7???????uRw????MX??{;?/+wp7??RbK8B?uVϕ??]Nn????%??\f2P?Z??k???z]Dk?b!?~?qC?H?N????knY25iFfa)??.???v?`?E?J_?gF??W P\,/??]??????w?~8:??}??H'(0h$3ت??q??O9????"??Sfc?܎?sd?C|?L???۳??Oyt????٦??<???h???@fqP!??S]J??j??'?_5Ά?????7r?v?*O6YC??\nC?^??*??2Ϩ?m??2R?4?0t???6?@????,L????????u?? ?Գ??1 Rf????~B?	WwI??8&#_%? ??z0pA?2k?-?H1??>?Da[m}?"?nN????X?B?>?=K?M?????΂T^??_S'??	??@?o?k;rqf????Ym??=?0WX???dJ)K×~JS?%?L?;??????????x??ܭq0Ӆ?$?a?"??ݒy?'?.b??ɡ?%??(䗑
dYn??1?ɩ8y?????o'???''o?Br?Y???u_f??ŝ?^e???x???o?#???m??t?Eb ?z| ?~c?bf??Z????@? ?+s-????oUk??hd?P^??7?q??cd/??Fp*.??_>kbI3?8?N??M
?/D(???g?????׃/G???ř9??c?????Z????fb?¾%4M?\??c????mu???\4?????tL?(Dx?b?t?;??s
?\? Z?2,_?S??)O	+?1?76??i?v?;???n???O	??k??R??X?n?>[t%O??5 4?H??r-6??[?????Hm$?z5R~ m????????>?F%7ڛ%1[I?>???!h?????W?sT⤦???2???i?Y?TQۥ?,yէ_Z?d???? W????")op??1???????Jk
T??.V]?6t??g??HQ????-???2 rz]?g?????S?e??O??}???z????Kz?Xˬ?F+?藓??>???w?N_?]??{[5,??t?s???.SH$??'?ex?^_?|xLp?7)??????/??t?,???V?c????0? ??5P??/?w?(?ߨ?C)??׍}I????4?s?D???gd?R?e0?>??????D$"&????g ??-8?P???+?Yk?0y$Yh?#?jV?2?h!%)??E????̵?vUy??J????j[??c5????l?????](p?`?P,q?!ш??y????R??????"Y?y?0??L??EK?x??%???=s???gһV?VR??z3??jD?t\#? t????????r?O?ui@???2g????E??[?B??!8?!Z?0w4[V?"Y1T??
cI\CJ?E??S??v?b??	???g~v?<rz
?5???j]?hX??:hvw-???*
???Խ_?????/ 	d? ?sm\PV??a??m? ??L??[?F??/?qE??[?WEI?-??qo??$??T^؅?l?RBn?@??&T?U??;}?H??E??<-?4??}???e??Z????cu?+?Jy???ڪ????N??5???	3????	?
?W ?}!??!S?@??KP?<˂B"????6?????ӏ?,??}??]\??JF??????lΛ[7P6?ҟ)<	?؛#????FM??VaF?6n?"?fg<i`&??$.8!?[U?u??B?(~?Yp=&?=?g?E???j??հs??q?z?6?^??/*V???Y|?Q?ʦ?=?d?El#?qwGN뜱5/-?0?>5????)	0?          M  x??W?n?F}??b??&$Œ??a???ր??q???aE????]f/R??=?$%J???? ?9g?\vfr?}^??5??6?즾?7??6 E?5????????&g?3?ʩ<??Z-t? ??𵴞??|t?FS?m?&????g????+z??n޶?0/l??????d??????7??z?????=F???ؕ!?7f>?8ڣ???}???x??????t?tg??V?5i?F?J0? ?XM??לkUn???Z?X???m}???		?U?]??E?SX ?*?ڈ5_F???Ik(??Z??,?%'3IJ
hT??U?	Wj?ί?u??mv?e???dxr1_??Y???C??&??٩`???z?<h??xin!t??G?`W?k+?U?R??A[??Ct?
]k??\?0?ߣ??ʹ???Ÿ?? "?}I??e,?T?9??b???JX??r0v֋*v?>??Z?????8R]?*)?:]?1KD?3?S6?%??A!??A%??'??J?L??Jqu?Z?N??L????}??$?T?>?B?-???d???L]??l???E?q???8???;}]לҳ????Gq?gEP	|?u?OKvKͫl[???!f???r??????:??s1X??bX??K???;UU??R?yTsF>? 5??*???H??/֣T???__?	?-?QI???}AΕC??7?E??ur>*XU0?EnA?l?:aGO??^0hX?>?or??\ ?ED? ⎋V???U+???&??㸅?ِ??̣?H??A?]j?.??C:9D:???h?}t??ʞ	??Ε?{???r?KܴN??&y???z~ո9???H?zI?&?\v5"z֎?˞?q?q??#4W͝N?H???Ջ\?(?כ)ʻ??~?	?h????7?:??ߐ?R??x[*'?ٸ?l?w?>?"?{??_?W??D6?cU?????`??fF C? ??4????z??????#??a???y????1ضg?p??$x?p{L?|?:??+>ȶwI
 f	??ZmrM??޳Ct??,?p??I??Q|e3_w?@???&?q??I',????a?Y?w???j????]H?]?l?????E???l־?B??????A`	B??RU?(H?9??D??lD<?Q?U??B?4????h@͔J??/S?hb??o?V???̢)v?g?=??????????۪R???wd?Y???f\?Q???S?4&*U????]??$ca&k????Wp??X^?(-?e5s?,??w??AH??nX? 0?Dv??????#YQM+??=???r??;g?6?????E?ǿ?3??.ţ?U??{???f?_????? ??M            x?????? ? ?            x?????? ? ?     