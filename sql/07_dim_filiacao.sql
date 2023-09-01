-- Table: public.dim_filiacao

-- DROP TABLE IF EXISTS public.dim_filiacao;

CREATE TABLE IF NOT EXISTS public.dim_filiacao
(
    pk_filiacao integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    descricao character varying(64) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dim_filiacao_pkey PRIMARY KEY (pk_filiacao),
    CONSTRAINT dim_filiacao_unique UNIQUE (descricao)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_filiacao
    OWNER to postgres;