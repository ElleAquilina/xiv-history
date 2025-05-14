-- migrate:up
INSERT INTO region (name)
VALUES ('North-America'),
       ('Europe'),
       ('Oceania'),
       ('Japan'),
       ('中国'),
       ('한국');

-- migrate:down

