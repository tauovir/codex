PGDMP     8                     z            codebook_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    in_house          postgres    false    217   ��      �          0    16433    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    219   ��      �          0    16441    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    221   N�      �          0    16835    notes_dm 
   TABLE DATA           G   COPY in_house.notes_dm (name, description, created_at, id) FROM stdin;
    in_house          postgres    false    256   ��      �          0    16447    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    222   �      �          0    16455    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    224   �      �          0    16465    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    226   %�      �          0    16473    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    228   B�      �          0    16478    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    230   _�      �          0    16483    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    232   |�      �          0    16491    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    234   ��      �          0    16500    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    236   ��      �          0    16505    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    238   Ӧ      �          0    16510    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    240   �      �          0    16515    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    242   �      �          0    16520    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    244   *�      �          0    16525    subject_tbl_dm 
   TABLE DATA           �   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish, icon) FROM stdin;
    in_house          postgres    false    246   G�      �          0    16533    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    248   ��      �          0    16541    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    250   �6      �          0    16549    tutorials_postdetail 
   TABLE DATA           |   COPY in_house.tutorials_postdetail (id, summary, reference_url, comment_count, created_at, updated_at, post_id) FROM stdin;
    in_house          postgres    false    252   �M      �          0    16557    tutorials_posts 
   TABLE DATA           �   COPY in_house.tutorials_posts (id, name, title, slug, post_image, is_publish, publish_date, status, created_at, desciption) FROM stdin;
    in_house          postgres    false    254   �M                 0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    204                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    206                       0    0    auth_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 92, true);
          in_house          postgres    false    208                       0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    211                       0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 2, true);
          in_house          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 6, true);
          in_house          postgres    false    214                       0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 814, true);
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
          in_house          postgres    false    247            )           0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 91, true);
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
ʜ�%����~5������g]˅�9\E	�������W(�*J%m��g?��7E�%��F�L�ر�	�4v-�Y�$;�������2qm�݈L% �#Ҕ0�Q"��oĜU�!MWݴ�P]��(��9��+��nr\��iH�%���9,���*㶂��H�2�����L�y���q�0�a��\����Q`��DN�q�#9F�_��P���;�;fpk�Ϣ��� "z0kp��x����?�La      �     x�m�MO�@���_��7�fvv�[��
hhD3P�M������KQÅ���<��I���cD���psJ�ɪ������p�o�c���l�'�F�No����-��5×v��;��h��P4@z
=tlRh�`%+�+�4c��~�Q�ګ"���������VJ��a�m��S����i� ��r>頬�ڥ�����ۣ�/�y7�s< ���4��Nx\��W�Zyê�:���kQnM/�-�ن�8#;�<��s��?YpO���a?��h      �      x������ � �      �   +   x�3�4��2��\�@�Ѐ�H�p�IS.3 i����� o�#      �      x��}K�9��9�W$�0���%�f|�M�Յi��������`%��b�!2T�5���kF�3=��#��)A�R����t�ь��݀���o,��xo�=R���Ø��������O�ÿ��o�?�>��������������������n�ۻ~��{�� �p
�DgФ�5�����q?5�H�����ц�Wy���ۧ������=||����?��q����G
�ބ%�n��
��LxL�(C��/ۧ�۩ْ�����ޘ{g��)�<~nD��㗗�1E
�@����4(ݻ��59��shPk4��7���,܎jǨ6vHd|�z�w��1:����X����N�Z�۹�}r��6����יudQ?�K�:�1s���;����s� ��[�Qp���������=���pO�19̓�7y~9�t��a 
�ΰd:N��X�����=>�T��c����qN�\'ꢏl�S蜳����~�������60��,xP>���?�?lz���#��:m*�����c��¨K;ܱ�@������TU���Ͽ���w��������h,M]�28j�t�|���Y��,��������m����g�ć���`\~��"h��h�\N�]^ܩ��w�P�������Ow��|��Qceecy!��)���$���� ��gr�׋�3?�#t>��\|��-�w�<�*�~���/ۧ���+�ځB/���Ρ-��Av��;�PP�ԛ$F���~��?f%r��I�Q6ib$���/|"hֲ�/�&�E�����xx~��]v��{�R��X*ʎ��`���^\T���)ˬ�������7/g��7i'��Țe��â�ҽ]t!�O������n��c �����L����z��q]Ā�_�UA��O�):��UO��ibs�lx�铕k��V,��<_�b�k�(���d�!����`'Fy�Za��B�U���!�_�|���8=$
+�*d2��c萷5;3���UZ�5!��;Y�w׍�O�ǝ8j|�iH�1�[hދ+j��V�<N�$����·�0*d���ȱ,"�7P��y����`L&ز�W�����iF��W0�ʰ$��,�s��݁���G�
Ɋ���]ya����a�V���2X�`�	��L6ae����݇�����S.O�LR6���ꖻ���?���)�Q`��0(�N�����eѿ|�?��?�}��)/�9H� ���#+�c�\�P<h�x�I�M*��:t��y��`��ͮCG�N,C��Ӥ�`�Z�ȉ?H)��[�еd�g����T�P��a���XW�*���Y��e(�cO
��B�ڲ�M����Q;//y��W3׏.XMP�&2)�&�	�"6�PU�Z7&`M�K���"@'�_)�B��fCDGM�&���uε��Z>������Ϋ�2�hu���|-��k��7����	�����U[M��X��e�ȶy-�L�&4{|���� _�1�S�O`L�O���k0j�F�S��9rm&�k|���S h3CAd�=�zMi�cJ��G2m�()��x����� M�����6�Y�� A���'�@h�$�	X��.Qh$f	�S�]8�ε!�r�EU[��kA�� OM� iAvQvccЄ6Y�XD���X\I�1��l4�41��т���M|��O��y%����K���T�������h.,�q��KDo�mɃc�]�m����yz�0�G]��U�5��<��a!4��0f�WTj�5O��<��ɿ�')����u�k�c�����aM��<V�M���pX-켹��@-ׁ��F�l�ެv94N��BK)�Z�ahb��o��6 ̱P�y��� �Q�'�TL�Vbj�}�O�������,�|�-��: �A�e �)ͩ6�avrm_�F<�xP�t;1�B��N�H��"6�A�#:��.4��m [��W��D�Mׁ� v�>|l�u (�-��T��O�<!��4]I�H�!u1��t�	8J�ʰ���Wn���aA��	�MY"}[N�0`��D1f�0���0l(���ْ5O9K1`|K#cw�y���R�y�G���k����I����/:�6]��'����Ā5\�O�ȹo�mwK4�'G���ԅ�l;ƶ�M �wk�Aa#����bτ�Xtc��w_���]��D���l�.�]\C�g�T��a᷾�n���c́��.�I,�y�~05 A����I�(+M۔'i��w@�+��<f�Ua<o�b��1%m�;vSHb`��D���b��o��҈�)�MG B��}P��M!'
-yH���"^������%N�k�"�������L�����3V䋍� }�)�x*5��^ixs�<����>l����\,�ĒU��>ϫc�ܮ(�/��b�3� �����>|������v����0�V���|笉%&c
k����*M��d��5��;��N� h���߄�(�ڰ ��v��N��ۧ�r�0�c8�s1��SuP|���a6!�"�	�s0^�*&�{��4�@�jU S�Ě�h��݇�����ޭ����n���ͻ����"LÐ�Ѕ|�X�?o�8I�d;�G��fS��l��JUf��k��͟v/����0V�d��@,�K�����KS`�������m���ޜ�@��i���n
eq<�#�筑pH�ګl@�D�ܕE:qj�^��ʉ�#�e�<�ٹ�t�A�_K/v�T`�Ȳ<�Epn�_���]�m�R(�DY����ʋ�.�Y@��K�:��[�l �9�6|�-6��9�+Ι�]�Gl�+_���8��9�}�;g���%@�L�����88�=��גFt������D��@�"�� i8� ������O���jL*GR�y�� H�[�m�f�v�魯�hYI9�\H��ϝ��s�ZP���'e��&>��eD���e�.��.�����u���(���h���E� ��V���h�,�Y-"i�l��4?
�H�]�g�$��M�;�$�ef���c%�6kn�������X��-�\iyDEɡ,��a��%k������������H�lщ��ܰ��_ߵ�Cf�F��$�°(Z�=���㏻����h��{����z��uo9�IZJ\>�7��+117�h�a2l�P4Ÿ������ ���YɌ6}9\��ޠ�d8||���Z���.�Sk:/�`���|��*z�V���p����Ɋ�"�f$Z�$�}0C�6�� ���ď�M$��У\���ᰝs�h	$�5X�%���n/�g@�|(0Zőg���@�!ٸ��Zga@pi�Z�$�:eϪ��������,��(�V�M��X]��LM��E�,��GJ���?<}������?�?�k4�Z���+�G�����p��q'%4.Y�`��Q�Yk�P��P���^>?�f8��"���E��6���4���,;�X>y9�a]�{:�>��c��O�%�+�����ύ�k�����PĈ��q������qqM$��G�<ΖlǏ��3d�-�D��w���~� ?���z˂�q�~�?�V�
S�(�����c^�ob_v�O��� ��1%R��(A�6﷿h\�ϡ�FŢ�1��|��i�&���×�z�&�gi�RG��lZ�]�p����%-=�4�m�t*1bЋk��w���9�?��}�������zL ^C���K��:����T��C܎5r�C簮��IA�$g��fO�팆F9%71���%���Ar^bp@q��ԣ��ĳW����\�_�i���N/�@��S��/�_~˭ R-)����4�@��OD��ޒ��I��tZ��=w�ا�1O`�G�%����P�L��S�Ck��\�,-K�f�'�x��G	^O�?�t�wb(*��"���$�m���1�/Ow��_���3Uv`8�
Ⱥ�C��7�w����#^�3��mH�յ�;LF�A$ASr�Jy    ��70b������}���V�<�I��{�{��8�pYd�<�"2lk�v��>^|��d�>���GOnՅ��F%�ll+��Zs�z��lQ�a�`[��z�$�c�Ҏ���h�0W�r�>�]߷-𒇡	�/��O$[��׀�rb�J��ĭ�v;זu�]0Z�cp�mȚ����18[���S]~*�x�]Ў�`փns֘�/���qN����|�JL<�l�$e�ւ{���=�c�����1#R�t��x��9��'���U�p��]N�!k�q�*p��X�v6���)�|�}��/-�.o.8j�X���'�
��r�;��z-�L�O��ݕ��0X{a��[O�/G�,��a4�>��޲kR�*���^`/��T����!h�\�5"�5؛�9�&٠R�j᯦l��\�	gA�y�M�H�A�9�Z�-��d�Egk��lA�1P*�_���-j����{3�Kx�Յ�w���w��+X<�$�Cr���ְb9�ൣ��L2�4�4�K;Řj��p7g+!��~�8�XS �9��Y��b���a��M*��5���9����4x.�e�7a�ݯ�cp��m�-�_�؁TQ-M/m(��5c|����)Twx�#�ĸz9�V�?��x��Z��A,Tk���VK�0���b�r��V��w�
���8��'�%Z�>���{�� "z�V�0&�j	=Y�RM���i��E���V$�@s�h:�x�{hy�"�^�tƔV�;s*�$�y.`�#����w9�\��G<7��j(�*p7�Ǹ���iAN2rX��V��\���O�,�p?wl�yW��O������1p����gD^�dJ��d����EM���6|)M�� ��\/�5� �%x���	$�=�1��,!��@j*v��L)F�� 4�����M��k�+A�/���F� Hg�.$�8�H�|��o3E^�bu(�����@���S�_��DM��.����7H��z,�$'�dk���ma��fL#y����z�����4����:_��>*�D��0�D34����/NP.�e���XM�'>AJ!D	�jB@� r�J�~� ?&@�%�7�6��O����|V�hK� jh+6
�I3���i��ZA�U�`L�/�N%6�sӁ�5 R��-xkg��~D)�%�a����q���W�[;����=�J?�V�1j�I$?`��i�� M-�}f6��Q�^�J��%Ú^FA18��x���T��%s��X����H4�I��r왧�7�E#��Ī?�rX��f�swh5i*7^X+�'�Q�R��r��r�]�ߓl���C:]*���[.�W@���b(F��i%2� K��� [��
h���[��G�k��Z4!�Z�ct�� 7���s�4t��Cѭ�&���)c{CSE�@[�.�̌�ԓl�� �K`�@Щ�AN�0Ҳ�.���oG��I�f$kb��G���'�B/ݴse۰�k��<*&t�zY�4z�y���N�
=*t�Xe:��X��d���4&��7��.%�ܬ���,��L�gi��j�K�II\'^�TrC=?1ysu��_�;͗��z�%��5�����w~>R|�Qbؕ�*t~L'���{�GW��pA�IJS��S��pq'�^�fqMKKҬ�|��J�|q��"*yn}C�Yr�a�%����syo גEK~�MN�/�'MX��#d���/�}�9%h��Q��J�h�Ӓ��/k`-�R��]��6,Z+��z�S��缩���\R�Q�9\��
��-.;,�Vd<���MQ��Us�۰�f�Y�>$S�K5aq�%�x66�@�!;��?�w=MHH������֣i��2K�y�jA��R.?<?P�A��<��w�Z��n^��Z"�w�a:��n �>wʥ}���&-R-iH�T�`�?ڕvjn2'�!�Ho���$?�MF��܃b���z�s��nx9�=�t�ﷃ���q��c�[49�����)�Q����o/��/��=[<�O/����@�N���B-~w����3�v
������֌����qȐ۲�1!�Ƶ�NqJ�X���M	 i��5�M0���βKA���8`��ݮ��b��G+ٽ&5dI�%��5�.h�bae�Q���mh�fq9�ܿz@MX@���)ل��9k+�K�$��j�f��������FWj�А��9A�:
%\���4���b�U!�M����ڡ�F�)�M�a����t!$M�K��.�Ր�����a�͇���7/�_��ϼ��͠�hИ[>Y�[pt����*"�r4�ӵ�/C{*�y�eH6���a�d�
�)(7�����p�S���
%J� �V�)r1G㤗s#
�)�dZ#:�ES��Ƕf9���bRć�W!�XHhv�bK�n���<U�f���Ը2	BP��8�
�h�{ɻ���P;����ﻊ.�>u�è��"�	�b����+��.X.�@��	b&�`j5�����S�.t�;Wv���I��rJX�����3/p
ƕ����4g��r	���+pF�IRw���#}�5�4�ed1�j��D��RK/�ō�z�Vsʅ-��_�נM)�s�n�Z�ֹ	N1�R�V����CE,M�-H�뢋%���&i�\� E{eA�%l^�����ޜڳ��Hb��+�[�lT�K�gK�MBJ;��$��P�g%A��*�/I�
F117do�$'���q�Ģ1JpV�7ԺEJLI�����V(.7����
kE+��c�ٱz^MٴB��p/ԾmٴBa��H��c��d���,����k;t�/�7��7J�����H�)Te�EM�lJv�.P.�$�,b�Z�%h�|����].�&r���)Y`��7�SU��$��>6}[��o���WD"���~��k(���;vl�a�,���z|!��]��^�ۇ����'h�\G[�E�>R���Y�8�Av���ǜz���?U�)�)�`r���w9�7� ��J	jh����b��)�"�~���t}Dz��!u�����i��3f������O�x-n�C+��}� �gCױ��F�EЙ�����9҂�v�D����M����r�[����2k��)쨰%l;�)��K��Ncl��0�bO��`�	���-�}�;�� p� �l�ع��'���%�Nc���]�\��
[z�@�ld���&�����W�Z��5vނ-{mv�*Z:ˑ)%cWO�N��}_�;ܭ��Y��X;7���Z*1�fC�Q�������\��a��G-�TЮ��B)��y�u~���P�$0��pg��Ii����ȧ�U�?z*r���m:�W{�mO5��c���Q�f��E�%$�6�4F���֙nFMf��+B�u VQR�\��\_N���-��yY�
Q�	�-�ۈ�NAKuU6�ٯ�%�n�FM�,��fUK�IC��λ�Np���b:�mA���AAK�l$_T<��7{m�s�����a(Z���W�%■`��rx��X�VR�E=pP�c��#�
���u�.�>P��\� -���%�j��E�qz�AFˤ����f�Y>=|-��K)Z�!Ъ�HF�&�|�g��a�zjN�37�v�C)��Ke	�#��˦tą��3��R�D�jZN��e��&�qP�Q�B֥X͟f�Ε�4XVSB�%������d��I�/�a�+�D�����r��#��}�9yT"�J1>���ξ�oN�i(G.��-�1�`}C�R_6y+F([�Jx����Zx%�W�+�8���A���=}*�z+ᣆ/��.�����I����Ct�	�:�a�X�ώz�`�� �j����#��� ��!r�U4�4|���O'IX�j܌��w��a���YZ��f+8�r�~
����ɝ����Zy�vd-p�̚Y���֢�ٰ�X�U���LN8��8��w;��/�-"\�.���EK���֮\�#k��\�	Ѯ��ŉ-;�����7IrZ�(�0�),��>l�������Y�������\�Qr�R�s¤��9W���C.yc�4�(b���98�� �p� ���a���ӧ�a�t��    ��׻�s��-���M��Y��%����f����pkC�wh@�g4)JѺ�]�S��T�h4eN�`~-J�)���A�ܚ�%h�������+P:M��[�ּ☑�0�*y���%��λ�����+P�j�\|��/�X]i�����A��З��[2�8rZ�$ʳ0��H�CU������߀���p�׸D��VVS�\�@N曽h��傯:���қ��&�J�g8zT���7�n�R�)�wi�Wsh���(�3ks�+�B�$�H�׈_I��Ytr�aR��l��Dւ�l����[��L�V��E�/s��
#�A�R%���~Pm�{;���/U^�'�b�}��E}�g^�$��\��_gh����qi3��=ez����09�����8��g>���k� E!i�3P�s�~z�?~��<4(HD��B>A��u3�#h�|H!��q́R�߆r<z����r�r�Ta/y���8l�^>?�\[8/-�Ү:�ԡԩ�x�-�N�ud�)>���֢ɛ�Z�rq3�?�e��&���)��}�>�ݠů\�2f�K�:��IԂ���d�Ε^b���SZz�k�`j/��T�(^� ���`��P���_2��Tn�2H�+������h�O���5	�����^~�~�4����P]���������>���X�D�u�y[��x��?K$F
�X�E�\��TV�x!����8;��ߝ��d:��.X�5x��iX{�x�U�A�K��H�����G�sG+�F�z�4�'�g'�>��~2������U�Z�Ԑ҉|I�b���݆�~+0h`�����e�aR6�����-�T+5|��@�\^�.��:)�K|�A@���`�K=���,ұ���_j����@�&֪�I�əj��������`�J�;o�/����@������Z\z�D
����Y�oT���}�Rn�ɍT�+m�K����A�������S_�B{*pΉ��½�����wb����
�����v�ˑ���.�PK�c��ܑx�5dV� �Z��O���e�� �7��ZB�S���)]įx�i�SѰr���m�D�����?o?�F���r��iuu�Lf�&KR ��o_�Ě��1�!d=[�pאMN�E���1�~��P�XNc�0���N�6﷿h(I�\:Q��rgT�V���-�
��,��n��c�Z��d������r0����z3���J����c�������� �^r�j�Q����| !�\�X�5Z�!7̍<�i�-ђ&U��M��/?�A�T�)�'����t����nb���VW^HsH�2��c�f������4٫m�Zp�1J?�t�Ϋ�8� mt�gs?�M6�'�B�%�cB�m�H�"�����q�Î����5�ѝ��R;G�ѣ-������߀k5n�wl�EN׍��ֳ9l|��7y~9�t���Sn��T�Dnͻ��$?�5��z{��Y+� �<�1S��x�z�s��/Ow��_�������~Yd���v�zJ}��o���w����=�����Ή����d�O�]�?�z����$�GM��=KP�
aU�����W� f"�� Z��- ���{-������L)T�D��B8��a�d��v����|���z�s�v�(���A<���;�zlߟ�Tm��J||��K�ӻ��v�	񃰝
)ۣ4��߃�l/e��A(�+��~�j�`7���o����H�r��4�-#���~w��^�m�G�7���eI�t1�v<�r$R�j��1��1	�h�N:���
F�c߷gnp#I�k�P�@�������?���?���HZr<�/1�o���-?���������h$+���q&mېxT{�ce$���a�~͸��ݰ��TPPF�>��젗.�!m��>l�)K��;~9L��)�)�wk:(Q����(���  �>��_Z�[��U��s0�B`���-Y(�7�1�T��Z��j�I�i�Rѥ� {�1����q���}\�6��Lb�=�住uJV`[�]L�hB�4�'���0:$�\")����0g��7�4�5��-����w�7,� <�q�B<��b�\�<��y��9#�>��.#��
r�
oCu��>�W�Z���{�k�t���(���:�}��5���hġ�.��r�B��%�1ZI�w��Q�J�L�ѯ�+�GO��}8��⋸\ ϗ��h�o�O/�×����f�S�;���f�L*j�$��C(��MHH�H��ޚ���YB�	�*$!PQ�MH|�,�r6z��ǈc����:�~΄o�aXI��]WV� �L��a�RrV={{P�~�D0�ǆ�(��r<m�q���k�N(��Nl.��M���1��M-�4G�?��y̋S- u�%�}�I��:�G�h5��+�Q�Ȝ��P�MSN�B�x���(Q�$	�@˒n;H9{���s�F�DgjC�9�
����C�Z��z��IV���1������rzXl��e�x��HZ@)�"�,_%�v��	�]�q9��	_�끴�J۹عT#���Л���*,�A'c�O�n^���Bgs寈��Z��ۗjTD����n���t��9��H7$�
:bc*t�u�y�k����b��%â�VB��}�����+���v$,Nq-4j�R���L�-�&r �TO�n����F��+k�̨�'�g��$�]�z��V�ۡߏ��}��q�p��$�j�q���^>�[���<�q*����n$ˉԻ�p*E��v}��h@a{��t�	��-@S�@�D��c#
�)B�p�7��1��� �i�C�R>��W�w\��Tj�4�Т�b.�\H�&J�8�ғ�Ԗ�(�tc�r��K�"�^A`��$c.|��D6k0�X1�yM־�?���U�9�fE7�B�p���ܮ�ζ8M�S���~��F�*
r��֡�T�7Ґ�Ʌ�Y����Hs"�R5gL�5w�M����w�Z�F��i\��!�����|۹Sh8i�h�Q��WBj�6�*9�5�Vj�F4�iP"�xi����i�\�:��Z���IbH'%l9i4��}���n_��Q����A�ec����?�	N��\�G��
4q�}����_9Cul��(��4`-��⨳	��h�Vd�B*�OM���]݌��R6)gk��r���4�:$�O،v�2\4��~��	x*P����p���6��I�u��jzH�,������)s|��_�,��\���<RF䚸�_ƣ<��촱��\�q26������>�u�ĖM6*`q&��Iƛ�����qw��������e?��4V��NH֖�~Q���`�s3DF�ddb!(+�6�����c(�$h[o`��������(b�Fr�&����q���R��"�p͇�c �����;�Y���=�&mi��}���\_7+�Aȏ�A2��C�6�AP����X��&����2�|����I�y��`�7ik	�@���)�F��L�  �H='�4�BP$}7X ���j|���C2K1�����xsYD��H�f�z3��5Ne;�N6��lj��j?&�k|�jc��A��5���D��K6{�g5A��(���F���$��-4vxʉ�j�	H�M8�����)�^Am� 8E�����9LMv@M`s� Ed���k1u9�[�L��R�������ˠ����ɝ����J�?K!s��=��A!����BR�������^!�� ���vl���)�z��F��sp��I.����"(���,���X����q��y�K��*��RV
5C��jM�+zd?4���Z�4N>�6����T8K��5��Ȳ?Z�'��GOe(�=�����G����/��l��Hrb@dl9h�!`/�4��L�A��g�?#n;@ѮQ�ct��M��3&P��C��1��gLn�(�;Ŷܱ^��z<�A�iF����	�(�8c�*+�F�?��39HZ�I����=��{9���������a7۬$��E���je��D�ޞRc   �XeS�݃n��)�q	٢C[V�i~�"�h���m�h�u�����.�"�MH40ƕJ�D��X3!yr9�6�,�ykJY�AB孑\q>SHr�h��QI�*,����>d�9�Ð��Բ[`�sX��]F8���B��w��J�(N�G��>�V*j&g����
r�X���F���}�x���0Ԧ������-��6�����زTCn@�B�H���N��W�>�w��>j
;!�5��[���7�����X�b      �   �   x�e��n� E���L��k�/�"F���`��C�~N#��}��p}��F�P�>�����A�
��oHoF�p�5
��>������"��%�2c�t�|���p(�~b�����.í�ǽ�`��{�D�2/8Q]���m�u�:`�?������u�=��n+��g���<]��gƀU�Q#�/Əs�F�4���j|��)X�ȼ���64Uj�a�V{�	���R��8g
�����i��� ,c��      �   �  x���ێ�0���S�}��g|�Y*Yn�f�8��j��4{����1��?�SS��k��1�����e��W�/�s)rPG�����3?o��O<�窨�K%b��+��]]��=8z�����P���2�� ��hj���wzk�9����`�G�م���7\��j_�}�UȒz��/�й6tU�����w��pe�/��J2�2��B�3i��*_�O! B���B��xI�4���kD���!o���|A�����%G4�����ܿc�-�&�]��D"�Y��R�}Y���t}~躦sU�{y0w)̔\�����e�ܦ0�XH�΢o�43�O�lF]�fl���y¨nlɡ�ڮ�����=� �:�B?R��F��$2Yf�S����)d6h�;z�:�8��<����#��@s���T�t����дũw}9^��J NZ�j���_�i��Z+�Ҍ|+�7���F'v���i�Ql�a����r��w���H�E�E���C0�7�#Q���s�[�� ͑��P�
9
J%h��lq}V�c�F^u9�#
.U"lCH�sG�_	2�!��)�|�G�{���0�0G��:!�q,4�b�����FV�\����������M�      �   B  x��лn�0 ��9<E�*��!�Qn�FD0�¥�6(!x�6���}2m�{!�)���+-{��̢7ؽh�~�,\?�t�{ �̞�PA9�ބ�t;����"t�!*ZîL�G�&B�GN��w�����#xR�3+�TYer�.����-Ke>\$��:%���Q ����e�NRx�ң�(�Tz��w���d��2���kP���ĳ���w$����H�Rq����x��n��v�@��4��ւ��k덊Ls����1��'���|����*����U�v/;�@��j!�66@/����(ߟ��Q      �   ;  x��Q]O�0}�~��L�F�Д��g|41�v�*�m��_oK��Gn�=�~<�ŸT�2�uGo뢪���\���^=d�����q�۸�n�£Q�=�HH�#�f��@ f�>�?D��/������m�.ڎ�c�^E�d�Gn�Q�f��?O�7��G@%v(��mT�V�s��נz-�����|[E�s��$1XmѕM��B%��o�ܣ��F�?QyR�?��D�t(�����6����pj
�����@nu�k駱�xQnk�:Y��DM�G$�&�/����ˈ=����	����yVv��,��/�0� JH��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   -  x��V�n�6}^��&�{�M��5�6Ej q�YI�%Qc�Txٵ����K/_�3���v�p�H"9�9s��O��o���vg�IǸf��9l!2���+����Y7S%�B�Κ�򶕺f��:�Z���`�dy�N��F�g��,[��;�\hй�^�>�������c�=�`�K��b��;��K�`���-Ǯ�
r�d���Úe�^��dE௅c���>��nF�j���j��'��7p��߹`�!(QU�C"ƞy�� U	zv%ሩF3nvQ	�,�Y��:+�'KPl/�H�0'�N	�z���l+F�{�L�G������x��إ�O�ą�<�IF��ie���'���v=e~�>,{v+3�|�� �,����;�	ˎW�=�+�����ɔGY�+b����Kw`2��e)[�]b���,�e�d��T��$]�Q�m���ZG���xzˀKci6�VA1=��P1y�:!�i�R@Hk!��{A����?�\
\�ڄ~z8�+�Ӄ�(c�u�h1�O����Cʷ����,G�B�E�ؖ"X��w�7YI-Xn I�L(#^FO���Y�
�Q�Mh��Z�K���p��u��Y%vE�d��b-,A��
��R�nŌ�9lA4e�%$���B�S�̆jЮ%���� 1�+EՄ���P}cM�@>��$*�/��aD7�pˠWD>�q=����bk�_?�h�MF�n|��{
x�⫋��2�r���U���DAJ��}�[nO�����Ki	'���8T��>F� ��E���Q�Xш2�!��h�H��{��EE�N�?M�߸�������vf��#�H�[W�HK���N(� �ܞ%Qi��1'k-���A'�GH"�K�Ҩ���
�FE;�G���?�X��V�K�Oo�E��W�v1y�a��������kI��k��5EXT��뿈�8ݳ�!�Y'�skx��xi:j�(G�3�_Ah�A}������:	%6�[Y�&}*�;[�jer�����JEuE š�����.T(�$U(,`:����7�����5V�H�J:1h��<�֚��-�3R�!�d�?p �P��-Pp�ݹ ��d�rd��ڬ)��;��D�ƥ�x:Y�h���NHs�#Dt9�i�|�Ȇ����G~Hg���o�
�D�?]����Ϲ�v����=���m��31� C�&� @l0k\Cӎ�bT:�l�4Հ�f�:3�	�53jI�K%}�%FАQ��N7�Z�Ey�엻XQ�pLG�m�g�B���D����e����u��_���?f��ի���������9;G_����b�̀IF.mxzr����i)
�eCU KXn�YV@�a�Y\%F����vjWi#8|�Y�7������ndTd�|��=��I����J\�k	{�مD�Ԓ��H�&#@%j�PI=���P�����u|�FSUu�~���r��4�1q$����'�m磛d��WOyG�ؿn̂�ɓq	�w����7�c��An*s!��4�~$nER}�T�Qk�~X�(��.aG-�^5Hp�9�ƕ������Z��      �      x��iw�H�(�Y�+rXg�RDs�U���Kuy���]�gF��)m`�eN�~�������a���Xr@�4e��+WI"�\"3###"c�l=�P|�Md.r9(�d��ɓ��"K��'����\<K�R���'����~�^���N��g:�0?�b�ɋǍQQL��G�.��h]R�A:~�x"��r(f�4l4O��D���Qr)TX/��Q�;���K8��B^\D������8S�5��Df-�,sh8Fc�ӱ�yN�(ė���Q�Q.b���I�1�"��N���@�@�44��T��˩�f��1TѰ%>������z�&���)���X�<:�	��� �0�EK�&X�D�1 '�?��i��BNq��_�a(�p0�6Z�e�9F)��ڟ�E�8I3��Ha&��� �<�`�`��!�":�� ?i6���Q�l0yT�p,�*Oa�8�C����0��X��`/� j�nu���nw�����;���?u�N`��aD
s���oP���#e��>e�m�J/�Ak�V<е$�5$��uo뽌�pM�÷��~���O!|�C�����}��[$�G[�Ů�s��"�j0%����B4�#��y>�)�ah�x#ֈb���!�5��*SSd0����\��	�U�����q:�,���0b;�H:-�"�7�&�B���)|�~��$Ka�`�S1��I�`�����L��c�bI�l,��i`2+B��\P�����\D�h$>���Gj([b$3|����?���J�V���J�`��$�' nͬ�޽�d�t���a�C��L@2��gjq�y������kw2+Fi�x"�х���Yv���v��N��|��??B ^v�;W5�_d,����	�fC2!�/���if���hl���@iRa�����&<��Y�':l��p�%L
��z���Y^(z!�0%��2|���p�����i*�L�0�i��F�<�
# �U)�� Zf�?L�Z�R�@����Jf>�ςg?�S�W(�Ef�Sm]���j��4�#�3���@T4�Hለ�\����*�d���y�[L'�[Ǻ7Fč$3q��C���8���8
��ݨ;���h�vZ 1�0խ�#<Ƙ\d2�ӄ� ��W��3���!06q>�b��_��P�P��x���F8��@����i��� Ra����8L+Bx˯�3D"���Z����>auT��P�F��\*�Αޞ@��h�X{�f���T����fk��kD/�`��1H
�t����3�����_Ba@��LPY��l�*]�W��dN��0�Q�dh��;�B�����v��ayn�e8nX�c;ـ�p����+\!��Od��(�5�H`�ʎ��|҉��,��u�2��V���E�O�=�"�Ҭ݆�$�l�S��E�{&�gː�I3�/r�x��xXJlHT�G镘N��ʸW�qzs(l(l�O���_`��L�!�k���㼘��q�<|��pv��qvy�������}��	����O>��lF%�;v��Í`�!��⌰������8�-���9�[�E
!~��ȗ��@�����)�)L L�^_أ@�a�C�� R�(	 L0�e}n��$L`Y����>�͠��,�H�����Ox�#n u����M���Χ�9�vZ <^���=+ ����8+�`E6C0��
���ϊ����Y��ËxqpV������YAR��+Rsz�v;��!W���r<�¾&ʈ�����ˉTG�.�"�� gƭ@��`,N���`#�����0�L�a� z�%�%8�`>ضR��X�z8X
CG��gh�K���ūWoŻ�����7�+|q�����\o-�D�&4���_�Z�a��	�S0`Y���2����[{���LP����>��4�#�j�~ƹ� ~�I�p�QAGy�&*l�JH�=#�m%#UH�4�8�Ac�8���{�Ҋ㹣g��ID�D"A2�rǩK@|uػ�@���#�e,�@$�Cd0����s481��0��$�4l�/��CO�i�g���?�d�E^�XO�'?�ʧM"�Ⳝ]��&��
�>�y")�s�#�A��L����Pn"CF�	4�]�ĵ��;)	�H�|7�ӭ"{�І���Bg���h^#^��Kˁ�uYP?w�������p�8>�zA�?�6�F$�]�rP��w��	�AL����_��H��q�1r@�Q�k�A����tF�D��X4vv����BT����ǝC#��Y�7~��2�.#8�z�9+0�� e�$dU���Q 
��fs�߲f�F���?т�����������DLü �`Y��Q�3�t?	r�&�.�y�&"sH�-�G��"p�_[�%~��;�Uɔ�C�Rbp�!e�U5`J5qn>'iW*}F^��l���30ઊd�4$�L]#-�"fd��Qφ �L��H���g2^���a�Y�(~�}&�5��N~~�/�04;�%��F���mh��6�d��� Ȼ�I�ǆC=s-��~$�l��b�쑍s�|�i�t�A�쵃~;�o���aS�KL�Et9�L�D�O~�Ɨ"������Gÿ"��;��!*P�?��~'Ȼ�Ir	uqS7	����i��q#�w*�w;N�R-ҷ�u-�9�}�lm#Y7ev�Jk���6���=(ž[��24o�6���"&ȸ���ON`+`y��CqF��s@�f����q��P���H)���K�HkrY�S�ۖ�9��)���r�R�U�a�{�i�"}0��J9�i��e��
t|(�2C�S��%͍�C���5��H��@"�h L�s������t���aU����P�3?Ief�nP�Li� �D�"�J{M�f��l7�p, �
l9{N�M����j��)���ꚝ�����K�{�{�~��7��}H���7�����K��v1M�X\�o�@&�0��v,�mjkg�4��ǩ�u�n�Va����Y�no=C���Em+t#�S�>�Jn����������{YIq�B�)-�������m|�=P�)I��r��!4�"!�ҕH��*W�ԛ�G���)�c��JƸ�	l_ԥ�{�C$�a�$�J�q�H�
`�q��nO�Fa0%�ƏwV�4�d�ՙ;��Rt�2�0u�j[�p�o�p)��w(M�5�Έ���x_��מ��4T���.�;�3^��7��nt$*��Fy�|K�_�}���TV2�qE=��&��B��I4�f ��M� )f�uT������41�&���8��ݔ��2
ݟ�g��D�0v���xy�ˌğ1�#�2���G2��%<��$ 8��;yxV���1��0����R����B�b3k:�jN����`C^���j��/)�H���?J�ݳ�O| |�ݺ�M]�i1����ɚ~��)~���*{X��C�_5�*�ʇ�Z�cWPU#�<q�����P�B��do�-ꁌ��&�g�Q}��T�&s�؆|]rg�f���ret{�9\�"%e>�5���[^����t�Ğv��L���%�V|�Э��֩��r'�a��.«f:L��p��a_U�\�"*�E�$)��Z�$��ǝ���OWѰw���a*h�Ti��k�iQ��c$E�@�=� ���/�|u�Ϊb(�_[��kK�d~��<��O?�zh�h���{�px��S~`��h��+�ߧ�I8D�q�O����$o�������z�'�-u���z��ZOŭ�4�D��{zD$���]R��>�m�ZO�[�{k=�n����ד�y�j>� ���P�o���[����z:��}������G�~D��{����mIn�J���qtEf��o5�&�rAYV>�bd<���.qZ��Ȗc���/�p��.�|�xN�q�%2����)��S�ɶ�����4�Ch�p�aA&��4
� ��O`�0�6v����6�m�����, �f��Y�Wj^�    �_�;��_��^M�����n��k�6wjJt�qm��ČK,4u�������cs�}�T`|/ᬰ����nU�������I4�5�ƠK�v&b�����F�c��V���ZcF��Jg7�5A*�.�������pK��P�%k�t@fV����RpẪM̤�%�R�l���R�ۖx���ևjsKTj!c[��w;����Wǰ��;R�G|����PQO�(j����A��FyP�|��N�=�S�)��}ʃ>�:}�O������29���C\�hS��ĵ���N�������b���-VY��Rd�-UA��R��V[���kKUhTm�
ͬ-���ߨ��&�Dߪ����.=�F�S�;�Z/7~��$;��e��H2��jd��Y`4���n��ì$%5��#⒆A�ZW�I��:4�Lm#e�ET��a5�&<o�s��r��wU�/e��Q���N(�5�Q� �)#�0)c��B	�:�܌ee�����FJ�]���v�\76E_�r��:�*����NsԂ͕��>��H��DC�^%;{�q?�P��wY{^Y��X�52���~�"Yy]�p"ʜZ��j?>����km����Q���:g)�Jr�%��@W)�2��w�"s��l���'��\j�%��\�7:Y�e6x�v�Ŷ^~T�49�x�8���J�ʯ��B)� 5�ufTc�s%q�}Ɉ����n�Þ�p���<~w�Q]�=�g��p
D�S%Էr��+���<6`�c6%]����|�Cշ)X��u��������0�"µ�d>�i&i��7���nQ�ё¼��=>"X,6��48A�V�aTm�Ns��#%�}op�.�#9�����v�-���K�=[��,�H��K��N�����."{�^cL�X&f�X*w&�|l]�gɰ����ˎ�?<}����yGCOX𞰰�=Ba�a�F;�V��*�� �=���Vg�NaV���>���������w֙�vt�^�����jm��m��Za�7cB�V�;���'j��O��<\	�zs�� ��m��y����V������й��ͥ��Wj�;w����Cg���/P���uE��	�o�ٸ\��h�m��=��[c7`��s����k'.X�[yw��X���'�;w�˕�r&z���Ѭ�����1
�w�h�Ӷ,(Γ)���8>�Y>�&6^5�K�<��'u
K�G����΢tsʽ�w\����B
�i�RE�g�a������L�;�%�OF=�5ZXgN��y	�@>�@Eb����l8�:
2k��96ۏ������Q�cYI�ɢ8�Ƞhh�H-n#jq�Ⴑ�.���&��+H����<�� ���dK������֏������<̀1,��o��7w�쯯1F9��8l?�tEӹ~0���y%��#&�C=|�b?:��z��x��ϥ	D��ډN�Ǿg�Y�����c����7;�&,F��D�X������h9��=��4Q�0�6 x;ߡ���E�@M
�yݵ�{��&W7���O�+��x���6��Do�Dv�Pt���Eq�#�ڭ �O�o�ۖY�U��,�R�	|m&}B��UZe
>N���-9���O���!E����^�Q��\G�∶j-0n[J��dni�p�% e���|(6ͻr�%����c-g��f���!�5������N'p�\��W�S��e}p-��U�졎��q�E��-�K��3���yhR��/���t��A5�g�/K�_.(���+��k��|�u�Q��3D�q�a��� �s�P���pGL��Ձ����ʹ/��tߖ�b�ʳ>S��/�u�3�2J���:�x_{m��^HY��^��թ�F�X�|����S���#��Q}����*�knO	"����^�t�	 f��)�-�h�}8s��A{tQU�Bl�?^&K' >F�鉋�_���3���j��6�I$#mL�m��k����w�3{���2̈́�T���,�3t. �cr	瘾�0�/��N�\��?b��2�z��s�e�¶�z�q/�3�E=Qc�.��;��F�jK�s������{	�ڝA��P�y�ܜY�;D���8]'<]��Aӵ�G��ڛ8]!O�o�t H�n�&�[�g��3�c�Nt��g�
��;h@ʟE^e�ҕ�1�h�2y��d ��	bCS/�Ґ����Zㄆ��y'�%���4��]�׌��ú(%U&�e����K�cݗ{1톎�ab#��bu�v�"�54���L��'�J}�.�^���I��R��1�m3s��4	�Ϛ=�����H�>g�tX8���5�:�.U�;�俯P�5!����ɘ�7]Ӷ�|�d��N�i�1���Q�m�S/����x�k������������ؔ^SE�f�
f�Ff)Ԗ-�T��ݾ����}tW�;����
� ���
�q&Cł�ĉ�cL�E��-��4"Q��)+���Ҿ����0�����߆Ҡ.*�����	g,�[[�RL8̈́�芁����\(盛%E��X5�g�$J�y6����'����L�ݔT�� ��6��<����t�c�<eQ�w;e	��ECH����k��t����w|t�q�U��hn���n��q��?�[�_�qܟ_�s��w+U�qе��ۓ�`O���G����r�I�x%���7ׄ�X�L�������K��<>����\��V�j���9'�H�<���Ǔ~z(��w;;����@�|JɨB�+圆�Ɇ壞�땊#��T# V�����%�M^����(Q���g������Knx���Ο�Ug�6�N4���+N9S�Dy2�k8�`(/B4jWq�����:�i���<�6�~��v�߫K��	(�E���pf�D����9ƹ�-�)F�D<H9!��?;ZȮ���y,�|rB���4s�,uHG����Lp�Cs��x@`a�\`kJ c�9�("WSK����/7C���]:6�wvR���i�z���M_D�X�v����B�\�t�-{�~��0'&a^�Õ��y����|'޾z���k�:�:@�������& l)ѕo�sD��z�]����ZB5u�e=�?�\�������	�b<K��8�C%��>���m�!r��9Z`��������ϩs�u�5���T9�*G[�#�nf3!�b���(���'^S�L�x���+���t�^|�I��y8�is���'~���B�Bo�5	o@�X�����z9F[Dnc��U��-�5f!
�2���K��.2}!�%άI4��y�����SpRɼ�ֵ�^�� ��;\�����և�(fC�s5C8X�L�����mܶ�Q�o��t��w����U��x�s]X'BϺ<DdXh\��<�Ɇ�c蔮�0ai<�t]�84��Q4�`�]T�����rj�����3-
c�'��n���\rf�̀��&�}w�"t�޹Ù�4n*�/�ب����Qpw˦<���t��1*���M\?�$�ʛ��LE嫍X*8�t,J?w���`J�t��I��� #|�3o��4,��"��!Y�� �����JL��|7�R�h7j��|]n>G��Ge�膍I�p&k�eCJP��ݮ��ɼ�.�"� �]^߅tv/��3A��#�����R;�`1����	��X���ɔ_<��1
JV���l�-����4� ��7(�6j�i#l�r�݌qYT�:g��+�S��0��o����c{��Xmi�չ�����_k�'ѹ�5��|ל6�����v��j���;^�����m�i�x#����w��{�5�}��3N�d�p�][���q�E{h�p �Q(g$qe�;��s��N�9���̉b6i�����j���2�����B$Uo�&����r���[����<u��(*Z86�V�Vj���I�̮�/Ý����<İv�	����r��SG���-�¦X��Qd�wLh����F�}&'�����yҭe8i6�Kl��Q��X&��w?��|�¶Q�����Ҏ�H.�l�    U�v�ͩ�xz�(Z�8�4Ⱥk����������F@ь��CS� �-�Q�u��㠱	K�.:E��l4��(ĥ��,�ͣq�!a�]�<'��XB�
={��_dPN㉇Et����ȑS�B
"��u��I��ھ�҆��`��j��������kt爓L�w�8��#CP�q���(Ob�Z���Y4�X�I8��pe;���G'���CB3�h�b��{�s��Q�+9�?%�F�dI�dj5���6V�Y��(�a�^��q�<'c�G�>�~\/PS#�	%��	^�w�Ky-v<�,���xL)6�A�qC4�rt�o�)S �,1�5�[�4֦��_�Ԯ7E(���
6T�2M��i�e��rvq���Kui(s	���t� ����<����$�S��ry�W�L?���޿����ׯ_��3Ǆ�t"R�l�:i@̧@��W���Qmf	�9*^��A�}c
�SKN�qWQ#��p"��+�V��^B�o��-�*���|�D8�A�/�|��(��ty�ɚz<�rۆ���P�2Q��k�3���� t	�1%L�>�y���d\�+M4��^�i�)��,�C�u��0)3�)�g?)�$�O��&��V��|�X�`�Ճ��JUQ�R�኉��]��1I�`3�{�����l|@#&?�~(~������z��f�:��^&&��D��/a�ɔ;�qmT<�c�P����R*.H����xJG]��Bt`g���0���W�1�<�R��I�&��)0L,iD�{���$eӢ �)�P��(�,6��E���_<R�x������_�x�`r(Ǔ�MI�P���*��\q�����d���Ӵ���hiQ��z��TS�xگ�Y.��{���6$��{�0ԭ壑�C���Eso�	A����d&�3��d�9�8�.Ԉ���Z�c@�@� ��������'__^,v��g��b��kR|`y;�8ä��L�ӄ7�5�A%r�e��L#�̝����H8�)v��52�@���6�z��4�r,_�[�ۭ	+��76��k�w����^��HQi�k��J��X0���X�W���~J˱q_�a��*Sv���L�s�>���Q�H��a��F%�;;�m���:�|���<�����\z;�#ƙ��z�Njb��k����c�O���`�^�{����r�"o��K�VN�G@�+�)�Re\�o������k�xM��7t�RR�) q���b:��ǟ굃���߾�Oq����> cI�S�M�h�=}����/���_�����Ǘo��ˀ��pe\�e
qT�y;�
��/_��Kp�;�����K,.]
��!�U�a�-1L�i�7����i7����
^3�**~�H ї��[K.��5'�Gm�'ԇ����8����(X'?��� ^�P�xؐ�?�c���y��QX���T�jMЪr��r�e ʳ@�a6ħ�1 +�����nЂ��Jħr���(B�����b��T�F��S��rH+��g��4ۡ%ˤL�n��U�f����A`[�: ���z𕒮u�q^��,��laf��&w�b0p�ob?�9��X^�'Ō�t���N�W��E��q���#���KNt1[:�2�FI�?�.IHI�K��ч�CL)M^)�ӗ��.%� X��,�촏Z����)^Ef�Q���dM׍�9�4��N N1��񁔰�Vk�v�_ �S�eƆo������ob�����;��p�	6
b3�ڬ+϶�DUU4�0Z�i���\p*"�F�n�2�z�\yA'����`�U��cj��=ʵ��P��y����vC�wx���4�cN��pAg���_#��⯄	�}ޓ��!V��bVJЗ<˂B[�wjX��}y���ӚQVɟ�EV�.�1��I�d��ֵ
�T���$�msTt2��\8�U�U�h�Ex-^I̢�K�k�U��J�����!�~g���ܓzFR���놡]S;������C�9�J0��[�8p��a����_UY�5/�T���vFv\��k�z�ּhT�l�g��V��1g,T�6MP7��[���I�M��H�>c���N�Vс�
�0�۬(FCͽT�X�TD�h���VY6�;c�5ҋ��\��J�ѡb#ee�|�fC�����Z*Wn
���}��T��2�S�I#H&��TNh�p�o�07����dM�3Z�xF��v?��M�{��Q/���6O� ]��<9 R�#�	�6�"����z�>�[{w�D���&��O۟N�؆Tl�\��鴻\�ݚ� �r��[�uM�]*y��mښ�y"D�R���_�Uy�,��lMш}�0�B|��6R
��Y}�`ĝ��W� 
*�\��DtJ~��h�BOU�""j�m�*���dm^���&6�E��UV>*�,�<x�Q�`	�X�SL�d�n ?�;� ��1�5�v v��)z&x�������Ji�I���N%��jx���(�Q��X�q�ȉ��B�r#��ʕs�}x@x����P�J�B^xv�uf�x��׍.p(�D��I�&8)���\�r	�w�C�h�@�[���g��
QQ�j��tv�S����׮�V�ږ2���â�����d�X�\��5��B����QL�Q�g��
N������v���r��C����κ�vZ������~���?<j���P�����;����A���ϓ8�v[GG݃~w�Pt�[G�������z��G��}:�j���~k���?��������~�/�{����~�p�@K6?x�m�����,L�I�S�K����"��bT�d+Q�T���^Pb���� ��$�瑄_� _-1$��d�"��O]&��v�wh X컏��G� ����\6�*�l�5��x�|TsMe�m���N0���60� �^[� �h��Fx��2w�HU�Aכ�x2�Ն�f��|���Ә2�"���aLy}�ELrf��-���`�g�3� �f����p��!��Jl Q��lђi��@��ʸ���/."L�ZBN�T^j��W\����3��}��fƨ���2j�I4э1D��f~ �.�C['�/!H��l���\���1i���|��)�ﺹom��ж��u�ZJ"����&�`�qnw_�L2��+)�l���R"�E��ӘM�T��4�U(��*U�_�����+�%����@��@M2�ƙXH�7��e���p�GqT�hm�[�Χ�K�Y�G(���<RQ��Z�(���h̲��q�G?�R@,�g�'R$�'�f	bQ�&����l)eˁr��k#*ld��9����,b�(��T�R4��R*�"-$E���B_�n�m�17�.j�#��_����|�g�-��/��Q�H�W�4r Lъ�%_�G����Bi�Ԍ�JiT�d ���U�n�1*�;`�I4(��+,�J�,~����q+ ����ce
*4�"��2X������$G
&��<P~��Y8y�-�AZv�ӎƅ�JL��t�R^ʄ`���-G��NT0G�6�V&�9�F�ڒ��
/x�
��&��&@����Yap���4F�D�^��w܏|�u�[���̽��3��W�ES�f�Ia�-���Faa{�Y?�������^�C��Ծ�|��4:ߪau�IP��W4��擽��C�zӡ�}cm�:ݒyi�d=ԏ&�⏶��01�g�߮'2;�ު|�)p��	�hН�c���Y���.�c��\n]Ss�j�VI�ev���\���1�B�����U�]�ɬ6U� F��}c.B8�Qi���ǐe"�#ߣ���kzZ�[6ǢU]j�DlS��,��$�F�ʌ)z袬a�������rz��z\Yd�c�nS��ҭ��c�2�� �e 2��%�=k�I��4P�_��ͥ#�Mi	[��9�@A&���e���,�)� �i,�^*���T̥���/��(��ʫQn����B��F����?�*-��KM�J���/,9�DL���-��;    �f�����Һ<$i$��$g�ĩ�6�a�դֺ:o9}y��%��I�R�DNv�v����'�������֡��J7F�!�̖r�I�E�n��#2�ʴĳ�i���Q���D���:6�L��a�9�@���]�r[R����n��@Ɯ���̸Ҭd�����#̴ᝫ3��.l��0�$�JH���QN�/�U��AFFZ>��י�U(�-}�R� ��Ux�Ќ��_���b�|	��q��ay��x� ��>�(��Hd(�=�s�r�P��FN��K�»~<�����տ�@���)�3�����b?,���]�SXJ���L��V�N~9�l��}뷶\�~�G\��f^�wh��K����\�%��}ENJ<@6,���XW�f�}w�xC�]=ڲ�|½��R���	C�Ft>���{Z��N�z��ӽ���߃�08��ISu�p�4��ϳ& ���/��s��8<�����m�8�y�2�M��n�	�C�͇3
;%2�#��5O��D��B<#�x# D���'D_��@�!�8��������� K�31�Q)�$�A�`T3�@��Ns�W�AR2*`%�1W��B�s���>���]c�tDr�E�-q	򣝖��������������,͝���}	b,�|���b��:��8R&pY	KğD��0�U�q��,���������@η��V���1�[ٳ؁"�^�3/8�\/x��=l�a:6�T�#������R,����ƾo�\|+�	�j7�v,�,K�֧A�Y[]�Do:}�4���D�#t�;R�.�!�-��G�(��?����锠�����ϖ���iX;{�G�W��\�Zi=7�#0�}M���|ݧ����N�,G�(Q�n�Ph� b*�j���ޢ��^ ��%!� ��i\D$�i�u�?֗�*�mr$�	9�Ɍ�`ѐ0����Q�'��͒��}���%dK��h�M�OM{�A��Z�xA{�Rs��ڀdl@+2��b�}E빼H�d4��[b'A�5����ø��z@kCe�����~��]�����j�h2������ʍy�%=_�U��ׄLʕ�(��#�Gjcn��hc���/�͵�}ˀ��w�h�"�Ҭ�X���H�Ӝ+�>�Ptv�����H���ݥ.�G^@2Os��:�}�g���J{^�e#�f	ݹ,�0`����J���f��ޠhʂ'����e�x�%�ˉ,(u�#���W+4�5ř��u�'t!�(�\���jQ;oR1ش��Ud�Q�{�V�#�������|���յ8��ߗ��}����}�9�Ceo"چ��m���z�ڝ�@p�)�fA:�%��x��,�y�����)w>�&�>l��d�
��Y������2�� P����W#>x���"L1̩q*P�U0���{����˧0�%p���slA�D�V������36�����xmZ���9oG���e�;Tp�)��a��X�j�&��T�3�:��-���m*nj����H�r���vc.ޏ�JX�5W�TݫN[?u��}���#��2��̇��w�96:QR�ҫ��1���[�z�����SÞ��s^�*:o���^�����Ռ�s>{��5�_Ѱ�L�^j�@�p0R�b䬑kW�vR2���UP�z�n숐|�'-�+�0-�ӕ�5�w<�B�V`9(��vAK]�V��q� �E�1�R�nf5���M]�؁� s(�����.��C�J�'?��Rm���䫨	[}́b��1X��{㨯����r��?�xz����s'��;Z18�	�����R]���Z�;k��U��V���j��Gx�~K1� ��o�A��7�$J�7�"�4�P�f�|7̀A_"4����F^�7��w�׫�_��z�pw=����,��,�>��!]�����Uc.�ܝ%��#���,��q�<n�l����Qj��v����ҭX>5�Ō̰|ʻ���\�%��S�����'ՆG�m�a�)�-��+�/��+��)�,y6�E��E�?��XV�@��b��A���+5L��[z��6����p�J_�U�%>�Ѡ��e6�q��R���2!֣�n��9�M������Ƽ1����)���>�ʵ��D~�B�7�������	tJ�A`�HO�s5K���p�;� Ye��خ� �-��v�mMO�]s��>z ���\�H6��3�ff�N���a٣/"��^�O~��������I%��_Fd��E�\���9ǈ��2��J7C���ļ^єWTe%��A<"�������-|Σ�VѨ?'�U�ׂ�wJ�/��a~8�͖�O��oDZ�--#��H��2Ǯ.��	��.�L�+q����S'��
�~#�^��2�^n`Uv�\e�
���v����.7�팵ni)6�^�i6�W��bSx�}���2��Sx��J��I��H�dy���ŋ�/�jπ�Ya�h�̧�*��m��:��8�oA�=(�v�9����J��,a���<�� Sӻ���woj��U����c�b_��Zb̽�5�d�;�0�1�(�쐏�kY9�An3�O@[b�f�Zp��v�&H����lCQ��.9�����k12���Î�Jʚ%�������n��F?x��܇�fSſ�I��v���|۩)�'�[
�W�*�B�Z��-qܯ);Ֆ()��C����~v]x�ۚZ)o"�iW��~�\���)�м��sP�VN���<������7�a�ڡ-P4p*��� ���a�Җ��I�J��&+.r9��L�q�6G��*ւ�\j�+gY��/*M�}������Ȣ������i^&VϦrI_h��y��#1�s.Q�%��⺻e'9�L�E�����T[�ڣ�Teha���tdT�a��dHSJ��16�<��T��F%p�6gr�����.�����O�+!�qk��h�2{��z(KJ�gdŎ�XU/�ȁ�����?���;�a��0i���37񲌅wX��B�φY7���Y��Q"��pLhH���v�A�{~��������l�ߵ���ר��u��ٰ�l`6������_t��|��bG�#�5r�&K����"�Px�ٞ��L��jּE9O�E�5=9qk(����$cY��,����q쌇qF��(L�������++a�q?��%�jNY���o�/}�h��K������)?��o))=,������������_8_i��5��?~�&L�T�U��y��7�}�ޜ�މ(A�'�Y7�t���~!�Q��X���A'``7m��&����cJ��D6���S��q�r�܄&��U?��sd���|����g�'���	���4��\ƴ+5d%�8PM�1a�`�#9�I�|�����q�1,6�;�������Qh �|��^|����L=���"	E��( ����.9��Py��;�i^�c���z[�oURA�wU)�bM�JAǮ��ٹ������Wd�_�����t�Ϟ>{��i����+��c��Aq�N�kx��ׅ�^�7���x���LXT���?C���oѲo�8��;���DT�ǰ�*���7��Ze��|���Ҝ�1�Ϳ�U�K�|��`_'u8Q���p�"�
����"�PrL��+BS�{��<�m�p߆�;���8�E�ܦn���7�yى�l����	��|8dO�-�7�1.��Dve�{��Q��l�;����ǰ�	�Iopo1^e��q����p\j�H���rX��Wy�� `����oLt4�c�zAA���%�5��i�T,c���e|q�7@�I��e�f�O;@b���}i5j�N����f<�&±�Sr4C�ln��aw����&�Ɯk}��S�?�q�t�bR���h��YЫ54��3~����C�n[�s�%���q����0]���}��/�O�8'g��*���mw����3��"�\������*�I�L�xy�c
����s�2q�us�+��n�$Oܿ�d0<�s�~o�)    O�;�#��|�/�$8��"e�ޢ%��w����"��]���8E��PY��S�T��F�pk�����$�v����/1���,�c�|F:>�1@�,T���4f�����1:N�ɽ[;a �6�8�!�5Yt#¨�a��yl:⎮�\z�\5��yIZ�T&dCO,"����;��m��o� O��C_A�c��d����5�r&��IY�'�d����91�k��ʂ��g���j�]�^�Q���w]5��R�w��������N	��#4���q#�]�����qK��qT@%wv��X�Y��[<u":��t��@���C1]�t� a��IP�c����"]+xeR_z�͢z�g�][L}�.�S�c�wXY:���5�Bܣn��,�xtDMխ���5��^y|+����y��l/�%י�װg�o���wq<�̀�s������8�s�f�� �$��n ���Cm�Y�A��Z{h�����3�������Ç�{�m�
/�ݱ��(��.��[x�N5�EȖ���G�"N��]�ĹDO���>���:،e|�֚�Λ.�mqR H�9ق��Kw�J4�f�`,�g��)��C4�%=z��5�o��2�_P�f�HQ|�y���h�zV�E*V��T�-+0��]P�Oh�:ȱ�_�����h�lf��;�[ ��u���_7-�3v�х8�0Jl`^�!$�q�t����	I� �+՝*�*����"o����;��,�]F�f�m�`V�v����o��%h͡�ŀ���Hj1�Uo�7��$��>��*�6}�X>	^�zs~9�C�䭻[��ҦA�N@�p��9]�v2��������:[x��y��7���].����ls�M�	Q��?c�P���Iv|(yA�Cު��N>r���t����:�6-�B��EK��/��p�:�@`(��W�Z�K����[��	:�V��*%�ȦQ�����`4�Qk�i"��W���������q3hn�(G쳍�+��rƞ�@]r�:%�*�b�}ң2����	����퓾�l@GPkQ��μ��s�ƮJ��AR.�����󉓩Q�Бω��I �qց�H��c��Y�vY	8	����L*�L�1�~{�q��
U�����_�wK��ˬ��~���:�Tͧa���SP��W���0���^��^���`�[ w���F�P�&�*{����40��4���I�{�h �K��7�(�+�_�+��*hv������ZM���g4L���SH�(�]%��I�7�9���n׹Ʋ �ѵ��I�˺ЊxߧXb�vỠ�7�NЀŕ��tG����8H�(�m�=|al��SU��cM��	�(�h8��~����&�(zP#F8��Qv����� ��J��M��FY^i��vY&gz��e��Ƞ���R�]��`6�4�sX9y�(���SӐM�̼.�B���v��u��ާW^���(����)��3܆��>=��� Ns{��L(!�M
�-v���8j�i�8�#b<}g���ߋ	��m�<%d/&1n�m��k�C�Ez5EX1�j�?*�z�x�Tl����g�N}���T����z��k��Z=]��j������ *(���M�
4�ʬz�__n�eS'�S��ޢfz�f���$o�8;��,�P���/�����IK�8z3z��h�Ĕ�Sɼ��MX=�^ f�T9O�:��2*E�0��E�[(�SX��(R�� +x�aBvv$pR̰n���(g�Q�u[9��{�D�>�rR_��0�h�2[��U��X��N�3����ޓ�%��{҅�,|	�[}=°�:���:���weڡ{��_ ��
�>�n�N�S5�t+����U���@��n����8�з��a�T�:8�O�F�)8��έ��:��>�8r_�B���=%��R1D|��.HDL)�6��Q��Rt�����=9�z��'ժj?�NB5v�;)�S��o����T�" � �И�(_:��߃JN�h���*�~]��V�9��u>���n^�N�z2W�8�b��!W���ӯ�#G�]���`�Ҋ�$��B"�N�~^��C'/����)��r�בJ�÷��{�X|�2(�޲jdy6�a�C㭟x	\l~e
�G�%�6N	���(�3�J���� >�j$�Lٶ)C"�+a�s`�>K��%#.�ӷ�A`�G=�[1i�>ɯ(港y%�֋8U�_��
�T@5r�;�a���)��I��0���\^FI�U��p~K͡e�m�	����JN3@�r��*�)�`�x�Q(pJ�5��m����K5vM�]��Û�K5�{�|�*��z4A�/zm�#hb�|�~i�ʆfn�*�_a��׈�tR�غ��wҤӍ!8�:D����zU�_# Q�m4C^`�T	�?��s���9'l�Wr�"��-��H�ʧ��N|��%�AMw<p|�TZͪ�i��X5��.�5�2��Δ��W�**�;>?+����<�*g�+��%u�aa<�;-�����b98���Kgvs�	O����9��x�n2?�Q��l:ܧ!K�!����!��<В��G5,Ͱ�
�\�d^�nV���h�-�a�ۀ^Z��k2O��h4���+ڼ 0(����{��|��)�%)7�<O��NU�����V�	2y�M�l/�6+T�i���;X�Pqg�ұ��0��}�
��	_�8)��d� �t�3P����n�m� �ST����V��qѿ�aJ�SVǀ-�aP-� �&,��7f�
���?����f�������b����`b�Q_ݖ�?���@�?`}��Gzql����(��G���mO�?����֮������	!�}�~oީ�чm�Å�,��k��NW�7:�&t7�*���z��	g��Y�`�����?+`��
^�V��3^糂�
3_������ ���Pāb��a�Yv�1��]�jU�Jaobm�.��K���9+��8S\;�f�i��f���V�&��v��7�=�nj�.�)μ�\�Ԫ�E�Yu#�$y��?�����¤��+��]�����*m%Q��D�f��,ko�_)wޕ�x�rh�D�����UTb	=�W�n���À/��h	������F,s5V�&Ͳmu�������}*Yc�D�Խ�@���R����R����[���f5�"��~���<U�bV��V� (#O�m@08�^�1c�ӣ�Cc��]�)�E�
3��!]�P�QNª���vEueY�QB�ncy�\k�	^�y�3͂W�Ю��+2���b�(���]�Z�א���6{�����	cQc~���c���C��=J�:Az1����G�o��|12�{@'u���ay��� ������&)/�De����N�|}���0A�i(\���9'���a��d�
����RCuD��ʜ9��I?7��s�疴g����ó�% �o��eI^��}찀��Aƒ��s��a?�?�|17���W$v��m@ZM�ew,�C�M����X��䯨f,<�n���\�R��`X�M�y���%kAr�<�����q%_��8�rr
5h�0M��~�P�[��V?�(���cpX0AuT��RN�yZ� [�GqT��ɹ$-�6a��qD�O%�@�C	�w���l���k?�9�;�3";��o9Eg�.g�s����x�2�3f�&���1�A�����)N�de���9���=n._|����G؆.�55�z/�����8�X;q�q;c�I�Y�G��@K'/�i(�uc���רgF�������3�lGww��	x�0~�d�Mc�HS4KJgy��Zi�๢N�0�Y�:o���OٌX���3|�ˉ��U���2�ID���k��f����o����� ���Qs��u��#ք5����NC0��Ȓ��?U��z	�������Ԋ��{Ks׊6���*�(�M�ЦMXbf7��L���'Zd�;d�Qo&�H9�r!/�%�iZ���S�377I���&4��;    �y	L5Ӭ�毆40�U2�������A�dӚ�+�E�Um+�&��]f�(L.��(_;�iK�zQ��NV��(������]qB�c�T��=�i��;��v���i52����t��0�d8V���21���pAJ���s�q�J�)Ev��c�{2�u8Q�d��0�D_0�Q����X�\��Uu�EJ��޵p���Ne���G��ѣ�l�[��n���QNBh���q�Ӣ�T<^�U���J	���s����4D�FW�rV��<߫�;����!Rf�?�]��v��׮���K�AFo��mA��]�9LxE, c�<�Tk��e:�Q:��^�r�&A�sM�s�Ve�l�+���zg�j���#�e5�43�Y��]\7��8p$_�A�01�.��+W�?��=Z�m}r67QBʼ���do�d���N�7��à���4����� |Wn �Z HE�Ë���	쀌)�.����(>xڈF`i�@�����w^����Y���
��*#��� 4�)���R���QK��c�rd�ϋ�i�NF�ӥ�ݎ�<vϏ>��$K���Goްa�%JXm�1�JЇ���;5�1��ۖ�����9���s���2V�e�[c�;�WE:g
���C��d��)�q�5$d��m�i,�ٛf�������;�Q�����A�.�?�.*�Ә�' �%q�w�:�j��Y$��W�J��.��:��Hg���9f盲HU�X�����P��8것�x�5O����	�nL�.�vV6����3m�����<�G΄&�BK��@2���]�.p�rB�c<�v�Q�N�$�a^4���*ZА�~sm&�|Mּqq:�!���%�	�+˨Fפ��{eK�G�����w��ש[^'?ڴ�#�՗s����T�"�k�+������l5�zs|�(��A.e��2�|�7
w�W�C�NY���MT��yc��^:��b-Kᐍ叔l%���n87{'��\Elj-���C�]�Js3��M7�qP>�� �&5�=�:⎛cA����l�q���s���gJ}��=���*�5~i��]�)Მ���uCV߮|}P��F>}\6ð'f�m�!��&$��&�@��6����h��GB�e7
Y�*�.��'f�|	k�a�<�6��#(��̆�y�Ը��e���tl�e��ȯ*��"�ƫ�ĺ�0D�n" (�KY���H��2�m*8gm�Í9	. ��I,h���1��k�0�]�;����MYxͦ��V]vJ��!�e�HClJ�#�@�nɜ%E�����0�B���Ux����7?��+�kP;d䰎M�anq��c��k�>�Y&N�1l�����p���Wz���-ن:��&��5�R.�AC멽�4�K_eJ�GN�"~��rJL>Y��D?+@��1���?G�EAE���{�Q#�+��h�P(�������9�h�7�xyke������V��f�L >yIH�![BYG���/��b_�	[{C�г�ͼ¢@����vW9���8�ڲ�Bj�`�v�l|B�5�5牐��v�]B5^�Kw�Q��e%.�p(�Р\9�y���o=��Ka'7S�np������:�>��j����11�AҤ�pV�NرM/A#J5��GN���x=��#������%��/�[��*>��ġf��ƇC��fTUe����S �L��#�	خ����%: ��$�H��� �$���(��� ��.���ǼC��o8T�(ȱ�']ݴ����Du'`��
>+�텚|ÔGao�p]\C�8_�Pٿ�`(��"~��3�Eڱ�kl��qh�]OT�KnI��%�a�Q4o��S�׮�՜]7�ZW�$�/b��hΫ������t����ْة�:����c�\V*��SS�#����U�� ���p�+�sߛ�x�����c���RU�\P�/�f>Ŧ�Zzعv.�9/y_��"�!�4t"�!�r$0����2:H�)�^�#�M8 \���HyA������s'��rT��Q��r4p�^���B�
�~���)JCyA�d����@gȹTѢ�\�&�@�t2��s����{*�"���v��I�h�wbm�i�	q���9x���.�	$F�G��g"��w��_L��f N�oȲY4�}&���b��Uo6��jv[�n���w��[�8�:�5o�7��s�Y"6!Aq��	U��������5�	a|*�M9:a�����{�D'<�z�n�lw�V���_���H�_B��h8���I@�m�\ ���`��՛���e�iG�����S�z���GW��o�9	��D���T�88��:5ʹE97��y�~�sis6R���"iS�Cb�r��g�S�����*�Ә��d�T��d��>3�@`u�ŭˉ.��[Ś���W	���U3�5��w�[����|�����<KD��N��˔>��G���e��s�qQ���Z�*hYhQ�Ny�L����1`�K�-]
�9��7�1]�� �D||Ɇ���w	{'���<�F�ԃ������m��4����w�o������m��}�����|���o�G^�5Y�����>ͻ��S /ޭ���ot�gx���,m��aږ���5��Qo� ��8�����At�qnDGQ�]�[h����=9���w��v��s������ά��w�v�3��������v�~g�a�Se��7YY�Go���b�>�} ��� c
�لȔ�c��������Z'�L\�l�C�YY�Z��d�c��0~!{�/!̃��+���-�R�6����CP7�W&TT���0��@�h%qzu��҃h� �?�����h� �?���Y=�_�m<�������}�WA8P?h"4��M�Қcf��b�Nհr��%T�����wG���|��+ʊ��B�� 0�m���Um�� O=��Yc����G��T*��ăJ�A%q�m�Jb	A�w����t�>�y��ˇˇ}Ã��A����A�zߢ�=<��W#�!�E��=V��$US�����A�~����A�~������Aj~���捖���+I�T�1 U�$Mv1��L�b�st��#4`¤�ؑJ�h����3��r��\ő�;�Gǽ��� s?��2���� s߹���T����A��?O�����2���� s?���H2���:Y�������{:[�B#+#;���{���q�?�sdl�Y�w��{n�c�:���EV�U@,3Q��Q�7�X��_n�DK�*��:��	,MZ�ap�AXȄ�P�n�������]9�S����Q�h`jIQ\�*�lK��;���B�Z��W���rЫ�q4%S�%�k˦4���F��iE�Ed�]���n `����Pm����ݞyw�=��d
����w;��X�ܔI��)��3����n�s������k' ~Ռy
�B����)�",M���W�RSstNN�~/'��jQ�7�Ӹ�&��� �E�?����b��̴�C��QW@-�R�)P���LʤQ�b�ʟD�� ]� �9�w�뾜��g�T�0F0�/��T��/�+g1�.�Q^��R�D����(��Q�"���Ey�Q�s^�d��0�
=f�)Mvui�K=2'��YK��]��RL{ �	�_!h�V������2T��9����h6F���5y�D�w����#>������S�r��LNP�����|�ࠪ��W�7��_��]��L��N半����`��%�fקg:8��0׸���OM�l1b��69��s�I�����#���w&f��aɩ����c�&�kq*>�o��ߕ�	�)�
�[)�5��)����s[�D�C���`�w�cBEfoA��e3P��[��k�I���
��=M��n��x��~P�v##��Q�\�$��J�J6b0*��kw"�����zUd3�?=߅aRr�ޕ-�P����år��T�;�4Mc	�;����C��J�G�j�K�E���@`    p��QU�����lR�Y�;�(؆YC���Ctv��R��_��C��4�z_�<lj�)
;Ů��4�C�)" LMC��4�I�-������қ؃�
�$��F��{�~���FD�J'�o��"�A�eXT4}EH^|ŉ̙�'Z̅�����c��X)At�7?	L*��	M��qJ\��� q�Ə��^�8R����k%� s��\,W�R'[�M(�Mx d��y�&������m[McJK�c��a�&i�:��fS���Ĭ(ء��aܮG�2�;k&q�d�M��>�X��$>*��0�6��?�|�8��	�%���aγƧ�4�S�v����Vw��x�9�]���m��S��He{���� ��#�,%��f�K�y �����{��8Ix�����K���}yL$o�����r��Ԗ��z���8+p�
����&�P��~³�Sp0��묠��󳂖묀)>+�Ί�>Pn���W�����~1<+x1���8p�¸����tں��YA뭪:U.�D��9�Fg!�:РUO��@S%���4	6��%%Rd��n�xF�̒L��լ*�-VHZ4�y�_L����n轓޷�ۥWo�}㌖4�@15ӱ8"R�	��@�@����2Q~�CxZ�0ZG>���"�p!���A�s8|e���(��,�,1�0	U��*���J��4�� �_��Xa)QgN�A !� V|8Ai!DȖ��������\�Y��[gs���k�:L��:i�.�{�ebW�����/�nqu}��C��#�+�֌�K��c>z�Y��7���=�훷���f���G�eOeQɈ�H$�+|�S���b:�Ùbk�����+��'?mC�n�m|����v�-x��m\�aO�'R`"T�4b�=>E&�8U����(M�%'D}�ɡ��Ӽ:�߂��s�|G��[B�(f�{�$�j���^�����z�X��T�K���"lD7F��Y���A��E��t�V����p:�v��$ST�!��"��&����J����^E��R$�x�)��(4Zy�Te5�=Y�Ix��; ͟�u��4�
�����Ϭj����5̋Æ+�hF�xNygM�$N-@閚�uP�V��H*g���<j��Q�8"k��s�e ��cy�W�.�n�7�n��֍|]�����A�p��-�l�S�t����;�������|(��i�Օ�$K�DC�5 x�G�*�P)�y�^��Wx� oW��ϰ��0Kqa��('�Z�d{�!{Q�QPO�%��y�I��i�x�r���O9�������{�ٸ"8�2gM�`�~A܅�O`*+|g������6{.l)�m���n�(���� P�ܩ4%֛ٿ���X4i$x�ǄH�D!�1��H������ŋ܈�}�?�����P�9N�i�l'�]%7�y:I����E|�j��T&�-֭-z��W������v��i�R�J��1�����$NS �U����e :O��h7D:��@O~G��Z�묵ҽ�ө��	~?}�m1FQz���gJ���.��̔Xe:�y+r�d��k��m����Z�ˡ\�i:�d��`p-l�m]�X��O9õ�
����F�O����Z���]�n31	416l[�� �Nߙ�(S��O�H�y��F�!����=4i�R��[h1����A�X��u��1�]�����N�2���|���NYT7e��A�w8mܛ�8�֩9&�tD�n�&�d��T�XΡ��ʳ�2+�B�E��3���:�1��?��Ђ�a���d�֞8�;�!,�~_s�T�����r18�ڛ�E��fD�h{jL&e�|E����*���͕6����yhco��nncІǵ�8���5S>�� �u����z�F��Y��At�׼�ƧU,��%��
S�Z��07G��-��̍{�[�@�a��_ 8�������[��Ht�� s����L��Ū��r]>w�p�j��~Y�������������b]�\oA��{s)#�y��čK�+o��U��g�U��W����U�F�P���8*wFy�����%�am�F{�=�{�bQ�a��"����ya�5'��RH��$���2E���r���4���4��qo�j�x:��b��/�d���ޕU�t92�eQ8��m���:�"&M�ċ�X��ݽ!�-s��0��p��2K��p��j~������Qm���oo�U@u�
<_��c���>G�?���~�if��F�3(?̒"���P>�� �&�:��Rn̤��E �5.~"y)޴l,�7t���x��ߛ�L�1��.>6A�j`Sg��n�fsca������5��n��U�m���k��FV�o�bT�g��]�2f��B�Bl�LW1c�!^��i�񃮇6u��ȁ�n:��=n�6��FeS��6��k�l�Z�M]�*�7@�����o�P]�l�B��T��ȍ�&.�6e�o�(S%\f�0纱�
]�{2��*��K��?�L�1���pK8�MG�A:��'�lx]��H�VLfe��Dh���j�bwo�d�%L��R�~������=�Fy3Of��~���1�Ai��?ye�w�e�l��.�	��E��Q��A:���"L��EƆLT�����,�b�X�8EP��F��E&��.�\����1�����@(��TX7��a��(�(����T}�s�'X#U�	�c�NU���y��s�^��b� \��:�æ�@0����M�9eQ�����vۇ��N������6����8)�@Jc�JM4B^��Jtv��uU!V&����L�
M��^t
��bR�3n�	���c]��)D8�(u�,�����f�U��"�%��cC+X��à0�� �9'��P���!�q�_�a}�ׁ��N����_1�H��!Pb&�g4��#�'6�:Ifb�H;0�y�vO�fOg�b!�*dg���h�4H�㥣$)$�5�zBn�Y����I���>U������L�ӽ��ۯ�apD6.l����ʹ���q�k{��~;�o;�(��0P6���i��p^�.��:����<������"U�	xݠe���A�8�v�Ob?>����NOEG��=�i�.�ͩ��/ľ�Ş~v ġG��0����Jy����3Ҿ���X�u@}i� ��`�BVd���SiD��Á}��G��6�T�|����<�z�N`s8~�V�`SMCkp�Uv�@ڏ��@��n�	���qx�K;#�x��	�N����)�
��I��&p�3�=�*�x��z�h��jOߡӈ:�T 	$�fJ� s3ȱ�u��^-7�鲱��FS�o����w�����`���U���iA�N[�괫�
+����tD�+:��D�/:��s :��s;Rt;��ݞ��n_t�E�@tE��a����k]n�Jҿ��8���"��H�:U���r�8�;;?�
"A	1Ip вR�c_c_o�d�vn H�����H
�˹v��ӧ�k(��:4Ym���ɴ)�8kA��)㙪�`�ٝ'�[ 3K�z=G�e������=[�V���
���f!�� �@Z0m �K������χ��!�vЉNB�X(��{A�B��$��j+�"���ĸ|(��m���6��%,���U��Q�:��x�wѣx~���]�n��%d�u��]��$%AP_�Nd�DSF=:5P��H$�"�j1N��l�<��f�eb�T~���sR�٪��(��Rt�[�i�kY�P倌�ʡ�v��y��q7�\�ӈti����&s@9F�]��PD�]	����sFg/��,�ь�Q$~<Q�+����z��-�;�$tގ�H��7ߎ��c.�=�S���{�5��ha�\���m�2q� S�D��Կs��4�4
NM���#Y�:�0aXuu���R�A1�aޤF+˓ۮmvA�oxҋ&�B.���A��������ĵ����I��{	��q�ݝ��VD�A�O�,���,eY�q���>�����|��U���6�s�dͩH�����5��_    ��V���[L�r�E����_�B���D��<<?��|�EN)."����Z]9���e��H�Ja��S�E��'��,͈�G�ݙ�}m8j)X��� ]]i�IL�$[����{����T�n��4D��������zzFT��i{�}��bptY�yz�.��F5Vvc �&��X�ה��2X�ϛ��7O.��Ll��A��p�hm��~�]8,@�+`�}񛛑�%���f�[�~�k�4I$�������9}�������B�Y�p+�V;,�#�����Ԏ<�1-N4"s�a�� T��މ�p�)�8ɒ��8�z������Y�P����c-T}Bϑ'�<lF���
�e-ߛ��7N��=���Vّv�4��E@�FKO|RF�4�{Zb�3���o{FˬQ`�Q�	�$s��'¿�x�g�'���G�m"�	_��T�� ���9�98T5s�̰>�J��	f3�hB�5e�A���IzdC7B �r��l����>��_�[RN�}򠰎oT
h������� ��v��bye��f���e9�����&��
*Ej��oR>H��e5�+�Sc�~���*�l;Pg�3�����y������<��<Zt�K�F�U^)�����Ki��O4�]�OXWn�
��?���k�<��u�����s��0�6�E��k0�<�^vX�Kc=�qR��GH�W��8����>�<d���k�Cz�+��ˏ���ë:a��
IàȤ��u9�9jD�2gOԆ�Mk��ˣhϾ���"�����ok���X�.�@AA�_4g<#����u�՜wP��tX�۞���󺇲�\���s�5Ja�9��ZTg(Ҿ�A��^�k �ё��W���?�ĳ:�%'}�ÆT�nD�FNͨB�|�
���e]��{�~�x͸*13>�:�QF0�'$�!Z��m�<_�J)��.����>�U4D���֨6�_'���%�F80ϗ��@P�����)����q��.螈
��(Ň Eə4��S��u�� }�Gg�7IBp؋���{�d� ��z�Lr�x����7<l���b�,S��)\���r�G�}��n�V�������	�%����:���dm�!k�I|��������y��0X�2!7Sr�[��r��8����x��:|�LO8|���1=��.w����� ~���C�4�lYW��9Xz��T+P�G����6��c<Ɏ�ő� 96t6���²I����PCT$��+����i��v�g`!�����p�ݏ�k��A��F?h��`TQD �>�ǒ/�aĵ#�vaTW��9����ѳ$�M|�Lt=]��I�p�gDS r�MtǪ�����5S��$�4�ޢ2\�Ia	�tY����Ye��v'jʙcZ~a���7\a�����a��ߓ<s�u}�{J�V��=C
{�߹�Z���B^�H+��)�զT���0��s��ۀX�2pY�c��ME$�*�[�� �g� 鎷�G ��6�l鵑e�nؕ�\M@?�h''�o�����&YhvEr0T"Zv�hD/���ev��%�LE׶��n�Ű�e��ڬhՖ�f}��-��j���"G<���T}�]�����$цo6U�Na��`i�)tRv���ӭ�@���*���Z�%}oLUm�Q��.9�ӈ����C_�(�KK��)
և��;�F�t����-~���RTE�#�A��o����jH��+]�#��.�P9?�߱��'8��r�k�Y<I�)'��;��P(�ԏ*(Y��?U5�1�iϒ�{jxTԠ�B���l,8��CM6�&S?����;)�A�
���"E4�Z����]�l�t��`|45tC���±�Z���Ѩ�[��'�F�Gwi4
U��pЍ&��[������DG���RKH���ф}q��k�_Xh��qh�l�Փ2��S�a��E*wS���c��VO02��)Vl*�mcI%�󎢟1j7��|=M�u���~�QZ�KV���6$���$��):�H&�da�J;�������+m�Ź���s%p���;m�崃N��6��~�)�{]�UQ�o����g_�,���<t}t����W���.�%w�4,��0ls:K�9ؤm��f���f�y_a��v߾�gp��$�����sDobg�y�dr����C�ͱ��Nfٮis]��w&����9��,,�G95)S9�z5;;-y����xDk��C�r{GN��%A���e/�ȣtxJ�bD4r�;;�c\^M�l-YI������TL��/�E�ͬ��j-�|�$�9����g�]<���vq�V��G;xh���:����m�H�q>��ה��,"*���f��[]�-�M�7�u�X7}��V;c5sU7Iu�S3-;����|��4���28P�7�2��l�Fi��:�M0�]W����}�.�s�N7dT �X���b
1.3���U�
�i�CM~{s�Ͽ'�j/���@!�HA+��a�p�/� On',y6,J�]2_�>�?��VhhI%%�7o��D��
����8o_�ϛ�z���W�IJ�h5�.��p,~h<�K�)�q|��1طl��P�!3+��̞?�+�Uqqv�^�z�f�Y~{�e���lE�O3oD�0Ch)7 h$��k1?B#׷��6�����I�s�{��:OL t�����>dk����/t��u�[Q�%K�IGo�m �0ȶ��I���a������aL5��#���3:BL>�G�Jԭ!R��%j��Rl&� ��0�g	j'J�S6B2H*sPX1��L`'(��1������q?D�I@��dx�`&�x�>[ϧ|8[�6J��L��*�0�/��Ҹ���f���0�8��!�?�
dr�| 'v����FR�	%Cr�îmlo�2��C䲥���$�5�aB×ӹ�s�.�LA�*�WS�ϲ	�͗v�$�.���6�����b���,Eф�#��[�o�Z��h׭�4��Dqh0��id�����G�??�G��;0��"��=)*^@{K�f��5�7@��<~"� 
*��2[�������F�<��t8�����l�q�LE��x���҅�9��*���J_������ɹ�4O���M��Ӌ�h�o%u�AwL�e��s?vF|�<:2�4��g��0�&y�x���2_Oh	� .$,=J��1g�'�b��-�9�$lٲ)d�-��� �_�^�ƹ�I�"ʻt�>P^�b�~�"��(�p<U�ws������,� ޖ�k�g���K�W�i)]��jN���'ϟ�-�r��o�j_O�#e�u�L�gV�p��}�:��g�P�-<�S�(o���Z QJ^ `M��B�L + w<�\)�T���Aƈz�{z+$��������bXqu�%�Q�hI����jY,�ˏF�y������﹧.n�,����dV,]���d�J<u�;9Ӛ(��aO�gӶ�	J���߯uFl�孿���^�N���zs��Zv�L�hB;�U���kZ��Fv�n�f�����a#���m��A�(���<�>q��u�q�=��w��©i��0�x �1 ��(��s؋�.���1dƪ�&س6,�}Ab/2��Q�ݓ��鴥.�L��^��x��䆚��VT�<BI	ؠ�G:+G5�ĭ7-��.�����84�α�R.�*,��c�h3k���ن\+���x~��XP�\�.�1UD������8�j���plhQ��*2���j�D�{t�氱I�t������5���u�k�C�;�l8�sL��[�sLv�	<�Y$[0�a8��A^��lR�,~��朴<܏���7�*l��TO��%@��'�*cLJ/����C���	s����d��yQ:�B�E�ʲn}������Hfʉ�m�_��a�4p,��Ε�v0l#��{u)s���k8���|=3X�0r���_0�;���R�[K4n-����qE�:��������xt��.�i]׿�����WB�nE��z��������]�YM=p[�Yd��|��ܼ�Kj��u-��M6}�J��R�;f �  �Hu��,��~_I����\�j4bo�=���!��PE��X2P���$͠��#5�pq�g]J�1@E)a�qg�VQ�����:��j O�_��y���C%�%g�n�����
�g���zW�]�V�͎���p��AB��\�\���-�lL>R��P����~�rX�y����mA��G;�G����l�b@ 6m��.�N�����GǗ8�ܡ+�8�"r\L�3����U� S]��{u�QL�E�p��Ӂe�� �|�k�k;>Q�X��/��>��EΕR��E�O�O]�D���ݽ�X~�F�^`�I�F�0Z���v�$l�0	�����Lv�L��1�	��s�9�-�9d⸘�r�����dE��w�Vm���@�j�XmmXa�a��'"G5�6T_3�F��҅�[�����Jw7L�{���N�	}�+�9�Qѳ
�?%�oT�9FŎF�|���B/�v�G�+�K;��05�}]�����Ze�<'��A}����e������q�-�:l>�޴��>K��.���W,�	d�E ?�y�����UH��|6uў	q����,�[NY�_�i�ȷ�<.����N1/�g��HJ?�rә �Sv&Fƙ8EȘ�����v���Sz�ߗ�w(3���z�#�Ϸ~@ԸO)�Y�)5�d������Zڈ�z)Ѱ�3�lj��J��Lޡk�q`�Q�����I@$>�b � ��7� ���:��л �燺�v\g!��p-l��t���ad����D������+l3v���|~�3�>���_L~�U��͂#lf��|���~h4��g*�
 �8�7օ3��&vU߉1%��X����R;H��sϛ�j�����jn������
��Vv"ϰ��mA�~���[���]F��ժ��ݎ��}���cr��z��y�~�
�)�7~Qu �`YtU�[�w�.x=_��嚅��֗\�|a�2::Z�K����-�h�����/�P�]@�Z��Vkj������>a�y�"��n_DkKo��r�O��b#�6����cp_�n�Էa�ܥ�E����}��<� �s=E�x�t�lG��$���,URݚ���Ҥ).�+�SHr��È��A���7�Ix�I� B/�D}�,�j���-�JO����@�waW���@s^K��m���v������k���e�V���_Sv�y瞁��=D���h>�QŠ'�����[��\�u#Z�����&ŇV��v��3M�b�I���_xkQ>o�)�<��L�H��u��*��jAlLI9Z�t�'������$ȡ��9�p��4�.���L>p"��>SL��V��e^U��G�}7]N����g gn=B��%�]���^��y4�#��z��;�,#0_����BeJ��1ǧ$��o�9:��!�5�b�-��O���vk�A=$&��(n�<�I�t�.Z�qE��0��kIS}OGino����t�|J���ؗ��V���h���[����жI��5���J���w��&�x�N�C^
8wN1�cL�a*�ܾD��YX�Bn|.��Ǎ�.�9>_�>��"��c���[��ݹ_{��>���PP�F%&R�3��<��m�?�#[�+�G����jW6$��R��	��A|bD'x��H]ƩEz�V�k��2ׄ�J��E�M޷h��zH�V�Zf��?:*W��0���MH����r���I]�^���N�r��c��TW��T顆+�;�6[&��e��u�OubI��W�)R�I�W+�y}��"#����o��6o�';3�;�P�Wc]L��D�:��L{�8�)�gqQ�N˔A+�<�--<M��S�����n]�"�C����K`���~��/��eې�~����|��!�X�'��esNѐ�_6����,��!׿l��/���f�7����d�.�̞�+e'�v�G����W�o;Or�{�-������=�b2�ɾ_���8�r�Z���t�T�dk+�F.�%MYa�I@��4��4�Lm�@��
��U�*�G�M3fi�'Mx�!{4��f\ь#�3�6>�h�lU]�0�YQ�
e�&��Z£S�l��PD\Q�ވ�H��d5l8��q���%�46�@`��8Om��~���P�Z�C��F���Gi)B��%�~zA$��^ᘻ��;3wo͵;��4�Xg[X��,���}���eK"�      �      x��\�nG���<E����I��dY�l@�lǀok�ɏ���E��fw��Z2g�@c�y�<�~眪�P�����M"��:Uu������-�\��*������\ɳHi�5q��+����6ylT1W�RW:v����^��R��(��
kUT��UU�y�o��� �ub]U�'[ԃmu��bxRԳn���-������k�<���1��2/�s�m3����ԇ%w��|���۳g-���aH�n��*���� m�qF��Ռ>��ĩ�Z�1��Zj,k\<>�)� �� �2�ـ��������б<���X}���D�.�Xg�Z�D�9�Q 0��¹Zՙ�yY�J8�&������`0��N��݇�ɣ��ɠ䝏d|w�LEi*��k��إ8[��Z���Tf�^�Y����
��h��S8��<:��J�$-S�L�����:�����y:�-Nҕ� ��T���:+k��yWic�V�,�4��t�b��
K�2U����%�?+r+S���j�PgKZ�
���ҙ�i��؉�J���
��l~d���2:Y�W*��F~d�K�6��8H��c�{0ؒZ���Z'ZIZ&i	�/'���`0�P�a��C��`��dp��V֥a�,���q��8$N�你9�^��*5׃�w���b��E]�&*f�����J�}�D�t�e��d���E�W+"j��E�@� V�+_�iR�d�z_X��&�[����s�����l��������^栅�!u$�5F�0(��&�i���J��)�H������2�q�!�ݏ� #$�;-��vUjk7�M�ݏ?�${487@����d:�2����$x�=������p�%�\��K����%�޿���@��h��QcQ��m��I�c�8�����}�Mɺ�G`!K�mjѶ{74掖�\;	[{]$u������[�i�a��*����`��,f��w0*P5���{Ҙ��/i9�k�d;��bE���c@����I˛���[��#Ve�))�<60�Y�t���g��v_P��J�k{ui�/�"�!p֔0fN�4.V+���
��t/���G%"豲q2�9���jetn#���4�T^`�F2������K��uQ�����eA�6�C�=xU-�sC��1C0�ZF�z�F�ku���Y�wʥ��(&7Em�Z� �W�c�i�\�>�%��s��G���Rf*]�{��諠�v"+�C(�H�k`)�J������a���G��$�]6-�P��ȅ�YJDB�_�	��Pn���z��򔥹�in0w�������2ON����|<FcTf���>�9n m%����9	Gb>���z�[�-!*5o�5�>١՞`q��U��IGq82#�h��ppڞO4��.F�X�W���D@��:&��]׋8�Iߟ�����Xc��VUŵ3�����AތZ�3�2�`hg�`*B�����q��hM�0 F��F=��x�����Q��fE�Ax#V<���-k.>�L[O�y��z��+�s��$]-����Ý����R�B%)��_v.��2_`ʎ@��H]�N�	��o�G%��\��W%�[R��m������?1�rE���0�t��B=4��R 	���݄~PEo�4;��t�F<<��ujMw.�񴍙a1�j<���2C@c�7���{��(�R����y��g��c�z���Õ�)��������� ���eQ�����w���߭t��;��Y
3S��(����n�ا]�!�C-���c�q�<c�:�7µ)*^��}�S�qE�R�V�,e56ly�F\����'�Tm��<���+H� QӸ5;�I��.�<���X�sI�8����Bƭ8!7Ά �ц<��3�e�)��L��޽[�Ap��y�ǞE���W䮀G�u�l �����X�u�RE��(8l-���l���4��q&^��!Ԣ?��",��Es�1<}�Z�^CrB��6�ї)[��9�+�Y�@��0w�#���tU�S��]Y^T0���L=Ʒ1����4:܍��h�M���n��Ӷ:���J)L98��>E��^�OӚ�GG����'����lC�
�ə<+@�jI���`�)F��A
�ZFdͿe���
��C�� ��'Ҧ���Dj8,p Ap��V'��a>��J&dX�W�W�J�� ��!ӤyV9�,�M%�����6j<�*jq1�>=�Im=%��P�b���-�a�TX��tVg6��d�:�DJZ����t�C!����^Y�})�"Ё��c{�0n1�<����ϬH��S�'	*t��a�I�QLI��{~@�~?�}����bu�_~V�87�`�{�q�.��=wE�}Z�$�ODmNI�8�d�%�w��r����������^w��!3L�'.��s[���{N�{�������{OϽ���{�f�����U����;=BN�>������QO��xOy�;�!_խ����#>jce��CR�ՈH)�@$���6I�&��RJ�䴛�O���'*�����'� (���:��$~�<8��n�'�V>��$@����*�h�SLE��4���|�����$?nþ��{�#5���_���'RLg:�9�rU�2�xm�:n�J��"L��K 1r����)`��S�Vj
�|65�,��6&J�6X9�b���U�6�E}ڬ���/R��Ħ7!(�JI½��M��!K�}�:�7��tN���˄ ���E��5�٦����NFk��g����voMD�
��fN��r��ǌ۩iO8b20�KW�:�C�*ͭ���rF`h����Ւ�O$������'���|�R����:��d���e�g(�����8h��Y��}�>.�YαP!M� 4z�))1���_�3��ka\�[��ٕ�4�ժ���j
̕�z��������>~v9��7�L>���Q/;E�ڕ��j��/�TA���g��c��� �Bj<!"ۺ���W6]p	�fon�Kd	��3U!��bR�;aq��|�8�/Q���Pc���jf2VK�M����+��J��)|MJ~N����N��WP�i%	��ptJ�˂i'��kr	����k@6)�C��&$�?~�J)����HMnʇMY��d�����.FtZ�A�Q��=0�w��Na(���Tt9�3_����5(���Z��MX����,^�#�� �JՕ/	LM�(pC�R �C��g�bL��4^c��zQ�ri������fJ�Ko��؅���iXu%C9��Ts(�׭��X�[Iij�J=tbi`sh5:B���zm;�Hځz���id�qg~c��s{��%f���˴4����� DbH��E��BF�n�Y]�ƾR�-y�[�Z_�-���HUIٜ����j��h���R[�p���)*�9w5���{�+�w��eQБ,9Z��@uXZV0�=�$���~�8�3r���>7:���Y�bi8�ͬ�''Y�0��d%៶߲.Ԁ������BV��Uc�xP�U,�tA���ɽ���Ȱ]����-���:��N����Sp�U>w2����=��lf��Ki{��L����rP��u��Trlt�H�X�2�Z3��ig.��n%���R��Z�OS��/=\HF:��҄�����.�w���i|���I�x�J���� ���ovMq�����n/#��;�M(w��^��to��,D(�
6�7L~Y<���9[�s��>�X����4��I۷���0��e�JmL�:w^7F��B���t,]������'>~W^��a�R�ɂ��%=�Яǥ���]8>��%�>�Ԇ�[��6��-�-�HbxIѼ��K'
p�e�nE�'B�Y4�+do���%��^�f��q(י���鞲�P���b�$�n�q����{@�������=��9:Q!l`K&} ���:��5�2����]�|�Lwu��趼S �Z$�z<-�Y���$r.d��;�x1�;!;�֕8~-j���4_��0)%s�n4�(�4_(S"2��U�������EqӸ�G1�W��WГX��:M��xo2 �  �<�����"t�����?�s���a��ѿ�n�䛲߅�t!A!�輯s{�é�G��IT�0/� �7hs|�AO9$IHWN�kJW�}c�G����2�����S��7)��e9��S�Y����.��
/�����<�4��<���z�Cr[ôG/�x��'LІiF�Q ����{̓U����q$��m���5dsO��U:x�1{�ރ�Ǩ��7�[���w��V��������?��;y�񏈾z����^��|j/�`�?R��+n�?G���@�l�\c����ci����ntx�m�p��펠|}�Qh6�u��^�sCB�%$S������0����!��t�a�*���-樀�}[��v�1��mV������Z�0kIn�A/����h�q�/u8�2@�!~-�E�6�����VG���	��tE!�57s4���aR�9���%�I���y�2�kE�LR��f����Xu�E�Y3�-�W��Hy8>ED���v���va�S��"m-�1�o��$����b;ۡ��w+��8����Si�"=p5,���D?h�l����qP�8��%S�'_�%N[�� #7F��Y긣�{w�)�kp�!H�n�=7d7re�-{&����f\��G,l���
�(jm�E���zz�}�}<�/���u�s���s6f0^���yH�4�ё+-+酥��.�/�]q�����T}����G}��H�݁�M ��@d��� i���l���yϱ�V�em��;[aH�dTBѭ�]C<W@��򆮜Q`A)x3�d;8�6#4�I`<���c����KE���#0��%��I�r��mǐ�	to���LRPKeQS�n�R��&G�BXj-\��b�u5�����ڇG!
�&Ʃob<�����J&a���ވ?�����i�f��{H�+����l9����K�9#7�d�ڲ/�=����wc�0�)�n?-����d��)��H��YR�eqA���n���~+ �eT�����t��nc�M�u�uR�:6��9�ϦY��0_L�	���۲yV�;<��ӿ����;�i�:)�N� ��	1a���E��;��ڛ7�j���C3�I�
i8�O�+bۂ.�ӊ�(����7����H��������tS���wS�7j6�t'��R�)���n�ף�ǽA��"w�G��N�u�o��m���d��q�i��Mے�?�������A`��*K�J5g=�B���u[ۍ�g'�#�\�	+x��7	��GH���$�+��q4���R\�k)�qƖ�u4p$���;�JLo�q������}�2�FrM��m�Mܸ2��͡�����h���fƷ]��I�+!��]���3�� W5O}w���o^Z�i�A$dp��#�o�ōȶ���K��kN����2I�#e�pw)ĭ-�gW|�7�w�fWfU\�*���dn��4m�|�[���\�>|�ۮ���­��_����������tE$�:%�0�=V���Րdx���/���5C����>���Õk����ɐ��5���w���jȽ�C �Nw���n4���C�<��S�U����ng��L#���HFj�q�"u�G��1��Wk��K������y��{�t�5��(�+e�q�_ �+��n=гn�b�`{�3�_+F_8"��c|]8F����+�Is�I��p|z5�pL�_�����Nh���xq^$NH��xq���D\�y�7��0g~��~ʣΔ�'�24��jy�%��0l����n�a�n Uq1��o�$h�<      �      x������ � �      �      x������ � �     