-- migrate:up
CREATE TABLE job (
    id integer NOT NULL,
    name varchar(100) NOT NULL,
    abbreviation varchar(10),
    CONSTRAINT pk_job PRIMARY KEY (id)
);

-- migrate:down

