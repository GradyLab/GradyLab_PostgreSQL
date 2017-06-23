-- Table: gldata.polyps

-- DROP TABLE gldata.polyps;

CREATE TABLE gldata.polyps
(
    rowindex integer NOT NULL DEFAULT nextval('gldata.polyps_rowindex_seq'::regclass),
    patient_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    encounter_date date NOT NULL,
    polyp_id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    polyp_size integer,
    pathology_polyp character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT polyps_pkey PRIMARY KEY (rowindex, polyp_id),
    CONSTRAINT patientid_fk FOREIGN KEY (patient_id)
        REFERENCES gldata.patients (patient_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE gldata.polyps
    OWNER to smaden;
