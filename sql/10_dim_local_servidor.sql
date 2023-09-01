-- Table: public.dim_local

-- DROP TABLE IF EXISTS public.dim_local;

CREATE TABLE IF NOT EXISTS public.dim_local_servidor
(
    pk_local_servidor integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    estado character(32) COLLATE pg_catalog."default",
    sigla_estado character(2) COLLATE pg_catalog."default",
    regiao character(16) COLLATE pg_catalog."default",
    CONSTRAINT dim_local_servidor_pkey PRIMARY KEY (pk_local_servidor),
    CONSTRAINT dim_local_servidor_unique UNIQUE (estado, sigla_estado, regiao)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_local_servidor
    OWNER to postgres;