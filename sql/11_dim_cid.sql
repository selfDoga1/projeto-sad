-- Table: public.dim_cid

-- DROP TABLE IF EXISTS public.dim_cid;

CREATE TABLE IF NOT EXISTS public.dim_cid
(
    pk_cid integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo character varying(1) COLLATE pg_catalog."default" NOT NULL,
    codigo double precision,
    descricao character varying(255) COLLATE pg_catalog."default",
    categoria character varying(255) COLLATE pg_catalog."default",
    grupo character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT dim_cid_pkey PRIMARY KEY (pk_cid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_cid
    OWNER to postgres;