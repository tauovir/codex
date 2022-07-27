PGDMP                         z            codebook_db %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16878    codebook_db    DATABASE     u   CREATE DATABASE codebook_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE codebook_db;
                postgres    false                        2615    16879    in_house    SCHEMA        CREATE SCHEMA in_house;
    DROP SCHEMA in_house;
                postgres    false            �            1259    16880 
   auth_group    TABLE     h   CREATE TABLE in_house.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
     DROP TABLE in_house.auth_group;
       in_house         heap    postgres    false    6            �            1259    16883    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE in_house.auth_group_id_seq;
       in_house          postgres    false    203    6                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE in_house.auth_group_id_seq OWNED BY in_house.auth_group.id;
          in_house          postgres    false    204            �            1259    16885    auth_group_permissions    TABLE     �   CREATE TABLE in_house.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 ,   DROP TABLE in_house.auth_group_permissions;
       in_house         heap    postgres    false    6            �            1259    16888    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE in_house.auth_group_permissions_id_seq;
       in_house          postgres    false    205    6                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE in_house.auth_group_permissions_id_seq OWNED BY in_house.auth_group_permissions.id;
          in_house          postgres    false    206            �            1259    16890    auth_permission    TABLE     �   CREATE TABLE in_house.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 %   DROP TABLE in_house.auth_permission;
       in_house         heap    postgres    false    6            �            1259    16893    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.auth_permission_id_seq;
       in_house          postgres    false    6    207                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.auth_permission_id_seq OWNED BY in_house.auth_permission.id;
          in_house          postgres    false    208            �            1259    16895 	   auth_user    TABLE     �  CREATE TABLE in_house.auth_user (
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
       in_house         heap    postgres    false    6            �            1259    16901    auth_user_groups    TABLE     �   CREATE TABLE in_house.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 &   DROP TABLE in_house.auth_user_groups;
       in_house         heap    postgres    false    6            �            1259    16904    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.auth_user_groups_id_seq;
       in_house          postgres    false    6    210                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.auth_user_groups_id_seq OWNED BY in_house.auth_user_groups.id;
          in_house          postgres    false    211            �            1259    16906    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE in_house.auth_user_id_seq;
       in_house          postgres    false    209    6                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE in_house.auth_user_id_seq OWNED BY in_house.auth_user.id;
          in_house          postgres    false    212            �            1259    16908    auth_user_user_permissions    TABLE     �   CREATE TABLE in_house.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 0   DROP TABLE in_house.auth_user_user_permissions;
       in_house         heap    postgres    false    6            �            1259    16911 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.auth_user_user_permissions_id_seq;
       in_house          postgres    false    213    6                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.auth_user_user_permissions_id_seq OWNED BY in_house.auth_user_user_permissions.id;
          in_house          postgres    false    214            �            1259    16913    django_admin_log    TABLE     �  CREATE TABLE in_house.django_admin_log (
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
       in_house         heap    postgres    false    6            �            1259    16920    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.django_admin_log_id_seq;
       in_house          postgres    false    215    6                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.django_admin_log_id_seq OWNED BY in_house.django_admin_log.id;
          in_house          postgres    false    216            �            1259    16922    django_content_type    TABLE     �   CREATE TABLE in_house.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 )   DROP TABLE in_house.django_content_type;
       in_house         heap    postgres    false    6            �            1259    16925    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.django_content_type_id_seq;
       in_house          postgres    false    6    217            	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.django_content_type_id_seq OWNED BY in_house.django_content_type.id;
          in_house          postgres    false    218            �            1259    16927    django_migrations    TABLE     �   CREATE TABLE in_house.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 '   DROP TABLE in_house.django_migrations;
       in_house         heap    postgres    false    6            �            1259    16933    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.django_migrations_id_seq;
       in_house          postgres    false    219    6            
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.django_migrations_id_seq OWNED BY in_house.django_migrations.id;
          in_house          postgres    false    220            �            1259    16935    django_session    TABLE     �   CREATE TABLE in_house.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 $   DROP TABLE in_house.django_session;
       in_house         heap    postgres    false    6            �            1259    16941    notes_dm    TABLE     �   CREATE TABLE in_house.notes_dm (
    name character varying(200) NOT NULL,
    description text NOT NULL,
    created_at date NOT NULL,
    id integer NOT NULL
);
    DROP TABLE in_house.notes_dm;
       in_house         heap    postgres    false    6            �            1259    16947    notes_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.notes_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE in_house.notes_dm_id_seq;
       in_house          postgres    false    222    6                       0    0    notes_dm_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE in_house.notes_dm_id_seq OWNED BY in_house.notes_dm.id;
          in_house          postgres    false    223            �            1259    16949    post_category_tbl_dm    TABLE     �   CREATE TABLE in_house.post_category_tbl_dm (
    id integer NOT NULL,
    name character varying(200),
    description text,
    status integer NOT NULL,
    created_at date NOT NULL
);
 *   DROP TABLE in_house.post_category_tbl_dm;
       in_house         heap    postgres    false    6            �            1259    16955    post_category_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.post_category_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.post_category_tbl_dm_id_seq;
       in_house          postgres    false    6    224                       0    0    post_category_tbl_dm_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.post_category_tbl_dm_id_seq OWNED BY in_house.post_category_tbl_dm.id;
          in_house          postgres    false    225            �            1259    16957    post_tbl_dm    TABLE     q  CREATE TABLE in_house.post_tbl_dm (
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
       in_house         heap    postgres    false    6            �            1259    16963    post_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.post_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE in_house.post_tbl_dm_id_seq;
       in_house          postgres    false    6    226                       0    0    post_tbl_dm_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE in_house.post_tbl_dm_id_seq OWNED BY in_house.post_tbl_dm.id;
          in_house          postgres    false    227            �            1259    16965    resume_certificates    TABLE     v  CREATE TABLE in_house.resume_certificates (
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
       in_house         heap    postgres    false    6            �            1259    16971    resume_certificates_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_certificates_id_seq;
       in_house          postgres    false    6    228                       0    0    resume_certificates_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_certificates_id_seq OWNED BY in_house.resume_certificates.id;
          in_house          postgres    false    229            �            1259    16973    resume_educations    TABLE     �  CREATE TABLE in_house.resume_educations (
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
       in_house         heap    postgres    false    6            �            1259    16981    resume_educations_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_educations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_educations_id_seq;
       in_house          postgres    false    230    6                       0    0    resume_educations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_educations_id_seq OWNED BY in_house.resume_educations.id;
          in_house          postgres    false    231            �            1259    16983    resume_employment    TABLE     �  CREATE TABLE in_house.resume_employment (
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
       in_house         heap    postgres    false    6            �            1259    16989    resume_employment_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_employment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.resume_employment_id_seq;
       in_house          postgres    false    232    6                       0    0    resume_employment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.resume_employment_id_seq OWNED BY in_house.resume_employment.id;
          in_house          postgres    false    233            �            1259    16991    resume_language_proficiency    TABLE     �   CREATE TABLE in_house.resume_language_proficiency (
    id integer NOT NULL,
    name character varying(20),
    created_at date NOT NULL
);
 1   DROP TABLE in_house.resume_language_proficiency;
       in_house         heap    postgres    false    6            �            1259    16994 "   resume_language_proficiency_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_language_proficiency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE in_house.resume_language_proficiency_id_seq;
       in_house          postgres    false    6    234                       0    0 "   resume_language_proficiency_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE in_house.resume_language_proficiency_id_seq OWNED BY in_house.resume_language_proficiency.id;
          in_house          postgres    false    235            �            1259    16996    resume_languages    TABLE     �   CREATE TABLE in_house.resume_languages (
    id integer NOT NULL,
    name character varying(20),
    is_other integer NOT NULL,
    created_at date NOT NULL
);
 &   DROP TABLE in_house.resume_languages;
       in_house         heap    postgres    false    6            �            1259    16999    resume_languages_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE in_house.resume_languages_id_seq;
       in_house          postgres    false    6    236                       0    0    resume_languages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE in_house.resume_languages_id_seq OWNED BY in_house.resume_languages.id;
          in_house          postgres    false    237            �            1259    17001    resume_profile    TABLE     T  CREATE TABLE in_house.resume_profile (
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
       in_house         heap    postgres    false    6            �            1259    17007    resume_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.resume_profile_id_seq;
       in_house          postgres    false    6    238                       0    0    resume_profile_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.resume_profile_id_seq OWNED BY in_house.resume_profile.id;
          in_house          postgres    false    239            �            1259    17009    resume_projects    TABLE     �  CREATE TABLE in_house.resume_projects (
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
       in_house         heap    postgres    false    6            �            1259    17016    resume_projects_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE in_house.resume_projects_id_seq;
       in_house          postgres    false    240    6                       0    0    resume_projects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE in_house.resume_projects_id_seq OWNED BY in_house.resume_projects.id;
          in_house          postgres    false    241            �            1259    17018    resume_projects_technology    TABLE     �   CREATE TABLE in_house.resume_projects_technology (
    id integer NOT NULL,
    projects_id integer NOT NULL,
    technologies_id integer NOT NULL
);
 0   DROP TABLE in_house.resume_projects_technology;
       in_house         heap    postgres    false    6            �            1259    17021 !   resume_projects_technology_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_projects_technology_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_projects_technology_id_seq;
       in_house          postgres    false    6    242                       0    0 !   resume_projects_technology_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_projects_technology_id_seq OWNED BY in_house.resume_projects_technology.id;
          in_house          postgres    false    243            �            1259    17023    resume_technologies    TABLE     �   CREATE TABLE in_house.resume_technologies (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    version character varying(120) NOT NULL,
    rate smallint NOT NULL,
    is_other integer NOT NULL,
    category_id integer NOT NULL
);
 )   DROP TABLE in_house.resume_technologies;
       in_house         heap    postgres    false    6            �            1259    17026    resume_technologies_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE in_house.resume_technologies_id_seq;
       in_house          postgres    false    244    6                       0    0    resume_technologies_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE in_house.resume_technologies_id_seq OWNED BY in_house.resume_technologies.id;
          in_house          postgres    false    245            �            1259    17028    resume_technology_category    TABLE     �   CREATE TABLE in_house.resume_technology_category (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    status integer NOT NULL,
    created_at date NOT NULL
);
 0   DROP TABLE in_house.resume_technology_category;
       in_house         heap    postgres    false    6            �            1259    17031 !   resume_technology_category_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_technology_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE in_house.resume_technology_category_id_seq;
       in_house          postgres    false    246    6                       0    0 !   resume_technology_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE in_house.resume_technology_category_id_seq OWNED BY in_house.resume_technology_category.id;
          in_house          postgres    false    247            �            1259    17033    resume_user_interest    TABLE     �   CREATE TABLE in_house.resume_user_interest (
    id integer NOT NULL,
    name character varying(50),
    created_at date NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_interest;
       in_house         heap    postgres    false    6            �            1259    17036    resume_user_interest_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_user_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_interest_id_seq;
       in_house          postgres    false    6    248                       0    0    resume_user_interest_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_interest_id_seq OWNED BY in_house.resume_user_interest.id;
          in_house          postgres    false    249            �            1259    17038    resume_user_language    TABLE     �   CREATE TABLE in_house.resume_user_language (
    id integer NOT NULL,
    created_at date NOT NULL,
    language_id integer NOT NULL,
    language_profiency_id integer NOT NULL,
    profile_id integer NOT NULL
);
 *   DROP TABLE in_house.resume_user_language;
       in_house         heap    postgres    false    6            �            1259    17041    resume_user_language_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.resume_user_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE in_house.resume_user_language_id_seq;
       in_house          postgres    false    6    250                       0    0    resume_user_language_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE in_house.resume_user_language_id_seq OWNED BY in_house.resume_user_language.id;
          in_house          postgres    false    251            �            1259    17043    subject_tbl_dm    TABLE     r  CREATE TABLE in_house.subject_tbl_dm (
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
       in_house         heap    postgres    false    6            �            1259    17049    subject_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.subject_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE in_house.subject_tbl_dm_id_seq;
       in_house          postgres    false    6    252                       0    0    subject_tbl_dm_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE in_house.subject_tbl_dm_id_seq OWNED BY in_house.subject_tbl_dm.id;
          in_house          postgres    false    253            �            1259    17051    topic_section_tbl    TABLE     K  CREATE TABLE in_house.topic_section_tbl (
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
       in_house         heap    postgres    false    6            �            1259    17057    topic_section_tbl_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topic_section_tbl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE in_house.topic_section_tbl_id_seq;
       in_house          postgres    false    6    254                       0    0    topic_section_tbl_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE in_house.topic_section_tbl_id_seq OWNED BY in_house.topic_section_tbl.id;
          in_house          postgres    false    255                        1259    17059    topics_tbl_dm    TABLE     �  CREATE TABLE in_house.topics_tbl_dm (
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
       in_house         heap    postgres    false    6                       1259    17065    topics_tbl_dm_id_seq    SEQUENCE     �   CREATE SEQUENCE in_house.topics_tbl_dm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE in_house.topics_tbl_dm_id_seq;
       in_house          postgres    false    6    256                       0    0    topics_tbl_dm_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE in_house.topics_tbl_dm_id_seq OWNED BY in_house.topics_tbl_dm.id;
          in_house          postgres    false    257                       1259    17326    web_access_log    TABLE       CREATE TABLE in_house.web_access_log (
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
       in_house         heap    postgres    false    6                       0    0     COLUMN web_access_log.ip_address    COMMENT     F   COMMENT ON COLUMN in_house.web_access_log.ip_address IS 'ip_address';
          in_house          postgres    false    259                       0    0    COLUMN web_access_log.city    COMMENT     :   COMMENT ON COLUMN in_house.web_access_log.city IS 'city';
          in_house          postgres    false    259                       1259    17324    web_access_log_id_seq    SEQUENCE     �   ALTER TABLE in_house.web_access_log ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME in_house.web_access_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            in_house          postgres    false    6    259            �           2604    17067    auth_group id    DEFAULT     r   ALTER TABLE ONLY in_house.auth_group ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_id_seq'::regclass);
 >   ALTER TABLE in_house.auth_group ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    204    203            �           2604    17068    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_group_permissions_id_seq'::regclass);
 J   ALTER TABLE in_house.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    206    205            �           2604    17069    auth_permission id    DEFAULT     |   ALTER TABLE ONLY in_house.auth_permission ALTER COLUMN id SET DEFAULT nextval('in_house.auth_permission_id_seq'::regclass);
 C   ALTER TABLE in_house.auth_permission ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    208    207            �           2604    17070    auth_user id    DEFAULT     p   ALTER TABLE ONLY in_house.auth_user ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_id_seq'::regclass);
 =   ALTER TABLE in_house.auth_user ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    212    209            �           2604    17071    auth_user_groups id    DEFAULT     ~   ALTER TABLE ONLY in_house.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_groups_id_seq'::regclass);
 D   ALTER TABLE in_house.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    211    210            �           2604    17072    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('in_house.auth_user_user_permissions_id_seq'::regclass);
 N   ALTER TABLE in_house.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    214    213            �           2604    17073    django_admin_log id    DEFAULT     ~   ALTER TABLE ONLY in_house.django_admin_log ALTER COLUMN id SET DEFAULT nextval('in_house.django_admin_log_id_seq'::regclass);
 D   ALTER TABLE in_house.django_admin_log ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    216    215            �           2604    17074    django_content_type id    DEFAULT     �   ALTER TABLE ONLY in_house.django_content_type ALTER COLUMN id SET DEFAULT nextval('in_house.django_content_type_id_seq'::regclass);
 G   ALTER TABLE in_house.django_content_type ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    218    217            �           2604    17075    django_migrations id    DEFAULT     �   ALTER TABLE ONLY in_house.django_migrations ALTER COLUMN id SET DEFAULT nextval('in_house.django_migrations_id_seq'::regclass);
 E   ALTER TABLE in_house.django_migrations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    220    219            �           2604    17076    notes_dm id    DEFAULT     n   ALTER TABLE ONLY in_house.notes_dm ALTER COLUMN id SET DEFAULT nextval('in_house.notes_dm_id_seq'::regclass);
 <   ALTER TABLE in_house.notes_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    223    222            �           2604    17077    post_category_tbl_dm id    DEFAULT     �   ALTER TABLE ONLY in_house.post_category_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.post_category_tbl_dm_id_seq'::regclass);
 H   ALTER TABLE in_house.post_category_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    225    224            �           2604    17078    post_tbl_dm id    DEFAULT     t   ALTER TABLE ONLY in_house.post_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.post_tbl_dm_id_seq'::regclass);
 ?   ALTER TABLE in_house.post_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    227    226            �           2604    17079    resume_certificates id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_certificates ALTER COLUMN id SET DEFAULT nextval('in_house.resume_certificates_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_certificates ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    229    228            �           2604    17080    resume_educations id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_educations ALTER COLUMN id SET DEFAULT nextval('in_house.resume_educations_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_educations ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    231    230            �           2604    17081    resume_employment id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_employment ALTER COLUMN id SET DEFAULT nextval('in_house.resume_employment_id_seq'::regclass);
 E   ALTER TABLE in_house.resume_employment ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    233    232            �           2604    17082    resume_language_proficiency id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_language_proficiency ALTER COLUMN id SET DEFAULT nextval('in_house.resume_language_proficiency_id_seq'::regclass);
 O   ALTER TABLE in_house.resume_language_proficiency ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    235    234            �           2604    17083    resume_languages id    DEFAULT     ~   ALTER TABLE ONLY in_house.resume_languages ALTER COLUMN id SET DEFAULT nextval('in_house.resume_languages_id_seq'::regclass);
 D   ALTER TABLE in_house.resume_languages ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    237    236            �           2604    17084    resume_profile id    DEFAULT     z   ALTER TABLE ONLY in_house.resume_profile ALTER COLUMN id SET DEFAULT nextval('in_house.resume_profile_id_seq'::regclass);
 B   ALTER TABLE in_house.resume_profile ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    239    238            �           2604    17085    resume_projects id    DEFAULT     |   ALTER TABLE ONLY in_house.resume_projects ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_id_seq'::regclass);
 C   ALTER TABLE in_house.resume_projects ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    241    240            �           2604    17086    resume_projects_technology id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_projects_technology ALTER COLUMN id SET DEFAULT nextval('in_house.resume_projects_technology_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_projects_technology ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    243    242            �           2604    17087    resume_technologies id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technologies ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technologies_id_seq'::regclass);
 G   ALTER TABLE in_house.resume_technologies ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    245    244            �           2604    17088    resume_technology_category id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_technology_category ALTER COLUMN id SET DEFAULT nextval('in_house.resume_technology_category_id_seq'::regclass);
 N   ALTER TABLE in_house.resume_technology_category ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    247    246            �           2604    17089    resume_user_interest id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_interest ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_interest_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_interest ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    249    248            �           2604    17090    resume_user_language id    DEFAULT     �   ALTER TABLE ONLY in_house.resume_user_language ALTER COLUMN id SET DEFAULT nextval('in_house.resume_user_language_id_seq'::regclass);
 H   ALTER TABLE in_house.resume_user_language ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    251    250            �           2604    17091    subject_tbl_dm id    DEFAULT     z   ALTER TABLE ONLY in_house.subject_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.subject_tbl_dm_id_seq'::regclass);
 B   ALTER TABLE in_house.subject_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    253    252            �           2604    17092    topic_section_tbl id    DEFAULT     �   ALTER TABLE ONLY in_house.topic_section_tbl ALTER COLUMN id SET DEFAULT nextval('in_house.topic_section_tbl_id_seq'::regclass);
 E   ALTER TABLE in_house.topic_section_tbl ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    255    254            �           2604    17093    topics_tbl_dm id    DEFAULT     x   ALTER TABLE ONLY in_house.topics_tbl_dm ALTER COLUMN id SET DEFAULT nextval('in_house.topics_tbl_dm_id_seq'::regclass);
 A   ALTER TABLE in_house.topics_tbl_dm ALTER COLUMN id DROP DEFAULT;
       in_house          postgres    false    257    256            �          0    16880 
   auth_group 
   TABLE DATA           0   COPY in_house.auth_group (id, name) FROM stdin;
    in_house          postgres    false    203   er      �          0    16885    auth_group_permissions 
   TABLE DATA           O   COPY in_house.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    in_house          postgres    false    205   �r      �          0    16890    auth_permission 
   TABLE DATA           P   COPY in_house.auth_permission (id, name, content_type_id, codename) FROM stdin;
    in_house          postgres    false    207   �r      �          0    16895 	   auth_user 
   TABLE DATA           �   COPY in_house.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    in_house          postgres    false    209   �v      �          0    16901    auth_user_groups 
   TABLE DATA           C   COPY in_house.auth_user_groups (id, user_id, group_id) FROM stdin;
    in_house          postgres    false    210   �w      �          0    16908    auth_user_user_permissions 
   TABLE DATA           R   COPY in_house.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    in_house          postgres    false    213   �w      �          0    16913    django_admin_log 
   TABLE DATA           �   COPY in_house.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    in_house          postgres    false    215   x      �          0    16922    django_content_type 
   TABLE DATA           E   COPY in_house.django_content_type (id, app_label, model) FROM stdin;
    in_house          postgres    false    217   ��      �          0    16927    django_migrations 
   TABLE DATA           E   COPY in_house.django_migrations (id, app, name, applied) FROM stdin;
    in_house          postgres    false    219   ŭ      �          0    16935    django_session 
   TABLE DATA           R   COPY in_house.django_session (session_key, session_data, expire_date) FROM stdin;
    in_house          postgres    false    221   x�      �          0    16941    notes_dm 
   TABLE DATA           G   COPY in_house.notes_dm (name, description, created_at, id) FROM stdin;
    in_house          postgres    false    222   ��      �          0    16949    post_category_tbl_dm 
   TABLE DATA           [   COPY in_house.post_category_tbl_dm (id, name, description, status, created_at) FROM stdin;
    in_house          postgres    false    224   C�      �          0    16957    post_tbl_dm 
   TABLE DATA           �   COPY in_house.post_tbl_dm (id, title, slug, summary, post_image, is_publish, publish_date, created_at, updated_at, post_category_id) FROM stdin;
    in_house          postgres    false    226   `�      �          0    16965    resume_certificates 
   TABLE DATA           �   COPY in_house.resume_certificates (id, name, short_name, institute_short_name, institute_full_name, complition_date, duration, created_at, profile_id) FROM stdin;
    in_house          postgres    false    228   }�      �          0    16973    resume_educations 
   TABLE DATA           �   COPY in_house.resume_educations (id, course_short_name, course_full_name, institute_short_name, institute_full_name, university, start_year, end_year, duration, created_at, is_school, profile_id) FROM stdin;
    in_house          postgres    false    230   ��      �          0    16983    resume_employment 
   TABLE DATA           �   COPY in_house.resume_employment (id, "position", employer, location, summary, start_date, end_date, is_current_org, created_at, updated_at, profile_id) FROM stdin;
    in_house          postgres    false    232   ��      �          0    16991    resume_language_proficiency 
   TABLE DATA           M   COPY in_house.resume_language_proficiency (id, name, created_at) FROM stdin;
    in_house          postgres    false    234   Գ      �          0    16996    resume_languages 
   TABLE DATA           L   COPY in_house.resume_languages (id, name, is_other, created_at) FROM stdin;
    in_house          postgres    false    236   �      �          0    17001    resume_profile 
   TABLE DATA           �   COPY in_house.resume_profile (id, first_name, middle_name, last_name, profile_title, brief_summary, email, mobile_number, profile_pic, banner_image, social_linkes, created_at, updated_at) FROM stdin;
    in_house          postgres    false    238   �      �          0    17009    resume_projects 
   TABLE DATA           �   COPY in_house.resume_projects (id, name, description, role_responsibility, team_size, start_date, end_date, created_at, employment_id) FROM stdin;
    in_house          postgres    false    240   +�      �          0    17018    resume_projects_technology 
   TABLE DATA           X   COPY in_house.resume_projects_technology (id, projects_id, technologies_id) FROM stdin;
    in_house          postgres    false    242   H�      �          0    17023    resume_technologies 
   TABLE DATA           _   COPY in_house.resume_technologies (id, name, version, rate, is_other, category_id) FROM stdin;
    in_house          postgres    false    244   e�      �          0    17028    resume_technology_category 
   TABLE DATA           T   COPY in_house.resume_technology_category (id, name, status, created_at) FROM stdin;
    in_house          postgres    false    246   ��      �          0    17033    resume_user_interest 
   TABLE DATA           R   COPY in_house.resume_user_interest (id, name, created_at, profile_id) FROM stdin;
    in_house          postgres    false    248   �      �          0    17038    resume_user_language 
   TABLE DATA           p   COPY in_house.resume_user_language (id, created_at, language_id, language_profiency_id, profile_id) FROM stdin;
    in_house          postgres    false    250   .�      �          0    17043    subject_tbl_dm 
   TABLE DATA           �   COPY in_house.subject_tbl_dm (id, name, description, image, created_at, updated_at, slug, status, is_publish, icon) FROM stdin;
    in_house          postgres    false    252   K�      �          0    17051    topic_section_tbl 
   TABLE DATA           �   COPY in_house.topic_section_tbl (id, name, description, section_order, created_at, updated_at, topic_id, status, is_publish) FROM stdin;
    in_house          postgres    false    254   ��      �          0    17059    topics_tbl_dm 
   TABLE DATA           �   COPY in_house.topics_tbl_dm (id, name, description, topic_order, image, created_at, updated_at, subject_id, slug, status, is_publish) FROM stdin;
    in_house          postgres    false    256   �G      �          0    17326    web_access_log 
   TABLE DATA           o   COPY in_house.web_access_log (id, ip_address, post_id, topic_id, city, state, country, created_at) FROM stdin;
    in_house          postgres    false    259   __                 0    0    auth_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('in_house.auth_group_id_seq', 1, false);
          in_house          postgres    false    204                        0    0    auth_group_permissions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('in_house.auth_group_permissions_id_seq', 1, false);
          in_house          postgres    false    206            !           0    0    auth_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_permission_id_seq', 100, true);
          in_house          postgres    false    208            "           0    0    auth_user_groups_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.auth_user_groups_id_seq', 1, false);
          in_house          postgres    false    211            #           0    0    auth_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('in_house.auth_user_id_seq', 2, true);
          in_house          postgres    false    212            $           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.auth_user_user_permissions_id_seq', 6, true);
          in_house          postgres    false    214            %           0    0    django_admin_log_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_admin_log_id_seq', 860, true);
          in_house          postgres    false    216            &           0    0    django_content_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.django_content_type_id_seq', 25, true);
          in_house          postgres    false    218            '           0    0    django_migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.django_migrations_id_seq', 32, true);
          in_house          postgres    false    220            (           0    0    notes_dm_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('in_house.notes_dm_id_seq', 2, true);
          in_house          postgres    false    223            )           0    0    post_category_tbl_dm_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.post_category_tbl_dm_id_seq', 1, false);
          in_house          postgres    false    225            *           0    0    post_tbl_dm_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('in_house.post_tbl_dm_id_seq', 1, false);
          in_house          postgres    false    227            +           0    0    resume_certificates_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_certificates_id_seq', 1, false);
          in_house          postgres    false    229            ,           0    0    resume_educations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_educations_id_seq', 1, false);
          in_house          postgres    false    231            -           0    0    resume_employment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.resume_employment_id_seq', 1, false);
          in_house          postgres    false    233            .           0    0 "   resume_language_proficiency_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('in_house.resume_language_proficiency_id_seq', 1, false);
          in_house          postgres    false    235            /           0    0    resume_languages_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('in_house.resume_languages_id_seq', 1, false);
          in_house          postgres    false    237            0           0    0    resume_profile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('in_house.resume_profile_id_seq', 1, false);
          in_house          postgres    false    239            1           0    0    resume_projects_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('in_house.resume_projects_id_seq', 1, false);
          in_house          postgres    false    241            2           0    0 !   resume_projects_technology_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('in_house.resume_projects_technology_id_seq', 1, false);
          in_house          postgres    false    243            3           0    0    resume_technologies_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('in_house.resume_technologies_id_seq', 21, true);
          in_house          postgres    false    245            4           0    0 !   resume_technology_category_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('in_house.resume_technology_category_id_seq', 8, true);
          in_house          postgres    false    247            5           0    0    resume_user_interest_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_interest_id_seq', 1, false);
          in_house          postgres    false    249            6           0    0    resume_user_language_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('in_house.resume_user_language_id_seq', 1, false);
          in_house          postgres    false    251            7           0    0    subject_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.subject_tbl_dm_id_seq', 7, true);
          in_house          postgres    false    253            8           0    0    topic_section_tbl_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('in_house.topic_section_tbl_id_seq', 92, true);
          in_house          postgres    false    255            9           0    0    topics_tbl_dm_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('in_house.topics_tbl_dm_id_seq', 29, true);
          in_house          postgres    false    257            :           0    0    web_access_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('in_house.web_access_log_id_seq', 28, true);
          in_house          postgres    false    258            �           2606    17101    auth_group auth_group_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 J   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_name_key;
       in_house            postgres    false    203            �           2606    17103 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 ~   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       in_house            postgres    false    205    205            �           2606    17105 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       in_house            postgres    false    205            �           2606    17107    auth_group auth_group_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY in_house.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY in_house.auth_group DROP CONSTRAINT auth_group_pkey;
       in_house            postgres    false    203            �           2606    17109 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 r   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       in_house            postgres    false    207    207            �           2606    17111 $   auth_permission auth_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_pkey;
       in_house            postgres    false    207            �           2606    17113 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       in_house            postgres    false    210            �           2606    17115 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 l   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       in_house            postgres    false    210    210            �           2606    17117    auth_user auth_user_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_pkey;
       in_house            postgres    false    209            �           2606    17119 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       in_house            postgres    false    213            �           2606    17121 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       in_house            postgres    false    213    213            �           2606    17123     auth_user auth_user_username_key 
   CONSTRAINT     a   ALTER TABLE ONLY in_house.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 L   ALTER TABLE ONLY in_house.auth_user DROP CONSTRAINT auth_user_username_key;
       in_house            postgres    false    209            �           2606    17125 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       in_house            postgres    false    215            �           2606    17127 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       in_house            postgres    false    217    217            �           2606    17129 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.django_content_type DROP CONSTRAINT django_content_type_pkey;
       in_house            postgres    false    217            �           2606    17131 (   django_migrations django_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.django_migrations DROP CONSTRAINT django_migrations_pkey;
       in_house            postgres    false    219            �           2606    17133 "   django_session django_session_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY in_house.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 N   ALTER TABLE ONLY in_house.django_session DROP CONSTRAINT django_session_pkey;
       in_house            postgres    false    221            �           2606    17135    notes_dm notes_dm_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY in_house.notes_dm
    ADD CONSTRAINT notes_dm_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY in_house.notes_dm DROP CONSTRAINT notes_dm_pkey;
       in_house            postgres    false    222            �           2606    17137 .   post_category_tbl_dm post_category_tbl_dm_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.post_category_tbl_dm
    ADD CONSTRAINT post_category_tbl_dm_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.post_category_tbl_dm DROP CONSTRAINT post_category_tbl_dm_pkey;
       in_house            postgres    false    224            �           2606    17139    post_tbl_dm post_tbl_dm_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY in_house.post_tbl_dm
    ADD CONSTRAINT post_tbl_dm_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY in_house.post_tbl_dm DROP CONSTRAINT post_tbl_dm_pkey;
       in_house            postgres    false    226            �           2606    17141 ,   resume_certificates resume_certificates_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_pkey;
       in_house            postgres    false    228            �           2606    17143 (   resume_educations resume_educations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_pkey;
       in_house            postgres    false    230                       2606    17145 (   resume_employment resume_employment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_pkey;
       in_house            postgres    false    232                       2606    17147 <   resume_language_proficiency resume_language_proficiency_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY in_house.resume_language_proficiency
    ADD CONSTRAINT resume_language_proficiency_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY in_house.resume_language_proficiency DROP CONSTRAINT resume_language_proficiency_pkey;
       in_house            postgres    false    234                       2606    17149 &   resume_languages resume_languages_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY in_house.resume_languages
    ADD CONSTRAINT resume_languages_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY in_house.resume_languages DROP CONSTRAINT resume_languages_pkey;
       in_house            postgres    false    236                       2606    17151 "   resume_profile resume_profile_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.resume_profile
    ADD CONSTRAINT resume_profile_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.resume_profile DROP CONSTRAINT resume_profile_pkey;
       in_house            postgres    false    238                       2606    17153 $   resume_projects resume_projects_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_pkey;
       in_house            postgres    false    240                       2606    17155 Z   resume_projects_technology resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq UNIQUE (projects_id, technologies_id);
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technolo_projects_id_technologies_b3d7c93f_uniq;
       in_house            postgres    false    242    242                       2606    17157 :   resume_projects_technology resume_projects_technology_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_technology_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_technology_pkey;
       in_house            postgres    false    242                       2606    17159 ,   resume_technologies resume_technologies_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_pkey;
       in_house            postgres    false    244                       2606    17161 :   resume_technology_category resume_technology_category_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY in_house.resume_technology_category
    ADD CONSTRAINT resume_technology_category_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY in_house.resume_technology_category DROP CONSTRAINT resume_technology_category_pkey;
       in_house            postgres    false    246                       2606    17163 .   resume_user_interest resume_user_interest_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_pkey;
       in_house            postgres    false    248                       2606    17165 .   resume_user_language resume_user_language_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_pkey;
       in_house            postgres    false    250                        2606    17167 "   subject_tbl_dm subject_tbl_dm_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_pkey;
       in_house            postgres    false    252            #           2606    17169 0   subject_tbl_dm subject_tbl_dm_slug_4a3612d0_uniq 
   CONSTRAINT     m   ALTER TABLE ONLY in_house.subject_tbl_dm
    ADD CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq UNIQUE (slug);
 \   ALTER TABLE ONLY in_house.subject_tbl_dm DROP CONSTRAINT subject_tbl_dm_slug_4a3612d0_uniq;
       in_house            postgres    false    252            %           2606    17171 (   topic_section_tbl topic_section_tbl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_pkey;
       in_house            postgres    false    254            (           2606    17173     topics_tbl_dm topics_tbl_dm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_pkey;
       in_house            postgres    false    256            �           1259    17174    auth_group_name_a6ea08ec_like    INDEX     j   CREATE INDEX auth_group_name_a6ea08ec_like ON in_house.auth_group USING btree (name varchar_pattern_ops);
 3   DROP INDEX in_house.auth_group_name_a6ea08ec_like;
       in_house            postgres    false    203            �           1259    17175 (   auth_group_permissions_group_id_b120cbf9    INDEX     q   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON in_house.auth_group_permissions USING btree (group_id);
 >   DROP INDEX in_house.auth_group_permissions_group_id_b120cbf9;
       in_house            postgres    false    205            �           1259    17176 -   auth_group_permissions_permission_id_84c5c92e    INDEX     {   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON in_house.auth_group_permissions USING btree (permission_id);
 C   DROP INDEX in_house.auth_group_permissions_permission_id_84c5c92e;
       in_house            postgres    false    205            �           1259    17177 (   auth_permission_content_type_id_2f476e4b    INDEX     q   CREATE INDEX auth_permission_content_type_id_2f476e4b ON in_house.auth_permission USING btree (content_type_id);
 >   DROP INDEX in_house.auth_permission_content_type_id_2f476e4b;
       in_house            postgres    false    207            �           1259    17178 "   auth_user_groups_group_id_97559544    INDEX     e   CREATE INDEX auth_user_groups_group_id_97559544 ON in_house.auth_user_groups USING btree (group_id);
 8   DROP INDEX in_house.auth_user_groups_group_id_97559544;
       in_house            postgres    false    210            �           1259    17179 !   auth_user_groups_user_id_6a12ed8b    INDEX     c   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON in_house.auth_user_groups USING btree (user_id);
 7   DROP INDEX in_house.auth_user_groups_user_id_6a12ed8b;
       in_house            postgres    false    210            �           1259    17180 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON in_house.auth_user_user_permissions USING btree (permission_id);
 G   DROP INDEX in_house.auth_user_user_permissions_permission_id_1fbb5f2c;
       in_house            postgres    false    213            �           1259    17181 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     w   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON in_house.auth_user_user_permissions USING btree (user_id);
 A   DROP INDEX in_house.auth_user_user_permissions_user_id_a95ead1b;
       in_house            postgres    false    213            �           1259    17182     auth_user_username_6821ab7c_like    INDEX     p   CREATE INDEX auth_user_username_6821ab7c_like ON in_house.auth_user USING btree (username varchar_pattern_ops);
 6   DROP INDEX in_house.auth_user_username_6821ab7c_like;
       in_house            postgres    false    209            �           1259    17183 )   django_admin_log_content_type_id_c4bce8eb    INDEX     s   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON in_house.django_admin_log USING btree (content_type_id);
 ?   DROP INDEX in_house.django_admin_log_content_type_id_c4bce8eb;
       in_house            postgres    false    215            �           1259    17184 !   django_admin_log_user_id_c564eba6    INDEX     c   CREATE INDEX django_admin_log_user_id_c564eba6 ON in_house.django_admin_log USING btree (user_id);
 7   DROP INDEX in_house.django_admin_log_user_id_c564eba6;
       in_house            postgres    false    215            �           1259    17185 #   django_session_expire_date_a5c62663    INDEX     g   CREATE INDEX django_session_expire_date_a5c62663 ON in_house.django_session USING btree (expire_date);
 9   DROP INDEX in_house.django_session_expire_date_a5c62663;
       in_house            postgres    false    221            �           1259    17186 (   django_session_session_key_c0390e0f_like    INDEX     �   CREATE INDEX django_session_session_key_c0390e0f_like ON in_house.django_session USING btree (session_key varchar_pattern_ops);
 >   DROP INDEX in_house.django_session_session_key_c0390e0f_like;
       in_house            postgres    false    221            �           1259    17187 %   post_tbl_dm_post_category_id_19d8f7e9    INDEX     k   CREATE INDEX post_tbl_dm_post_category_id_19d8f7e9 ON in_house.post_tbl_dm USING btree (post_category_id);
 ;   DROP INDEX in_house.post_tbl_dm_post_category_id_19d8f7e9;
       in_house            postgres    false    226            �           1259    17188    post_tbl_dm_slug_a6bb306d    INDEX     S   CREATE INDEX post_tbl_dm_slug_a6bb306d ON in_house.post_tbl_dm USING btree (slug);
 /   DROP INDEX in_house.post_tbl_dm_slug_a6bb306d;
       in_house            postgres    false    226            �           1259    17189    post_tbl_dm_slug_a6bb306d_like    INDEX     l   CREATE INDEX post_tbl_dm_slug_a6bb306d_like ON in_house.post_tbl_dm USING btree (slug varchar_pattern_ops);
 4   DROP INDEX in_house.post_tbl_dm_slug_a6bb306d_like;
       in_house            postgres    false    226            �           1259    17190 '   resume_certificates_profile_id_ff9ddcd4    INDEX     o   CREATE INDEX resume_certificates_profile_id_ff9ddcd4 ON in_house.resume_certificates USING btree (profile_id);
 =   DROP INDEX in_house.resume_certificates_profile_id_ff9ddcd4;
       in_house            postgres    false    228            �           1259    17191 %   resume_educations_profile_id_363d9f96    INDEX     k   CREATE INDEX resume_educations_profile_id_363d9f96 ON in_house.resume_educations USING btree (profile_id);
 ;   DROP INDEX in_house.resume_educations_profile_id_363d9f96;
       in_house            postgres    false    230                       1259    17192 %   resume_employment_profile_id_a7423269    INDEX     k   CREATE INDEX resume_employment_profile_id_a7423269 ON in_house.resume_employment USING btree (profile_id);
 ;   DROP INDEX in_house.resume_employment_profile_id_a7423269;
       in_house            postgres    false    232            	           1259    17193 &   resume_projects_employment_id_574c5bf6    INDEX     m   CREATE INDEX resume_projects_employment_id_574c5bf6 ON in_house.resume_projects USING btree (employment_id);
 <   DROP INDEX in_house.resume_projects_employment_id_574c5bf6;
       in_house            postgres    false    240                       1259    17194 /   resume_projects_technology_projects_id_2f5c3d10    INDEX        CREATE INDEX resume_projects_technology_projects_id_2f5c3d10 ON in_house.resume_projects_technology USING btree (projects_id);
 E   DROP INDEX in_house.resume_projects_technology_projects_id_2f5c3d10;
       in_house            postgres    false    242                       1259    17195 3   resume_projects_technology_technologies_id_2ca2768d    INDEX     �   CREATE INDEX resume_projects_technology_technologies_id_2ca2768d ON in_house.resume_projects_technology USING btree (technologies_id);
 I   DROP INDEX in_house.resume_projects_technology_technologies_id_2ca2768d;
       in_house            postgres    false    242                       1259    17196 (   resume_technologies_category_id_147f19e0    INDEX     q   CREATE INDEX resume_technologies_category_id_147f19e0 ON in_house.resume_technologies USING btree (category_id);
 >   DROP INDEX in_house.resume_technologies_category_id_147f19e0;
       in_house            postgres    false    244                       1259    17197 (   resume_user_interest_profile_id_8b18a7ed    INDEX     q   CREATE INDEX resume_user_interest_profile_id_8b18a7ed ON in_house.resume_user_interest USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_interest_profile_id_8b18a7ed;
       in_house            postgres    false    248                       1259    17198 )   resume_user_language_language_id_baa88fad    INDEX     s   CREATE INDEX resume_user_language_language_id_baa88fad ON in_house.resume_user_language USING btree (language_id);
 ?   DROP INDEX in_house.resume_user_language_language_id_baa88fad;
       in_house            postgres    false    250                       1259    17199 3   resume_user_language_language_profiency_id_81ca799f    INDEX     �   CREATE INDEX resume_user_language_language_profiency_id_81ca799f ON in_house.resume_user_language USING btree (language_profiency_id);
 I   DROP INDEX in_house.resume_user_language_language_profiency_id_81ca799f;
       in_house            postgres    false    250                       1259    17200 (   resume_user_language_profile_id_a7cd4ed1    INDEX     q   CREATE INDEX resume_user_language_profile_id_a7cd4ed1 ON in_house.resume_user_language USING btree (profile_id);
 >   DROP INDEX in_house.resume_user_language_profile_id_a7cd4ed1;
       in_house            postgres    false    250            !           1259    17201 !   subject_tbl_dm_slug_4a3612d0_like    INDEX     r   CREATE INDEX subject_tbl_dm_slug_4a3612d0_like ON in_house.subject_tbl_dm USING btree (slug varchar_pattern_ops);
 7   DROP INDEX in_house.subject_tbl_dm_slug_4a3612d0_like;
       in_house            postgres    false    252            &           1259    17202 #   topic_section_tbl_topic_id_887e7a85    INDEX     g   CREATE INDEX topic_section_tbl_topic_id_887e7a85 ON in_house.topic_section_tbl USING btree (topic_id);
 9   DROP INDEX in_house.topic_section_tbl_topic_id_887e7a85;
       in_house            postgres    false    254            )           1259    17203    topics_tbl_dm_slug_6453441b    INDEX     W   CREATE INDEX topics_tbl_dm_slug_6453441b ON in_house.topics_tbl_dm USING btree (slug);
 1   DROP INDEX in_house.topics_tbl_dm_slug_6453441b;
       in_house            postgres    false    256            *           1259    17204     topics_tbl_dm_slug_6453441b_like    INDEX     p   CREATE INDEX topics_tbl_dm_slug_6453441b_like ON in_house.topics_tbl_dm USING btree (slug varchar_pattern_ops);
 6   DROP INDEX in_house.topics_tbl_dm_slug_6453441b_like;
       in_house            postgres    false    256            +           1259    17205 !   topics_tbl_dm_subject_id_9e370280    INDEX     c   CREATE INDEX topics_tbl_dm_subject_id_9e370280 ON in_house.topics_tbl_dm USING btree (subject_id);
 7   DROP INDEX in_house.topics_tbl_dm_subject_id_9e370280;
       in_house            postgres    false    256            ,           2606    17206 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       in_house          postgres    false    3025    205    207            -           2606    17211 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       in_house          postgres    false    203    3014    205            .           2606    17216 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY in_house.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       in_house          postgres    false    3050    217    207            /           2606    17221 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES in_house.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       in_house          postgres    false    3014    210    203            0           2606    17226 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       in_house          postgres    false    209    210    3027            1           2606    17231 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES in_house.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       in_house          postgres    false    207    213    3025            2           2606    17236 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       in_house          postgres    false    213    209    3027            3           2606    17241 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES in_house.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       in_house          postgres    false    3050    215    217            4           2606    17246 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES in_house.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY in_house.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       in_house          postgres    false    215    209    3027            5           2606    17251 >   post_tbl_dm post_tbl_dm_post_category_id_19d8f7e9_fk_post_cate    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.post_tbl_dm
    ADD CONSTRAINT post_tbl_dm_post_category_id_19d8f7e9_fk_post_cate FOREIGN KEY (post_category_id) REFERENCES in_house.post_category_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY in_house.post_tbl_dm DROP CONSTRAINT post_tbl_dm_post_category_id_19d8f7e9_fk_post_cate;
       in_house          postgres    false    226    3060    224            6           2606    17256 P   resume_certificates resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_certificates
    ADD CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY in_house.resume_certificates DROP CONSTRAINT resume_certificates_profile_id_ff9ddcd4_fk_resume_profile_id;
       in_house          postgres    false    228    3080    238            7           2606    17261 L   resume_educations resume_educations_profile_id_363d9f96_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_educations
    ADD CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_educations DROP CONSTRAINT resume_educations_profile_id_363d9f96_fk_resume_profile_id;
       in_house          postgres    false    238    3080    230            8           2606    17266 L   resume_employment resume_employment_profile_id_a7423269_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_employment
    ADD CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY in_house.resume_employment DROP CONSTRAINT resume_employment_profile_id_a7423269_fk_resume_profile_id;
       in_house          postgres    false    232    238    3080            9           2606    17271 N   resume_projects resume_projects_employment_id_574c5bf6_fk_resume_employment_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects
    ADD CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id FOREIGN KEY (employment_id) REFERENCES in_house.resume_employment(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY in_house.resume_projects DROP CONSTRAINT resume_projects_employment_id_574c5bf6_fk_resume_employment_id;
       in_house          postgres    false    240    3073    232            :           2606    17276 Q   resume_projects_technology resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr FOREIGN KEY (projects_id) REFERENCES in_house.resume_projects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_projects_id_2f5c3d10_fk_resume_pr;
       in_house          postgres    false    3083    240    242            ;           2606    17281 U   resume_projects_technology resume_projects_tech_technologies_id_2ca2768d_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_projects_technology
    ADD CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te FOREIGN KEY (technologies_id) REFERENCES in_house.resume_technologies(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_projects_technology DROP CONSTRAINT resume_projects_tech_technologies_id_2ca2768d_fk_resume_te;
       in_house          postgres    false    244    242    3092            <           2606    17286 I   resume_technologies resume_technologies_category_id_147f19e0_fk_resume_te    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_technologies
    ADD CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te FOREIGN KEY (category_id) REFERENCES in_house.resume_technology_category(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.resume_technologies DROP CONSTRAINT resume_technologies_category_id_147f19e0_fk_resume_te;
       in_house          postgres    false    244    246    3094            =           2606    17291 R   resume_user_interest resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_interest
    ADD CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_interest DROP CONSTRAINT resume_user_interest_profile_id_8b18a7ed_fk_resume_profile_id;
       in_house          postgres    false    238    3080    248            >           2606    17296 K   resume_user_language resume_user_language_language_id_baa88fad_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la FOREIGN KEY (language_id) REFERENCES in_house.resume_languages(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_id_baa88fad_fk_resume_la;
       in_house          postgres    false    3078    250    236            ?           2606    17301 T   resume_user_language resume_user_language_language_profiency_i_81ca799f_fk_resume_la    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la FOREIGN KEY (language_profiency_id) REFERENCES in_house.resume_language_proficiency(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_language_profiency_i_81ca799f_fk_resume_la;
       in_house          postgres    false    234    3076    250            @           2606    17306 R   resume_user_language resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.resume_user_language
    ADD CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id FOREIGN KEY (profile_id) REFERENCES in_house.resume_profile(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY in_house.resume_user_language DROP CONSTRAINT resume_user_language_profile_id_a7cd4ed1_fk_resume_profile_id;
       in_house          postgres    false    3080    250    238            A           2606    17311 I   topic_section_tbl topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topic_section_tbl
    ADD CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY in_house.topic_section_tbl DROP CONSTRAINT topic_section_tbl_topic_id_887e7a85_fk_topics_tbl_dm_id;
       in_house          postgres    false    3112    254    256            B           2606    17316 D   topics_tbl_dm topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.topics_tbl_dm
    ADD CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id FOREIGN KEY (subject_id) REFERENCES in_house.subject_tbl_dm(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY in_house.topics_tbl_dm DROP CONSTRAINT topics_tbl_dm_subject_id_9e370280_fk_subject_tbl_dm_id;
       in_house          postgres    false    256    3104    252            C           2606    17332 *   web_access_log web_access_log_post_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.web_access_log
    ADD CONSTRAINT web_access_log_post_id_fkey FOREIGN KEY (post_id) REFERENCES in_house.post_tbl_dm(id);
 V   ALTER TABLE ONLY in_house.web_access_log DROP CONSTRAINT web_access_log_post_id_fkey;
       in_house          postgres    false    3062    226    259            D           2606    17337 +   web_access_log web_access_log_topic_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY in_house.web_access_log
    ADD CONSTRAINT web_access_log_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES in_house.topics_tbl_dm(id);
 W   ALTER TABLE ONLY in_house.web_access_log DROP CONSTRAINT web_access_log_topic_id_fkey;
       in_house          postgres    false    3112    256    259            �      x������ � �      �      x������ � �      �   �  x�u�͎�0���S�	����}�(�,Ҭ����A���W?�8���Z��b5�U�ϧasz�|{���γ��z���d�����&-��ػ���� �>b{���(ȡt��>���d�hl���bK@rGl��MX�Hl�0(d�I\�]���7O��`v`2-�j�^K\YeE��K�2̊Z|�<�fz����i6�h:�9�j�ni�Lq@wD�)"����	�mԯ�ͧ�j�DZ�U[:1ݕ��sD�[�P�l��*�u����p�l�Ѭ,�Z�D��a��U�!3
�N��\�/>N�G7����?�n8?MM�=ز���+9U����Wo���� �{��5���E��iUžKm��\Q�G��zZ���zi<�ʬ� u��ՙ.���dw:z���Θ�_���3�!�P:ތHgw�=����|ۜO������+v3��-�S�|������W/�^��=D��<��5���1��[���*Ϳ�ʋv�ҽTP��H�|)��
�})���CQI?���|ӭj������X���e%(�JDԖ��D*A�<��R�ӧЯ��v��^���V�)�s��#^�HK�����)c�=�>mT����2����H�9rt�$����c�?<�f��؃��Fy��2�idB!��M�HI�����7y\����k���Y��Y+T.K��
e�G9<^6~4�fD�w��g{�9EՓQE��`E���������X�i)+�Q)�(�X�U�4ͧhH�f��R�u������،�Q�� �#F�)3d��Q&��oT�5�6wW۴eS��Jmӕ4�7m���2��&i[H���0o��͙:M+ZK�Ձ(h
t
��Oq@X�0��?��`�G۪( �wL�T��K&s��-�I��q��ӌ��N{�'7����!8�mü����R�m,�tzp�<܆D�'H)�+�Hp���|/�Q�Znp�kK�a|ڮ+�l�{�V�	@�a|�����#      �     x�m�Mk�@�ϛ_�!7I�����@�ڪ-V��
e4jB��H+��7�)8s����<��~�F[�y��Ke�͘��('���h	f8٨���g�S�Ӑ��w'��E?��>���1�[�-P-Оj�q��N�mY��T���b*�}�ɱ�ȶT%9�)I���]NIf�˜U��o��NSi�m����n>��N`�����1��э������-�����n�W-H�Q6
��/�/���5�dU�6_�wl)hqA�����jh
      �      x������ � �      �   +   x�3�4��2��\�@�Ѐ�H�p�IS.3 i����� o�#      �      x��}K��q��+�x�e5�x��7h�#�6Cr��򠕭�4
��U������#�;�3���2 �0��EF�{�G��n�q�+��xc��� v1x����?�r���@?���z������������Ͽӿ�_9�x~�\]rX�f{����˧���#� ��AtL�AC�<�n����xB����x�*�����}��<������'���~�����_�{�z�ޘ�9�9�+!������EH������vj���x�x~c�o���x����;n���^Ɣ4�{�sƫA��7>�w�/������j��]�jǨ6u�hB�x�;���ݍ�铣�h���k�B����Χ�gT�����O�̬#�qZ�؁���a���p�~x<��A��p��FY�7o��n��vo0u1e2)a�ǧ�O�I�!Q7�$ӳp��KeZ?����aN��4� ���)���D����cx���6�:·�����q{ӏuF�9�����u�:W>�w�?�o�w=�qɎ�|&�6��������ʨK;ސ� K����u��H���~���6�!�W8H�;k��8t�gp����$�͂�gq�,׶/K��?�'>���
clAC��6��������]��+�"���H����<~�����;'�%���B��Sx��������P��Ɂ^.��h��\R�޷��
ߒ~�.���6o���}8n�`��Sh.�h�Kϡ-���w�� $��� �7��W �����(J��F��bҤ�>�3h^�DЬ%_��������xx���]vw�{�R�b�F�x���d0�A].
>)xO��d62�i����әA��f��ٜ��H�L�<X0�A|cc�|��Sd~pw��������~��e�_ ^H�z��]��_�YA��O�);�EO��i$sm����'+�:�~HH�$�3�|ኅ�����]�2��ij�-@N
�V�Α�:������AVX	W!�����h[�3c�Z���Z3�����~sٸ���߱���4�$p�;�aY���
��5Of��h!C����v>9�D$^�
~ �I���Ƒ?�������0yw<�~�Q��2$�&z��9��|} #� �d@Q#Y66C$�K��?�d%=�_K�4Y���"��Z�����o�*г�>��d֐��v,V��o~w����q�?N�����wo��;��uD��yw�j�p���Y|s�VA�#3SFV���7�|������ob�ס{�N�t�+��:tP�H2�hu��]�z�1'sk��,��y!.�c?�6`�mȲ3!�ռ
=)tҾlG���سBwb�`���j����h��>��;��Ϋ��G�&(N��B�	2"6�XU�Z?& M�Ͼ��" ��_9�c��fc�M�&�����޷��Z>�����Ϋ�>ku���|-��k�Й!4���|��r S*;G,�8n����D|�x����+Oj@C���]q��M�`�kvhۼ�� D@�7������ _+ ��DϘ&�#i�G`��@6�du�S�G��q|���LP��VN�sD�f��&�� d%6Q�)�	0���д����ϣM:W���h��'��1�����	��m�qvc|�b�\l��d�	H�.cl$fb��?޷!�rLEU���kAfk�\'p��AւL���ƀ�m>�d��b��ղ�c��d�ibJY�䂎o��|�O"�I'9#���a��S�N@��y��a	��<�cG\
&ۖ<0���%��z���ACz�w��P�\��͓�x�\�M'?�Y�pf�[�$͓Y�M��d�/�Ɋ����iٺ͵�F�Xv���'��<V�D�&>��R8�v�\-��-ׁ���[!$:�t�Y-�|ܜ�� ƖRj�6�c�LJ%��thm�@��,�4]Z�ć�mS1�Z���79!���G���sѶ|��r�-��Ҝj	��l��5�q��4�c#,�\m�k_�c[��<�x�C�<�Ǧ�v�x���L���B�u�<:Z!��:.*���㳫~{#��y����C�td�Ñ�إ���&�0�(�ec=���R{�r�H�2����a�Q�Il� B�-=�a���x��LɁl�����gBK#c�$<$����vނ�a{�s䈵�^Ø&�A��YGڦ�:��H�)iI�P�Z��1����v��y$���M]�/��clK��A~-�S؀�R&8�K�gJ,�1�Îv�P�\E��\4�U0�!Գw*�r�lH�m�A_�x$���Kx^�ߙ���f��T��I�9�&8۔'k�K{�W��y*� 2���ٲ�Q�wH�<� �x)����4O`�L~S]�F<^�x1�C0M�pX/�|�В5�D%њ�%3�O�<��I�q�͟w��O3�Svx�썱,_d,D�!�"���
� $홆6�@_�o���?�EQ�AZE�
�J ���r���n*�X`Qh�����ծO=�7{�"��T@[��c,��&�h�)���7�C�4"��f�j�h�����A�Y!�	hQ�a���ow�d������_:����K���~�������fS9� ����	��HŤz�^b�f���A�X6�M�i�6n������fx�r8j`W�@�M��w��ӫ0i��}k�E&i���=�_��G켐h�șM1N�晕*�fF�j����?잎���a���ܑ�X���ۧ_^����0$P.�s/���??֛s��6z)a�䦠����:2�z����ʦ�p�+���HgcUm��Z>��R��sA�Z��7:�Zz��9F��,�s��l��9�v9�b^����VVy���6�W~�|G�}˙��u/��Q���Z��²�)�u.��&��9_��������9�8-��J�w�%�ƻ3��x-ΰ�z\���G9�����p���z�a�rs�'JZr���L.GR��$i�q���2m{5u�3Lo}Gˊ�d���\/��9Y9���i�ސR�.�j�sXZF8�^�l�����AK
_�.���s�3d-(�xڷRM��b9̂h� N ��܅�G��C��d��Tt�)v�g���~�c���f-�����?=d��Y��r��JK#*Jx���Ϣ�����������5��$ޢ3�[�a!���ko��B�$!s
�!%P�y����w���kP����@�}����W_������˩�	X]�����G�!Ck�)��w����ׅ3Z|��jc ����r1����~SKa�Qb�O���˴3Z~���$����ĕ��<��h��|�����;�'�`�/>��R����&��s�ϸy{8l�\Fg�"�$̜�QR���'�3�s>�3Zّ'���@� ɸ�}��0 xm�Z�8�:�gU��p��~h	ΏT��d$�i��rV����F"_�j�"(�q�l��n������������FsV�a${%�∢߼���w\|�5��Y-c�$ߍS18������ln��Z�"˨���]ٞf!���lg	�����<��v���T$��� �tP�0��y���tn4A�H wE�0m��}<�gׄ��|���l�'g��q�[2��$�l��m���y��9��4X����O��q�V�KDip��l�����k~����j`�)�6E	�y��Y��x�iT(������K����}�i�ǝ�dr�f,�q$Pɦ5��.�\�u9'�g���N%�zv��	>�VJ;����O���?}|���\�С��\	��\{*��!�GN9��P��
謠�)�CP�.���FC�����t���R��j��9/)z�i��ԩG��I ;�A�%�������EN�+�P����_4>��[�Z�lI}�i-�^*W$�^��IDMz-�DB�{���_�'0ͣ�xh��a�L��S�Ck��\�,".K�fȧ��<\/�{>��$�^��5���Pl�t6ԓ��vG���nv?��g��A��3 �    �2�h��y�;�g�0� <�A�a�oC�����0}Q@��M�)*��N0^4� ��>����K�Y��~����n7w\T�PÉȐy�Ed�֠���;ܼ������*�=�U�Kl�г��LrX��]�	N�%�r/@����q��k�I;\��J��|�v��'}���o[�%C|_��,���淯w<�=)����kl�J�3�`����ې5e_�cp�҃s��*�S	�7�vd�D�<*p+Yc�փ�18r*:-��+1kp9�2���F��{lO�%X�Čp�������3�pL�W�K���������U�����l0+����|�}��/-�^�	=6X,Z@i��c��r�;��-�DA�.��wWn��`	腉�zl=)=*d���)�V�!�&Җ]�:V�M��0�z�&�ڹ�S�7t�M��&��z{S6��8��A`-֔���p��G۔5���SW��%��c���m-�ܖ-j��Fpm�#���%͖�P��7s���`Z]x�kM���ˇ^�ҩ6@�+}0���ȱ���x���A�k���li�rM�Z���d%d�,�9��9��G��x�,�gA23iX�|`��:M޸�E>�u��=jp)�eB0q��/Ocp��m�-!�6���ZԞXXj�����S���G�Ii�r��`2�!��j�`��GRf,`^-e�Ж���1�_
܋@#�iv1\�<p������G4�\A$&��aL��{��;�#���W���fZ�apPḤ��h�%���k.�r^	�ͩ�";�R��FV�[�%����֏�ipi���P�U�~.Ǹ��i�<��ƹ��18���kA�5�a�� ������1~e��W���h�)1����K�4A�=�l�R�b5A>!HR/�5� �%x���	8�=Ѯ)��,!���k*v��L)F���i��Q;���5��!8��_����(�=��1<_�#@MP����M ����54;ˑ���6!H���.����7H�=�Y������2Sf�wfL�y����z����4����P��,�DNA�D30����/�"@)�e���XM 'A� �"�g5!@E�$�	8@��t�0& �%L0�:��OJ�����rі�A�Жm$�g��'��I�r��ł1M��?��(�8�s!ԀH�:�୽U؜���\�+����N?ʽ�:�h����:�8��#��]�q����H�������$`ja�3�Ə���3��=\2��e�������TJ%�ɜ\2IрTǲd�G�M�4(�gkǑ64`�#����a���݃դ��xA�lt��G�'py*� ���~��'��Ǉx��T@#?�\n���PLd��Jd<A�LC�1mY�+����n�9���chք�k%��IC;�� �ϯ�묡�Ô��~4-����MyXm���>D73��I��$�� �]�V
�ʚ�t��.�R)�����hF�&U�x���@"*�҇[*����A�K۩��W�ez��Q����lzR����t4멬��\�%yL�nm��a]J0�Y3��Y�\����4��AJ�q�IX'^�Trc=?�)sq��_%x�'mh��[ٚ�|�y��;�*>�(����~�0���Y�J���z���8��s��S��piǧ^�fqMKK֬b>&�%
n�8ǂ��F�8,yn	BC�Y�m��R؎E� R��9ߒEK~�j��/�'MX������/�}�9%j��� �%}�͋iI�K�؆C�?�!#{���
%�ކ��+�s^TK�BΩ����޽.$i!�[\r.H"ڭ�t*�I�MaG�Us�۰8�"Y�!fS�K5a�%K�<�r��������&$�HH}se~�4���Ef��:�kA��R.o
�ШA9����9����RK���o�����b����6)�R{蒴H5��!�}Sփ5��thک2�lN����o���8?ꅍ X�P�A!a�n=¹q}�?<oj:�w��_~s�����,Iv>n?|�̟�����;��B�ߓ����T߯�Ωѱ~��X��]4������.'a9gWk�]}v�0d���|LH�qm��D�2*g�0%S@ڰ��	fr��Yv9j� �ơk�+�X8��rv��Y�f�Rr��;�XH�B��:p�60V�x	:�P�Y��c�6���҃����Vťl�K�j�f�������l��5mhP�XI�c	�kD4�\5cʵ*D#��i$�̠������?��1d�ڌMB�4Rz�tI�����w��n�_=��?�v8S$W@�ѠIZ>Y�[pt�� �*"'r2�ӵ�/{*زՒěx��0S2s	��(��S�r9܀�T�Y!G��j
)�h<w�nD4E�BkX�4��c
����,�WPL��0�*J�W�&�(��Do��w�S%!� d�ƕ�.F�p���`�(F�����k�k@�Ԗ�{���*��f�Խ�����@琌��:.,G�`��
�c3�DS��	NМ�u�����}	NԜ(9<�a�_�3hNY��/�K_�3j����4Z���L���P�rH���P֜|�!b��8��j���^���8���[r1j��/A�4%����������l
��('w1����Y���E���^�٤�s9��/a��ͦ.r��ܞ-*6'G:.唿��%͆Eϑ�@{���8��C.LҜ���Th�
����`��!{�%9)t�5����@,�Ym�P�.1�eB�"�lZ�xi����֊V( �c�ٱz^MٴBi���վmٴB!��p��c��d��$���Gֵ��ܛ�H���t�j{�d���2ܢ�h6%;U��z�{� V-ߒ�i29N$���.�UzM���,���ީ��C2�{G��M�g�����Qc��o� ~%���!ǖ6��1��㋱4�"�m��t����՝.8Q�Hm�a�H���n���0i�'�9�Zg��=`Sp���L��r�`4�������l5W0X��DS�Ed����<N�G	�$�����I2fm�����O�-nNB+��}��φ.c9-PA��7�Gנ�9҂IvG����U�����ɭ�h�bm��D�vR�6锄˥Xa�1�����bO��h��R�)X\9�h5���p�ׂ�k��Ɩ��}���`{�]R�r�5�s6(l��: #3�7jl)�o|_�jv�ز[����U�t�#S�Ʈ�n-�J���w�[���D��T;7��NZ*Ar�]�Q�����-_����Z�OZ(��c%�]����;/�tև���BY��0�Ý5�Z&��
���VI���I%�������۞5���u�F��Q�F�§ %$�:�<F���֛�F�f�*�i�[�:��)Y�t�/'ڍ��gY���B$6��w� �+h��J�<�5����Р�Q�r��8լj	4jh�>냯�W@ͦ#�d�:*h�\�����G��f�Mr.4�������d|e��Dܢ+??]�58���kQT�������¡l�k��Sp.k �PR���j��E�qz؁F�$��ӞJf�Y>=|-�(�m.⪥�F�&&9г�^1z=5��)ʹ���9��RY���d�)�`!���1>G@�\+Q���S������0��xԾ�u)V󇙾s�f&j
c�����R_��4Y��r��U4j!Z�P�w=Ҏ�8M ɣQW���48�n�18Z����H
�L�Ԃ�1	�}�@��\يW£�Gi��k���A�;�P�w�W�G/�{,�\n�V�'_��}���+᳆��c�	�:�a�X�G=r0Wl o5|�$�D.56�w
�KDw0�?��ә\�5n&��������q�,qZ���s�|?Y�rZ�����]m�<x=�8B&���VWkQ1l,�z��k!��Y���Y�J�����&�k��j`�sjW�둵T�r����kq"ˎ|�Ľ8&�E���$��4��<>���~����27���:��?�� 	���}m�7    ��QӈQ�FiIs"pV� �pλXۛ��7�v�����/�_n���o���B5Y��nJ:�k\x�1)F/'���z�ЀR�hV��u#��1�Vo�(�hJI�h2|)J�)���ܚ��Ӕ���eˁ����2�[F�Լ�hp�����
JT�H:����ۖ/@y�u��2_d���N!�%���Ƌ% �/�1��d�IqHZ6'ʓ0��Ȋ�U3�����߀����k�#GB+
�)�T.���f��4G	��1T�׀�k���%k��3=(��G!Fͦ5z�U�_��Zb�<�����Ⴉ�B�I,\�5��l�E<m�-4�����L���VDr��_
�>q���e^���p�T	���Mz�'<s]������]J��7�����˹1	-3������q?~�یEckO����v?L��j�����%;��Z(PQpڃ��I?����w4
� |�� ���躚q�5�һ�k�h�4� ��oc9=��Ch��B�U�K�#i�ۇ�O�O�����u��,uW��\<�	�S���:4���qkѤ͐-�����2饉.�pJ�m_�ǅz7j�+W���R�vz���Ԙ����K��JKWb!�M�E|�j�AǊ7x���u�ZFP�0��L��=����Jl(�&�.��S�%ucM�$��ϻ���O��]��>Tׅ�*��vBt��!��Ǉ[27�����胭�b�֏�Ed#K,���M.�t*+���L~kC����cp4�e�[4�T�4�=J��*���� w�$�~�ȓ��ʓQ�<��i�ه�I�Of�����A,}�.45�|"_\��o���p�֯v�I����n�j����5�\ ���K`���Ȕ���%���I�^j�[�^8hl"���C��"YH}��v�9aDll������k��o�~��:�b�CQ6W�������$5������ R��|�C��~����a�S��r�o�\5���~�D{�A��d�M���^ 9�u� ��KNl
��������g[,VW�|��w�e/�S���XC-ɏ}w\rGLА���j�+?��"�)������7�����ϙ�E����>��d��X���������s�[9q(���W2k4Y��d�$֔̎ɸ!��z���lr2�S���u �������K��Xw"�y��YCq:�҉�$�QIZ]=�l�UpLf-��&/��0��E[K�j���I��B�XOכ1%�Tb���uG]gv�`�(��U����i�w�IY����sZ�4�M4�y�sZ�9��������_~R��S�G�O:g�����gp�8�t�d|���
5�(#�?E��=���31�M�j[�q�\��%|�Ϋ�8��mt| s?�M�m�DOn_	�t�	�B�5���;�K��-����EkRн��\;��у-����_�]�k5n�wl�EN׍ڍ�m s؄��o���t�������)���%���w�1.r~"i�%��&��VZ�yLc6�5����;J���7�����Ǉ����aYd���v��}��o�������+J{?�񹑝gK_���ƿ���j=�ww��?g��&v��$�D��*�?��ߤ�U?����0��}��K ����8S
�!�?�:�P�I��=������wC�uю9<�v2��#.�������(U�j����q�$szs�ڮ3� a�S!y{�ƶ��{4��kY=a��»�˵P��}z�зr==6=���F�eD�b�����aE�9đ|��ɷ,I��"Jj��K G"%W�ɨ|�e������^��`X���}{�7����	�������o����nG�"m�hd��tİy�����p��������a�HV����&m#ِ�4�=�1�2�ne�|�_3m�G����

�h�g�ANz�������n{(HYj����a�DL�HA�1P�A����FI�g)��̷��j���_��O��A
c�/lѺrp5ps�[�Ž/Ɲt�q(�����Һ��WnGX��ʶaf�j���B�S��j�b$K�=!�}��!��q���׆9�U���a�H�I=d��\��ӽa�`���I���r�I�/�ƗDXH��a�v-UN�V�6�9���r�
X=޳_��NE)H���\�'�!�dE�=t���ڥ,ьY�r�O�`�b'Prg-�~�]�>z=≼_�K��PyY�Q><�o�����$z�L)�䋾��[2��92�b��܎6!AE綠5��3��$((UHbĢ&���1���.���s$=Fc�_�P���+p&|#�J2�互�v��@�Ic|�<#P
�dՓ��j�����0E�P�i#���_�>� ��v&sCmR����	���`j!�9��y�σ,ȵ�����iGE*u�9���j�MP4��r�9�ǡ6�����\Ŝ����Q�F�`�$+^w�r�!e���F�$ojC�9�
�����1�Z��7�����f��)#���˜��%=,F�~����Ց����"�$_%�z��	�]�qy��	���i!�s��F���1u��0i���̟�]���1��J���Z���jRD��x�n���t���c�RX�1:K�jڂ�Zh���X!vِ(���nM>i&�Y���^C{q$Ni-4h�R��և�:L[�:J ��XO�����JF �+Ek�̨�'�g�G�E.n��%+�����_n�������W�K5�4��|/�͵TSB�8�(�1�W7��D�]Q8�"�$���{4����<B)�e"�z�)$�$#}�Ԉ�k�(�f0��|.:ߊ5��A�����l@�/��J͘Z�}�2����j���C)=�Mm9ـBK7HP������*����d��l�+_�G8����>��μ&i��o/�mUo�f7�B�a���ܮ�ζ��FRН��x�~P4��3�B��AM#��I����^Is"�\U2&hI֚��h��q�����'�ĕ4I�x��1�������rl8i�h�QK�Wl�6�*>�5�Vj�F4N� G���@X�4��4R�:�Z����lp'%h9i8��}	#�n�Nӣh!�;K�LI9>�_�O|Qq�2�Z77z-�|���<�Q*i�Zb�Q'���Ƞ��������?��Y�%o4\2����#��A-i�up6H�����i�h��4z�T�����p~-�o*(.J�;�)����.YH3�PSJ|�u���YL9�f!�y����k���n�2l�T��i#W��T�d�������n���9[6� ���1�_f���ͷ����p������i?��5V��N��-�����`�s3�F�dx"!(+7��/��c(�Iж���Џ�ϓ=����ɚЗ��_t�k+1��b�%��2���c ��2���=�Y���=N&mi�B���\_W+�A��9	2�C�:�AT��@�T��&H���2�|����Y�y�`�7ik	�@���.���L�  �p='�4��6N �� ���'��ƗC�l\*�ȗ�z���qdqa����՛�կq*��;�pR���«	��񍯍UVDM �k�l�H_J6��j��	�(���F��D�8��,4rxʉ�j�	��Mx\��N�s�Lgh�����7�{Z�!7Q�4��&̑�Ȟ#��b�%.X�L��R����u!7Q�QK)C'�?����k)� �BtP<̥��4"2F-� ��=�����e����b:�A���vd���)�z��&�񥌁��I.���̒S$(��,���X����q��i�˹�*N�RV
5�.Z�5M���PiY?�j9�6����T8K�4v`�Ȓ?Z�'��GOe(�=+�8n�ďf��ߟw��1%��� ��r��pE�^Ly=p=��0D��d3~��r��]=�l��d����Ϙ��f�����|��Ǐ�<�Sl��E��TN3R̵�U��@Q�-��8i�L��H*��)�N��n{ �  �i�t����������n�YI̧�>��jy��D�^�sc�XyS�݃���9�qȢ[V�i~�"�d��j�6s�Ժ	I�N`s�F�K���&$7��J����X3!y�X+1dޚR�s�Pym$W��i�<*�V�������C��3�4���&n�s6��y	�7�AQp�n�}�`wũ�H����rE����/3�I�:i˕t\��gE�k_1�hC1��)�.�+�4z�a��P@dߛ[�j�(������l+�S�տO�]B�O��N�hMj�ii}��#Iz=Q��f$�[ʃ�SB�ɹ&����K��ң:�m�Unl�;���E3d� �ݲ#�7�+f̼4�{)TR/0%q�BT_/V����]@��0��hJ������0�p�N���j��9�^�fV�d`זf'��C�BI�X�T2�5�s������q*�'�V�?���;M@-�+4<��p��� >*x����P[@��O^\&gC퓼>+x�j�ښͷ�/�<��Z��ą�\����H������ɫL�\�����b=tq����i�v�bx�!۴A��E��|{x|8���GUc w�H��/ f���������7�v?�{��@�;��ob������7�|�}����*0�pQ�ɮl A�%��=�~����O��3�Jc ��4�UP���Ǐ�Ô��Y#�/��k�DV�0F� pL����=�(���^�����]���2	��zyrp@�|�X�'���?HR���,e�,X,W���n���y �2���&+�� 7����-u_�A��,qh	m������̹TE-� ��Ʃ�C�������3�9Z�����J����c��T���2Z���@ �X'o������yBS S:pҚ�}����I�c	G��x�Tۨ�u�/w�w7��qd�H��FS��~�v{�i{��Ђ1Z���8���߼���h�R�)�Fd}�����i��KE-�\��]-Lgq�������y��2-�(Pۙ�ͻ�ǿ}�����\���o��Ԯ�q�������?������q5\Z�P+ȓY��oO7�{�<��׭����T.�������^�N8y j�o�~���BA�WB�Rm�B"���ۿ���v��կ�?�4�%      �     x�e��n� E���L�&k�/�*J��)������DD�}�����֊���D����rL��ߐT��k)���_Ȁl��*#��i�ˌ��R�d�X����w�[���%�U��M�T	�{�8�q�;�8Ƽ��5[��m�q%f��n^Tu���+��1�PDOV!��af/���e��%�d���U��O�0Ϟhݣ��ẖ$0�=Z���E�����`�"�:P}�i��j�t���]�؏�[_ ��T��      �   �  x���ݎ�@���S�Jd{�y�J#6�f���lw߾��%aC��AJ�|���f���C����e ���˾,���hz�j�&W2G�'!�� ʊ�}��ʨYq<��s�h�D^%��ą����-x~��q������W�|q�˦������My`VYF[J��;�賚醏w|]��:�i�䆙�#_T}h�%���bIQ��Ż�B}��P
H�H�3IL���K8e��(uj��yK��TMs���Q�L�@��Q]�/���Z��D6�8S4��g(���d���=�("� �x�����*�Eߴ]~hۦ���u���ܕ�crQ�4�j�3�5	�r&�;���2`'��'
aB��f�|�,���3�pa�������M�c-��a�6tg��nZ�"�ua�?�Y�C沞��'��s H%�	�:Ϗ(�ʣb������%B������w�pZ�j�4ji���^~�C�?��.���R�nj��<�N����i�I.�����Fj�0w�GN�̒^"�B�!X2�͉)nϋ����s�"t�0'����^�"��A�A��-p�#�I
�aBޜ;��JP�����<"�#�W�ͥ���Ǳ0��8!���
�K?��%(�^�h^�$�#�E���Ct\���~�����+h      �   p  x����n�0�u��W�~�ܥYTM�j�D0��c0�����7��<E�G:G��*.�V����Y��K��lq�/��aTu2�3�֣�E���L��q�k܆�g#�rK��	���\Q��!%�A�'�&l�o��M��Puu����܆'l�����d��(T5�+6�i����1�/��\������x�SW�c����ro.*q��X����1%4���m��Y(�|M��f�sy^�䄮t�ѳ����?0ނ���#r<lx���q]�	`�=�����,C=��A��)��&B�_���G0<@!;�2���ެg�T�Uk��QKG�����<"M~��l�v;�����u����l6?.8�      �   ;  x��Q]O�0}�~��L�F�Д��g|41�v�*�m��_oK��Gn�=�~<�ŸT�2�uGo뢪���\���^=d�����q�۸�n�£Q�=�HH�#�f��@ f�>�?D��/������m�.ڎ�c�^E�d�Gn�Q�f��?O�7��G@%v(��mT�V�s��נz-�����|[E�s��$1XmѕM��B%��o�ܣ��F�?QyR�?��D�t(�����6����pj
�����@nu�k駱�xQnk�:Y��DM�G$�&�/����ˈ=����	����yVv��,��/�0� JH��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �     x�E��n�0����	h�_s�J�BTB��K/K0I�m���kh���hfg9v��t�h. �,Ď�#Y A��7������b���9��~���8 �È��\o��@,��ݝ�˫����i�J#�U��cf����$��H�� o>���d�
��y���X���m���3�"S���G��4���e�,�j�	�t>i")���N���0�!�PQ�Y^�����wR���Ά�>�i����/X���.X�k�RM�c��F�G�`_s���r^�      �   }   x�]̱�P���)xTWe3�0�ťj��MJ���/���.?O*PV�eՖ��9�h���Й��<r��>�9m!�q��򣁨�z��[�Hh���󤅞��8�0�b���'�9��*����0�      �      x������ � �      �      x������ � �      �   -  x��V�n�6}^��&�{�M��5�6Ej q�YI�%Qc�Txٵ����K/_�3���v�p�H"9�9s��O��o���vg�IǸf��9l!2���+����Y7S%�B�Κ�򶕺f��:�Z���`�dy�N��F�g��,[��;�\hй�^�>�������c�=�`�K��b��;��K�`���-Ǯ�
r�d���Úe�^��dE௅c���>��nF�j���j��'��7p��߹`�!(QU�C"ƞy�� U	zv%ሩF3nvQ	�,�Y��:+�'KPl/�H�0'�N	�z���l+F�{�L�G������x��إ�O�ą�<�IF��ie���'���v=e~�>,{v+3�|�� �,����;�	ˎW�=�+�����ɔGY�+b����Kw`2��e)[�]b���,�e�d��T��$]�Q�m���ZG���xzˀKci6�VA1=��P1y�:!�i�R@Hk!��{A����?�\
\�ڄ~z8�+�Ӄ�(c�u�h1�O����Cʷ����,G�B�E�ؖ"X��w�7YI-Xn I�L(#^FO���Y�
�Q�Mh��Z�K���p��u��Y%vE�d��b-,A��
��R�nŌ�9lA4e�%$���B�S�̆jЮ%���� 1�+EՄ���P}cM�@>��$*�/��aD7�pˠWD>�q=����bk�_?�h�MF�n|��{
x�⫋��2�r���U���DAJ��}�[nO�����Ki	'���8T��>F� ��E���Q�Xш2�!��h�H��{��EE�N�?M�߸�������vf��#�H�[W�HK���N(� �ܞ%Qi��1'k-���A'�GH"�K�Ҩ���
�FE;�G���?�X��V�K�Oo�E��W�v1y�a��������kI��k��5EXT��뿈�8ݳ�!�Y'�skx��xi:j�(G�3�_Ah�A}������:	%6�[Y�&}*�;[�jer�����JEuE š�����.T(�$U(,`:����7�����5V�H�J:1h��<�֚��-�3R�!�d�?p �P��-Pp�ݹ ��d�rd��ڬ)��;��D�ƥ�x:Y�h���NHs�#Dt9�i�|�Ȇ����G~Hg���o�
�D�?]����Ϲ�v����=���m��31� C�&� @l0k\Cӎ�bT:�l�4Հ�f�:3�	�53jI�K%}�%FАQ��N7�Z�Ey�엻XQ�pLG�m�g�B���D����e����u��_���?f��ի���������9;G_����b�̀IF.mxzr����i)
�eCU KXn�YV@�a�Y\%F����vjWi#8|�Y�7������ndTd�|��=��I����J\�k	{�مD�Ԓ��H�&#@%j�PI=���P�����u|�FSUu�~���r��4�1q$����'�m磛d��WOyG�ؿn̂�ɓq	�w����7�c��An*s!��4�~$nER}�T�Qk�~X�(��.aG-�^5Hp�9�ƕ������Z��      �      x��iw�H�(�Y�+rXg�RDs�U���Kuy���]�gF����6� �2�_�s�{����K^l�`!E��D���$�@.������t�����>�&A��`����ϓ'?gy�ėO���z���?�DA���#y��#(:y��T�X��Q\<n��|�?ztfy��h��Ɠ`|�,��j��fq8�y��Y_*��e??�u�~���L� ̡�E
��(��~�I:	Җz��4�q��q��؟�a�/a����Q�������N����?V����t2M��Jx�ϡ��8&ʟ^Nl��Au[�)�� B/ ���1�_9σ_�c ryK�&X�$�" .���F�i�`�����}��)��R/cg��0L�Gi�)L,�$I�<��x��� �qD C
��� ���i��#���UJS�����An_e	g=C3��,c?
����� j�nu���nw�����;���?u�N`��~Ts����oP���#e�/|$���z�\�?�t-�kHxkH������ ��5��:��5���?A�4̆�K�����H6��� � r��� �6�մ�Կ����'?��A�Q�X��
��ֈ�R�&Oa^=c���S��`0�({%��*�pZ��!����%\D�F�����z:���/��	�,|��a6��L�:���IB�jd�XL6c�40� �}��,��0��5`����H� ��>����FA���,N*��
h�N����+�8	�	�[3k�w�FA<o�Zp��0ˠYU& i��gjq�Y������kw2�GI�x������Yz��v��N��|��??B ^v�;W5
��:��'P���	��}����N3�����G;�`�U8�H�
��f7���Os�=	�`�_��/~���e���jfy��E�f�)�`��s���o�m�d@���4�S���xh�<�0�X���e&��$��d��Y�\i�g޳��)�+���Sm^�du5@jG!���ej ̛pN$pDDI�����O�2�����9��L��uo��Hf�2I����q�-mp4�4� v���*>ۊ�m� �iS��8�c��E�Y�<�����?c�M�O�z��W����(�t<�
s�I#��p ��x��Y����}n=*ӊ^D���	�"��r�j��ZΊr��:����&��Q�:����s��'�P�*Z!VF�M3�U|�|CF��5D�5���`'H
�t����3�����_|e@���QY��l�*]�m�0{�Z-ef�&���Iw2���a��� �,��y��ay��d���kz.�B\�2��Q�iz�F�'	�7�֧� �3Xf���K0#�[e�Sy?�s`�ԋ4M�Zt�b��Y4#Lqv�i <[�L�"��������2�v�tA�l�\�����{e�7�������t���6�4��V�N�8��Y<n���ϗ)��� �#=N/Ϸ���'?;?��{�������#���f�a��cG<���;,���i���p�c`��I��/Z����|�O���7e:�	����{;����@�%�	������1,�cu�|��g��5���� ���*I����@����Ң�p���T>��Ns ��K�t�c�g9�� ����g� ,Og��YN@�坣�Y�w�����;�zxq /��0�>��8�i@��P^ 5���n�S��!����^��S��D�>�v���E��\�3�#�C|0���=<�H`��4L�ٰ�` =��y��l[	`n,@�,��#��34Ё%o���ի���~�����8�~�w��j���x"Ģ	�6Ur�W��v��t��� XVh#������֞%���>S�x
�]�p��+��t@��qn}`��x�Ŋ��}��Q�����
۳rO�k[�HjI�FCGS�cL}�>��	�8�;zv��X�H$H�S�81b	��{��we<0�,�>	��B8���MN�Џ�$�4l�/��aA�i�g���?V��Kpc=����(�6������*I�0�<W ��� ��?�=��<���|�Os� �pc�2*�O�y�$����II�E� �ݐO��\XOA:H�B�5���	Oz�x�G8,-B�G�~�eA�܁��W �>�5X��<�y�6�t�x��Lw��A���E�& 1���-"1�Ĺ��m�1���J
��[9�c��ٙ#��?l
u P�_/�w�dg���5@���2�s������KP6HB��/�Qv84ۘ#��5;5r%|`���,���W����0$b��˺ ���@�	�����G�P���U��� < ����\����~mQ����W%������ ?B�I5`J5qn>#iW*}F^��l�Q�g��U�dF4$i����z1����gCq&at$�G��gR^���~�Y�(~�} -j<ѝ��_<ahv�K���`c����Г�s�� �v��&���̵
t�#�`Ӆ�e�l��N;m���zmo�����~�;h{�m���]b�.��ij%2�x�s8�TY:x�x4��z4�+�m�9����#��w��ۚėP�7u��:�����?7<�q��z���/�"}[�_���ާ��6�%qSf��F8
�ic�؅' ��wK X�]���&2]�w�x��Il,qq(�>�ЫY2��j��'"n ����)%�-N�:��&��>Q߶�
��J�{���KiTy�Q}B�`J�!�r��v~�	��0 N��N�47B����5J����D�� ���@5#G;%�k�ê,��F�ۡ. f~���ݠ�Li� �D�"�J{M�fS��l7�p���l9{N�M����j��)���ꚝ�����K�{�{�~��7��}H���7�����K��v1��X\�o�@&�0��v�����Ni:y�S��(���k�¼�q?����z�B-N?��V�&F�'�}���VQi7";��ERƽ,R�QB�l�l���4A�|_�d`J~����B�H��t%�|��ʤ��i}�꺜�CG��2�a��.��#�fH�H���q�U,:���DkS�i�xg5�@S&����5EQ�-�)S�顖�Ѱ�rw������~��TXs���N�k����|5U��j��9ǎ挷��0��nt$*��FY�|K�_�}���T鸢�z�Q
!����~�S��&j��Yg�A|	|x�K��� ��8��ݔ��2
ݟ�g��$�~��87��<R�4�<7�8��/$���\� "���g�x'�r��#��
,�P�*����i��T�p�t�79�R�J�/�E㿤H#�.�(�v��<a���Kv�J6uɦ�|z�['m�7�����k��a�RM~�l��8�+r/hA�]AUFXy��A���P�B��do�-Z /M�j��F�T�&s�؆����B�d������ls�T!%e>�5���[^����t�Ğv��Lϳ�%���d��d~���h���Dr�U3&Qb8WͰ��wF.V�Jc�4IJ����� ���N{����p����m��04z�$���$ϓ�1��\!��u����`��@g����"A��Ry2�_�<O�3���ϰ�4}uA+<a8
��S~`��h��ˇߧÉ?D�q�O�����ZO�?`Oɭ��O�[��ݭ�4����[�i���1��H�w'��.�}�۾��:��S��z��ZO{߯'�5*���$�kCݿ��n���[����6�-Ҏ�C�	+��w��gY�ے�b�h7h��(����j�&�rAYV>�bd<���.vZ��Ȗc��/�p�G�.�|�xN�q�%2����)��S�ɶ+FYK�%0�Ch�p%~N&��4
c/�P�O`�S?�6v����6�m�����, �f��    Y��
%�Œ��%�%�J���	��f�P��ks��D�)Ֆ8pJ̸�BS���L������%SR�񽄳��ګ�U�KLx��iG�x'�i�i5]hg��I���HQDW�r��^�5�~�.:�ɬ�)R��u�@�k��4N��(@��.Ykh�2�zl�$���U61��ȥ"�Ѕ)�$�"�-�
����斨�B"ƶ�+�vJ��7��a�y�H)>�3��y�FyP�lFOj�5ʃ�;��w�h�A��OyЧ<�S�)��S�D9��~^��2xw��mJ����5�۩P��b�V_�2W��*�W[��L��*�][���jKU6m�
��-U�������U�ݤ��[�B�wŲ��Kϫ�锄�΢�ˍ߹6�x~3D,�i�Z�8�Q�,0�J�q7F�aV����MI�qIàM���$��JY�LmC1s�"ҬcXM�����y��r��wU�/���Q���N(�5�Q� �)#�0)c��B��X�sfƲ��ey��P#Qc�����5׍M��\�h�f�b�r� sԜ͕��>��������Jv��q?�P��wY{^Y��X�52���~�"Yy]�p"bN��p���RF͵�_G[�(^Ah��Ĵ��~ɣG"��*a_��z�N\h�������d��}0��Nd�^�]2�����M��?�T�v�{�H�kd�P�`�Hh�e�s�$���/ѓ�|ԭ{�s���:�G�cTC{�UT�f�g8*�I	�V.��5�L}L��kv@Q����~(}���n_'i���Vؘ\�_���i�M#چq����)��[�at$?+{�`���DuI
NЩ�cU���`�HF�y�ܡ���(|�Uw�g���i�����M�i$��%ZL'�}�?1pKf��s�=�1&"� 3t,ŝ�,[ת�Y2�T��t�eG�����~*
Y�Â�Px��B�
��5�yY�gf^�X6�����_��:�Y�_������*#�����Yg�ۙ��z��'&R���7�;��i��ߌ	EZy�eO�@���x����"�A���{��=�� ����#�so5�KM-:��^w��y����E&��@��k�Uu��'��af�ref�=����@�o�݀�k�%ϫ믝�`�n�ݭ����O:�w�����r��!z���Ѭ����b�1
�w�h��v�S�'S�O;�=p|��(��xԴ.��b<L��),�BM.2�Z>:���Ľ�w\����|
�i�R"�޳?�0�v\���L�;�%�OF=�5ZXgN��y	�@>�@"1�8���l8�:
2k��96ۏR�`�_�0ΰ����dQ�cdP44^���8N�r�XU�RAJ�$�g
�hQt ��d2�������֏��W�5^�y�cXL���o�T�__c�8��8l?�tUӹ~0���yƹ�#&�C=|�b?:��z�<�x����bٵS���}�����@��Ǫ���ov�MX�f��ֱ�U�}G�r���*z��i,�0�6 x;ۡ���U�@&ؼ���} A�����'�ݕ�U<��t�[u��NB�[(��j������N�VP�'շ�mˬ�����?��a_ۃI��ffE�L�ǉ"՝b|�>��S@zd�"J�
�b/�(PT�#EqD[Y�ۖP,� �4J���2���KM>��]9���mc-�A>Mc��!�5������ �8a�\�+�	<�tY\���W�PG�u�|	J��{��tp�<4)Z�����t��^5�g�/K�_.(+`+H�����q��u�Q��3D�˸�0��7�����!�j�G/�ӽiu�澩�r��8ݷ��{��σ�T���}]錥�ҁboA��N'����^�>�R�i��tu*ר+�oS�u�??vă�=j�h�����Dѽ�|x��#O 0#'O�oqH�^�3���G�b���29p�c�O�����p����l�q>s������n��D2��������]�}'8��B�i&�=��7X���й ,�K8���Q	�d�gA^����X/>C\�,�s�&��
�q/�g؋<��uI���e�A�%���H���AȽ�z�� n�(�<jn�,�"H��M�����ڠ���#HG�M�.���7h���N�{��׳����1k'���`�
��:h@ʟUVeǒ��1�h�2y�k��&�M� JC��[zk��s�_�=�Зt
C�t:v_3���"J�40h���x�XR0�}�Ӯ��&1��+Vgng-�!D[C��*b���>aZ��v9.tiX���.u�S�6�1.I��Y�G�2��猛�y��FSgۥ*Y���U_R�Q������q�5m{�L�H�q����OP�5��=-����u��[������\����k�Hd6��`Fod��@m��L�"ܵ۷�j��iŕ|ǵ��_�/���@~��PX�:QY�	�(t�E�F#�R=�!���-틡�eGǀ�=�t�a�m(����hs�B��u.Ř�L�n���X����B9��,����Ҡ(�NI�8F�lt�&��.�2�vSR_�t�ɤ����+ҕ�]�p�U0Di<��%̺Q 1V�+�?�I����i����ګ:O��4�!p�J��~M%~:��q�R�?�x��=�V��c�k���'��*�$��G����r�I�x����7ׄ�X�L������K��<E΃Om7�@[i3�>acsN,�Xy�hi�'��Pm#��vvG��5:��ٔ�Q��W�9v��G=��+;�GųRF �N��+9 J�
��7vA�Q�:���t�0�{�/��n�S8��V�i�78Ѱ˾;r�8�xL%�d�W'�0��Ѩ]�*��˱u��oy�6�~��v�߫K��	(�E���pf�D����9ƹ�-��G<�`BRG�v��]���	�X R���T�9�i�(YrH�����Lp�Cs���6��B��֔@�sjQD.��bi�_f�d�tl����I\��N�dߥ3���ޱ��T
s�ҙ����I�Ü��yaW~������z��Ջ_����[� ��w�:��4`K����;G�誷(�U��y�%���-c��!�ڽ����N��YM�q�*i$��nwo�=��B��K l���:�s�p�~M7�9U����󐲛��L���{x7��/����<+����
�K��֋��`R�iNt�\�k�_+"D��PA���zMA��/���5��^�іQ��X�c�~�ŷ��,�~V{�|�ڸ�y�_�l�3kM��d>�����A2o�u�íW�`�}��U�>���c�thq�f���ס���:��M��v?���@K�P��xg.ο�]U��΁79ׅu!��˒AH������3�lH;�N�
�F35N��ŌCSEc��EkY�/�晍��=Ӣ0z�o�6i(�ά�а���A�N�;w83��MR�����W�8n���[6�D/�ӝ.P�0�w�l��_AB@��Y)�QT�ڈ�\�O'���swKZ��N�:�Da�1�|2�g8�&zI��-�/B
���
06�9)�����w3.5O驁v��;̆��&���sd?��6&�Q3���	�)A	�[w���&�NW8�h�vy}�iؽ�3�%{�5'��|6��|�@��'�np`�7p��S|���((Y_2L�9��wzn�L�o��6j�i#l�r�݌qY$q���y�g�M�)�q��7t�t��ik,[��Bu�}.h����ItnpM��� ��5�M�A+nv�ݧ���{���~��x�n�"�ȶ52�ݮ���u�|���8�<pז�Ǧ�8��=4��?�(�3����o�9Sz�˜��e�D1���s��n5f�x���_��6�I���7p�Ì&r�V�y>O�v5
s���U��Z�&n�-����p���q761�]x�k>p��m�ԑ��k1EaS,S�(��;&4��Ct��>&Ѧ����yҭ�8i6�Kd��Q��X&��w?�e>Laۨ�FO�    Zi�[$�t�U�v�ͩ�xz�(Z�8�4Ⱥk����������F@ь��CS� �-�Q�u��㠱	K�.:y*f���n��Rm�f�8Đ0��.c��w�s,!�O��=b���xR���C�y�t��(������:����ھ�҆��`�t��ۅlokc���5�sĉ��G��UD���,AOb�Z���p��q�Ǚ�`��ʶ��ߏNv�k��f����v{�h�nVr�J���ɒ���j<��m�Z���Q��L�~��L��M�q}p�"*&��@M�(�)9�N�⾳FX��)�e�/Јǔb��7T�P�.�M91(���%��\3�Hcm
���- ��1T�\V�P����ib�h�L�-KƗ����EDX�KC�K`ET���P�8��X��Ӧ�f��Ny���y^u�2��'S�{����O^�~����gЉHųU��1�mj�_��W���G����x�H�*|��}c
��j��8��㮢FF�pB��W�Ċ^B�o��-&�l'#_5Φ��K�{�Y�(��ty�ɚz<�rۆ��)V��eEDuR�	g�á�A�>cJ&�F}��y�ɸ�W�hp��ӎSX�� 	aRf���~������Mf3��1v�j��ԫ番���S���(j�c�b�f�/l'v��-�M���0�!�a�C��"0�R��pK{��X/c�S_�4ē)s��(�x�G�Plbp)��q1|9��Q�q���'B����U��p�R��I����c�X҈�wO��ʦEA0��(	�,6��E���_<R�x������_�x�`r�'������7�TƉ��$��8�2CLӖ�f���������)S�xگ�Y���{���6$��{�)�0ԭ壑�C�|�颀�7�ㄠ�A#85�Ɋ�Y2ŜE� f�2bw�Q��1 n z��������瓯//�W_�3�@1b��)>���<�aR�V��i�0�5�^%rΥ��L#�̝����pS(��	jd΀f��m�\ ��
�\�y�|�n�n�z$��f��Tg���=�v{���!E�Y8��kt+U�c� ��jQ^�R�(-�N�}͆���`0e��ʹ��7�������8���oTr��S�f+����'���ɳ�٨�ɥ��>b�y�
֋;���i�Y����+��E�g^z��j�KG �ݖ��*��8�dEᴋpļҝ)U�u��_JH�����ęx�Aw(U E0��y�.��B<���S��5^�x�������߿��Kz���lE����_޾�^�}���N>�|��nX��ະ.S���ۑUxO~����]��ޡ��T�������]2X������ �6ac�k�����w���o��5C��ⷍ}I���XYsB}�f�qB}hI�j�/��순u�㱯������Æ���S<��S�ܪvOէjVk�V"ȕ��a�?�(����P�j3Ā�T[D����^���V+V������"��%�S�QtN5�CZ)�?ㇿ��-Yq��ײJ�l19lKZ�^���C��Z�:O�ɦf�j�ar��G '��!&ѓ��Ќ��x�ϨKJ|�y���/�&�'j
=�A�M������S.Ck�T��)i�o)�����s�)���+q9}	;�2` ���EÚ��Q���>�P��c�7<7Y�u#{N#����SAh��@JX]���N;�/ ��+dƆoM�������Ė����sw�1��l�f8�YW�mU��*4�0Z�i���\p*"�F$7~i�z�L����V�v_�Ѫ{�1�d�eڿ�n����\�rj�!y��!�;��؄��;\�����%�+f�_n��$)t��/����%ϲ�����A;��/oZzZ3�*�3�����%2��A4���u�����:�'q��9�Ld0m�jFiͰ�ի ��gAP�$.�8!�[��u�!!��#����#4rO�H���C��vuOw���js�`p��Pq����N�UW����k^�I���vFv\��k���yѨ�ق� ��	���c�X(�6�Q7��[���I�M��H�>c���N�Vс�
�0�۬0�C���ީ
��:U��ldw�6k�)*rUX.N(�G��FY���+5���-�P�R�rSXG����S��ʨO�&�4 iPHI��2S�=�g�o:�@Sz�>����ݏ}�^5E>E�Ë3��͓=@WO�;O�Tx��y�������ާO���݆/kp�)������blC*�_.��t�]��nMs X�d��뺦�.�<��6m�T�<��M�8�~��U,K#�[�O4��]��S��FJA�4�O��S���� TNE���ȁ�C��uMU�� "";H��T���dm�'��&6�E��%+]��	<ۀ�t�x{���'t�l7��nx�N7HzbvLp�������
��	-�S|J�J��ۤ�f�}��~o5�BHh��q
o��8u���H�d�on�ʉ9�>< <��l}ȇ[%Y!�v�uf�x��׍.p|	}}���Mp�S$(}ٹ����<���؁>��63��6M�&���(d��>�Ν���]��n�-1����<�	|�	.����98��j�<��;I����n�4����9r]��R�m��Tׇ��ᱝu����������N��x�&��u[��v:ݽ������'u��������ޡ����;�}�;l�����t`�L����Q���Q�5ZG{G��N_u�Z����v��h��l~��=� �����g�$�(��	"��b��d�����b�L/�1x�p�}�]D���(�_� [-1$��x�"��O]&��v�wh{ X컏��G� ����\6���l�(5�������t�2�Nȝ:` O�m`�A2�o���o+ ~�2ύ���e�l�� "��7��d����x���3^9�eBEv�-P����z�K00ə����r�Qx�b�^�D\��^"ۋ�C\��2��(��@��Ml��i��o�vze\�@�!&
G-!'D*/�j���!����|F�/��5p<\F�3	'�1��Q�����sh�d����[Y9�Kt21&-�($��4��]7����ۖػΗ��!"�^Nm�&�v�%�$� ~�y1,淔B$�H!��0��H� M@Ns>Z���,���m ��@@��_1-�WO����j��6��B�� ?.��>���y��́����|:�a�?��eS���˨�A�	��.���,��|�s*���l�Yp�!�A�+qhV#�I���@a �͖P�(�j�6��F�-��)�MC6�r�M�+�)���tX��4(r���t�l�p���dQ�"m��5�a�!N͗�쳅���� ����T!�
�F�	��\�e�Qy�]L�.D[%3�q�)�H�d ���U�n�*�;`�I4(��+,�J�,~�����V@3d��c����d�?���]��r�#�Ir�g
�o�9�'#"Ͽe0#�@K/@v�Ѹ0����K�^>�U�L� л�l9B�d��z�9$�ٴ2�'���?�dK�++���>.kM`�M�j���Yap���$BՄ�}^��w܏|��w�^%l�L'�:��h�E�Q����Pk�;n �ɿ�"�J@��%�zEP�r�!�n�S���O�^�үS���h0���5Ⱦ�8�#��B^{D�P?}����/-�&l|�y�������*��N�u�ߔ���>�Q����=x�W��}҇'���,fq��l���n=K&3���� ͤ�\�7ݵ�|�qm��뫓۴�F�nu���Miϳ�SwH���󕯎D���t�t	�BN��}���]c6To(V�f��H�[2/�Ut����I���B[l�}I���vZE+���s{��}��yF;�A7؎ŎcU�O�T�U4�r�֘us�N�f�+��%{i�+d�H^����Ŭ]b|��̾1W@>0p����[Ad�I�̷��C�5=�f��c�,WX�vo    
x��������YAl�,�>3���QN�?]�+���9��`�c-S���c��U�@�<�[�x���;�/@(����s�{/^��u	(Ȳ�CYL,^���4P/Z��u
����/��(��ʫ!\5L�`b�^~�NZX�x�0D���K���
V��A6"iw2MQU�J� �J�
@H#�2"����Ϩ���Y�� ���<�y��e�3��Ѵö�T�
r�ĬAi�~hJ����#���l�k�OJMRn�	^2�(���$4>휞8�?�ÄH�6��Ɓۧ�ڍ��Y q1��&� ����B@�f��N�A`�0�zcfC�^�GKJ���0�FR�ΐ���I�(R�#�M&G9E:QW~�#i�0 �Nu��\����Km@S�z�f��9���@̗W���O��gI�'���s��.. �B�8�����d�4rB���@� �y�~��{�k�o ��T�ʔ̙T��U���esʎ�	,�}�l�VI���V:[�eVV%���ʁڧ�D<$��CK�_Rd���-�o�2-�b!����ڸ
Sۘ�F�CX��d�jM�������5O�pO~��:�ӎ��z���=�������;��IS�B��	�O��Y� ��Z,���s�H	���� Z�Lݶ\I!�w�j�xB��m7���N��;ǈ�f���9Q�R�躂�m�{�휤h���~ �R�J�Iw�8F�=V�{N���1�Q��$�AoT3�@��L3YaW3RFR2!a��1N��B�s����>���`�����P���	q[��G;-_��=��7�k�T㗃*��I���<�%����+j/�w��|�P�{�H��d%,QR�[zT�Ǖ��ǎ6����9��[��W��P&]d�"`rOsxIƼ� s�x�9�������a��
��e����b��O��-�s�'��]�۱�w�,�Z�}WdAlati����D�w�;�+�ee5P�.���(<&
���u�>�C:���>}�೥-�l���^�#���̿Zi=7s'0�})�W�|��m倃N�,Gk8U�n�P � b�}��-�E{:�A�
+"!ِ��i��$�i'��WK;:�[tDr�R�zFC�P���MҌr��'EC?�t�qj�r8��A�f�����%=���փ��(3��X�Vds�J���syw���hz���N4��ktJfU�q�a��ֆ8������H�v���5��j2������ʍy�%=_�U��ׄ�X�Z��#�1��o����֌������e��҈;m4�{��IZq���K��i�hP�A�W$�
�i 5v�87�t�r�Aƈ�^y���=�E���m����YBw�W�l`m�L�f3�q¬�4\�<(P�Z��nK�&A"�ࣾL����Lgj[����y����
�` L���X����&�,�(#������e���<]o���T�(`_]�b.�'�})��wb6�=O��>T�&���|�&n�I��|�Nq�3�a-aH�2]gx����\�P��zM�ֳQ8Qo�aSE'[�U��nHSD4��>�ѤP�:9FA��������`�Am�����d���*/����M�oDα��E�[�����O��2���ڴ>4qsގГ��dv��\S��� ٱ��zq���UFgb�.ͪ[�'����������#������\��JX�u�C��U�����x�>\������8n�C]xC���0�Y�UV͘h��-\�l�����ɰ���װ�Λ�J^�����s�ʌ�s>{��7��[����מ
��H<�5'ӎ?x�$2�������X�!��OZ|/@-�ӕ�u�p��|�q�+`9(ڟv8L\�V�z�q$����̘�Ć�g��pমElO��fD�:����B ѵR���|�T�?��jBWsX��s�<��8�o)�1xݥ����==x�܉��Vh �a��T���V��Z��k��U{o�����_�R��5��V�Ûm����6��ͶHF7$Ժ�&�MS`З=�	.�������U�W}�m���]� �v��n�M�ᐮ�g��h������F������q�<n�,�����Qj��v��b�ʖ.݊�S�[���'��lu�/��h�~�/t�&�6<:m�Ý��R��R������Rɒ�[t�\t�Ӛ�euL)v_���-��a*���K=�9o�m�U���-�!
��,���K\��
�"G�	�v���<3�"s7Dk�|�r� RZ"�DA`��W�5mA�')�yӂ���+T�U :]R)l�I�`�f)�u��<3`�=$�40�/6H�ò���O����	Z�k��GS��� ����~����S��qX���g�e�W�S�����xB�I%��_Fd��E�L����c�s�d�q}����d21�Ư��Ta<��C�Q�&��`b���Y��{�s�\�x-�z�a���"v����B������H��ed]vI@�]���e�9�u�e�	]v%�<��|�D�]��od���Wf���ʎ���|WX�ծ���3�妾���--�F���0ͦ�*X�Cl
���cvW���d
�
�����d��Hy�<}|����E�g�אּ�K��>Ȧ�*��m��:��8�oA�=Y;��}ZT��:j؀�F1�R�:���nz���ݛ�qU`����U���W9��s�x�;.r�c�;�E���q�!����6S���U��nv� ���>m�h�(����6���c/���A�K�#�Zm�D,hJX�,�ԏ$|�l��_7C�q0�}�9����H���jt�Q&B�m���n)�^-�h��j	 B��q���T[��x���nv���u��okj�
�N�2��ms��çXS�&��A�Z9Ep���ۮoo�[ߠ��j��@���$�'�+8�R�+�-�K��*ɪ������x:3��Bl�ͦU�9�4ՊWΩUf�l`<=�s��>�~#�.M�]�Փ����M2�_h��y��#1�2.��%��⺻e'�L�Xo�1?��Xh��R��� �A��.�uɐ�
�0��l�Dx�۩��/J�m�<�*"�(]8K�&8⟎NCXĭe����a{�:�a�<�擤:PY�73߬&V�sm��*lSH�5���㠮��t��Z�=	�|�`ٿ��Z�m��&�]k����:o��\o!��c����3A���EWF���\:�w��F�d�ӈ?C�nz�Px��D³*���WY���D���������\«�
����;Fna"*?v�y ��5�OV��@T�g��\g�9e����J}�Fӵ��0G�v��X�UL�Y�����v{���u���pF>b��NHZ&gMp���$1�>��*�ȯ˼�����p���NLJ"��@�5�R�OG]�"	��^'�`G���KXPI��	�r_�Ds=�0Q|FǍ��T�T��M�N�������n�����O�q����;��?�]��AD�RCV��CM�D#D�>
ƞ>�ŋ�=^͑"vØ�����_�L7��7T��,���$|�h�x;�I(:Ǘ@�_��xt�9�!
��~ض���>v��3��ES%uw��G��^քŐ��,`\���ׂ��2�܊T�K�S?ݕ����gϟ=-u�W)W}�`T�#(��	�]W<��PU�cVP�n�ϑ	k��g|��-z���l�������Q	�s�F2�5��GgIs�Ϋh�e��_:��{+�I��qv�&*/�u�Z6k(�c*}_�"��s��1lkg��6����Ƒ�-�g�N�#�.z2�ND7A*_w'pj��}��L�f?�8�3��},�1��q���o���<�m�F<��[����ذ<n 7rq��S�#���Z*�U�l�/�Tx�����+�G������6-O��Ž� )
$�*��?� ������j�ƍ�9?��f<�&F���SrC�m��f��au-��lv6cN���L�)=���EZ�Q����W    �3�,��@@�i�����~c���k���_��`��"����� W��$QL�iJ�����CP��v϶;�i��,�S��")8���~1wM��&i����Ǐ)���ˡ������d�q��<q�����l����ŧ,���;���-�oV����֊��{�Z���ޭK�h��v
3�	Z��b���NqSEW�uL��tN���� �=�w4�{Λ��, S�Ў��O�KƄ��	9di�" )���1:N�ɽ[�2� Xmv�p���k���2�Qk�\k�t�]I�r�L�d�8)���	ٰ ��]�O���s�B�'��!HQA�c��d����5�rF���X�W��svN�[��EVeޞ׳&��n��.��X\�p]5����;��тRF�XWD�_j�M`�}��t�h�w�ү@b�PDD�Ύ�K0�z�ǠN%�����z{�f�PL�A*��)��y�$�X.�f�G׎]��KϴYT�B9�l���k��z��R=ikw���ұE��u��fƣ#j�ne��U�����sP�3�:\����R_2��y{��H�A~G���l�K�����=�$�Ds��j�5�1 g���!1���@���o���_�/}9�U��^��c��Qt�]��h�j���-caln&��(�s�X9S��ڴ`��q����f,�w��� uޔ2m���@2��\2'��*��uB�X��«�<E	Y&Kz�e�k��d�����S"|�y��C�h�zV����a�'�
�CeG����S,�=2���>>&�YF,����@�o�=&d�MAK��L�cx�N:��kr|d0�Σ9�`D��6@Gu��[��>[�o��B�\agP��˨��l���roG��9u�N���^��<�Pxۙ���Y��1��~L�*��i&���=���?(��70g����&���b^!����a(���ȥl'#TV�/!<��uv�<����o�V��vY��8y�6�$Ӈ� ��Q@-Զx������Uݭ����]N�ו�|�F�<���	N��{bUE^&zn>D Ӹo@Nt�ع���vY-4�Ô��4�+lLw0Ӟ\䃂
U����O����%�����_�嶉ٯ����ͧ~�I2!��-V�z}�����^��^������v��>0a�"h��De?��5����m0��S?nc�^�]����M{�)��*����J<���u���9*�0z�٬h����SH�(�]�����j��΢ 6µ��I���2�x$� �|��]��P�k����tG����8H�(�m����҇�.���cMK��oE8��&=��2�'��"�>���s�V�ث$�����
P
#�k!�8������>��UW�:0(��x��N&�0�ĔJ����8+���giȦafg���f��o}���<��r:���3L?�$cy��b��x��j����8m�9���_�2��b5��V۶Z1��|�ڶ���N�Z]�WS�5^�Z��5��b@6g>�@O?�t�kD]�Jԕ:���깵z�VOj��|��B�>TMZ�&���2��qͯ�/�m������LoQ3�j3�:5y5RNlE�+d\mVBj��J{�G7UBo	���p���h�\���yj�L�+6�N�Z]~�� �z���/P ���x,a�l�s���H�@�@BL)+6�-^I��e��f3�P::��*��8��e�.{j
f?��IrF����{�c�da#���Şt!��_���@_�0,�N��{��ݻ2�Ћ���/	��Hbnυ�� I��p�P���y�*�َ��}����
�W��[�0NJ�N��h:�;Gw߹�}v['���U�¼ՙ#[�h�����(�֤�%A�xKDm�]������C'��gq`lߍ`N:3i?�N�1v�;���թ�&�[#fyB�R�D���	I��m�ݫT�\|�J߭���U1Du��B7�Χy����Ǳ#O��
�V:V8�p|@u�z�p��k���������L}���;��Y�����y�n)f�;��3�����8-���e	ݲjdR4��}�rk�Է�(
?���ؗ�T�V��xT7���l\�Q�b�$" �2���}$iKF\Pg�4���{z�0i�>_Q��p_�<�X/�T-��&޻4r�;�8c[B
Ȓ�W~:d{���2�c�Cx$����-5�W�=���C��f�*��XU~�o��,^P�����?���}�j�*�\�7�a�j�t�D5$�z4A�W������3_�_�G�J��+�3�Q�L*�4W��RdE�t�*!�CUǞ�y�;Z=ʎI� *��6>��*�����~NN�z�6��o����*��h��3������Q_����u��:�)8>a*s�Tf��4�V�0�n�a��@gJ��;+	�����JԼi&I���2�����]R�fƳ�Ӳ/]Ƕ�+����2�n���,�����l᭪I�����t$FC�LC����_C �@K6�c1\]yh���2q����,a�<�h�-�ũۀ^Z��k2O��h4���+ڼ 0(���V{��|��)�P���<I>;U�o��4dR��tƅǬ�O�X��`�|���%��2ň�T�*�&.�pR~�r�����g�{=�Q�^�VA�''�810q��9��<���l7%���[R� -� ��,'�3s�f����`��IW3s��pt]�~OX:�g�:�X~ԗK���|��Vk����������}4�L����!�߇�v�����n�������Jֆ�[��‬f/�L�x1�lBw�9Wp���c=L8��rF ��g9��Y�~�������:���P����,�u���W�,ǥ�� ���+̲(WO'TZT��(U
{k�ty�]�G��,7��Lq�$�i��r�����YΛ��M"ox{���>]rS,�yg��Ԫ�E�Yu#�$~��Q?(4뀣�"X'�Pbݻ��Nr����T�^R��	�f��I~��fW��FJ�	���`^Eb���
要X�`��}�-aT!����\�%��Y6�C��������}��h�8�{G���q0���A0�M����-W�s�QM���}|��#�i��Z$���)�v洘;���f�F,R��)3��HW>c�t2���6�HX��:���h�� 0 �)��c��.+��֞���'�i�_t��_�5�E!Gi'��Ze��!u'2(���t�����&'�E��-�ǏU���� (�t��b`�Ew�����bd�w��N�[��%�<�{;�:�����d�1�cܓ�?����*mYa�"��="F�֖"N�I���0�z��M`��jx��P�zǩ2g�ol�����%-�YN��q|x��$,��lY���>vX�?��D���d0�~t��̼.�3"�&�n�j���1���6=���t��{.��D5c^0�5!ٱ�ʥ/�b�������:i>-HN�^�,Z�=����K�M� ��3�t����o�a���:Kqs���u��l�Ǧ�a��Rp�P�&���"�S	_��[?��^m#[����FO~�B��d�#�[D�Y9�˙��&�5^�������֣u�t:��)����V̘[?'E� kO��f�9�������jMM��KQ��PB���W�3f���5z�m 4X*�o/%�n,���<���̈0<�ؽ�t�^�	��t���"�_9)$h�X.��͒���C���-<z��bct��6iu��tk���W�rN�oU(��L�!Et��:��x��G�I��7|�M�| ��娹c�ֺ��k��y��`P�!�i����x�Z��z�qV��W9-�殅6���*�(�M�ЦM1`f7������'Zd��;d�Qo&�H9�r>/�%�iZ���F�j܄���W6�Ќ���%0a�L��i5������ꤼd��|Lv�<ʹP-z.���    ���v��t�ډJ� �$���|Ny0�!�B|���+N�y�������3�u'wގ��;�F��9�H�Y���Y΁Uʯ� 6�\�q`D���s�q�J�)E~��vd�c�d��p�z��a��N>��6;7C��IBt��"�k��Z8q��O��Xq�����FtU$��W�.�-�"�H���:�B�FN��������0����h?�O�)�KC�ntE*�au��z*:���!e��#��8��x�c����d�x#mj��r���+b�d	��z.ә��i4,D�f�`9�P67�[�Q�^Ļ*\�+�;�U�׾�� �դ�L�h9�g����p�GA��س���p�r E�(G".�Bm등��)�r�q��M�;i߰^��R����/��C# �]� �kY  /Ҟ��cSvJ--Tk�Q|(h#j��i���un��y!�%�,K�&cU2F w�AhhS���X�ã�d��ʑQ>/V�i:O��d�v;f�TؽbX��8Y�'�-�Mx��Y!�jӏ�3�>  �mܩ���$߶�o��v�9�!S�+T5�]Q���)|<�.����2��eWZc�;�F:%fu�|��r[��1k��΢X�s8M�Y):NXSw��+U ݺ�E�,��F�Iѿ�I�HJIx�Up�e�a���n�������`,8�#����|mʂT]Li-��#z<Vk@�N�X5���#�I�<�6�^&��11`���lB��Ag��oWx����	%|D�<�`M�d�,ZE�A�]��{qE��<�v�Q�L�<�,o�ݱX� �9���ZNR���>�y��tC6Ã/"�)�㪄q��5it�^,����]���u�:u��T&��k���c�ϖd��G�b~�ƇG.$�aէ�[�D��U��yrʘ�	��8���ؒ�s�&����1xE/��?���`���!���#l%C�V��pnrF�~��h���Q�G0�.S�f@Y�Mp�|d�4���m��*n���Ao$�D�-FL�Ν�R<S�)�qK=�u��%9�kzm8���n��s0�Y}���1����q�Þ��idt�?���p6	�x�)��l��G���[_���Tt�=19�KX�[�q�1TAٔe6,�˸��D/;@��c�5c?��`B��o�	e�a���D P6������A�m*8gm.��9	. ���g�α�1��k�0��]�;Fo����ͦ��V]�A��!�eICl�A����@�nɔ%E��"���0�BN��ax�̳��[1��+�kP;d�N!��[���P)� �D�/&8�gXİu����ŷ�(����[}Dߒ���}m^C,�"4���K���*S��08rb��#��`���F�:�Y U���xN���+W2�"���Ǻ�];�x��
h@u���^5Xs#Ǿ����u!k�l;����ժc�B�����S!�5dK��Ě�@��W)�E������K����sԫ:��k�u�#I	�����(>��5k���T�6�{�)FZ'T��tGLlD�0vQ�R��ʑ�}Wo�W^���L)��E�o���������!F\D��A��&m0�*w��mz	aܨ��906F�@���A�hi�$���I5J�w��?@�U}LԉC���ƇC��g���.p&��z��ב�F خc��ٔ%: ��$֍�A2'x-��PD�7�A8�5]�c�A߿�P`Q�b7�ܷ������	��ڷ��B���P�o���o��+k��*����QR�o�x��v,����o~�� ��s��� հ�(������k��jή���X�
b�T7LѨW����ɞ^�NN^Kb��� -U���YP���OM�kd�FTG�K�a�s �J#�!�l�}ov����7.B�~>�T�\P�X`�P|¦�Z>���\�s^lz��=�+��CVi��+C��x`���dt��SL�,���p ��gu���A%�2Zis�NLq�A�R"�24p�^Lv���B�
�~�h����apAf�d���@g�y ���h��l@G�d2������{�w�	؃�	];��dų�;�6��!���]a���l�w�9H Y02=
=��s�}���1�w|���i��7��O���&^�a��Y�fJ�ۚ`t�n���ߊ�T���׼�>U�}g���͇(���N1
��7�kb��$�M9Fa�����{��(<�z�ιlw�V;Ē��_���x�_|��h8���� @�m�\���`b�՛����ٴ��c8��>����6�p�j|�	7��0�NT�>Z���+g�^�F9��(�F 1/�ٯ}ؔ���a��[$m�~Hjzƞ�!zC/����9<���L&Nu��H��9�)V_�z0��e�K���qr#iY\5YC[�}f0:@2sU��VXٙg�hX�I�{�p�G������u��M.
5]�^-s-j\�)��; �zag�v��%K�6'>��9�K�Ę��/�<���]Ɖ��b�(���A���/�~�_0�F����.�w�o����|��6��}������o�߷�����Q�����k��hm�����)��­N�����m�<Y�$��-u�uku7���A��q�7�����`� :�8��6�N�ҷ�|��{r|������}����ٽ��Y����9�~g�o�;�ߙ����R�n���-o����� ��b�>ʽ���� #�لȔ�c������T�R�N�7������6��t�.*��
LG\#a�"��x��0�{Qy-��� @m�k����nP�L��8�a�@1K���Z����A��D���A��7�%r�~1��x��#Ї���tQ�@���x�D<h"4Kk"���
j��:U��an�Pu�v��+�5���]���*+&j
퓂�h���T�s�
�B�5�}���A%�xPI<�$Tw��$�z�Qzٻ�@��#Л��x�|x�|x�7<���g��:��-�����~E!0�IO)'[���ZM�?����`� X?����`� X?�<H�R��� 5?H�-5�WR�I�1H.�8�w1�Q0�����>[Gh��I#��CI�h����3��r��\ő�;�Gǽ��� s?��2���� s߹���T����A��?O�����2���� s?���H2���:Y�i��H�������(���N�;�^RZ;���|���"8K���}�Mxl]絴��J�
�c�r�3J���Up����h�VE�T�<�E�IKRn>�� �0ԥ�'�(x'fWN�Ԕ���I?�Z�ʯ	!�R�eN<��PK��
�S&z��GS2u[R?���lJSo�lX�Vd^D*ѥ8��z
xϾ��i�G��5��̻����'S�t�w�����B�L��N�ݞy�7�w��C�Ԭ�X�w\;�f�{PX��O$/��$�f+_�&&�蜜5�>�yX���1�Fy8���a,B��E(E����e�Ս��j��O�b��?�A7jPL��I���5Н|�g��˙�����&�%0����r.�r���*)UM4�4�c�Af��H��f1��(�/<�LSA��� %�.-�P
�G�$� >k�b�}׫�� vB�WڼլD���@%8~�Kp|���$�����)vwM��Q��F`=3�H�ϯ�%B���ԡ)}��Uf�f8<_78�j���F�Ma��'�뱔ɿש��������/7�>=�������������#�n����)�1Y���1�tHX�����L:,9��S�zl�$�Oէ����=�4EW~Lq�/�\w�{J1�#�<��Q��Pq�F ����1!��[P�y��$��z+�|DI�,7��x'tO����9^���U���H��@$߁����W	T��FF�Cqڝ�n
[Rg���՟���0)9p�b˪$�;cR�p��,���;�n=M�(��֝�x�x��$�R�!���!E�7;�vAHTU�90+ ��p���9
�a    ֐�����T%�Z,�ޡLIF��L6�w��N��m6�s)ESS_�f:)��)0Tz{�\�D�q�(��sﴘ n���AI��m��^�H��D�B��+Nd�<(>�b.��eK^G�-7c`�-�Q���0E�*�LhB����q#�Â88�?�C{x�Z�H����B+��c&��b�r�:�BlB�{*�P:����V0�r�m�4&�;�o&l���qal6�(Y��;��3����Y�C�bgͤ N�����Q��G�S��G�o(�i�z?����<�3ߟ�_"^���<k|�L�:�i���: iu��/�g�C��E	�{�v��1�NЀT�穾I�x�<r�R��tư�����}п
O��!	�/�:)��Ǟh_��n��apq9jrjK���?��r\���f�,�I8�e|؏�s
��~��4|u~��r��0�g��Y����u���A�=x��/�g9/&�8�NcP��N[׹8�i��ʡS��G�n�Α�jt�R��Z����4U���N�`�\R2 !��v{�3�d�d�ԭfUYm�|�Т��s�b4
wA��E��e�ި��3Z�<5��L���Hy'xJ=Y���K�D�a�iy�h��B����Ep��t����&F�Z�`9d�ن�/IJ�T�+ٓ�F �~��c�*R�Μ� B,:,|8Ai!DȖ��������\�Y��[gs���k�:L��:��r]&���خ�Y<b����E���~�����+�֌�K��c>z�9P'o�{��{Z�7o?[�ͼ�+
�Sʞʢ���.̯��N!W����g��L�'?G��W��O~چ��l���)���$]���V� ��<&O>$�DH�4b�|J�D .%�M�%'D}��a�%L�Yu
�ɷ�b����Q���(f�{�$�j���^�����z�X�����!�����":k��"0�^�~K'i�H�>N�c���aH�ư�	t�	��������ܫ����QQ��ļ�1���F+�A%�1��2L�P߹���_��I�.����̪�>^� �^ü8l��@3�0��s�p�xK���n�L�����ER9��d���PK����YK8�X�J:�w�������&�-��պ1���\}�>�	�,ݲ�F:Ղ�c���'���$}&=���4�re9I�/� B�x�Q����?��"��,�����3,6��.�5��@� ��q�^�iԓ`	 f�uR;�!��[N:~�)gq�$�h�7_��+2�#)uք�
���]���X�;;�v�_�S����%��"͓�ha�%!;* �ܩ4�֛ٿ���X5i$x�ǄHF"p�7�4�����}�b7R�>ğl����'�4[��I�.�l�N�oK�ap�� �؛�عź�Eo��j��p��֎{4�ü\
�A)�s8f�8��9����i�d#�k�Βi>���`?�S�#�Q-T謵ҽ)�S��������E�%�۟)���9]:�)�d:�y+2�d��k��m���PH-��P��$�P�{�0z�6㶮w�U�� �3���S���YN#�'���Xo-qJ�O���x�� �-��ñ�w&(bj��@@I=���h1�޳�⾇&�[j���_�70%s��b��d��m�`@�<Ci���S�Lzm�1_�8a���S�M��<ȁ{�Ӧ������N�1ɧ#��u�6I&s�E���r�(�<�.��+4_$:s�aN�s+��N�d�qhR�=���=q�wnCX����BI�����r18pص7ϋd%͈����L,�~���� U0��+m0�����������Ơ�k�q��k0�|�-��A	u��X�	6�bQ�<	�^�jV�V���[gA��bԒm��9
�mATen���~[�%�>�&�������v��Ξ�ac�_:�	�|�4c^���n�@V���/� ��!8�nsp�D�d�:�X�)�[P�G��\�Hc��^�ƥ�7]�[y�3��ɫ�tB�ұ�:�3UG��(KR sv1��=�m�h/��8`A,JR#L�_$�k�̜F Ys�O-�,�dspZ&�(\#>T�]�����C�2�mY��RO�a�����e��ջ��.GƳ4􇙽ͰVW灊HSz�EF��ݽ!�-s��0�=��2M��p��j~������Qm������䫂��|����߯�}���K�����Y��Π�0�s��C�<�i8AԹޗrC`&���O,��Q��sHi�ec���{���Q~o�h0ƴ6�o���l���M��*z �M؛͍��N�[6ׄ��ԕ�bۆ|��0��>����Ũb�fû�e�fㅾ��ԙ�bƦC���f�]m�TW���t�{ܰm<�ʦ.J-"m6�7|׶�d����Uro"�"5�	&��E��c�\�l�B��T����&.�6e�o�(S%\f��1纱�
]�=��a��D�%��9I���n	Ǹ�H4H&���@��KtI2ɬLq�87X_���m���q�_Y1X�����{�c����'3LC?����4Y�?ye�w���l��.�	��E��Q��A2�����"cC&��I��Q�M1Ed8EP��F��%�Àc�L���?<����P��4��r�&�C1�6fc%s3�z���/u��k$՝�=��T���d�C���*H/��	���h�}=lZsHZ@X�d��P�2�V�
�`�}�~�ti���[����څ'Hi�W��Fȫ�r##B���s��be2	⡞�,�c������/:��h1��̄[zbB)n�XW4CEi
άJ�%M�vy}�3��z	����
#�0(�AJ�7礒�`*����4��W@gX��� ���N����_1�H��!Pb���h�GVOl:u���:0v`<��d힎ͦ���ł�U��jG4��� !t�����$RH�k
����p�}œ��}*������L��=���ۯޡwD6.l����ʹ���q�k{{��~��o;͈U�(��t���2|8�T�Ku�R��w�L���ml�*�x<�n�2[sM��8�v�Ob?E��������R]�z��V]��S��T_�}�k�=��@�C��T��`+fC��*D�&bg�}C��������A7���&���^�k�Ґ(g�"����Oml������y��R���>p�����&MCk�q�U	��#�GH ��R��L�n�Rbgdo��ӽ�i2eA��;�>�D�r&�'X�O��B>Z�;���w�4"g��`�@�!�`��� 07�{Xw���r��.��Ja4e���@z��nsw��x�"@���O��괥T�]uTXѠ�]��:]Ձ-��:}��W��9T�#ؑ��Qݮ��TwOu������{��L+�C[5�d5���řJ,^2^�f\�(�/�,6���.���pE� dO�$J���^���6��ww��mcI���)ܘ��C+"u����$=� �̢����J�lv$QCRqܻ�;�}�y��۹Q�D�N:ٴ�x9ת:u�T}Ui1	�������oAqh���|�B�at������t+D�@B��"a.�H�˷�".߆��nS�_���<_e�u��M�7x=�痑M� ���m#r	�nE]gt�0II�+�,V�hʨG�J6��_�Y-Fi���m�'3B��<�Ll��O�߇�孭
Z���,E'�T�6���e�U����5{:��;�s�.M=�6�dn (ǈu��c�;��{�J)�9gt�R�Ȳ̈PE���S��»<\Ш�� ��4t$��vD�m���vDoGs��DN�~��\���.����p������m�L�Y��R�Ι_���(83�/d��a�աRx�:�)p�&5ZY��vm��|Ó^4r���e����x,��x$�5&'��8��~�%�B�N�E2tw�[u>�]���z��eE$�8��}�)v�+����*{%m���ɚS��7��k3
�&��.�#��;o1i�uD���w�?    ��r�o������!���.rJq���D�r��i��.#��(GZW
��/��.�/�Vdpv�4#��wgF��!��Y�`U�������ǄK�e�oo�g�ϯ�.H���JCt+��(j����g�@E��u����.GWe���u��7����� �7���:���唹�b~�!��<��2�- b[�Wbõ���z��w� ���3B��%��܌�,�O�7kE�b�#_˥I� ��W��״��E���h�[��h�"�[Q��a�����|��v��iq��c,����N|��N��I��Ԁ��׳�ƆזϺ�B.�;��P�	=G�<�����e-ߛ��7N��=���Vّv�4��E@�FKM|RF�4�{Zb�3���o{FˬQ`�Q�	�$s��;¿�x�g�'���G�m"�	_��T�� ���9�98T5s�̰>�J��	f3�hB�5e�A���IzdC7B �r��l����>����[RN�}򠰎oT
h������{� ��v��bya��f���e9�����&��
*Ej���)$�ٲ��+�Sc�~���*�l;Pg�3��ѓ��=�O[�9}����P��E���lZ��^<��R%G����>GW�
�*��-W�������,O譀G�#}�9�������{Q*���9Ϥ�]��X�}��k���g61q����%����g�����s��-j��u�d��aPdR��:���5$X��'j�例j��Q�g_�?�v�K֟a��7��yR�y�N�oy�����/�3�����:�jN�;��O�:,��r�����y�CYt����Ȁ�0�^U-��-Ҿ�A��^�k �ё��W��o�x�gt�KN,�ԇ��݈����Q����vi�˺X9�����q3Tbf|(u4��`��<��h�z�M�|]t�V
H	�v�o���鯢!·l��F�q���;]�)17�x�Ĝ������H����2��{"(@���%g���O��:ץփ��u����Y)9�J�TA84"�����8J�:_<Wox����~Z���3�`5w����$�V�i�V�������	�%����:���dm�!k�I|���'�©���Sn,i���)9��ou9�R��L�s<U|��&�'>��Ř�XY�;���Xj �����4�lY�vs:�����V�Ώ^��0+l6��Ǆ�y�G�#Krl�l�O��e�ʻ�S͡��H��W2I1����z!��Bb3!w�p��װ�"q���4�����@}�%_ÈkGF�¨�ԓ��o�s�Fϒl7�6��z�X͓���2�� �"��U�c�Aϱ�k���I�i�E7d� ��N�2�\=S����NԔ3G����ˇo����[={9�Ͽ&y����%��:\!�{���r��`����(?�V��SR�M���u�a��q��&e�F�vy��H&U(��?�p�xA�o׏@�=l:%��k#˸ݰ+빚�~��NN0���)`�M����`�D��:ш^�#�N����#&xK&&���mÇ��Ê��dk��U[z�3��E���k���C��H��S��we�bKT�I��l�L��J���S�$���[���!�-�Uj�y�nK�ޘ�:*T��.9�������C_�(�KK��)
և��;G�������?\�l)�"��� Q�7��g[`���Kߕ.��K����������y9uܵ�,���c��[(q�G���I�����ɴgI��=3�*j�Sm���]�� ��ﾦr���m[�k��NJoУ)>�H�ͣ��a���6O��:�ZZ�>��m���±�Z���ᰮ[á'��wi8l��/��M0c�Q/£7��d2#���b91�	��T��t���j���(ٰ�'e6��d��E*wS���c��VO02��)Vl*�mcI%�󎢟1j7��|=M�u����$��xW�n��3mH��IJ1St�"L���vhE����W�6>0�s%���J�l�7���t��Oy���~�)�{]�UQ�o����z�r~S��>:�ݿx�+��\�̒;E��e	��p:K�9ؤm��f���f�y_a��v߾�gp��$�����sDobg�y�dr�����]�cS�:w�̲]��<{oM2Kc�s<�YX8��r:jR�r��jvvZ�б�+�������E��<��>��)K����2^$2�G��ňh�*�wv�Ǹ����Z��2)���թ�*_��D�Y���
Z�9��-�I
s [�)��Z�xj;C������v����=u���כt���|~o3t�)��YD8T�gC�6��4�["�G�Po2�&�n�j�v�j�n��f�fZv(M�m�<�Ii:�ldp����2��l�Fi��:�M0�mW����}�.�s�N7dT �X���b
1.3���U�
�i�CM~3>�p��������B!�HA+��a�p�/� On',y6,J�m2_�>����VhhI%%�7�IY"� pPM^W��/��M`=zL�+�$%c�E�a8h<�WK�)�q|��1طl��P�!3+��̞ߖ媸|�5�������'��Z�ߟ����q捨f-����b-�Gh���t�6`���=�|Nz��Y�	�N`���w���l��`���������Np"�d�7��m!���V25Ir�6l>� ��:8��f7x�Y�{FG��G��u@��5D�V�DM�CZ���F�=�,A�dA�w��@HIe
+����	�eQ5��3�6{;"`�/J��f�w��|ʇ�e�>Yj�j~˄,���aL,��n��8�A���uy��P ���9�C/nnUxI�&�I�i����E(����˖��v�L��	_N�zΡK��2��^M�"<�&@4_�M�Ȼ ���,�w���f�E�Pkn1�aj�Ң]�J���š��J���&�mw�i��<b5�؁�1�4�IQ��[�5��vt��
,���YPP�ĕ�"�/�5R�HL}��)�EU�f��cf*2v��d��.$ �@�Q�V�L�U���dv'�N�U�yR]tǹ6N/2ܣq4���M�1�;����~�|�<<2�4��g��0�&y�x���2_Oh	� .$,=J��1g�'�b��-�9�$lٲ)d���VW
 ƿ�<�s���E:����}����z��gMEx�Q��x� ���>~ka)Y�A�-��hٯ���.�R� �Ԝ.nT�O�?Y ��O����}=y�t����'�<�:�W˛c��?��Bn�@�zphpDycO���R�kvX�eB X��1�J���F�2Fԫ ��[!�l��OM��W�Zb�GK<@��������aT�W��+��{��f�2�k�Of���y�O���S��3��I��{6mۚ�t����Z8dC�Oo�m��ȸ�t��4֛\ײcf��E�9����XӒ/6�[Fp۠7ۯF�ǐ��ã7eN����#���u���{$�oӛ[�SӚ�a(\�@"c �Q(c�yY���cȌU�M�gmX$���^d,I��'���iK]z�6ZÝ�����5�����y���A!��tV�4j�[�Zb�mL����qhJ�#C��	]�m���
O��ͬ�_HX;Kt�6�Z!�(����:�`A�s����|TmZ7�s2�����ͦ±�E=>F��Gc����U���&)Ӊ���7R�h�C�}>�e�����1�#o��1٩'��f�l�,��,�c���/�٤�Y�>��9iy�'1s'n�{U�b����K>� :O�U�8��^�	h�?f�oSPL8&�)�ú�h��E� 9](˺�վ#�C�B#�)'�����u������;W�;�E'���߫+�[GE_�9@�/���`9��AS�c�'�@�,oKo,Ѹ�8�wWD�E���+�ۻ+z����u]�ZSܖ�^���k�YRޡ���z�Wt=Oj��R�"���k��_jP��k�]]o��U�]�B��0E��eg�^O��J�?F����B   ������8��Pѹ8�T���I3��H]�\��Y���(%�1
�;�+H��ް��ą�K�;���N[ɯF��q��gj�����ę�����j���b��53�0\f�D���6+'a���Z���G*1j�~~s�O�m�7�x|�-���h�q��?z��,b�VZ�2��tkX8zt|���-���� "��D���0#��|�A^u	0��u/�W��� _T7
������a�,m���T�b��<�}���+��!�b� ��1�����{i��������H`�2w�xI�*��lŦ�f��SOe��N��L`]���<[䐉�b��	�K6f�)��,<[�NK9�qb��a�����l�`8�P|� �5cH�ne��*��0��m��:}'�=����FE��L*ߨLr�����˅^��W��v�aj6:���"* �Ϗ9u��byNpC������$Q-�u���61~q��?�q��z��R<�,�F�X�_�4p&��qx �`�B��?
���6U.@���E{&l��m6O��C��o9eE~Y���"�f�,<��f;�<�S���"(���Mg�Nٙg�!c����;��;N�~_�~0ܡ̀:�轎\`?��Q�>1��gM�����j`_ki#"��1�DÚ�ز�=Lgh*�V 0y��5EA����N"�Q�𕾁��_ߡC<	��{~��k�u���¶IN�^X����xXAt{{�Z�^h��6�`7P�z���G?�(p�������X�-�,8�A�f����{'�C�I��@=S�U �Ĺ[
�`r��U}'Ɣ
bA ~^�J� qkt�=oJ�M�k�S|��A"��2*��ZF�a�ۂ�}���[���]F��ժ����b}��_^����V���<~?wC̔����: qE������׻K�����r����
�K.s��m-ҥYF��e4]z���P(�.�X�^@�55\DMyQ}y���V�<l�z�/���7[D���XD��d���C�0��_�~�۰z�R���}�9z{C��"c<u�I�#�}QBu�*�nMF	
�Ci���)$�Q�aD	o����$<�(�m ����C�t��o��-�JO��������S��.漖����)��ڷ�C�;|�"��=z�$����?��\��=/?z�u��k��|���AOF:�ţ����
�F����59M������9�g��A�,��i��֢|��]�y�	�.���Y�XUP�Ղ���r���O�����I�Cms�n�i�]X�ٙ|�D��e��ɭc˼"��-�>�����j�y�^pp.��W|z��ɝ\�4�#��z�ϋE*�1���[meJ��1G�$��o�9���1�5���[�������֤��OL`=Uܬy<N�t�.z�qF��0��KIT}G�ino�.ń�ӄ�|N���؛��V���h���$[��9��жI��5��J���w��&ֈm�Ї�p�b4Ϙ@<�8T��}���q����d\��[3]�r|�(<}2^:E��~5%�h�!�s��0�}�N����JL�Jx!�y~���G��W��8a-�ծl��ݙ����R��Ĉn�1����[
+�������f�	��.��2��oѮ�u������t.T����X�6!�Z���e��&uI{	S?��:��}*���R]�.R����o��l�Ln���׉>׉%5�\��H�&_����Q/���̿"W���=��������Ƹ�:�"6�Ӊyu\���q\*S.Ϥ��#��)�Vy,�[Zx,��������+�u�:�eE*H*��PI��W�����9����ѯ˶mn4zf���syc����W�9�YCfޔ߯����\��1�?k�����`��:�3{:د���cF�Y9`���._9��p<��6���'�w��6�ɜ(���"kx���j�?��AR���� ���4e�ݦOӜ�n12��#��+h2W5��o�6͘��4ᑆ�р3�qE3�����@�ݲUuqTiE�+����'�k	�n5�uNlC1qE!{#��"�԰‗W���c^$���TX�a�O�<��+�I*_\C�Fh���O�y��m:WDk���~zN�c�&���ܽ1�n�S�Tc���S���]n�i�Y7f
eb�dO��LGL�H'��1M쇪�J�Jl9��VV��B,EqU�͠��a�8y���+ʉ[X�����ɞ6��x�w<d0��b,��<�0��͐ΖCE��1RS]-�:�L).W2��J�(�C%9��<A�-��i�6%g:�o�|������S�T���b��P�ﭹ�%���J�ӎ	�}�����A06��k�T�I߅u;)eW����Z!��I����[N�ZHv'^U�(�;�र�XQ����>'�hԊ_~'�G���R��Rׄ���ɹ�	t��������Ϥ�����ENj\�L��f�'�*7�Tۉd����tC*����Ƨ����,Y~�#l�ްC���,�E�jl!��B���>v��ԍ�h��Ճo!:�g�;k��=z����c�3+ͬ0�O]����n+����H����|{I��\�ZwFa������SID��u��W�2��z-�YT�t����Ǘ�?&���x�����{�|���'��\_'��]3s�G���O��FP(���0�g��1�X^L�����")̒ ��Z�d��a}�b
ܡ�܏!�G?�����|#       �      x��\�nG��M?E���%L�)ɲۀbَ�ֲ����dG��NW�df�@c�y�<�~眪�P����M"��:Uu������-�\��*��G哗��g��*.rk�ڥ�FY�{m�بb�⥮t�Le#u�L�ҕQx��$���������fke<3�uU�/�l�W��գ�Ó��u�p[�-���{�������C;S�.��*W�6�,q�N}Xbp�la��7/��=}�m���Vz�R�NЖ�a���^��-M��E����Ʋ���G;����UF;�{]8c�[b�^:�ǘ���?����e�,[��h2'�0
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
�f;��9M�4�B����>��_��k'��ps��צ��A�F��(��>0]I�NI?�u����5$�c���D�C��)��p���G�p�>a�x2���}�C���1��6�r������hr�M���?����p�3�ۙy7�H�G� R���`��H�QglLm��Z��a5�7�x~���/��|��?J E�J�l�� ��[��,���X������׊��Hp�_�Qp����JǹcҜ;`���^������n��}<����a�>^�ɹRb�!^v�a0o��d7̙�;����3e�����9�Z�;f	�:[��)9�]i��{883������Y�+��78+^IJv��-�p��`ڂ�E��%m)�F�j"\�m���Q5p�ᄉ��X��7Ŭ�haV����C��]\"r1'f�!C핐��������� %����sQ�͉�ܡ�Σ$��:��xԾ� �:����4�]	�S�k0��k��/]�e�1������_��C      �   �   x����� �o����!:A���I[�T��AB���9�������T�vs��<X�,H���x�B�"�"�ErL�<K`)���1�7h��4��W�7P4SǦ�w�똬=���4a��j����Qj`���f�0y	���2J,���z�i̿=h���o���CL?_��鉶YKrGԟiI9�RO�-x����     