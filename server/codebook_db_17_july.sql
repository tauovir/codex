PGDMP         /                z            codebook_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       in_house          postgres    false    8    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE in_house.auth_group_id_seq OWNED BY in_house.auth_group.id;
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
       in_house          postgres    false    8    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE in_house.auth_group_permissions_id_seq OWNED BY in_house.auth_group_permissions.id;
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
       in_house          postgres    false    210    8            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.auth_user_groups_id_seq OWNED BY in_house.auth_user_groups.id;
          in_house          postgres    false    211            �            1259    16412    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE in_house.auth_user_id_seq;
       in_house          postgres    false    8    209            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE in_house.auth_user_id_seq OWNED BY in_house.auth_user.id;
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
       in_house          postgres    false    217    8            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.django_content_type_id_seq OWNED BY in_house.django_content_type.id;
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
       in_house         heap    postgres    false    8                        1259    16835    notes_dm    TABLE     �   CREATE TABLE in_house.notes_dm (
    name character varying(200) NOT NULL,
    description text NOT NULL,
    created_at date NOT NULL,
    id integer NOT NULL
);
    DROP TABLE in_house.notes_dm;
       in_house         heap    postgres    false    8                       1259    16841    notes_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.notes_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE in_house.notes_dm_id_seq;
       in_house          postgres    false    8    256                        0    0    notes_dm_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE in_house.notes_dm_id_seq OWNED BY in_house.notes_dm.id;
          in_house          postgres    false    257            �            1259    16447    resume_certificates    TABLE     v  CREATE TABLE in_house.resume_certificates (
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
       in_house          postgres    false    222    8                       0    0    resume_certificates_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_certificates_id_seq OWNED BY in_house.resume_certificates.id;
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
       in_house          postgres    false    8    224                       0    0    resume_educations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_educations_id_seq OWNED BY in_house.resume_educations.id;
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
       in_house          postgres    false    226    8                       0    0    resume_employment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_employment_id_seq OWNED BY in_house.resume_employment.id;
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
       in_house          postgres    false    228    8                       0    0 "   resume_language_proficiency_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE in_house.resume_language_proficiency_id_seq OWNED BY in_house.resume_language_proficiency.id;
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
       in_house          postgres    false    230    8                       0    0    resume_languages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.resume_languages_id_seq OWNED BY in_house.resume_languages.id;
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
       in_house          postgres    false    8    232                       0    0    resume_profile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.resume_profile_id_seq OWNED BY in_house.resume_profile.id;
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
       in_house          postgres    false    8    234                       0    0    resume_projects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.resume_projects_id_seq OWNED BY in_house.resume_projects.id;
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
       in_house          postgres    false    8    236                       0    0 !   resume_projects_technology_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_projects_technology_id_seq OWNED BY in_house.resume_projects_technology.id;
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
       in_house          postgres    false    238    8            	           0    0    resume_technologies_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_technologies_id_seq OWNED BY in_house.resume_technologies.id;
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
       in_house          postgres    false    8    240            
           0    0 !   resume_technology_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_technology_category_id_seq OWNED BY in_house.resume_technology_category.id;
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
       in_house          postgres    false    8    242                       0    0    resume_user_interest_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_interest_id_seq OWNED BY in_house.resume_user_interest.id;
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
       in_house          postgres    false    244    8                       0    0    resume_user_language_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_language_id_seq OWNED BY in_house.resume_user_language.id;
          in_house          postgres    false    245            �            1259    16525    subject_tbl_dm    TABLE     r  CREATE TABLE in_house.subject_tbl_dm (
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
       in_house         heap    postgres    false    8            �            1259    16531    subject_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.subject_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.subject_tbl_dm_id_seq;
       in_house          postgres    false    8    246                       0    0    subject_tbl_dm_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.subject_tbl_dm_id_seq OWNED BY in_house.subject_tbl_dm.id;
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
       in_house          postgres    false    248    8                       0    0    topic_section_tbl_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.topic_section_tbl_id_seq OWNED BY in_house.topic_section_tbl.id;
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
       in_house          postgres    false    250    8                       0    0    topics_tbl_dm_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE in_house.topics_tbl_dm_id_seq OWNED BY in_house.topics_tbl_dm.id;
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
       in_house          postgres    false    252    8                       0    0    tutorials_postdetail_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.tutorials_postdetail_id_seq OWNED BY in_house.tutorials_postdetail.id;
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
       in_house          postgres    false    254    8                       0    0    tutorials_posts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.tutorials_posts_id_seq OWNED BY in_house.tutorials_posts.id;
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
       in_house          postgres    false    220    219            �           2604    16843    notes_dm id    DEFAULT     n   ALTER TABLE ONLY in_house.notes_dm ALTER COLUMN id SET DEFAULT nextval('in_house.notes_dm_id_seq'::regclass);
 <   ALTER TABLE in_house.notes_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    257    256            �           2604    16574    resume_certificates id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_certificates ALTER COLUMN id SET DEFAULT nextval('in_house.resume_certificates_id_seq'::regclass);
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
    in_house          postgres    false    203   #i      �          0    16391    auth_group_permissions 
   TABLE DATA           O   COPY in_house.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    in_house          postgres    false    205   @i      �          0    16396    auth_permission 
   TABLE DATA           P   COPY in_house.auth_permission (id, name, content_type_id, codename) FROM stdin;
    in_house          postgres    false    207   ]i      �          0    16401 	   auth_user 
   TABLE DATA           �   COPY in_house.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    in_house          postgres    false    209   
m      �          0    16407    auth_user_groups 
   TABLE DATA           C   COPY in_house.auth_user_groups (id, user_id, group_id) FROM stdin;
    in_house          postgres    false    210   1n      �          0    16414    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    213   Nn      �          0    16419    django_admin_log 
   TABLE DATA           �   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    215   �n      �          0    16428    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    217   [�      �          0    16433    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    219   ^�      �          0    16441    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    221   ��      �          0    16835    notes_dm 
   TABLE DATA           G   COPY in_house.notes_dm (name, description, created_at, id) FROM stdin;
    in_house          postgres    false    256   x�      �          0    16447    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    222   R�      �          0    16455    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    224   o�      �          0    16465    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    226   ��      �          0    16473    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    228   ��      �          0    16478    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    230   Ɯ      �          0    16483    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    232   �      �          0    16491    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    234    �      �          0    16500    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    236   �      �          0    16505    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    238   :�      �          0    16510    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    240   W�      �          0    16515    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    242   t�      �          0    16520    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    244   ��      �          0    16525    subject_tbl_dm 
   TABLE DATA           �   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish, icon) FROM stdin;
    in_house          postgres    false    246   ��      �          0    16533    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    248   ��      �          0    16541    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    250   `      �          0    16549    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    252   �      �          0    16557    tutorials_posts 
   TABLE DATA           �   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    254                    0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    204                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    206                       0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 92, true);
          in_house          postgres    false    208                       0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    211                       0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 2, true);
          in_house          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 6, true);
          in_house          postgres    false    214                       0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 653, true);
          in_house          postgres    false    216                       0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.django_content_type_id_seq', 23, true);
          in_house          postgres    false    218                       0    0    django_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_migrations_id_seq', 31, true);
          in_house          postgres    false    220                       0    0    notes_dm_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('in_house.notes_dm_id_seq', 2, true);
          in_house          postgres    false    257                       0    0    resume_certificates_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_certificates_id_seq', 1, false);
          in_house          postgres    false    223                       0    0    resume_educations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_educations_id_seq', 1, false);
          in_house          postgres    false    225                       0    0    resume_employment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_employment_id_seq', 1, false);
          in_house          postgres    false    227                       0    0 "   resume_language_proficiency_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('in_house.resume_language_proficiency_id_seq', 1, false);
          in_house          postgres    false    229                        0    0    resume_languages_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.resume_languages_id_seq', 1, false);
          in_house          postgres    false    231            !           0    0    resume_profile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('in_house.resume_profile_id_seq', 1, false);
          in_house          postgres    false    233            "           0    0    resume_projects_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.resume_projects_id_seq', 1, false);
          in_house          postgres    false    235            #           0    0 !   resume_projects_technology_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_projects_technology_id_seq', 1, false);
          in_house          postgres    false    237            $           0    0    resume_technologies_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_technologies_id_seq', 1, false);
          in_house          postgres    false    239            %           0    0 !   resume_technology_category_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_technology_category_id_seq', 1, false);
          in_house          postgres    false    241            &           0    0    resume_user_interest_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_interest_id_seq', 1, false);
          in_house          postgres    false    243            '           0    0    resume_user_language_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_language_id_seq', 1, false);
          in_house          postgres    false    245            (           0    0    subject_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.subject_tbl_dm_id_seq', 7, true);
          in_house          postgres    false    247            )           0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 79, true);
          in_house          postgres    false    249            *           0    0    topics_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.topics_tbl_dm_id_seq', 29, true);
          in_house          postgres    false    251            +           0    0    tutorials_postdetail_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.tutorials_postdetail_id_seq', 1, false);
          in_house          postgres    false    253            ,           0    0    tutorials_posts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.tutorials_posts_id_seq', 1, false);
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
       in_house            postgres    false    221            $           2606    16845    notes_dm notes_dm_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY in_house.notes_dm
    ADD CONSTRAINT notes_dm_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY in_house.notes_dm DROP CONSTRAINT notes_dm_pkey;
       in_house            postgres    false    256            �           2606    16628 ,   resume_certificates resume_certificates_pkey 
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
       in_house            postgres    false    236                       2606    16646 ,   resume_technologies resume_technologies_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_pkey;
       in_house            postgres    false    238                       2606    16648 :   resume_technology_category resume_technology_category_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_technology_category
    ADD CONSTRAINT resume_technology_category_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_technology_category DROP CONSTRAINT resume_technology_category_pkey;
       in_house            postgres    false    240                       2606    16650 .   resume_user_interest resume_user_interest_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_pkey;
       in_house            postgres    false    242                       2606    16652 .   resume_user_language resume_user_language_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_pkey;
       in_house            postgres    false    244                       2606    16654 "   subject_tbl_dm subject_tbl_dm_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_pkey;
       in_house            postgres    false    246                       2606    16656 0   subject_tbl_dm subject_tbl_dm_slug_4a3612d0_uniq 
   CONSTRAINT     m   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq UNIQUE (slug);
 \   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq;
       in_house            postgres    false    246                       2606    16658 (   topic_section_tbl topic_section_tbl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_pkey;
       in_house            postgres    false    248                       2606    16660     topics_tbl_dm topics_tbl_dm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_pkey;
       in_house            postgres    false    250                       2606    16662 .   tutorials_postdetail tutorials_postdetail_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_pkey;
       in_house            postgres    false    252                        2606    16664 $   tutorials_posts tutorials_posts_pkey 
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
       in_house            postgres    false    234                        1259    16682 /   resume_projects_technology_projects_id_2f5c3d10    INDEX        CREATE INDEX resume_projects_technology_projects_id_2f5c3d10 ON in_house.resume_projects_technology USING btree (projects_id);
 E   DROP INDEX in_house.resume_projects_technology_projects_id_2f5c3d10;
       in_house            postgres    false    236                       1259    16683 3   resume_projects_technology_technologies_id_2ca2768d    INDEX     �   CREATE INDEX resume_projects_technology_technologies_id_2ca2768d ON in_house.resume_projects_technology USING btree (technologies_id);
 I   DROP INDEX in_house.resume_projects_technology_technologies_id_2ca2768d;
       in_house            postgres    false    236                       1259    16684 (   resume_technologies_category_id_147f19e0    INDEX     q   CREATE INDEX resume_technologies_category_id_147f19e0 ON in_house.resume_technologies USING btree (category_id);
 >   DROP INDEX in_house.resume_technologies_category_id_147f19e0;
       in_house            postgres    false    238            	           1259    16685 (   resume_user_interest_profile_id_8b18a7ed    INDEX     q   CREATE INDEX resume_user_interest_profile_id_8b18a7ed ON in_house.resume_user_interest USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_interest_profile_id_8b18a7ed;
       in_house            postgres    false    242            
           1259    16686 )   resume_user_language_language_id_baa88fad    INDEX     s   CREATE INDEX resume_user_language_language_id_baa88fad ON in_house.resume_user_language USING btree (language_id);
 ?   DROP INDEX in_house.resume_user_language_language_id_baa88fad;
       in_house            postgres    false    244                       1259    16687 3   resume_user_language_language_profiency_id_81ca799f    INDEX     �   CREATE INDEX resume_user_language_language_profiency_id_81ca799f ON in_house.resume_user_language USING btree (language_profiency_id);
 I   DROP INDEX in_house.resume_user_language_language_profiency_id_81ca799f;
       in_house            postgres    false    244                       1259    16688 (   resume_user_language_profile_id_a7cd4ed1    INDEX     q   CREATE INDEX resume_user_language_profile_id_a7cd4ed1 ON in_house.resume_user_language USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_language_profile_id_a7cd4ed1;
       in_house            postgres    false    244                       1259    16689 !   subject_tbl_dm_slug_4a3612d0_like    INDEX     r   CREATE INDEX subject_tbl_dm_slug_4a3612d0_like ON in_house.subject_tbl_dm USING btree (slug varchar_pattern_ops);
 7   DROP INDEX in_house.subject_tbl_dm_slug_4a3612d0_like;
       in_house            postgres    false    246                       1259    16690 #   topic_section_tbl_topic_id_887e7a85    INDEX     g   CREATE INDEX topic_section_tbl_topic_id_887e7a85 ON in_house.topic_section_tbl USING btree (topic_id);
 9   DROP INDEX in_house.topic_section_tbl_topic_id_887e7a85;
       in_house            postgres    false    248                       1259    16691    topics_tbl_dm_slug_6453441b    INDEX     W   CREATE INDEX topics_tbl_dm_slug_6453441b ON in_house.topics_tbl_dm USING btree (slug);
 1   DROP INDEX in_house.topics_tbl_dm_slug_6453441b;
       in_house            postgres    false    250                       1259    16692     topics_tbl_dm_slug_6453441b_like    INDEX     p   CREATE INDEX topics_tbl_dm_slug_6453441b_like ON in_house.topics_tbl_dm USING btree (slug varchar_pattern_ops);
 6   DROP INDEX in_house.topics_tbl_dm_slug_6453441b_like;
       in_house            postgres    false    250                       1259    16693 !   topics_tbl_dm_subject_id_9e370280    INDEX     c   CREATE INDEX topics_tbl_dm_subject_id_9e370280 ON in_house.topics_tbl_dm USING btree (subject_id);
 7   DROP INDEX in_house.topics_tbl_dm_subject_id_9e370280;
       in_house            postgres    false    250                       1259    16694 %   tutorials_postdetail_post_id_c1d277c1    INDEX     k   CREATE INDEX tutorials_postdetail_post_id_c1d277c1 ON in_house.tutorials_postdetail USING btree (post_id);
 ;   DROP INDEX in_house.tutorials_postdetail_post_id_c1d277c1;
       in_house            postgres    false    252            !           1259    16695    tutorials_posts_slug_8695bb50    INDEX     [   CREATE INDEX tutorials_posts_slug_8695bb50 ON in_house.tutorials_posts USING btree (slug);
 3   DROP INDEX in_house.tutorials_posts_slug_8695bb50;
       in_house            postgres    false    254            "           1259    16696 "   tutorials_posts_slug_8695bb50_like    INDEX     t   CREATE INDEX tutorials_posts_slug_8695bb50_like ON in_house.tutorials_posts USING btree (slug varchar_pattern_ops);
 8   DROP INDEX in_house.tutorials_posts_slug_8695bb50_like;
       in_house            postgres    false    254            %           2606    16697 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       in_house          postgres    false    205    3018    207            &           2606    16702 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       in_house          postgres    false    203    205    3007            '           2606    16707 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       in_house          postgres    false    3043    217    207            (           2606    16712 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       in_house          postgres    false    203    210    3007            )           2606    16717 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       in_house          postgres    false    209    3020    210            *           2606    16722 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       in_house          postgres    false    213    3018    207            +           2606    16727 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       in_house          postgres    false    209    3020    213            ,           2606    16732 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       in_house          postgres    false    3043    215    217            -           2606    16737 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       in_house          postgres    false    215    209    3020            .           2606    16742 P   resume_certificates resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id;
       in_house          postgres    false    232    222    3064            /           2606    16747 L   resume_educations resume_educations_profile_id_363d9f96_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id;
       in_house          postgres    false    224    3064    232            0           2606    16752 L   resume_employment resume_employment_profile_id_a7423269_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id;
       in_house          postgres    false    232    226    3064            1           2606    16757 N   resume_projects resume_projects_employment_id_574c5bf6_fk_resume_employment_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id FOREIGN KEY (employment_id) REFERENCES in_house.resume_employment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id;
       in_house          postgres    false    226    234    3057            2           2606    16762 Q   resume_projects_technology resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr FOREIGN KEY (projects_id) REFERENCES in_house.resume_projects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr;
       in_house          postgres    false    236    234    3067            3           2606    16767 U   resume_projects_technology resume_projects_tech_technologies_id_2ca2768d_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te FOREIGN KEY (technologies_id) REFERENCES in_house.resume_technologies(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te;
       in_house          postgres    false    236    238    3076            4           2606    16772 I   resume_technologies resume_technologies_category_id_147f19e0_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te FOREIGN KEY (category_id) REFERENCES in_house.resume_technology_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te;
       in_house          postgres    false    238    240    3078            5           2606    16777 R   resume_user_interest resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id;
       in_house          postgres    false    242    232    3064            6           2606    16782 K   resume_user_language resume_user_language_language_id_baa88fad_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la FOREIGN KEY (language_id) REFERENCES in_house.resume_languages(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la;
       in_house          postgres    false    244    230    3062            7           2606    16787 T   resume_user_language resume_user_language_language_profiency_i_81ca799f_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la FOREIGN KEY (language_profiency_id) REFERENCES in_house.resume_language_proficiency(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la;
       in_house          postgres    false    244    3060    228            8           2606    16792 R   resume_user_language resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id;
       in_house          postgres    false    244    232    3064            9           2606    16797 I   topic_section_tbl topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id;
       in_house          postgres    false    250    3096    248            :           2606    16802 D   topics_tbl_dm topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id FOREIGN KEY (subject_id) REFERENCES in_house.subject_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id;
       in_house          postgres    false    250    3088    246            ;           2606    16807 P   tutorials_postdetail tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.tutorials_postdetail
    ADD CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id FOREIGN KEY (post_id) REFERENCES in_house.tutorials_posts(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.tutorials_postdetail DROP CONSTRAINT tutorials_postdetail_post_id_c1d277c1_fk_tutorials_posts_id;
       in_house          postgres    false    252    254    3104            �      x������ � �      �      x������ � �      �   �  x�u����0���S�UL�s�U����*%n�*��Vy�{�3c�m������&1��e(.�k�����v�2�?���i�e ���p����v�w�p,V�oo�1h}$�;*~���fUcKx���-��͎7b�"��� ��'p��2\o��ݠ��d<����渰�
��
a%��yf�cr?�yQU0��9kSq�p&�8qw@�) jr���6�����KW�d"h��Ne��>箈f�.�!��(�&�����=?���:��]���rX�E�`��,3N9Hɹ�O|\����~�]o�`:ݱ+]�<��C%�o){�(o�,{����}�yS��ZQ��R��2W.+ͣf���j�h�5��¬�X�V�w�α��>��%�1���a�#�C���ވP�}��n����,�榧�+L3��+}�|������W/�Y��E��<��=1��1��=�ߔ��/�⡮D��
�3��oEP[&bi�JB=���U�������J�PW��������V�E��y%\B�������e�3}:��y����7P�}�N�/+Д��_e��0���F�cq E�9I)�Ŝst�(����1�_<w.�蓈�Dq�1ZdXҸȈ�Y`%7#)�����y\�Ƶ��t-����Y*D.s��
ʜ�%����~5������g]˅�9\E	�������W(�*J%m��g?��7E�%��F�L�ر�	�4v-�Y�$;�������2qm�݈L% �#Ҕ0�Q"��oĜU�!MWݴ�P]��(��9��+��nr\��iH�%���9,���*㶂��H�2�����L�y���q�0�a��\����Q`��DN�q�#9F�_��P���;�;fpk�Ϣ��� "z0kp��x����?�La      �     x�m�Mo�@��˯���@f�]H�[��U��RI�fZZ~}���\fo�y^d�Uo��GB\�::p}N���/M�z2���~H�C1��:ɰ7����أep��n��GA��a87@(:�<���(��������G���}�+(��uU��?�m�lRy\�RZ��3C�ו�NIYMƯ���*)qf壺�f�Ob�E�/�ܟĸ��~>�B=F .�`w����P��G�Vy˚ͦ��E�k�Pi��]D��:-�̨La_-�O�Гn����4���h      �      x������ � �      �   +   x�3�4��2��\�@�Ѐ�H�p�IS.3 i����� o�#      �      x��}K�9��9�W$����r�F3>����4P]�h�lf��T�*�"C5U3���f$=���=2<�)PJ��N3����0 ����oM�E�w�������v���������ӧݧ�������Ͽ��߁~<�t"P}������߾�' �!�����4)xq�;��	�s��!�p�* O���}��<�������g��_��������=R���&t`(�t%�W��d�c�D6�>~�N͖<NO���:�% L���s#�x��>��)jP��|���jФA�������C�Z�Q��q��`�zT;F��C"������?݌�a�Ο����WO�u
��-��E�T����×�f֑E�8/E��b���q���p�~~:<�A�� sk]G�a��O���8����-�.��0O��������aRod��(�Ò�D8M�b�֧/����t�S=6�!Xc6�9�s���>�iO�s�&_G�a��a{����c��m`4�Z�Y��|��~��m�{���#��:m*��{��#c���Q�v�a����7E��H��_�~���s�C�S8�ʂ:k��4t�g���ӭ�Ff��4~V�G�k��%vv@O_�>��q�16���_@��s9|8�wyq�.��C�ow�SX�n�>��n��;G����兜����48k_��X��Ɂ^.��h�p�����s-�·�߱�h�h�͇O�l�۟.�j
�� :��`�N3ٙ���<C@�Ro�!P ���������/L
��I#9Π-x�A��u|Y`6�/*�O������첻������j�PQvG����ࢂw�OYf�7�g6n���y>3���I�81g�G�,(/�~�nm��|�$��ws� ��Tf����3Ė��"��:/
�~�M��Y�/z�O��dC���>Y���aQ`�1���+�F��|�HvrPȬ^vb�ǩ� 9*d^uh:`��uȧ�ى�C��"�B&���-�y[�3c�Z��E�Z�ۺ��~sٸ��>��yP�MC2��� ^C�QlXQ���B�q�'�F^���~�Q!���F�e	׼���`�{o��c2����&����O3j���aW�%�g��c��l$0�<RP�HV�M����}�[����o�Eƚ���dSVv-?~�������`�ry2dҐ��v�-U��m�������q�?N��㍆A�wBgM�w�/���������ͷ_�⛃�
���<��?&���ŃF����ߤ�-�Cw���F(��:tT��2�:M
ƮE�����"���� ]K�xv�����O�E�쌏u5�B�
����Q�Bj0���![.�-��4zy8�����`���y5s����i"��oB � �!b�U�%pc�tθ��L*tr���q.4!�1;j6DtԄ�k� ��Z�\����	ء���_K(�Vg����2ʻ���}�	�Z����.��_\��Z�E�[�}�l�7�r�lB��g��;�3>E��4��QK1�����&k4�J1�+��!�f��Ʒ�<�634Av�ѳ��D��8&��>|$�f��"`o���衺Qk	��^ί�Qj��%�	�$Hm�q�1>K1 �6;Ar��5���Fb�P�9e؅s�\-�LPT��m��d���B��D�de76Mh� �E:ﱍŕ�3>��FM��-Ș��䮨�'`��� ��W�KQNϹ�KxN:ʝ>�:̏�ͣ�%<N�x� ��M�-yp�C����U?�<OC������F���'�:� ����,b���J-y��I"w���\2��$�#�@ 7S�nsmx��<V�[9�	В�j����������7W����:�Z���¢�Mכ��.�Ʃ�Ch)�Vk9M�T��Mׁ��9�2O�u��D9��d�����@L-����4�<Z8�e������V$1� 6�9�9�N��틣ֈʙn'FXh���i	B��WĦ<�x�CG�<օ��v�d��J����:�c��ׇ�-��ÿE|\��7≚'�sP��� )�7�.F�.7��@)_�3=��-��0,(�7��)K�o�i�(�F�ң�e�#6�#v [��)g)�oid�2���Bj;o^��;b-��02)�P��EGڦ�:����Q֒��k��Ic9���n�F��rB~S��_�m�ؖ�	`�n-6(l�r���R왰�nL���K��k��Q����r��k��
>r6,���ЭV<~̃9p�ܛqKx^�L@����_���D�C>�J�6�I�������<O��wU�ۣX�}LI����������*9�<�y��@l��4�q��e���4}T<(��lSȉBK�<9���l(��x��A��7Ě��;m����~������1�7Ɗ|����OW�O��A`�o��'�|_߇�}������X�����y�`,�������T�p�ĒU9�g�/U�>�0��/�=L��,;�"�9kb�ɘ�Z>�h�J��0��b���w��7� �7!/J�6�@��n�%���}�t/��p8�s9�Q?U���O_�g2� "L��6�u�bb���I3$��A�WB1�M�Ɋ6l>��힟���fx�r8h`ʮ���7����7a��$�.�������e{ؿ��4N��|�)�@`6�8�6ϬTe�`�`,�F���|�{>�>���&{��bI]~�/��5E�0,Pعϫ
�F��͹T������Pw��:2�z�	����ʦ��A�MY���6�n���9�\Ɓ�S����7t���b�Kv�,�sY�V��z�K ��R
ż�(��WVy��6�W~�_'�}˙�:����ڠ����Z#��y�9S��\�z�K�[�?���z��^P�H�)��ޕ�g���Z2��r�z��������Z@$$�D:ܼ��\�����Ym�I�Hʽa�D-0 ��x۫Y���az�+8ZV@R:R��s�d���:��I��x���ai��1~Y��K~�KW~-)rd�(
,�=��!iA7��k�3�W�aD��H�[|#�͏7�r����-	�nS��u���� �Xɱ�ZF��??|y:�%V g�F�=WZQQr(��x��������;�|><=�<�([t�+7,���w��Y��$$I�0���b��a����p�}j���-F�Wm=��u�9�IZJ\>�7��+11W�h�a2l�P4Ÿ���n��� ���YɌ6}9\��ޠ�d8|z��70�41&%\,��t^��h�q�d%�U�����)�FK����/EJ�H��I�=�`��mx�FK!�˛H�/�G��͇�a;�2��H�k�0K"F=H}�2�e����P`�0�#�v3���C�qy�Rga@�֠��I�uʞU=�ͷ��%8?R-X�7�Q�$��;�����LM��E�,��GJ���??~�������w��*ƣ��J��%���?~�I	���^�Z�(�5I��p(�}��_�f3��jbR��sD��e{���Rr�F,����.�=��S	ȉ�l�ÒD������/�F�5H��gp(bDq��u��0~\\ɂ.�6�%�����9��d�'Qf��v����9�O���޲�}��_bƏ����T"J=������ؗ]��~~? ��sL�T�)Jл���/W��s��Q��o��?_,pZ�/�=�x�������Y���Ǒ`%��dos�Psy�咖�h��w:�1�ŵJƻpZ�����o�|��~���k=& ��}��%@Z	��RA*��!�G�9ȡ�sX��
褠A���CP�'��vFC������t���R��j� 9/18�8��?
��rw�َ+G�}a���4r�b�J ����F�/��V ��[R�g�C���'��`����$YM:-�L�O��_�'0ͣ�yx���F���)ˡ�`J�v����%L3�j<�T��/��_r]�7�wb(*��"���$�m���1ү�7��_����3Uv`8�Ⱥ�C��7w����#^�3��mH�յ�=LF�A$ASr�J    y��W0b������}���V�<�Y�������8�pYd�<�"2lk�v�n>��F�p}p����ܪ��%6�J���Vf9�����٢b�|/��`�8�Ip5Ƃ�=!-�WІa
�F;�*&}���o[�%C\_��-�H�f���Ğ�TM�[��4v�-��`���(ې5e_Ncp��=@���
�T��6���%��
��1�_�����$������4x>�2I���F��{l���[�cF�
��i��s�O8���%�N����C���U���V�l0+��S��d�0�_,Z@]�&\p�`�h�=N��7��wr�ZL��'� Bѻ+��a���$Y=�����`�Xk��OxˮI��&gpz��D�S�WTj����rmֈ��`o��4�d�J1������bs�&����6%#M9�jYԶd^�Ilp����۲��h@��~a$����b>Tb��\.�=�V.ߵF�c��C�`�T��ɕ>[Êu�؂׎v�2�`j��p��N,�c�IVk�����d�����\bM]����gI?�93����6�����|��V�{�����ބ�w�<��ٗ��������jiziCa���+6O����A&���i�B�ɬ����"<b�Z����X��Zʆ�-=��c���V �����p18ip/т ��׏�k�|ћ�Z �11TK��R�j�T��NC|����iE2��A!1G��������W)���HgLi%�3��J���<r��jp��9���~��s������wc�|��(����$#��5�m8���h?�Tˢ��cp��w���x�l/��7�_IzF�eL���N�/\�)�l×��	�	A���X3��Z����@��#���|.��	��b�ϔb$�	@x�ڱ,������d���ll�P�t�B"�r����4A�L��6S�5A.V�Rϯ��٠�Y<E��	A�.���j�|��$��ǒHrrH���Z�f�,p`�4��o�	��i���L�1�}��E*��2M�cN4CSk���2���\��̍�xB���B��&� �8��7��c�]�x�#���A�P��P�g�������b�+�4�?��OJ��^�4���TbC>�1x_"u�܂�vVaK�G���P&��GA?*�:y����:�8�ߓ��a���ΑTA�V�&�Y
����gfӏ��%0�4/\2��e�������XJ%�ɜ\2Q�`��e�-�D#��i(Ǟy�}C�РQ4�N���+��khf<w�V��rㅵ��y�e �(�(A�(��e�=Ɇ�<>ġ�Х���r{4jh/�bd+�V"�	�dJ���e����Z�ul��:��Eb��<V@Gr���[=�IC�>Q =�:h2:�2ֱ74U�a	�U�y�ҽ!�̨�'A=�v	/ b�V
���t#-+�R)���v���hF�&V�x���@)��M;W��ѽF�ͣbBW��U�A���׏��d�УB��U��Y�eO��/!Hcq�x#��R���ʛ1�R�Z̴|��9���d�t��u��O%7���7WIX�U��|�- �W_b+[��O>�}�{���������1��β�U
]���')M8SO���1��z1X��5--I�f�1�+Qp��9L|0���E�Y�f�͇����v,Z8��\K-��79��\K�4a��z����]����esD�+�m^LK:b��A�m8��K2v�7 ۰h�P��OɿQ=�U�-䒊�����m�� Q���s��nE�S���u,\5ǿh��5�C2��T�YR�gcCT��J�s�ӄ�	�o��o=���~ �$,X�Wp�4�(���鱀�4���w�#�:Gv��5�����tS�@}�>�K�b�=tIZ�ZҐ(�����:���<�dN�C.�:4<�"���I~����`5B��HU��������|�y����m���v���hr��q��s��5��_�w�^H{�x�����с��w�!�Z��ѽ�g�t9	K)A�w	����!�e�cBލk��&�H��ͅ)ɛ ҆�k̛`bW��e��f�9q� A�]!E�"��V�{MjȒ4K�%'(�k�]������!4��X��rй񀚰�f�-S�	ߖ��D��4.e� �����KƊ�&Gw$]=�iCC���a�(�p�F4^��f��V�hD4M'3�j��+i��4qL�I�6SӅ�4M.=ʺ�WCv������7wO�O�o�����_x;�)��A�Ѡ1�|��5�����UD��hl=�kq_��T��V��l���L��%NSPn����"��J����(HS�b��I/�F^S�*�FtJ#�0����m�r Ť���B���*���>�������i�$�� Ix�qe��.7�qL�њ��w�5�5�vjK�=�y�w]Z3|���QS�E�`�FSY��]�\��T��L6��j�����S�.t�;Wv���$�I9�%,��8�����q%~�=8��r\.A�UۿgT�$u�:H>һ���9�(#���q��bK-� 7��8��[v1j����M)�s�n|�e����B)b+��]̡"��q���uћ%���&i�\� E{aA�%l^�����ޜڳ��Hb���-j6*z�%۳%�&!�Ia��d�Ռ����[���$j#�����X��B�Zø\b�%8��j�"%��L[�����ˍ�}2��a�h���zL:;Vϫ)�V(��E�ڗ�-�V(l�Isbw��������%8��um�����&3��FI:|�=�2��B
UiQS4�����K=�=���oI�,'��~i��Ū���trJ�?��_�TU�C2�{'���M�g������Hce�߰A�J�����[i�0���8�_�a;o������~��t�	'�іj�������~?�0�.q���S�uv��j�#�1�L�����.'�F�RR)A�VSq�U�5�\D֏?��.��C?�N��Z�;�sƬ����R�����rhE��O��l�2����:���`�t=GZ0�N�(|�8�j��T`Cnrk;^�T[f-�4����a�:%�r)V�i��8�R��u�b 9�`5����Vc� �$]�;���������i쒲���A�+�QaK�萍̰zܤ�s1��*Wk����[�e�ͮ]�AKg92�d�������}���Z81+vk��QK%��lH<굳�T��+�#������=V� ڵ�Z(��2/@�ί�ʒF��2)-W���4�J�GOE.W�M��j���A����`l@�5j��Y�豄�\��ƨ�~�:��ըɌQsEh��V��*JJ�+�B���ɟvc�&�9/�a�Z!�6��w� �)h����<�5����Ш�)���0լj	4i��}�yW�	���ZLG�-H�:(h�\���䋊'��f/Mr.4س�=E����J@�D�� �_�� OK�J
���z�t�a�YA�P�Ѕ�j��� ����$6Bms�h>N;�h���~�S�l2�����e�r)E�=Z��h٤����W�^Oͩt�f��v(��x�,A�cd6wٔ��yz��_"�C���VM˩x�����0j<j_Ⱥ��~��\��I�e5E!�Z�j
l��H�h����v��U4j!Z�(g�:��7! M��G%����}��������d��"q�+�2P��0$,�e��b����'O����u�W�{��B���9_	4|��cѧr��>j�,�b�_	�4�ϊ<DW�P������	�
୆�9I=�KM�A��"�]EL��O;�t�����x��p<�?~=Λ%�Em��C*�� K^N��������G��Ȭ����J`-j���^���Z�䄃:`���~�#k���"�%�º�pZ���� a��u=��*ʅ����pZ�زc_1J/�	�x�$�%�rc��r���Ϗ?���K�����??�u%w*U>'L��s�y�<�7&M��� 6JK���Y�Bmo6���;��7� �  ��vs|*|������R>�6�����u�G��bt���P�P�M�R�n`W;���-%M��F0���Ei5���?(�[�;Q��̽/ �P|߁�iʔ�2�^�cFV������
JR��:����ۖw�<�:��2_l���N��%��	��% �/�1��d�Qq�lI�gahő�$�&)u�%���r�q��(����r���7{�%x�_u^�9�7GM��:�p�� 07>�!�o6ݤ9��S^5�a^̡%Vʣ��`��.�
-���"�^#��f#-���hä`��俊�10�N#�"�Ǚ�+^�x*���J�0W#��A�I���g�kh�Ty%������f�u�y9��2s�O���w�ǥ�X0�����o���諆��K.�D����Z�����=��@�������p��a��Р 
!�,0�G�Ռ��9�!=�TsD[p�1J�����B˵�!�R���=�f��}|���|i���J�n��R�R��b��O��:�Oԑ���W�[�&o�Rh����p���I����$J�����p\�w��r�˘�.��`�'Q���:Wz����Oi�J,�������|S-0�x��T/@���2B9`��O~�j�S��� ��4��Rplr�?ERR7�$L6��{�y���|,=؇�0X� �ՎP��p���x����b}a��mU���n�,�)Tb�lr9�SYI��l�[����.~w���H.�`5���
�a�Q�uW�.��#%[��G5��������G������d2�������W�bASCJ'�%Պ�f?w�������!l�ꖩ�I�HN��D�R	����s�rye�����D/5�-A�<6����!���d��-��o�R����0�b6�V�L�O�T�5n��^o���*A6�	�(��^g�I�r��kq�u�~)��>p�fm�NPyc?��)OH�	'7bPͮ�y�/�~��
;cc(g�@N}?���9'6�r�
����߉����+���_v�e/G3�3�PC-ُ�x\rG�אY���j�+?��"�1"���|�h	��N���t�����OE�ʹ[����/������VN��������3�5�,IL��}	kJf�dR���l��]C69�e��:�T�	_B�c9��À#$�;��|����$r�D�fʝQYZ�f��*4&��K���Kfȏ�j�֒��n��f��T�c���͘�f*���V�麣�3���Z�x�ɪ]G�JZ���r�`�hɇ�07���k�DK��T)�7�����S��ܟ�w`������T���96>Z]yy �!5������Wr&�d��Ek��(� �[w^=ĩHi��<���nz��?�}#X�9&D�f��)r�>`_X7?�xa~~:<,Z���.�s�=�bXn>����V�}�F[�tݨa�n=��������O�>��<��OI?)I�ּ+�qI�Y�/��7�=���
@�c�1娉����1��x�{�exz|�=^����E�o�`lg���wl�������}xCiO�1�4�sb�gi1���_�C��Z����ן��⨉!��g	*Q!�
��~����U?���w?��}㺀�^J ����8S
U �?/;tX�Y���{�;���솞��#Jx�d�#.�������(U�j���q�����(�]g�A� l�B��(�mk��`6۷�z� �Ev?H�P��y~�з�zzl$z9^J�A���;�w�Ê6s�#��g`߲$U���S;�>_9�|�L���71_�1	�h�N:���
F�S߷gnp#I�k�P�@���������ű�������6x<2_b:��|���[��~�����ׇ��a�HVr{�L*� �!�xT{�ce$���a�~͸��ݰ��TPPF�>��젗.�!m>�mﷇb���v���J��u�����?9�      �   �   x�e��n� E���L��k�/�"F���`��C�~N#��}��p}��F�P�>�����A�
��oHoF�p�5
��>������"��%�2c�t�|���p(�~b�����.í�ǽ�`��{�D�2/8Q]���m�u�:`�?������u�=��n+��g���<]��gƀU�Q#�/Əs�F�4���j|��)X�ȼ���64Uj�a�V{�	���R��8g
�����i��� ,c��      �   �  x���ێ�0���S�}��g|�Y*Yn�f�8��j��4{����1��?�SS��k��1�����e��W�/�s)rPG�����3?o��O<�窨�K%b��+��]]��=8z�����P���2�� ��hj���wzk�9����`�G�م���7\��j_�}�UȒz��/�й6tU�����w��pe�/��J2�2��B�3i��*_�O! B���B��xI�4���kD���!o���|A�����%G4�����ܿc�-�&�]��D"�Y��R�}Y���t}~躦sU�{y0w)̔\�����e�ܦ0�XH�΢o�43�O�lF]�fl���y¨nlɡ�ڮ�����=� �:�B?R��F��$2Yf�S����)d6h�;z�:�8��<����#��@s���T�t����дũw}9^��J NZ�j���_�i��Z+�Ҍ|+�7���F'v���i�Ql�a����r��w���H�E�E���C0�7�#Q���s�[�� ͑��P�
9
J%h��lq}V�c�F^u9�#
.U"lCH�sG�_	2�!��)�|�G�{���0�0G��:!�q,4�b�����FV�\����������M�      �   n  x����n�0 ��u�ُ��%�,���@�Q"͆K�q00	���o�O��/��O�{��h��:��/l�ly��bp�� ,�|���!B	�\�Ѱ9��g��"T��|�B��׸�LN]��9M�*��uP{������ �2�MѸ���5���S]�z��r|�|�ۓ�b�.�d/��+�9:5��/�\������\X��$H���M �,�����?����\{�W�H��aJ`63#��)x-��� B`m�����%[b�u� �z���������ځ��5Դ�w�ͯ�b����;���E ^�Lf:eU�Qg֏[_��D+��RI�6�� k�BG��@�%ݿ�j����8u      �   �   x�]N�
�0<7_� �
����ZzT<�Q�,6Z���U�ލ
�,���ø����Yi�ܾ9l� ����\��F G�OaD�HLI����,?��޸<I,���n�X�$DǴZ�6X�,Ͳ8]��,��ݑ7H�F���asB�S��z��,tKÂ�r����Vw�@*�w�O �0I��O�I�k���ʷ�<��~�{�3ZY      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   /  x��V�n�6}����Cڍw�M��5�^�H�m�AR�@@I�Ę"U^�V��}���Kz��^�F�ؑDr8s�̙�e���Fg'�izb�1���f�[���E�'�J����V6�D�k�XoMcy�I�0�ux#XEK0P�b`'�[����AV�]��;�\�Ӆ�_�<���l���q�|+���h��;��e�ε��/Xm,{˱�æ�ܭ�O��f٪��p:Y�k�X�'O���Q�Fha�����Ɖ���-\*�w!XpJ�5���q`ް"HU���]I8b�7���v�ǃ,Oo���%(���o��]�s���f�+F�{ɲ��|>9z>�-����Y�3b��'Y힦�)^�e����&G��؝�8O�E�c���DZRh����',{^^�����#d�'Sze��Z����"�c��G,���X����v��Z>�DD�G�-�SA�ēt�7F9�6�jk�G^��-.A��Y[����k@��녨&�O!��p��!�u���BD�8��Hu	��p~P�G�Q�~o���b�/����W�ƔoOmU[�,���(��D�!�V	��`*��Z�� �R�PE������"�����q=��W� �z-�`c9�Z*슶�,Uŵ�I+H^J�k�S�ǸIДY$���΃1O�2k�!@{-�L<�I\)�&\d��[kBӚ �!D%Q�C�p�#�y��[F�"����Е���7[��Z������Z�'����w-�|�bx�V&R�8_�Zp�(H�>}�@~ˍYVgϳ�q���o�R�� ��Ɏ6��"_�>��!*%c��ߌe;B���c��j#�Tw�HH_�*�31pj�`��Q�F�AG�&,b]�t��&�<��i9��̒� ~�g��I^H%����$ml|�Jc-�j��-w�� � z!�S�H�;RD�4�T��Oo�79{q��=9;���W?�����=�W����;������oFq+a�҆�ǇɛhfO.[��ޅ
,�^4�_A�W��[�4k��TWi#�|,˻�:���X�aTd�";��"r�u�o`�Al%�$Ex��C�
�S���~����|��-�'b!_kx���+�SgKZӃEDhp���`�e�#(����>��{kk��ᒆЪQ�@��){���ie@�)��_��叜����	*d�L�)B��0�z�tbl)
�G[rO'�bF@�"��4��R-E���B ��7��dRjm��ݱӇ���cF^dgҒ6Ƭ�Ǳ\G(Gь9�!��ٔĬlE6.tFK0o+����5 �7�F��( ���v�x�^�;���	�}z̦��^��gM�X��4Ht\����N��e	���u��t+q��B�cna����,�|�A�K�Oo����{�<[�:��Ǥ�eot��쵄H[�ه���%��Tl�� Ltw�@���P����7�1M(��~���r�Y��1	h4a��	Opl��d��WO���b��5�b$O6K��{e<%-䦢1�B�i�#J��&��������Q p%]��`�$8�v���q��Ӄ��� 㡆�      �      x���{w�F�8���S�*g�R�H�8�(�3���8��Lή����� ���;��Ǹ�����֣� H��,Q�r"��Q�]]]U]�yX���|���e�n}7����̳������xv&�e�H��N�I4}�D���	�~��L�T|�q�?���8z��".����f�'��G��h$��,Cl�H��4*1+��B���^�ݓPu���2��
���ø���9��$3�5f�4�;�Y�p:�'QZ�&��I8����qF�<�I\ąH��#����Y8E��t:ˡ�Jx",���$e"�]�"l�2L���G���e����n
���������gQ���	 9���#^,b%	 @��<E4Cx�E^ƣP��pmt���s6�3�Q�?K��p�� {��L<��h���8�!�a�=*��l� 4�Hd�F��G���Lq)�IT�WE��A�ЌӘ�a&Q1�2� @\�-+�A�����G�;�S�u?	�x(2�������hx�h��R�(�)۞�([o�Uv�Dѵ�="�!!����Q�k������S����Ө�/�}��=b�#��!�<܊��QR >�!T�)A|m��e���g���0��A�I�X#�1
��ֈ�� LM�üz�r'�O�pVFP�,ɆEvn��#l�GVK��!ƍdi���>c�Xx�g�Z����4	�0U�d
o�y�IT bE0�X��S���aJ��D��6�l��j jD� q<�`}"eG��_�#,�N*���h��dC��W��p� �a�h�^��t�tu�
�n^@��J@�����a���$L/f0]��g������[������f;�n��|���=A ^v�=v4�j]F�8j�''����	�h|����N��n��ا���*� ]�I���f7��4�K�=�9`�_���0-a�r���jzy��y��)�p��c���o�m�@���,	s��&x((<�0�X��J4�U&��4�F�� )�$��r�g޳o��.���rϪ6�/�ru@b�&1���ej .[pNdpD$Y����*̣*�����9��M��To��H��"�F��s�q�-�Lp4�4�v���*�>���m� �Y	S�y?�c��E�E��<�ѕ���?c�M���z��׆M2��(�l2�
�I#��x(��U�4M���TX|�<*ӊ�'ѧ���9"��r�j��Z֊r��:�աL(E��u�egHo��C��u�B�L�M3RUB�|CA��5B����p�f	H
�T����g���/C�A��LQY��|�*U�S��tA��гQ�dh��;�A�g���o��%�E������ay��d���kz&q��">e�9���P�"��
(;�2<o�mH'@8g��"Q�E�pNpw���*�v����y���6���e�dN�b�,:��x�9�,G���݁�k��e�����8��)2W9��<No���-����^N&3�zB^$��J��
�M1�K"��#��`೵�3�X,NǷ���F ˣ�;�"�V0H�P�KpK@�`�a�M[Y:$��3��_꥾�H�|�Tl���ի7��x�ӛ���4�'�)�k�g�zl���@u�V���r=[�lKdg�B�a�)��0�*���"E��|X׏ľY���� �R���+�	vq	$`1?�܆@�� > �I�	��$j[�0����&�r���*k�͒H9�1�����ʺ��8�5;�L*����w�i�$��4�m9Y%�SDB���qD��8�fpX:���i���d6�BΡ�pvs3�m�WQx]��̒�Kb!ZD���h~��#�P�+ �l�HD{�`�|N|g�χ�Y)7"�&�鹀}�c����Wd��1�I)�zJ�ɐ�\�* ���)Oz��G<�,B�TO=
X�:��2����Op�BOaz�r�DO��`6.r<g�C8���l'<����y|���.���o�׬��fW �R���`3�*(�5b 3�A�{���N���٦�L�cb�qK"�t$�ww���B1��������8���"D�/b8�z�˘�@�MB�,��sB!�����	�*|7����Y"Z���s�^y��WqA��Xs	<1�*�T������y��V�J�0�J@d. �i�������b U��S������*�K ] %�R�DV�A'`�
bS�v��D�gd7.`q��F!vH V�$3�!�f��	#��z�gFGS���Y�|7	�
E�3�X�i����������]��b#���6pnj�p�xz ���f�p�f�����$�æ����8���]/�z����z��������A�;�¦�z_�r�(���ￋ'�ȇO��L�Q>��e���P��a�{�@��izu�pS�	����I��h�Swk�۾U �ԋL�AS}���imkk柸)��Z#��ط���{v	 K�w����	� 1Ai����8����8�
�p��<��A5G��RH$7�3�Ã-I�IT� q� �lc�\j�:RK}d����Z��:�0�}�h�$}0��JY�i�O�0-$��0NH�N��kIF���KMw�������<��X|�eS����d�7j�u	����fF�o���J�*����l6�M�v�� �<@+O�����t�L�"�~弄W�쌵��������>��o�����~�o��,���$'9�|�ұ�6d�=�L�a
	��$Jw�����t����Q����F�f���X��n=C���Em#t#N2�>�zH�K2�������{YJq�B$-�������|�=P�I�y$J�d�B�(b)U���
YO�鼧ꪜ�=F��)e��(���z�|HsX ��̒2n'q)U ��C�ug�4
��4~���v�%'o7����� p�8�Tez�e��6�J{����R�?@i*�8wFl�e���_{�W�Pm���X0p�h�x�W� �ђ�X^��-�?��g��T�2�QM=��&��B��V�'Zg-� If�uT��F���Y������8�����Q�:�o����4�ab�87�~��r&4�<7�8��K��bN#.���V�q�)<+��yl�W`YFR�B�P{�n���,e"
'LWXqS��!�d�U�h��i$�%����o�m���g.4�l��-����N�r�oˮ[�+����*�Z���]�b1�|Ƚ�9�U9��{��o�q�-�jO�7ܢ��xe�xV��o�|��A���taCSӐ3[bo�L���-�����R%)�򩸭�ޗ��B]�i}0�7�#&�T��TfvV�.���+H��@�I���ِK$w1��a�d�sU��zg�b%Q�^&M�R}[Q�q����ߝ~��*�㣠�����ZO��xr��e69BRT
�����V���|@ge1ͯ-D�����l��By����'��Q3�y<�j��<a8�G�)?0bN��畣/��4����*�tg=Ew�S�/�Svg=��������z��YO��4�D��{zB$���]R��=���YO����YO�;���z�Y#�W�' �;�ޝ��g=�YO�w���v�-~"Y�'ĸ�W?�ZGV��d@�.�GAGSd�x�VCj�k�U�*F&��-�R�e���X6T�(��G�0�w	�{�32^b-����?f�LQ���SӮ4B(:��H����y��%Y%��S+���\�ɷ����X�Au&����Z��gzY �.Cu��u�{��ܒ���n����{=u�=.�s��8T����m(X%���V�9�Xj��>���uy�f������^�ZaA��ݺ
�&���
��$���Ơ��L����h�)I�[^|��kۓ0N?H��t��	R���I�o'�h�Dh�!�Kn44��Y=�z�Z���*71���KE�=�S�?ȬDl;�>g[��-Q��D�m�Wl�����Wǰ��9R�G|����P�O    �(�j����Q��FyT�|���2�{ԧ<�S�)���G}�u��(�ѧ�&�Ez4$�w����L��צ&�~��4����b��j,V[��R5dj,UC��R���X���K�hTc��l,���ߪ��6�D���s��.����W�zY����]�d���"I4S/�l�������=B�z�����`SmD\�0(S�5�e�RU��3@�X�9b٬eXM�	�[�,Bw9Z��۪�3�s�ꨂa��U'v֚���fڔ�j��1�f!�8�s�ǲ��eu��P�c�ƮZKǻ7\76E_�r��:�*��Q��.��%�+��}9�,\�By	T��%����@������ʪ�����yl���h���ʄ!����W���W2jn��:�zF.�qΒ����K=��\�W�2u�{�b}ϐ̍�z�ML��Y���}i�N�s� �M|!�"P����,�hr<���'�r�[�+M@J�F6
� #X�ԀƙQ�u����v�#z��O���=�a���>M�#TC{OE�X3�3���d	��Z&q��0�>����E��~���[�v�:ˣ̎�����0�<Ƶϣb��6L���7���nq�l¢��=>!X6�f948E�V�aTmVs��c�"�}�q�.���h�QUm�����j��m�M�i$��ZLg�}�?)pKz��s�=�a � 3�,�;Y>v�U��d8pT��t�UGگ~x��}�
E��#GXp����<Ba�ha�A;/W��*�� �-����g�IaV������������w�/r;����O�H��fa�o�t��ߌ	EZ�����K_4@����<\�z�O#��m�E����N�����й��-����j/X�Az^����eb
�}^�@4�������������6}��>��K�]H���_[q��ʃ�w�c�k�T����/���I���U�.p�F3
�#9�Rt�K�G+P��5���N�QIq�t��w�(�����xj�5PӪ�w3��0��Iai�hBXp����Y�nN��~P�u~�b�huR,F��2�����#�..`�^k���p2�`���8s�`$�K����h2�H#�K��F#�3�8�ƻ�c�}#�i,�=���ZHjL�oDc@�EjpQ��$�uu�/4!T\A�~~�h�Qt ��x:M"�����o��7������y�cXt��㧯�T�__a�tܟsdu
�8��u��� �*NK�GLd�z4��ž���ղyF���E:Ūk'��7!~++�
>:� g��w[��A�cի���*���%��jzޣY*�`0<��m �N�K7K��L��`�k����k[�h���5v�b����mn��mLIq9��n�����|�R�����_���nS�8.�_�g��2L�ks0�RϬ�*S|h�HM�_hEÏ|��9���B���4
U�HQ�e��90n[F�����(a{K ʴ�/��Pl�wՀKTS���ͣr��2�'F-W�>)fgm	��o�����u'�I�����^׽��:�^'�eT	�/�|�O���E�.#����>jY�*5^V��\RV��V�1��C1�u�Q��5D�q�aʊ��Қ�P�u3za���M���MՕ�_��i�����kUg}�Bs_��Zg,eTsR't*7
���􉹐2L��@��Sy���B�6�)_���SK<�ܣ�DCYY�PܞDTo�|i� ��
%��4�Uw=��!f�QEe	
��W�x�Y1�1�'HO\laD�jo6�8����PC]��M"	(c�sF`]�Ŭ������?I�i&�=��@��`5��u��+8�̅�`�lVQ�H��#��g(��'�9�\�l+����>�^�9�`���W/5��h�}@*��;!�
�{��7�t밵9��?@���8]�<]��Aӵ7@���8]!O�?6h��$?nӼ�z��8�I8a�D���Vx��|�)E���b�L�\�����<�4A�V���$k����8a[x�񋼇��Nah�N�@�5ob�.RI�G�����p�%�c�W{�톖�a�s׉�fufw��b�5���"M��'�+}�.'N���I��Re��M3s��4	�˚=i����H�>gҲX8L�hM�i���g��KT}MH5Dm�n1��&-۴�5_0�"�U�.Fj?Ai~�͍n�S'��D�x�jL����������T����DΆ���R�)[����ݸ}]U�;��g)��w\{��!�D=��ds��cQ$���BW�QiD0�,Փ:V��}1�{��1`f�(�`�J����6���T�lm��.�4��+>c$��r��l���#٠T���(q����MO�.�+2ٶ�E���l�I���,�$$W�+����(�`��t���&ƊG(�h+���6��	����wtx�����S47-T\�R�h�P��.�t4��8,.���QP�����T�ٞ�+x�$z8��O?E�+�H��+�?�|M��ܐ)P?��lP�c�r|j��l�� �	�sb����=@Ks<��b1���Z��`k���Ō�Q��W�:�v���G=e@�;(��Y)G �N��9 J�
���vA�P�>�7��3�}͗��Lw�)\<��ug�6�-N4�/��kN9S�Tz2�%��	0��C4j�q���e�:����<�68�߾}���ԗ�%�P6�:��0쉲�!s�s�X�/����<�hJRG~�����ݚy,�brB��3�r�,yHǔ���Lp�C���8@k`a�l`J c�9�("WSK�����C2���9�O�k!|ڭ��m:�����_/t�:�B�3mճ�Th�C���~aW~�����/�ͫW/~�&�Co�To��������$�rw)�UoY��jS�RKȦ�����Tk���0C�0�:U�A�]�9u����:��n�p�í�1e(	�?`��v��e���EfR<�~w��e�ŧa4���h]�.�L=��l�K��r�z[�)З�D�����f�%�9'|�6V�XV���o8�㰨��h�Tm\�2��K2=��D� Y����=5�M�,ZlU�`�U&�(��刪jn�+1b>28�0�����P�`y�i�X�v�����YҸ?~їߗdU`Vi�/�Ta���l�q�v���$RΝ3��¤��\L�Q|>����P�t�w�Ě҃��E��wsW�,���;�Z��#l4������e����=��b�iz�NF�H�6v���[6�M^��{]8��q	��m��E���G˺y%TQT��H�R��M�mC	����t�L�.u1M�rcV�����Z�K�lM~S��@�|��λH�!fg���q�yJO4���q1�/6a�5�#��4`�C�d)J������ļs�+�h2�u�˸L6�nW�w)��݋<�\P���)�h8����F���}H{�������tF�/���%��ˆ�Y���^�m�I T��$X�ܴ6h��p�n��*2����y��M�i�q��7t�t��ik,���Ij�ݜ��7�5�u��ފ���A��kN�f�V\�j�OQ5e��=/b�|��ݴE��m�e��]q�E�����'p�y8`�-e�ͣIv��,�i8��a'g�e�{����^�9����^6i����j��2����OM~ ��7n�o���M�����|�:�j�-,;\�`��|M�;fכ��^qcglb���|h_9����#dG)E as*]S+��{&4���s��>��ɦ����yҭ�8i&nKbL�Qk�X%o�?��|�¶Q��޾�Җ�G��P��ͪ�S���hP�
;�Ie�M�����)�a��������Is��:�/,Ǒ�U���d�	K�n6e.Me=4��(ĥ��,�-�I�a],�[�<+����x@c
�s��_�QNቃEt�����QP*�B
�)�U��I��ھ�ӆ��`���7K������kt�&��8��"�W�qV�Ho`�Z����x(�I��ga�ĕ����'����%��o4��m��?r4��ZN�?�"y�d2��L    f�֬7�
Ρ�^�V��Ga�G�/ؾ5\'��v��`C%i��#,�y�;vY���Rl����m�픣�]N�8��e�. ���������. w�.��@���S����[��(K�-+ƈ3�#�EDX�KC�G`E���Gk�/+l"�򄋓��f�Gy���y^U�1��'S����_��~���r\'�A+��V���;�|
���]_]!^���a��#cNዯ��7�1�rL)��I8v*jd�/M���t�U*1��G��͢��Ť@%����Zg�k��o9�|�*O<YK��^nG�^�n
:�"��6MrF*�����3�U�iT�8O��1���}��mm�cD���j�u��0)s�)�g?�����v��Lk`�Y�F�A0����y��E��p�ľ�h/�h�:�l�=gX�Ϭm�hb����W�W㯲��9qϕ�,V[��Dg�z�J�=q�1�L���D2��=���u�.%c{x\_Nft�y�CgF���r��y�;��N�8�4�vJ�JQ��� ��2bQ ˌ�z*(*�������kQ`����/�)�����^�߿�}���m&��d�A��M�u�͠
N��d����<*��a��,�P��,ΥX��r��O�U8/��>�]І�AX�=���4��5�|42|(�b�'`���Xa�����bn@{�t1k��٥���nd�j�[� ����?�}<���|����8c�.X_��������&�om��&�	nxx��7�
���p��A�qL�sL	��� ��v��C��,����`��A�nP?�(�hl��w����� ����E�Y:��k�*ձ`��#�,7B�
�����f���S4����b�h���H����$��4RYn�ߨ䎿[�fk���T<j|���l7��R�I1�<�Kx�����,jWQ�5�x���޲��������YE"� ��\Q8�1�t�@J�IS���׆�
~P�X?c�J�GQ�f �]���$_o��zۯ_�~��?����o_�{�%=_Ne6���G�Ë߼}!^�y��Ǘώ߿|�sӰ48[Pv��a]�GZ�#���������f���K�	����ͧ�}2X�6��
�T ��`c�j�����w���o��5C����}E?��xW�u4f˱�u(I�*��'��숒u�I����'�����?fxj��!�Q히�zfj�VF��Ć�@}(P�
!�!N�����XD*߃_�ׁ��I�i��3�@D�C\C�B�)Z#�Ω��hD+��G��+��В�Q���~�T�x�|���u@��>99|�+)]� �Tgy�0a4��\7L��`��<�,���$�cy1��s�҂�[e^eK�9*'
=�A�͐�������&Ck��uI���4����9���T�t9}	;�"b ���EÚ~�����H��Td���u�s�H�jd��	ĩ l;m�#%��5�Z'>� �zNvk��
k��װuJ�8[p�vp��qƔH�Q��4fNAxvD-2���1h��T�G�
���	i7"y�G��(��t�i��K6Z}O?���]ѓB�w�ո�W�<Nmo�������؄��/��s�U�1���Wʄ��>�IR�+_Y1#%�K�UA�-����k^޶���a�u���_�ՉMd4j�A�Y��u����~���4b��Ld0�^UjF�6�a^�WfB/���$~n���XpB�8����e�{��H�T:{�0���a�Ip���-�W��N�BŁ���W�zUg�ox!&{�ζ5����]\�a�E�bf>Xk��&����c�ĴY��i[��t�L�n��F6���Z4�TPh�9�f��(jj�#�z'"F�D�^g���m�H/�*rE\-N(�G���4��8w��+5F��-�P�P�jSXG6����"͕V��Mi@��I+e��ES�2���w��7�N�)5sZ��i���Ǿ?�p��"� ��ř���I��{֓} �8�� n�/bi��;=U���6|�X�{MX��tOO���Tl�Z�?=	V+�nh ���a�M]7�mSɓ6@��i7L�!lJ�C�5Ah�W���4bQ�5I#��FP��s�~�7�H)�b��w
^_��(��u!39P�$�����
=�����$���$�䟑�y�]p�7��Y>������^N���D���볦���ɲ����'��m����8�PCAh`�Z��g�G<�ݧt��J�MZhF�wk)���+��F��k���H�3KN��JV�V�����pQ��}��=�]9ڪ�
E��7�5�e6^7r��Qt��&!ě�<�HP�s��%��?���؁>w�]63��&��&���8d��ϩsk��k`��ے���IX��>�o5�,Kf�nh���\�S��
O!�NF�(&���M@��p�\�r��r�j9W������̺�N�=<88��{����.Y0E/���Q��A?8����$N��sx������:���{�~�'z������A�GV�T�Q8����ށ/`kt��{� �~�`p���.ђ-�٧0�o��ô�fE�T_�H"2/�%M�uyA�P̟�!��I��H2~G�+�%w�� B�N;�Ή�0�n�]�=��~�9�`>z��ȅ`ӝRM�ή�PSόc�G5o�L7-c� �t�܉}�$����u�^W �˖ya��/��E����~�M�s\m��˜��?��Q�a�P6Sd�5L(7�'.��N�����L�C�b6�����^�� ��eU�	$�ߤ-ZZ ���k��^W1���y�ɾQK�I��J�K����ː����rN1��3��h5p:ZE�3���1��R�,��9�u<�A��`�VV��O�I˻0����4��~��_kB���%���R��m��'�&��d�i�����9*e!\d!��0��H�0�@N�>���,���
m ��@@Lg�0��'O����;j��6ΦB��9 ?���6
G�Y���܂����|:�a��0��eӈ�2j�V���6���,�g|�s:���bΙl��A�+qhV�"�Y�VF�0�f�(��+5mQa"�V�����o򘍢,{S�JҔ�JɔV�O��(��%�
}�A�U8��t��i�Hk�~�/�X|�Ss��>[�5`_�a����*D���( 0I+b4�|Y*TcS����3Zp)�1�m�� ��W9�'�4�'Ѡ:����+e��>�D׎�[a������8�Pa�1LV����^�kqTMT$a����w����1��0#�@��Av�U�0���"W��Bʍ@��,�ws��u�Y�������d�2��a��-�����G��QUk�TK�'�(�TM���e̽�o�C/��eӹ}��W�os:��>8�l͐����[:l��$�v���~�-2=9a��T�d��|!�2Ajt>W�j��h��hԝͩ���!I��Pž�1ϜjI�4v���{�*�G��LBI3�g�׮'�;�ܪ|�)���	�ئ;Mˆò���'�c��Z��U_�����`흾v��cv�)G���|�yc��a��F_
�p���GZ�!�D
G�G�������{l�E��Ԑ��f�y|A�l��S��EY��3m��E����z\Yf�c�nS,��ʭ��m��� �e 2�����=k�I��4P�_��-�#�Mi[��� GZ���^�V�x�6P/5Z�/�M*������h�ZUe�Ո)�	7L�pj�^}�N;X�_x��h�&a��`�G�+"�asC���AjOg9�'9E��6I��v�3��q�����jRc]]t��E���e�$AIY� �
E;L{Vuϑ|F�x�D�{C�P���M�z'�#�uCRs���gx��q�2-��|�Y=q�w8`G�>u����	�,eX~�,�4:�x� ����QѴ]��7�4cNyP�l(f\jV����#̴��3$�.l��0�"ҕ�,_ȣ�b_���@�
���|^�*|W)����Km@3[�CӢ�{����&�%��	    �3��Y��ɂt猣tK#q�Y� ��Ω�QC��K9��+9
�f����o�g�V�MGD�JɬI%�G��a�\�0�슝�R�G�f�T�B��K��籠���}`�C�6A���m�hF�p�T4�>������4�q���7tœyvC�cLP��,)cڱʌ���J��ݴ��C�(��Ap�s\�W��(�\&"�6(Vw�W���=Yɶ�0уZz��-s��A���k���Js�P��mj8�u,�ո��[� ��	��&GnL'�>uL��P��u8*+@n��Xf_����Q�F�D@���n���+Xw��`����4'��Vx~D�n/��3mnT��幹v���pP��ŋ�y��5C;|���w�@��B���"0ɝw�h{WH��&�O8IJ��4��!w�`�A�5�"SY6m��XBg���XY �����Lx,GLz�W��9�j٨:�m4�JJ��>*u[���f�8;���p��IkƩ�\�i�:rL�jR��tQ�Kw�&<���^��;u)�/���Z|YJ��X�D�{�s·��D�ϲKu	���r�h�{�^��Ƙ�遵<p�e�_.E�^G�����8��7갩��)�,���<�ܽ&�/;��'�j�/ޘ�v8ðW��L��tG�*���l��M�oDΉ�ʀ[����3�K�(�ז��K[�v��<\&s�CKm�6�d�ʪVw���I�NGoZ�I�N�QhB�sS��,]GJ|�;���|?J��m0$��W~W=���yx�+p��#=�MPl�<t�a��Y5����[�zł��Փ�^��^�*Zoܕt^�l5�ų��k�|�h�;�>�EW���T.Hqñ�&�B��B�&zCI9K黾WB�͟Tt,i'��Y�K��,K�P�$�X��L�3��5�KHCS���M�J6;nh�N[n�J��(�(��j�P��7��$͹X�iW��a��'�4����՟c�0���ܭ�d�?����s+��/�bp@-������e���oT;�Q�ލj�oT{�8����X��.dt����&Q��II|�@B��m�Y�
�"�G������{�f�7�~�mؾhߌ ���B;�eSt<"��\�o+�2��%�Ks��t�gھ��qkd;��fh�Rc��+�0,ե]�zj~ε�f���?�BٗY�5�mϕ��J]D�t�`P),*8�,*��+%+�.vѽjѽ�2��90��}}�'��JS��V^��-x�g:\�n��j��x���2�˸ąH��~j%�L��(��d��.2w#��(ǰ1/� .�J8z �����+����My��>�T�U *�z�[6���m�'����@�UG�$c�ş�-��	Z�k��B�t��i1����~����S��X����T�m7+��/�y�#4F�ҟhZ����쨸h\�p�8�!cy\_�f�u6���K#\��(�q:Lf#�Q�7�v2��t���2:��4�J��.������-/���B���g�[�TK����*��*�ʱ�ʮr«��0��Z|uj��̊��F��ɲW��͠WX���_����&�]���g��M}>c�ZZ��օWa�u�u�z%�X^g���M/G��9��}�t�}�4R>Y�>�x��������3�w�X�Z|�da�6_|��H��� ��$Y;���7U�o-V6�Q��]���m�w�(��k�5�O7���}�k�1��n8`�DO���ڀ�1C�v�|4�ᐥ����Sq�	�R�ow� ��.u�ޠ	R0� r�#�PT~����l/o}�G����|���4e�(�,�ԏ$|�|(�_7��8����˰K�Z%�jt�Q��m���v)�^/�h
��z	 B��Ѡ��TS��x��n����mx���R�D��@��^W_����}�ě9hZ+�NT�p������u;�%��I ����Fs���$mi�^p`!uWI�nd�E.!!{�Υ�O��J�ZR�#�x��N��UCg����]����,�lz�ʮ��ej�l2��R����-���%Z��)n�[�����(:��VT�z�N{4��-p����2LP�ij�@	M�T��m�e+>��ö9���E,�t��\h�U�?�J���*�2dܢ�-U-�PafW����73[)��|6+l��c���Y;�~����/������*�������F�9�b=���7l�駥2"�.�!wn�ϣ�8�$܇3V����Y�@[���bQ�r�K�#n�H�r䵉ߋ^!Z�_$2��{sl�^Z���I˃�r(��� �Q/.U�Oq���J?T�&����<�e��І�ڶ��XQ��&XX���Oun��%SD���8k�h�F�V[:zL�`������㴈�u�ϛ>-.�a�s���`1^e�J�ly�m-��q�Ƞ���}Q¢t��5s0wT�(��#�������M�U1�.+�dX1�,���Ao��b�K�͂�v�Ĳ�Λ:�����[�d)�x�t��GѵQ�y9�����6ƀ���r���;sJ�L{�oۜ���$�у��ܛ�<0[-f�����~c���c��v����p��"��i���A>B�������p9���CЛ��Lw�_DE���y�x���h%�$��Tx��<m�iJG6�P7W��I���N����KË���OE�Йw��[(�"�Eri);�(>�[�h�$�*WM2���yQ9�uU�bS`>'����i>\��8��!<p��%�����5ή84�
���1���"G,�$%��9����l����AF ��r43E� �0*mXa�����%�J�(,d�|��fUc_l�Et�_s�C�$�\F����	yx�*�p���8��A�_�zN�7���ݶ�3�u������z��Jݭ���G���8�U��I���.)���METv1��	�u��=�*Zz]'��+��%�"��ku�̒���1�b�s�;fzNo��=Se�Jv�6/��?V�0�TC��Z�J�1�t���k��/���R=�8������q�6^#(�=�ֹ�*����T��p&8�ګ΁k�u�<�l��R��J:s{��H�A~����i�1f�Y���`�6��)����pS�tbjҲJ��i �^p�����Q������/g�n~���x{,0����ي��R�=8wlv:��$KL�0g�v`�p�Ag3��=Xcj�:o��O)�K ٬�D�2����M�^'X�xU��$��F�@#Z�fv-8eR�s
�HƬ��>˿g�~�Woª�� �2���l4�6��*�	�sO�G��/=
�l}C���g��;3[ ��s��P\7�5f��8�eB O��
�M�Q� �Oz�'CD��t�:��U��g�e�~w�+�RD��f��ZMԌ.��ET�*��5{)ZDs�
B1�m�&Kg�jŸ�1���g��I��Ʉ���C�}��9T�LǤC��/��I��ne6e i����9��H*���$<r/��Sef��_��)�Ѯ��鰌�����1.��~ƨ�bG��u�tr!���8��L�u�t6Gf�X<>��H��嗓l4K"1��v�����t��^3cB-�1���UC!ɜ�� 榔��<���j��z*0Z��3,.[�(>�SL&�ydGQO@Hɟ�<x5"�}��s,��4zS��D_t��,�'�M�>�A�I�ʨ����O�70O�dOv���\�r�n'�-Ό��Rd�̐2�5�9H�IV0��t!��&��uSxцWfoj�SLJx���XOo��^k��!鵊���_�"��",��Z���l���sd�B�9-��!�cs�$�u��f[�zv���Փ�n���@�-Z����'�l���kq��4���[m����^��:�zѶ��\Ṅ��ي�N�n	v$��O�7��ڸ_R�d�3c����G"I�$S
�$��Т����ş�
��|ٍ����    ��Ey�yVTa�	ɠ.�D�9e_!���A�R3"���)��m�)/8��E��J�%f?��~�I�F���S{�7[��Ȱ���'m�ѵoU�+���7#+������{צj�W��e �� �X~a��v �bI�P�O�!g��K��j��r+�qT~];��l��I~"7���Q#w�t���Iv��5�a^�L�3/��uL�U4��y��(1��n�
wZ	Ι�Wr+�bo��;�5��=rJ��"�����tO;U��B�ۖ:�RM"#�"K)���ǄK��ƫ�:�T�G%��@� ��w;��\��k�T�Pd�#���Q.���A`&=�[�|hE���������[8��?0����u�>�ȹ�2����mϯ�|Ĳ�Yt���5������4���=˕��\$w����\�k�w�^��9׈�P���X��]����3����h�*m�����aWj�T�D5ddћ	��u��L���������S��4ix��<3�O�lZK��ƄW�dФ����HIs���	^P!U�BA
����H�w+�p�P��:�ւ/[��t��o���yL']�ϙ����j�o L�����N�%��۴����lI�YV1��
''gU��?�����p�ᤄ9�)hjVD糄�����|�SJu�wO����c�k��V�QF�u�Zqa���Y�Īj/�௎Lb �������m��o�m��Ga��I���k�����h�8��� ���?1�=�&T�V��6� q�3�q�O|DxNn�兩��9���
`�Ƙ=����E�2�o6����5}�!�kuC�Ã/-]��J�D�k�ѵht�^rjt�Ȍ���k���B;��6��>+V�a)�J�Zr�2+&o���j֓Q�ʷ~�H��A.���0�P�\�����y��36Q�'��+zia��.�ZA�w��T�Ղ�l9����e��y9���Z���0���P6D�8(�G�0��+W�ˋ�Qk�u�]�D|n1bv��Liv�zRL�;K9D��@OL.I;�L�ܔ�g{�Y}���n��|��l�fO��OXe��7D�#�n
��|S A���O�c��T&����c|���c��yo�GP6e�5��2mp�W�Ǔ�Ĩ�4�G�Dya%	���ik�C���� ��q�`�������2F�f��u�7��ؘ���+��:rk���b��c�>�P�Ѧ,��f���;�)~���t�+Ц&L���f���W��uUQ�ihV�0@XHE���{�����ͽ�Er|Vr��ܛ���-���x��1���:N�XD�unkp��[�Tކ��:"ܷ��cu���k��l$��n����$��K�=%��#*}3���pP29�@��Y*Nxu��^s@��-��`�M�{���>�ٙǑ}ՠ��uv��tsP��,:�ԐڰX[�nk��zZ�Y��҉b�5dJ�F��̩_AВ6J�6�0_j�a�òD���!_�IJH�mROJ(c.k�ʄ���:$����ߍ{w�6��S����B��5�U��C[o�W^;��ʍ�����Z�_���C��E��F���জ�?Q�C��q�m� ����X8.��E���A�hi�$W��x4�(1���x��w�0�}&�-��^���<aU��v ϔ�^=A�p� ��&�Ƥ��Hg,$��)��7�A8"���Y���r&���?Vs"�������8�(�t��;�gI���T�o��8��*\W���.�.T���M��/��,�Kq����7�����4@��c@���a�q<o��Ӏ�v��n8���h)"�!'��D6�R: ����b��"��N�>���9���
?��|���4؜�t[T2D|�<k� ����߃�1��`(̾��:��/eE^�%��747�l*����,�<���+؃�g�d"�ľQ�[2��4r!�l���.�8��T�A�N� �����PGOu�߹�EY�����k�T�W��y�+i��2�ͫL��m��H6b�����̝a�܄0��#g�T6̶<��O�1��-/���8{��n'c��θ}�l˘���X^�z4U�5�a^^S4˺�W�+�e�&�,;�]�
�M[i�T*ud�.26�,-z���v0G���jY���U����b>.h�[i�,�+�hT�a�Vm�U�s���^�W�I�j�nا���K3c0.����������X��亥��/�|�e��}���_����m~��6��e�?���:�7����Zi�!�zo�lke#�YI~gQo� �oD���ho� ��8�6�Í���VA����f�$����0��>���᳻��Y����_��ka���������~��[�{��aQ�;�f/�j�`�:�o����ਮ�v�Y�D~�@����.K�뢚Nf�-2-ßG��+V�Ar�=�m�@���
Ԧ�p��x�z�F&q�xlc8<�5�a��dx�E�G��Q��E�G�~C Z!�#�KS��z�!}��>|�@�*�GMģ&�Q�XY��c�PC�4��|����$8ګ�{7�+�w�q!QUL4�#��>(�F�-�k#�8�	��k���>�	���xTI<�$U�*�G�Ī�@�!J/����!�y��GˇGˇG}ã��Q��Sߠ���Q��ڃ�B`L
����0�E��F�Fd�A��G��Q�~��G��Q�~����G��Qj~���捖��GUgx�C  T��O�Y��L'�pFCŜR9Wɋ S��A�F�M�uO;v�e�_�d��U�u���W��e�G��Q�~��e�{���M��M���}������e�G��Q��W��R��R��8�d�-���z\�ي~��c��62��٬\ c����m߳S��y%�/�R�b���2��ҿ��hl�
��!~��/��MâѤe9�;�e�r`�ʍ���P�M̷�]�M��Y�>�Z�(�2VX���MS\Z�����'Y�ڿZ���ݒ�F4�e�rx�UC�D�"2P���8x"�,p߼���> �E���~w�Ou��v��ک��)���[}����}7�9DO�Z�zG� ��܇ª��AD!㗆����,M�=[J�t��Q�0�m4�ʸe�yc2K�x
(�1Z5����F(E������k��J�����/%��n@1Y�kѫ"@� X5�;��8p��*�)��	̖D��}�]9���u�Z�ZU��:>v�1���JS��!e��|�a�˟�
�T��\� ei�MY�&#X��@��#�ܶWS%�5 l���E�Y��m��Z��(��9Ï�
hv�i4�X���/K�|[��z�1�^���~��d�TA�ar���4���U���֨>+���@�z,�3r��72��|{�q�����/O��Sa�u�l��T-�����e<��z�ٓ���
��QL�PnE�	��*�������:�6��-���O !܆T.	�k҇՟Pa��&��b^��d��� w'JFl�!�����0���Zڼ���:aSދY) �v�e	�?v$�H�g��eF�;��ڭ5%n6��.��,�_�ג,�XQ�l����C�R�m(��2��t��HGΧ�%��(:ሖ��!�����'k��x�-'}�,�R��R�J��1��._�$NQ �U�1��e ��ϷC����v���p:��j)8��81�-�(
�V��&}5�QZ��\�LT�"��ԶnΜ�&9B ��VJ�?:���x�&+��W�Y��"JJG�������py�pJ?p�';LL<ELv=���x8v��E2���z
aXW�?��`�����>'ɡ�Ԭ�!۔�70%��`��e��k�`@ox��BQK'z��ڨc�օ;a|�[S7M�R�=N��6&N�u��I>����i6]�/"�%�s�D��ͬX�
������`�w1��?��Ђ�a��j�d2y�>q�wvCX��~Å�݊����8p|vC<+G�6i׈XT9�jzB�umfB�^o���,n�Y���I��U7mx\�3܀    1Ճl9 J2P׈��������C�h�ǰ��Ƨu,4��E$��b1jɴ����1 �*7Γ9K��.���ܬ4��o��H�N\(��9��k�e��ڪ�:�̈́�._,�1���s�{ ��]��	N�?���m�Uh���ǋ�V�ޒr=��.����Z*ZܸT��&Я�ڻ�~W�/Xo���$V�k�Cv&�㨥XT��w1�,�)��s|�g�ݥ��)��+�̂Z �ᄟ
��t�uR%�(\#>,K�[�����2E!~��Iن���Lsn)����8��q8*p!�"�����"�D�Q��To	��r҉��r�K̢�!M8�x�g�t���~�x�h8�Z�|�\��,q^�̬htoPr�M��yT�x��s�uӆ�L*�M�X�/I�-�sHi�rQ~��P�ҽ�f�T~o�(05�t6�ϸ��l���M��:z �-؛����^�[6�$ۻ�+WǶ�֯a6}XI���QǞ͆w�˘��u��3]ǌM�x�[�����ԩ�#���,Η�a�x$��M]�FD�l�o��m��h�7u9�d�D E�~ �t�}���reS��D�4�X�o�rj�Q��f�2u¥a�_s�>�й�'�ѩ��0����y&�$���
Ǹ�H4̦�@��MtI
�JqVp�]�>��{����e���ETl�Ay�CGAw���{�~F��?�&�9&����wBuP�t33M���� w���l��΁	D_"����t�M��[��T�[dl�P-�\u`�l�|dT�Au���2Jc��%9�����1���P�(�QX��Ri�dB(���b��dn`���Q�r>�
�'X#Y]��ͤf<���av�pv��D5�B%�Væ�@0G����feq*��q��������R��Wc\m�4g���4ƫL���ul_e(ᷟ�u��t�#5AE��,J��7)4q΋N^� 9>=ᆞh��]�2��(M!�Y4@)��|����s�#I�MR��fz���1��lh�Q@���2e�7g��U`*�@�������3�O�iMK}'�[C�B�>A^���a�k��4�����N�s1D���/�
��Y���%�su��)����ƴv
$��iwU�O�����T��MT�et�K��c�DZ֟�^��N=����=�u�;��ƅ�ۡr��L���^��������׵��VQ�`�lb�m{��S��E�.X����L���l�*�z<����yC� wb���؏:�`�����~W<7'�/�@�=�늾z�/ā�b�0�5����A޺�D�v�I;#�cz팡����/��/��Fo6�0� �Z��9�D>rEF��B��hx������<�z�2#`s�8;�V�`�M�"yA:B�H��H�v�T��	Ս�#^D,��o����^�49e�����J"�\	8ʙ�c����ON��;�#�FFV#�L�8�����w�L���o9��׫c���RE�B���uw����N��� ���>	N�򻲔߭;*�i������`_���	_��?�)_�z"�` �=��@Lk�C[�d��馍�řM�IL�ܸd�R̵]F�̥��&Qzhf�Q��wyٝ���ƺ/VF���gh�W/�T &B�S��k�h� �=���޸ve-D�z~�����x���*HyCD:]A�\�� 2.��	"��ۡ ��S�c8�q�W�|�<U����B��>�V����{�]��λ�cݭd�Sdx M�f&�L����X��;ĕ$����I��~jP$��=1����	M젝���� r$]�(���R�����,��2]t;��3�I��O�m �T��l3 3 ��̌Tw�B~��pO�����f�Z��셞�QR2��+�����z�� ���E	�ځ����^;���\�5��Fo�+;�Bv�+b�\x�S��j�M�)Nh98U����,�ہ�ր�n��a�թ���)�ޛ�0{rѳ��~͒^r"� H߀�AŽB�5;^59+`5�k��	��,��~�`P B�$"QT5�%)�Hv����,��z��cER��\���NAo��r�N�Ɣ��R�s�ͩP�����3��9�@�[��_O��d�]G~�?=���T�;|��l^�����;�8��X��j;�d��F�(2�r��q��#�xd�u���`�
>��4i�ٮ13�r	��
��b�N����9�Lv�z==|�FR��7�@�M2j����3��췻���=�.����2��f%��H���nH@�d���
�������hH�X�>3{�B����Z����!�砰ბ(�I�_|p+�$;]f܌a�֏l-S�L�~��?�i~��'��sT����gA�O���[���L���q���]�(�lxhe ��F}'�a�S�q�&���o����f�i>�
��{��#*G�<��������[���~Բ��Z�6�*%;�DM��(����D.*�J:
�c���2K
c}�+Zf%�C�"�JH� n]�Ѱ�P\���<͆��̖<J�	ݗX$l��T�x��nq���@_��5�VX�BE���s\����6�B���I*��x�g���$�;}�'�oQ9|��An�
(������� �d[�G�<�HE+M�\ey9���Ȇ��:El��g1_$ʻeq�O0�#p$��O6Vɔ�y�"�<9x���tī�c�7�+�H\��Ś��
=xz�����3oT�9z�w8W9\:�|�p�_?| �Z+�U牺�<�{{�>�=�=�˲(5��'̺Ϥʶyi��'��.B��R�v���U-���0�R�2��.�&�RN=��F͝^�w�^���4�T�<\뒓��V���؆�5�bI�˭��|��p�I�+X!i��<1¼z�ƶ�,P�FP�/J8���j���ku|\�m|k��e�7�:����8�;Vu'ʢ��Ň/��@�s�*Z�gGR�:�W�{��x�FW�Yӝ>û��%#u�ÊTmnD�F��.BQ}o��X�]��{�<��f���o��a����ۻE��
�Y�~��,<����{��O��[�a-3"�Qծ_-{'«w%L�Ū&6w�枌ʷ+VD�e�7���t%�S\(ؑ4�*R���&�~��W���.���,�(�$+�Ђ�dIɕ�Lt�x��ޫ�x��7͋�-�q�mx`8w���>Ѿ�w[������Biɸ���>`��hmP���I�BW/�w�®��9��)� [J#23%#Q%�V���Y��~�������/D��?�d"�0D�;�� �=��w��C���,0疿��T1P�[���sج l��ׄ�x�-C�-�����w��B*K��j�j�"��V�DE��V����vgW�L�\D�p#��3���I<��
���U$�Ao�bɥ�0�ʐQ�0�S�F���Z�4�Y/��g�1�$Ȟ�C� �p1���e,�q�rlh�)P�"�9�`�h�䢰��պ�Y�
��L3(�̉Vݙ't���˗ox���[�{:�1���\�%-����	ax8�b����0+�n��I�¡jf_�����5�ۚ�G�Hs k�<�h�X/�ᩁ�E���4���� �#�c ����$�M�n���6'�����	�[����A-�vEt�X"��9��(C8+8-��)�T�4Q3�{�ٰwj~A!�x�E6�'Zҵ�ь-�Yت�=[~ш��d{�<ՀG���H��;��f�M��6�4-}�FB���|��`��oA��k��uQ����+|c�s��(z�,�h���e���p��ۡ?�J�{����O~4U!Gl��)h��W!0���2���*rc��w�������g��qj�k��p'qI�]�~�3�(�h�C%�`p���3Ffx3(����������M�T6����M&~�V���z}j����m�l鬧�(�y� �m�����������YV!·�M�:<t���ፇtx���Z/V��@�:�m�y9�D�V��T��� E  �zn��E5:�*�_1l���4�8h'lh�ߏf:�������t�^%E�'F�eL�Y(g ,djA�0%5�bt
�i���_�<��iƾoR�RvďƘ�C�'��j��o����8��kb�mw	mV���44���4�����W�)��+�׳ܷ�>�z����ޡ����N�j�N���d�o[�ok�-���݄�!'!�I^�.���{�/���;
D��s;���;z]I���/�i���}�k��s��vG��!*�P�[���ϓ�~��g��f��1m}͏V�*�^��4�ltC"�S�R�'��^�	d�Ɓ�:ߓ�}qp D�5<���4<=$s_&{�?i�����8��W]�l+�r�1N���]ѓޏ'�î؃Ju�:ˡ�\%�e��5K�w�'���f�jyN��mf��Y)��d贈��m��2d˥33�E���� �϶�%��I]P���k�)�x�˽��w)���u�q��DQs�)�q�ʇcT_I/ �C�31��7WN�S��$�w�TE+'�:��}8���!��{�0�`o�e�d��?�v�^7��������.�h���[Btrݫ��K��.�<=M�&n�=�+a��);Q�[��Da���ԕv��L�r>�.eY��M,�����lXMf����3.U ,H=�b�gH����F怽��X���k�r �(6cy��oմ���$�_�W*d/�=��f�s���
��&��:S�o���� �u8��>�gf�iZmv�蛚�L�����ih�U����q�==`2z��)jtw_!K�"�[��2���}�{k�/��L��2�2G�I�[�5\����u�IF4xޡΥs|�}�̄@\��$�!<,�E~�j+p�z-a���<	�2��j��l�ލM����n|.�%PD6��ZM�9s�ֵ�w+�w��sU_6}c'�b��d��e��	'ڐr{6J�\.��*�/X�"aĨj)���3֬*7�s�|tN �Iz	�u�{x�����z��'=4؃���5Pg��I�ap��������I��y2�S�D����*q\�p<jpx8A�}������&{����~�-�zK���8���T��Gr �p������U��rNwd@hc[�E&��ys�/�+���PZ�~�L��A5Tq�i�)��7���\u��2"fy�T��- ����[�u�����HP�.�E{��깁&��o�������Msm9�*9�c��Q[�x-F&(�hܦ��rŴ<*u�
%]�+���B>3�+��u)����c�pk�����h�:���Ph��ح:@�=�x������>��6��!��.>D[_��o�E ��� �ߛ�C���ޠ��T���\�����^w�5�<!�s3F�2��B���BJ��`%���(Bº.N�悦�>%k-���Pc	F67�NB�[AH��^�Z��ޠ����/@T*}��wt �ӓ��`O5�߈Ǻ�*%z=S�w�Ws�K-�{[�8e����c��8���н���';�PcpS,�r>�T�N��B�#�d�4�x
+ Zit�/�;��%S��Jr,f�O[�/���O[��f?Î�W1�;�`ad$肆.-�h����LRu¦fy��f@+#�^��	|�(��bb5��<�B��s�
���1]bp)���b�����!�:��~w+t���5�����L=V�8�r�@���e�N��j�'[y%�4ӻ��~���aRG�=��q�_��`�(���J��j��5���E*�s��e�%QM�o�ʆ�wV��x���k��WV<�z��(d�$Gnw�,o�Ο����Ԉ��      �      x��[[s7�~�J[I�����Ȫ�H��*��ZN�\`7H"�n��nќ���ݪ�?�_��9 �BI�k����Mv�~�����Z�B\UV��Yy����PH��©���N}�U�(a�"YJ+�JY7��N�BZ%�63N��X�jkM]��6[��g���X�o� ~�g��+����ul���}1s����b�Z�oa��V�v�0�BH�,s|��8�~��ݻ����~y���Y��t\Ҿ��Zh\�NȖ�
ˈ�E���+U�e���V���ı�J�g��9�RY%+	��6�r�Zb��]+P̿���&a!q�Z�:�Y�5�dNLa ����B�uV�L��I���<ӽ�t�w4�<�~�J�|�����t`Jeee�#ѺRI�q7] �X �TV��+cU.t����S]	\��TU[!S]j��T�����Z;pN�u�g��ũ�UQP�]&t*nꬬ+Y᜷V*��Bf�*q#��6e�#��M���8�$�P�P�(k[����:[�17�,g�g��M����ѕ�k,��)W��n�e.2��0�Le�h3йL4@b����A%��L�Z�R�T�($-C��lf;����'nL�G�����x�.�gI�c��ݏ�AZI޼-Ǜeo�ZZ٥+��&jhf��#c5����R/��LݨL��,��sbj&�E- � 6Q*_�:5`Y!�QٔRPkrr2nR�ג�:�<�6�e^T5����g�U9%�n*.L9QV\%�l��CQ����1�q�� �ݏ��HR���Ba��*�s�Ц���I�օ�=\)���L�28���.)^cm -!(�
��H-sy}M\�tWxɠ�m�A�#4:��(��!y�Ar����AL��>'�d[������Z���MŽ�e���N"j?���6h8�|�<l#`x�\g$-)t�9X���ϒ9�Ѿ9�#xG�W�UU�A�X���,�N
槆��C�ט��Ftݚ�G����I]z3^"�5y5v5yt�ŐM�~O��dvX�Y�|����/�hz��u�w���?ņ;U�9V^���辊�#���߰�G
�U:Pe�f���kX�+Y�a �Jg�(���%�]��߸Z�t�MM*��g򾆈���"��o/9
@�O��q3y�����b�!��]�w˥����*���vfDMp��YH�5�%uw�0��v�q�K�B%��'���
*m7��;���*2 5�T�h`�����4��Ũ��U��]�m5ۿ\_��{��b8P�:�P�$�d��oء�T���d*�!��o#i�\{ަ*��/�p�X6e�(���� !�9�&`�0�3(,�@&�y�SE�	�]�4Zi��{9�#4f�yt4�"�2C�HkǷH���AuTt.���`�豓����E�\���u67���"	x��9$ :�3�"8\�O�X�+���K.���f��I���J%˂A��@�� ���Ns�1b��O�ef���?}ºz��/��g�Ci]�ެ:?K��sO�b�3�u����J�����(��\�'�6擷��������d8����Gv��i)=B`�������0>�ж���	�}��v�v	�s��{*�!^<Ɉ�,
�A�)�hU�S����c�Q���7��)>R��,�e�
vfF�^��R$� �T����F¢��s���;�G���`F�#���59��s��$�or��!��e�&���T�F�iI� W�H�ى�{4xq��ؾ �*��_ٯ���JȚ���$�2��p:Ӱ�5>��D��!���P��Ƨ�Q��U��UW��|�ǉ�a,�s��g�RΫ����_�33��X�I�k�L=ٚ!4Xp�`�Px���g��hf����g�e���Lͫ;[�w=�L�}Z�4�ȜN���?n5�J����n�>\D^Hl��O�-�N���,P&��Ӈ��do�����a�u�����0	�@���������Dk����0�x"��&Z'=��"��8����׉�;�@|��ʜ�ǲOU##�L�=}�%F���	��(�����/B�jՔy��o(q�F��52�0(�
�x�O��U���x;=����K��kh���~�q��%0�V��K�ڼ,tGB���'�mڷ��N�[C��O����v�F��T����@g�]Y&���)m�$U��e��	 rd��v�F�kp���i���J���2�g�Z)UĚ!R�*�\.��@���&¿���Ɨ��(z���TL�}-4��%��3���׊N�M 6UK)�.S ���?2XC�Xl�ޫU2Q����4�=��-nMF���q�'�̗c��Tye`	D�}˘kɝͱh��,d�_�	��u�nE�'���Q��{.�hsn��󹦮u�dѿ�Y.�u̲�3�Ze�з�4h�>���^�����B�r��	�y8�J��Uw¢�KU���j7��׽���T��¹��~k	�*3�DlO��b��p�k[x���^����STv����N��!:�25B�������ۑR�����Ks�@X��"5��D�Kl����@�bV�;iq��B(�/q������X\�j26K���`���r�L�Z���I��:\��tq���/�u�@E7p�	sX�A�Ln��?���M���Gq���4�����_�CxO��hm�]�o������q7R�9X5J2}w��6���2<�L���y��R�ՠ�wh��*�m���ّd����A�An�]���[\���K�]J|�2FO�50M�+˥ۗO_�vS�]!G�>�8�amj�r>a����^��sC"����^lb��X5�B)��y� ���e�iU�y۸����!��{� �R5ׅ7��.��	�^0"U�螦�Q�h����K���7 bi�e���f���7 ���<����!$�tk:�F�Zf�[ȸA��|��������(�w�������@�ۛTQ��e�܇I�y���wF����[�t�p�XZ�D;���,Ӎ`/UV�	�VtaB�O3�qy	X2ԍ��AM^�X�E�s��	�U^��R���2F�b:˄�;}·��o�}6�<s����{�����_^��w�\�~GJ�@�F������d$n�jUe��dߖ��M�w�P)B��s��|	.��\���Lt����$oÿ��\��m>&�z���[��6��S���H�֔�!�a��a��N?�]�c�f��L��t���������Ƞ?b�e�h(��߳}����ӎw��OI[�ٴs��)�7��RiPa%�*��!���lF�gVr�"��8��1~W_�-�a�>O����`���Vi �
���d���+���ǶM/zG��x$U|�����K7�p�����I�WB�E۹C����"[0홊��8��T
��A�g,$���b��`n(p
������2�(V�����_��Hؓ�%$[{�c��bM�TA��uC �Ί4�s�G�l[�i�r/�L�����rC2�sA�΅߃�F4{��/�{'� �>�kI�F٥���oH�4��uc)��gM�R%2��8�h�-D����G��#��E1Jh����O����+�V����xr�i�������n�R-w�?��ȍS2�w��G�_ׅ{6.����H�)�&Cp�&���.�X�![C��.�i4O�4����J�e �k�o2ډ���	:Gz�&�����]J���dnG�PT�hco47�Id9�[}�\I�\��*&������j�D��s]�L�m��X^`d�!�h(Aӎ�c ��a�:X&�F�Zp�k\]TxRTBA6q��y�p��&�����2g|nŜJy�&L��`BSg))���O�����C��r��ow���Ԏ�џh����^�@��u�;��T#����Mڱt���pox|���hﻝ��|�oT�Mo��Wz�H	��d���y4�q
�hΏ"�LG6ɛ\��Z,Q�
���[C]Y�8Ju;l�� y�K v  ;�0k_�d�nl_�y.�qz���&�3��%>��I�����y���4O�v��9�D+���ltA����9.���5�)���E�~S׋���J�̘o?j,�x�h֌�4Ï"*�a��"B��<�ٖڃIO�uH�%k�c�a,��l�
n#���C�������*.:��vu�K�(���_��S�e�-T�N��Žgx�+�E�5X>h��`���}�� ��]���gH��[`���B(zˑ��k��Y7W�����[�*�Z�o��e킞�{�O��{I~Yu�s?ƍ�svfpA�ib�"$
����!��DBc{@�Tv�T�ڷ�S�}V�H��ɭ��=��2�/ dA@����7��f�"��Z�����T��騄�[��z� �o��H�*��94�B�2
A��&@@YW<}�2d<!��w�08x�>��Coe���XӉ|o���Ljh�2��	å^I
�)����e�-�$����_���a�(f�<�8C�O��E��a%�r<�_�}<�x�A��4�D��WZ��Bfk��uW���ჷ��976�����X�'��7N���%��8$��Tw��]�1�Ǖ,es�wRq~�LgiV$^4޽y�.*`�eT��:C�X�6J:��[��`ccY����k��OBA����j��*�������{���|;_8��p�f���4,�q�zEC����ƛ7�ja��}��)�z�p���W$��~0ז~�����0L�v� u�gd���ƛ�?MO+��o+��aSI����4k
j1�[����q���'���WDM��fD�Ws?l�Mz7~�Əi���m�h��~8*,��'���x����#n����!r����ѣG����      �      x������ � �      �      x������ � �     