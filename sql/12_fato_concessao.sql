-- Table: public.fato_concessao

-- DROP TABLE IF EXISTS public.fato_concessao;

CREATE TABLE IF NOT EXISTS public.fato_concessao
(
    fk_tempo integer NOT NULL,
    fk_beneficiario integer NOT NULL,
    fk_especie integer NOT NULL,
    fk_filiacao integer NOT NULL,
    fk_cid integer NOT NULL,
    fk_clientela integer NOT NULL,
    fk_despacho integer NOT NULL,
    fk_local_beneficiario integer NOT NULL,
    fk_local_servidor integer NOT NULL,
    quantidade_concessoes integer,
    CONSTRAINT fato_concessao_pk PRIMARY KEY (fk_tempo, fk_beneficiario, fk_especie, fk_filiacao, fk_cid, fk_clientela, fk_despacho, fk_local_beneficiario, fk_local_servidor),
    CONSTRAINT fato_concessao_beneficiario_fk FOREIGN KEY (fk_beneficiario)
        REFERENCES public.dim_beneficiario (pk_beneficiario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fato_concessao_cid_fk FOREIGN KEY (fk_cid)
        REFERENCES public.dim_cid (pk_cid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fato_concessao_clientela_fk FOREIGN KEY (fk_clientela)
        REFERENCES public.dim_clientela (pk_clientela) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fato_concessao_despacho_fk FOREIGN KEY (fk_despacho)
        REFERENCES public.dim_despacho (pk_despacho) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fato_concessao_especie_fk FOREIGN KEY (fk_especie)
        REFERENCES public.dim_especie (pk_especie) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fato_concessao_filiacao_fk FOREIGN KEY (fk_filiacao)
        REFERENCES public.dim_filiacao (pk_filiacao) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fato_concessao_local_beneficiario_fk FOREIGN KEY (fk_local_beneficiario)
        REFERENCES public.dim_local_beneficiario (pk_local_beneficiario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fato_concessao_local_servidor_fk FOREIGN KEY (fk_local_servidor)
        REFERENCES public.dim_local_servidor (pk_local_servidor) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fato_concessao_tempo_fk FOREIGN KEY (fk_tempo)
        REFERENCES public.dim_tempo (pk_tempo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.fato_concessao
    OWNER to postgres;
