-- migrate:up
CREATE TABLE city (
    id integer NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT pk_city PRIMARY KEY (id)
);

-- migrate:down

