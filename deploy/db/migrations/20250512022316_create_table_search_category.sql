-- migrate:up
CREATE TABLE search_category (
    id integer NOT NULL,
    parent_id integer,
    position integer NOT NULL,
    name varchar(100) NOT NULL,
    icon integer NOT NULL,
    job_id integer,
    CONSTRAINT pk_category PRIMARY KEY (id),
    CONSTRAINT fk_category_parent FOREIGN KEY (parent_id) REFERENCES search_category (id),
    CONSTRAINT fk_category_job FOREIGN KEY (job_id) REFERENCES job (id)
);

-- migrate:down

