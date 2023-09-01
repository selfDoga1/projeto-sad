-- Table: public.dim_despacho

-- DROP TABLE IF EXISTS public.dim_despacho;

CREATE TABLE IF NOT EXISTS public.dim_despacho
(
    pk_despacho integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    descricao character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT dim_despacho_pkey PRIMARY KEY (pk_despacho),
    CONSTRAINT dim_despacho_unique UNIQUE (descricao)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_despacho
    OWNER to postgres;