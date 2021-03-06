PGDMP     2        
            x           prueba    12.3    12.3     #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    16393    prueba    DATABASE     �   CREATE DATABASE prueba WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE prueba;
                postgres    false            '           0    0    DATABASE prueba    COMMENT     2   COMMENT ON DATABASE prueba IS 'Prueba para play';
                   postgres    false    2854            �            1259    16412    Admin_Usuarios    TABLE     �   CREATE TABLE public."Admin_Usuarios" (
    "DNI" integer NOT NULL,
    "Nombre" character varying(20),
    "Apellidos" character varying(30),
    "Username" character varying(15) NOT NULL,
    "Password" character varying(15)
);
 $   DROP TABLE public."Admin_Usuarios";
       public         heap    postgres    false            �            1259    16429    Admin_Usuarios_DNI_seq    SEQUENCE     �   ALTER TABLE public."Admin_Usuarios" ALTER COLUMN "DNI" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Admin_Usuarios_DNI_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    206            �            1259    16396    Doctor_Usuarios    TABLE     �   CREATE TABLE public."Doctor_Usuarios" (
    "Username" character varying(20) NOT NULL,
    "Password" character varying(15),
    "Nombre" character varying(20),
    "DNI" integer NOT NULL,
    "Apellidos" character varying(20)
);
 %   DROP TABLE public."Doctor_Usuarios";
       public         heap    postgres    false            �            1259    16406 	   Pacientes    TABLE     ?  CREATE TABLE public."Pacientes" (
    "DNI" integer NOT NULL,
    "Nombre" character varying(20),
    "Apellidos" character varying(20),
    "Direccion" character varying(50),
    "Fecha" timestamp with time zone,
    "Patologia" character varying(30),
    "Descripcion" character varying(100),
    "Doctor" integer
);
    DROP TABLE public."Pacientes";
       public         heap    postgres    false            �            1259    16404    Pacientes_DNI_seq    SEQUENCE     �   ALTER TABLE public."Pacientes" ALTER COLUMN "DNI" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Pacientes_DNI_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            �            1259    16417    Recep_Usuarios    TABLE     �   CREATE TABLE public."Recep_Usuarios" (
    "DNI" integer NOT NULL,
    "Nombre" character varying(20),
    "Apellidos" character varying(20),
    "Username" character varying(15) NOT NULL,
    "Password" character varying(15)
);
 $   DROP TABLE public."Recep_Usuarios";
       public         heap    postgres    false            �            1259    16431    Recep_Usuarios_DNI_seq    SEQUENCE     �   ALTER TABLE public."Recep_Usuarios" ALTER COLUMN "DNI" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Recep_Usuarios_DNI_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207            �            1259    16394    Usuarios_DNI_seq    SEQUENCE     �   ALTER TABLE public."Doctor_Usuarios" ALTER COLUMN "DNI" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Usuarios_DNI_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203                      0    16412    Admin_Usuarios 
   TABLE DATA           `   COPY public."Admin_Usuarios" ("DNI", "Nombre", "Apellidos", "Username", "Password") FROM stdin;
    public          postgres    false    206   �                 0    16396    Doctor_Usuarios 
   TABLE DATA           a   COPY public."Doctor_Usuarios" ("Username", "Password", "Nombre", "DNI", "Apellidos") FROM stdin;
    public          postgres    false    203                    0    16406 	   Pacientes 
   TABLE DATA              COPY public."Pacientes" ("DNI", "Nombre", "Apellidos", "Direccion", "Fecha", "Patologia", "Descripcion", "Doctor") FROM stdin;
    public          postgres    false    205   u                 0    16417    Recep_Usuarios 
   TABLE DATA           `   COPY public."Recep_Usuarios" ("DNI", "Nombre", "Apellidos", "Username", "Password") FROM stdin;
    public          postgres    false    207   q        (           0    0    Admin_Usuarios_DNI_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Admin_Usuarios_DNI_seq"', 3, true);
          public          postgres    false    208            )           0    0    Pacientes_DNI_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Pacientes_DNI_seq"', 2, true);
          public          postgres    false    204            *           0    0    Recep_Usuarios_DNI_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Recep_Usuarios_DNI_seq"', 2, true);
          public          postgres    false    209            +           0    0    Usuarios_DNI_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Usuarios_DNI_seq"', 2, true);
          public          postgres    false    202            �
           2606    16416 "   Admin_Usuarios Admin_Usuarios_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Admin_Usuarios"
    ADD CONSTRAINT "Admin_Usuarios_pkey" PRIMARY KEY ("DNI");
 P   ALTER TABLE ONLY public."Admin_Usuarios" DROP CONSTRAINT "Admin_Usuarios_pkey";
       public            postgres    false    206            �
           2606    16410    Pacientes Pacientes_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Pacientes"
    ADD CONSTRAINT "Pacientes_pkey" PRIMARY KEY ("DNI");
 F   ALTER TABLE ONLY public."Pacientes" DROP CONSTRAINT "Pacientes_pkey";
       public            postgres    false    205            �
           2606    16421 "   Recep_Usuarios Recep_Usuarios_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Recep_Usuarios"
    ADD CONSTRAINT "Recep_Usuarios_pkey" PRIMARY KEY ("DNI");
 P   ALTER TABLE ONLY public."Recep_Usuarios" DROP CONSTRAINT "Recep_Usuarios_pkey";
       public            postgres    false    207            �
           2606    16403    Doctor_Usuarios Usuarios_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Doctor_Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY ("DNI");
 K   ALTER TABLE ONLY public."Doctor_Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       public            postgres    false    203            �
           2606    16424    Pacientes Doctor_DocUsuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pacientes"
    ADD CONSTRAINT "Doctor_DocUsuarios" FOREIGN KEY ("Doctor") REFERENCES public."Doctor_Usuarios"("DNI") NOT VALID;
 J   ALTER TABLE ONLY public."Pacientes" DROP CONSTRAINT "Doctor_DocUsuarios";
       public          postgres    false    203    205    2707               X   x��1
�0 �9yE_ X��%]]�������׋7�҃-7 �R��?.��Y<.%[s��J�[M�K*f1P�w[�|ʊ���o�r         X   x�s�O��O�,H,.642���2��99R�R��\��y)E�Ŝ�99�%��Ɯ�����N#N���*��ĢԔ�b�=... ��         �   x�mϽN�0�9y
?����8>�U�	��I,,Vj��4���x#f�^�P����`�g-zv3y�#/���*���\"
�/Wp���(�uѨ3ЛV�vsި��,42�!ŉc`�b�aB�
�8S.	!S݈@��H�����H#�E�b�����S!�?�[лwq�j����i۪�ҋ)|�(����/�r�+C}�K�N�a���X�����6f���ZJ�	B4h�         U   x�3��OJ-*���/(J����4���471N1�2�tI,�L�J�L-Vp�ϫJ�I-�t)+J��0�t237)6����� ��N     