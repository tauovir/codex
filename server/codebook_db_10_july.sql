PGDMP     &             	        z            codebook_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    in_house          postgres    false    217   %�      �          0    16433    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    219   (�      �          0    16441    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    221   Ē      �          0    16835    notes_dm 
   TABLE DATA           G   COPY in_house.notes_dm (name, description, created_at, id) FROM stdin;
    in_house          postgres    false    256   D�      �          0    16447    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    222   �      �          0    16455    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    224   ;�      �          0    16465    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    226   X�      �          0    16473    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    228   u�      �          0    16478    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    230   ��      �          0    16483    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    232   ��      �          0    16491    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    234   ̕      �          0    16500    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    236   �      �          0    16505    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    238   �      �          0    16510    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    240   #�      �          0    16515    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    242   @�      �          0    16520    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    244   ]�      �          0    16525    subject_tbl_dm 
   TABLE DATA           �   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish, icon) FROM stdin;
    in_house          postgres    false    246   z�      �          0    16533    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    248   ��      �          0    16541    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    250   ��      �          0    16549    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    252   �      �          0    16557    tutorials_posts 
   TABLE DATA           �   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    254   �                 0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    204                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    206                       0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 92, true);
          in_house          postgres    false    208                       0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    211                       0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 2, true);
          in_house          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 6, true);
          in_house          postgres    false    214                       0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 545, true);
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
          in_house          postgres    false    247            )           0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 67, true);
          in_house          postgres    false    249            *           0    0    topics_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.topics_tbl_dm_id_seq', 26, true);
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
ʜ�%����~5������g]˅�9\E	�������W(�*J%m��g?��7E�%��F�L�ر�	�4v-�Y�$;�������2qm�݈L% �#Ҕ0�Q"��oĜU�!MWݴ�P]��(��9��+��nr\��iH�%���9,���*㶂��H�2�����L�y���q�0�a��\����Q`��DN�q�#9F�_��P���;�;fpk�Ϣ��� "z0kp��x����?�La      �     x�m��n�P�ח�`��@�\.�4��b����&�("�_�ք�/����3�3�s�3��M��~J��q��>�IYM'����*)����MKm��"�B��G�O#��V�|�D��u�u�:�*HO����#� �Y�ە԰�G�	���>���r�bj҂��ʴ���}Ainl��5��w6�'��R��,h8�����@K&{|	�G4;x>s'�Y�/W�������~��?\���`�6r��]H�q%H�~﫬�΅ʻ/H-C�yA~3E��Zh      �      x������ � �      �   +   x�3�4��2��\�@�Ѐ�H�p�IS.3 i����� o�#      �      x��]K�$9n>����\�	H�G�ڻx����=��a�tgϤQ�FV�x��w���:�����jԡ���>�H�I��o������;�x�;c6v��O�>=�/���ov?�?~s�������_�@�� � �~���i�������	`� ��FtM
^Cl��N���8FB���`G�6�u����)��鰿��̿��7?��z��?��BD�3�Cɧ!���$�%ʐ������nj���p�y�3���.`
g�_j�������k���;��J�nM��\�yM���j�F�w�u�ڂ��Q�����OW@��ߎ�a��SN`�ڛ��:�j�l���	��������3�Ȣ���"uh1b�s���?w���s� ��Y�Qp�����ݿ������bbr��o���|��8�72�@�ְd:N��X������;=�T��c����qN�\'ꢏl�S蜳���;�~}؝�}[gt��w�w�(����/����4�d�H.��F�����������X��J�K;lYm�e�ͳh!�Fi���o��o����L8�C�,��6K�@�MCG���0�@0^���?�^�~]b��Y���q�ˏ�Y�m�����ˋ;u����x~�g���}������<G����兜����I��/�� ��g��׋�3?�!t>��\|��-�w�<�*�~���o����+�ځB/���.�-h��Av�裻�PP�ԛ$F�����p8e%�z�I�Q6ib$���>4kYǗf������x:>�oe��?���g6V����c8"6�砮�c}�2��<�qs����F��&��Ĝ!Y�L��L,�!���ER��$���s� ��TF�+�WRP�["��p~v^4:�5����_�5��&6�Ɇ��}�r-��â��%b��+W,z�e����:䠐Y���(�S+lrTȼ��t�>����׳��DaE"Z�LF#�;�fg�\?��C��&�޺�����]?���<����!S�ho�y/6��ѯ�B�q�'�F^���}�Q!���F�e	��@�D0�7���1�`��^�������N^��+Òl��P�1��G6b)7(h$+Ʀlw����O�[Iχ���cM��g��+���?�?v���`�ry2dҐ��v�-U��m�x�r��|�?���G��Fà�;��&�;���E���p������c^|s�VA"���[V���\�P<h�x�I�M*��:t��y��`��ͮCG�N,C��ӤР�Z�ȉ?H)��[�еd�g����\�P��a���XW�*���Y��e(�mO
��B�ڲ�M����Q;/���Ϋ��[�&(N�}�I\�*w-���s�%�f�P����s�	�	�Q�!��&^YE�:��L��O&`�"�+��j|-��/Z���63�e�w�;��&�3��]`_��j�	��v����6=�r�lB��g/�;�3>E�c�Lq�RL(���d����RL���xȵ ��m>O���M��z�l�5Q�1�	(�ɴ���[�6z�n�Z�d4���kr��lf�j� 	R�9N0�g)��f'HN�&5]��H�*6��p�kC��	�����kA�� OM� iAvQvccЄ6��Y,��y�m,�����w6�h�D�hA�|�&wEM����3� r^�.E9q���/�9�(w���0?�W���8��%�7ɶ��1�.�6W���<=i֣������5�k�x簃�~���+*�䉚'��ENs��_͓����Lٺ͵�F�Xqn�&@K�yB�&��R8�v�\A�b����ja#V�6]oV���G���Z��04�R��7]Z �X(�<Mׁ��(ϓm*�V�1��>�'�tz�:p(�:%l���V$1� 6�9�9�N��틣ֈʙn'FXh���i	B��WĦ<�x�CG��B�q;���Hx%KO�t�1`���ǖZ�������x��	�����:H�G���Q<��M�a8P�W��L�g������&�7e��m9,À��ŘA��Zzð���r�ft�dK�<�,ŀ�-��a�Q�A��7\Hm��k�7;`G���F&e�{��H�tY�3�>�Z�p�V<i�#����-�h�QN�=���%�v�myN �wk�Aa#����bτ�Xtc��w_��/]��D���l�.�]\C�G�\��a᷾�n���c́��^��X��U��� 	K<SM�I�(+M۔'i��w@�+��<f�Ua<o�b��1%m�;vSHb`��D���b��o��҈�)�MG BӴ?�xP�s٦���<�yrl��P�Z�x̓'o�5iw�������L�����+���B �>�_<�`�e/4��z�2������<m�d%���*�X"�+��������3�%�0r��_�v}�a�t�3�;N��,;�"�9kb�ɘ�Z>~�h�J��0��b������7� �7!/J�6�@�����y������{�t���1�˹�����ڨ??}�r?��ia�w9�c�=���4�@�jU S�Ě�h��݇��g��m�w+����,�q����{~&�aHr�B�H,m�w��+8I�d;�G�fS��l��JUf��k��͏�����e�a�Wl ��%�}���!
0�a����}^U�6��Xo�E���4dng7���^֑���H8�g�U6��O�p�e��F�ڠ��r"���r>uv.>m3�|��b�Kv�,�sY�V�+�z�K ��R
ż�(��WV���b��+�į����R�k�wm�B`�i��c��)�:�<b�^����V�ā��p��޹�8-�eʶ�w%������^K�A�W|�Oʙ�_��D��A�p�A���W���S���jL*GR��$j��T���^�B��[_�Ѳ�rй��E��$+����007��O���sM|	Kˈ��qg�.��.�8ZR�:�vQX�=��Ӑ����xߊ5��W�aD��H�[|#�+͏7�r����-	�nS쎭���~�c���f-�������y��Y��r����[T��r?��߲�����N�Oǧ�׀Gbe�N��r��n�ko��B�$!I"�a%P�{��������5���Owy_�������rb����|*o<UWbb,n��B�<d��h�q��Ӈ����g%3���p{�R����T�����1�(��b9���2Fˏ�'+����`oe�/O	7Z����H~)RjF��N��3�mË0Z
I�X�D�}	=�%0���ݜ�FK ɮ��,�� �e�x�=c :�C���(�<��B��凗:����N��S���ym�;-���j�b����h%�4�܁���gj���Z�Jn)ٲ�l����k����?|��h`�P1�W�-�(�ͻ�����^Jh�f���2F1g�IBE�C��{|��4��V�c`��u�#ڼ/��,�����0b�<�r�úl�x�?��c��ÒD����ϗZ�5H��gp(bDq�����a���&�]�#mfK6����s��ɖO��������Ir��|?�޲�}��_bƟ����T"J=�����W�/����~ V��NS��w����4�X��PA�b��m�X��_�{����/=N��4c��#�J6��^�p����%-=�4�m}:�1�ŵJƻp^�������_~�?<�����оd� ��ch� b��ۑ�Frh����:)h�d����ɛ����(��&�4������#��!H�K(�0�����ܝx���t_�ky��F΁]��B	�:?�_�i���#�H��ؒ*?�Z ]�?-{KƮ&�j�iQd��}b���<�i-���{�7@52�?OY�Sr5��D�<,a�a �P�y��%x9����ҽZ�kCQ��鬯'	l#<�OyJ�<n����O���� p��u���5�?n��;�G� dg�ې��k}w�>�( N�H�����fg_5� ��~F��    �J�[��'�n�~��;.*p��ȰyFEd������?n?�ڣ�d�>��ʤ'��B|r��z6��Yk��[=�i���0��-�B=c\��`iGOH�U�a������I���x����``�'��Y�k�A�9�g%US��`;��k˺�.��18�6dM��W����tP멮?�`��.h�vI0����9kL��z�8'IE�e�~%&�O�L�2|k������1��a�V���B�zX<h��Nq�*	�S�.��5��g8jp�U;�
i�c>�>L��P��	5X,Z@y��c�`�Ɲ�F�S���'�P���mt,��0IV��'�G�,�a4�>��޲kR�*���^`/��T����4[�����Mٜf�lP)A��WS6Tl.߄� �<ڦd�� ǜB-�ږ�k2��tr[��ق(ޯ��Z�5[̇J콙�%�������{����,�k��!��GckX��[��h��(��ͮ���N1��d�܍��JH,�o9��%��Hq������33�Y��a��:zM���wA�mau߃����&���j�8g_���k;�*����
k}�_Ѱax
�^�21�^Nð�Of%� ��a՚|,e�"��R6m���ذ����]���.�.���I�{��Ͽ��^��+��ޤ�8���ZBO��TS�z�w��*��o��0���9��&^�-�R$�K�Θ�Jpg���1���~5���.�s�Kq}�A��z"�
�
܍��1n��~XP�����8�U�4����S-��܏�d��j�S����8�oly����˘L����_Ҹ�	R�ن/�)V�3����%�f\ĵ/14=�D�G��1��\�%VHMŎ�)�HV�&��cYޡ����d���ll4�@^�B"�r����4A�L��6C�5A.V�Rϯ��٠�Y<D<Ԅ j��p�g�m�` �.�$�����W-|f�,p`�4��o�	��i��s�&�c"��\�T����4("�9�M���vf�)��,���	����#H)�(�YMH@NqB	�o"��Ȼ��&�F0=�A�P~y���*mI���b�+�4���_J�Է*�i���\bC>�1x_"u�܂^;��%�#J�w(�����?��:y����:�8�ߓ��au�QC�H� ���M�,hjy���ǟ��W/\Ҭ�e�������XJ%\Ȝ\2Q�`��e�-�D#��i(Ǟy��A�h$�X�'W���x��&M��ke�ˤ=�@>Q�SQ��Q���{�}|�C��K4�s���
h��^��V<�D�3d�4��d��_�5�<�ֱ���Z�0�M��V�X54�M{|n�X'�߉yCѭ�&���)c{CSE�@[�.�7�iu�%�/�.�@l��J��sY��a��
�T������')�����;e�/ПD
����+ۆ��^��ǣbBW��U�A���׏��d�УB��Lǣ�:���_B����F\֥���7c� ��i�(MsX��s�:yA׉�?��P��BL�\]%a��x��� �^}��l͇c>���η�#�'%v�]�7��c:I�e߫8����NR�:p���/��c89�b�6�kZZ�f��c$W���s,�`	P�s���X͒�^R
۱h�0��p-Y�䗷ɉ��Z�	��w��г���}��W��y�H����阖t�|)X� �ph�2d�"Po �a�Z�D�[���z�W���K*2J>���寂D-�r���KD��e8����c�9�mX@��a������8͒�x66�@�!;��?�w=MHH������֣i8��%a�⼂K���U)���͠A�J~�;R�sd7�_r-��:|��b*���ϯ�҆>�Xj]����4$�o*z���7�J;577�3�z��������?�a��F(���j��R��;�O�ǚ���n�|���|d�&';�v�>�w�����������p`�������T�D��!��wW��k{��NA����Ԛq�@_l<�rLȻq}`��8%R,`saJ���a��&���kg٥�Y|N0@�nWHQ�H棕�^��$�r�	�����XX�b��:�f�Y\:�/P�,�	ǔl���9k+��I��|��%mEM��;���Դ�!Ecs��uJ�^#�i�U3�T�B4�	�&��r���i��4qL�I�6SӅ�4M.=ʺ�WCv���������>�~��?�v8S$7�Z�Ac~���؂���VA6�������}�s��[-[@���WfJf.�p���#�1Q�n@q.���B��5��i�\��8y˹��A�
��҈"�)d�c[���@1)��諐c,�
4;E��%zw8~��*	a3@� ^j\�!(��~S�l�悽�]�u���Ry�w����.�>u�è��"�	�b����+��.X.�@��	b&�`j5���D�)�.t�;Wv���$�I9�%,��8�����q%~�-8��r\.A�UۿgT�$u�:H>қ���9�(#���q�3�bK-� 7��8��[v1�{�oA	�R~r�n|�e����B)b+��]̡"�G�-H��WKt/�&i�\� E{eA�%l^�����ޜڳ��Hb���5=���ْf��Ҏ�0Is2�j�YIP����K���CL���X��B�Zø\b�%8�m�n�SR&�-�7`�
�凰}2��`�h���zL^v��WS6�P0?�	�mٴBa��H��c׏d���,����k�t�/�m2�n���W�gX@FZ_H�*#O�� ͦd���ROr�"���[��&�ǉl�_���b�DNS:9%����;W��L���a�c�w�Y���r}E$�X��7l������߲c+6���1N��By�������iw?Ww�����hK��G��}�p���cd�8���Sݺ8�S��ҘB
&���t�x�	r)����f�����*ȚR."��O,��#�Ѓ�9���>��N�ǜ1k}-���x�kq�Z����?���@5z-��d78�]��L��$
_.�nj��?ؐ���Q�Of-�4����a�:%�r)V�i��8�R��u�b 9�`5����Vc�'= \-H�4v.�����-a	���%e+EW�<W`��W�C62��v�������\���;o���6�v�-��Ȕ����['��|_�_�[����b���ܰ:j�Ĝ��[�v���J�rec���PR�Ǌ@�[������ۭ��$�Q��;k��Lʓ+�z�|�[%���"�+a�ݦ�ڛo{bШ�~.oG�5{.z,!)���1�<�n�I�f�dƨ�"4oy+Pb%%˕�B���ɟ��tK�s^���B�mbK�6��S�R]��y�kj	�ۡQCS>��a걪%Ф���λ���
h���t�ۂk�����9�H��x��o��HΕ{����h=>_	(��[������I�c�[I���AU���|haVP$��t���p.e���J^�>s�h<�;�h���~�S�l2�����e�r)E�=Z��h٤����7�^͹t�Ǵ��P�9��RY����l�)q!��1�D@�T+Q��s�tYi��a�xԾ�u)V��̻se��j�B����R_���4)��k��7Ѩ�h�"����w|߄ 4AN���R������~����P$�\`[cj������l �V�P����)?��j���^�C�P�w�W��_��S��[	5|	v�ׯ�O�gE�+�P������	�
୆�9I=�KM�A��"�]EL��_;�u�����x�yw:?9͛%�Em��C*��� K:��N������ʃ�#k�cd�����J`-j���^���Z�䄃:`���~�#k���D�Kޅu��hI50�A��*���Z�(rB����iqbˎ}�(oqL�WIrZ�(�a�CX��}�|������Y��y��i�Qr�R�s¤��9W\�c�4�(b���98�� �p� ��M��O�O�����i�o�߷��·_ �   �m��,�n�K:�k\Wx�1*F�O���ޡ�Ѥ(E�v�CL�z�(�hʜ4��$|+J�)���A�ܚވ4e~�����(��L�����W3�� �]%�7P��$��y7��޶4�������0�7      �   �   x�e��n� E���L��k�/�"F���`��C�~N#��}��p}��F�P�>�����A�
��oHoF�p�5
��>������"��%�2c�t�|���p(�~b�����.í�ǽ�`��{�D�2/8Q]���m�u�:`�?������u�=��n+��g���<]��gƀU�Q#�/Əs�F�4���j|��)X�ȼ���64Uj�a�V{�	���R��8g
�����i��� ,c��      �   �  x���ێ�0���S�}��g|�Y*Yn�f�8��j��4{����1��?�SS��k��1�����e��W�/�s)rPG�����3?o��O<�窨�K%b��+��]]��=8z�����P���2�� ��hj���wzk�9����`�G�م���7\��j_�}�UȒz��/�й6tU�����w��pe�/��J2�2��B�3i��*_�O! B���B��xI�4���kD���!o���|A�����%G4�����ܿc�-�&�]��D"�Y��R�}Y���t}~躦sU�{y0w)̔\�����e�ܦ0�XH�΢o�43�O�lF]�fl���y¨nlɡ�ڮ�����=� �:�B?R��F��$2Yf�S����)d6h�;z�:�8��<����#��@s���T�t����дũw}9^��J NZ�j���_�i��Z+�Ҍ|+�7���F'v���i�Ql�a����r��w���H�E�E���C0�7�#Q���s�[�� ͑��P�
9
J%h��lq}V�c�F^u9�#
.U"lCH�sG�_	2�!��)�|�G�{���0�0G��:!�q,4�b�����FV�\����������M�      �   p  x����n�0 ��u�ݏC�4��i#Pm�F��Rb$u!��M�������ѧ��|�z����X]Ij㊯z(Ͷ
��e0P�	��,��+؞�09�t��p�5\Ŋ/'����-Uz�S/Y�yr������d
߭j/�*em��v������~����Ƣ;�y��4�+�ߕ3f<��[ 84m���5��wb�0�S(D	O�M�!E4�.��PYh����ʉ�7��i��#�ЙG/U>�;��	��YC�lm=h{��8"d���u�ԍ�h�닒[Kt#-���� �>��v<�����ul��tmg�<�x�lP�K���S.3]tk��{��n��b����mV���8�      �   �   x�]N�
�0<7_� �
����ZzT<�Q�,6Z���U�ލ
�,���ø����Yi�ܾ9l� ����\��F G�OaD�HLI����,?��޸<I,���n�X�$DǴZ�6X�,Ͳ8]��,��ݑ7H�F���asB�S��z��,tKÂ�r����Vw�@*�w�O �0I��O�I�k���ʷ�<��~�{�3ZY      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   0  x��W]o7}��
���H�K�� J)-�i�A%$��̘x�?v3}�G���_�sm�!E�̌��{�=���|r�u���d8=q�ݞ�/'�+��q�ɶ�*����s�s-����F3o�b���5�2����m�9c�L����n�n&��X��57�1���gJ���̺�U�:�MXzs�3Ӱ&�p��t�g'�p�.,�Tإa��歀�k�6A^��r��H�l�^q?(�q���\	�0�M%X�*�WBK�=��V��3���2$.�YI��.a�6�zF�O&��|z�xz��LpL�'������ɕ���>����Q��UF��m���b�X<:|v�4A�=ө�ԍ�.T>X��nej�2�;�ޱ�V�Fj�J�;V)�������Y�e%,�.�S+x�K�t��m�®h��Vp	uX*`�)�a�q+f쏼�wB��:�BO`h�2k�{���tP��R���2p+T�Y�����Q��;���l	�d�W�ո�%*�{�p�yc�5���'��[l
�w-�~�U�m��/�oV�Ĕ%�K�N~;���}�-��-72]���K"�Y��DoEɖ®$e�{� 2A��ϟ�q��� ��ə�^������� �{�� ܍��AZ���婰?���n�m��S]T�`�2%R6��+�U4e�
@����OK]�P�yr�A>���֚5}s�[ ��m�¢��Jч�
���-��{br�+`��\V`B�B�E(p��C ��<N&��f�}v�~���z['�0�"�_Up	�BLA��]1��"�=|��|T�x2���eR�<��Ȁ�Id��(*��L�͓����Fx�G�&��Q�L5;^�Qps�!� BM�5C��X~��۪�^lJ�'[8��y�I4���(P4Y�,���TҏE�D�Z���X�Z87c��Xm ��X�=�S����#B�v�y)u�)؛��w�������|^�_/�o�|q��_��W�b�-}3����+?:L޼��6kxr�Q�T��k�6���?���'���s;i�u�V���F��Z��p���aT����r���İ��u�E�B�j��=eڻ%��@R������[�oӯ�s��t��� =}z���܋�^'�4�\;/���|@��D�MU�����Z�D�j8���k�X�f���E�Pנ���qw4��$��H����E��8���@�nd�j �q�/%��\Ez�r�B&(��;�>�jN{~��ز{��,��O�ą�<�AR[|�Vfx9x8�l3��]vح̀��/�~��ҒB�����vz�}_�2���e#��	�h����0��=����~5fq�BM����J�t�h駙�Nopb\f�cz��5�b��B��0���Vt%��-�u���BD���LZKb�M���%��H���)+�U'��.���u :gH��7�*z�U~�dd�A��ؙ�O=�J*s��R1�)�vr�hk�HJ���KCq�%��	��F'�� S^u��Ԥ���
��������?��������b|���x?;88��@      �      x����r�F�0���)�0�K)i^t���U��l|>�~��[{�"G"b` P2wk��c|��'��e� H�֍ʑI$0��鞞�������D�"��"J6~�<�!/�49{�רMOĳt(ŋ/�x˝����?<�����H�b&�P�2y��1*�I~���Y��3j�=HǏO��D�,�fb���I4��"�<J΄���?<
u����4��4DT>͠xǡ�¯� �&2k�gY�C��0ˤ�����p�Ey Σ"��4Dq�G��e��q��4�<xx:�f�c%��x�SNϦ�=c�.�a[|�!EI!�!��M���S�u*��It"|��a$��xM����c N�C��,	��"<�,ϣa(�p0�6��e�9F)��ڟ�E����^�0��DpG0d0̿ɼ�N�1@ÏD�`�zxT)LE"�¾�S0��z�f��,�0��4�9�ڈÍ�F���:����������q��E4)�QCx �2�n2| ���Aζ�}$���x��E�0�|�x�kDxkD�����{��&@�o��5������"�4̇�K��@���6�7�Ӗ�s��"�j0%H���T4�#��$�|�04h<��jD1�AB��q�d�
���k `,0qB~��i!��I�>���i=L��N1�NK���FҤY���q
��_,<�R� >�(����j�L��$��}1�9����b�f �"�)�e� E	,�� {��@�!@�x"?RC�#��k|��I�����T5Tz�'�>pkf����H&�� �����e�ɧ?P��8��'�8LΦ0]�ɬ�I�p�E�N��f�&����f�U)G#_���@���<����F���\�� o6$3RQ���J3�n���M+po�U4�H�
~G3���pf���y����y�0v��4���A/=�Y�F�>K\E�|S^h�4�N�q��4ƍ@�@@�0u����Ul -�&R-q�A Q�qz!3�g����)�39�Y�TEg#�]��&q�x�k���&�)lq�KZ�0^��,�:=� �ϱ�t��u�{3`D�@2gi:�=�B�cnah[����!JX���)?ۊ�m�`�iS��8�m��E&�<Mx��Sy�k ?��c'�(��a��a�q
u���'Xa�0i��Q���*�I��
������aZ��X~� ���!�.�h�*Ь�`���V 0���\�N�����d�T{�f���T䆜�fk��kB/�`��1h
�~t����g�����Ca@��L�X��l�6*]�W��dN��0�Q�dd��;�B�'����Z���<7�27���N6P!l,��E+$�.��l���	,T �q��~�oC��x�94�X�'�����n�eO]��4)@�/�,�j�m8K�1�f�(�YY��gd�%�4C�"�Ձ�k����v�uA�|�^�����{e�?�������7^��S�z"^d�
��rZM��eP�~J0��Z�D�
��[M�`# ���S��
	0�q	n	��2�ڶ�&b�0=X��A��[24�OD���^������o��⋣�1�k�W��m���u����
�Mh�)ғ߀��0��E^H�Ft� K�߬�[���c��!�1
��<�~�&��X�<d~ƹ�K@}@f�`QA�6e i	۳B,np�k[�U����C�2�cL}�05QuOS�8�=;�L"j�F	�˔;N�������,���u�D��|0��I we�6K�P?]��#������A�9���|i����J����g?�!�P�h����"͆0�<W �������������'�B-$�1L0j�3���.J���;,�$��>dT�R<|*�I��\D*`����ф'�F�#�Ё0�ӏz�K�8PY�5��#�r�	LO^�b��q�q��>���dg'����@�l}o���n~z���Vj�]`��*��U�(k0�)pT�j)�� �=�Mj3J�ym6h7��Da\�(4����]�aS��B����?�>6���z�g�d*�Y� q�0g�<(�Ĩ�/A;'��6�h(e�F�,��t�`yey��_E9��C#q����(R��gB��	
Z�f��¼j �9����#v��@�BǗ6u��A$�+�RK5 `%��r�XU�A3'�rS�w% D�g7� ��f`��; 	 �*�ӐT3u��ŋ���G=��3	�#�)���Ag _�?���&Q�"�L"/j<՝��_<eh��K���`c����m���9���[]wH5ÆC=sm��~$�]t:[v�ƹ@���	z���	�;�N'��{��q'�������z�M3�(������ȳ��ƣ�F��o�[�	��m\�vao��^{��A�G��u��,:�r�9>h��V�u���/�";��N]�N�Ǖ�m����*X	G8
��`����R�% ,��)C�x�.a�҂%�xz��X�!)�����SبfH~J�jA�8c$<X�D��Rwi��6�̕�����Vy ػ;ǎ�@�*3��O5�S��B)�9-���\��%HBf�+0��\+�0Ds�LY�e���aj(7 S��f�(�q�N��٬ʚ�/Ը�va�'�̌1ߨ�- �BY[i�	XlV���&`��@V��%'`�	��7�R͐���^]�2V�32���w�~o����ka�~?������?�`a�d���N�W��'�Y>L!��d����*M'�q*~ǹ�y��i����]ָ;�P���gU�*�$�������ڒ��FlG�c�)�ZVZ�qJh6J6��}��P���@�0%?��E�0BhUB,�+���9B��7�T]�S���Q2��q&X�h��(�H��Y�xQ+��M�:��͉�(������jց��l<�p�T���_��.�G+C�aK����)��}��TXK�L�˖����;_MC�%���b����9��_y���FG�b}i�Ǜ ���ė?�����ґ*�!m7	����6�<i�I	�l�B9W&g ����k?w@��06@��D��ܾG�q9���Y;�o��f.3R�4�<7(8��sR�d>'�Kx*¯��g�xl
�
u1F�D��2�P?�^hZlfMǘ��	�6�lb��U}Y+�%C)t1�G	����0�@��%{u%��d�R>=���5���uS|c��U��J��&�j6�U��7���WQU#�<qנ���P�B��d��K�/M�j��F�71�
�5M�64�ycq5��d�����vos�T�J�r*.k>�%�1�q���)وI<5�*�����Kx���
ҡ�/P��3/�sE:���]�����ĩ�\������X�T��I2�74�IT���ɗ�/�a1:�u�3��T�ة�O@NҢH�Ȋ
�<���yk�� |��Ϫb��_Z��KK�d~��$��O?�zh�h���{�px��S~`��hG�+�7��$�蠻CX���z���S��)����N~Kݽ���f��Sqk=����pO����8�%s����έ�Խ��z��S��zھ��\���U�I�έu��zڻ���ZO����o�wt^�H�Hpw�~���,�-�Ȁ�]�<����Ȭ�𩆲�W(��4���9{F%N�t�v|��at�al���'��V"���Oј�?Ƕ]儐��ߥ�B���8�J&s�1ѩ �o�;���v�j�L��)ns�t�g- `��:h�]��y%{~����{~ɽ��{5s�;.�s�Y;4���ܪ)�sJĵ%��3.����c6S���͵��S2�񹄃a�@��ݪ�%&��s�%�7��<h�W��.%���M2�gr�)��[|��k�q%���n2k�L��=������pK��P�%Wـ̬;I��B��E̬�e�P�|���R�1۶x���ׇjsKTj!c_��[������c�n�m)�#�S�g���'f�3�z��`Fy0�<�Q    n����N{��{ʃ=����`O�̞�3�B~)Za�%rxw���J����5��V�H}�
[�/V���b�Ֆ�Sm�
qז�,��R��_[�£jKUxfm�%g�Z�l�i&�Z�Н_p�y5�ݒR�]�z��;�&��/c��E�9�T��#���U̍P�f#)�9ؕ�8�,�պ�M�8��͡��}
d)7G,��u��7��9�x]�P�{הA���ou��p���%��5��� �)#�0c𚅊�`mι��7/�+�:)3v�[z0ں"��}�|�u�U
���8i�QvW��}��H���зJ~�
Bs��:@��˕�M]Oy#�����+��ץ	'F�ܩ�����]ʩ���k�])���,�ZI�~�F��t.����2��w�"s�����������sh���g�A���B��@.65��X���ɓ@�b�U^+u@�{��JAF� ��eF5�9G��ї���O>��=���{@�'O������'"���N������V.{e������M���"~�{�����,w�:�d�F�`gr�~!�3�OcZ�I��`������&��7]��G��⺃4�'x���0�6s�9�đ�]�7�CU��|�U['��9Es�x�o��t�.�4j�=�S�}�?	HKf��s
��a b� 3t,�u&�|l_jg�p�3�ϳU�/�~����{_Y��8zʂ����*��(5�y��gf^�X���D�kdX��:�Yڟv𿛂��#���ҽ��kgA/���̤Vks{n�;���
�_�	E^y�V�˶���>s�p%���%>C�+���k��@ηt�Q��G ��j�7��Zr^�����z���}!��@�͸�:��A_��q���љ�f�{�Ϸ&n �:s����k'.X�����uc�[�t��ܹ_���0��V9^�c3�5�P�A���~��-�xi[���vˉr8Ƙ�Y>�&6^5�K�0�ӧuK�G����΢ls�z�'\��	Fj�V!�b4�TAU�ٟg9�i��:��u��QkM�2�	F⼄�m ���v�"1�D���l8�6�jowsl��T=CE��Q�cY�H�ˢ8����hn�Z�F��8	�cU[�KMW�n?�F23�(: vv8��R?�[���wT�;���|��zy�cXL�_sOߜ��}}M1����#�SH��P4��S�I �WQR8�8b"_�G�oS�;�>�F[`�:���4�(�ŝ�v��������7�������ov;M@Fs��ޱ�U�}G�s��;��4Q�0�6 x3ߢ���D�@M
�yٱ�{���V�G���[Cݕ�U:��|�[�`2\N"�Z(��j��4�Fŧ+�� �[�c�ۖ�"����Y���nLz�43����8R�.�Zr𙏟$ّC�((T�=H�@Q��u�Ks�㶥�I�G	���L�6�R�7ŦyW�D5u�~8�L�,Qq<1j��Q>=i)�t,x'̕|�;�U�������=�Q�:N�e)�"�tO�?Cn��&E8��N��4�Q�yV��T�傲
,����0��o�ٯ��*5�!����SU�
�֜;�R���w�tnZ�9o*c�}Q���<{�U��y0�
�}��+���Q�P�)H����(���c�G�@�
M� ��N�1*�
���'|��O��t��3�dU�\K{Jѽ~x��O 0#'��/IDX�o��M�ڣ��b���0Y:1�1�'hO\lnD�rov�8����QC��I"9	hg�M�G`]��b`K�	�����4�PE�_����9 ���%.�����%.Ǥ�"������X�����,w9�,KaYy�����������i���a�!�%���HM�#�^¼vg7A��n�7�g�#H;{�8]�<]��Fӵ�� �w�q�B����t��!H�^�:�[/�I2�c�N�����
q�ϻ�@ʟE^�ҕ�1�h��2y���d ��bCs/�Ұ����Z焆��e'�%���4�=#׌��#�(#U&�%L���6k�cݗ{1톎�abr׉��u�v�"�54����\��'�J}�.�^�F�I.�Rg1�m3s��,	�/�=���P�H�=g�tD8L��3�:�.Uɻ_u_��k"�1j�u�)�9n��m������"n1� Pc�	J�7ڠ�^�����Z��5^ϩ�O����)}E���4����<P[�< SŇ�v�������1\��{��A���
�q�9%��š�c��D��-��4"Q��)���Һ����0�����߆Ҡ.*�����	'��K[��K8̈́�������>\(��%E��@5�gG�J�{6^���cm���\�ݬA�� ��7��<����l�c�=uQ�[ݲ�����!*$�}���5iwz��}�?�?����St7�u\�R�`��?�[�`�R�`g~��A�wЫT��A�V�ښt+x�f8���<E�K�4H��+��\j�
'd�O{~�S�c�K�k��<j�Š�	;�sb����} K�=駏�&R~���\�� K�$�O)UHy���pa7ٰ��S�R�����+�@�i��� H�#��(5IT���3��fz��%�<�w
�����3M�'Vٍ��S��T:Q7��a����U\%�y9�Ny��Уx��������_U/񜀲Y�8�g��N���c��ڂ�b�"$�A�	iE�ٱB���&�c�H䣐R�'�I��d�M:�Ll�dB��=47j���[S#̩E�B�Z�5�m�����ұ����X]-�O[՝�E{4}���Vx��PiO[vo=F�0;&a^�͕��y����o_�z��%Y�/@�w����?M �R�+�qg�]�%�*75/��j��q���!�����{��}N�*�����W�^��9u���NM7;s�<�*��#�Pf3!~���(?��%^S�ܤx�۝zWU�/����<�v;\�g뉟�1�t)t���)Зx*�r}w����KLsN��m,ױ����'߰�Ga^{�|�ڈ�"��9�qvL�k5�̣I�֮���:H�![�~��*UNn��bBյ�7>�
1Z�����fv�H��%u��QV��x��zo-G}nb��'9l
K�^��������T-����rXRu�`�`������U���8��ܜpR����q�,7\c���Z��rS��t�l��-U�d�ܛ�x2�Y�xɜF�+���o|��MEYp��sC�:>�`��~T���a�$�Բ�w�����rLl"�.��P��<D�jn�;6�������t�yo����t�N���q+\��������8�y��q�h(z�o�Pr(�%'�Xh��v�G�� »�[w83�Pe�fW-��+��.�m*�Ay��q����S�#��P4ѹsV�VB�O�bY���	�D���O{���)��Ik��P5?Þ7�(��pQ�PAΤ��N�I�I�'w���<�Gڵ�w���u���s?*Z7�P������m�����w��y�y�.�"^�]��B>�e晸���tn��'K�Z��G��:���	��D�5\�ɔl/�kGcT���8����;ݷi&P�>P`��i!���q�j��>*����y��EJ.C������;޶��jI������SB}=��M�����7�5�9-�5¸Y�v��iʮ�;Fb�|��]7$^˲5:��bܹ%x�|���8Y?pqKI�39N��E�|��-��6�nv�K}Δ�)��{�f�7�Nx�3�wk1��h�*�DbST�V�v�|q�4������<s��(*Y8����Vj���[�,�ף�Ni÷�a��	�|�9�0�����˄�аG��i��3�a}�x�p��I�n|� "y�lkN���h�ub�,�����}5� f�������aڹt��0hӺź�՝C5�V���)��=�`;<%Ӭ���/�#��FRߡ)��$��`�:֊й�K�7��Lyk艽V�K�Z/�ͣq����o�<'����T�/�)��Ȑ��    ������}݉#�lkD���d�Dd�
}ܾ�򆥥`e�j������Ƚ�8�s�I��'o��!(�8K�tԅt�Z<��Y4�X�I8��he3l���a뿶Hi��\lvZ�[wOuxX)�tE�.D�cr�Ob�ެWJL���^���ʼ��&��A�^����z��L(ǋ�侳NX��k����.��)�.=�=i��W��M9�
����%��:fr���P�k��Z�����B�}�QC�z�	����jY2L�E�p���TQC	p #��ŏ�;W7Vuy��Q�i�Iw�y���y^u�;��'S�{����_�~��Z�g�	lƳU{��R>�k���uq!^���a�����o��7fґ�O15A9|/Zd�u�F3D�u�[����f�/��-�*���~�D8�A���|ӣ(��ty�ɚz<�r�F���P�;�P��}J2�Q��t��1�L���y�f"=T�hp��ӎSX���aRf�S��~R�I�Ǘ�&��V���Z�A05�`���*iQF:Ę��]��V��V�Ÿ�-'��,�M��|3���f�M�͢{��.Hm"�����I��2Q��<�"ܙr'�����{��g��2\J��	��Oi�8⌎��'"������z�`�K��m�,��=P1�G���Q,Ք��j(J�&Y��E�!3�_<V����//��_߿x���P�'�LI�Pw��T����4��4���!f�K3�VMA��L��|IXM=>�i�g�p28VC�Z�0'}f p4�	S���F�UM�:½A��P��Ip�'�tg�s�8�.Ԉ]���ˡD�!��x�������//O�ҿ�f��b��kQ|`};�8�d��L�ӄ7�5�{A% �Y�c�#�̝�բ I؎)�z�Y)51�����&�z��4�r,_�W�۫n	+�4�76������?�������h�V�ѫT)���E�9JPq���5;��/r0��ۧZh��oN#���p0��}\e�Q���Ve��������	p��g��Q�M/'��8��ST�����v�E�*j���g}�e�h�ֽt��e9��H����L*��n�Hx�32���,.��k�Is�K���M�q��M���^�Y�<�m|����/^�}�q����>�`I�s�u�h���⧷�_��o�����Ï/߾��G��*��.����V�Vd�ß>�x��^mS�v�?�ӗX\�~��M�\2�z[b�ģ&�oL������n���5�d(UR��� �/	�ז\rmNĘڄMN����_��q�r1�Q�M~<���R�q�!{��w��,�ͣ���#q\M�NЪ@����+u J�AQ,a6�qm�!Еj��J��W/h�?��n'���O)�P�"�&n�X"����}��^	S���G�BY&e�t���R5��G�1˒��R��sr�WJ��1�U'Y1g9��R7L�5���y�y�i��82cy1�3�ҁ�;e^��J�y#s���B��CPtS�.a8��l�����&?F[�4��e��R�b~cfr��J]9}	+�L����Ұf�����dO�*�x����:�id�i��#��T�^��k�`��.� ^�u���jN�נyL�x[α�Wp��q(Єs��S���&�Ax6E%8�:��d�A�t�Q� �g�2׈ԉ_&�N���B�I�~�/Xh�5��Z2~E�r}��.����Dvx�v���S�|�q51��:�_��%�����$���%�Y-A�,
-�O԰�3X����G5���?���2��]&cH���I<ϭk�m����$�}sTtr���J�W�U��Et-^ɢ��d�oI\�pB��*�]��PJy�}rO�i��f��vM5�<��@��js�`ps Qq����V�UO����W<S=�g��Ay�.�o�	[��"�����y���c�T�(m��mڵi���5������r�XÝ��M�aF�YQ2���{1�ޑ�@�:�UE6�;c�5����\��I�֡b#ee�|�f#ٳ��8�Z.Wn
���y���Hsȩ�F�Lz�͜�C9�(3��a�A3}��$���3V�xF�V?��U�{��I���6O��\��<�V�}�	�6�"����������]�/�jp�	�����"��햋u��z�k�4��K��ߺ�kʶ��Q �Ӵ+f��=lJ�C��Ah�W���<b^<9�#v�GP��S�q�'��)���W
_�- QPQ�@f8$v�ә�{]Gsz��UQ+H-UI%j8!o�"=�l��(N�l��;R�e齘�Ƴ	�JK�͖�bB;�f��F���iO,�)`�� ��C-��3��w����TJ�M:dF߷*YW�+��Fi�g���j�SGO��J�	�V����p^�=�Ý���ql��!w�$�CE$��\ �Ŕh�({f�1�MĹ�ܷ��v�m�J��8:�0�*&���/��p;@���	�G	0��� {�M�h$9���@��rTB�4�<̨=s>6��	/������S��VP�(`r��1�$�eԛI4э1D�3?�b��q8<A�:c�/VZE�s��!�#���4�s7��}ږ��I�P�C����9�L4�m�%��	���O���U!��U!�a�i[h����|�����2���H/� �d���|	��p �~�&��q�Rxg ���{Ó(������\���a���fx�T4c.��?�G-���"�M�!�#գl�3N2���P;�q[�T��IK;G�@��GJ�H�\����)a#>���qn[o���?,�J��
�T�!L�XH
~�B_�����17�.j�K�j��9:a�!N͹?�|r�p�>���5+���+�/����\*^���B����8](-N�h��}�$�ڦ�3�.2�^�0����F[fyn_a�Wڗ�c4���#X�`̐��ߧQ��� <8 r$*���_^��8(�Q0��й����Ɉ��/9�*��)�[�&*�&�98����h�~7SK�H7�(6��2�|Z��CBsx���KR�r��0|P�& �&p��]h�04A[Q���mz�=�c����Ƴt2s���	�H���z��6�jLN~��p���g�K��z�{L2��:�;$/&}G��lJ��Z˃{Ȋ"�6]j[�=����#���Om
0ݒyi��<Ǭ�&�ҏ>��01��m��;2+�Zof
�gt�)d�w�6��G���ca�\�G����9�TH�Wߙ���h���,�&��L��5���B��Q��(�
�Hg�r�-���մPs<���O幚]d��5�L��ڡ�:3^�7J(GǗ�ʢ�m{�=��+�N�,Ř��ydUA��P�Wk��_�l]!�
�@�~I���G�����}X��BYcʊ�oD�*gX�n*�^*��Cu��r���!^���������Kpc $&��ꤍ���XZ�>/k�v6~bͱ�bZ17i���d�a�OO1"�+C��@��NzFL�:.�!m��#T5��a�v���k(ZT��t���K�ߣܭx���Ak?HhJ}�L�1���d��%�0�խh ��(�Ӓ�λ��GC�v���N�x3���',)gL�n �m!h���;&�v��4�9�0���qeY�$�hB/ �i#;WgH)]��a�dI���.�����0G���|(��M6�B�5荗������ͨ*��*.�A��`�O=�N�gi�;����^��'Ag�س?�*w��-h�DJ��(��g����!�����Š�ɜI%�G��O���`N��b
������.Y�j����zI+1ss^�`�l�F56�h+3�hJyJ�D�m�]�Baӭ�O�zo��WTT
�P��d<���V�>�g{�V>+h��c$�	9�Ɍ����y[��*A�A1l34�ӧS��Egn����4�N4�&6����j����(5�ɜ�Uh��
X��H��;�4A����6Ci��>�\fx�л��9j�n�;��s�!���5�h2����    ����<IC�Wo����mBG���Z���ژ��W�E�nk��ss��_3�^i�����Ȳ4�8���e1�nk\��]ٷkE]L�kn �ƖPnAuW�`')�D�����?fYu�DHEe�[���������d�>MC��;����8��m���Dzܲ�$�k��r"ʔ�>js[���f�8��տ��v�(�\q�2 f�Ei��i˱��ѽ�0_�E}-���Z�����c��tŷ�=���ߊ��4s߱�Hm;�Dsއ��D�O�s}���@�����.K��{x���>�\HP��xM���Q4Q��Ps���-�"���,⴪6+_� �)0~�ň7^ؼ1S�`��`��
B�i@� T�_ޅ�����H�c�%:Z��2c/�]Ƈ"�CKm�M�}�4�=y�&��C�l��d�ʦV���D��D5Y�D�N&2�!{���B���"�k*���\���P�=HW�TݫnG?u��}x����9���C]` ��7�(���*X3&{F�B��s�w��SÞ��9����ދ�a�C��W�X�䳍.pC��ʬ��vU@���O9���e�JG�����G�͹�o����(�9�͚4�h�N\�P��D�'�]�R���:�})Hj�l�y�m07vǫi��(��J��s8�Q�*W�ф��4Wwy�s��z�tv&_DM0��c�S}�Au��ssV� ����ޏϝ�;�c�A��4����>�+��^�v�J��W��}��;�#a]���ݒ+�a�B��� ���m5��m����$Ժ�&�M3З�v9ἑg�u����ժ�\��Ֆa�j<�u5��.�̠Mo�ѐ̣3�c���(�pɇvK}�9�����ǭ��n���J�SC�W[!�a�.݊�]�k��ȧ�`��=���p=�_��M}u������R�޼�;��;�
����%p��n�������R�:h��[z��)xzK/���ݵ.t��t���hP/Ͳ�˴ąȨ��7
���Qa�|%��]��Q�`a��@
���� ��zWx*?i!,�z�~��*Q6��@å[T�pH�'k��8�Qy8̀�xɠYe��8� 9��%��v�}ALO�s�WTP;v-&� P��d���q;E_@Gd�j�J�u�zc>�W`Y� �Q&�GN*���>"?*.�**�9F� �W�z�N&����/�Q�9J�t�4J���OFNl��9����v}Nҋ����2��o6��e��U[�����s-ڂni�@�]F�e��vu�evx]vaB�]I�/O->�:1pV��+E�r���r�����+�U V�+����u����uKK�Ѧ�2B�)�
U/%�«���ݕ��0��;�W���O�ϐG�'���/^<��PU{��
�_���2�ƫ(�K����DF�t�������Q�`��J�*��s�����(�U�E���u�w��w]#6�k̟�>fѥ#�U6�%��?��=u�m�3�U�������������O@Gb�z��һ�� * �<�5%�W8\�Z���}к*�ZL�Wj�0fES�Oa�i���W���q�ɘÐ��Ϟ
G��q�MT�v;��o�mՔ��-�߫�m!�R-LȖ8ة)+Ֆ(��C��V}?-^�vE��7⨧fx�c�ry��h���9�ÕS'*9����Z��5U?���խ�e����r��I�R��q�}VI��ȋ����|�v���0��a���ZD*]=�E�F텁Z6^���n��Q~�����bv�0�/kgS9�N���<���9�(ГMOq�ٲ��i&��4�[ߠ�T[�ڣ�Te1 }P�v��0A]r���%L�]�#�����3�i	�͙G\>a)��g��\_E���W�}ڪ�_ϣ�A��d�����}��hx����}>������^F��lG?�����R/������K�o�[����s�y:a�oX��/uD����޹^�?��Q�h��glT�}�Ɓ�b���$�*<�M�>�[בLԱ�
k��4B�?�U�#���:d�t<��	v�V�s�8�]�<F��Б��<Ż��\��4]	���c��^��m(�o��Ԓxn�ㄅK�^PA�d�P	E�k�+�����D�e�Ǆ1���� !|���z��2[���^�ry��Ӈ�{K�j([N�Q�F1��b���
:�����/ZYT�4���-�bꁺ������L�W1^]ր��86�^����^/��|�C����V�Ģ���:�ӛ�T?;a�U)-xM��_��QW��ru��F���L�˝%%�l��=ETv}�I�^��^/�h����^m��#�#21���_*U�%˂��Xfn.N��b0�m�[��Iw}����=N�iFq�<��Y!x���lw澈�6rf��i��&"�~1F.\I*��1ݴ�wd)�B�}]\�J.9k;��o-9����������8�{(�P�x͂s��R�R��-iQ|�{���h����:GM&�)���</�⦊�@�)0ω6�9�4�/Mh�����l���MQ��W�v0g��XI�C��,�Aɜ�=&�I:�w���f��G��L�E7��a���;��鲇���J�6P��&�h?I��*���S�谿rAo%��B�A�'���o �1����p���~9�9}�iŔŮ�M�e�tt�^�������g�;�R�#��e���Ŕy���/(e��uEt�m�	�w��-���t�h���(���t�̂���6�c�s�;�^o�П��2ȥw��5/�%?�\1�TMJ�JR7�mc��"���S_�E�K�U�X��VPǙ�GP�{ԭs�e����:�p�$��9���wp�x�8�l����s�t�
�L��փ�.e�0�!f�Y���`n�<�Hܜnx	[�&a+YYC��hA���?��G�T�?�����	|�z���� ��/A�8[���SJ�`���,Z��4,0u�L�Ht�m�J�����{���`��ڼ)v?��-�	�Ӝ��w�%�`�'X�Yxu��8��9F�@'Z:f�=8UR�S
�HάJ�>ɞ�~-W��^Q�C�Zl�
:o��%����y��#�ЗN��>���n�YF*��N�@�o�=%�MA[��L�ct*�*@�É�9ަ�(������?CH� E:ӝ*�*���٢�~�O+�RD�e��^M܌�չET�:��3{	zDs�
"1�mg6K{�jŸ�1�����
�I9EɅ<���}��9T�J�dB��-�I��oe:a i>����(.�חb<j-��SEj������].�鰐�l}�M�WQG?S�p���n�Pz�W��57��J������W[�
T	@1�}2�Ӝ70����"�Ȁ^�q�]�$��4	PNDJ���XM���A�T�TGF��t�~MVq\=�"d�,�b6�-��'�5T"Q��T����N��[��k�U���9v$ЖCE��D��T>RV�qͯY���o|���/j�_mFa�&��J�l���T6��t֦�k�;�ɛ� ���V%���Ժ+-�秅V�t�{�x3�/���rh��"<E�OucoZ�*�(�3}�(p�̲�@.V)���(������y���L�(��J��YU�d�l�2E�OԿ��$9�yb��5ٵK�[Ȁ��X�.�x�kY�K���WcK��_���^�+����fH@�.@*��\X`�=H��yх�p�0^�E����\7KMyG�|�P}]9�ӤjաI~R�=�V��m�dW޿��۾�r^�eN����8���:>��,D�zD�aM�vG�
������K�v��3cs��#gk��$�J3ju��n�tr7��Bs�)�bg��6�W���=@Oş.ǨF�L����Eϡ�>�u$�L����D�OPm��
���(ԙ3� 0����ƭ�F޴���q1�<J|�vW�����9�S/:j�D��E����D�EI�s����p~K͡eڶ�\.�$%�JaW����S��	���8���aK�o���K5Z�J��|�<�R��������5y5Ơ���ڙ	4�m    �b�4~uQ�9m�^�0����4�T�e�0��	4�d� 'V��p�y���1�����x��x�T	��k���o����_������=�h�M�Y��|/'�ƄW8Cz_�L5��E��L���Pd�i��Q2�~�+�K��ɕ\�X
NS������<��lG��jC���lsx����(J_�X ��9 �*.�o�r�� �PL�8'V�kل�t�$�'�_��m�u�Ee��̓^�ߗ�[�`��m�	���׿1�=r&�2�FT���"H�`B��.<����J�F;w������+�v��E���S�?��W��a�fx𥉣k8I�htM5�&��+�A���5�}i^�JpX�C֥���V��%]��Sg
���Z�I�,�~�(�.!.e�1�P�T�����yv�35Q�'獡+z�P��.�r�<�1����W	;��V�F�fl�\�Vj��_�c=����vP>�� �&K�ۼMS�{ug���m�Dr.1��O��"�줘v�pP�"-����nV��	��.�g�5���|�#�]�>��a��~{7R;��	Q�)��Da2[@P�{�S���,|��[� ���q�%�IX'4�����ʺ�و</����� q4�����0~�VSV��K���Y3B��! (kG�HY]�$BPQփ���6@���� ^�C0����$`�������J���4��>Xu5�ԇ�{��\~`gh�^�qH)�ђ�pJ�4����y~7{t���g��H���Z�z�o�p�C�{1<\sUſs�̰����`�ŷF(���[�E�o隇�}���!�r����KM��3�D�)�"8r���@�
J����.~V��#Ǝ{�ү��D�]u��[pR�q�D+��U�ޑt��#��W6%G��N*g�y{Y�2�+��]���g�� ����![�-�W�pM�
��na�lmP�NQ8<,
��:H�8��H2B�l�yR9@YJ�+��#�� ���9�0�ל�|L��C��C"|��+�g�������ur3���ƿ���ҁ��狫F���~ckp]�ğ)�FA#J5Y�#���3[$<�Ƒ�Or	Ǉá!���N������"Sq���x��p8�S�H�@<�zՔy�c: ��$�H�i��8D�8��r
Oox�p�6��mNd��Vȉ��I�����̈́k����Du&`���
=+�/�4��)���P!^ġ[�\�,�QE��#�piǒ_a���¡1�uV5P���������h"�:�����pjsV�`$��iI�ː�T/)�_N�)�b��y'SU��@��
?������؜ٲ!J9nr �J#�!���woV��5
�n\9���b�KU�1���_���JL%\z���sޅu�x�Y:���'�o�]�eY9���M�K�|�a�Q*� 6�p��L��h�iz���߼��F��������R�]c�3�R�z�9Is�|d3��pgE0?EH�si#���ٗg����!�pN����1���5�����09x�ο�	}m��ŭˉ�&1�⪘�W��o� �»��eo�KTa�i'q�N��b�Y�n��Ïq�܎��S�e5j��5�
YZ�8�u�$�q .�B�Q�3�-]
�9^���83\zD^�0�}�8a�`rn.͂�(�7�;�`o���n��[���U�\��|�f���l���m~�f�߹��wo����m���6��5_cھ<�����g�j����t�F�R��[���v������hg� �];�����k���A��A��o��ܤ���ް��ڿ��ox�nݰ�ѺaɩuÂ_�����ݭ�Zݪ��!�
�vy�ΰ�o��3��ѩ{�MU�v�&i���N�7Q����?��t�.��T��<5:��,�X��2�����l�2!BК�����!��փ#t�`3�qC��1xs�M���A�P�T���A�P���%"�xj�r�Y{���#Џ�#���h��@�`�x�D<X",K["��
f��:S�ʁ/�0u�v+��5���Y���(&j
풁�X�K��T�s�<��g���G��0I<�$L&��ăIbYE�������}z�l����{Ã����A��_ch=>h�T#2\H����6b9"�
���X?(����b��X?(����b�p_�Ak~К����Ak^k�y��|^!�  ��I��0ӉL�c�St��#4`
��ب���	���Np�����ʔ����=�?藴���A�~йt������޺�].�
��>��^��?��:�����s��t��q�R�1#9����=n����D���1�o
YM�dZ�ѱYg߹m�wS�ګ�Z�_�^Ă1E��ӏ�*����qM�d/_:�<�Ѥ��;��L80m����;����V�1�i�-��GSK��"e�E���N�����Ҫ��v?N3ij�ݱ�Lݖ�w��-���[.��&���J�(�C z� o�}����qQ�nۼ;�l�G��A�{�^��LZ��V�ݶy�=��_1S�R���A����1oCa]_V ���C[*CX��3�����&��(�5�^NdՒ,^�O�"� Ip�VC0���u	JGQ�(��i�.��
����b�z�K��5$��|+�e��͉�����r�:�=��Nj�`�_���k_�%W�+``]B����Q�������(��1�"�);7�sF2�MSE3僔&-?e���`N೶�Cp���JQ�`'�w����f%޷�*�e��es�'6��"�9�X���/�|;� >s��b/�A��r2A� F09Aevj���u�����^iT_|yf�V=�2���7*��z{�q����^�����f�����K�Z�1���hK��'�0q�H��ġZ������.��>�����o`I�+`�c �!�K���:���cJ lPn���)�uZL��[Nr�a�q�T��+���|�B�bfNh��sd���	Lu.� ���W$l�{��V��"�CJ�%�)I�T@QXs�Ҕ��̮���F� >|��Y�Yg��,|�!�/
�o�,'��D'2��)m��>��!lѪ+;$����~��6�����wM'U�*�Ϡ�9�I�B���A��4rZ5C�Z�)�|+D>��@O~G(�`* ����&����~��b���o��o�W�/�R�(��T�:IΤ��s��6sh��i ���R:�с��&@\ج�^)gM��HJJG��Z���	|���O8����Mf&�f&[h�N;}g����-N=�0
�+��h)��SC��.'ɡ�Ԭ��&۔O70%s��R��d��m�`@������#�&���W��'�7xgʢ�)�Rzý�i��^�ĩ���6ɻ#��e�6I's�E�$rA�(X@u��]�A��Zf����6&V�G+ZP3�CSUݝL%�2;���mK�߯�(խ��i�R��W'0Ľr��`�v��EY�/�'��Q�f&��E��j,�Ƙ�}��ļ@\PumȆǵ�4���5S��� ��� u���y�~�fj�04���4jQ�V���[��R���bԒm��9
WcAei�'s?�!��ܜ4�(o��H�N�k�����K�e���*�:,m�D�\�
�1/��s�w ��]��N�o�iW�C{%^= ��b=�\A�>��Km�QIE���W��̫^�]߼������y�U�F�P���8*)u6��U�/�j�lw���iv{i4yJ��&3�Q@�8�G�C��&a�(�����B�&��ooX��?N��h���I�9w���F�$�gYsD�B2Y��D�X�����b��fd!.[�|�EG�p��,K�ɰ�'�������1x���ys���y⼦�Y�?�Π����s��h��s�wӚ�L&�u�X�/q�=�s�i�rV|��P_ӹ�zӍ2~�+4��b�k�W|�7������v�<�&�����|��-�MkJ�]W�U�m���c��&6ү+2�Գ�� �  �r��t�O!�u������z���A�C�:�U�@p�]Ĺ���'">QYW���z�|�gm�M@֪���R�{�qO(��֞
��ʺ"��"�D�-��q8��$�|x�U�*�20㯀%׵�H�T��	}ѩH� ���Џ�iˁ� �c\w"���}"����e:L$9Q�dV�8K\֝{}�vw�7��aR�g2�`��L҅���fc������i�LǓ&���wLuP��33M�B�w �e^6�B� �]"����� O�n1
�N���\�p�pu����1ʑ2�)��,7�=�s�Dȗ������t0��Bɼ@�arK��&B1���c%K3����̝� G���%�6��0��7 �����Nc����
1��M�@0�dĦ���(Q�h{G�{��c�c�Ǩ��8,�,E�QM؋��� �"4/��x���I���2w�0)���+#��=�_~agk>�X�!�v��Q$�N����a�eAgB,@ڃh�Lr@O����s\�ޥض8dʾ3?�dO���赞������՚�q�+OA�<���ߜ�Sd��A�B��i�����Q }w0� �a�,�hab��p#�����#�x:Nju�8�B�K*GV#U��������E&���I�Sm>
'�~�m.��d@[�"M<O�-�+��?�O�x$*�����0����"-�Xv$��`�.�h�?�x���tP�����T��}�����SF�����(��TQ�#Çq\y�ɟ�)":�;f�ͶPWϭ(Le�7�{����i����>��_�,��<ȅ��rm��-���d� bَ��!�熨Ӵ�+,�B��1��H��:Ej��'h0�z�x�O0� H$��O45�ٔ�e���=z�d������1E��-��bM��k�>~�[Y*4֥nݬp!ϝ���Lܛ���o����d���霿~�D�cD���n�����v������~���{85��'�	�Ѧ��Tٽ$��4�c��x�!N^*CϼB0Y�2�Ȼ���*��gn!=�r��]����v����t�4�!���}�D�OW�hLm��@+DX��Ye|����z������Tf�V��Q��^�QaWѹ����JS<���r�'�gLl���(-C�-ǎ�L�ԖO#dXQ'#l&�˂&Qd�ii �IEw7x�W.�
�#q����q ���`�s,���CHT�B-/��7<I1�;ǋI6+�a[��& 0[kC�͹m�!By�b�ǉD/b	�E�<PH�S*�u5���LR(�D�|ٻ-�:m���nH�l×�����O���=dEX�"m8-���#���|[�?f��8���p���K�^m��L{>�Ҋ2�\C<_Qm�xC�Rŧx�;VHU�[7�>*�9�Y�Jc����iă�.���S0�Le۽7��\����[�����<�A�>�0�uK�"U��.�#8�R-]�)5���5˪rf&a����)C��L|��w)4�+Z�:Ğ���`�ɇ�;<:MIrB�c=[����D��ȿ�bze&O��ͧ��������]�u��u^���ɨ#��d[�0Ѵz��t�ն�>�^�x��3	��;hi_��.�a�w'���fNS%�C�1��l�e �e ����"W�ݶp�g�/�r�����a:gB�4DqT�1�"��a�"Z��IN�{�|TUو��bI��m���s�-����m
�?�MXӃi�|Ӷ���I"��AT�Av�̧?b���F��C~�J[����o�%R\��L�p����a��{�m��C��o���a��\��'��l�4O���@�T��L�d�V·�3% �fc�9B
��\I�^^�\�S�L�@�t�]u�#�|�q7��^�.繯�ݔ�G@	��HUE��l+�N�5��{���ע��Z� +����E���u6#>z�����b:V�LQ��}*�ӻ��`��l��U��U�c9�vۻ��HN!�H}�g_X/:j������m��C�Mֲ#�v��^�زt����8[V��E�*��`�$�ٹd��D��^P� �'P�a[ALN�tT�3��N}g�R���?ޞ*}���9��\��ks���pC4ە�P���X\I"jX���.ɾ��4E�����k��/$���V"|�F����*���4���e��XlB�-��x�%��{�_��������Qe}�.|�!��V�����`���8�ڊ]���?�G�i�xQ�����%%@���ӟ����,��      �      x��Z�n��}! ��=3�H�/�"@۲��m;;I`p�93���m�[��|�9��?�/9��Ⱦ�b+���t�ŪU��s8y�m6�Ro���>yU)�l���\L�6�¨`>��ʌr+�m��Yc|��ˍ�6J{��m�ɕ�*�޻���n�U���C�]�>����nW?�o�x�������������^�>[���;x|gg��u^��J��=x��+����-=��W�ޞ=���N��ߕz�,���n+L��ȁU[.�U�Mfu�;������Ʋ������?H�nBr���5&�f]�V��|3W�'�A:�f[�L�V�t&+:v���T��������>J����d����?�{4[<�\Lj�|&��}so�j�u�|���`��bo��^�v0tc����ΛR�:�%�U���Q�h3�!ؘ��J綶!�=��6s�����Z��.�@�4UE�����h��mt�u�ym�U��kԅ�bƻ@V�C0�X�&�g�2�2��[�R��к��2�,gi��"�ϰD]�F�񭇕��Lh`ZA;��Tmu��u�f�ҕ�,TBF���``�*uaB�s�\n]
��@��x�L�'�h�r18��duo19ӍV��������`��p�r1���	9�^a�夏]�B��X��k}f�n��p漅�M>���fV�S�ڻ��eI�Z�j��5C_A�G�ʗ����R�]@�\�Rxk���B!�)Q�h
6��{�����W΢i�u�?i<U⡌���3W"N�W2KX0-{�v>6�;���e� .y�R ~G��Hء�j�Um��×�(6Ԇ#{<	��U[o/,�N�>R����$=k��P�u?�|08�pw]�4�>�<s��
	2-Ytf�I�R����d52��������D�$i�U�v�ʌ7�t`�b��%7�7y�gfjơ���ƺ�����L��m:YV�H����������Q��L�r�b����M[�[u���~8#�1�Iì"�q^�p"*_X@��H���u���g�2��)c�$��Uە0�!�b��0�F�de�H����
,Gb�n�b��B*�H��LC�$Qֺ��u����}t����ƛ~���5v< R����ySD�����(� 1��qG�rӼ��!�	�@hGI`��3hX�#��g0����-L�0��z�T	�3]Q��LeM#h{�P��+A�%�Ϲi~�}���w05�Q#�����0�uR�����D{���� z�ʕ�!��ʢ���*L�k/mQ���1"ZD�*s)����k	�1�jM�ˑ��x���^U�xe�&@3$ĳmc��Wo�#��%����h��qkS׆�=�Ll��]Z��`f~-�nFZ��ғpg��J��(��|UU����Ia��@���^H�R�S4�Kf��p��w%���h�BU����ړOɛ�{u*�1EdRG�=H�#�窰�h*j�8�/m�����n@!�|̺�<�S��>�{��;�M�3U;����/�~g7
R
�A��hm���Z��Ӎ�x$7����Ë �<��]{���4����k#5VH���4��T)A�z�q"�젘�}�����*3cm���?�I��1)K%�r�(�o?�=8��T���n�C�o� �E��z�ɬ��x��\Ul{��'�{�mK2�L���`'& ������GA� 1siE��(� 7l�-Īl��C���b�'�@Ќ�{�U-.9w���v�1�j���R�s���v�5����������T-��K�q��n��#PM�N�
,^s�.X��D�5�(�8:lhL��Ð���hoN�3�<�������IS�uo���!�������ͯ����ӧ�HYI�ꓷm����K(5PE���zNF��x�ߥ:�SL�ںv����vͼ����cI��U0���D�����	��#�/�`���;���� �dK�����u�e���!@~E��	�#���= ߂��b��@C;hUeA<͢\r�6U�z"�:�k�2C}Jg���P�H�|��
'���'�>���c�G�����c���m�
G5�
{3?��f(�Z�'��#7h)�gRq(�ܐl�ty�[�fR��P�ᠲp7q�s҃R�4
�B/ϑ�`YA�(��N1#0:Ͷ�4S/��7A�?;}	�BeJ��X���d�4fD6�wyy���P����刅J�X9
�X%e�F,�X��
�F[�u6X�L�d01r�o���Yl>��*s�07�/�-7+[	�׶62`���j/"7���S�a(r4a;���ө@��T�a�
���܈ez�⨼L�V4_$&(G�[Z�VT�{��E�����e�7�"�7
z2�r�y�6�і-&�DQi`6�$�3�f[�v2��-�}�s��0y�Ž b�q�I���qa��ޘ�&���}�"���-��P� bx ��5-U5�"}8��*ʟ[�wJ���[Ǻ��y���3���߯:��"��,�����r#��T?��������x"���4'��mw����ԵU�i��Y��!�j�i।�'9}��^�Gv�rB��Y}��,C�\��|��E=c>�Hy7��k��yG��?�P<���^B/rV=�ί�T��?@8���az4��?�<#���G�������y����ܿ9J��Ѡ��&�[�vo+P2	�rI��RWM�Ft�~�+`F.��%p��,��	��K��0��S�ɚL��
�t/�n�Œ7 >��%:}l�o%}{1ZzW�HnxIA^��-xGI/�AP�9G�$�g��s��x�e����{�"Y�kpk��F��BL%��&�7D��F�!O�y3���Yg`���� <��d�	�h/�9��j�2Q;������e�`u1�%����f��1ԇĴdz�f�'Nt�k��F���]1��P��1��R{!~�k��$�%~c�d��l;���L+K6A�� ���,��[�5�^dѶ����8g(��j��e��/>�<)�wR�^ڼ�,�G�P��r���~�yP���� �z� ����������*<���z���4ϓ�7f���j} ;e���y�V�(�é����IW�/� �7�9��))l����X�-M�MH�.�[и2},�x��`	K���QT�b,%�uI��UjxY���o�M�>>���v�m����-�4^`c����<A�D5  ��#uYǤ��Z+�P2���7P	r�&?�N�6cf��y<U'��T�&�����k������/�������ƺ��7�[����+i�#]׽��B4a�M�!��)�E���c���ý���o�����$��ͽc�\��I\��+CI8<H>��N�K�ˮ嘤	�ʻR�t�I�� ������=P7�f�a��1���r%�=�V��\Нg����G�aߝ��0H���V.k�)�m�_���}�����]R]n�]��0w��JʙՍF���ت�Ȝ��h����Rs5�+�o,� �آ�#�;@"2��|/Џ��)O#:d�Z+���Ɓ?ـ
�
��CC�֊��\���3.uj��ը�_��S�M''BG	v��%��Iy�M�����SF4F���7ǈ�n�VL8���9������F�}���m��=7U>�6��w.4Ե��E�V��p���>�ܗH~��y�q�윋�A�c�-&�D����\�#�	���#%_�b�������h��?����h��^U�P߮�dMJn��;w�g3��̱C+`Y?h�*J�:��j �V�-ҳ�S~�o��/�X�ެ��Hh(��V%L� �6L
N߽�]�'"�����J0>'�P�Qw��J3�t��r8���hk�n����4���4��k�����~ys�;�Y��w!����>5�x�nK@M������y#|����.�TzHĕ��_�b�? ����3}�$�ٹ��Mls!�[��N��L��1%�ƑT�7v�b+!e��)���@g�. h��������ఐ.�����]+�l��6F[l�������i,'�;����vh�o���W�Ϧ��?����� �   �u�_"��d�h�xo��|����r��V ��SsGo�S����ܪ�z��{��������W��.�W�����+j�ےo(�F+�Ò�.	��z����1W���]I�ժz���?Z��_�,ݘ�[��Z~=�<�dѽ�cv�o�{���?�I��      �      x������ � �      �      x������ � �     