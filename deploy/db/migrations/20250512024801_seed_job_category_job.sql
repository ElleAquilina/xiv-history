-- migrate:up
-- Inserting associations for All Classes category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (7, 1),
       (8, 1),
       (9, 1),
       (10, 1),
       (11, 1),
       (12, 1),
       (13, 1),
       (14, 1),
       (15, 1),
       (16, 1),
       (17, 1),
       (18, 1),
       (19, 1),
       (20, 1),
       (21, 1),
       (22, 1),
       (23, 1),
       (24, 1),
       (25, 1),
       (26, 1),
       (27, 1),
       (28, 1),
       (29, 1),
       (30, 1),
       (31, 1),
       (32, 1),
       (33, 1),
       (34, 1),
       (35, 1),
       (36, 1),
       (37, 1),
       (38, 1),
       (39, 1),
       (40, 1),
       (41, 1),
       (42, 1);

-- Inserting association for CRP category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (8, 9);

-- Inserting association for BSM category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (9, 10);

-- Inserting association for ARM category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (10, 11);

-- Inserting association for GSM category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (11, 12);

-- Inserting association for LTW category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (12, 13);

-- Inserting association for WVR category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (13, 14);

-- Inserting association for ALC category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (14, 15);

-- Inserting association for CUL category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (15, 16);

-- Inserting association for MIN category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (16, 17);

-- Inserting association for BTN category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (17, 18);

-- Inserting association for FSH category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (18, 19);

-- Inserting association for SCH category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (28, 29);

-- Inserting associations for Disciple of War
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 30),  -- GLA -> Disciple of War
       (2, 30),  -- PGL -> Disciple of War
       (3, 30),  -- MRD -> Disciple of War
       (4, 30),  -- LNC -> Disciple of War
       (5, 30),  -- ARC -> Disciple of War
       (19, 30), -- PLD -> Disciple of War
       (20, 30), -- MNK -> Disciple of War
       (21, 30), -- WAR -> Disciple of War
       (22, 30), -- DRG -> Disciple of War
       (23, 30), -- BRD -> Disciple of War
       (29, 30), -- ROG -> Disciple of War
       (30, 30), -- NIN -> Disciple of War
       (31, 30), -- MCH -> Disciple of War
       (32, 30), -- DRK -> Disciple of War
       (34, 30), -- SAM -> Disciple of War
       (37, 30), -- GNB -> Disciple of War
       (38, 30), -- DNC -> Disciple of War
       (39, 30), -- RPR -> Disciple of War
       (41, 30);
-- VPR -> Disciple of War

-- Inserting associations for Disciple of Magic
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (6, 31),  -- CNJ -> Disciple of Magic
       (7, 31),  -- THM -> Disciple of Magic
       (24, 31), -- WHM -> Disciple of Magic
       (25, 31), -- BLM -> Disciple of Magic
       (26, 31), -- ACN -> Disciple of Magic
       (27, 31), -- SMN -> Disciple of Magic
       (28, 31), -- SCH -> Disciple of Magic
       (33, 31), -- AST -> Disciple of Magic
       (35, 31), -- RDM -> Disciple of Magic
       (36, 31), -- BLU -> Disciple of Magic
       (40, 31), -- SGE -> Disciple of Magic
       (42, 31);
-- PCT -> Disciple of Magic

-- Inserting associations for Disciple of the Land
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (16, 32), -- MIN -> Disciple of the Land
       (17, 32), -- BTN -> Disciple of the Land
       (18, 32);
-- FSH -> Disciple of the Land

-- Inserting associations for Disciple of the Hand
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (8, 33),  -- CRP -> Disciple of the Hand
       (9, 33),  -- BSM -> Disciple of the Hand
       (10, 33), -- ARM -> Disciple of the Hand
       (11, 33), -- GSM -> Disciple of the Hand
       (12, 33), -- LTW -> Disciple of the Hand
       (13, 33), -- WVR -> Disciple of the Hand
       (14, 33), -- ALC -> Disciple of the Hand
       (15, 33);
-- CUL -> Disciple of the Hand

-- Inserting associations for Disciples of War or Magic
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 34),  -- GLA -> Disciples of War or Magic
       (2, 34),  -- PGL -> Disciples of War or Magic
       (3, 34),  -- MRD -> Disciples of War or Magic
       (4, 34),  -- LNC -> Disciples of War or Magic
       (5, 34),  -- ARC -> Disciples of War or Magic
       (6, 34),  -- CNJ -> Disciples of War or Magic
       (7, 34),  -- THM -> Disciples of War or Magic
       (19, 34), -- PLD -> Disciples of War or Magic
       (20, 34), -- MNK -> Disciples of War or Magic
       (21, 34), -- WAR -> Disciples of War or Magic
       (22, 34), -- DRG -> Disciples of War or Magic
       (23, 34), -- BRD -> Disciples of War or Magic
       (24, 34), -- WHM -> Disciples of War or Magic
       (25, 34), -- BLM -> Disciples of War or Magic
       (26, 34), -- ACN -> Disciples of War or Magic
       (27, 34), -- SMN -> Disciples of War or Magic
       (28, 34), -- SCH -> Disciples of War or Magic
       (29, 34), -- ROG -> Disciples of War or Magic
       (30, 34), -- NIN -> Disciples of War or Magic
       (31, 34), -- MCH -> Disciples of War or Magic
       (32, 34), -- DRK -> Disciples of War or Magic
       (33, 34), -- AST -> Disciples of War or Magic
       (34, 34), -- SAM -> Disciples of War or Magic
       (35, 34), -- RDM -> Disciples of War or Magic
       (36, 34), -- BLU -> Disciples of War or Magic
       (37, 34), -- GNB -> Disciples of War or Magic
       (38, 34), -- DNC -> Disciples of War or Magic
       (39, 34), -- RPR -> Disciples of War or Magic
       (40, 34), -- SGE -> Disciples of War or Magic
       (41, 34), -- VPR -> Disciples of War or Magic
       (42, 34); -- PCT -> Disciples of War or Magic

-- Inserting association for GLA PLD category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 38),
       (19, 38);

-- Inserting association for PGL MNK category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (2, 41),
       (20, 41);

-- Inserting association for MRD WAR category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (3, 44),
       (21, 44);

-- Inserting association for LNC DRG category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (4, 47),
       (22, 47);

-- Inserting association for ARC BRD category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (5, 50),
       (23, 50);

-- Inserting association for CNJ WHM category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (6, 53),
       (24, 53);

-- Inserting association for THM BLM category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (7, 55),
       (25, 55);

-- Inserting association for GLA CNJ THM PLD WHM BML
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 56),
       (6, 56),
       (7, 56),
       (19, 56),
       (24, 56),
       (25, 56);

-- Inserting association for GLA THM PLD BLM
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 57),
       (7, 57),
       (19, 57),
       (25, 57);

-- Inserting association for GLA CNJ PLD WHM
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 58),
       (6, 58),
       (19, 58),
       (24, 58);

-- Inserting association for GLA MRD PLD WAR DRK GNB
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 59),
       (3, 59),
       (19, 59),
       (21, 59),
       (32, 59),
       (37, 59);

-- Inserting association for GLA MRD LNC PLD WAR DRG DRK GNB RPR
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (1, 60),
       (3, 60),
       (4, 60),
       (19, 60),
       (21, 60),
       (22, 60),
       (32, 60),
       (37, 60),
       (39, 60);

-- Inserting association for THM ACN BLM SMN RDM BLU PCT category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (7, 63),
       (26, 63),
       (25, 63),
       (27, 63),
       (35, 63),
       (36, 63),
       (42, 63);

-- Inserting association for CNJ WHM SCH AST SGE category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (6, 64),
       (24, 64),
       (28, 64),
       (33, 64),
       (40, 64);

-- Inserting association for Pugilist Monk Samurai category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (2, 65),
       (20, 65),
       (34, 65);

-- Inserting association for Archer Bard Machinist Dancer category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (5, 66),
       (23, 66),
       (31, 66),
       (38, 66);

-- Inserting association for Arcanist Summoner Scholar category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (26, 68),
       (27, 68),
       (28, 68);

-- Inserting association for Arcanist Summoner category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (26, 69),
       (27, 69);

-- Inserting association for Lancer Dragoon Reaper category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (4, 76),
       (22, 76),
       (39, 76);

-- Inserting association for Pugilist Lancer Monk Dragoon Samurai Reaper category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (2, 84),
       (4, 84),
       (20, 84),
       (22, 84),
       (34, 84),
       (39, 84);

-- Inserting association for Rogue Ninja category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (29, 93),
       (30, 93);

-- Inserting association for Machinist category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (31, 96);

-- Inserting association for Dark Knight category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (32, 98);

-- Inserting association for Astrologian category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (33, 99);

-- Inserting association for Pugilist Rogue Monk Ninja Samurai Viper category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (2, 102),
       (29, 102),
       (20, 102),
       (30, 102),
       (34, 102),
       (41, 102);

-- Inserting association for Rogue Ninja Viper category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (29, 103),
       (30, 103),
       (41, 103);

-- Inserting association for Arcanist Rogue Bard Ninja Machinist Dancer Viper category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (26, 105),
       (29, 105),
       (23, 105),
       (30, 105),
       (31, 105),
       (38, 105),
       (41, 105);

-- Inserting association for Samurai category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (34, 111);

-- Inserting association for Red Mage category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (35, 112);

-- Inserting association for Gunbreaker category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (37, 149);

-- Inserting association for Dancer category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (38, 150);

-- Inserting association for Reaper category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (39, 180);

-- Inserting association for Sage category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (40, 181);

-- Inserting association for Viper category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (41, 196);

-- Inserting association for Pictomancer category
INSERT INTO job_category_job (job_id, job_category_id)
VALUES (42, 197);

-- migrate:down

