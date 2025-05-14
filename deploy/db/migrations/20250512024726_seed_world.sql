-- migrate:up
-- Materia (Oceania)
INSERT INTO world (id, datacenter_id, name)
VALUES (21, (SELECT id from datacenter WHERE name = 'Materia'), 'Ravana'),
       (22, (SELECT id from datacenter WHERE name = 'Materia'), 'Bismarck'),
       (86, (SELECT id from datacenter WHERE name = 'Materia'), 'Sephirot'),
       (87, (SELECT id from datacenter WHERE name = 'Materia'), 'Sophia'),
       (88, (SELECT id from datacenter WHERE name = 'Materia'), 'Zurvan');

-- Mana (Japan)
INSERT INTO world (id, datacenter_id, name)
VALUES (23, (SELECT id from datacenter WHERE name = 'Mana'), 'Asura'),
       (28, (SELECT id from datacenter WHERE name = 'Mana'), 'Pandaemonium'),
       (44, (SELECT id from datacenter WHERE name = 'Mana'), 'Anima'),
       (47, (SELECT id from datacenter WHERE name = 'Mana'), 'Hades'),
       (48, (SELECT id from datacenter WHERE name = 'Mana'), 'Ixion'),
       (61, (SELECT id from datacenter WHERE name = 'Mana'), 'Titan'),
       (70, (SELECT id from datacenter WHERE name = 'Mana'), 'Chocobo'),
       (96, (SELECT id from datacenter WHERE name = 'Mana'), 'Masamune');

-- Meteor (Japan)
INSERT INTO world (id, datacenter_id, name)
VALUES (24, (SELECT id from datacenter WHERE name = 'Meteor'), 'Belias'),
       (29, (SELECT id from datacenter WHERE name = 'Meteor'), 'Shinryu'),
       (30, (SELECT id from datacenter WHERE name = 'Meteor'), 'Unicorn'),
       (31, (SELECT id from datacenter WHERE name = 'Meteor'), 'Yojimbo'),
       (32, (SELECT id from datacenter WHERE name = 'Meteor'), 'Zeromus'),
       (52, (SELECT id from datacenter WHERE name = 'Meteor'), 'Valefor'),
       (60, (SELECT id from datacenter WHERE name = 'Meteor'), 'Ramuh'),
       (82, (SELECT id from datacenter WHERE name = 'Meteor'), 'Mandragora');

-- Elemental (Japan)
INSERT INTO world (id, datacenter_id, name)
VALUES (45, (SELECT id from datacenter WHERE name = 'Elemental'), 'Carbuncle'),
       (49, (SELECT id from datacenter WHERE name = 'Elemental'), 'Kujata'),
       (50, (SELECT id from datacenter WHERE name = 'Elemental'), 'Typhon'),
       (58, (SELECT id from datacenter WHERE name = 'Elemental'), 'Garuda'),
       (68, (SELECT id from datacenter WHERE name = 'Elemental'), 'Atomos'),
       (72, (SELECT id from datacenter WHERE name = 'Elemental'), 'Tonberry'),
       (90, (SELECT id from datacenter WHERE name = 'Elemental'), 'Aegis'),
       (94, (SELECT id from datacenter WHERE name = 'Elemental'), 'Gungnir');

-- Gaia (Japan)
INSERT INTO world (id, datacenter_id, name)
VALUES (43, (SELECT id from datacenter WHERE name = 'Gaia'), 'Alexander'),
       (46, (SELECT id from datacenter WHERE name = 'Gaia'), 'Fenrir'),
       (51, (SELECT id from datacenter WHERE name = 'Gaia'), 'Ultima'),
       (59, (SELECT id from datacenter WHERE name = 'Gaia'), 'Ifrit'),
       (69, (SELECT id from datacenter WHERE name = 'Gaia'), 'Bahamut'),
       (76, (SELECT id from datacenter WHERE name = 'Gaia'), 'Tiamat'),
       (92, (SELECT id from datacenter WHERE name = 'Gaia'), 'Durandal'),
       (98, (SELECT id from datacenter WHERE name = 'Gaia'), 'Ridill');

-- Aether (North-America)
INSERT INTO world (id, datacenter_id, name)
VALUES (40, (SELECT id from datacenter WHERE name = 'Aether'), 'Jenova'),
       (54, (SELECT id from datacenter WHERE name = 'Aether'), 'Faerie'),
       (57, (SELECT id from datacenter WHERE name = 'Aether'), 'Siren'),
       (63, (SELECT id from datacenter WHERE name = 'Aether'), 'Gilgamesh'),
       (65, (SELECT id from datacenter WHERE name = 'Aether'), 'Midgardsormr'),
       (73, (SELECT id from datacenter WHERE name = 'Aether'), 'Adamantoise'),
       (79, (SELECT id from datacenter WHERE name = 'Aether'), 'Cactuar'),
       (99, (SELECT id from datacenter WHERE name = 'Aether'), 'Sargatanas');

-- Primal (North-America)
INSERT INTO world (id, datacenter_id, name)
VALUES (35, (SELECT id from datacenter WHERE name = 'Primal'), 'Famfrit'),
       (53, (SELECT id from datacenter WHERE name = 'Primal'), 'Exodus'),
       (55, (SELECT id from datacenter WHERE name = 'Primal'), 'Lamia'),
       (64, (SELECT id from datacenter WHERE name = 'Primal'), 'Leviathan'),
       (77, (SELECT id from datacenter WHERE name = 'Primal'), 'Ultros'),
       (78, (SELECT id from datacenter WHERE name = 'Primal'), 'Behemoth'),
       (93, (SELECT id from datacenter WHERE name = 'Primal'), 'Excalibur'),
       (95, (SELECT id from datacenter WHERE name = 'Primal'), 'Hyperion');

-- Chaos (Europe)
INSERT INTO world (id, datacenter_id, name)
VALUES (39, (SELECT id from datacenter WHERE name = 'Chaos'), 'Omega'),
       (71, (SELECT id from datacenter WHERE name = 'Chaos'), 'Moogle'),
       (80, (SELECT id from datacenter WHERE name = 'Chaos'), 'Cerberus'),
       (83, (SELECT id from datacenter WHERE name = 'Chaos'), 'Louisoix'),
       (85, (SELECT id from datacenter WHERE name = 'Chaos'), 'Spriggan'),
       (97, (SELECT id from datacenter WHERE name = 'Chaos'), 'Ragnarok'),
       (400, (SELECT id from datacenter WHERE name = 'Chaos'), 'Sagittarius'),
       (401, (SELECT id from datacenter WHERE name = 'Chaos'), 'Phantom');

-- Light (Europe)
INSERT INTO world (id, datacenter_id, name)
VALUES (33, (SELECT id from datacenter WHERE name = 'Light'), 'Twintania'),
       (36, (SELECT id from datacenter WHERE name = 'Light'), 'Lich'),
       (42, (SELECT id from datacenter WHERE name = 'Light'), 'Zodiark'),
       (56, (SELECT id from datacenter WHERE name = 'Light'), 'Phoenix'),
       (66, (SELECT id from datacenter WHERE name = 'Light'), 'Odin'),
       (67, (SELECT id from datacenter WHERE name = 'Light'), 'Shiva'),
       (402, (SELECT id from datacenter WHERE name = 'Light'), 'Alpha'),
       (403, (SELECT id from datacenter WHERE name = 'Light'), 'Raiden');

-- Crystal (North-America)
INSERT INTO world (id, datacenter_id, name)
VALUES (34, (SELECT id from datacenter WHERE name = 'Crystal'), 'Brynhildr'),
       (37, (SELECT id from datacenter WHERE name = 'Crystal'), 'Mateus'),
       (41, (SELECT id from datacenter WHERE name = 'Crystal'), 'Zalera'),
       (62, (SELECT id from datacenter WHERE name = 'Crystal'), 'Diabolos'),
       (74, (SELECT id from datacenter WHERE name = 'Crystal'), 'Coeurl'),
       (75, (SELECT id from datacenter WHERE name = 'Crystal'), 'Malboro'),
       (81, (SELECT id from datacenter WHERE name = 'Crystal'), 'Goblin'),
       (91, (SELECT id from datacenter WHERE name = 'Crystal'), 'Balmung');

-- Dynamis (North-America)
INSERT INTO world (id, datacenter_id, name)
VALUES (404, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Marilith'),
       (405, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Seraph'),
       (406, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Halicarnassus'),
       (407, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Maduin'),
       (408, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Cuchulainn'),
       (409, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Kraken'),
       (410, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Rafflesia'),
       (411, (SELECT id from datacenter WHERE name = 'Dynamis'), 'Golem');

-- Chocobo (China)
INSERT INTO world (id, datacenter_id, name)
VALUES (1042, (SELECT id from datacenter WHERE name = '陆行鸟'), '拉诺西亚'),
       (1044, (SELECT id from datacenter WHERE name = '陆行鸟'), '幻影群岛'),
       (1060, (SELECT id from datacenter WHERE name = '陆行鸟'), '萌芽池'),
       (1081, (SELECT id from datacenter WHERE name = '陆行鸟'), '神意之地'),
       (1167, (SELECT id from datacenter WHERE name = '陆行鸟'), '红玉海'),
       (1173, (SELECT id from datacenter WHERE name = '陆行鸟'), '宇宙和音'),
       (1174, (SELECT id from datacenter WHERE name = '陆行鸟'), '沃仙曦染'),
       (1175, (SELECT id from datacenter WHERE name = '陆行鸟'), '晨曦王座');

-- Moogle (China)
INSERT INTO world (id, datacenter_id, name)
VALUES (1076, (SELECT id from datacenter WHERE name = '莫古力'), '白金幻象'),
       (1113, (SELECT id from datacenter WHERE name = '莫古力'), '旅人栈桥'),
       (1121, (SELECT id from datacenter WHERE name = '莫古力'), '拂晓之间'),
       (1166, (SELECT id from datacenter WHERE name = '莫古力'), '龙巢神殿'),
       (1170, (SELECT id from datacenter WHERE name = '莫古力'), '潮风亭'),
       (1171, (SELECT id from datacenter WHERE name = '莫古力'), '神拳痕'),
       (1172, (SELECT id from datacenter WHERE name = '莫古力'), '白银乡'),
       (1176, (SELECT id from datacenter WHERE name = '莫古力'), '梦羽宝境');

-- Chubby Cat (China)
INSERT INTO world (id, datacenter_id, name)
VALUES (1043, (SELECT id from datacenter WHERE name = '猫小胖'), '紫水栈桥'),
       (1045, (SELECT id from datacenter WHERE name = '猫小胖'), '摩杜纳'),
       (1106, (SELECT id from datacenter WHERE name = '猫小胖'), '静语庄园'),
       (1169, (SELECT id from datacenter WHERE name = '猫小胖'), '延夏'),
       (1177, (SELECT id from datacenter WHERE name = '猫小胖'), '海猫茶屋'),
       (1178, (SELECT id from datacenter WHERE name = '猫小胖'), '柔风海湾'),
       (1179, (SELECT id from datacenter WHERE name = '猫小胖'), '琥珀原');

-- Dulia Chai (China)
INSERT INTO world (id, datacenter_id, name)
VALUES (1064, (SELECT id from datacenter WHERE name = '豆豆柴'), '月牙湾'),
       (1068, (SELECT id from datacenter WHERE name = '豆豆柴'), '黄金谷'),
       (1180, (SELECT id from datacenter WHERE name = '豆豆柴'), '太阳海岸'),
       (1183, (SELECT id from datacenter WHERE name = '豆豆柴'), '银泪湖'),
       (1186, (SELECT id from datacenter WHERE name = '豆豆柴'), '伊修加德'),
       (1187, (SELECT id from datacenter WHERE name = '豆豆柴'), '雪松原'),
       (1192, (SELECT id from datacenter WHERE name = '豆豆柴'), '水晶塔'),
       (1201, (SELECT id from datacenter WHERE name = '豆豆柴'), '红茶川');

-- Korea Servers
INSERT INTO world (id, datacenter_id, name)
VALUES (2075, (SELECT id from datacenter WHERE name = '한국'), '카벙클'),
       (2076, (SELECT id from datacenter WHERE name = '한국'), '초코보'),
       (2077, (SELECT id from datacenter WHERE name = '한국'), '모그리'),
       (2078, (SELECT id from datacenter WHERE name = '한국'), '톤베리'),
       (2080, (SELECT id from datacenter WHERE name = '한국'), '펜리르');


-- migrate:down

