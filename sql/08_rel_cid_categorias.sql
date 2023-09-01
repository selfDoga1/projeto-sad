-- Table: public.rel_cid_categorias

-- DROP TABLE IF EXISTS public.rel_cid_categorias;

CREATE TABLE IF NOT EXISTS public.rel_cid_categorias
(
    pk_categoria integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo character varying(1) COLLATE pg_catalog."default" NOT NULL,
    codigo integer NOT NULL,
    descricao character varying(256) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT rel_cid_categorias_pkey PRIMARY KEY (pk_categoria),
    CONSTRAINT rel_cid_categorias_unique UNIQUE (tipo, codigo, descricao)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rel_cid_categorias
    OWNER to postgres;