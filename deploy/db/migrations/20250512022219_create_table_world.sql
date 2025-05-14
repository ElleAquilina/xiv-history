-- migrate:up
CREATE TABLE world (
    id integer NOT NULL,
    datacenter_id integer NOT NULL,
    name varchar(50) NOT NULL,
    CONSTRAINT pk_world PRIMARY KEY (id),
    CONSTRAINT fk_world_datacenter FOREIGN KEY (datacenter_id) REFERENCES datacenter (id)
);

-- migrate:down

