-- Table: public.dim_tempo

-- DROP TABLE IF EXISTS public.dim_tempo;

CREATE TABLE IF NOT EXISTS public.dim_tempo
(
    pk_tempo integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    mes integer NOT NULL,
    trimestre integer NOT NULL,
    semestre integer NOT NULL,
    ano integer NOT NULL,
    data date NOT NULL,
    CONSTRAINT dim_tempo_pkey PRIMARY KEY (pk_tempo),
    CONSTRAINT dim_tempo_unique UNIQUE (mes, trimestre, semestre, ano)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dim_tempo
    OWNER to postgres;