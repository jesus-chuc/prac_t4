PGDMP     2    "                z           2022a_isma6    14.1    14.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    24586    2022a_isma6    DATABASE     j   CREATE DATABASE "2022a_isma6" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "2022a_isma6";
                postgres    false            �            1259    32779    group    TABLE     �   CREATE TABLE public."group" (
    id integer NOT NULL,
    name character varying(55),
    description character varying(255),
    size integer
);
    DROP TABLE public."group";
       public         heap    postgres    false            �            1259    32778    group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.group_id_seq;
       public          postgres    false    211                       0    0    group_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.group_id_seq OWNED BY public."group".id;
          public          postgres    false    210            �            1259    32795 
   user_group    TABLE     g   CREATE TABLE public.user_group (
    id integer NOT NULL,
    id_user integer,
    id_group integer
);
    DROP TABLE public.user_group;
       public         heap    postgres    false            �            1259    32794    user_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_group_id_seq;
       public          postgres    false    213                       0    0    user_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_group_id_seq OWNED BY public.user_group.id;
          public          postgres    false    212            �            1259    24587    users    TABLE     {   CREATE TABLE public.users (
    id integer,
    username text,
    password text,
    firstname text,
    lastname text
);
    DROP TABLE public.users;
       public         heap    postgres    false            e           2604    32782    group id    DEFAULT     f   ALTER TABLE ONLY public."group" ALTER COLUMN id SET DEFAULT nextval('public.group_id_seq'::regclass);
 9   ALTER TABLE public."group" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            f           2604    32798    user_group id    DEFAULT     n   ALTER TABLE ONLY public.user_group ALTER COLUMN id SET DEFAULT nextval('public.user_group_id_seq'::regclass);
 <   ALTER TABLE public.user_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �          0    32779    group 
   TABLE DATA           >   COPY public."group" (id, name, description, size) FROM stdin;
    public          postgres    false    211   �       �          0    32795 
   user_group 
   TABLE DATA           ;   COPY public.user_group (id, id_user, id_group) FROM stdin;
    public          postgres    false    213          �          0    24587    users 
   TABLE DATA           L   COPY public.users (id, username, password, firstname, lastname) FROM stdin;
    public          postgres    false    209   A                  0    0    group_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.group_id_seq', 5, true);
          public          postgres    false    210                       0    0    user_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_group_id_seq', 3, true);
          public          postgres    false    212            h           2606    32784    group group_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."group" DROP CONSTRAINT group_pkey;
       public            postgres    false    211            j           2606    32800    user_group user_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_pkey;
       public            postgres    false    213            �   _   x�3���u�5R�
f%�
�����%E�
!z�z�F\F`e�*��!*��*�R0T�q� ����0�2��aVa��C�=... ��-      �      x�3�4�4�2�4�4�2�4�4����� !��      �   F   x�3��,K��/Kt�44261r/��t+M�+I-�2��J�,r���O�/����LLJ��r��b���� pe�     