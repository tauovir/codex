PGDMP     %    1    
            z            codex_final_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) �    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
                postgres    false            �            1259    17704 
   auth_group    TABLE     h   CREATE TABLE in_house.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
     DROP TABLE in_house.auth_group;
       in_house         heap    postgres    false    6            �            1259    17702    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE in_house.auth_group_id_seq;
       in_house          postgres    false    210    6                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE in_house.auth_group_id_seq OWNED BY in_house.auth_group.id;
          in_house          postgres    false    209            �            1259    17714    auth_group_permissions    TABLE     �   CREATE TABLE in_house.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 ,   DROP TABLE in_house.auth_group_permissions;
       in_house         heap    postgres    false    6            �            1259    17712    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE in_house.auth_group_permissions_id_seq;
       in_house          postgres    false    6    212                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE in_house.auth_group_permissions_id_seq OWNED BY in_house.auth_group_permissions.id;
          in_house          postgres    false    211            �            1259    17696    auth_permission    TABLE     �   CREATE TABLE in_house.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 %   DROP TABLE in_house.auth_permission;
       in_house         heap    postgres    false    6            �            1259    17694    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.auth_permission_id_seq;
       in_house          postgres    false    208    6                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.auth_permission_id_seq OWNED BY in_house.auth_permission.id;
          in_house          postgres    false    207            �            1259    17722 	   auth_user    TABLE     �  CREATE TABLE in_house.auth_user (
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
       in_house         heap    postgres    false    6            �            1259    17732    auth_user_groups    TABLE     �   CREATE TABLE in_house.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 &   DROP TABLE in_house.auth_user_groups;
       in_house         heap    postgres    false    6            �            1259    17730    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.auth_user_groups_id_seq;
       in_house          postgres    false    216    6                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.auth_user_groups_id_seq OWNED BY in_house.auth_user_groups.id;
          in_house          postgres    false    215            �            1259    17720    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE in_house.auth_user_id_seq;
       in_house          postgres    false    214    6                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE in_house.auth_user_id_seq OWNED BY in_house.auth_user.id;
          in_house          postgres    false    213            �            1259    17740    auth_user_user_permissions    TABLE     �   CREATE TABLE in_house.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 0   DROP TABLE in_house.auth_user_user_permissions;
       in_house         heap    postgres    false    6            �            1259    17738 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.auth_user_user_permissions_id_seq;
       in_house          postgres    false    218    6                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.auth_user_user_permissions_id_seq OWNED BY in_house.auth_user_user_permissions.id;
          in_house          postgres    false    217            �            1259    17800    django_admin_log    TABLE     �  CREATE TABLE in_house.django_admin_log (
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
       in_house         heap    postgres    false    6            �            1259    17798    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.django_admin_log_id_seq;
       in_house          postgres    false    220    6                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.django_admin_log_id_seq OWNED BY in_house.django_admin_log.id;
          in_house          postgres    false    219            �            1259    17686    django_content_type    TABLE     �   CREATE TABLE in_house.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 )   DROP TABLE in_house.django_content_type;
       in_house         heap    postgres    false    6            �            1259    17684    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.django_content_type_id_seq;
       in_house          postgres    false    6    206                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.django_content_type_id_seq OWNED BY in_house.django_content_type.id;
          in_house          postgres    false    205            �            1259    17675    django_migrations    TABLE     �   CREATE TABLE in_house.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 '   DROP TABLE in_house.django_migrations;
       in_house         heap    postgres    false    6            �            1259    17673    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.django_migrations_id_seq;
       in_house          postgres    false    6    204                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.django_migrations_id_seq OWNED BY in_house.django_migrations.id;
          in_house          postgres    false    203            �            1259    18013    django_session    TABLE     �   CREATE TABLE in_house.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE in_house.django_session;
       in_house         heap    postgres    false    6            �            1259    17941    resume_certificates    TABLE     v  CREATE TABLE in_house.resume_certificates (
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
       in_house         heap    postgres    false    6            �            1259    17939    resume_certificates_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_certificates_id_seq;
       in_house          postgres    false    244    6                       0    0    resume_certificates_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_certificates_id_seq OWNED BY in_house.resume_certificates.id;
          in_house          postgres    false    243            �            1259    17928    resume_educations    TABLE     �  CREATE TABLE in_house.resume_educations (
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
       in_house         heap    postgres    false    6            �            1259    17926    resume_educations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_educations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_educations_id_seq;
       in_house          postgres    false    6    242                       0    0    resume_educations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_educations_id_seq OWNED BY in_house.resume_educations.id;
          in_house          postgres    false    241            �            1259    17833    resume_employment    TABLE     �  CREATE TABLE in_house.resume_employment (
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
       in_house         heap    postgres    false    6            �            1259    17831    resume_employment_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_employment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_employment_id_seq;
       in_house          postgres    false    6    222                       0    0    resume_employment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_employment_id_seq OWNED BY in_house.resume_employment.id;
          in_house          postgres    false    221            �            1259    17844    resume_language_proficiency    TABLE     �   CREATE TABLE in_house.resume_language_proficiency (
    id integer NOT NULL,
    name character varying(20),
    created_at date NOT NULL
);
 1   DROP TABLE in_house.resume_language_proficiency;
       in_house         heap    postgres    false    6            �            1259    17842 "   resume_language_proficiency_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_language_proficiency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE in_house.resume_language_proficiency_id_seq;
       in_house          postgres    false    224    6                       0    0 "   resume_language_proficiency_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE in_house.resume_language_proficiency_id_seq OWNED BY in_house.resume_language_proficiency.id;
          in_house          postgres    false    223            �            1259    17852    resume_languages    TABLE     �   CREATE TABLE in_house.resume_languages (
    id integer NOT NULL,
    name character varying(20),
    is_other integer NOT NULL,
    created_at date NOT NULL
);
 &   DROP TABLE in_house.resume_languages;
       in_house         heap    postgres    false    6            �            1259    17850    resume_languages_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.resume_languages_id_seq;
       in_house          postgres    false    226    6                       0    0    resume_languages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.resume_languages_id_seq OWNED BY in_house.resume_languages.id;
          in_house          postgres    false    225            �            1259    17860    resume_profile    TABLE     T  CREATE TABLE in_house.resume_profile (
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
       in_house         heap    postgres    false    6            �            1259    17858    resume_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.resume_profile_id_seq;
       in_house          postgres    false    228    6                       0    0    resume_profile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.resume_profile_id_seq OWNED BY in_house.resume_profile.id;
          in_house          postgres    false    227            �            1259    17903    resume_projects    TABLE     �  CREATE TABLE in_house.resume_projects (
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
       in_house         heap    postgres    false    6            �            1259    17901    resume_projects_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.resume_projects_id_seq;
       in_house          postgres    false    238    6                       0    0    resume_projects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.resume_projects_id_seq OWNED BY in_house.resume_projects.id;
          in_house          postgres    false    237            �            1259    17915    resume_projects_technology    TABLE     �   CREATE TABLE in_house.resume_projects_technology (
    id integer NOT NULL,
    projects_id integer NOT NULL,
    technologies_id integer NOT NULL
);
 0   DROP TABLE in_house.resume_projects_technology;
       in_house         heap    postgres    false    6            �            1259    17913 !   resume_projects_technology_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_technology_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_projects_technology_id_seq;
       in_house          postgres    false    240    6                       0    0 !   resume_projects_technology_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_projects_technology_id_seq OWNED BY in_house.resume_projects_technology.id;
          in_house          postgres    false    239            �            1259    17895    resume_technologies    TABLE     �   CREATE TABLE in_house.resume_technologies (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    version character varying(120) NOT NULL,
    rate smallint NOT NULL,
    is_other integer NOT NULL,
    category_id integer NOT NULL
);
 )   DROP TABLE in_house.resume_technologies;
       in_house         heap    postgres    false    6            �            1259    17893    resume_technologies_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_technologies_id_seq;
       in_house          postgres    false    236    6                       0    0    resume_technologies_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_technologies_id_seq OWNED BY in_house.resume_technologies.id;
          in_house          postgres    false    235            �            1259    17871    resume_technology_category    TABLE     �   CREATE TABLE in_house.resume_technology_category (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    status integer NOT NULL,
    created_at date NOT NULL
);
 0   DROP TABLE in_house.resume_technology_category;
       in_house         heap    postgres    false    6            �            1259    17869 !   resume_technology_category_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technology_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_technology_category_id_seq;
       in_house          postgres    false    6    230                       0    0 !   resume_technology_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_technology_category_id_seq OWNED BY in_house.resume_technology_category.id;
          in_house          postgres    false    229            �            1259    17887    resume_user_interest    TABLE     �   CREATE TABLE in_house.resume_user_interest (
    id integer NOT NULL,
    name character varying(50),
    created_at date NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_interest;
       in_house         heap    postgres    false    6            �            1259    17885    resume_user_interest_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_user_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_interest_id_seq;
       in_house          postgres    false    6    234                        0    0    resume_user_interest_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_interest_id_seq OWNED BY in_house.resume_user_interest.id;
          in_house          postgres    false    233            �            1259    17879    resume_user_language    TABLE     �   CREATE TABLE in_house.resume_user_language (
    id integer NOT NULL,
    created_at date NOT NULL,
    language_id integer NOT NULL,
    language_profiency_id integer NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_language;
       in_house         heap    postgres    false    6            �            1259    17877    resume_user_language_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_user_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_language_id_seq;
       in_house          postgres    false    232    6            !           0    0    resume_user_language_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_language_id_seq OWNED BY in_house.resume_user_language.id;
          in_house          postgres    false    231            �            1259    18025    subject_tbl_dm    TABLE     Q  CREATE TABLE in_house.subject_tbl_dm (
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
       in_house         heap    postgres    false    6            �            1259    18023    subject_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.subject_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.subject_tbl_dm_id_seq;
       in_house          postgres    false    247    6            "           0    0    subject_tbl_dm_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.subject_tbl_dm_id_seq OWNED BY in_house.subject_tbl_dm.id;
          in_house          postgres    false    246            �            1259    18047    topic_section_tbl    TABLE     K  CREATE TABLE in_house.topic_section_tbl (
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
       in_house         heap    postgres    false    6            �            1259    18045    topic_section_tbl_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topic_section_tbl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.topic_section_tbl_id_seq;
       in_house          postgres    false    251    6            #           0    0    topic_section_tbl_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.topic_section_tbl_id_seq OWNED BY in_house.topic_section_tbl.id;
          in_house          postgres    false    250            �            1259    18036    topics_tbl_dm    TABLE     �  CREATE TABLE in_house.topics_tbl_dm (
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
       in_house         heap    postgres    false    6            �            1259    18034    topics_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topics_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE in_house.topics_tbl_dm_id_seq;
       in_house          postgres    false    249    6            $           0    0    topics_tbl_dm_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE in_house.topics_tbl_dm_id_seq OWNED BY in_house.topics_tbl_dm.id;
          in_house          postgres    false    248            �            1259    18093    tutorials_postdetail    TABLE       CREATE TABLE in_house.tutorials_postdetail (
    id integer NOT NULL,
    summary text NOT NULL,
    reference_url character varying(200) NOT NULL,
    comment_count integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    post_id integer NOT NULL
);
 *   DROP TABLE in_house.tutorials_postdetail;
       in_house         heap    postgres    false    6            �            1259    18091    tutorials_postdetail_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.tutorials_postdetail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.tutorials_postdetail_id_seq;
       in_house          postgres    false    6    255            %           0    0    tutorials_postdetail_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.tutorials_postdetail_id_seq OWNED BY in_house.tutorials_postdetail.id;
          in_house          postgres    false    254            �            1259    18076    tutorials_posts    TABLE     h  CREATE TABLE in_house.tutorials_posts (
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
       in_house         heap    postgres    false    6            �            1259    18074    tutorials_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.tutorials_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.tutorials_posts_id_seq;
       in_house          postgres    false    253    6            &           0    0    tutorials_posts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.tutorials_posts_id_seq OWNED BY in_house.tutorials_posts.id;
          in_house          postgres    false    252            �           2604    17707    auth_group id    DEFAULT     r   ALTER TABLE ONLY in_house.auth_group ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_id_seq'::regclass);
 >   ALTER TABLE in_house.auth_group ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    210    209    210            �           2604    17717    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_permissions_id_seq'::regclass);
 J   ALTER TABLE in_house.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    212    211    212            �           2604    17699    auth_permission id    DEFAULT     |   ALTER TABLE ONLY in_house.auth_permission ALTER COLUMN id SET DEFAULT nextval('in_house.auth_permission_id_seq'::regclass);
 C   ALTER TABLE in_house.auth_permission ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    207    208    208            �           2604    17725    auth_user id    DEFAULT     p   ALTER TABLE ONLY in_house.auth_user ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_id_seq'::regclass);
 =   ALTER TABLE in_house.auth_user ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    214    213    214            �           2604    17735    auth_user_groups id    DEFAULT     ~   ALTER TABLE ONLY in_house.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_groups_id_seq'::regclass);
 D   ALTER TABLE in_house.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    216    215    216            �           2604    17743    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_user_permissions_id_seq'::regclass);
 N   ALTER TABLE in_house.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    218    217    218            �           2604    17803    django_admin_log id    DEFAULT     ~   ALTER TABLE ONLY in_house.django_admin_log ALTER COLUMN id SET DEFAULT nextval('in_house.django_admin_log_id_seq'::regclass);
 D   ALTER TABLE in_house.django_admin_log ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    219    220    220            �           2604    17689    django_content_type id    DEFAULT     �   ALTER TABLE ONLY in_house.django_content_type ALTER COLUMN id SET DEFAULT nextval('in_house.django_content_type_id_seq'::regclass);
 G   ALTER TABLE in_house.django_content_type ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    206    205    206            �           2604    17678    django_migrations id    DEFAULT     �   ALTER TABLE ONLY in_house.django_migrations ALTER COLUMN id SET DEFAULT nextval('in_house.django_migrations_id_seq'::regclass);
 E   ALTER TABLE in_house.django_migrations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    204    203    204            �           2604    17944    resume_certificates id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_certificates ALTER COLUMN id SET DEFAULT nextval('in_house.resume_certificates_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_certificates ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    243    244    244            �           2604    17931    resume_educations id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_educations ALTER COLUMN id SET DEFAULT nextval('in_house.resume_educations_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_educations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    241    242    242            �           2604    17836    resume_employment id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_employment ALTER COLUMN id SET DEFAULT nextval('in_house.resume_employment_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_employment ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    222    221    222            �           2604    17847    resume_language_proficiency id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_language_proficiency ALTER COLUMN id SET DEFAULT nextval('in_house.resume_language_proficiency_id_seq'::regclass);
 O   ALTER TABLE in_house.resume_language_proficiency ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    223    224    224            �           2604    17855    resume_languages id    DEFAULT     ~   ALTER TABLE ONLY in_house.resume_languages ALTER COLUMN id SET DEFAULT nextval('in_house.resume_languages_id_seq'::regclass);
 D   ALTER TABLE in_house.resume_languages ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    226    225    226            �           2604    17863    resume_profile id    DEFAULT     z   ALTER TABLE ONLY in_house.resume_profile ALTER COLUMN id SET DEFAULT nextval('in_house.resume_profile_id_seq'::regclass);
 B   ALTER TABLE in_house.resume_profile ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    227    228    228            �           2604    17906    resume_projects id    DEFAULT     |   ALTER TABLE ONLY in_house.resume_projects ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_id_seq'::regclass);
 C   ALTER TABLE in_house.resume_projects ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    238    237    238            �           2604    17918    resume_projects_technology id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_projects_technology ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_technology_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_projects_technology ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    239    240    240            �           2604    17898    resume_technologies id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technologies ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technologies_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_technologies ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    236    235    236            �           2604    17874    resume_technology_category id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technology_category ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technology_category_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_technology_category ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    229    230    230            �           2604    17890    resume_user_interest id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_interest ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_interest_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_interest ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    233    234    234            �           2604    17882    resume_user_language id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_language ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_language_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_language ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    232    231    232            �           2604    18028    subject_tbl_dm id    DEFAULT     z   ALTER TABLE ONLY in_house.subject_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.subject_tbl_dm_id_seq'::regclass);
 B   ALTER TABLE in_house.subject_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    246    247    247            �           2604    18050    topic_section_tbl id    DEFAULT     �   ALTER TABLE ONLY in_house.topic_section_tbl ALTER COLUMN id SET DEFAULT nextval('in_house.topic_section_tbl_id_seq'::regclass);
 E   ALTER TABLE in_house.topic_section_tbl ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    251    250    251            �           2604    18039    topics_tbl_dm id    DEFAULT     x   ALTER TABLE ONLY in_house.topics_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.topics_tbl_dm_id_seq'::regclass);
 A   ALTER TABLE in_house.topics_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    249    248    249            �           2604    18096    tutorials_postdetail id    DEFAULT     �   ALTER TABLE ONLY in_house.tutorials_postdetail ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_postdetail_id_seq'::regclass);
 H   ALTER TABLE in_house.tutorials_postdetail ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    255    254    255            �           2604    18079    tutorials_posts id    DEFAULT     |   ALTER TABLE ONLY in_house.tutorials_posts ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_posts_id_seq'::regclass);
 C   ALTER TABLE in_house.tutorials_posts ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    253    252    253            �          0    17704 
   auth_group 
   TABLE DATA           0   COPY in_house.auth_group (id, name) FROM stdin;
    in_house          postgres    false    210   9b      �          0    17714    auth_group_permissions 
   TABLE DATA           O   COPY in_house.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    in_house          postgres    false    212   Vb      �          0    17696    auth_permission 
   TABLE DATA           P   COPY in_house.auth_permission (id, name, content_type_id, codename) FROM stdin;
    in_house          postgres    false    208   sb      �          0    17722 	   auth_user 
   TABLE DATA           �   COPY in_house.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    in_house          postgres    false    214   �e      �          0    17732    auth_user_groups 
   TABLE DATA           C   COPY in_house.auth_user_groups (id, user_id, group_id) FROM stdin;
    in_house          postgres    false    216   �f      �          0    17740    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    218   �f      �          0    17800    django_admin_log 
   TABLE DATA           �   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    220   �f      �          0    17686    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    206   ^y      �          0    17675    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    204   [z      �          0    18013    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    245   �|      �          0    17941    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    244   d~      �          0    17928    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    242   �~      �          0    17833    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    222   �~      �          0    17844    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    224   �~      �          0    17852    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    226   �~      �          0    17860    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    228   �~      �          0    17903    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    238         �          0    17915    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    240   /      �          0    17895    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    236   L      �          0    17871    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    230   i      �          0    17887    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    234   �      �          0    17879    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    232   �      �          0    18025    subject_tbl_dm 
   TABLE DATA           z   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    247   �                0    18047    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    251   O�                 0    18036    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    249   ެ                0    18093    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    255   ;�                0    18076    tutorials_posts 
   TABLE DATA           �   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    253   X�      '           0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    209            (           0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    211            )           0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 88, true);
          in_house          postgres    false    207            *           0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    215            +           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 1, true);
          in_house          postgres    false    213            ,           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 1, false);
          in_house          postgres    false    217            -           0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 288, true);
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
          in_house          postgres    false    252            �           2606    17829    auth_group auth_group_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 J   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_name_key;
       in_house            postgres    false    210            �           2606    17756 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 ~   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       in_house            postgres    false    212    212            �           2606    17719 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       in_house            postgres    false    212            �           2606    17709    auth_group auth_group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_pkey;
       in_house            postgres    false    210            �           2606    17747 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 r   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       in_house            postgres    false    208    208            �           2606    17701 $   auth_permission auth_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_pkey;
       in_house            postgres    false    208            �           2606    17737 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       in_house            postgres    false    216            �           2606    17771 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       in_house            postgres    false    216    216            �           2606    17727    auth_user auth_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_pkey;
       in_house            postgres    false    214            �           2606    17745 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       in_house            postgres    false    218            �           2606    17785 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       in_house            postgres    false    218    218            �           2606    17823     auth_user auth_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_username_key;
       in_house            postgres    false    214            �           2606    17809 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       in_house            postgres    false    220            �           2606    17693 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       in_house            postgres    false    206    206            �           2606    17691 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_pkey;
       in_house            postgres    false    206            �           2606    17683 (   django_migrations django_migrations_pkey 
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
   CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq UNIQUE (projects_id, technologies_id);
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq;
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
       in_house            postgres    false    253            �           1259    17830    auth_group_name_a6ea08ec_like    INDEX     j   CREATE INDEX auth_group_name_a6ea08ec_like ON in_house.auth_group USING btree (name varchar_pattern_ops);
 3   DROP INDEX in_house.auth_group_name_a6ea08ec_like;
       in_house            postgres    false    210            �           1259    17767 (   auth_group_permissions_group_id_b120cbf9    INDEX     q   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON in_house.auth_group_permissions USING btree (group_id);
 >   DROP INDEX in_house.auth_group_permissions_group_id_b120cbf9;
       in_house            postgres    false    212            �           1259    17768 -   auth_group_permissions_permission_id_84c5c92e    INDEX     {   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON in_house.auth_group_permissions USING btree (permission_id);
 C   DROP INDEX in_house.auth_group_permissions_permission_id_84c5c92e;
       in_house            postgres    false    212            �           1259    17753 (   auth_permission_content_type_id_2f476e4b    INDEX     q   CREATE INDEX auth_permission_content_type_id_2f476e4b ON in_house.auth_permission USING btree (content_type_id);
 >   DROP INDEX in_house.auth_permission_content_type_id_2f476e4b;
       in_house            postgres    false    208            �           1259    17783 "   auth_user_groups_group_id_97559544    INDEX     e   CREATE INDEX auth_user_groups_group_id_97559544 ON in_house.auth_user_groups USING btree (group_id);
 8   DROP INDEX in_house.auth_user_groups_group_id_97559544;
       in_house            postgres    false    216            �           1259    17782 !   auth_user_groups_user_id_6a12ed8b    INDEX     c   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON in_house.auth_user_groups USING btree (user_id);
 7   DROP INDEX in_house.auth_user_groups_user_id_6a12ed8b;
       in_house            postgres    false    216            �           1259    17797 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON in_house.auth_user_user_permissions USING btree (permission_id);
 G   DROP INDEX in_house.auth_user_user_permissions_permission_id_1fbb5f2c;
       in_house            postgres    false    218            �           1259    17796 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     w   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON in_house.auth_user_user_permissions USING btree (user_id);
 A   DROP INDEX in_house.auth_user_user_permissions_user_id_a95ead1b;
       in_house            postgres    false    218            �           1259    17824     auth_user_username_6821ab7c_like    INDEX     p   CREATE INDEX auth_user_username_6821ab7c_like ON in_house.auth_user USING btree (username varchar_pattern_ops);
 6   DROP INDEX in_house.auth_user_username_6821ab7c_like;
       in_house            postgres    false    214            �           1259    17820 )   django_admin_log_content_type_id_c4bce8eb    INDEX     s   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON in_house.django_admin_log USING btree (content_type_id);
 ?   DROP INDEX in_house.django_admin_log_content_type_id_c4bce8eb;
       in_house            postgres    false    220            �           1259    17821 !   django_admin_log_user_id_c564eba6    INDEX     c   CREATE INDEX django_admin_log_user_id_c564eba6 ON in_house.django_admin_log USING btree (user_id);
 7   DROP INDEX in_house.django_admin_log_user_id_c564eba6;
       in_house            postgres    false    220            %           1259    18022 #   django_session_expire_date_a5c62663    INDEX     g   CREATE INDEX django_session_expire_date_a5c62663 ON in_house.django_session USING btree (expire_date);
 9   DROP INDEX in_house.django_session_expire_date_a5c62663;
       in_house            postgres    false    245            (           1259    18021 (   django_session_session_key_c0390e0f_like    INDEX     �   CREATE INDEX django_session_session_key_c0390e0f_like ON in_house.django_session USING btree (session_key varchar_pattern_ops);
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
       in_house            postgres    false    240                       1259    17999 3   resume_projects_technology_technologies_id_2ca2768d    INDEX     �   CREATE INDEX resume_projects_technology_technologies_id_2ca2768d ON in_house.resume_projects_technology USING btree (technologies_id);
 I   DROP INDEX in_house.resume_projects_technology_technologies_id_2ca2768d;
       in_house            postgres    false    240                       1259    17979 (   resume_technologies_category_id_147f19e0    INDEX     q   CREATE INDEX resume_technologies_category_id_147f19e0 ON in_house.resume_technologies USING btree (category_id);
 >   DROP INDEX in_house.resume_technologies_category_id_147f19e0;
       in_house            postgres    false    236                       1259    17973 (   resume_user_interest_profile_id_8b18a7ed    INDEX     q   CREATE INDEX resume_user_interest_profile_id_8b18a7ed ON in_house.resume_user_interest USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_interest_profile_id_8b18a7ed;
       in_house            postgres    false    234                       1259    17965 )   resume_user_language_language_id_baa88fad    INDEX     s   CREATE INDEX resume_user_language_language_id_baa88fad ON in_house.resume_user_language USING btree (language_id);
 ?   DROP INDEX in_house.resume_user_language_language_id_baa88fad;
       in_house            postgres    false    232                       1259    17966 3   resume_user_language_language_profiency_id_81ca799f    INDEX     �   CREATE INDEX resume_user_language_language_profiency_id_81ca799f ON in_house.resume_user_language USING btree (language_profiency_id);
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
       in_house            postgres    false    253            ?           2606    17762 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       in_house          postgres    false    208    3039    212            >           2606    17757 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       in_house          postgres    false    212    3044    210            =           2606    17748 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       in_house          postgres    false    208    3034    206            A           2606    17777 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       in_house          postgres    false    210    216    3044            @           2606    17772 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       in_house          postgres    false    214    3052    216            C           2606    17791 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       in_house          postgres    false    3039    218    208            B           2606    17786 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       in_house          postgres    false    3052    214    218            D           2606    17810 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       in_house          postgres    false    3034    220    206            E           2606    17815 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       in_house          postgres    false    214    220    3052            P           2606    18007 P   resume_certificates resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id;
       in_house          postgres    false    3080    244    228            O           2606    18001 L   resume_educations resume_educations_profile_id_363d9f96_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id;
       in_house          postgres    false    242    228    3080            F           2606    17921 L   resume_employment resume_employment_profile_id_a7423269_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id;
       in_house          postgres    false    222    3080    228            L           2606    17980 N   resume_projects resume_projects_employment_id_574c5bf6_fk_resume_employment_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id FOREIGN KEY (employment_id) REFERENCES in_house.resume_employment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id;
       in_house          postgres    false    238    3073    222            M           2606    17988 Q   resume_projects_technology resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr FOREIGN KEY (projects_id) REFERENCES in_house.resume_projects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr;
       in_house          postgres    false    238    3096    240            N           2606    17993 U   resume_projects_technology resume_projects_tech_technologies_id_2ca2768d_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te FOREIGN KEY (technologies_id) REFERENCES in_house.resume_technologies(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te;
       in_house          postgres    false    240    236    3093            K           2606    17974 I   resume_technologies resume_technologies_category_id_147f19e0_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te FOREIGN KEY (category_id) REFERENCES in_house.resume_technology_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te;
       in_house          postgres    false    230    3082    236            J           2606    17968 R   resume_user_interest resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id;
       in_house          postgres    false    228    3080    234            G           2606    17950 K   resume_user_language resume_user_language_language_id_baa88fad_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la FOREIGN KEY (language_id) REFERENCES in_house.resume_languages(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la;
       in_house          postgres    false    232    226    3078            H           2606    17955 T   resume_user_language resume_user_language_language_profiency_i_81ca799f_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la FOREIGN KEY (language_profiency_id) REFERENCES in_house.resume_language_proficiency(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la;
       in_house          postgres    false    232    3076    224            I           2606    17960 R   resume_user_language resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id;
       in_house          postgres    false    232    3080    228            R           2606    18062 I   topic_section_tbl topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id;
       in_house          postgres    false    251    249    3119            Q           2606    18561 D   topics_tbl_dm topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id FOREIGN KEY (subject_id) REFERENCES in_house.subject_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id;
       in_house          postgres    false    247    249    3114            S           2606    18104 P   tutorials_postdetail tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id FOREIGN KEY (post_id) REFERENCES in_house.tutorials_posts(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id;
       in_house          postgres    false    253    3127    255            �      x������ � �      �      x������ � �      �   |  x�u�ю�0E������ �������V)q�TY�������3�C�b�\rG�!F}���z-����nQF���W�.�}^��eL� ����ۅcq��*`{��A뒐S���ƾ�U�-a��[�;`�oĂE`ۍA"�O���e8.�=ٻA�ɸ�́{�qa�;��0*J���6���~t�`z�8kSq�p&�8qw@�) jr���6�����KW�d"nh��Ne��>箈f�.�!��(�&��_��=�차:��]���rX�E�`��,3N9Hɹ�o|\����~�]o�`:��#]�<��C%�O){�(o�	,{����}�yS��ZQ��R��2W.+ͣf���j�h�5��¬�X�V�w����Ǖ>��%/;b2	�[�a���F�����spww{~�e�77=��\�����+56�����z ���T,¯���)Տ�N�wS&ο������*��L$R�Am���}+	�d�SVI?,v��隒*�M]��J��WB�f[	�JH��p	UB���6�>H�(o��ӧ���<�vAav�(�{��^^�@S��&^e��0��j#�1�8�"㜤��b�9:P�t{}��� �řK;�$b-Q�c��42�kX��I�HJgg���M�ףq��=]�h�8x�
��\����2�wI�9�n��k3���na�k9p9��(�r�rGQB��`E	���v���y}S4qZҎnD�$�7��"a��[�h�.�ƛ�HJ�mr�Q�86�B7"S	 {��4%L�r��`��gUyH�U7m�T�c�Jus�;�J���ۃl��yj��e�p�aK�<G��8�`o�ҭDFc �@�!`���!�c8Li�m���8�`�[�L�D�2�c!`T��	��oZ��9q#P      �   �   x�E��
�@ ��St�&.�~۶�d?vI�ʢb3R��4#��+����a�/G��r��c3��=���	���y��2���2�����pz�U���h�0	6�9�D:.b|L1I�Ł4�����%HB��ˌ.N4��O��0�B�P*lS!8H��X[jY�ر1�      �      x������ � �      �      x������ � �      �      x��]K�#7�>˿B���`��̬�l�1��f� W����$U���������T�R��>���d|� �l��C�ޅ�g>͈�<��3�&0����חg��������a��a6�׿��O��-B�!6r���f>����b}�r3�G.�pe�^�o�ǆ��:�0u��gHA�߄
p�u��e���r��������O��7���N6�@3t�C~?j0��u�S�=*N~�??̏͜"D���4�r���u��o���Ȓ��r"�̷�f�+PQV:{�ju,.8d���x0�!5���`�ή�N�8$#`�e��`�B�S���䗷��?F���(͘J���|Z�V��/��1��������<��?wc��*a�qjbʞ�&���7_VG=L9J�y�v1L�,��.V���j�OA��o�!���2����c�=�Ѝ��r��i�Y�O�#��,� 4�[�����~��ی���gq�����-e`/���3c�~��4���u��ж�����b�m����uAo�P~�@r��X��J�'�/JO��~�ßk�����L��^^u�W�Uota/2u�� |=C4j��I�Rl%��B�Hp��y:�4��O�x&�'�����_|6�r����p/שw�"���r��
��@M �&�͟7�/L����cFL�� ^1j+E��3RH�,��PnY=�˚�`�'?-����k�9@,iRJ�C<xŗ�iku�)����/ϛ���T���i�|�ٖ�8Z����3Kr~�r��B�9�"��g9M���_�j��l���H�8��@�R�����&��ە�����z1���%�0q;�FG��g(��D�N�W���[ 1��@���%{g��.`@R;�x�Dy|�/�g
<�}���f�h��9j�H#�w��e'5HrJ����ـK����3�
�΂ÌbCa|�߂�-�Vљ䳽������2Zh�bF���u~��#z'ӝf��y�̣PyK�5�x�q��ɀke!��z����0=���E�R���"�i�.ӹ۬��_F��$U�H�E�ɟW�r�8XV�`��l����ME
�O��$_��y�d�p��fȭ��ν{]�/�;��>8Vm�lQ�3��f����������|\n����E"]&n�R��������������b�c�p�*i
J�)�k�̑%��zZ��|�-Zo#�@5����mdP�b�.�:_��@� Ή�	Y\A,�`&)}0�:_��|'i�����!o����|A6\� N mD<N��}<P'��:�H"�Iot�#X�m��.�P�-G֜�������9�'z糯6Wd8��]���X���R&BL�G�Q�
�{_m��C�H���7S�!�F�	��F��3�ƅH��L%�r��D��V�7sX�k4 )����wX��y�x;)�N�NWPX�'Y�j�x�GҼ�Qv\�p�ոN�n`�j3e%��36�]0V�*+q_�(H�X��&�q��܀� ��\Y�K}(a:쪶[9�9݈gϹZ�V�RS	G�\mɳոP��1V�ي���&s���lU.����ѓ��8�ʅc��!T[�C�C���"\K9Z����9r�ښ'á�UlB�j�[�C

$�\��
��$�XQ��j-��^9twU��vs�Ԟ�5Th�<j��!��d��*o��6�`
.Ce*Rqh�Ǯr=M�Gb�$�7��й�J��*�<5c텈C"ͪ�*��T�Re�d�yu.��T�Pi'��t��8KZQ��Q��T�H8Vw�C�E�HTFݰJ�+�XW��������u�ѝ��(���+t�6��Ij���L�����YXo�I�Cm�u����RȮ�R:) Im=���W�3TR�:�E�j3�a�X���Я+Q�
�ko4�������z�B.զ"C�;$K>֞@6T�
�0�6�0�Bj�\B��0*��*+���/�D�,U,;�����"*���&%-®�&��S����6e�+{�~UޟsJ4�����o��R%M��)���J��*�y�+�ɳ����Rm�s�P9G��h*����\}������ܫ���]\�	Kޠ�j�z2T�ԙR��ǭUR��t�c,9KU����{[�mz ���!<�� ��+�8=����P@��i��C�F"Nh[�O�7���'B9�sk���N#*Ϻ� tmn���Jk2�K:E���|�]���eY��_����ŷBm�l�H��Bύ���!�z�vHAܧ����:���m��u3�#�x�~,Z��y��+�*Q�>��
�D����*2T �^'�����R��+1�����E,�=��p[g���-��#=b�k�C�:m��\#���ݚ������5�L��,B��a�k��r=�y���i[d�����=�����XcvA����DW�]�G�˲,�|u��oC8���Ɣcp��e��n�TT�!������6�S�k���H�Fb�z"ڵF������e�{���'&��4D��ƭ��q�nh?�<�=�^��^���{-Z���@*t�[#VS��(��"-\�n�B�|��_�׊%:��Ķ"��5�Q�&���Y$+=h�K��kB�"ǧ��jy��d�;�$ӷ�B7٦�%��]��V,z�K�H]�$���z�x8�du�˶ J��^8C���?�MW�:�ک/H��y>��B]�X_/D�
_nHI�{��tڭF+�{�Mo���'�Nӭ����B�2 �=C�!�G��̗B��������H)"��2Ni��UyK9�6Y��6�$����G1�.��X��v'	�n>/m��h%Be���n���OY��=��.���1��_��:G��V�������$�'������bR�R������|�* ꝩn��Ӥ�^�b�ꊡxZt��1�gR�d�Ĩ�����q/���[(�$��)|��y�?��S�VF�-��N��vӡ�>g����%�no����U�:ғ.h�z��4�;�*��H/�/u7�	�TdǊGp�g@h�2�S�-�@,��� �v�̀�ls��^IE(#�v[���c�ɏO�/�bz[�Q��J�*ȸZ�H*��j��VB�o����L?�^��aD�4�g�����������(�@'Z��Qh��(N�O�-V��9��2�8]��Н`�����)�CiC���.pW���wQ�!;�l���4���~~�R�9�zA�9
��e)J���C��3�0��,Чv��O�Z����$��wڛ���'��0�ub�\��,O.E�� u�tб�B�^����*ӏ��|�rE,�>��;2�Fpk�lz�c�h���(�x�q%���޷�r�8��jR��s��mJ���짙�㵲��U�z�xoѽdGާ)Vv��G���ጓ��ﳃ������C��C�"� %hKb��������B�`9�[#Xb*������[�y��2z��
�:���҅I���6���X�l/�{J�.'ݐǷx>�aV���#�I��-���_篧�d���{����8M�濏"X��Dz���<y}4��� ���$��~��M~^��!�m{�c�z@��0�"��gA Ж��6���4(���6�~^�����K�������'w�oZ�S�ּ�4P?%��n��������ۗ^ @�_vp��v|�=�y�������RA�Q��}١����R�e|��w
����������k�b��a{雑�v�8D�g�b����ɂ놏������lХ���GwA����Yt� �r}����W`I��QJ�#�q������}��Kq����KN�ol���%��z��M�Zs���5�I�aKS�,I@�yS����Ð�s2���+ǩ�J�fp�]��~��z�dѓ~0�7���ԋ�n(}��3��0^��g�����м����5֋MY������r��|�%'�5����_f�.b���b�=��^+IRjr��������[$[oqHq���ս��K�>v�d-Υ��m۔$0��������q U  1���Ed�X%Y����Er��b5}8�i=��}��%dk��Q��wp�	%#�v/"��=N�!�S��*��~���u��G����S�w��-~�R���]C�ǍW���6��C���=\p>Z��'�κ����{_S�YJ?��OC|���Mn��!��{4�&|�o_�^%ŉ�
��3�k�����[�
>��b�U��J�����dd�`�K�~/5�'X�2�v}^���+_.�}2��F���?Я�;���v�n�'�O�Wh�L[�\Zm%��U�'��=�蹎�D�_���I��r�GCpHCYƄ���1�Kh�3��ݮ��V�+f��yB���~��{87��~�
��.U=b����߉���;��{�ZAUBo	��B���ݹ���'�V�$J���tU>�|X�}�{�._�|�͟�C�hx]�h	���!��.ok��0Y�T���XtW�����y���ˉ��K���+m����xW|�!>鄣뚖o�G��5��)����-�~�/IFv\e�V����s:������y�[��]�;�ٓ�)��&�^3֘�J*/��\<5	�[�C�@��N�?�����V��      �   �   x�e��n� E���L��k�/�"F���`��C�~N#��}����^[#M�F��p��� n�J�7���2�v�B���/dD�1����mF�sI�̘.�%���'J��"�����p��1���pϔhZ��'�Xۻ��]���c�Z��Ԣn�����D���36ݧ�P���J� jD���q�٨��^}]�or7���;�ۆ�J��;l�j�5��bY
� ��C���> ��ߦ!      �   w  x����n�0���S�~��3��YV���7e�_mS5o���Mh��83g����G��x]�!`����m+$��D<BZ#�A�2���5%��_�(��l�ʞ���b$��b�
M;\R��j��7gR����>Fp�p��CWL�{��Л߭����М��8)�ĝ{�kZ^����m��iZ ���b'�F���|ׄ06#Lg�M��K�j��	r��T��6�ts�mڇ &r����-h�}�4�q�)Z� �o1�qD�:��� p���I $�ׯS��S0�_p8�Μ5�r)�Ͷ������D8�o:��|�T�5�T�F=2] �9��
L���-�$j��g��v��4~���L�f�[Ό~x��D���Z0��.L�P<��E�����<T��?Z򧫘��OC�	E�g�d+��f�
܀�t��eWBM��Lh�˾\0�"ǭ��0���N� )t�;ҭ��4���4O��G��'˻ ٖ"�)z�����o)�B�>E�f9�(�uC�X�O.k���Ȓu�rK��H�%�R�bM!��r��U|Q�|�V
�!֎����@��(��h:`w���8�P�ݦ�>ST��R*�B�y<��!m      �   r  x����n�0�u�ݏ=�b�YTM�j�D0�MC��!�
__RE��Joy�{u�<ӏ���n��<u��h�9�8gݺy¼�����+>��4d � ��*�w#��S�y� �'�#-�#��xUy�oMi��xW���C��7�oU�'��*Z���il�<ݔ������w�{Y��C�]E�����e��%�W��Ww�4����/�soe8�T���N�*�&ާt��o`�l��}��Ml����^0`��'L1qmk��
J��v	,>{p���OƦhu�F�n���6!�/ߍ��#P� ��������f1��+�/$Ù4�a�ʑ����*���f=g��r���-�Ĺ��[.�/V;       �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �     x��V�n�6}^� Mh7����5�6@j qݬ��@_(��S���nԧ|D_�{���!��8mP�u�fΜ9gȳٵ0������gM{���?�nIyԩ��k���j�¨!j�5��������z�ʴi�.�XK7�~�jR�`]�ʚ��t����Ր�V��fө��NL!�y�6�DS1 ��Δ~xv�U9a��*�xխh%�J�y��q_##پz- m@�/߷j-d0L-��ʚ�4J�@����jK��	��.6Q�S���Qh�3w�n|6;;9;��<��./3��Ys�xv#� ���;�a��{���}�����X>*����ݻȼ�J�4�L�J�U�N��l-sC'i<�6R-e$�6tTi�T�5��ɞ��(�������IQ�䀚F���*��*��@���
D�t��w���6-	�4�+P�p�/0��X�������? n�К���;�����v6B"�5��j�4r�9��S$d�D_YH� ��:�� ��4�720:V񎛂��H`��ݍ��jE�sJf���XQ#��P7��[B	;m�V����V�������%��[+n��;f1�a�Sן?���n��`޳�I鬨�H��C�ɳ ���
p�H�5[���NN`L��x�u��q�ώ�P*@��%�5.�Қ�̭�"h���󧿔�t�9<�m�L�üuv��|.�,k�Z��xp�'�_C���ex�g	�a���Ms����sTQ�
|_J�!Aۤ��sHe�]�0�q����d�>�]#f�f~��
ES��6>[.�������I��v���U���h� �d�-?�*��yR�<�KO���4�y��aPC�K�p��*�Y�v�ܡ~���4�U�
rk.�c�k�����2MP�v�f� R�TZ��ȂPh[��=g��sk������"+�$���B�\2��T����+e�ǂ�^]���/����EA?_���z��.���ע�_V��,�����'��3�w��v$7�&��
\n ټ-�P�#��6o00`��t�BR� �1yw!xm��{�����b��ή��Y���WӸ?D1	��'uq0�R�L��<�Σ���!_F�]n��o����D���)A�٫���H/Y1ti|P�Q&1`��d�EU�|?���h���Q$�: ��b���$8:��!:�"����P�����ѕ$�ӹ���ō�^��0~��,V7y��w��<3�����͆3A|�򨲿��瞞��ѣN-�xxVK���?$���� ��������؝�x�ק��ըj���TNF���4r�>�j��z-�����1��ݑ-=���햙��ɼ��׻>ߠ���|#3�:���A�z�\��]�W~�a�He�_�1��E            x��=is7���_��kCiMQ$%Zc�J��X��ǳ��ڵU��'�+sH��������ؖ�[r"�������1h=w2G|X�2�t3/l=��>N�$
ϟ��e�|"�ES)^\9A���h�xW�~�E���r�:�x�y"gO��,����f�sj��F�n��&r*Q�MC/�e��<��s���z��]Gw�w��	�T���s�*�(���#r��Qˤ'�%N
�S/�a��ρ�'^�^�H1s\��R/��z����ȝ@�����8O��Jt��ACAM#����f/�o��aH^��d
� t1<�#�_3�E&�D��� ȩ'��xE��X�> '�?��<	!s�G�'΅7u��9��'�5�h�EУj?�����`�"���(�.������w�f�$�~$�ą��Q���E�e�	dV�J#0b
=C3��
Ǘi� � �Ұ5h���N���`d����c |�d�+"��C�g�{6��lx�R�,�5ۣ�G�l{����s_��^��3�1!O���w҇�5
��X�s�����b�4M��K���{ϱ��6G�_�����L�]d���$`��8�!p��㉣T�8� IA�l�;�y�K�͑T��@g
d�A/�B��Eb�{�T8�B|��)v��I{V_!Sӡ�����Df����$�2^��P0D�3�J[E{V���pWL����tslJ}|Ǿ_P@z��B ��ɰ5 ؕ)����a�-&0���zJ`Sq)�4ʀ�P��{���j耫Y�H���� N2F�,���p'�u%����L�1��90-�w�I_	�Bv\ ���'�cH^e2L=l�{�s%� D��d�K'Ͱ3h���8�.�]�2�n��<rt� P�z ����1�!UD5J﷓-��~M�xN3�o)`�1�CnS��:�ay��|�ٚ��� 8!���8�N����Jb�GZ ���H��z�}��a�����'d�����@*�?PVL"�Q¥8%��HY<���&���=��G���"*{;I����f,�]U
��d�ч�g�-]��@)w��0�~tY5�����
vN©��B'ca���U!�S����F8n���q�!`XNWN���6�K�8N�0���-�����]��=5�4c�y0] �A�wt���laA�p��M��t�.+�.�4��2�^�瀠�s�n��C�LHz	lF�/�ީ�P�� �G @��yA3 ���,�'X.�H���8��$���C|3��`�M�t�j�*��Q�e��s�*�p�MG���)1.��	�"j.���
�Q�܈)#��Y(�� �+����.�FQ}��ʢ݅�� q�x�*��;�� �!��=���!�(�k�ѽØ!wq�I$�/����,�2��տ�شkUZ�o�iQ�.W��b��\�`d5���Ě�5����Y�u�<3����4�!��:��H��A��j
�+CA�Q�,��1�s�'���M2'���,���UJ��u�`�Ҹ�)�`s.��$$=.a��Z�(��� �qH�'̖A�¸�8��4Ui��H
?��8bh��c04
��IP�@��<�����е��l���/x4�����*�/�d�~�,t�;��ҩ�ѫh���sl1��;To�`pc �B�GѴ��Ӏ[�-���T�B�]J���hڶZ���.6�<2sPS���	����5l�@��,�llf�l}<��4b��t�4Bwy�WE�:���<'%��|y�)�&�]Nqem��[��:�n�- "�Y�F�t��*&L~�.��u�B��KB3�U��������Ќ�IwF~t�b�����??3}l��%��P*��]��ߔj��.��0�O���1�
c����2Y�k�&8n OyBU�4�(^!ǔ�&yBSB���e��C3�i�''D^	_�'�wAp�LNc�(g�E�DI#�M���Go8e�<�4�R��&�u�.��.�.��ΣK�ǖ�f��J{��f;҇�����(G���f�S<ҳ��J2�2�t8�@��(�I�Fp	��v��ď�/ȗE��:�ޢ%����q#�#�艟a*��~mo�x�`�.X��탐�)�F�<�+�[fH%�-��l���șe �Й��'��G�]%��{�<q��UC���b�� �k"���p��M��lT�T�|��Zg1M��5���ĩ�����ͬǟ�O�h�Wb+ݮ����]��.��"��x^@� ͂�5[�H�׉Ɨ���Rg�$p��:	�<SVJ�����3�߁�J?�%�3�	���\Jѹ`\����
gI��@̀�������. =���i+B㙃+����0��@<�/NO߈�������6�_|���ο:U���3���k��k�J�v�َr��a*�F <mx�!�S3+�	�_P���������2K����mf���0s�,MM%��$���2�z kj���@�bQ�es
Dժj���}���a@��Q�U�YDG���̈́�A���Ϲ��赓ж���5Y*u�G�%�;�@4����[�j�psl��A&�,E�1B�8,���rYc]0F_�B^#���������8�����) �q�1�EiN#����扭m��&y�<��CQ=�h�����n�2c:&@	 �	P�CK�TlC>��W@���3��g���+��"��T|4�~bAU �)�_w�85ŀ�4[��I����`�&��|�5���g�����^wЇ�a��v�Ӎo
ͮ;�=�Rd�0��
����瞠��兠���dO
|L�(�$�-c���^2��?l
�(���y�ӓ��������/)�+}�����-���l��
��H84�^2��h����N���C╤���T߱��1>YX�����bB����11a�� �v�3��X��<R�:b�f�U�������H�DM�>��J|5����宕��<�q��B0��3��@@�0�\^逪Je�4$�LS#=��gf��~�
Q�PP�3����ǁ�|�,����YH�E����ǻ��)C��]R]B�V���+�����I= �� 
�`Î�\��G?�a�+2�źS6�킏�~w���������}�������Q��V�֙w�'�QR������\�����ȩ��N�ޢϠN����y���}&ȇ�8<�:��Է�:��6nw����띁U �ԋ��������j�m�o���܈F8
1�c�إ' �xd� ��A�
�k�M��ی��e ���ǡ���+���_���+�f	E�U@*�"s�Xx �Ĝ�
8��]A�����SK���}'��3�%"����Z�)�(��P�zN��˒�ћ,!3�X
o)�0�h́���G1q$ڍ��xZӷBh~Ŵ΢'�jl�7j��
ua��0c�j��J����	6�&@���Xت+@�Ȝ�B��J�BT�Kxu�d��f���=��O�G��e�~��#���e�0I��fyH��!��d�($ �|nQ[��t��S��4�����쏏ȁ�[�ЩE���]8�d�8A���K+E4�p�H�Tc@��&����Mu��#4ʷ�.JM��<��e����At	���D��Q�T�Soz��.�|���d*Cm����B�)�� �3o��B�C�:���V�#
.�P��o�(dc��\G
��2�a�2{eh��R�=|x���J���4֖;36²]�:,ݳ���j"p��Œ�cGK�[~Ud]-����y�o��2�+�/Ew	ge�#�k�!7q��2�O��t��3�`I��B;W��O#4+K���y�<��g��?!�/��X���^�̛��+�	�?�q���ܹ �H��K.Qr>}�.`�Ľc�,S���؀W�(��*���;I�^=��R)G����KU}�(��@9t�^��������\r�T��Kv
Χ'(:I�\�����E�}�R�ï:�j�p�I�dl;�j��'    ����q����jO��RDK c�D1V��7
ߤ�j�74/m(.*����"��A��ы�ͲR�*�ک(ּ*A�c���M<�ň�<5�*��'�z	�Е]A>t��M�e�a�4Y��3��R?2��6�owF+V)��*o���m�-����_�t�M��x���`�>��\��DYcTE�@;<����W0���gU1tͯ-D�����(^^��D��I�g�m�MA�ڠ��0�G�)?(�D�e�e���a�L14��
/o�'yk=���=E�֓��o��������z�n���!���.���v)\v�z�k=n�����wk=���lӨԫ���ѭ�ѭ�tpk=�ZOG�'з�;�.�U��.���Ϻ{w*~Kd�͕Ex�����U��-PV�	��&�V˴ٳv1�S��o����>�Q"���LэgE�jB���f�nX����ў9
w��qכ	:�V��KOoD�5 ��9nK�t�g�, `���������V*9,�./yP.yPz�,�`����4�k/;�%�V	��āUb�%Vnu��,��Zc��}xX <u^��(l1h�twӀ��ζ�x��T�����ƠK��L���� �>-u���_pa�8^�Y���E�+($�?�� �G?�)���/qǆZ.���Q�`ul�$��+骄�U��Ԣ"�=�S�YH���)>�>T�[�R+��EX]qgPY���������#�S��pRQO��(�a����>�rF��|��Voڻ����S��)���x�u�R��U����y8viû�\_�ԫ�kS;��i.VSk��j�j,V#^c�35��1wc���5��	c���j,Uә�����7�}�0џ�ߕ��.���`Pq��Z�6~�Ѥb��˘!b�pI3�"����q�4��3�&-�9x+��D\�0����$��j84����z�J9���M�N�Pz>dۥ�v(�N�{	�ꨂa���C(|X+��]	 �SF�a
��1uʸ�9�f,7>yY��;Wa��niw���t��(W޴NX��x���f;j�ە4qw����v������@e����?,6@e���W�C]O�F��#��H^WN�@m��o���'b�֦�ƽ_��{�_Rm��iSkw���	=�ӌ���zG���)��m?[�z����a��)CS�o�V�� �&�܋����]�s:a�?m��eÂ��R��6�~���~����:���p�:p����(˼��,$�c]c�Y~fآ�Jh��X/������ګs�"�z�(����Y�K̻�Y.��b>�P�!�\�{�)�������n��H�悷)���67�'�n2�O����W�f��M�Ύ�ؗ�)&R���e�����[W0��t�gv���w�k�Q���ܔ
L��cM~�p� �Xk��+>��۹q��{h���d�j_v�Hsb]ډA��H�O٧��;�ӱ���A���:�6�_��wT�m.�m���9�C�u�b#ܸi �J�ɮy8@�B
�sݤ�N��FuA�`�3�]��^�s7���*��)�R��BgKn&�$���!V4� ��obTpwQ�+y\5��ϊ52@�bb�3������4R�,��t���#ii͡��K�
3��)���⹇����W�Iǥ���Z=�L���_�'ŎyW=�G5u��tH���$TY$0��v7�';
8�'�:di_�N��5]6�,�zS��(}�G�r�^��#�g��>eС����2 ����:ֳJ��J�eX�
���Z�c*�r|T�aQe��0U�?�ʚK�P��u��1Y��������ɲ�q�o�c�`�|Y��2L���׵��ڄ�r�y�����tzr�|�}�-��ɘ���t)G�~�%G�<���<���UujѲ�PJVH�I2vDL>���NN,��[�=�zy�����#c��*A<��DW\Z9�0�xO\liF�j
7LT�b�p���!����ڕ�*��k��Yq�p�	x�3R�]��P^�щ;��î�Tp>���Y=MOovm��5cTl���5#ʳTf��t�����0>����5�<�@�J��q/�g؋z��FK0� (�v�G�����5W�H��'� z���mB��X�s��,�"H��MD�1��_��G#騿��r]�� t H���[.�\o�e8G'�����q�O�|��EZ7Ǣ�cE�VK���Ĵ� �9m�� J����vXy[$*i��5���a%^�Y���qh욠X��
Rq*Oʑ�U�-X�p�=e��֪��v+���c��]xZ��'.7���B��Ȳ��T�,�J]�&��K�M֔/����IHʦ�n��y�M<'�X&��ZG�u�T%����U_S���W��Nб��^qT��"v1� Pc�	J�67ڦ���k���J������˓j��<1��2D��Q8f��g��([��R��Q|ˡ��x9��R��M�y�A^`�
��s"^e��ıH}��M��
��I,1�	�S1��%���X1�+)� ��9��Z�g�<䄻�h�T�!'9�ݐ^1���֋�l�x-��@�>�+1��A� .�3�@�v�hy���t�I
۵ R�\R�4�'�W��tgP�p01�7E�Ĭ����}C�ס�z��v�4��պN�bW�G����J�Q��x���`<���*��;,�}�Lڃ�$�� ���r�I�8�|����_�B�A�|���E�Z���������ĭ$JNx���F�?�lYLO���B��l[���A4��i��ۭ�G1��&�V�zʀ_)v���s��:��KZ�F��
L�o�@�Y�����t���}c�|cL�m.���M1M�R�ݙ��(�i*�U��� f���9���S}��5�Z�U���<J7>�޽{����:�uʥ���@3���(;;-]�DW�4ds� R��ud�+
9���"=;;D"�;�9��-|FSM���,�vA�g�J@`�P6�%�0�t���I7�K͐
~����4w���m�i�>���M_��X��ƥBc.T��֝[τ1>̌�@�����_�y��oś��/��)��r���#+�����1 [I�\�Fx���J�\mjYbC��a�l��\L��{+k�ZjɠH�l��Ȩ8�a�/w\�>Z]}�z-�v�Z�G�+���j���ע|�?�uA;^(~Q8�R#���ke]'.U9Z]e����;s_fu-�p�G�&��3�L�w�����eܢZ;l�-F<C���F�q��Q��Z�Í���r-�Qu��>��G'Y�E�Cn`��KZ\F���gI�����6���VQO\��e$RM�X|AT��o�;����zWU�W��ז�A���z�%��GZ�E@��^�
���_�ou;�~��&~�6��XU?h�>0�='���_�6R8K�G��}�l�4@���t[�4
�� YFl]��u�-Ov��j�ֵ�Z��O'�<�0�e�jf��r˦]�R'�_�A��*����-�5U��������ֱ�d�@f��D/��/�c��0ŋ���Z���3��(��K�v���D�= 
�qW�\� ��a+p���	߀1:j^�6�ƣ~�t��P���o��I��19qh��kd6q�$΂ev��k�����z�7��My�c��sC���¢H����������i�#�{��~Q};�D�I�S��)r=��n�UX!�H��7`��u��q:���l��x��x��f�#xm�yKD������[�ݰ��F�-�aX�s��d7�����U����;�]]��5㝝*�g��e����*��p����[n"�����t�hiT^P�e���1s�;ß�
��)����������/)^�H�d|�i��Q��Q{�C�|O���'w.�HjF�G�F��K���&P��9��Ԗ{��lҭ�t{��+��K{wK�eȼS
g^�o�ޮ�w���t�8]p�Jk�׀�������U{3��v�}e<�)������O[�J���ɒ<w:o&P�c����(r� l�Aq� u  4g����`���&�x�#Cܽ@7���M��i M��n�����tY�rŴ��|iNB�A7R]�)��
پc"6���vӈ�M����wKq�P�5����oش��D�\`;x}uqt)�rǢ��wJ��?�̜{���w1�&3��QYj�"�:y�'�H{/%Dn������i�s/3la�)l�����,s���L�;����y�Q�F
�殽�\ܡI��N�)go 65M ;�c�@�y	6�����M���[KiE�1�8|��X+��:y������	`v��"6�� J[gS�$��T7��u��!�*�t]�A6-�G����_j=��ԭ�3�F�ܡ)��g��t��N�T��b���%|���,Q�;�xpc��H�Y��z���Ȭ�"�y��_y��0+"�'U[_=�r�OJ\�Ak��Mg���㹳A�A���J7m"9A�S��I]7�m�HWO�Yi��6��m�ѝ3N�w�8�)���J���zK� ���L<Wt�����y�W������k��f^�L�V�h��7J��3����Q@[��j{2�Y��ENn���nXJmaRƩw�i���Rz��/C<o�Z��MX����/�t�7�R���'m�.���SNm(���%��Zf�P��P�k���zS�h�j!�~�qC-�ɴ��nY3�iAaa���"E�`�-����2Pu��c�j�C����W�#S?ed��������ի�׿r&BƠ���՘�=r>�w����B���N✣�$�j��e����(E�O�6Ed��OF3ō*���Ϧ�R,,�]L9TJ���A8;��?$�|��Qh���d�u�x�嶌�]�Bi2ˌj]3�,#��s	CW����<��bA���D�{�k[�X1����9� LHY�O?s���'�]'MF�n�1����ԃ�3��E�' �ā�hE��E  ��JB`e��bD�`� {0=Xu�8Ҙ����OZ��'��+.��Ù)�ұ��qv�U�]5`�q�K�lT].�/����.'���	��	3I��y)�8̧�����!
%���Ά��]��}.1��������PTR�(�.7�Y�3�߽x�����o/���^�x�fu(���)��S~}Jo���ɗ㫓��׎�s�X_��Trk�]��F`~��'@��g��.�g�a~���פ�h<�_?��e���E���s�u
삞��
GGw�J;��yY�>n}��}1w���Ve���^(>�S�R��4/�o� _��8H�������^(Ϊ��B�����@8�M%�V�/H���K��?��;9�ۂ~��?�K�ï��0X�b�Ou�Jf�x ����/�:�4c�J��D�L�I9SpN	f����&�l0��2<������X^q��.-(�U�4R\�����Rh;��~�@�����l��~C�����gpi %{��R�8�w�~��g?��ON�F��v>���,�a�A�����K�X�"�F-���ϣٷi��@�9�]j�=����k}@� �Y׆�u�	�r;g�N	��D�Z��󵅜h��bx���gK�2(*��`3��Sę�|�ټ��,�t�M�M��,�+�.�O�%���.�ٶ�Q��籁n��n@�,=�x����}�����W����+���Κ�g�$����
Ŋ��v���D�35�m�x���֏�\~׵\��Jư��#���/�[��=��{OB�+"�L.-L���Qw�m\�"��2���]Y���M9D�wS6�By���g�z���=�gt����t�Ю����C����%�*0�5Pqp���v��P��'%��0�깊mkd�*�1�K�ֲ��ll}��������p          M  x��W�n�F}��b��&$Œ�a���ր�q���aE����]f/R��=�$%J���� �9g�\vfr�}^��5��6�즾�7��6 E�5�������&g�3�ʩ<��Z-t� �𵴞��|t�FS�m�&���g����+z��n޶�0/l������d������7��z�����=F���ؕ!�7f>�8ڣ���}���x������t�tg��V�5i�F�J0� �XM��לkUn���Z�X���m}���		�U�]�E�SX �*�ڈ5_F���Ik(��Z�,�%'3IJ
hT��U�	Wj�ί�u��mv�e���dxr1_��Y���C��&��٩`���z�<h��xin!t��G�`W�k+�U�R��A[��Ct�
]k��\�0�ߣ��ʹ���Ÿ�� "�}I��e,�T�9��b���JX��r0v֋*v�>�Z���8R]�*)�:]�1KD�3�S6�%��A!��A%��'��J�L��Jqu�Z�N��L����}��$�T�>�B�-��d���L]�l���E�q���8���;}]לҳ���Gq�gEP	|�u�OKvKͫl[��!f���r��?���:��s1X��bX�K���;UU��R�yTsF>� 5��*���H��/֣T���__�	�-�QI���}AΕC��7�E��ur>*XU0�EnA�l�:aGO��^0hX�>�or��\ �ED� ⎋V���U+���&��㸅�ِ��̣�H��A�]j�.��C:9D:���h�}t�ʞ	�?Ε�{���r�KܴN��&y��z~ո9���H�zI�&�\v5"z֎�˞�q�q��#4W͝N�H���Ջ\�(�כ)ʻ��~�	�h����7�:��ߐ�R��x[*'�ٸ�l�w�>�"�{��_�W��D6�cU�����`��fF C� ��4����z������#��a���y����1ضg�p��$x�p{L�|�:��+>ȶwI
 f	��ZmrM��޳Ct��,�p��I��Q|e3_w�@���&�q��I',����a�Y�w���j����]H�]�l�����E���l־�B������A`	B��RU�(H�9��D��lD<�Q�U��B�4����h@͔J��/S�hb��o�V���̢)v�g�=���������۪R���wd�Y���f\�Q���S�4&*U����]�$ca&k����Wp��X^�(-�e5s�,��w��AH��nX� 0�Dv������#YQM+��=���r��;g�6�����E�ǿ�3��.ţ�U��{���f�_����� ��M            x������ � �            x������ � �     