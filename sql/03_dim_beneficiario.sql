-- Table: public.dim_beneficiario

-- DROP TABLE IF EXISTS public.dim_beneficiario;

CREATE TABLE IF NOT EXISTS public.dim_beneficiario
(
    pk_beneficiario integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    sexo character(16) COLLATE pg_catalog."default" NOT NULL,
    nascimento date NOT NULL,
    idade integer,
    CONSTRAINT dim_beneficiario_pkey PRIMARY KEY (pk_beneficiario),
    CONSTRAINT dim_beneficiario_unique UNIQUE (sexo, nascimento, idade)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_beneficiario
    OWNER to postgres;