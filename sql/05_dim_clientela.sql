-- Table: public.dim_clientela

-- DROP TABLE IF EXISTS public.dim_clientela;

CREATE TABLE IF NOT EXISTS public.dim_clientela
(
    pk_clientela integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    descricao character varying(16) COLLATE pg_catalog."default",
    CONSTRAINT clientela_pkey PRIMARY KEY (pk_clientela),
    CONSTRAINT dim_clientela_unique UNIQUE (descricao)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_clientela
    OWNER to postgres;