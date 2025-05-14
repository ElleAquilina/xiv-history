-- migrate:up
INSERT INTO city (id, name)
VALUES (1, 'Limsa Lominsa'),
       (2, 'Gridania'),
       (3, 'Ul''dah'),
       (4, 'Ishgard'),
       (7, 'Kugane'),
       (10, 'Crystarium'),
       (12, 'Old Sharlayan'),
       (14, 'Tuliyollal');

-- migrate:down

