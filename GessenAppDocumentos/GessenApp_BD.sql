PGDMP  (    '            	    |         	   GessenApp    16.4    16.4      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16972 	   GessenApp    DATABASE     ~   CREATE DATABASE "GessenApp" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "GessenApp";
                postgres    false            �            1259    16973 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id_categoria character varying(10) NOT NULL,
    nombre_c character varying(30) NOT NULL,
    descripcion_c character varying(100) NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    16976 
   enfermedad    TABLE     �   CREATE TABLE public.enfermedad (
    id_enfermedad character varying(10) NOT NULL,
    nombre_e character varying(30) NOT NULL,
    descripcion_e character varying(100) NOT NULL
);
    DROP TABLE public.enfermedad;
       public         heap    postgres    false            �            1259    16979    platillo    TABLE     �   CREATE TABLE public.platillo (
    id_platillo character varying(10) NOT NULL,
    nombre_p character varying(30) NOT NULL,
    descripcion_p character varying(200) NOT NULL
);
    DROP TABLE public.platillo;
       public         heap    postgres    false            �            1259    16982    platillo_categoria    TABLE     q   CREATE TABLE public.platillo_categoria (
    fk_id_p character varying(10),
    fk_id_c character varying(10)
);
 &   DROP TABLE public.platillo_categoria;
       public         heap    postgres    false            �            1259    16985    platillo_enfermedad    TABLE     r   CREATE TABLE public.platillo_enfermedad (
    fk_id_p character varying(10),
    fk_id_e character varying(10)
);
 '   DROP TABLE public.platillo_enfermedad;
       public         heap    postgres    false            �            1259    16988    registro    TABLE     �   CREATE TABLE public.registro (
    "id_Registro" character varying(10) NOT NULL,
    correo character varying(40) NOT NULL,
    "contraseña" character varying(40) NOT NULL,
    fk_id_usuario character varying(10)
);
    DROP TABLE public.registro;
       public         heap    postgres    false            �            1259    16991    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario character varying(10) NOT NULL,
    nombres_u character varying(20) NOT NULL,
    apellidos_u character varying(20) NOT NULL,
    genero_u character varying(10) NOT NULL,
    fechanacimiento_u date NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16994    usuario_enfermedad    TABLE     q   CREATE TABLE public.usuario_enfermedad (
    fk_id_u character varying(10),
    fk_id_e character varying(10)
);
 &   DROP TABLE public.usuario_enfermedad;
       public         heap    postgres    false            �          0    16973 	   categoria 
   TABLE DATA           J   COPY public.categoria (id_categoria, nombre_c, descripcion_c) FROM stdin;
    public          postgres    false    215   2'       �          0    16976 
   enfermedad 
   TABLE DATA           L   COPY public.enfermedad (id_enfermedad, nombre_e, descripcion_e) FROM stdin;
    public          postgres    false    216   O'       �          0    16979    platillo 
   TABLE DATA           H   COPY public.platillo (id_platillo, nombre_p, descripcion_p) FROM stdin;
    public          postgres    false    217   l'       �          0    16982    platillo_categoria 
   TABLE DATA           >   COPY public.platillo_categoria (fk_id_p, fk_id_c) FROM stdin;
    public          postgres    false    218   �'       �          0    16985    platillo_enfermedad 
   TABLE DATA           ?   COPY public.platillo_enfermedad (fk_id_p, fk_id_e) FROM stdin;
    public          postgres    false    219   �'       �          0    16988    registro 
   TABLE DATA           W   COPY public.registro ("id_Registro", correo, "contraseña", fk_id_usuario) FROM stdin;
    public          postgres    false    220   �'       �          0    16991    usuario 
   TABLE DATA           b   COPY public.usuario (id_usuario, nombres_u, apellidos_u, genero_u, fechanacimiento_u) FROM stdin;
    public          postgres    false    221   �'       �          0    16994    usuario_enfermedad 
   TABLE DATA           >   COPY public.usuario_enfermedad (fk_id_u, fk_id_e) FROM stdin;
    public          postgres    false    222   �'       6           2606    16998    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    215            8           2606    17000    enfermedad enfermedad_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.enfermedad
    ADD CONSTRAINT enfermedad_pkey PRIMARY KEY (id_enfermedad);
 D   ALTER TABLE ONLY public.enfermedad DROP CONSTRAINT enfermedad_pkey;
       public            postgres    false    216            :           2606    17002    platillo platillo_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.platillo
    ADD CONSTRAINT platillo_pkey PRIMARY KEY (id_platillo);
 @   ALTER TABLE ONLY public.platillo DROP CONSTRAINT platillo_pkey;
       public            postgres    false    217            <           2606    17489    registro registro_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY ("id_Registro");
 @   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_pkey;
       public            postgres    false    220            >           2606    17004    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    221            ?           2606    17005 2   platillo_categoria platillo_categoria_fk_id_c_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillo_categoria
    ADD CONSTRAINT platillo_categoria_fk_id_c_fkey FOREIGN KEY (fk_id_c) REFERENCES public.categoria(id_categoria);
 \   ALTER TABLE ONLY public.platillo_categoria DROP CONSTRAINT platillo_categoria_fk_id_c_fkey;
       public          postgres    false    218    4662    215            @           2606    17010 2   platillo_categoria platillo_categoria_fk_id_p_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillo_categoria
    ADD CONSTRAINT platillo_categoria_fk_id_p_fkey FOREIGN KEY (fk_id_p) REFERENCES public.platillo(id_platillo);
 \   ALTER TABLE ONLY public.platillo_categoria DROP CONSTRAINT platillo_categoria_fk_id_p_fkey;
       public          postgres    false    218    4666    217            A           2606    17015 4   platillo_enfermedad platillo_enfermedad_fk_id_e_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillo_enfermedad
    ADD CONSTRAINT platillo_enfermedad_fk_id_e_fkey FOREIGN KEY (fk_id_e) REFERENCES public.enfermedad(id_enfermedad);
 ^   ALTER TABLE ONLY public.platillo_enfermedad DROP CONSTRAINT platillo_enfermedad_fk_id_e_fkey;
       public          postgres    false    216    4664    219            B           2606    17020 4   platillo_enfermedad platillo_enfermedad_fk_id_p_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.platillo_enfermedad
    ADD CONSTRAINT platillo_enfermedad_fk_id_p_fkey FOREIGN KEY (fk_id_p) REFERENCES public.platillo(id_platillo);
 ^   ALTER TABLE ONLY public.platillo_enfermedad DROP CONSTRAINT platillo_enfermedad_fk_id_p_fkey;
       public          postgres    false    4666    219    217            C           2606    17490    registro registro_fk_id_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_fk_id_usuario FOREIGN KEY (fk_id_usuario) REFERENCES public.usuario(id_usuario) NOT VALID;
 I   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_fk_id_usuario;
       public          postgres    false    220    4670    221            D           2606    17030 2   usuario_enfermedad usuario_enfermedad_fk_id_e_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_enfermedad
    ADD CONSTRAINT usuario_enfermedad_fk_id_e_fkey FOREIGN KEY (fk_id_e) REFERENCES public.enfermedad(id_enfermedad);
 \   ALTER TABLE ONLY public.usuario_enfermedad DROP CONSTRAINT usuario_enfermedad_fk_id_e_fkey;
       public          postgres    false    4664    222    216            E           2606    17035 2   usuario_enfermedad usuario_enfermedad_fk_id_u_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_enfermedad
    ADD CONSTRAINT usuario_enfermedad_fk_id_u_fkey FOREIGN KEY (fk_id_u) REFERENCES public.usuario(id_usuario);
 \   ALTER TABLE ONLY public.usuario_enfermedad DROP CONSTRAINT usuario_enfermedad_fk_id_u_fkey;
       public          postgres    false    4670    222    221            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     