PGDMP         0    	        
    w         
   onlinebank    12.0    12.0 @    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    17003 
   onlinebank    DATABASE     �   CREATE DATABASE onlinebank WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE onlinebank;
                postgres    false            �            1259    17004 	   ob_compte    TABLE     R  CREATE TABLE public.ob_compte (
    id bigint NOT NULL,
    email character varying NOT NULL,
    motdepasse character varying NOT NULL,
    token character varying(255) NOT NULL,
    created_at date NOT NULL,
    updated_at date,
    role character varying(255) NOT NULL,
    google character varying,
    id_prospect bigint NOT NULL
);
    DROP TABLE public.ob_compte;
       public         heap    postgres    false            �            1259    17010    ob_compte_id_prospect_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_compte_id_prospect_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ob_compte_id_prospect_seq;
       public          postgres    false    202            P           0    0    ob_compte_id_prospect_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ob_compte_id_prospect_seq OWNED BY public.ob_compte.id_prospect;
          public          postgres    false    203            �            1259    17012    ob_compte_id_seq    SEQUENCE     y   CREATE SEQUENCE public.ob_compte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ob_compte_id_seq;
       public          postgres    false    202            Q           0    0    ob_compte_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ob_compte_id_seq OWNED BY public.ob_compte.id;
          public          postgres    false    204            �            1259    17014    ob_historique    TABLE     �   CREATE TABLE public.ob_historique (
    id bigint NOT NULL,
    dateappel date,
    resultat_appel boolean,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    id_produit bigint NOT NULL,
    id_compte bigint NOT NULL
);
 !   DROP TABLE public.ob_historique;
       public         heap    postgres    false            �            1259    17017    ob_historique_id_compte_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_historique_id_compte_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ob_historique_id_compte_seq;
       public          postgres    false    205            R           0    0    ob_historique_id_compte_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ob_historique_id_compte_seq OWNED BY public.ob_historique.id_compte;
          public          postgres    false    206            �            1259    17019    ob_historique_id_produit_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_historique_id_produit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ob_historique_id_produit_seq;
       public          postgres    false    205            S           0    0    ob_historique_id_produit_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ob_historique_id_produit_seq OWNED BY public.ob_historique.id_produit;
          public          postgres    false    207            �            1259    17021    ob_historique_id_seq    SEQUENCE     }   CREATE SEQUENCE public.ob_historique_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ob_historique_id_seq;
       public          postgres    false    205            T           0    0    ob_historique_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ob_historique_id_seq OWNED BY public.ob_historique.id;
          public          postgres    false    208            �            1259    17023 
   ob_produit    TABLE     �  CREATE TABLE public.ob_produit (
    nom character varying(255) NOT NULL,
    description character varying(500),
    minage integer,
    maxage integer,
    situationfamiliale character varying,
    situationprofessionnel character varying,
    revenumin integer,
    revenumax character varying,
    depenseregulieremax character varying,
    enfants integer,
    situationlogement character varying,
    minanciennetelogement integer,
    maxanciennetelogement integer,
    minancienneteprofessionnel integer,
    maxancienneteprofessionnel integer,
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone
);
    DROP TABLE public.ob_produit;
       public         heap    postgres    false            �            1259    17029    ob_prospect    TABLE     �  CREATE TABLE public.ob_prospect (
    id bigint NOT NULL,
    nom character varying NOT NULL,
    prenom character varying NOT NULL,
    situationfamiliale character varying NOT NULL,
    revenu integer NOT NULL,
    depensereguliere integer NOT NULL,
    situationprofessionnel character varying NOT NULL,
    telephone character varying NOT NULL,
    enfants integer NOT NULL,
    departement character varying NOT NULL,
    typehabitat character varying NOT NULL,
    situationlogement character varying NOT NULL,
    anciennetelogement integer NOT NULL,
    ancienneteprofessionnel integer NOT NULL,
    bloquepub boolean NOT NULL,
    active boolean NOT NULL,
    created_at date NOT NULL,
    updated_at date,
    age character varying(100) NOT NULL,
    veriflj boolean,
    verifccp boolean,
    verifla boolean,
    verifpel boolean,
    verifav boolean,
    verifce boolean,
    verifcc boolean,
    verifci boolean,
    verifca boolean
);
    DROP TABLE public.ob_prospect;
       public         heap    postgres    false            �            1259    17035    ob_prospect_id_seq    SEQUENCE     {   CREATE SEQUENCE public.ob_prospect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ob_prospect_id_seq;
       public          postgres    false    210            U           0    0    ob_prospect_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ob_prospect_id_seq OWNED BY public.ob_prospect.id;
          public          postgres    false    211            �            1259    17037    ob_prospectproduit    TABLE     �   CREATE TABLE public.ob_prospectproduit (
    id bigint NOT NULL,
    id_prospect bigint NOT NULL,
    id_produit bigint NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
 &   DROP TABLE public.ob_prospectproduit;
       public         heap    postgres    false            �            1259    17040 !   ob_prospectproduit_id_produit_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_prospectproduit_id_produit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ob_prospectproduit_id_produit_seq;
       public          postgres    false    212            V           0    0 !   ob_prospectproduit_id_produit_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ob_prospectproduit_id_produit_seq OWNED BY public.ob_prospectproduit.id_produit;
          public          postgres    false    213            �            1259    17042 "   ob_prospectproduit_id_prospect_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_prospectproduit_id_prospect_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ob_prospectproduit_id_prospect_seq;
       public          postgres    false    212            W           0    0 "   ob_prospectproduit_id_prospect_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ob_prospectproduit_id_prospect_seq OWNED BY public.ob_prospectproduit.id_prospect;
          public          postgres    false    214            �            1259    17044    ob_prospectproduit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ob_prospectproduit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ob_prospectproduit_id_seq;
       public          postgres    false    212            X           0    0    ob_prospectproduit_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ob_prospectproduit_id_seq OWNED BY public.ob_prospectproduit.id;
          public          postgres    false    215            �            1259    17046    produit_id_seq    SEQUENCE     w   CREATE SEQUENCE public.produit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produit_id_seq;
       public          postgres    false    209            Y           0    0    produit_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.produit_id_seq OWNED BY public.ob_produit.id;
          public          postgres    false    216            �
           2604    17048    ob_compte id    DEFAULT     l   ALTER TABLE ONLY public.ob_compte ALTER COLUMN id SET DEFAULT nextval('public.ob_compte_id_seq'::regclass);
 ;   ALTER TABLE public.ob_compte ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    202            �
           2604    17049    ob_compte id_prospect    DEFAULT     ~   ALTER TABLE ONLY public.ob_compte ALTER COLUMN id_prospect SET DEFAULT nextval('public.ob_compte_id_prospect_seq'::regclass);
 D   ALTER TABLE public.ob_compte ALTER COLUMN id_prospect DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    17050    ob_historique id    DEFAULT     t   ALTER TABLE ONLY public.ob_historique ALTER COLUMN id SET DEFAULT nextval('public.ob_historique_id_seq'::regclass);
 ?   ALTER TABLE public.ob_historique ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    205            �
           2604    17051    ob_historique id_produit    DEFAULT     �   ALTER TABLE ONLY public.ob_historique ALTER COLUMN id_produit SET DEFAULT nextval('public.ob_historique_id_produit_seq'::regclass);
 G   ALTER TABLE public.ob_historique ALTER COLUMN id_produit DROP DEFAULT;
       public          postgres    false    207    205            �
           2604    17052    ob_historique id_compte    DEFAULT     �   ALTER TABLE ONLY public.ob_historique ALTER COLUMN id_compte SET DEFAULT nextval('public.ob_historique_id_compte_seq'::regclass);
 F   ALTER TABLE public.ob_historique ALTER COLUMN id_compte DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    17053    ob_produit id    DEFAULT     k   ALTER TABLE ONLY public.ob_produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq'::regclass);
 <   ALTER TABLE public.ob_produit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    209            �
           2604    17054    ob_prospect id    DEFAULT     p   ALTER TABLE ONLY public.ob_prospect ALTER COLUMN id SET DEFAULT nextval('public.ob_prospect_id_seq'::regclass);
 =   ALTER TABLE public.ob_prospect ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    17055    ob_prospectproduit id    DEFAULT     ~   ALTER TABLE ONLY public.ob_prospectproduit ALTER COLUMN id SET DEFAULT nextval('public.ob_prospectproduit_id_seq'::regclass);
 D   ALTER TABLE public.ob_prospectproduit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    212            �
           2604    17056    ob_prospectproduit id_prospect    DEFAULT     �   ALTER TABLE ONLY public.ob_prospectproduit ALTER COLUMN id_prospect SET DEFAULT nextval('public.ob_prospectproduit_id_prospect_seq'::regclass);
 M   ALTER TABLE public.ob_prospectproduit ALTER COLUMN id_prospect DROP DEFAULT;
       public          postgres    false    214    212            �
           2604    17057    ob_prospectproduit id_produit    DEFAULT     �   ALTER TABLE ONLY public.ob_prospectproduit ALTER COLUMN id_produit SET DEFAULT nextval('public.ob_prospectproduit_id_produit_seq'::regclass);
 L   ALTER TABLE public.ob_prospectproduit ALTER COLUMN id_produit DROP DEFAULT;
       public          postgres    false    213    212            ;          0    17004 	   ob_compte 
   TABLE DATA           t   COPY public.ob_compte (id, email, motdepasse, token, created_at, updated_at, role, google, id_prospect) FROM stdin;
    public          postgres    false    202   �R       >          0    17014    ob_historique 
   TABLE DATA           u   COPY public.ob_historique (id, dateappel, resultat_appel, created_at, updated_at, id_produit, id_compte) FROM stdin;
    public          postgres    false    205   YU       B          0    17023 
   ob_produit 
   TABLE DATA           ;  COPY public.ob_produit (nom, description, minage, maxage, situationfamiliale, situationprofessionnel, revenumin, revenumax, depenseregulieremax, enfants, situationlogement, minanciennetelogement, maxanciennetelogement, minancienneteprofessionnel, maxancienneteprofessionnel, id, created_at, updated_at) FROM stdin;
    public          postgres    false    209   vU       C          0    17029    ob_prospect 
   TABLE DATA           m  COPY public.ob_prospect (id, nom, prenom, situationfamiliale, revenu, depensereguliere, situationprofessionnel, telephone, enfants, departement, typehabitat, situationlogement, anciennetelogement, ancienneteprofessionnel, bloquepub, active, created_at, updated_at, age, veriflj, verifccp, verifla, verifpel, verifav, verifce, verifcc, verifci, verifca) FROM stdin;
    public          postgres    false    210    Z       E          0    17037    ob_prospectproduit 
   TABLE DATA           a   COPY public.ob_prospectproduit (id, id_prospect, id_produit, created_at, updated_at) FROM stdin;
    public          postgres    false    212   �Z       Z           0    0    ob_compte_id_prospect_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ob_compte_id_prospect_seq', 1, false);
          public          postgres    false    203            [           0    0    ob_compte_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ob_compte_id_seq', 13, true);
          public          postgres    false    204            \           0    0    ob_historique_id_compte_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ob_historique_id_compte_seq', 1, false);
          public          postgres    false    206            ]           0    0    ob_historique_id_produit_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ob_historique_id_produit_seq', 1, false);
          public          postgres    false    207            ^           0    0    ob_historique_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ob_historique_id_seq', 1, false);
          public          postgres    false    208            _           0    0    ob_prospect_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ob_prospect_id_seq', 29, true);
          public          postgres    false    211            `           0    0 !   ob_prospectproduit_id_produit_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.ob_prospectproduit_id_produit_seq', 1, false);
          public          postgres    false    213            a           0    0 "   ob_prospectproduit_id_prospect_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ob_prospectproduit_id_prospect_seq', 1, false);
          public          postgres    false    214            b           0    0    ob_prospectproduit_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ob_prospectproduit_id_seq', 1, false);
          public          postgres    false    215            c           0    0    produit_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produit_id_seq', 10, true);
          public          postgres    false    216            �
           2606    17059    ob_compte ob_compte_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ob_compte
    ADD CONSTRAINT ob_compte_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ob_compte DROP CONSTRAINT ob_compte_pkey;
       public            postgres    false    202            �
           2606    17061     ob_historique ob_historique_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ob_historique
    ADD CONSTRAINT ob_historique_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ob_historique DROP CONSTRAINT ob_historique_pkey;
       public            postgres    false    205            �
           2606    17063    ob_produit ob_produit_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ob_produit
    ADD CONSTRAINT ob_produit_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ob_produit DROP CONSTRAINT ob_produit_pkey;
       public            postgres    false    209            �
           2606    17065    ob_prospect ob_prospect_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ob_prospect
    ADD CONSTRAINT ob_prospect_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ob_prospect DROP CONSTRAINT ob_prospect_pkey;
       public            postgres    false    210            �
           2606    17067 *   ob_prospectproduit ob_prospectproduit_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ob_prospectproduit
    ADD CONSTRAINT ob_prospectproduit_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.ob_prospectproduit DROP CONSTRAINT ob_prospectproduit_pkey;
       public            postgres    false    212            �
           2606    17068 $   ob_compte ob_compte_id_prospect_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_compte
    ADD CONSTRAINT ob_compte_id_prospect_fkey FOREIGN KEY (id_prospect) REFERENCES public.ob_prospect(id) NOT VALID;
 N   ALTER TABLE ONLY public.ob_compte DROP CONSTRAINT ob_compte_id_prospect_fkey;
       public          postgres    false    202    210    2741            �
           2606    17073 *   ob_historique ob_historique_id_compte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_historique
    ADD CONSTRAINT ob_historique_id_compte_fkey FOREIGN KEY (id_compte) REFERENCES public.ob_compte(id) NOT VALID;
 T   ALTER TABLE ONLY public.ob_historique DROP CONSTRAINT ob_historique_id_compte_fkey;
       public          postgres    false    202    2735    205            �
           2606    17078 +   ob_historique ob_historique_id_produit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_historique
    ADD CONSTRAINT ob_historique_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.ob_produit(id) NOT VALID;
 U   ALTER TABLE ONLY public.ob_historique DROP CONSTRAINT ob_historique_id_produit_fkey;
       public          postgres    false    209    2739    205            �
           2606    17083 5   ob_prospectproduit ob_prospectproduit_id_produit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_prospectproduit
    ADD CONSTRAINT ob_prospectproduit_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.ob_produit(id) NOT VALID;
 _   ALTER TABLE ONLY public.ob_prospectproduit DROP CONSTRAINT ob_prospectproduit_id_produit_fkey;
       public          postgres    false    209    212    2739            �
           2606    17088 6   ob_prospectproduit ob_prospectproduit_id_prospect_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ob_prospectproduit
    ADD CONSTRAINT ob_prospectproduit_id_prospect_fkey FOREIGN KEY (id_prospect) REFERENCES public.ob_prospect(id) NOT VALID;
 `   ALTER TABLE ONLY public.ob_prospectproduit DROP CONSTRAINT ob_prospectproduit_id_prospect_fkey;
       public          postgres    false    212    2741    210            ;   J  x�M��r�0 E��;��+	a`^F����6�l�y,_ߴ3�����=s��Բa�ʮ|����w��O<}��u�a�}ю������O���}�������y�!��t��>��=RN�����A-�o&6�hɌ�;P%�58Z��s�+R��HЇ��"R�.�jc����ob�r���V�m�a��B���.�#�x�V�Md�Gk�������SA����j�R*�qF$.�/��ۺT�� �M�z��+8���6=��|�oI�ihU-�a�	��Cc�Tz���ᇸc�el#X�N�� 4�!|���*���/ s���I?0x�;ڰ����S�u�x��v&y7����M���R��iO���.�{�� ���ھ
R�hu�Y�KO�"��{��6I9�2;<��h]�W(�&�@[ҥ@q(�A�S	#��&�$��j���
S�x�f3�ʢ{ڣ���Ȳ<m�b<�F�s�\O(ƙ�E�;4j����t��C�s��Qsgl7���U��q^��?S�A8a��x�L�ǋ�lsF�),�`Ռ�r�Q/qa�v�`���5�DP��~,??]����~�����      >      x������ � �      B   �  x����n�8���S��ú�d�N�[�d� �l���^h�V��E���m�a_���{��M�I�R�eW6A���f�Vr��eW��J���̄�̕,S��
�Շ����+�;�t}�����6�a+M�i�Ø�F�=l�}	.��L��d�xi�A2L�����������_��0������?N���$aI����d���/q����mH#SN��R���
�����*Q bd�Cj�����x�~���P�߃�sxk^f\j��"����h�N0�Ji�*��
pRU}��JUzf{��X��\����R�E�����߂�l�ir�D�'Ә���ݽ}zI6YN��t>��1W��n:�u��:k(⩕�l���� �1_T	.dɝg-|R�Ժ�9�����
�)x����SD�~�[2�&(�e�e�̯=P:�����@<e7�B�M��J��C�}[�L"���m��=P�3c4��_�5�gn���t�J�
�RV	G�(����zy��%��r6��q��ixc���A�C�F�}~�熖`[�w����g{��)�Ai�˒հ�&s�.�9	��	<MN��Lh������^Rڐ�<��r��W6�&IN��"��%\��Ubxs4��7��%��2�EWI�HvL�[-6�:��L</���)T~f�th�c,sP�Z���Y�4��
Ih�!Vf�� H~�G�C�ңQ���a[Y��~�t��/����<{��K�t�;]*��ް\+H��
�m���'�k?;Y��zF�:~���%��2YDi��0�Z�r�SkI$��O�c�f���̿�U�y�6V����l,M=�&ھ h�yٴ� �<�m�������e�<n�fO�6ڒ"�����=��$y��%��e<�f�_����Ϊ.�=n��I	�Eˌ|Ä�1��ԉ���m}n#�e� U��D����<��*�����k�'���yNuЪ:����������r��N����I��s�#��<Z,�ڱcjy
�6��}>��b��9��k����A�AdG�$�*���g%���*T� �&�Q���~Z��`��p�ӽ��'�g���R,����$IA��A�����Y���]^��C�T�9h�!v���(��� ��}���Q��x�p����'�ER\�i4�ӊ�i�)��cP�N      C   �   x����
�0Dϓ��V��Z(���Ēj���n�ߴPO2�,�þ1���Àr�m�g@�x������cQ�v�0[Ǿù��hR�!v�Y�CuMiʴɗc�I�X�{/8���Q~�����;����^W�s��jC)"��T��(��G�@�      E      x������ � �     