-- migrate:up
CREATE TABLE job_category (
    id integer NOT NULL,
    name varchar(100) NOT NULL,
    CONSTRAINT pk_job_category PRIMARY KEY (id)
);

-- migrate:down

