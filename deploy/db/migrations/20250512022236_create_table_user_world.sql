-- migrate:up
CREATE TABLE user_world (
    user_id integer NOT NULL,
    world_id integer NOT NULL,
    CONSTRAINT pk_user_world PRIMARY KEY (user_id, world_id),
    CONSTRAINT fk_user_world_user FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_user_world_world FOREIGN KEY (world_id) REFERENCES world (id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- migrate:down

