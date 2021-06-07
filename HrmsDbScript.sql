--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    city_name character varying(50) NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: employers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employers (
    user_id integer NOT NULL,
    company_name character varying(50) NOT NULL,
    website character varying(100) NOT NULL,
    phone_number character varying(10) NOT NULL,
    verification_status boolean NOT NULL
);


ALTER TABLE public.employers OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: job_advertisement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_advertisement (
    id integer NOT NULL,
    employer_id integer NOT NULL,
    job_position_id integer NOT NULL,
    city_id integer NOT NULL,
    job_description character varying(500) NOT NULL,
    min_salary integer,
    max_salary integer,
    number_of_open_positions integer NOT NULL,
    application_deadline character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    creation_date character varying(50) NOT NULL
);


ALTER TABLE public.job_advertisement OWNER TO postgres;

--
-- Name: job_advertisement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.job_advertisement ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.job_advertisement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: job_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_positions (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.job_positions OWNER TO postgres;

--
-- Name: job_positions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.job_positions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.job_positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: job_seekers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_seekers (
    user_id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    identification_number character varying(11) NOT NULL,
    birth_year integer NOT NULL
);


ALTER TABLE public.job_seekers OWNER TO postgres;

--
-- Name: resume_cover_letter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_cover_letter (
    id integer NOT NULL,
    content character varying(300) NOT NULL,
    jobseeker_id integer
);


ALTER TABLE public.resume_cover_letter OWNER TO postgres;

--
-- Name: resume_cover_letter_letter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.resume_cover_letter ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.resume_cover_letter_letter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: resume_educations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_educations (
    id integer NOT NULL,
    jobseeker_id integer,
    school_name character varying(200) NOT NULL,
    department character varying(200) NOT NULL,
    start_date date,
    end_date date
);


ALTER TABLE public.resume_educations OWNER TO postgres;

--
-- Name: resume_educations_education_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.resume_educations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.resume_educations_education_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: resume_experiences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_experiences (
    id integer NOT NULL,
    jobseeker_id integer,
    workspace_name character varying(200),
    start_date date,
    end_date date,
    "position" character varying(150)
);


ALTER TABLE public.resume_experiences OWNER TO postgres;

--
-- Name: resume_experince_experince_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.resume_experiences ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.resume_experince_experince_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: resume_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_images (
    id integer NOT NULL,
    image_url character varying(200),
    jobseeker_id integer NOT NULL
);


ALTER TABLE public.resume_images OWNER TO postgres;

--
-- Name: resume_images_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.resume_images ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.resume_images_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: resume_languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_languages (
    id integer NOT NULL,
    jobseeker_id integer,
    language_name character varying(220) NOT NULL,
    language_level integer NOT NULL
);


ALTER TABLE public.resume_languages OWNER TO postgres;

--
-- Name: resume_languages_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.resume_languages ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.resume_languages_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: resume_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_links (
    id integer NOT NULL,
    jobseeker_id integer,
    github_link character varying(220),
    linkedin_link character varying(220)
);


ALTER TABLE public.resume_links OWNER TO postgres;

--
-- Name: resume_links_link_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.resume_links ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.resume_links_link_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: resume_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resume_skills (
    id integer NOT NULL,
    jobseeker_id integer,
    skills_name character varying(200) NOT NULL
);


ALTER TABLE public.resume_skills OWNER TO postgres;

--
-- Name: resume_skills_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.resume_skills ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.resume_skills_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: system_personnel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.system_personnel (
    user_id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    department_id integer
);


ALTER TABLE public.system_personnel OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(250) NOT NULL,
    password character varying(250) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: employers employers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employers
    ADD CONSTRAINT employers_pkey PRIMARY KEY (user_id);


--
-- Name: job_advertisement job_advertisement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_advertisement
    ADD CONSTRAINT job_advertisement_pkey PRIMARY KEY (id);


--
-- Name: job_positions job_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);


--
-- Name: job_seekers job_seekers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_seekers
    ADD CONSTRAINT job_seekers_pkey PRIMARY KEY (user_id);


--
-- Name: resume_cover_letter resume_cover_letter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_cover_letter
    ADD CONSTRAINT resume_cover_letter_pkey PRIMARY KEY (id);


--
-- Name: resume_educations resume_educations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_educations
    ADD CONSTRAINT resume_educations_pkey PRIMARY KEY (id);


--
-- Name: resume_experiences resume_experince_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_experiences
    ADD CONSTRAINT resume_experince_pkey PRIMARY KEY (id);


--
-- Name: resume_images resume_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_images
    ADD CONSTRAINT resume_images_pkey PRIMARY KEY (id);


--
-- Name: resume_languages resume_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_languages
    ADD CONSTRAINT resume_languages_pkey PRIMARY KEY (id);


--
-- Name: resume_links resume_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_links
    ADD CONSTRAINT resume_links_pkey PRIMARY KEY (id);


--
-- Name: resume_skills resume_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_skills
    ADD CONSTRAINT resume_skills_pkey PRIMARY KEY (id);


--
-- Name: system_personnel system_personnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_personnel
    ADD CONSTRAINT system_personnel_pkey PRIMARY KEY (user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: fki_fk_job_seeker_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_fk_job_seeker_id ON public.resume_experiences USING btree (jobseeker_id);


--
-- Name: fki_job_seeker_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_job_seeker_id ON public.resume_educations USING btree (jobseeker_id);


--
-- Name: employers employers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employers
    ADD CONSTRAINT employers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- Name: resume_skills fk_jobseeker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_skills
    ADD CONSTRAINT fk_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES public.job_seekers(user_id) NOT VALID;


--
-- Name: resume_links fk_jobseeker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_links
    ADD CONSTRAINT fk_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES public.job_seekers(user_id) NOT VALID;


--
-- Name: resume_languages fk_jobseeker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_languages
    ADD CONSTRAINT fk_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES public.job_seekers(user_id) NOT VALID;


--
-- Name: resume_images fk_jobseeker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_images
    ADD CONSTRAINT fk_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES public.job_seekers(user_id) NOT VALID;


--
-- Name: resume_experiences fk_jobseeker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_experiences
    ADD CONSTRAINT fk_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES public.job_seekers(user_id) NOT VALID;


--
-- Name: resume_educations fk_jobseeker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_educations
    ADD CONSTRAINT fk_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES public.job_seekers(user_id) NOT VALID;


--
-- Name: resume_cover_letter fk_jobseeker_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resume_cover_letter
    ADD CONSTRAINT fk_jobseeker_id FOREIGN KEY (jobseeker_id) REFERENCES public.job_seekers(user_id) NOT VALID;


--
-- Name: job_advertisement job_advertisement_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_advertisement
    ADD CONSTRAINT job_advertisement_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;


--
-- Name: job_advertisement job_advertisement_employer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_advertisement
    ADD CONSTRAINT job_advertisement_employer_id_fkey FOREIGN KEY (employer_id) REFERENCES public.employers(user_id) NOT VALID;


--
-- Name: job_advertisement job_advertisement_job_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_advertisement
    ADD CONSTRAINT job_advertisement_job_position_id_fkey FOREIGN KEY (job_position_id) REFERENCES public.job_positions(id) NOT VALID;


--
-- Name: job_seekers job_seekers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_seekers
    ADD CONSTRAINT job_seekers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- Name: system_personnel system_personnel_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_personnel
    ADD CONSTRAINT system_personnel_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

