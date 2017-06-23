-- Table: gldata.colonoscopies

-- DROP TABLE gldata.colonoscopies;

CREATE TABLE gldata.colonoscopies
(
    rowindex integer NOT NULL DEFAULT nextval('gldata.colonoscopies_rowindex_seq'::regclass),
    patient_id character varying COLLATE pg_catalog."default" NOT NULL,
    encounter_date date NOT NULL,
    total_polyps_reported integer,
    index boolean,
    pathology_encounter character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT colonoscopies_pkey PRIMARY KEY (rowindex),
    CONSTRAINT patientid_fk FOREIGN KEY (patient_id)
        REFERENCES gldata.patients (patient_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE gldata.colonoscopies
    OWNER to smaden;
