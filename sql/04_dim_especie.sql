-- Table: public.dim_especie

-- DROP TABLE IF EXISTS public.dim_especie;

CREATE TABLE IF NOT EXISTS public.dim_especie
(
    pk_especie integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    descricao character varying(128) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_especie_pkey PRIMARY KEY (pk_especie),
    CONSTRAINT dim_especie_unique UNIQUE (descricao)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_especie
    OWNER to postgres;