-- migrate:up
CREATE TABLE users (
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    email citext UNIQUE NOT NULL,
    password varchar(100) NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY (id)
);

-- migrate:down

