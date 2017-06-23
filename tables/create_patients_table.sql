-- Table: gldata.patients

-- DROP TABLE gldata.patients;

CREATE TABLE gldata.patients
(
    rowindex integer NOT NULL DEFAULT nextval('gldata.patients_rowindex_seq'::regclass),
    patient_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    dob date,
    CONSTRAINT patients_pkey PRIMARY KEY (rowindex, patient_id),
    CONSTRAINT patientid_unique UNIQUE (patient_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE gldata.patients
    OWNER to smaden;
