-- Table: public.rel_cid_grupos

-- DROP TABLE IF EXISTS public.rel_cid_grupos;

CREATE TABLE IF NOT EXISTS public.rel_cid_grupos
(
    "PK_cid_grupo" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    grupo_tipo character varying(1) COLLATE pg_catalog."default" NOT NULL,
    inicio integer NOT NULL,
    fim integer NOT NULL,
    grupo_descricao character varying(256) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT rel_cid_grupos_pkey PRIMARY KEY ("PK_cid_grupo"),
    CONSTRAINT rel_cid_grupos_unique UNIQUE (grupo_tipo, inicio, fim, grupo_descricao)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rel_cid_grupos
    OWNER to postgres;