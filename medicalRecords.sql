PGDMP     0                
    y            medicalRecords    12.4    12.4 5    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            K           1262    32872    medicalRecords    DATABASE     �   CREATE DATABASE "medicalRecords" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';
     DROP DATABASE "medicalRecords";
                postgres    false            �            1259    32875    doctor    TABLE     �   CREATE TABLE public.doctor (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    username character varying,
    password character varying,
    unique_doctor_number character varying
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            �            1259    32873    doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.doctor_id_seq;
       public          postgres    false    203            L           0    0    doctor_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;
          public          postgres    false    202            �            1259    32930    doctors_specialists    TABLE     h   CREATE TABLE public.doctors_specialists (
    id integer NOT NULL,
    doctor_type character varying
);
 '   DROP TABLE public.doctors_specialists;
       public         heap    postgres    false            �            1259    32928    doctors_specialists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doctors_specialists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.doctors_specialists_id_seq;
       public          postgres    false    213            M           0    0    doctors_specialists_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.doctors_specialists_id_seq OWNED BY public.doctors_specialists.id;
          public          postgres    false    212            �            1259    32897    gender    TABLE     [   CREATE TABLE public.gender (
    id integer NOT NULL,
    gender_type character varying
);
    DROP TABLE public.gender;
       public         heap    postgres    false            �            1259    32895    gender_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.gender_id_seq;
       public          postgres    false    207            N           0    0    gender_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.gender_id_seq OWNED BY public.gender.id;
          public          postgres    false    206            �            1259    32919    medical_referral    TABLE     �   CREATE TABLE public.medical_referral (
    id integer NOT NULL,
    doctors_specialists_id integer,
    comment character varying,
    unique_referral_number character varying,
    date character varying,
    patient_id integer,
    doctor_id integer
);
 $   DROP TABLE public.medical_referral;
       public         heap    postgres    false            �            1259    32917    medical_referral_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medical_referral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.medical_referral_id_seq;
       public          postgres    false    211            O           0    0    medical_referral_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.medical_referral_id_seq OWNED BY public.medical_referral.id;
          public          postgres    false    210            �            1259    32886    patient    TABLE     [  CREATE TABLE public.patient (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    egn character varying,
    address character varying,
    phone character varying,
    birth_date character varying,
    age integer,
    gender_id integer,
    additional_info character varying,
    doctor_id integer
);
    DROP TABLE public.patient;
       public         heap    postgres    false            �            1259    32884    patient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.patient_id_seq;
       public          postgres    false    205            P           0    0    patient_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.patient_id_seq OWNED BY public.patient.id;
          public          postgres    false    204            �            1259    32908    prescription    TABLE     �   CREATE TABLE public.prescription (
    id integer NOT NULL,
    medicine character varying,
    comment character varying,
    date character varying,
    unique_prescription_number character varying,
    doctor_id integer,
    patient_id integer
);
     DROP TABLE public.prescription;
       public         heap    postgres    false            �            1259    32906    prescription_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prescription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.prescription_id_seq;
       public          postgres    false    209            Q           0    0    prescription_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.prescription_id_seq OWNED BY public.prescription.id;
          public          postgres    false    208            �
           2604    32878 	   doctor id    DEFAULT     f   ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);
 8   ALTER TABLE public.doctor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    32933    doctors_specialists id    DEFAULT     �   ALTER TABLE ONLY public.doctors_specialists ALTER COLUMN id SET DEFAULT nextval('public.doctors_specialists_id_seq'::regclass);
 E   ALTER TABLE public.doctors_specialists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    32900 	   gender id    DEFAULT     f   ALTER TABLE ONLY public.gender ALTER COLUMN id SET DEFAULT nextval('public.gender_id_seq'::regclass);
 8   ALTER TABLE public.gender ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    32922    medical_referral id    DEFAULT     z   ALTER TABLE ONLY public.medical_referral ALTER COLUMN id SET DEFAULT nextval('public.medical_referral_id_seq'::regclass);
 B   ALTER TABLE public.medical_referral ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    32889 
   patient id    DEFAULT     h   ALTER TABLE ONLY public.patient ALTER COLUMN id SET DEFAULT nextval('public.patient_id_seq'::regclass);
 9   ALTER TABLE public.patient ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    32911    prescription id    DEFAULT     r   ALTER TABLE ONLY public.prescription ALTER COLUMN id SET DEFAULT nextval('public.prescription_id_seq'::regclass);
 >   ALTER TABLE public.prescription ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ;          0    32875    doctor 
   TABLE DATA           e   COPY public.doctor (id, first_name, last_name, username, password, unique_doctor_number) FROM stdin;
    public          postgres    false    203   ?       E          0    32930    doctors_specialists 
   TABLE DATA           >   COPY public.doctors_specialists (id, doctor_type) FROM stdin;
    public          postgres    false    213   1?       ?          0    32897    gender 
   TABLE DATA           1   COPY public.gender (id, gender_type) FROM stdin;
    public          postgres    false    207   @       C          0    32919    medical_referral 
   TABLE DATA           �   COPY public.medical_referral (id, doctors_specialists_id, comment, unique_referral_number, date, patient_id, doctor_id) FROM stdin;
    public          postgres    false    211   A@       =          0    32886    patient 
   TABLE DATA           �   COPY public.patient (id, first_name, last_name, egn, address, phone, birth_date, age, gender_id, additional_info, doctor_id) FROM stdin;
    public          postgres    false    205   ^@       A          0    32908    prescription 
   TABLE DATA           v   COPY public.prescription (id, medicine, comment, date, unique_prescription_number, doctor_id, patient_id) FROM stdin;
    public          postgres    false    209   {@       R           0    0    doctor_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.doctor_id_seq', 1, false);
          public          postgres    false    202            S           0    0    doctors_specialists_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.doctors_specialists_id_seq', 18, true);
          public          postgres    false    212            T           0    0    gender_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.gender_id_seq', 2, true);
          public          postgres    false    206            U           0    0    medical_referral_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.medical_referral_id_seq', 1, false);
          public          postgres    false    210            V           0    0    patient_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.patient_id_seq', 1, false);
          public          postgres    false    204            W           0    0    prescription_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.prescription_id_seq', 1, false);
          public          postgres    false    208            �
           2606    32883    doctor doctor_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    203            �
           2606    32938 ,   doctors_specialists doctors_specialists_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.doctors_specialists
    ADD CONSTRAINT doctors_specialists_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.doctors_specialists DROP CONSTRAINT doctors_specialists_pkey;
       public            postgres    false    213            �
           2606    32905    gender gender_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.gender DROP CONSTRAINT gender_pkey;
       public            postgres    false    207            �
           2606    32927 &   medical_referral medical_referral_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.medical_referral
    ADD CONSTRAINT medical_referral_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.medical_referral DROP CONSTRAINT medical_referral_pkey;
       public            postgres    false    211            �
           2606    32894    patient patient_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_pkey;
       public            postgres    false    205            �
           2606    32916    prescription prescription_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT prescription_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.prescription DROP CONSTRAINT prescription_pkey;
       public            postgres    false    209            �
           2606    32954 +   medical_referral fk_medical_referral_doctor    FK CONSTRAINT     �   ALTER TABLE ONLY public.medical_referral
    ADD CONSTRAINT fk_medical_referral_doctor FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) NOT VALID;
 U   ALTER TABLE ONLY public.medical_referral DROP CONSTRAINT fk_medical_referral_doctor;
       public          postgres    false    203    211    2730            �
           2606    32949 8   medical_referral fk_medical_referral_doctors_specialists    FK CONSTRAINT     �   ALTER TABLE ONLY public.medical_referral
    ADD CONSTRAINT fk_medical_referral_doctors_specialists FOREIGN KEY (doctors_specialists_id) REFERENCES public.doctors_specialists(id) NOT VALID;
 b   ALTER TABLE ONLY public.medical_referral DROP CONSTRAINT fk_medical_referral_doctors_specialists;
       public          postgres    false    2740    213    211            �
           2606    32959 ,   medical_referral fk_medical_referral_patient    FK CONSTRAINT     �   ALTER TABLE ONLY public.medical_referral
    ADD CONSTRAINT fk_medical_referral_patient FOREIGN KEY (patient_id) REFERENCES public.patient(id) NOT VALID;
 V   ALTER TABLE ONLY public.medical_referral DROP CONSTRAINT fk_medical_referral_patient;
       public          postgres    false    205    2732    211            �
           2606    32944    patient fk_patient_doctor    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT fk_patient_doctor FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) NOT VALID;
 C   ALTER TABLE ONLY public.patient DROP CONSTRAINT fk_patient_doctor;
       public          postgres    false    2730    205    203            �
           2606    32939    patient fk_patient_gender    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT fk_patient_gender FOREIGN KEY (gender_id) REFERENCES public.gender(id) NOT VALID;
 C   ALTER TABLE ONLY public.patient DROP CONSTRAINT fk_patient_gender;
       public          postgres    false    2734    207    205            �
           2606    32964 #   prescription fk_prescription_doctor    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_prescription_doctor FOREIGN KEY (doctor_id) REFERENCES public.doctor(id) NOT VALID;
 M   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_prescription_doctor;
       public          postgres    false    209    2730    203            �
           2606    32969 $   prescription fk_prescription_patient    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescription
    ADD CONSTRAINT fk_prescription_patient FOREIGN KEY (patient_id) REFERENCES public.patient(id) NOT VALID;
 N   ALTER TABLE ONLY public.prescription DROP CONSTRAINT fk_prescription_patient;
       public          postgres    false    205    209    2732            ;      x������ � �      E   �   x�UPK
�0\'����]<L��ƕ�n?  �����yc]�$��|�38��7��B��l�z�.�O���vd_���Q!�*��`�cEf�!�$�M�-�QДYKsl�
����眗:B�kp���\}�s{*e(�y�tj�;�X�l��˜�fe]������j�BR�W��j��і�ѱf�����ӎ��&E��      ?   "   x�3估�bׅm\F��]�za�\1z\\\ �B�      C      x������ � �      =      x������ � �      A      x������ � �     