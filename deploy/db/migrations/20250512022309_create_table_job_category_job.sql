-- migrate:up
CREATE TABLE job_category_job (
    job_id integer NOT NULL,
    job_category_id integer NOT NULL,
    CONSTRAINT pk_job_category_job PRIMARY KEY (job_id, job_category_id),
    CONSTRAINT fk_job_category_job_job FOREIGN KEY (job_id) REFERENCES job (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_job_category_job_category FOREIGN KEY (job_category_id) REFERENCES job_category (id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- migrate:down

