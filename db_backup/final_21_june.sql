PGDMP     #    (    	            z            codex_final_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) �    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       in_house          postgres    false    6    210                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE in_house.auth_group_id_seq OWNED BY in_house.auth_group.id;
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
       in_house          postgres    false    6    216                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.auth_user_groups_id_seq OWNED BY in_house.auth_user_groups.id;
          in_house          postgres    false    215            �            1259    17720    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE in_house.auth_user_id_seq;
       in_house          postgres    false    6    214                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE in_house.auth_user_id_seq OWNED BY in_house.auth_user.id;
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
       in_house          postgres    false    204    6                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.django_migrations_id_seq OWNED BY in_house.django_migrations.id;
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
       in_house          postgres    false    6    244                       0    0    resume_certificates_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_certificates_id_seq OWNED BY in_house.resume_certificates.id;
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
       in_house          postgres    false    242    6                       0    0    resume_educations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_educations_id_seq OWNED BY in_house.resume_educations.id;
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
       in_house          postgres    false    222    6                       0    0    resume_employment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_employment_id_seq OWNED BY in_house.resume_employment.id;
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
       in_house          postgres    false    6    226                       0    0    resume_languages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.resume_languages_id_seq OWNED BY in_house.resume_languages.id;
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
       in_house          postgres    false    6    238                       0    0    resume_projects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.resume_projects_id_seq OWNED BY in_house.resume_projects.id;
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
       in_house          postgres    false    6    236                       0    0    resume_technologies_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_technologies_id_seq OWNED BY in_house.resume_technologies.id;
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
       in_house          postgres    false    230    6                       0    0 !   resume_technology_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_technology_category_id_seq OWNED BY in_house.resume_technology_category.id;
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
       in_house          postgres    false    234    6                        0    0    resume_user_interest_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_interest_id_seq OWNED BY in_house.resume_user_interest.id;
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
          in_house          postgres    false    231            �            1259    18025    subject_tbl_dm    TABLE     0  CREATE TABLE in_house.subject_tbl_dm (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    created_at date NOT NULL,
    updated_at date NOT NULL,
    slug character varying(120) NOT NULL,
    status integer NOT NULL
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
       in_house          postgres    false    6    247            "           0    0    subject_tbl_dm_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.subject_tbl_dm_id_seq OWNED BY in_house.subject_tbl_dm.id;
          in_house          postgres    false    246            �            1259    18047    topic_section_tbl    TABLE     *  CREATE TABLE in_house.topic_section_tbl (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    section_order integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    topic_id integer NOT NULL,
    status integer NOT NULL
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
       in_house          postgres    false    6    251            #           0    0    topic_section_tbl_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.topic_section_tbl_id_seq OWNED BY in_house.topic_section_tbl.id;
          in_house          postgres    false    250            �            1259    18036    topics_tbl_dm    TABLE     r  CREATE TABLE in_house.topics_tbl_dm (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    topic_order integer NOT NULL,
    image character varying(100),
    created_at date NOT NULL,
    updated_at date NOT NULL,
    subject_id integer NOT NULL,
    slug character varying(120) NOT NULL,
    status integer NOT NULL
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
       in_house          postgres    false    6    249            $           0    0    topics_tbl_dm_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE in_house.topics_tbl_dm_id_seq OWNED BY in_house.topics_tbl_dm.id;
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
       in_house          postgres    false    255    6            %           0    0    tutorials_postdetail_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.tutorials_postdetail_id_seq OWNED BY in_house.tutorials_postdetail.id;
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
       in_house          postgres    false    6    253            &           0    0    tutorials_posts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.tutorials_posts_id_seq OWNED BY in_house.tutorials_posts.id;
          in_house          postgres    false    252            �           2604    17707    auth_group id    DEFAULT     r   ALTER TABLE ONLY in_house.auth_group ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_id_seq'::regclass);
 >   ALTER TABLE in_house.auth_group ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    209    210    210            �           2604    17717    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_permissions_id_seq'::regclass);
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
       in_house          postgres    false    220    219    220            �           2604    17689    django_content_type id    DEFAULT     �   ALTER TABLE ONLY in_house.django_content_type ALTER COLUMN id SET DEFAULT nextval('in_house.django_content_type_id_seq'::regclass);
 G   ALTER TABLE in_house.django_content_type ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    205    206    206            �           2604    17678    django_migrations id    DEFAULT     �   ALTER TABLE ONLY in_house.django_migrations ALTER COLUMN id SET DEFAULT nextval('in_house.django_migrations_id_seq'::regclass);
 E   ALTER TABLE in_house.django_migrations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    203    204    204            �           2604    17944    resume_certificates id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_certificates ALTER COLUMN id SET DEFAULT nextval('in_house.resume_certificates_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_certificates ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    244    243    244            �           2604    17931    resume_educations id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_educations ALTER COLUMN id SET DEFAULT nextval('in_house.resume_educations_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_educations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    241    242    242            �           2604    17836    resume_employment id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_employment ALTER COLUMN id SET DEFAULT nextval('in_house.resume_employment_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_employment ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    222    221    222            �           2604    17847    resume_language_proficiency id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_language_proficiency ALTER COLUMN id SET DEFAULT nextval('in_house.resume_language_proficiency_id_seq'::regclass);
 O   ALTER TABLE in_house.resume_language_proficiency ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    224    223    224            �           2604    17855    resume_languages id    DEFAULT     ~   ALTER TABLE ONLY in_house.resume_languages ALTER COLUMN id SET DEFAULT nextval('in_house.resume_languages_id_seq'::regclass);
 D   ALTER TABLE in_house.resume_languages ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    225    226    226            �           2604    17863    resume_profile id    DEFAULT     z   ALTER TABLE ONLY in_house.resume_profile ALTER COLUMN id SET DEFAULT nextval('in_house.resume_profile_id_seq'::regclass);
 B   ALTER TABLE in_house.resume_profile ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    228    227    228            �           2604    17906    resume_projects id    DEFAULT     |   ALTER TABLE ONLY in_house.resume_projects ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_id_seq'::regclass);
 C   ALTER TABLE in_house.resume_projects ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    238    237    238            �           2604    17918    resume_projects_technology id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_projects_technology ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_technology_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_projects_technology ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    239    240    240            �           2604    17898    resume_technologies id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technologies ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technologies_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_technologies ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    236    235    236            �           2604    17874    resume_technology_category id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technology_category ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technology_category_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_technology_category ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    230    229    230            �           2604    17890    resume_user_interest id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_interest ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_interest_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_interest ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    233    234    234            �           2604    17882    resume_user_language id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_language ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_language_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_language ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    231    232    232            �           2604    18028    subject_tbl_dm id    DEFAULT     z   ALTER TABLE ONLY in_house.subject_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.subject_tbl_dm_id_seq'::regclass);
 B   ALTER TABLE in_house.subject_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    246    247    247            �           2604    18050    topic_section_tbl id    DEFAULT     �   ALTER TABLE ONLY in_house.topic_section_tbl ALTER COLUMN id SET DEFAULT nextval('in_house.topic_section_tbl_id_seq'::regclass);
 E   ALTER TABLE in_house.topic_section_tbl ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    250    251    251            �           2604    18039    topics_tbl_dm id    DEFAULT     x   ALTER TABLE ONLY in_house.topics_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.topics_tbl_dm_id_seq'::regclass);
 A   ALTER TABLE in_house.topics_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    249    248    249            �           2604    18096    tutorials_postdetail id    DEFAULT     �   ALTER TABLE ONLY in_house.tutorials_postdetail ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_postdetail_id_seq'::regclass);
 H   ALTER TABLE in_house.tutorials_postdetail ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    255    254    255            �           2604    18079    tutorials_posts id    DEFAULT     |   ALTER TABLE ONLY in_house.tutorials_posts ALTER COLUMN id SET DEFAULT nextval('in_house.tutorials_posts_id_seq'::regclass);
 C   ALTER TABLE in_house.tutorials_posts ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    252    253    253            �          0    17704 
   auth_group 
   TABLE DATA           0   COPY in_house.auth_group (id, name) FROM stdin;
    in_house          postgres    false    210   �a      �          0    17714    auth_group_permissions 
   TABLE DATA           O   COPY in_house.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    in_house          postgres    false    212   �a      �          0    17696    auth_permission 
   TABLE DATA           P   COPY in_house.auth_permission (id, name, content_type_id, codename) FROM stdin;
    in_house          postgres    false    208   �a      �          0    17722 	   auth_user 
   TABLE DATA           �   COPY in_house.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    in_house          postgres    false    214   xe      �          0    17732    auth_user_groups 
   TABLE DATA           C   COPY in_house.auth_user_groups (id, user_id, group_id) FROM stdin;
    in_house          postgres    false    216   4f      �          0    17740    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    218   Qf      �          0    17800    django_admin_log 
   TABLE DATA           �   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    220   nf      �          0    17686    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    206   -u      �          0    17675    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    204   *v      �          0    18013    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    245   vx      �          0    17941    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    244   �y      �          0    17928    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    242   z      �          0    17833    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    222   2z      �          0    17844    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    224   Oz      �          0    17852    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    226   lz      �          0    17860    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    228   �z      �          0    17903    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    238   �z      �          0    17915    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    240   �z      �          0    17895    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    236   �z      �          0    17871    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    230   �z      �          0    17887    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    234   {      �          0    17879    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    232   7{      �          0    18025    subject_tbl_dm 
   TABLE DATA           n   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status) FROM stdin;
    in_house          postgres    false    247   T{                0    18047    topic_section_tbl 
   TABLE DATA           }   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status) FROM stdin;
    in_house          postgres    false    251   Ԁ                 0    18036    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status) FROM stdin;
    in_house          postgres    false    249   ��                0    18093    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    255   p�                0    18076    tutorials_posts 
   TABLE DATA           �   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    253   ��      '           0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    209            (           0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    211            )           0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 88, true);
          in_house          postgres    false    207            *           0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    215            +           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 1, true);
          in_house          postgres    false    213            ,           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 1, false);
          in_house          postgres    false    217            -           0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 224, true);
          in_house          postgres    false    219            .           0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.django_content_type_id_seq', 22, true);
          in_house          postgres    false    205            /           0    0    django_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_migrations_id_seq', 27, true);
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
          in_house          postgres    false    250            >           0    0    topics_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.topics_tbl_dm_id_seq', 15, true);
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
       in_house          postgres    false    3034    206    208            A           2606    17777 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       in_house          postgres    false    210    216    3044            @           2606    17772 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       in_house          postgres    false    214    216    3052            C           2606    17791 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       in_house          postgres    false    218    208    3039            B           2606    17786 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       in_house          postgres    false    3052    218    214            D           2606    17810 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       in_house          postgres    false    206    3034    220            E           2606    17815 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       in_house          postgres    false    3052    214    220            P           2606    18007 P   resume_certificates resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id;
       in_house          postgres    false    244    228    3080            O           2606    18001 L   resume_educations resume_educations_profile_id_363d9f96_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id;
       in_house          postgres    false    3080    228    242            F           2606    17921 L   resume_employment resume_employment_profile_id_a7423269_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id;
       in_house          postgres    false    3080    222    228            L           2606    17980 N   resume_projects resume_projects_employment_id_574c5bf6_fk_resume_employment_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id FOREIGN KEY (employment_id) REFERENCES in_house.resume_employment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id;
       in_house          postgres    false    238    3073    222            M           2606    17988 Q   resume_projects_technology resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr FOREIGN KEY (projects_id) REFERENCES in_house.resume_projects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr;
       in_house          postgres    false    238    240    3096            N           2606    17993 U   resume_projects_technology resume_projects_tech_technologies_id_2ca2768d_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te FOREIGN KEY (technologies_id) REFERENCES in_house.resume_technologies(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te;
       in_house          postgres    false    240    236    3093            K           2606    17974 I   resume_technologies resume_technologies_category_id_147f19e0_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te FOREIGN KEY (category_id) REFERENCES in_house.resume_technology_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te;
       in_house          postgres    false    3082    230    236            J           2606    17968 R   resume_user_interest resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id;
       in_house          postgres    false    3080    234    228            G           2606    17950 K   resume_user_language resume_user_language_language_id_baa88fad_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la FOREIGN KEY (language_id) REFERENCES in_house.resume_languages(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la;
       in_house          postgres    false    3078    226    232            H           2606    17955 T   resume_user_language resume_user_language_language_profiency_i_81ca799f_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la FOREIGN KEY (language_profiency_id) REFERENCES in_house.resume_language_proficiency(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la;
       in_house          postgres    false    224    232    3076            I           2606    17960 R   resume_user_language resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id;
       in_house          postgres    false    228    232    3080            R           2606    18062 I   topic_section_tbl topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id;
       in_house          postgres    false    251    249    3119            Q           2606    18056 D   topics_tbl_dm topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id FOREIGN KEY (subject_id) REFERENCES in_house.subject_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id;
       in_house          postgres    false    249    247    3114            S           2606    18104 P   tutorials_postdetail tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id FOREIGN KEY (post_id) REFERENCES in_house.tutorials_posts(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id;
       in_house          postgres    false    3127    253    255            �      x������ � �      �      x������ � �      �   |  x�u�ю�0E������ �������V)q�TY�������3�C�b�\rG�!F}���z-����nQF���W�.�}^��eL� ����ۅcq��*`{��A뒐S���ƾ�U�-a��[�;`�oĂE`ۍA"�O���e8.�=ٻA�ɸ�́{�qa�;��0*J���6���~t�`z�8kSq�p&�8qw@�) jr���6�����KW�d"nh��Ne��>箈f�.�!��(�&��_��=�차:��]���rX�E�`��,3N9Hɹ�o|\����~�]o�`:��#]�<��C%�O){�(o�	,{����}�yS��ZQ��R��2W.+ͣf���j�h�5��¬�X�V�w����Ǖ>��%/;b2	�[�a���F�����spww{~�e�77=��\�����+56�����z ���T,¯���)Տ�N�wS&ο������*��L$R�Am���}+	�d�SVI?,v��隒*�M]��J��WB�f[	�JH��p	UB���6�>H�(o��ӧ���<�vAav�(�{��^^�@S��&^e��0��j#�1�8�"㜤��b�9:P�t{}��� �řK;�$b-Q�c��42�kX��I�HJgg���M�ףq��=]�h�8x�
��\����2�wI�9�n��k3���na�k9p9��(�r�rGQB��`E	���v���y}S4qZҎnD�$�7��"a��[�h�.�ƛ�HJ�mr�Q�86�B7"S	 {��4%L�r��`��gUyH�U7m�T�c�Jus�;�J���ۃl��yj��e�p�aK�<G��8�`o�ҭDFc �@�!`���!�c8Li�m���8�`�[�L�D�2�c!`T��	��oZ��9q#P      �   �   x�E��
�@F�3O�$w�4�ُm���(���Tl*�z�����,>#�Cq<���i]���`-�x��&x^dea��h4ѳ҄�x27���-���@o�r�����F��G��m#��S�:�qd6ŁԤ֏"�$HB��O���Nr5��/�D�B����A�o��J��J1�      �      x������ � �      �      x������ � �      �   �  x��\KoG>O~��n]�U��͛l��Bd`����%���	����j�3�IIm�`�����ztW4��t�K���Os�6����x�]�Ol?���?~�����fy�f>��~���/�"�9b1!�_/��ٻ?��GPPP�A!7w�u�rGPf�����ؐ��QfN���e"�vN� �wvoޯ��7���_޼[��}��a�l@��.��8��r�`P1����Tl~Z��,���"D���/��r���u�]l?=�#K��m��3�7[\������v�₳�A6�+����10���]��ٝ��lL�c1F`��,5xL<Gh}
!�=�o~��~�c¸�J�Ҝ�%�D+���r�Y��߬�P�vX��[����Gp���WS��*a�sjcʞ����6G=Ly*�<�^�b��U�Xn��͔��4F�=BJ'�eA��1��{ȡ�����z�]]�#����,�!��;�����zq{ �N���gq�������2��;������g.���d_s7��bg?~^n>������
���$<�uٮ|��2��R��x
�s�\�,|toz'�u�����Yn�cx���?�ǂ���aP��m��b'�o��D�����ɤ��|�p�3��x>���nW���Q����^G�{�N��qN؆����(�P�jA��м�����.>\���
���19>��Q[)r���B�gI�O��3��Yv��n�^m��9?s6�XҤ�؇x�3"Cs���A���ǯ�ﶛ�ۙF��zyw�ٖ�8Z����3Kr~�r��'*�8w�E�!8:�rjV�|<1�2�l���H�8��@�V����9�6����������r*�1J a�n�{����P�շ�"�ܯέ�� bX��.�1 K��#]���v�B����_h�,xR�1ë��_��2 M�3��ZvR�$ע�.!�<p)�X\b�ׂ���0�ؒF����`~K�Ut&���2�]6��-f�h�Xח(9�2]i�����<
��TYC��w��W��V�8��g�|.��a4�."��4e�K����v���08$��D�.z���5_m$��i�2�h�@��%�;����6I�W����9H��!wj�:��ay�Z���X�UP�E�ZH�, ����v���]���]m����E"�&�R�����O��헫��7��QN��TISPBO_�f�l������k��]��:o	$ Q�(aWZ�����P���Xgl	���(���3�%�$�_g���w�6��z+A2�5=ss�dC�%��E�����'�7wAW I�>�.c˱����jq��Ț�@��wѯ��c���쫭�z`���>���1���y��,GT���W��8��%�����)ҘB����v#[
əC�B�Pk��U�p@h�c��WsX�k4 )����<����J��E�S�gPX�'��j�x�GҼ�Qv\�p�ո^N�`�j+e%��3��]0V[*+q_�(H�X��&�q��܂� ��ZY�K}(a:쫶�rd+r
zϞs���ȥ����ږg�q��#b�9�9��um�XO�٪\23'E�'�qX��ίC���Oe%C�J�0p-y�h9�Fr���j{��fV���%o9�)(��\r�+pΒ�kE���R�?��ʡ��R�t�����C��ʣ*�K�/�C�-UІL�e�LEc*m���W���Hl����6�zwXi��R���c��qL�Y�V�\�*Y���L�����**��B�}�>8֡g�@+j=9�X�ʺ	��n|���h���ʨV)re� �
X�>Uն@��@�s�XY�`}��f�:	Bm�����4��P�6�-8�1c`��`��BS6�^
��ު��B
@R[�9D�<+t�J*Z��Sm&0L���a%�������[M�be�Co��^��D���P�� �V�����F)�'��"���Z1��*�%��Jb���g��*Q%K�I-#cm�ȆJ�8�MI��ge��֩\�D�����=ܰ�*�9%�k�u��6W����CĔ|�re�b���ŕ���Y���Td�v�9]���{�
����c����Ri�i�R�U�p�.�%oPW
�m=*O�L)R��V�*���|:��1���*}�L2��o�����d�b���8�����P@�/��h��c�V"N�Z�O�7���'B��{kz%�]F6T��3@���jQ�1��d��t�<�������_�e�j�**I�1�o%��T�R�v ��?M�G��푂�O��5u=h��Q1�a�GJ���Th���QRL���D�T�+PQD&W{Vd� 4�N^3*S��*]Wbȱ{�Q�*X*�w
���v΀���׋��1��!̜��i��S�_�<����4�uL��lB����k���q��}w{ Ҷ� vC������c��i�w�G]I�v�/���U٠��X��pZ.u�)������λ=SQi��S�K{��\N.��n�#���h���߯�%��kqws�7&��4F��ŭ��u�~h���|��|v����Z��'J��T�;�&����Qn�EZ*�ԿD�ؼ��^>>*�Lt6�!:�mE�	�k��:5ooW�ǳHV$zѮ�"c߄�E���fu��d�;�$�w�B���ޒAMʮ�E+}�%Y��W��a��]ޜF�:��X %����L��s���v�rw���Q������hU���)����N��he@�.������ܼS�4���d/D+=3�RwՈ��|)d��
�����jDJ1�w�qJg��kX�9v�
&��X�n:#�Ĵ��=`)���$�����A���f���K��e��^�@���w(��ho�aw<�N�d�!Z}P.����<�؞�nX��֋IaG�{��E\ n�OP�L�Ǧ��hv��%�+��i����̟Iy���>\�;�Gǃ�r<~�ث��1������Na[	��;)��eLO��)8� }�'��d�{���w��Ho��M���@���d+#-<�D�Կ�'�S�I+����+�/Liv�#��w�$��g|��ef�$ii����m�Kr܍��o���bz;�I��J�*ȸ:�H*��f��\B�o�]^og�7��s�#�$��Y���<�p��!��D�Dk|�
�]�f�\������F���t%>C�qv�/9S�O5�q�v��}	sdQ^D��T�$�ᾏ�R����⼥�s�s�S�R��g<67�����V�@���w>�{th1��O�dk�io
��"��1�>'&�5y���R:P�N*���1��Y�|Be�v�YLU��EB�gv�F�?�bͣ��T�.Z`�.
)>=�TI^���r8��jR��s���cJn�Y����Z�I�*�E}U|��A2���ߧ)Vv��W����ͷw7�������z��!XɡFI�t%1���j���^�'X���V����C}�r@$햼{|��|�`���T��҇I��j�&Q�|v��=%궓�H��[ޝ��Շ/_��ͤ��GqO���d����;�qj֋�'�AK"}	߭Mn֓C�f.�!!I>x8=s����4��m�zM��`��o&��c�Y�e3wͻ%(-n�8z���Wӱ�a�҂�_@��f���ⳅ���5o�T�O	��;D�&.y|~u���  �Ձ/��x�vC{���<��
F�h}�RA�I����?�_|���4      �   �   x�e��n� E���L��k�/�"F���`��C�~N#��}����^[#M�F��p��� n�J�7���2�v�B���/dD�1����mF�sI�̘.�%���'J��"�����p��1���pϔhZ��'�Xۻ��]���c�Z��Ԣn�����D���36ݧ�P���J� jD���q�٨��^}]�or7���;�ۆ�J��;l�j�5��bY
� ��C���> ��ߦ!      �   <  x���͒�0���)��Z�f��gI�J�/)�"����G8H�Ǿp �c��TǾ����2�PB��]k�TH߉x���� b���T�?P��ʎ�㹈B��f�쩭��*FA�*���4�9M�/ƻ��t&M�{:mcW
g_0t�$���X����س9~��1����Ba�Jܹ�y������ζn����,v��Mt�ηu�`´��4�;���h� �3L�acH�ںy�`"�Q�M��L�����UR0���� �t±�.��*�P@"y�{�}1�����{��:s���y�O��'{��p��޴.{~P�T�5�T�F=3] չ��
L���M�x�3�L;�~^$i�4�D!���3��.7U}`�R@FVޅ1�O��D*Dѩ*��#O�*�����*�-���/H5��sH�R��o&��HJ�)�pPv%�)��~����f<o�,r\˙	�_���B�#]���!r��d�'i����)➢�)*��SD���;
%����R�XS�EL�(��P�<p�O�,Yk�^QD
��Bo�
i���T�����n�����~      �   r  x����n�0 �s�����8����@�Q"�%@��`HR���7��}�JsiF��N쫴ݸ�/�9;���Y�R�U���m�����M�JL['9�F�*��#��c�~A(��DFN,͉zSE�kMi��x����u��a�Qe��*������19z����2[tVtY���w�I���/��Ю��|%Q[ev�?^����`��1AJ��p�q�Ce����)������:�yC�Fn$�e��s���@h�sĞ^��b��?��0��}�}�)/F�P՗VCK�k�b\����0xl��
�]: ?�
��p�s��s�IImJ�?�� [� �����w�C.���߿�l6�<I;      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   p  x��V�n�F��}�#.J#y�l`�(i$Z$	Ҕ�J��c{�xƝ�,�ћ�O���x7�P�
k{|��o��]���fv:��_�<	Cv�������-?�*,�S�Y�j���7R��l�D�+Ӓ����T�#����gM{�*���J�����;S�����1)C�g�V$�N҅����R���s�
1Hj��7�z,��ݚ~���g�6�Dӹ�Ŀ��~y�h8�;%��H'�b�n�^��4�CK�.%E��d� �G
�ʨt�F�Vh�6�2~yQ�H/R��'�'e(�nU�ȫ~В�h���܁�&����N�ON�O����!s����.1��L|� xF��ZA�0j�:��!�Σ3����!�K:\�F����	�n]H��O�g*�[Cڟ�*��;�N��NL%_y�&���w��2�XeP��fش��{�]��r���;�=�rm����eb"��mj&���FV=ZT�g��{�SpGl�$+�F�(����u��or�	Z����0R���{N�在x���&Yjwt�=,���&=�$�FU����$�e�,)�ֹXuP���ٕ�91R_��Lឱt�u���#|���;�
F��[隨�,��ѐ���"y ج��W~_�@]̮͟$��>C�ɇQ�TV[��k���'��q�~r�����[{7N��X��0����IQ�e�4ڈl��TZ�]i��5ؾ''s�z��0��IQ�ʃ��F�%�(�U�6��(�Ux�U�P��w��%�>-҆�{(�˘�h�ݲ����;��h��"�fi���{�����v6Ba��+�=o1❧J�eJV�5��g�fšm���ܿ�a'�=6㻕�	�d���//6�+PYy!6�H�}�Θ�o�$쵱��g/�oX#/z��y/K�Hw�����숥���������	ܕ��Q�}�ΊǄ���I�e�,	�W��[0J'��p����u��۷q�ϲ��v�ZmK�5.��:��U�"���+S�Xsyn��҇E���!G\�0�µxB2�I������-�gz�2�.�M�LXP�M<GB)�0l��%�1�F����h[�ŧ�KTlA�W�-�q'�zqk�����=��}\��:���z��)y��O�)��H��a�K��HF�}
Z��4 ̉ϗ5��TI4L���%����)�p�Ѩ w���6 ]>�R��
�ʔHr4�D��
c����K׼Ce�CY�`\����.�>L�w/>���a%��<���Z����w� ����yY�/��w��yuN�o��Qѯ�{2R(r���'G����"�[trձe"�������-ڟQU�Y���8h;'�u^A��"��O��a�a������|>��'ڏ            x��=is7���_��kCiMQ"uY��*EvbmY���d+�\CH"�+�I�_���`RTdK�-%qL@�/4��~녗y��<�I>�D�z�<*�4����,������&��>��??����oq��^Ğzl��ɳ�,�9�ޞ
����Go����<q���<ec�TF"Ix&Y.E4ez<l'�n{f�_Ņ���D�E�')�� �X��q���NROBǑ/BeyX�zy*d�]���l�E ��,�q������ ��&y
#F �e^�a���˧9�n/� �3���9LIDO}�K���9�o�d$F<DH��g=vF��� ���i�F�9�æ�w!|�	o�C=v9s�}È��<�R 00�S�=��/∏q5� pHa��r��Q 6���1��L���I�1/�Y�a�H}F�nJ�8�^�e�����ov�����������7h�C/c�<���>����z�oh�J����^�S1�cղ�� �w&������ �8)|묭ޕT��Z��/}������� �wf2�[?q���	{7�f1�G�'3�ؔG ���&�%gI���&�i�M9�f�(�SS@^pws��9�b6�E�3/��/"�q0ݍ�9cE��5d]�-Iy~�d���(�j��<ʼ+�s�9ͻN�]������;@}j'��/��3�!�^�d� <��SM�(�f#�݌;#�0�]r��3�*4 `�"������)�H 9Ef&q�)�OR�q9��$(�S�(k�:�Ԙ��B{���5��)�9R�-�R�:��U�#)�/�x&�3���2�٥'3����,�|#��8�v���<�L��P�V@:S�y�s������r�a�ϩ��h5�EUO��`8�&��������3��ƈgH���8�Ћ  G.Ӕ{R �`�K�gZ4_83x�tO?� ���]x=Ƴq�j����g�(F%Z
�)!���④L5m=t?���/B&T��8���%ٹ�&J��
�'<Ř�j3�.��3��Z�2�x_V]�w����­��� �>2d�
���ٰ@4m4�3�����G_ bgKE�A�%,�E�_m���.�1{{N]*�)W%P�����{�p�M6w��416Y���Ү2)]Xe�B*	6]���@�ٖ�ӕ��C�D�� ���^
�S9�"������J�a?L���L�#��0�5�#o�e���Qu�oG�
l�M����wN��Z�k�R�W��e�K4V]�˺�i%.#�
M	��H��2��E��Pmƭ�)�u���	�2@_�2Y��)^P�̯��]XK�b��Ƞ_0�4ܔg����5���p���];���N���L��uI5VdbaB(�Qm?�˩ˋ�1���v-�b��e!��o�����1���M�g!��J�Ht�<���"��k�<&6��VI=4ز׆���T���Tpɸ�N@:ud�	�$��=f!���,6����"��f�Ȥ�sX��iq�&��i���ZB�e=`?��BZ;a�c	������Pɮ�H�@��B��A�J����bk�J$r�u	W����
@`M�:�H�x�G$�'�2�@dI.�8�Q��3/�/����#�}^`�q�ʡG+�Bu���4��bd\JCՃ_��cʐI��t���������}r���'��A;-��~iZ�z��]Y�q��4��qG2l�p�4��,c=?����x(ʽ9� �p�+������i�]�[]�:��:."�E�f�|�N�'F,}�ctw�b�R���7M<j�e��*U��z�ǳ(�)*��/~<�cl��,
@Ɉk�YZ�ߖZ�N;ZЪ�,5*h���Alq���*�3�Loi)㵕�]�����S0��ӑ�ڒӸZN����w �a���]y������_���ǧ�xNx��M�����4��Fq����ǝH�߼�HZ��G���{�q�L4����剳�Q.���z��-@G��d䎣q�	���
���`c��� z*�@tR���i��}����(��_P*��Qp�2�EO�wS���d��~�e��u�i ¾���Ε%.�1����6Ed z�1�}����0g�7+�03�\��`����zD�U"*�{N\�s�Q�w0�R�m���.g<ZD�fw�\y��Tʟ?�a�(島�����������3��c�1b���ؐ�58���͟n#��/"k&B��8l���g���t���o�e�������z�w���������ന�l�$	����.=�i޹�g���#ٌ�VOuK0!y n$x��KıAn�v�y01��~�i�T�D�A?���j��*�i�S]�����Lr1��7�	�3,U3�_��S�eW�> ���KD����%��-f��!n*.�5l΃�O�ֲ��A_��2N} ��n��%Iz�����M�؏��� �S����~C�8D�xܺ����l�P�դf�K��bC��KQ`���E$����,l�젭ld$Բ1r�*�7�����s	�Gf�?k[�1�3�0��6��]�g����n��;�?�a79������"g]�I�`qq%j�@���e�z"�w�M�	�Ǵ�A�Dx�ڛ��&��]�;�f?<�?�v�C�����<S��a�ӓj9���6�k|�`(B���m{�1^C+��m��a��]%���Ò�O��`kN�L
�yBZ��Pu@�r��\@�R��F
'F�'���'��(�W���%z�[���A��~������o^�}�F���>�o�w��z�g���c`��;�mG�z�i��� �u�CL#��*�k�����>�k�u�A*)>#�ya�Cʥ�r��)#�V"`���#ܜg���y��f��$� ��{�B�!.seѢ�(u;�K�57pڞ��©��>Q��w�9%�b���
Dč��p��n$F�V׏7o&ZMltN��u���0�i�]�v������/�a�9��l��R�e��uP���|��l���~��q��-�T�d��*�ր�6v��������7�P��aͶ������x�.�:h~HG�6px�ã)aD6�� IPY���oِ����>WC$�=��S��?x�)ac�`!�Q���3�L>�c/�
��M����+扇��,�1�}5�+�"hG�ơ�<�cL�Z�)RC��3>��R�R7_����
�"��ǏmE0�@� M��)$���ꤝ2x[�a�
t�&{ؤ2BG��iW�8K�/d�^C���gX{��n�:W���n���-U��2v^!��j����7��%;J��Jsq�����o}HAR)�+�yj�se�"J�6��I'���6r/�4c4�I�������튡'�{/ac��`�E<����=��Alc�:�dU�Y���w�MJ�,1�S��cmc+g\Lgٰ��\�p)�l6�������xް����(β8�!�Z��Q�����e{��,���Z��F�*���0��(���W
�flS�uuQ+=Qx���A�Z��N�%�̀����5�}�«;���H���H�d��;�ݝ�4����;i�?(��i�L�77���ru�vw��F���H�;i��F��v#��QiT�'�w6Ճ;���Fzrg#ݝBߡ��;�x[����������Ve�R�0��i�Շ����j���LS2`�эR�a�z��H�Kup9=g|������^`6h�ёN	�ٺ����g������Sѯ>V�=�/nC�x3	b/�#e
v�yu�F����w�	sJ�k �_۸-�ѵO,[ ��հݥ��Χ���2�`1�a���-�	�p̍N�0����� 1p �F�Cb� �F�?�sڻ�&ō�a��S:Zp8�(	9��ozھ����6{�4��M�0$Ǔ3�AA����"�d&�Mu���\�COD�u�.�����{�Pe��a���3(}�t��Q    �Ruh�$5��|�J�L�k����b��-j�}@ƶ�^�suzI�UO�ԈQ�kn�+)D_?���%��H�)�g���'a��0�z��Fy�<�Q���}���0��!��Oy��<�S�)��S�F9�Wٖ�i4S
�c\�𩷂qm�b�_�"�`5��V�U#X�y�P5aj��	w#TM��j��U�Q�P5���"��j��k���j\����~eS�_�{��{�&^c�� тn� ��v-��#~���ޘVa�J�A� ��^% �ע���j8T�?sNw���R��oG+���YO7���.��2��HeVG���W�ª��L4<#�0��B����d}	��9K;�'�V5�:��0v��/=�mޒo�3��-㜽i!U��R��MF�T��a�b�;������`r/�셊"JU� ѽ5]U����/jn��1'R�+'C@p���!���3�_�>X��5h��\I��ej�H'�Y+I�E�1�J���Ӆ�� ���ûǛ�@w1]�gtk��cӹ b��T�Db�.W�x�?`0��M�� ��|\<�+-���d3?ko��޶�03�<�� ����Z.tb�g�\�dڦ^�]S�2�oc���u�u{��,�?���\WX�A�O�X��C��Ώ0p���9�Q0y���%��I��C�w�����:�X�tzl.�)�#�DXGH�p��xBW��e.d�ʀP�>sѸ�8c�1s��n�P��#�K����$��)��R���c��[:�mڪBL�b��+�֟W��Fbt��\U���(��:��g�;�@�9�t~R=T*76Z��N&�a[�0���ވ�+���w�3�1��=b��[�Y����t����̘�v�ߨ!��\��ڱ�0�t�<^-C�1aސ���<��@&عn�}������}p��X�e������ꕮy$T� ��н����$�E�9VX�����]��R�u�K�ZrB<+&�BZʺu��"5�bʙ��/���t���]1�KB�ǯ�����?Xw�$T�x�N6N6��'� 2�>��jQ��ߪU���\) �Y�F�V,^w6�n�|���3���&�k�i|n3����xԛn����A|�+W�Gw��Yqpot(S��9 }��t�Q�yViqZ?]��*7����[��U*�m�Q��3E}�������K[.�B����;c���e@0�o��~�����:����T_��m�<��sm0D����P��Wjk������7��B��E�4Y��4]�s����K������3g{���-C+Z6��j io����-�t~rz��' ��Se�H���Wvs��PA�;q��q�sI��ݓ[X�Z�DF����C��f;J�ڠ���F�F`[����f��N��p��S�(��8c}S��U1ݶ:�2�� ����B��4u��!gk�Č�"1c�Č8�$�J���#�.?��~�Zb�4�A�J���Q��p�Dύ`��O5۾�� �+�%��F�%� z���]b��D�s�Y*�=A��ב\Ǌ\�^#r�#JG;�H.O��?kD��CD�?|ͣ���c�C/Tщ��V:P�����>^��L�ݱ�F�X�i�ג<ű^, nN�X/�Қ�6�:��ZT=l�������]�U���q`���:��R�:WT>���;�pO�9V���b����vdk�3o��t�1U�ӎG�
�f��DZ�2,i]��!M�5_t���S�$�e�l��SOm<'�8.V�8�M��D��R��3��s�Q��	;�ܙ��[��q�(�@��'�V�ڪ�6=-�	m�3�"t[�-h�gU��=�з�hj�;{�g�N���N�6)�ݨ��P�9V�wW��-PMUG@�Ʃ���R�]�;f2��T�S�k�P;CPc0���^�c�:Y<��lq����U��Nfy����m��E�h����Omc4��p�V��ś��:p�;m%�x4���<�db����-�ȯ�A�m�Մ�B�K�����$�U�8F�o��;�*|ܐ��_�o�4�Q��w�G��'w})�Ѭ��+n���~C#�ta��~�<Z���A�	>��f��Iw�LɖS��aD>�Q�<2(����o��\s��'d�χ���n��K"<[䆨U�Ml/I+)��u�I��c"�fĲX���'l%���ҟ�j�A�e��>���b5\:L�W�z*[{���k���:��+:�F����_�҈D�췧�N��{�/�ʔ�qI���{7�4)�W$4h�7����8х��BX|>�� 3w��ū�uܫ��{�m�|,޿{�uV��9ַ�$nh���p	���s̩�|`?��j�<�]G�}q��ǻ-����3O�w�GX�W��ԋ�����gB�S�{c���E�"� ��V��۠��؟�S*�i�rU����I������ʾEk4}a�C�կK@CTY�V][?1�|�S!a(W����W~{�޾~������-1]K��=p�	r�q� �������#lw�:.
0�@��7U:,��I˦x`�j��%m�{�s%�?bY�-�����:�a��?0oo���X�1�*��m�g���5��`�Jl��}8a��\݉�	J6�fQjby����N}��>�{GA�e�ӆ�wJ^���Jz�6j�tׁ�eav��=RF���e�v}�Wbtsc�m:�J�{e��KD����#�����3��7�EUq�@�elo���G���X����^Y-�@dk���_$��B�6T��:���x:(�����(�9ݻ6#�I�خ����t8n���:�ɽ�G�f*
Oh��R��.���rz1�ÙȂ5��U�.�Ӡ���uD�M%hc���%���7zm����f������x�c��y5�tw��x��)�u�&J���MW��V�&EX#v�۟9���TLvXi��)9�D�^�w�
�L�{^�׍�Z���|A�	�������3���5�9)�q�ju���*t����L�{V�uc�WQ[���_�;w;������H�d�d��-�� �a|aҳe⍹�S��ܽ�=����+���z6�
����4�߈�1��毾,E-iW�vJ�����~�_��/
�]�Df��I�+l��)�q�����̆{��t�~�Q$�F�E��D��+�F��v��y_����ly��(l����S��f#��)��"ъ�A���X��*�N�����	hv��b6^\#N;��{�؄���U�I�n�2�jBe�M����S�����b�	��4ha��B8��wsC�(�m�[�%za~~���.�ϭ����Kr�փp���9�_�3UH��`Z?OTk+rFNJR�Fg���.����F�AD�{5�WuB�2oO�ae/XG�z��R���6~o3��]p�<��)-Qea�Vb��
�!��(y*ƬK/��:��ee������ֿ7iӬN4%���:ڼ�h�Ín��H�(�=)�
�/Jnc=��V��Q5f��L���C[�C�=�Iѵ�R��v�#��d+��IX��R���UJ��$�Rz`#����%8:��p:���X }��P�������ނX+PHj��l�s9�Jˊť
�0���K�5�9��}��0��SE�B�V���q��Ѝ3E�*���)Ud�*b�w����������Ϫ ���S�FQ���9J>U�3��K~���T�����t��e�?�&�='PE1"�������eWr�Bb�+J)�����V'����[w��q��NI��3��u�|�p���,7�jEeAuj�j���BZ �y�Z�@F��+�u�����[�B�Dz���� b`��U���2�?�����D�O�i�U�HL��F�A4�`�SuѢ��1vh>�La[}[���N�$G-��%�揲G�G�e�?���^�o�����5��#5p���r��"�p�}�ZO�.�POOZǁ�dc�E�E��QK�jh���!̽tE��xY�~��ǹ_ov��� �M捓<\�n����1��œe]�5�Ѳ��9�cT��.�\+���Cu^'�:�+	5^&R}-�� �  �IK��U3��^IH��#M�ƫH׊
v����W�j�/��Ѽt���`��
.�oG��]CŒ�,�i?���Vъ]C�El���,�"&P���02^N�۹��Ԡ�zi�(+�����E+�
� �Vb�j��:���7^�W����Z�!֍EYQ=�6(5>l�����S�|%*����,�Q�R=^uNހ�"S=��7a�������X�u���+�j{�:πS^��Հ�";O��7��"��Z8���Y&��� �Z���h(t=��8N춎E��B��.�ټ.�`;�k�u��H,W4j��:W2��XP�q܂�	�<�ș�T�[(��I+��V����`[��`�uƽh5P�>ȧ��F� tA�ޠX��4��J''"XѨ�{y��:�.�	�b��f��|�}��w���m�          �  x���[o�6���_1�C��nd��d�`7I7�[_(ib��H����=�Ŗ�C �3�G��4l�7�%���#^MR{khe�QŖ���X�I6.�Te,9�I��T��>X�l�+�^+���W��50=K-��bp)k� -�"Y�:�&x�σ�JBI�yZ+��ָ��m�D�E�7FsA�	a�KP�*n�JIG��YǤW(���	J���+v�T<�5�x�iY����B�E!�D���Wh`H�Z(vA��L)����
N��s��������E�H���b1;:�e���lT�,͒�=mn�Sſ�NƏYRz��e��
y�f�����WQ�&l�ə`���_�of���\N+��f�׬��feE]ǂ*�WA�`J\��|C���WWY�K�O��&�y���Tvq����+�;M(��z[Tt�Q<z��C �FP�tmj�[z,��;
㿅�ҵ�À�g��,i�����H��.=z�F�n5u�$��^���vľd����hx��VIh�	�����#Xk�.;����N���>}��3/M���|���w6"Z���	�'�~��M�p�0�q��*O�t{g�����������=���j�A}J�m�=¢�:�y|r��2Z�Pi�l˾�M_oYx7���$�w9�X�c�ʜ�:O��X�id�	��k[�� � 6��ʷyJjP�s��htsOF�u>~ܶW�	��8�6q�*tF[y��n���[����]���?nߢ�a�����C���?�Z����Ə[�*�d�ـ�NDF30�2��,= 7��~��#�$���,���K�{�����P�Q�忂��[��A��~oQ���C�����~�2�n&�x�Amu��"�u��?��V}�Y&:��D��2�o?���F�}i���fK���ē^�W���i�||H�3�g�M"����[��|�C.!]�Ӳ��y�����Ƌ            x������ � �            x������ � �     