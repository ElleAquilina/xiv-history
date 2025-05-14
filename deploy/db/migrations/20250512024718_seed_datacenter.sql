-- migrate:up
INSERT INTO datacenter (region_id, name)
VALUES ((SELECT id FROM region WHERE name = 'North-America'), 'Aether'),
       ((SELECT id FROM region WHERE name = 'North-America'), 'Crystal'),
       ((SELECT id FROM region WHERE name = 'North-America'), 'Dynamis'),
       ((SELECT id FROM region WHERE name = 'North-America'), 'Primal'),
       ((SELECT id FROM region WHERE name = 'Europe'), 'Chaos'),
       ((SELECT id FROM region WHERE name = 'Europe'), 'Light'),
       ((SELECT id FROM region WHERE name = 'Oceania'), 'Materia'),
       ((SELECT id FROM region WHERE name = 'Japan'), 'Elemental'),
       ((SELECT id FROM region WHERE name = 'Japan'), 'Gaia'),
       ((SELECT id FROM region WHERE name = 'Japan'), 'Mana'),
       ((SELECT id FROM region WHERE name = 'Japan'), 'Meteor'),
       ((SELECT id FROM region WHERE name = '中国'), '陆行鸟'),
       ((SELECT id FROM region WHERE name = '中国'), '莫古力'),
       ((SELECT id FROM region WHERE name = '中国'), '猫小胖'),
       ((SELECT id FROM region WHERE name = '中国'), '豆豆柴'),
       ((SELECT id FROM region WHERE name = '한국'), '한국');


-- migrate:down

