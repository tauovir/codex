PGDMP     +    8                z            codebook_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    in_house          postgres    false    210   2n      �          0    16414    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    213   On      �          0    16419    django_admin_log 
   TABLE DATA           �   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    215   �n      �          0    16428    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    217   A�      �          0    16433    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    219   D�      �          0    16441    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    221   ��      �          0    16835    notes_dm 
   TABLE DATA           G   COPY in_house.notes_dm (name, description, created_at, id) FROM stdin;
    in_house          postgres    false    256   `�      �          0    16447    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    222   ��      �          0    16455    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    224   Ȣ      �          0    16465    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    226   �      �          0    16473    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    228   �      �          0    16478    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    230   �      �          0    16483    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    232   <�      �          0    16491    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    234   Y�      �          0    16500    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    236   v�      �          0    16505    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    238   ��      �          0    16510    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    240   ��      �          0    16515    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    242   ͣ      �          0    16520    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    244   �      �          0    16525    subject_tbl_dm 
   TABLE DATA           �   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish, icon) FROM stdin;
    in_house          postgres    false    246   �      �          0    16533    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    248   F�      �          0    16541    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    250   y(      �          0    16549    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    252   K=      �          0    16557    tutorials_posts 
   TABLE DATA           �   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    254   h=                 0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    204                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    206                       0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 92, true);
          in_house          postgres    false    208                       0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    211                       0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 2, true);
          in_house          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 6, true);
          in_house          postgres    false    214                       0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 754, true);
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
          in_house          postgres    false    247            )           0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 88, true);
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
ʜ�%����~5������g]˅�9\E	�������W(�*J%m��g?��7E�%��F�L�ر�	�4v-�Y�$;�������2qm�݈L% �#Ҕ0�Q"��oĜU�!MWݴ�P]��(��9��+��nr\��iH�%���9,���*㶂��H�2�����L�y���q�0�a��\����Q`��DN�q�#9F�_��P���;�;fpk�Ϣ��� "z0kp��x����?�La      �     x�m�Mo�@��˯���@f�]I�T[��E��ZI�f�&���m�Ź��<�ȶ�,^��CB\�::p=��d�-M�	�����qH������N2���`:��h���t����1���-������r�-D�լ��,�+P�]��MAin.���c��*W*�SJ�ubh����1)���~�A��'V>�j����,�|���q��j���h&���U���Y.*S8਋�5�UI5�~�(��/�D��:-�̨La�,�O�Е�s�SӴ-h      �      x������ � �      �   +   x�3�4��2��\�@�Ѐ�H�p�IS.3 i����� o�#      �      x��}K�9��9�W$����r�F3>����4P]�h�lf�()T�|����_3���a�N	���G�ӌf�=��7�c���{�x���l�毿y~���~���q����w�������/�w�O� ]�T�v{��������0�S�� :�&�!�^v����8FB���=`G�6��
��~�>�\������������q������=R���&t`(�t#�W��d�c�D6�>}�N͖<NO���;�% L���s#z�����)jP��|���fФA��������C�Z�Q��q��`�vT;F��C"������܍�a�Ο����7O�u
��=��E�T�������f֑E�8/E��b���q���p�~z><�A�� so]G�a��O�w?����=�.��0O��������aRod��(�;Ò�D8M�b���ϻ���|�S=6�!Xc6�9�s���>�iO�s�&_G�n��q{����:���h,�����-@���?����}葎sHv���l��|���xH�O����,�p�j-�o��RT�ƻ���;����c�C�S8�ʂ:k��4t�g���ӽ�Ff��4~V�G�k۷%vv@ϟ�>��q�16���_@��s9|8�wyq�.��C��v�SX��?��n��;G����兜����48k_��X��Ɂ^/��h�p�����s-�·�߱�h�h�ͻ��n��۟��j
�� :��`�N3ٙ���<C@�Ro�!P ����������&�F٤���g�����Y�:�,0����������Nv����iJyfc5h�(;�#b�y�zQpQ�;֧,���37�O߼�d~ߤQ��3�#k�	���F?H�6tхT>E�w/�9܎��B*3��F
�bK�u��W�N?ͦD��W=�㧉�i�!��OV��~XX�DL3�|�E����<�]�2����qj�-@�
�W�؇�~��zv���(�HD���hd{��C���̘�V=hQ�ք���d��]7���;q��@Ӑ�)b4��мV�蛭�y��I�сr1�o�aT�b糑cYD�-o��"������L�eo�����a���Z'�`ؕaI6�Y(�f�	1��4�c�����`_��Ö����e���X���l*�ʮ��ϻ��Cz5ا\��4�l�zK�-w�?=>~9n�?�S��x�aP��Y����:���8~�����S^|s�VA"���GV���7�~�x������T��u�N��>���ś]��
�X��W�I��ص��RD?���k��.��5�����oÖ���U�Q���;�PHƞ:d˅��eW�F/�v^^�~;�f�]���8MdR�M@$1Dlp��ܵnL����\�)BE�NοR0΅&4&`G͆���xMdY�k�|2;]ٝW�k	e|��l���ZFy�0�3>�o2AQ�1X�������@˱hw˾/�m�Z���Mh���{g�cƧȟ��&�8j)&��`2�d��S)�|er<��L���6���@�f��&�N=z���(���؇�d�LQR��V=T7j-A2����59Jm6�d5A���7N0�g)��f'HN�&5]��H�*6��p�kC��	�����7ւ,6;@���A҂���Ơ	m>�d��B�=�����c�G��h�ibY��5��5���!��Jv)ʉ�9�~	ϩ@G���]���\<:X��4����$ے�<���\�#���0�aX���;﫞k4\�y��Bh:�a�"�8�Ԓ'j�$ry:�5�5OR<r3e�6׆��cŹ�Ú -y��	Y�8|K�Z�ys9 ��Z����X!,:�t�Y-�rh�:1��Rj�6����J%Z�thm �c�,�4]Z@��<O���Z��Ԓ��L�ϣՁCY�)�`[�hu@��� bS�Sm����ھ:j�x@��vb������ 49|Elʃ�G<t��c]h:o'�@�	�d����?��x}��R�@P<�[��%�~{#��yB>% h���xC�b�zp��a=���R{ÂRț�D����a�P�b� at-=�a�P�q9b3:b�%j�r�b���F�0�(���.����5�؛�#�R{#�2�_t�m���	Oe-�k�V+�4�s����h4O�('�7���%�v�m�� ��b��F*W+0-Ş	���$@� ���濉!�|],���P�ީ��#g��o}�j���<�g�]��X��&�`j ��%�RM�'*��QV��)O�<(WW��y*� ���x�Ų�cJ�w&<즐�8�Vɉ����b��TW��S<.�� ������A	�e�BNZ��ɱE�fC�/h��5J��!֤E�i�݇��(;{g���tS|�Tj�������y����}������Xh;�%�((�}�W	��]Q�_>?L�g�A,Y���}6�R��c��>��a*,�`�1��YKL����D�U�,��&k�gv����A�Xa�	yQʵa ��??�>��߶O��a�p.�b:���������lB�D�	��`��UL��8�-2if���<��@(���5Yцͻv//��w7�[940eW�`���w���E�8�!ɡ5�"��=~��p���v��<e̦��晕����! �h?��v/����0V�d��@,�K�����KS`�������m���ޜ�@��i���n
eq<�#�筑pH�ګl@�E�ܕE:qj�^��ʉ�#�e�<�ٹ�t�A�_K/v�T`�Ȳ<�Epn�_���]�m�R(�DY����ʋ�.�Y@��K�:��[�l �9�6|�-6��9�+Ι�]�Gl�+_���8��9�}�;g���%@�L�����88�=��גFt������D��@�"�� i8� ������O���jL*GR�y�� H�[�m�f�v�魯�hYI9�\H��ϝ��s�ZP���'e��&>��eD���e�.��.�����u���(���h���E� ��V���h�,�Y-"i�l��4?
�H�]�g�$��M�;�$�ef���c%�6kn�������X��-�\iyDEɡ,��a��5k�������������H�lщ��ܰ��_ߵ�Cf�F��$�°(Z�=����O�����h��{����z��uo9�IZJ\>�7��+117�h�a2l�P4Ÿ������ ���YɌ6}9\��ޠ�d8||���Z���.�Sk:/�`���|��*z�V���p����Ɋ�"�f$Z�$�}0C�6�� ���ď�M$��У\���ᰝs�h	$�5X�%���n/�g@�|(0Zőg���@�!ٸ��Zga@pi�Z�$�:eϪ��������,��(�V�M��X]?�y��H�"VCɍ#%[v_�͟�>��������5X-T�G��h�#Jn�n8����^�Z�(�5I��p(�}O/��g3��jbR��sD��e{���Rr�F,����.�=��S	ȉ�l�ÒD����/���F�5H��gp(bDq�����a���&�]�#mgK6����s��ɖO���ϻ���I?r��|�M�eA�8[�ČG+a��D�z�]e�1��7�/����~ V��NS��w���_5�X��PA�b��m�X��_�{�����=N��4c��#�J6��.s�Psy�咖�h��w:�1�ŵJƻpZ����^�>��a���[=& ��}��%@Z	��RA*��!nG�9ȡ�sX��
褠A���CP�'o�vFC������t���R��j� 9/18�8��?
��rw�َ+G�}a���4r�b�J ����F�/��V ��[R�g�C���'��`o���$YM:-�L�O��ߘ'0ͣ�yx���F���)ˡ�`J�v����%L3�j<�T������s]��ջ1JL���z��6���?闧��ӯ���ә*;0�xd��!a�������~������6$��Z��#
�� ��)9E��    �	ƛ1��H\b��B	�a�C��$�ݽ�=�掋
i�,2l�Q�5x�?�w/��@2\\e�'��B|r��z6��Yk��[=�i���0��-�B=c\��`iGOH�U�a������I���x����``�'��Y�k�A�9�g%US��`;��k˺�.��18�6dM��W����tP멮?�`��.h�vI0����9kL��z�8'IE�e�~%&�O�L�2|k������1��i�V���B�zZ<h��Nq�*	�S�.��5��g8jp�U;�
i�c>�>L��P��	5X,Z@y��c�`�Ɲ�F�S���'�P���mt,��0IV��'嗣BL�0�k�io�5�c��C/��hv���JM�4[�����Mٜf�lP)A��WS6Tl.߄� �<ڦd�� ǜB-�ږ�k2��tr[��ق(ޯ��Z�5[̇J콙�%�������{��~�,�j��!��GckX��[��ю�Q&L�]܉��bL5�j�����XZ?r�K����x�,�g1gf�p��&�u���߃���w<�2ޛ0��W��18��6��/M�@�����6���1�b`���;��db\���a+ԟ�J�AX-�� �5�XʌEJ��l�҃K�a9�q��Q��l��]�]W���-R��Ƚ�W�I�pC���,E��N��4��"���M+�a 
�9r4M��=��J�l/E:cJ+��9�W�<�����V����	.��#��Dt5x���c�Di���'��qn��i.G�ѧZu��;6ȼ������g{q����J�3"/c2%fv2P~��&HyOd���XM�Nb.��ĚqE������yWǘ�s	�XM 5;^x�#YM ��KԎey�&��5� �lgc�o�� �3@���u�	J�`r޷�"�	r�:�z~M�E �r�)�@M�&p��}V��$�e=�D��C��}�¶0Sf�3���|�N@=N[��e�Ȏ�P�s�/RqC�i"PDs��ZCm��(���gn�&��� ���g5! E 9�	%@��t� �ƛx�����r�@�b>�\�%o5��X�����4~R����X0�ɗv��9�����S����
[R?�}��0��?
�Q���ȫͭ։�I��\�|��5t��
��z�4��R����>3�~��\/�q�y�aM/����?t�}�R*�L��9��su,��hq$�$MC9��S�҆���\pb՟\9,\C3�;��4�/���Γ�(�D)OE9�G��.��I6���!��.���-��+�QC{1#[��N�%�P��-����҈�c�#ŵ�a-�S��:jh������N:�����A���ٔ�����"K������fF�?	�I�Kx�%�R �T� �CiYa�J����#��$E3�5�zǣ����H��nڹ�mX��5zn�j��B=�~�~'[��t�2�z,�x2�	A�[�quX�LnVތix���b��4�a5��%뤃$�/*���������J����mx��[ٚ�|�yH�;�)>�(���~:?���Y��J��+�z���$��g�)�B�8��S/k����%i�l>Fr%
n�8ǂ�F� �<���!��,�����R؎E� ���7�kɢ%��&'��k��&,Z��C��־˜���c��@r%}�͋iIG̗�5��)C�.�`�Jt��)��s�TK�B.��(��.�_�Z������v+2��p����c�9�mX@��a������8͒r<r��T����&$�HX}Ke~��4���%a�⼂K���U)���
�͠A�J~�;R�sd7/_r-����0��T7C���҆>�Xj]����4$�o*z����J;57��z�������$?�MF��܃b���z�s��nx9�=�t�ﷃ���q��c�[49�����)�Q�����/��/��=[<�O/����@�N���B-~w����3�v
������֌����qȐ۲�1!�Ƶ�NqJ�X���M	 i��5�M0���βKA���8`��ݮ��b��G+ٽ&5dI�%��5�.h�bae�Q���mh�fq9�ܿz@MX@���)ل��9k+�K�$��j�f��������FWj�А��9A�:
%\���4���b�U!�M����ڡ�F�)�M�a����t!$M�K��.�Ր�����a�͇���7/����ϼ��͠�hИ[>Y�[pt����*"�r4�ӵ�/C{*�y�eH6���a�d�
�)(7�����p�S���
%J� �V�)r1G㤗s#
�)�dZ#:�ES��Ƕf9���bRć�W!�XHhv�bK�n���<U�f���Ը2	BP��8�
�h�{ɻ���P;����ﻊ.�>u�è��"�	�b����+��.X.�@��	b&�`j5�����S�.t�;Wv���I��rJX�����3/p
ƕ����4g��r	���+pF�IRw���#}�5�4�ed1�j��D��RK/�ō�z�Vsʅ-��_�נM)�s�n�Z�ֹ	N1�R�V����CE,M�-H�뢋%���&i�\� E{eA�%l^�����ޜڳ��Hb��+�[�lT�K�gK�MBJ;��$��P�g%A��*�/I�
F117do�$'���q�Ģ1JpV�7ԺEJLI�����V(.7����
kE+��c�ٱz^MٴB��p/ԾmٴBa��H��c��d���,����k;t�/�7��7J�����H�)Te�EM�lJv�.P.�$�,b�Z�%h�|����].�&r���)Y`��7�SU��$��>6}[��o���WD"���~��k(���;vl�a�,���z|!��]��^�ۇ����'h�\G[�E�>R���Y�8�Av���ǜz���?U�)�)�`r���w9�7� ��J	jh����b��)�"�~���t}Dz��!u�����i��3f������O�x-n�C+��}� �gCױ��F�EЙ�����9҂�v�D����M����r�[����2k��)쨰%l;�)��K��Ncl��0�bO��`�	���-�}�;�� p� �l�ع��'���%�Nc���]�\��
[z�@�ld���&�����W�Z��5vނ-{mv�*Z:ˑ)%cWO�N��}_�;ܭ��Y��X;7���Z*1�fC�Q�������\��a��G-�TЮ��B)��y�u~���P�$0��pg��Ii����ȧ�U�?z*r���m:�W{�mO5��c���Q�f��E�%$�6�4F���֙nFMf��+B�u VQR�\��\_N���-��yY�
Q�	�-�ۈ�NAKuU6�ٯ�%�n�FM�,��fUK�IC��λ�Np���b:�mA���AAK�l$_T<��7{m�s�����a(Z���W�%■`��rx��X�VR�E=pP�c��#�
���u�.�>P��\� -���%�j��E�qz�AFˤ����f�Y>=|-��K)Z�!Ъ�HF�&�|�g��a�zjN�37�v�C)��Ke	�#��˦tą��3��R�D�jZN��e��&�qP�Q�B֥X�3}��L,�)
!ԒVS`K}E�FӤܗװ�o�Q�ZE@9{����	h��<*u������g��7'�4�#X��ɘ�Z�>�!a�/��#��x%<ix��u\���+t�j���J���s��>�[���Q×`akp�J���}V�!�҄z�0D��gG=H0Wh o5|�I�]jj 
��9�*`��駓$,@5n��ͻ�����q�,-zh�R�|?Y�rZ�����]m�<x;�8Ff�,�VWkQ�l�X��*o�B&'�[���Y��.y�M�Ӣ%��l	kW�ۑ�TQ.�h�ͅ��Ė��QzqLě$9-I�{���x6z�I�_�,��yw��y��(�S��9a�u蜫���!��1i�l�QZҜ��j�w8pj{Ӱ�v����{:�� �  }������{[�&K�����Nv��
�@3F���	����;4��3��h���v���[*J4�2'�`0	��Ք^J��TnM_�4e�}Ɇr��(��L�-�q_k^q��
�w�<�@I���B����z��(O�N.���[���S�qIq �B	@�Kw��-sT9-[�YZq$�!��IJ]`I�o�AFq��k\"G|+
�)l�\ '��^4G	�r�W�׀�i���Ej��3=*̍�|�M7i)��W��4̫9��Jy�����S��T�X��kį��H�,:9�0)Xl6�o"kAL����ȭ��q�{+��"�����`O�� P��jR?�6齝��u*��t1���좾�3/c^f.��34��n����֞2����~�}�PQs��Hv�3�J�P��������Y?����<�x$�A�R!����躙q�4G>���j�h�8�@��oC9=��Ch�v9�V����G��?�O/��_�-�����_i�[�P��\<�	�S'��:2���qk���P
-{�����2�r]��D	޾�?��n��W�x3ԥz��$j��\c2Y�J/�S��)-=R��5s0��o��@�w���m�ZF(�Q��/�@{*7r$��[_
�MN]4�HJꆚ�����v/�l?_��҃}���U@Y�� ��a��O��xZ�o"����༭�b�֍�%#�J,���M.�x*+I��M~k}����Ncp2�e��<W�4�=J��*�����t�d�~�ȣ����c�|=x��ȓ�R�LF?�{~x�P�*]-hjH�D��Z����n�u[�40�M�[�2�0)�i�|�ȖB*���n S.�L��yX�����  荃�f0�%��kI��B���/�����X fk�ˤ��L�X��q����A0P%Ȇ�7�es��^ i�TNR}-.��"�^����׬��	*o��>�	)7��F�ٕ6��%���|� cgl���
ȩ���=8��F_��`�����;�U�Ru����n���Hcfyj�%���K�H��2�r�[-�'ЂR�2F�z zśO-!r�)]���.�W��4�hX9w`�6y����}�_#�ʉC�������x&�F�%)����/AbM��L����W�k�&'ӂ���Z��j?�k({,��rp�Du'r���_5��C.�(�L�3*K+��̖_��dx	T7y��1T-�Z2T��P�L9��{�t�S�L%����1�v�ufw�Vk��/9Y��(�H@K>�� [����-���F�´p���h�?�*���z���� p*����lR����r71��G�+/�9�F{�1@����C��@��նh-8��D�t��C��t�6:γ�������!���1!�6S$M�s���Ҹ�q�����qњ���ht��#����r����o����;6�"��Fct��6�n���>�>�E�)7~J*�II"��]q�K���I��I쁬�V b�)GM�}�쎹������ӯ������醌}?�,�}�c;k=��c���������Ҟ�c|id�����b2�'���������/?˟3�QC�s�T�BX������U?���w?��}㺀�^K ����8S
U �?�;tX�Y�ݽ|8�?����#Jx�d�#.�������(U�j���q�����(�]g�A� l�B��(�mk��`6�KY=~��"���(�Ϳ��m��|==6�/%�pˈ�b�����aE�9đ|�3�oY�*]E̩ϟ���T�Z��F�E̷}G"Z���{��'��������HR��'T"m�m��x�?xq��`h$-��̗���7�w��/��������ivX4��\��8��6�m�<�=�1�2���ʰ�P�f�l��n�Ov*((�u�rrv�K�ߐ6�?l��b���v���J�́�;�5�(�Z	~`��}f�R�Ir�/��-�ժ��9D�0��,�뀛��X��b-�}5��4�C��Rv�=��MGҸ�vD�>�l��a&���Z���:%+���.�A4�T�R�wk.��zO}m�3[śz�Ě�Ö[L��;�x ǸR!�u|1x�G���<i���j�[���R�l����`s�C�+G�H��=�5n� ��T�|�~r��z��MR4��c��Z�b�]�̘�$�x��(v%u&����ݕ飧��>��[�E\.����S4o�7ʧ���ˇ��an3	N�)ŝ\�W�xK&5G��S�!���&$�H��]noM���,!�K����&$aL�sb9=G�c�1�\�y�e�\�g�7�0�$�I��++m W&���0�@)9���=�]�o"��c�p�LG9�6�8ja���'�[k'6���&�k	ܘ�_�R�#�G�<�E���:��>��Hst�#s��t@��Rd��q��h��)'W!E��mz��Q�X�e�
����F�I�|�m�3�!�_HF��!A��y�M�m�$�Ysm�����u�q�rI9=,�~�s�`u$-��kZ���w;��i�.��]��/��@ZH��\�\��D�f�ML�T�۠�1�'y7/�AtL����W�Ts-�	��K5*��Z�K7�t� :i��c��_�1:�ռ���VAK�B�aQp+�a�>ib�Y���NC;	��5t�{���Ӗ@��9 ����Ckye#PΕ�5qf���ѳ�G��.n��e+���������{��W�K5�8�Dr/�̭TSB�8���c�P7��D�]Q8�"�d���{4����=�\:�l��)r I"�����!W8��Q��B��A ׊�4E���!R)ـ�+
�;.W^*5cPhQw1��.�V�eK�Igj��Z�1u���%�U@� ��g�1�f�p"��,�ϼ&k��?\۪�@����W�I8��PnW��g[���)�`S��F��9FG��L��iH��B���pZto�9_)��3&xI֚��h��Y�`лI-q#M�4.g�ڐ|�IK�F>��\�)4�4g4���e�+!5|g��Q+��h#�4(�y�4�hM�4M.}R[-�P�$�����4��DAn�/��(Z�e�β1SCRΟ���W�ģ\T��̾��N˯��:6Ok��B���XBq�ل�z4y+2j!�⧦c�폮nF�r)�����x��PK�l��'lF�y.����>υ�<�����8]
Ap�
�
D�Ҥ�:c�}5=�k���B@Ҕ9>ǂ�/tSN�Y�c)�rM\y�/�Q��J_v���u.�8��}~~�m��:Gb�&�8���$��`n����;��c��n����J+�m'$kKq�(ens�u���"��x2���K�oy�W@�1H��7���c��d��c1Y#�rP�ۀ��8�cs̅q�Xq�e�������1ok���Pqޝ�\���w�������.t      �   �   x�e��n� E���L��k�/�"F���`��C�~N#��}��p}��F�P�>�����A�
��oHoF�p�5
��>������"��%�2c�t�|���p(�~b�����.í�ǽ�`��{�D�2/8Q]���m�u�:`�?������u�=��n+��g���<]��gƀU�Q#�/Əs�F�4���j|��)X�ȼ���64Uj�a�V{�	���R��8g
�����i��� ,c��      �   �  x���ێ�0���S�}��g|�Y*Yn�f�8��j��4{����1��?�SS��k��1�����e��W�/�s)rPG�����3?o��O<�窨�K%b��+��]]��=8z�����P���2�� ��hj���wzk�9����`�G�م���7\��j_�}�UȒz��/�й6tU�����w��pe�/��J2�2��B�3i��*_�O! B���B��xI�4���kD���!o���|A�����%G4�����ܿc�-�&�]��D"�Y��R�}Y���t}~躦sU�{y0w)̔\�����e�ܦ0�XH�΢o�43�O�lF]�fl���y¨nlɡ�ڮ�����=� �:�B?R��F��$2Yf�S����)d6h�;z�:�8��<����#��@s���T�t����дũw}9^��J NZ�j���_�i��Z+�Ҍ|+�7���F'v���i�Ql�a����r��w���H�E�E���C0�7�#Q���s�[�� ͑��P�
9
J%h��lq}V�c�F^u9�#
.U"lCH�sG�_	2�!��)�|�G�{���0�0G��:!�q,4�b�����FV�\����������M�      �   p  x����n�0��u�ُ]�0RU�F��(��	Pb&!���3��<E��t�>��Z�i>u��wތ�+X5:�Z���OaT�:�	%���E�� �B��a�K܄�#�Hk���ԃ�L��OI�diP��C���_����r��2mѲZ&�%��u_g�A妜>����8��&�N��W�T����o��xlss�?^��_��P��9�J����9�2|	��S:�#���.���<s-	_�,��;�>�<?a�x��5r=ly��ڈ0��X}O�ܻ��}uѵ�Twkdh{�GB����5X ���c[@t��
J���V����pFH�����XkD=J=���k3`���j��8      �   ;  x��Q]O�0}�~��L�F�Д��g|41�v�*�m��_oK��Gn�=�~<�ŸT�2�uGo뢪���\���^=d�����q�۸�n�£Q�=�HH�#�f��@ f�>�?D��/������m�.ڎ�c�^E�d�Gn�Q�f��?O�7��G@%v(��mT�V�s��נz-�����|[E�s��$1XmѕM��B%��o�ܣ��F�?QyR�?��D�t(�����6����pj
�����@nu�k駱�xQnk�:Y��DM�G$�&�/����ˈ=����	����yVv��,��/�0� JH��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   /  x��V�n�6}����Cڍw�M��5�^�H�m�AR�@@I�Ę"U^�V��}���Kz��^�F�ؑDr8s�̙�e���Fg'�izb�1���f�[���E�'�J����V6�D�k�XoMcy�I�0�ux#XEK0P�b`'�[����AV�]��;�\�Ӆ�_�<���l���q�|+���h��;��e�ε��/Xm,{˱�æ�ܭ�O��f٪��p:Y�k�X�'O���Q�Fha�����Ɖ���-\*�w!XpJ�5���q`ް"HU���]I8b�7���v�ǃ,Oo���%(���o��]�s���f�+F�{ɲ��|>9z>�-����Y�3b��'Y힦�)^�e����&G��؝�8O�E�c���DZRh����',{^^�����#d�'Sze��Z����"�c��G,���X����v��Z>�DD�G�-�SA�ēt�7F9�6�jk�G^��-.A��Y[����k@��녨&�O!��p��!�u���BD�8��Hu	��p~P�G�Q�~o���b�/����W�ƔoOmU[�,���(��D�!�V	��`*��Z�� �R�PE������"�����q=��W� �z-�`c9�Z*슶�,Uŵ�I+H^J�k�S�ǸIДY$���΃1O�2k�!@{-�L<�I\)�&\d��[kBӚ �!D%Q�C�p�#�y��[F�"����Е���7[��Z������Z�'����w-�|�bx�V&R�8_�Zp�(H�>}�@~ˍYVgϳ�q���o�R�� ��Ɏ6��"_�>��!*%c��ߌe;B���c��j#�Tw�HH_�*�31pj�`��Q�F�AG�&,b]�t��&�<��i9��̒� ~�g��I^H%����$ml|�Jc-�j��-w�� � z!�S�H�;RD�4�T��Oo�79{q��=9;���W?�����=�W����;������oFq+a�҆�ǇɛhfO.[��ޅ
,�^4�_A�W��[�4k��TWi#�|,˻�:���X�aTd�";��"r�u�o`�Al%�$Ex��C�
�S���~����|��-�'b!_kx���+�SgKZӃEDhp���`�e�#(����>��{kk��ᒆЪQ�@��){���ie@�)��_��叜����	*d�L�)B��0�z�tbl)
�G[rO'�bF@�"��4��R-E���B ��7��dRjm��ݱӇ���cF^dgҒ6Ƭ�Ǳ\G(Gь9�!��ٔĬlE6.tFK0o+����5 �7�F��( ���v�x�^�;���	�}z̦��^��gM�X��4Ht\����N��e	���u��t+q��B�cna����,�|�A�K�Oo����{�<[�:��Ǥ�eot��쵄H[�ه���%��Tl�� Ltw�@���P����7�1M(��~���r�Y��1	h4a��	Opl��d��WO���b��5�b$O6K��{e<%-䦢1�B�i�#J��&��������Q p%]��`�$8�v���q��Ӄ��� 㡆�      �      x���rG�0�7�)j��9n@@�eK����,�$�c�b(�@�h�э�n��LL�>�������I~y��@@�H�K�$��:����2���n=�@|�Oe&29��x����<M��'	���T<KFR��L��|�^���N��g2� ?b�ʳǍq�O��G���,o�S�a2y�x"'�r$��,Cl4���T晘ea|.TX/��Q�;�kxLf��gg�0̡�Y
��(
�~M�I:�i[<K��G�D��lR�<	fi�y�"�)΂a�Y��H&mq��� oO��z���'��L�Q"���Lb�A�E8j��0�0�e:�^ �)<��~�I,r��_� rʼ-^,b*����ߠ�YB�q��(a0�Am�2vƜ��zT�Ϣ<�i��&)��'0ϓXpG0�0̿�,Og@ÏD�a�zxT)�D�"��ܾ�0��z�f
�Y&A$�Y ��r �q��[~��[��Vw�~��g��o��O�<��(�!<���4>��J}Cʶ[�H����*9�A��Z�@���֐�����;��Ā�o��5������B�4�F�K�����H6�³��2��<�j0%����L4�#��4��D04h<�kD>�AB����^���S�WO�X.a��"��\B��(~ə�z���|,��p�I�f.���>c�Xx�&�Z�����4
�0U�d
o�i틉� �$L6c�40C��Li&s(�as͆�{��G4 �"���Gj(�b,S|���`qR�����:S��_���I�O ܚY��{9���j3�%.��<�fE����ɏ��0
��q#
��LWk:��I�x"�������c,���Alg;�r4���Dx���h\�H^�H��SP�ɄTԾ�V_`��m��~����zN�.Ҥ�����Mx4�hOt�<����"�s��z���Y^(z&�0%��2|���p�&��&I*�΢ �i��F�̃
c �U	�� Zf��O�Y�R�@�̢�R�EX�yϾ�����P�B��Sm����j��,�B�3���@�7�H����L���2He���i�[L��[��7Fȍ$sq�$#���8�F�8r��ݨ;���h�vZ 1��0��c<Ƙ\�2Ȓ�� 8����3���!06q:#��_��$P�P��d��F8'�P����ig�� ��~T�!<���	�9"��r�j��ZΊr��:�աL(E��u.e�Ho��C��U�B��
�f��T����fk��kD��p'H
�t����3�����0 �Lƨ��e�C����P��xA��0�Q�dh��;�Aӧ���L[
��<7oS7,ϡ�l�B8XpMO�Wħ2Gpf�^İQe'I��������YD�?y�w��{�"�fq��x��IZ�n�yLP6��)�΢�=������$)��<_<,%��*g��R̦�\��+�8��6�����O�a`����X�:��@��Z~���no��d2��#�Ǫ�sd3ڌ!����#pFC�9�#�8,N��Z��& VW��(��+a�`���\�[���۶�xHfw�#7�r�t�c���ūWo������_x�c��5��Y>u��r Z�+��Zn�Mh�)���a?�af�)r�0`J���<F�Z�WOԾ]�}���y�;�~��-�(�<b|ƹ��K�Vł��[���@�@T��,��c>�ږ�U5ig����P���MUݳ�V)��n&5<��g�'���9�=}K�F��H�6G$D21�@c�8��dgm��^]��������A�9,����3k��.���,z�c�Ҥ�B|���$���\Ч��A����g`�w�x9��j� �M`�Q��'�<vQbȯ��QI�A�8�ӯ��SXO�6	ґ��Bt��s8�I��@r	G��@�h�G>�b�Tx�����)LO��#��q
�q��1�������`੟��マ��������a�n�6�����E����UA������c<����v�C�����-�<סh��,E�6�R.T��y���]�`��?KD��!�D���Eԋ�l��
��Pv84�X ��e��>0�DD��C
�+�B��*̈��%�'�XF�u=8J���O�4�@��U��� < 0/��\����|iS��8�W%UR����� ?B��j�vh��ZF\Үx����9, ��( �����dF4$�L]#m�"bd��Qφ �L��Hފ�	�)������ ��Q?�6�H�Ot'?>�O���b#���64p�6�d��� ȭ.pK$�aÁ��v��~ �l��l�ꑍs�|�q�������o��v;�^���x�ԝ�"�����4Jd����pr.�t���h"Ga�h�;��|r:B٧�#��A�9�y�M�$�Φ�*ǝ�Æ�?�T^��N�R-2�u-���'��md��.Xk�p�����O J�� ��^��/@�@�p��l�Ɠ��
X��P���Ыy2��j�规�6�3�Ã-I�IT� i� ��c�^)��J�}he��;8q�U�a�{�i�"}0��J9�i�Odg
t|(�2C�S��%�\цj��JQ.C<�QC�� ���@5#G���d���aU�~���P��3?qef��G�=h� �D�B�Z{M�f��l7�p���l9{N�M����j��-���ꊝ�����ߧ�=�ݧ���{a�~������E��$���b:׆�'�I>L!��x����)M'�q*~Ź�y�U��]��.	p���3jq�YԶB71"�$Aƴ�(+��Q�XIʸ��,D��2!���m� S���@�
0#	?�D�BhEB,�+���5D��7�T]�S���2��q.cؾ�-��ȇH��I�d�a+
c�U,:�����(gD����zځ��l�q�T��X�0L]��Z�FÖ����,\J>����������W����|5U��z��ǎ����0��nt$*���Y�|��߀}�7��TV2�aE=��&��B��A4��'��M� )f�uT������$6j��� ��8��탹�0*�����T� r���x=�ɔğ	�#�2����#������ǒ���o]�Y�n0&�cü�2RJ��L�ʹ��"Q8a���Uip����E㿤H#�.�(�v?~l����g.�וl�M����N�,o����;����*�����(WqW>�^Ђ���a剻U�w�8z�'�kn���xi�xV�7j��@U �ih����m�0Wb��Lv�[��n�6�KU��̧��kcb3}�g��pޜ����SîR��i6����� ����:�2�f$C:,�܅x�H�I��U3��ꝑ�UD��L�$�zCS˱Dq��ۙ~��2��C������FO��x�r��y29DR����A�������U�P4��	�W�ʓ��2�i2�ß~F�Ц��Z�	�Qx���+�D;|^>�6N���Z��o�'yk=E���[�I�����[�i~k=������1��H�7'��.�}�۹����֓k=�n������e�
�j>� ��Pwo���[�i��z:��}������G�~D��{���qeIn�J���qtEf��o5�&�rAYV>�bd2�ذ*vZ��ȶc��p4"s�P�W<%�'�	�@���)��cqb�UFY[�&��,�EI��Q3�;����Y�[��4�U�f2�Np[��k<3� v�ÆG�E�+�BI�X�_\r�Xr���^O�����n��k?7wjJ�N���ĞSb�%��:}H��z]ݱ���dF*0��pV�AP{u����	�Nv���wR��5�ƠK�v&b�����F�"��V?��Zc��'����� �x�G{ �(�a��f�D�u]r������ѓT
.]W�����d@]*��]���A�< b���9��Pmn�J-%bl���b�[��y    u��GJ��)�gx��'j�5�f���FyP�<�Q��}����)��}ʃ>�A�r�>�H�s�%oQx���!��hS��ĵ��V�BE�U�Z}��\��,^m�
2Ֆ� wm��f�-U����*4��T�f֖Zq�oT�v�j������.��F�[��Z/7~��$;��e��H���j����=��h*�?ơ��YIJj6%1F�%�6��Z�8*euh&�6���#Q�:��ԛ(x��Jt��%�轫� 7�0E��2�X_vBag��h��F �M��I�n*��9gf,k{^�wu8Vj첵�p�s�ucS�e+W4Z�Y��2�;�Ic�����^�G��C�X��x�K�dg� 4�� *��.מWVu=d��c�G�D�HV^�&��2��o����Ew%��Zۯ��g�Z�,eZIN��ѣ|�E~��/S[�p'.4���:����t�J���>�K�	��Yj�i�Ll��Ge�G��Ǐ=!��Ny�����(�b�`RZgF5�WW�ї���N>���܇��P����?Du1��XDkFx�S ��*����D�2��ǆL|Hg�kv@?���~��6�ݾNR���4ؘ\�������fm�8�[�y����f�&�ʞ.��#��bQ�a�B�StjE�F�f�4�8֡/��w�j8��Ϻj�t�2�hN/��lMwl�L#���b:a�#���[2���x�	�"a���k`�ܙ��}�:�%�AA�HW]v�������%Q8*�',,�����P��W+����b�F ��Pu��3Y�0�@�� ��V�Ve�z����;�.r;�|���O�H��fa�o�d��ߌ	EZy�V�K_�@���x���"�A��x��=�� ���й��-����j�_�Az��й������v���>!�3�k3��mv��|k�,]g!y^_���u+���+����}�!�3ǿ\)*'A�W9����*L(�0��A.��@�~Ǌ�:m˜�<��q�$N0$s��é��@M��?�(���I���)�ф��2�գ�(ݜr����k�>�H-��0�P�f)UL�{���W������ItǺ��ɸ��F��i��8/�c�g���HL"��]�b��FZgBaD�w7�f�^�3X�{��u�Ԛ,�S���ƀƋ��6��I.��b_
hB踂�����<�� ���tI����������W�5���0ư���O�ܩ�����?����q4M���n �U��+����h�m�}����e��]�<�&Ūk'���B|�?�߉��� g���4a1��&Z��W�UD��|�U����X/�`x7�� ��l�n��?M�5)0��U��
�[�h��?����9n7���*ۘ��r��B�=��g�,�?�X�l��ݶ�5q\5���+e����`�'��Y�U���D��N1�В��|�$I�PD�pH�Z�E��t����Bo�ۖP,&�Y%\o	@�fm��&�M�p�j�6��tS���X��Ġ��G�촥�ӡ�0W.��<��>�V��u�졎��Qr!K��{��tp�<4)Z���~8�æ��GM�Y���R�K�*��T�ŵ~�H��:��R���˸�0Uů iͅC(պ�pGL��Ձ����ʹ/��tߖ�b�ʳ�S��/�u�3�2J���:�Z_{m��^HY��^��թ�F�X�|����S���#��Q�DCYU �ܞDtoG|�� �؉D�kҪ=��!���EU	
��W�x�,�����'.�0 x98h����?c�����&���1��=#���bW`G�	��ퟢ�4�P�_���й ,�+8���`�d�g2/H��G,�������s�&��
�q/�g؋z���/�����F�j+�s����JȽ�z�� n�(�<hn�,�����&N�O�m�t����&NW�������=���7i�z5{L��$��v��o�Vx��|�ER�,�*;��Ŏ�Fk��铟e*=�M�z��d5�_zk��s�_�=�Зt
C�t:����x�uQJ�T4ʷR<��,)K�u_�Ŵ8&��I}'��ՙ�Y[�����G��2�a{�0-�i���4�M|E�:�)o����IH��٣z���s&M���LK����v�J��*�}���	�&����M���隶��&S$r���H�@��'(͏�h��B�OL�׺�ĭ�zA�}\.���M�k�H�lX�����,�ڲ��*E�k�oQ���9�+����~t����@~��N��mq$�S8Q�j�8:�F��zJ��
c ��/Fj/;:��!�	����4��J��g�Y�9������bN3��!�b�c1F��/���q|9T*��1��h��.�rz�u�ߑɶ�tH~F��&���s R�\��t⚇���!J�Q�[�p0�V8B��X����&펯��ǽÃîk��<Es�L��u+u5����J��J������î�W��cϷծ�'��
�$����3O��#�x�J��Ͽ\j�7d�O{�A/T�9>���l�͠�	�sb����=@K{<��b1���q%����
g3JFP^)�4\�M:*��@�Tl?�J5`u��� Q��T���J��i��Lw
3�7|��tǝ��3�_w�iC��D�.��Ƚ��1�L�'ß�	� #y�Q���d/��)K�?��(���(|����T��%�P6�:��0܉r�!s�s_[����	y�rJRG|v������y,�lpB���r�,uH�����Lp�Cs���6��B��֔@�sjQD� ��bi�_f�d��_96x��>Q���i�z��茦/�w(Z�j��B�C.T:�V=[O�a>̉�@��p�翼����o^�z��YzK�z�NV�R0v�P��޲DW���PM�oC�)��-����:b[�gI4�ĵc���ܥ�>&��B��%K l���B��u��Π����*�\�`�yH�M�t.�S�.�
c��yRhj��OP��F�Jw�ŗ��VzZ����m=�3`E��*�z[�)H��ċ��攠���K̰N��m�ֱ���ŷ��,�AV{�|�ڸ�y*�2[�̚Dk Y�Ϻ�]=Gu�,Zl]{�U�0ܾ�刪kl��1�b:�8W3�����Pny�n�&q�����f��s�v�5�dW�aBk�MNua�@=�d�a�q1v���&Ҏ�3����\L�Qx6�Д�F�؃�wQ�Z���˩Ef��sϴ,����[�MZ�sə6V�����2���z�g�Ҹ��lc��+rF7D��-��D/�ӝ.P�0�w���~�Hh�7/�� ��W��Up��X>�~�n��O{ɔ��Rg�(�7f�OAF��a�w��AΖ�g!���d����Ubvz������@�Q�f��|V��9j?(�G7lL�f�3Y�mR����v�M杮p������.�Ӱ{�g�J�JkN*,��� ��o i���=��u��=�H��S;���d|�p8K�R��M3	��x�k���6�-7n���E%�s60�����1�9C������;>�7m�Ֆv�P�{�3Z����{�\S�;?�7p�i�lЊ�]m�)���޾�E���;޶���7�m�L}�+�w]1�w{:�N7ܵ�챩�$�C#�C��B9#�+���V_0�w���_fN�I�`N�Vcv�����U����"�z�6��}��Dn��/<���.�an�±�
�R�W�M�ev�~�70���!���q͇��:.0���)z�b��F���1A�������F�F"��I���٘/�5�Gm�c��S���W�	`z�F-6z
o�J;�"�ҡV��U7����Q�hn��� �ѓK��S�J/�ЫE3��M��G��A24����&`,����2��Єv���j�07'!��qlv�4���c	a|*��Qf�A9�',ڠ;��MG���lzP!No�3�N*(���*mX�V���x���mo�[�Fw�8�lr��S8�����t�� (ʓ��(e�7�A�y�)\�Z    t�����F3۝����#G�:��0��|ɓ%����d1�X�f�VFq3����3Up26�{���Q1�-jjD2��:����a)��n�.��}�F<��� ��!�rt�o�)S�<xYb
�k&� i�M��v�]o�*P.�_(D�P��41O���������"",ե��%�"��ŏ���gl�����f��Ny���y^u�2��'S�}��/�^�~��_8&Ϡ��g��I�=b>��迮��/E�j� ���Q���w��S��`��Zr�p"�����hFhx�\q�J��%dJ�f1_�bJ�R���WM���5����B>L�'����S-�mX��b
XVDT'��t8�]�gL�Ө�q�0�9�J��p�q
�bK}�` !L�~r��O?q���d6�c��kL�z0p^�*jQ*1\1��?��"Z]�6�na8�Ӝm�hb����w�w���9�Yϕ�X�[���d�z+�=q�!�L��FA��=RQՀM�.��x\_Nft�y*DvF��cz��y)���B�8�Xr;9��%�(}�T�ܱ�lZ3ဠ�R� E@V���0�A�݋�@�O_�����݋�4�����)��|�>�Ae��+JR;?�S�̐�a��$�0�--L�X�ޝj��O�e0τ�z�[]І�A8y=�����5�|42|�2b�(`���8!�Ԡ���d���,�b�"N�s5bw�Q��1 n z����?�t����˳���W�3P���|�C��,oGsg�Ծ�iv�(Lp�{߫D�9t�iĕ�Ӽ^�	�1��N1��F�hv8����^�� ͵��W�+u�ꑰf0�Ec�~g������^���OQi��k�~�Jy,��P,˫P�B?��؉��ٰW~��;ޞi������T��N��8����p��F%��;�m���:�@�����F}L.����̳��^����v�E�*j��X_$}楷l�ֽt��m9)�"o��s�VN�G@�+�)�ReR�o������4E�"��/t�RR� q���r:��ǟ�u����߼�Oq������cIϗS�M�h�=}�ӛw/��7�_����ч�o~��G��
�p]XW)�Q���*�G?}x��.��ޡ���D�������]2X����
�� 7ac�k�����w���o��C���׍}E���XYB}�f�qB}hI�j�/��순u�I����
E���������:M8<r��='լ��� W�+�A�P�<~fC��f�Y��8�T]~�^���v;'��JP�	q�
٩h��?:����V
�����74ۡ%K���n��U�f����A`[�: ���z𕒮u�q^��4	F�laf��&w�|0p�ob=�1
�X^L����t���N�W��E~��DM�G�!�	r�0��l�r�eh��J��.IHI�K��=1��}L)M^)�ӗ���%� X��,��vڽ]��)������ɚ��;�4��N N1�Qh�=)au��:�B� ��WȌߚb�)�6O���Ė���pw�1��l�f8�YW�mQ���.h,�a�(6Ҥ����TDƍH�������N���}�F����Ԓ�+z�i�.��j��jY˩��K���i\�M8n������W��b&���yO�B�X�ҊY)A_�

m�O԰�3X�����5���?��*��\"cP�7I�d�ֵ
�6T�}Obɶ9*:��`.ڪՌ�m4�"��$fQϤ,jWU��K�����!/?1�c�F�I=#)R��u�Ю���G�q�z���^	7y.�?�_��U�5�慘�<����swE`���(3[��Yd�0�=`|���b�M�:�6����f�vS�5��Ϙhe�ӢUt��B3��6+�G��P�B*C�w,B`����U�����f��"EE���	%��P��F2��|�fC�����Z*Wn
���}��T��2�S�I#H*)����#9�(3����pf�f�)4�g�h�9�����WQ �US�cD9�8���<��zb�y�����m�E,���z''���݆/kp�	�����q1�!�-���k�4��K��ߺ�kʶ��q �۴k��>6��!v� 4���`U�(ؚ��D#(`ܙ�0�m��I��t��;���@�TԹ����<��^��T���<DD�R�@UR�O��<O�9Ml��$���|TtU|ϧx�l�����YӓO�d�n ?��;� ��1�5�v v�UP�L�h����S:V*��&4��;��{��BB�4G�3Pxc%ƙ#'VF
%ˍx+WN�Ex�(����nw�}>�*�
Y^�3�3k��l�n�p�#y�&!���4�HP��s��%��}ͣ�}nH;lf �m�*DMD��q��m=�Ν����Ӗ_mKJ�EA�K�}�i���
�E�o. ��q��O!�NF�(&e��3M@��wp�\�r��r�i9�������κ�m�s������v�:d�`!=���C�a������|_?O����������n{o�`�����~����{���ҁU3p�������5���ݽAw �~{p���,ђ-�٧0�o}H�8�&E��_�H!2/�9M�uyA�P̟�!��I ��H2~K���C�| !��mh��e�iwx���Ů�h�ぜq�0���'�B��v��`{G8�if�`�G5��L�-c� �t�܉=��� ���u�nG �˖ya��/sw�Tt�2�L�������?㵑�aQ&Td�5�(��'.��$g��F
�F�i��{1p�Az�l/
wqMR�ЪDa��o�-ΐ�)��N������,�D�%䄁H��V�py�e�ya�o>���g	jf�8��ƙ�S�C�k����:] Q��a++gp���Ƥ�}�D�a�fx��澵!^�{�j)q�ȶ�S����ƹm��d*�W���b~KU�U�7?Lc:R1L�Ӝ�V��+�T��A@%<��LK�����x�d��3��bo�O�`���(8�0�;����x�O6��R/QV�0y��v�08a6n��h̲��q�G?�R@,��'Q$�'�f1bQ��-m
ao����@�Pӵ6�my�L��&�(ʱ7�M���J���HsI��/ W�����9榓eM�����|��G85��g��K�<���3R�8� S�"Dsɗ�F�1v1u�P�*5��R�6�({��q�J��x�s�
��6��r�c��<��6S���d�����]��r�#��]�	(���4���<�����-=�iG��T%&׈\��
(�eB����Ֆ#�Mf9��#@��*�yD�\a�������e�	,�	P�t4tV���(�P5d��1��=�#z���,���K�� ���pY��c��9)"��e��뽑�D؅y�LOJX�j/�!Ykj_H�LP��հ��$(Z�+}gsb�q}cHRo:T�o��Q�[2/��l� ��I����mx&�D�L��r�h��noU��8�ȄC4�Nӱ�p�,��O�Xh/������c5W�$�2;Xyg�]K�\"C@���U�]��6U�0B��}c.8�Qi���ǐe"�#ߣ���kzZ�[���U]j�Dl3��4<�$�F�ʌ)z袬a�������r|xr5�,3�N7�)��D�V�b�1yY�Ve�2 ��n��۞�ȤAF��/i������-�s+P��#�sYp(^�S��4P/Z��A�:siqz��C�D/����j��Ä&q8�P��Q�m��^�%Z�E�IX�>���%ǒ�i�� �eb�Z�Y�ꉂ�bXZ��$����䌈8uܦ#:�?���ZWgm����"���U�$A)Y"#�
M;l{Nu� ����摶��֡�'L���Nf[9���"q7M����eZ����sz��p��"}�b#�Yڰ��Y et��.d�- )_RҸ���7��1�<(f643�4+��$bh�3mx��)��"9�,I���3u�S�qd�CЁ����    $�u��w��~K��& 4s�84#�/QQp1b�C�8Az��<K"<Y��o�r�ne$2���s�r�P��FN�T�E�f������g�V�M[�|X�dΤ������h.C�Sv�N`)�#g3�KZ�:�e���kf�u���r��Qq�(�y�ߡ��O)�߳rݶx��)� ٰޮOam\�m,�k�����r�z�U���{�����W�c����|<�����]��z'�q�x��w���NN4U/n5��S�y��@z�K��~���O�c �m�n[)�i���Lk����xB��o���N��;ǈ�暧�s$�S!��[����N��1|�;bO�}!�;c.��+�='H'���@�`T
4	v������$$�L����j���
XIg�p���ܮ�@w�O8���Tn�؇9�j��!n�A\��`����y�t�jt-�j�rP��2M2��s_�Ｂ�Bys��gJ~)8���%��bpK�R�*��RB�xD�c�n���B ���|+��
�ʭ��Y�@�i/ɘ`�<����(��p*L�q������R,����ƾo�\|+�	���]�{�R��Ӡo�,�-�.�7�^���."Ñ|��Tȧ0=�E�� ����}]@�N	*�K���le�(����/~d}u��V+��r�v���������p�	��h%��-]
0D�eV]dro��
C/����l��,�C�д�:��ˆ�e��69�є�d�q�hH�S_��ē��fI��>�q��%�l�Ȧ٧ߋ�=��A����xA{�Rs��ڀdl@+2��b�}E빺H�h
4��b'^�5����ø��z@kCe����������q���j�h2������ʍE�%=_����kJ&��|�Z��#���������֌������f�~i��F�H�$�8V�Õ-R�4�
�(��+*��oi 5v�rw���P���n��ѳ{
KE�=�۲�����T�0�l`m%�L��f3�qo�4e���T�e�����T攺�|�׫����\l��:�i�}�p�T�(��7�l��r�*2Ĩ�=~-����Z��{}o��HQ�����\����R���!�'���%�+|��MD��4��FO�G�����g��Z�'|gx����\�P��xM��q8o�aSE'[�U��nHSD���>�Ѥ��:9�Ž���w���p�aN�S�J���-��T�_>��/���߈��%: �26ō䞲�V�k�zU��E;BO.�=ء�sM�7�d��W��ar~N5:�sy�N�B0������VQ���T.�|�l7�������@]quHս�v�Sw�ڇ�5y��]&���P��5��C'�kVz�U3&�|KW/[�|��zj؋Vp�kXE�Mq%/�����s����|���5�_а�L�^j\O�`8V�b䬑iW�vR2��֕S�z�n숐|�'-�+�0-�ӕ�5�w<�탖`9(��vAK\�V��a� �E�1g�R�nf5���M]�؞� s(�����.��C�J�'?��Rm����	[}́b��1X��{㨯�����E����==x����O�-�ЄA��.j�.Vm�Z��ת�_�v�Z��ת=X���e,�L��xt����&Q���(ঁ�Z7���Y
�
���F�_�yp����{���U��6l]���G�Z��By�e�t8���9�1�j�e���d�{��,8K���ǭ��0��=J�UP˯�ðt�n���5fd��Sޝlu�/��h���/t�&>�6<:����~�����Tp��`�[*Y�lv��\���΁�)�8��Wj�����Rm��]��R��ƫA[���a=7�l.�"��%ȑeB�G��*�s��v���5n>��y>f )Q�S��0��Kך� �¼iA�os��*�@�6���m0W��8���0�UJ������l�G����-�5��"�ȕ�d��CA?�Aff��}?�=��"2az���ϼ�!O鏜V�k�6&�.f*��9F��ؖ�W�z�L���҈���*+Q��q��˔]���n�s�]E��'�1^��e$ٿ`Q���7[Z�<�{ֹiA���l�ˮ"	貫���*'�.�
3�ˮ�����Ϝخk���,{���z��u��r����* k����zƺ���3ֺ���hSx��^�Wb�M�u��j����r���]�V1�,>C���N_�x����RQ��;k,�
-���,ZG�_��_��2��5ȿ�E֎����k����N�6�V��']djz7=��C��Fl\�>]̢KW��X+��wx�;.�����w�	��7;���5��� ����O@G���	�Zp���M���ن�2�]r4ޗ7>���u	�rd�V�G�*-(k�H�G�~��կ���8��.��0�*��N��责�t��NM<!�R��ZP��/�@�l��AM	ة�DI��i���r��o��J&B�j�w;�*��OчM�����r��$@%��]�^˯oP�P�C[�h�T*
$�+8A�è�-��9��w�dUMV\�p�����Bl�֥U�9E�ԊWβTo�j�4=��N��}��F]5�pe�OO�2�z6�K�L+�H��S��a�q�-����-;ɉ�b$�`������b�=�JU��JGFu&�K�4P���c���V�U5<+�ö9����XJ���Y�,0�J�t���"n��]f�[�eI������ {
�Z�?�g+��}�}�/��-뎇i�(:L��x�d���L�,c��<���~�`ì�R��\�,X�0�um8&4�����v�A���;�Y�k�����om���Q��k�/�5�a<���lo2�5����� ��C���p����,�r��B�f{�P�3i"�Y��<�aW��ĭ�0��S �XLd����
[�zǱ3�}cb� v΂2@N���^Yk��Q��Qr]��u�Q
�-��oM���9��'ƾ�bʏ*��JJ����u���pFb���WZ&gMp��Ib
&}�ϪW����̛�>.oNK�D���ʬh�F_J���(~^����0��v��&,(4Ň�,�ψl���(ޟ���	M*a�~̦H'����?x�g��x�����4��TF�+5d%�8PM�1a�`�c9��I�|�����q�1,6�;���0u�.�o���728�@DEOƻ�7HBх8>
��"=ģK���(T���a��l�W��=`����[�TЙ�]U
�X�Cб��qpv�nNV�h�+2�O�O�pW:�gO�=���}��J�����>GP��S���z�e����ͬ�<�,�#֨����f�k��54���/&U�1l�
i���d��@�>(�{t�4�i̊�_֪��c��M���:	�(p�P�EᅹN{�F�PrL��+BS�{��<�m�p߆RtPQ�q$t��M��.z2��ˎ�f���N�T�{B8m���A�q��&�+{h�c\�L���!o���<�mN8Oz�{��j(;6���d���R�HE
E-����5�ʫ��Txc���*�
����(6�AoN�b�4/y&��{�RH�u,36~�j���K�Qu��T�4�12�M>����{dsK�k���7�6aW5�X��Ğ����c�3_��^o�pM+�͂^�����������o�Uۂ�k-17ޏ� ��X@�V�����蛛�|�p8K)xz�srv���j�vg�>ͱ�� ��ϒ�K0�~�sS�;i��//=~L�2�]w�\&�n�h-�ڍ�������gn��->e�}g�q��o����g~�V�l�[Ԣ�>�n]
�EC��ȥ`ׁ4S9Iо'P�oY�7Ut�Q�$�ZA�d@��8	��szGC���K�!0C1�(����d�0��"G,�Y$%��9�{���dz�֮��0 V��?���,���a��0�ڇ<6qGWR.�A��d��8)[*�QA,"����;��m��o� O��C����p��.��9    �k��L൓�rO^�fW�sb�B�-�*��^�P��A����jq��u��bJ=����2Jĺ":%�֏��:�Ow���^g�-�
$�qE���q�c	fI_o�ԉ�?���Boo�(��2H�;�6/��?�\3X�k�L�KϴYT�A�l���+��/��˥z�q���+K�}�FP�{ԭs�e����aW��+�A�J}ky� ���.2�)��L��6��.�G�0r�#4~\���`n��� �$���V��w��9˳"��^����w����������{�m�
/�ݱ��(�~�s�-<Z���"d�X��G�,J��]�ũDO�6����o�m�2�pkMP�M	Ѷ8΁$��l�Uޥ�]%�`�N����QQ�!�ɒ=a蚹h��2��Q�f�HQ|�i���h�zV�E*V��T�-+0���W�Oh�{:ȱ�_����h�lf��;�[ ��}���]5m�3v��8�0Jl`^�!$�qu����	I� �+՝*�*����2o����;��,�]F�f�m�`V�v����o���h͡�ŀ���Hj�Uo�7��$��>�e*�6}�X6������r*���[w��WH�Fe6e i>�,t)��(*���"<j/�l�yb��߬�Z�2��8��曃o*O�
6D��6�Z�m�M�S��T9����#/��]��]`��`d��1($����~��r��f��s
�b�q��
I��v낖�?�@�����Z��Bg�,�?�?mF���E��� ��w�7%
' ����^�sF9b�m����1g����3�1yW�>�A�I�ʠ_�~��w��'�ـ�ֲl��E�=��J��^R.��!���󑓩Q�Бω��I �qց�H��c��Y�[��a��P*���Ƙk�=�8�E�*�ZN�Oٯ�%A�d�eg?�r��w�IL*��� ��T�)��+�������Wz���־�pwXnTul"����?�����0���fA�8Ğ���4J����M�
��
����J��
��D��!)�VAF�0�Sy���+Jx�CWI�xR�f���hw:u.��́it��qR��.����)���A�]�&����5`qec)��`7�7�6�0���N_[��E�)���E�%��(�h8��~��e&�(zP#F8��Qv��/��� ��R��M�3�FY^i��vY&gz��e��Ƞ���R�]��`6�$�sX9y�(��-�*�!���y]�X��mw�3��K.Qzˣ���3\�g�C��}$rz�9��a�d,�"SB�`[�3`�ͧ5㨎��$(:#�XO��Oq�n[�)!{>�p�m��\3'�.ҫ)QW��A�����@�b>�@O?�v�kD�S%�U���깵z�VOպn�#w@o���h�7�*H��*�Z���r��(�9������5ӫ6�V�&yK�٩�dy��M}Im�=���
�ћ�Л$G�$���J�n����<1Of�y:�Qt�Q)z�1�/��B1��"8CE���Y����#��b�ud�D8��R���y-W�;x&��I������1E�8��ǭ�����o8I�h�zOv�,ldX��ؓ.��eU�K����#+�Sq�^E?x��M;�b�6��@�uR����]��[�TM<�
���b7~'���}����
zE�k��0N�V��'j���B`�V��m�d�>�8r_�B���=%��R1D�B9]�>��RDmtq������#'T�^{r����O�U�~���j��)�c������T�" � �И�(_�~�^�
'|�UnPWŤ��u�
��:'�'3���cG��.���E�X-p�U�z��*��zW${��:��b:Ić4@�����������x��4Ŕ�tU9��H����JνB,�f�hoY5�<�����֏	\l~e
���%�6N	���(�3�J���� >�j,�Tٶ)C"�+a�S`�>K��%#.�ӷ�A`�G=�[1i�>�/(f��y%�֋8U�_��
�T@5r�;�A���)��I�� ���T��q�U��t~K͡e�m�	�Pࡕ�f�*�YW~S�S^���P���k��ߙ��}�j�L�����K5{�|�*���h�_�:�G$�D�|�~i�ʆfa�*�_a��׈�dZ�غƄ��wҤӍ!8�:D����zU�_# Q�m4C^`�T	�Oj�����	ۂv��� �E��Kg$se3}g'.ByIIaP���0���F��h��D0V��0�n͑�F�3%��զ������Jp�Y�2�_&���J� �vI]b�A��N۾t���X��<�ҙ��m��r�1�tΦ^����Q+=��iȒiȹ-��ǐJ@h��-F5,Ͱ�
�L�d��nV��<�l�-�a�ۀ^Z���d���h��W�y`P��6��{��|���%)7�<M��NU�����V�	2y�M��BmV��'�H{���z����&y�bZ*�t�PqR��r������g����ױU���	*NxL��k�=q ���?��0�R�)�c�V�0�o�}��S�3s�f����`�����9�g8:_��+���Y�&��m	�s�L���=և����}~�F��>�u�n{��>�߅�v�����n�������N%�>l#.�eq�_�u�r��q6���	Ϭp����z��1G��3�������a�?��sZm���x�?��P����c��
��!����*�8�/V7�1�N4f=��kY�ʢT)�M���k�R�8jy>�f}�)��d3ʹY>�f�����&��v��7�=�nj���)�μ�\�Ԫ�E�Yu#�$~���	�����¤'�P�w���,Ui+���$j7�f��&��r�]J��,GFJ�	�i��`^E%���)馁X	9��"Z��0��M��܈e�&*ҤY���"�]��{[��f�8%�R`wC��x2���O`�-GKr��39����'IJH(F~�����`�hbWc��k
�/cl�U�609�-HN�S�~TϾ3�0�H"�����ՠm�����!އ���u�sˡs�GL*P6�2��{�����RN�i��u^�,<�0'��SIr�6���qD�O%�v='��d�;�
�6_F3�:����fC蜠)�5F�Y9#��t�~!U������	k��,ht�F���N�Pe���1)X{,�l���y��׏�]P�*�z/��䭊��:;q�q;c�i�Y��fh�]!�ui(�Uc	���׸gF��������s񊬧Z����� �rb��&���%�^�'���
��Zɱ�\�'b[�j���^ZLZ�X��`���S�~�Hu}q�D�������Qo� ������n�C`/�����ѵ�����ȧ5<�G��Ȳ�#���cN��2n��.�˲��Vϰq��ˀ9E����C�8���>�V��&�����Ѹ{�M�n�C3�fB���Kt}�j6Ӵ.y�O��������׾8�L ���y�kR3͊u�zHC['7�Qy!�>!�Sy�SE��rb��Rn���ev�Bko�kFg;PA�uڜ\�q���܃w�	6qRE�|��s��]�#��N��XϙG�})!'�V)��*N �rf��:�;��D�R�pEk�� 9&�8�s�'�j�3 N�`-�ٹ^� ף��\�a��+��p���Og�2��� '�5�O��)�.�;�/!B�ʤI􎻐�v�R�UMh=�_1�ǔ�e?g����!z7�"����^?��ɐ2���r��|�vFFafu�Q�Ԍ��P��V���L64�\�3'�hT�˶q$r��la�
���-["\�+�wf��/>�@X]אT��GL��ܻ2�n@7\��Q�`|EYvA°�D7�\	�J�(�l-�B}۝�R�d�%��I�6������@�*�)��r�?4 �����'��	�i?�ڌ�){����(��5���4�z���7��PI嬻K�&c]2F �� 4t    (��R���QK�
�F��(���4��O'���<v�53����)^��&�a��*|���� ��6��X�T����{6	a�w���w���2v�e�3c�6��R�5 �E�?���֔Ÿ��Cg�6����hN:��?�?ɨ��@�A��?�2 �g���'��8��H	O����4���=ܬS���Ă�,�Ym}t���f,R@��4��	��G�t��A]vQO|��o��LxmV{2�iu�6��sm���
�>�G΄&��%�`�d4,Z9�E��n�������GY2��@Y���c�cA@SR�͵���5}��%��!��(Nh�0�XF5�&��+kR=:|dG���+�N~y���V]q����IP�
*q�f�+�"T����l5��3�(��@.e�3���;�+�!|��(�s�&����1xE/��߅X+xﳹ�r�$��*8�,�_�z/7[AY�?p�����m��	�6��2��&��]ǜp�/��x� �&n1bv���Rp^�ϵ�3�>f�_�=�f��s���f�=�+ܐշ+_V����O��0�Y~�iC�Bc��`��I(��MA e����]V��G,@�@��	�׽�5߰e��C��MYf��k�����d6���c�C�Ȭ��1��6�/� ��!��RV��	T��@��M��1'���9��Lf.��c�	���b�1��m��+h6��'���Y�A/[Gz`Ӱ����@w+Fu/)�����r���r�d�u��c;�"��CF������JQ�y�&�y1��Q<�"��+�G.�5�@�m����#���lC��kü�b)ɠ�멽�4�SKeJ�GN�"~��rPsL>Y��D?+@��1���?�ea�K�{����p@�Cș��}��j��F�e*ś���q�^��Ԇ���vW�����^3S&'�0�Ԑ-��#���/{Ta_�	[{C�Ԫ�ͼ�<G����v�9���8�ڲ��ʙp�v�l�.ʶhS^K�¸�.����e�`�y��Ev�ʕ��������vr3%�޳�?��?ԁ��޾�!F\D��A��&m0t)w®z	aܨ��9v0zP#Z�� O4��~�Kk|4���t�M�g�^ŇD9��,���ph�ٌ���8�nR@<Ӂ��?C���d0e� ��&��ĒOZ�3�9a�k)��":����¼��wȩ�O��(̧�)Xݴ����Du'`R�
>+�텚|Ô�Ao�p]\C�8_�P���0�F����"�X�kl�o�qh�]OT�)(v�Z�6�S���<5x�ZY-�uñ�u�XR ���p��
�xK���m�-�$v��(����;��
?��ܜcz����Uط ���p�k�sߛ�x�����c?_�RU�\R�X��a��JkY��o�p���w��^�;
Y���q�c�p��_��ABN�p"n��:��Ŋ�*>���h�͝;��#�2/ʔb��������XwR�/����)�>���0�gd�M�11�[`t��J/��EmX{t!L��(Pَ��o�T~E&XN't�l?�8�^�D��ӆ��8�s�2�M�mH�L�BC�D��d�m72�Λ�8n�B�͢�� ƿo/�0��X�z���T�ۚ`��?��x��qj�uwk�jo�=�h��Bt.����s����A�ǽ6Q�j�s��T0�r|�^5�����W����z�n�lw�F��z]���XZlt4�@��WЄ�&m�6I�	����7q��M��������Q�p�z�����CW��o�!9	��D��#���"pV�ul�s9�r���y�~�si������ro����!1P�N�3�)�zy}L�ʡL�d:u�s�02Od�O ������T��W��>��e��ey�dm�]������$�Ea�KXaeg�%�a'��y�!�\R���vв��:�ָ(X�t�kx�̵�qN��c&� \����9�ڂ؜K���.]icb��d����w{�)�?si�Y����{��v;�����a��J����~���o�|��6�����m�߶��o����m���|�E֕�|��O�nvF��K�V���ot���6G=Y�$�t�uk�Qo� �oD���hw� ��8��7������)��54�Ĭ��_���y���7n��ݭo�z��1���ƌ_��o�v������V���MV���f��X����]��ØB6a2��ب���zU�T��M.s�{�!ͬ,]��Jy�ӱ�H?����V�Ar/*���-�R�6���{�CP7�W&TT���0��@�h%Qry��҃h� �?�����h� �?���
y�
b�2��x���#�����tQ�@���x�D<h"4+k"���j��:U��anVPu����}E��?̄/ʊ��B�� 0�m���Um����z��g���Ga�~PI<�$T*���]C�A*���}�^����}z�t����}Ã����A�z_�h����X'��llQ�|����U$���A�~����A�~�����Aj~�����y����a%��
9�! �ʢ'q���(��0G��:B&L���t�&h�;�1�O�g��UqPi�{xp�+I�2���� s?��2���]���]&���>��^��?��2���� s��d��u��1#+�t�7�FxVFv����*���0:���,����x��܄��u^K�ˬԫ�X0�">��o��Z��<���nUOu��#X4��$���� �1��.��?yK�;1�rr)f4m�'a�hhjI�_&*�l[��9񜿯�B�Z������rЫڿ9���ے�^ԵeS�rx�U#�ڴ"�"2P	��8x��,p߾�������7���ݱ�?1�[��V�ĉ��M�$ ���y�_���!fj�J��;�� �U3�>օ�e��S�+EXGs����&&�肜5�NNe֢,:oLfQN%8F�A�PvJGQ�(��iY�|u#���Z:��S���/��q��T�?�^|� ���?�u_�T� �k�S#����l*D�ڗѕ��XW��UI�j���o�0��Q�"���Ey�Q�3^�x��0�
=��)�[����RH=� ��Y[�^M��� �ҿB��f%��=*��e���s>/'�=�l�N��k�<-���4��G
|~�����H�c��2;5�����AU#��5��
��:1P�K��{��5_�����+�ͮOϴ���a�q�y159�Ĉ��l�D�uJr�A&1�:ƞ)�^ܙ��B�%�>r
W������8��z!�+/�NSt���\�k��3���2�F�*���5� ���U�	��՛�MO�{�ފ6_�(���F���i�x�p�k���z�|`72ҫ9����LB����`#�ҡ��Ne�JaK�Wy:���������lY�
�ΘT<\*'��@�������H�¬�	ŧ�LT�k*�ŏ����_z=�ބ���Ҩ)��&�֋ `�/�9���(P'/G!��+	2X&e}�|�����+`�0�F�!��r�;In�VO$�j�S�L嘹�I��RV�q�I�n?eN�ʦr̓���0�F2H�5��v�\ XM`�[l'���ο��d���Ƕ��iQR�0�HHΦ
Ú;����f�L�E�F�<3'�S#QpȜ5�d	|���\�X@��G
zR�C�R�m(y��2��LB1���习�AUɳ jՈ��cYVK�~"�6���*�֜�a^.�Ϡ�9�I�F�����i
�j�yյ@g�,����T��L�Q�}�	i�1��m9FQx���gJ�$����e0�)H�}4i���n�8��p5��/�S:)�<\��J�+�k�I	c�B��ǜF�O���d�)��]o31�41��@�gr����;%��pZH��R	��0Z���P�}���[j��&do`J���,S��v���^�������2���|�����LYX7e\J�w8m�    ��8�ֱ9&�tD�j֦�t��T�X���*O�ˬ8�
����6��д�1��?��Ђ�a���d*��9q�wnCX��~ͅR݊���������xV���ƦD%bQ���"et�2k0L/��P�`�����
cr��1h���h�q���)d�i pP���Bt,��z��J�l*��Y+�Ya|Z�B�o����l+��Qp)�(s�<���ɏQ�TAn ��0����0��o�L�&�h��vj����t4��bUЌy�.��m�Y��r��p��!8�v�9�W��C��YT�w�����!Lo�����4�q�|�o^��w=�z���N[Hz�:6R��L��QI�%�jt�.Ɨ���gG�+%Oo/�5O��]�d�0�5'��R�"�I��e����CEE��	��&�����FQ���0�[���C�Q�mYu� ��<�e�U�l�N���LaИ�1���u�2�ĉ������i2�G-�K����F+�nE;�����l媏�^��m朧+�ͽ��Yњ�Π䌡��s��p��s�-��L*�M�X�OQ��sHi�t����P�н�f�R~o�h0ƴ7௸��l���M��*z �M؛͍��N�[6�ۻ�+WŶ�Ưa6}XI���QŞ͆w�˘��}��3]ŌM�x�[�����ԩ�"���,η�a�x$��M]�ZD�l�o��m��j�7u9���D Ej�L�Ë���Bu���Y�S�b,7�����l�A:�٢L�p��ǜ�ƂO(t��ɄvK�1L%�;����a�˂rW�1n:���>!�f��F���b:/S�\�:{���n�ht�yp.���WFw���{�}�~�M�sL�6����4Ỵ6}e�w���l��΀	D�?���U|�L��R���X�[dl(�-�\u`�l�|��p��:��5x!�P�Ol�b�� j̆�B]���tf�r�&@1��f%ss�����̜�`�Tu��-��a���o f
'�2=�E��:5��6��9"- ,l2�@(c5�v�
���w?v}Z���V!0 �v�4 g���4���x�����P��z�ו�ө�Gz�2������714qƋN��m� 5>3ᖞ�P�;��PQ�B�3��RȐ<K���s�*�*��gz�����lh��A���2U�7����`*�@���A~t���_�r��;�B �	�r���pH\�\Ē�h�GVOl:u���:0v`�Tf�ǳvO�6��s}��i�����i�4H��Ϊ�5"�L�9���)���)��@��(O�������?�z��;��׾7�v��=o�; 6n��~}3���z���w�:�n�iFYE�����@w���O;Ç�J�\�wJ��O<������"U��x]�_[��A�q���o�~���6;>]!|!z��>�ͱ�1bW�:����	�/āt�a�l�j�̂�(QvF����CO��_j�_Bq��l�a����Z��9�D>
��c�>�?�������r�v��޳��V�`SM�:�8x�
[�#�GH ��R�j�'t7����DJ��<^�{C�Ԕ����{�w}���Lt��J%�υ|.�w�����iD�IuG�K�|~G�ǔ\ �f�c��y��n4�+�}!�є*�m��Nq�����+��PKm�c�dI�nG��v��
k����vE�]؂}���������~W���{�� �]��	_�L+�C[5�d����řM�QH�p�x��k;'�H�K�Սd|hf�Q��wyպW��=��(}�v{�p��H	b"&�0��V9C��0+�+W���AĎ��w�@��o��^	)��HǢ#��+z�D�շ]A\};�vU*~�>�����jUw<1]h��G�*S3>���m�O<��*v0E�0���Aq`����8��1M(���rW5;�ߝ��<�HIA-�H_���ݝ|l�ȑt��h��R�9[H�H��.�8�t�i�h��=�{���Ʀ�>`�� �ff��c��vJ�$J	\9gv��E�^�!%Ï;�;�oy� ��=`y�u(�S��|]?Vk�T�g�˿Huk�.�t�$�]ML$^�4l'�ohJ!$�*�uZ���[��2��kn��a������)�ޛ��{rѳ��^Œ^q"� H߀�AG�C�57�<9'�<�k���T�d?L�6!@Q(�4���V��2�R��/��2VǊ�����g���.�\�+8aI�����9isJԽd���̣f��?��jG�ד�a��#?�~�+t�o;������C12`��p�d��Z�_n�����E�Y�51.5v����.>�)����5Cگ�k쌰BG�!�?p�z��=gN�%ۆ[�Z����$�uf	S�Z�0-�5���Z����]�.v���<Og9��H���n@@�d������t��w�u��ï̵�ЃbCt�v�ko7|�9(l�`
�c��݊���N�7�EX��#[��!T��G���gZ���~�9*����ڳ �GYYk�-~�����U��ǿ��z��26<4��2 �|����)�8I��
p��7|mutl5���+��6x��u/�Y��f���_RV�����kI<��h���;
5Q�5�8���.���*i��0K
c��+�'9�K��s%dV�.�hX(�D�i��f�\mfG�ڄ�K,6tv�K<�K����JE`.E�9+�o��;��:ø?�M���}�z��m�����{�,J�N�ɯ�M������qO��68�,����+�H�c}� �s�T��t��UV��+�d8�M�S�&(~�E��[���:G���Dcc�LY8�g�+"z����}O[�
?K��UX�H�.��
�@������J���vAG����s�������O���'�<��^u��㾷����}���vX��?�9��T�U`!/�����^�E����T.1q��e�Q!2�T�=s�/�ӏ��Q+N���^���4�T�<\璓�V���؆��bI��-�
�|��p�I�+X!e��<1¼z;ֶ�,P�FP�/�8���z�\�ku|\�m|k��e�7�4�pB���(���">|+4 �:�SUѤ>ۊ�7�	�4�C4��4���rh�q��3��+]2bѷ>�H5�F�l���"��.��e��ҽ7�S�j��𰎚�رfx����D��UQ��£��J��G���{@�Mֲ#�U��ձw"�z��d��jbs�k|��L/$�<�ҕXJq�`G��HQ�N�L��w_��|������S))�$�U�zj�Sqh%��3�q��u�x���eï��5q�-x`9����]�}��i����z��������6���.��~�֪;&e]�xކ
;���t.0(:�K23%#Q-������Y��~��J���߈�~��0���&wh'@������綍#���+n��Hja�RL��8v��9�83�@z< 	R�I�%@�r�����R�����x��v��v�z���/_å�b��0�K��j��z��f0Ya��;o��Av-Z�d��Y_��E*�N/�5LE"���I���V��m��ť�L(\Df�]��[X�I����� �*������K`�qȨC���ZrC��#G쬟Y����#�g�x�At�,b�g������ȱ����I�i��0d� ��u�Y.���Y��':vfI�����7Կ�}�{o G��K�)\p]_���Q���p�f�a-����=�R��j�}���j�$ى��q�Hp��ۀX�֨��/?+Pk`�2�¹M�q6��&
��x�~"ol�C�5�`d�Ve]���<9�	�[�2���z�";.� -�'����r� ��޲�9JF��������y�5�^ӓ��l,Z��\WM�]�F�G��`�*���a��w�x�h'6�
S/A�D�Z�
���U�^����ߢn�ԮW�Cӎ檶�Hِ��ˈ��{���X�(z���+s�ҷ;�G�t��?\�s    6���g��8�@��DQb���/T�.�+]�#O�.�P9�������gu�k�Y:�yE�]x����9⥟1T�a��P5d���N���ܗftU?o9d@���P�M�)����V���t� ��9Ơy���ߨ�6�>�OT�>��P9�bp<~�������Y��'��'7i0U��pҍc0c�8Q�;�w��d6#���bA8��M��#�>���B��N@���U�)�g�l��2��9����)7�2�`fGS�XT" �:EJ�y��/���b;��u���~�����D<ӂ���q����bp���j�Ei�J���γ�ʳu<q}��>�n�c��j7�_��cHdk�|�
���v:���U��������6��O���5�gfIi���x�hxLt���$�"X������&o��s��*�`M$���4��)�N��Q0%�mI����~�G��/^&������o�cB�Ox9���؋�t<�:�;g�$o>m��*��QE�4��ᣊE֨�c\*����UѨ�=�G\���QE�Ļ�Q�#�&|;��NG�&ܥ�U}{�����i;�g��ʋ���sw�Bv�w�ݻQE<�cSg,�ޏ��S���9��,,��G�?�����D@*�=��}6"Z��z
"��i����Ñ�����,�Eby�6OiS��F���b�l�1�]��^KV�@�1���ru*�ʓ:��"�gv��:Υq�	k�p(̉�
w���uhN�P�fӁ��w�C&Ё��4uX�˗�"�,mRz׃U"�*���fO[Mǖ���̦Al��qk���j���i�FS��<O9}������g�l��������$C��:���y����;q� �dk>&9���Nk�CT��O{j6��E�
��.�b/����"�HI+`��B-�t��3�qeĒg��b��e�5u�P��WjVRE����㬪x fpͦ���.��Mb=FL�+�$'g�E�a����V�R���D��`�f���BQ��@�`�3�9���u���[x�����<��N���H��3nč0B�)7 �$��[q?B%�s�L�؀������?'��#���3�;��.�PlyLvr�𑳒�܂��X���1S�|�V�!�� Xa�o�P�lC������Ao�Ø�������b�Y>r@Q׆X9�Vh��+����a�8�2��)(�N�� �,�`����2���,�����6G;"`�/J��F�w��bʛ�U�1[i�Z~��<����t�@
W7�|��N�� =�s��$��g�(�Z1�S���P4�d�BNu8���-�YF��w�\�ұ��l��8L��j��cMҴ�l�Z55JxVL�h�t�&�wIa��b�.O+?�f9�&����f���G�v]+�@S:�s-�J�����v�n�S�#{�jQp #�-b��'��%Է�:��vt��>�,���'�������e�����H��"1��NJf���Tm�q<�ʂ�'����	*sԬu�	��|yHb��w�U曬�t��^�F�l~+���t���x���;�]��Ń.~�Qi��ޤHO6��6�	� ������@@�ss"�L��Xl���*a7Y�Ҧ��wD9T�J �vy�n$HJ�P�嫏��j��Ϛ��6�0p�qWA���}v�
��JNi�b\Kܣ�^꾦���%l��|9W�frsv��I���@S���#�Q���\I��v׫�����U�9<HPv�(/�i�Z Q*V��@��ZHW`�ǐ+%?�f�?HQ�|O/��3���5u_k���x�~�N��Z�Ȇ轫�_��;pk�"�[������'���'N&]@��v ��FL5�8#��jF��"Ji	?��wI�����PVnǔL_D��/���B M�9�aQ�%� �d��7���u�at�K��
<�m�	���;�= q�r���碛��l�C�;�� �ԓ`�N��H�ī�q�%lϹ�o��`�B_}�^�غ)������ (g�
z�B�3a)y�x[�xg��-Ź|� `:.(R/�<� �}��[�O�<���SCYp[�z#��������b��sE�s�Pܖr��t��z �|�R�e]ʷM�)�O����8���(Rq��HݮJ%���~_]_�����&�x �*�˞[Ou�H�~/V�H]w���.;m��UJ&ư�k�(i�X@��A[���k���8K�ۡ�? p�W���e�m�I�K�c�.��Ӗ�Y�a�**	��|�}��n
��E�`>��qfl4	�2�':!g�M�"�@=��s�-IZ���g����R�Ĉ��s �qO0���p��ִ�(`�i9�J��d��N�Z���J]��{u��N
��H����Ҽ�R�ebi���\�wg~x�SA�*qL%��c2b�v��gs��5��Ğ&k��\��uL
���Y���F��CO4�KL����չ��9��a'���6%wF�)F%,rM�NMqc9il��d��-�gb�4vL�2bcf>n[�鯺[��;^�G���>�ھ�Qs�y����?'���9&
������b��<�_ۑw��ޑ�7��u��b>g74�*ʲO�8��k5�]Ԉ
z�a�Z�_���g�Q�@�Y�n�o�rτE���A�W^2�	�L�7�6�,��oB*\0��)��LX��;X��c�e��rhE>�[��ȷ�"���3���� ���LR0d/�n>LY:��A&	�3j=J�]��v�o��B��HP2���k��!P���	MH���RC�K6;�U���Ф�N����`�|��:�f��:O�X�l�!v�0
�$�&�/b�a�9V=�J�@X�t���q�����<?���u������k]_PS]�<h]�.���j�����G�o]���֯�)����� u�h�X��a�������@��6��d@ ��c�������j����(H���r]齣;c{>���Ը��k�����S! � ��N�9�=�g�o�=��j�e����h����⎅A��O/~�"w��yq�[���5�7(nk|RMت���9�W�.�/_��}�E�E�K.*�O�Z�|e�h�ڣF�F��@��U�X�V����T��^�L�+�h��iJ��ݯD��D��s(Q��#�J����PC�{H������Y�v��<�!�s3G�x��<�n�UL	�Y���5�k�d�4�&r_Ò;OcJx� G6?�'��gaH���%[��8	{�Ow���ø��N/��G%=M�����m���c�v<���W-��q�o�9�:T�?�������;��g����3�dC۱|�^��%��B� a9:������*��@{����y `�W8�y�-�Ĭ������ֲ�9�6?���_���� �Scm�!AM��_�F0)	�^\'���.�����87i��~a�p�]�IN�e��Ko�.ڳ�G�z���ŋ�g�X      �      x��[�r�6��n?J[��vK�_K�U�X��*��ZNr��Rhݍ�$���s��ح�y�<�~�  ��d�fo�������F�V�Ҕⲩu��Vg�J�%B�ԔV�m������V��f.ҥ�eڨ�&�f�ӥ���57Ve��¶um�2÷�JX ϕ8�Mm����c�xK�n��X��v/�[��rf�����b�Zo`��FQ[qU��RH�-�|��8�a�������޼z���y��tX��Vȕи~�)�-W�˶��'[�T˼'ӭU+�cU�NN��3��3���ll ܟ�i��d��Z�b��h�7�U�S��+�O��&�Ȇ.E����u	(�^�4
߫���h����;�9O�����1�C�y�;2��ecjK�u��F�n�\�0@t�j5�M�
�+��WN��F�M�E�QM[��J۔�r�L��ڂsb�K=k--�t���Jms�3q��U��缫���U�\c[#�e��M��V�ΰѶ8�"��T�P��ں%)� u��c�AY�L�TI��&�Z7�ok`���H���t3-��U�2���@�2� �=r"^ �D!se[�Ia2m������Y=�F:�?N#nLG�G�хl�����gI�c{����t�5�7����Z��Z݌z٥+����NUbf��cSkP_e�R/��\]�\T�YԲ(���,�\�0� ��R��ՙ�J��X�ʺ��Z��㩀p����$lй�๬a�^��E�B�H~�XU`QJ�f�) '���&[�8(
�@,�L|\�'�Q��S (B* �C�2(lL�JZ�mw7�8��bh`ٓѥ� ��}@vG֭����g�/���6���i������".@��Ƞ��m�A�4:��(� y!9�?��C9ӝ��O���V� *�����l;�CSa�x��e�Ӏڏ&k�5N�_į�����9IKzVp���d��ƴo���a����M�J0�����~�I���0�c��i�3�Ӭ׈ح�pj8��ԅ���0�%�\��PےG��_$l�{"N��a��9�2�A�{�`��'��3��+���1k
lU��8�OMQH��: �
�rr|I��ԩ������7=װ:�P���'��sQ,#WKn�T7n���keZR	E>�\��5Dl5����O�n{��Q 2v8�v���+^���7`B(�e�\*ȈY�R��n�aF���nљ���Q�[Rw��Il�����,T�^��Ae�F6tG06MC���k���������m9�w�����buψ]8��ęV��k�Q�
c	�#W�.�ً���}^��F~:q�juv��Ns`�t#8�q�K�O�ƙ�œ�&i��7H92�����Ei������R�����6�v��qrl`�	�Y�q�̄>]�6缿��͍sd����L�vdl�H�۔DRwER��	B����/!�{ �݊��8��/��V8�KQ,�V:��D�t�:.�5�	��ԈHԙ'�f8�4�,�̘ʛ��Ih	D�1�l��n3i=��zA7��عqv����u�tc�Pƶ�?�j�;�Q��~��I��T�[��a��G�2��jo��c.p���M[T�ho�,󷱬k�WR�L�LՍbz�4U��y�O- �/8|�}fpE���Si|����r^@h���7��YU92
Z;�E�����P�etIG����q�0�H0}��ݪϬ:��m�z<MG��|�����8��;|"~��1i�ù��{��DC�t:�ӨtYR���B:%B��\˥��&�o� ^Up7t�3�!am;s���,`���K6�m�ƙ.*S7�t�@a����`���x�o>y����h'9J��^2�M�v�Ï[~��p)=B`��A��1	��}��}?>��Ï���g�ٚH89p$#��(xQ@0�D�*�-�0c�9F	66b �(�l����.ؙ�9QK�� � O�RT
�L�$,H Ah>5�QA!>��#fd8�O�צ�3~�ڀ���PT��Ɣ]Z��7'8��0�9�,L��w�N�]�,6�Q|� ;�L?s��-.c2�8�C�>Ngv�+OD%6qyǭd
~Ѹ�FrDj��<��[��Ij��v�W����gf����'���r�tc��q���qJ����xq@�}7c���F�)N��Oː<�r5o�x\#��yc��i%�"s2ݩ>}���*�ۧ�M�pE^"�]�?A���Wk�n� <@a�>LZ�>L��;;���p����Ͻ�I�*fG��U&Z{��!�~��;|�h���}��q���l��q�+sNv*�M���2���Ֆ�JH:4��l�}W��*ϼ��7�8Q�Ue��pU���\�@�P.��JO�,�Tr%� %���ot��؊T{�l�����3��$��O�67ޫl#��x�/����7RN������v��2qxk]�U��ņ���	׉ r� 	��Ӽ��4ĝ�JIɕ/��Tehn�*CY�*vUN��~7�|i�O�כl���˄z=���*$Ů\�q��r���`Gl�[�"ʽ��(K*�S�]e$  �w(d��"�����Z�lL�v�?�$ԁ?��u]ݞP��^_�7jH�82����n7D�C�J�VՐUw&`h$�ú5(YN\�u �si��D�*Ū�\S㒚�����UȲ�3�J���7btwOĬm���>��X��P7�-ht*����_�F7D��T4kI�H�Ե����T�x*6ww��?��s�õ-����#~<>T����6U�|���"E��W���<����CC,�ib�m+.�q�`����{�ϱ%��/Ԋ�ZP�Y5����}�0�/q�	����D\�j26K5�M/���+����؂���8�u�`���5L��]A,6��6Ə�`u��3��JK����@v%�U�u��d�+C}�U�<O�쏠}���!u����}�����{�#u0����U�4�0�����0��ѹd�� ��y\���U����l�d�lq?/J�������Π�����	���P�t ����p1%ct���i*^ֲZZ�yq��n�����;� 9` ���&Ơ+��n)��C��8j';17$��K�I)j��&V
U�+T2���gL�n�d@��-�nv8��M���g�1�ݣ(����.�ѯt�ܬ�x����"Ew455����N9�}"�v{�� ��p�^5����'�iT�Z��J�w�m+sr�=dܿ�[h�T�r�:�$�/��ķ�j%�Kc�J�-�SE���r&�F�|���C�G_(�BӍ�]`bi9��l��\w��TyE�'�{х��?���-�%`1�xP7��-y5�"x`A���^�MV��ۥ����e���t�)ww���Oނ�8l�y,�����l�%�5?�r3F��Î ������s���1�X�:�VM�b&�ɍ��q�p��Jꏎ���sp�����e�d�3x�&;�'y�E����g�^�A�~޻�S#~�2����k�ː�0�HbX��9��q�'�7ӃA�ݽ�3�����|�h8��y��(t���ټ[J��I��#��h�=���"er��]*Ͳ�Ȳ�1������ʍ\��4s��\�닽�0LX?X
�Jz�a�[�aF�V|,'K�}\�O%7�}z18z��#��#���]_�Q��dpV���H�JG,���7��قi�f'��$��T�!=0��I��a�778�~]ʃ�|w��E�`��F�Hؓ�%$[{�C��cM�T�! ��� ~�">�!�����܋$SoC��!�����s������8�K�މ0��F�.��I�٥��ɯO�4��Ug)��gM�R%2�X�i�}����*���8������;�I����Fg��do:�~���͉�������Ui��A��J;�*Cp�&���j7��@��-�I0��=����e%��
�{�5�7�D�C�] =8��I��ņ�.��v2��y��s��7��$�����.X��$:�@9�
	/�������Zu��<��K_��!�m��B���l�Ӊ�� �  0�(#@���&>�`��5�֒c(W�Q�ab	Y�I���!�M92��p=V���)���Y?e��	MM�g����?>����%���e��_�J#��� ��@�ׯy��������#TA���Ҏ��7�;���7���7[��|ݯT�uo���z�H	cF2w���`p�6�((Dp������\�b�
T@ܷ��V��T���Ѫ ����E�r�Mv�j�"��;N�Ocn�0�t���ܤ�����6�*Б�{��--(%��18p�FT;����IY���H�Q��6�^d�,Uf�|�Q�E�Y30���4N�(���3D��x��/=���z됚����I��.�`�Z�Cӻ5c뀅u�/\D��g��DL� ��؟�}/����+B'����3��*�e�%X.h�:`Ƹ�}�� ���]����H��[`/��R(��#�W��n]".�D.����m(k��E���v�}>��w������0��svfp^����(h"��ޓ(�@$4v �seW�@��}��+�͛���0�Uڻ���@����,�ޝ�A���\����|��Y+ز��@^��uu6�`�V®�������c�ĂJ�j�n�ڜBв$��C���^�,b0�� �`�'��GٽBj:��]2��d�F*S��0\����I�4��4Z���E��m=��%���!́�,��w��9շ(1t#��`2����덋�q�=q����R�Jk]�_�|��Qw���>8{I�3qC���Z���%�x ���8$L|I*��e�dL�p%K���T��%�Y��r|�]zT�,�˸��uֆ.���m��:_�R�zC�Ɔ��#�ó���S|A;�}W5Ϻ��g�x��t�bt�?�Oʷse��Qx������&K�=/!ƛ׺j~��C��+�:�p���W$������SQ�ԫ&m�g�:�32�����z��MS���j���4l*�EK�K�����_O�{��wD2z��e�-���t�q��r���.�������^n�F���ȷ�}4���X�� �}.�\�[�\G��MȪ��nnu*�S�L�{x]R�ۢ�����H��j"~�^^Ӊ�B��Κ4��'�TR#/��k�q��J}�p�ް�^�p���U����s�	~�@���<&c1�����5':����k���{d&w�{|�E׎	���G�M=z���&�R      �      x������ � �      �      x������ � �     