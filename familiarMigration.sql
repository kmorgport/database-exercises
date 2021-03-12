USE familiars;

DROP TABLE IF EXISTS players;

CREATE TABLE `players` (
                           `player_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                           `name` varchar(100) NOT NULL,
                           `progress` int NOT NULL,
                           `money` int NOT NULL,
                           `computer` int NOT NULL,
                           PRIMARY KEY (player_id)
);

DROP TABLE IF EXISTS teammates;

CREATE TABLE `teammates`(
                            `unique_Id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                            `trainer_Id` int NOT NULL,
                            `species_Id` int NOT NULL,
                            `healthIV` int NOT NULL,
                            `attackIV` int NOT NULL,
                            `defenseIV` int NOT NULL,
                            `specAttackIV` int NOT NULL,
                            `specDefenseIV` int NOT NULL,
                            `speedIV` int NOT NULL,
                            `healthEV` int NOT NULL,
                            `attackEV` int NOT NULL,
                            `defenseEV` int NOT NULL,
                            `specAttackEV` int NOT NULL,
                            `specDefenseEV` int NOT NULL,
                            `speedEV` int NOT NULL,
                            `exp` int NOT NULL,
                            `move1` int NOT NULL,
                            `move2` int,
                            `move3` int,
                            `move4` int,
                            `team_Active` int NOT NULL,
                            `team_Order` int NOT NULL,
                            `box_No` int NOT NULL,
                            PRIMARY KEY (unique_Id),
                            FOREIGN KEY (trainer_Id) REFERENCES players(player_id)
                        ON DELETE CASCADE,
                            FOREIGN KEY (species_Id) REFERENCES species(species_ID),
                            FOREIGN KEY (move1) REFERENCES moves(move_ID),
                            FOREIGN KEY (move2) REFERENCES moves(move_ID),
                            FOREIGN KEY (move3) REFERENCES moves(move_ID),
                            FOREIGN KEY (move4) REFERENCES moves(move_ID)

);

DROP TABLE IF EXISTS species;
CREATE TABLE `species`(
                          `species_ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
                          `name` varchar(100) NOT NULL,
                          `base_Health` int NOT NULL,
                          `base_Attack` int NOT NULL,
                          `base_Defense` int NOT NULL,
                          `base_SpecAttack` int NOT NULL,
                          `base_SpecDefense` int NOT NULL,
                          `base_Speed` int NOT NULL,
                          `base_Exp` int NOT NULL,
                          `type1` varchar(100) NOT NULL,
                          `type2` varchar(100),
                          'next_Stage' varchar(100),
                          'nextStage_Level' int,
                          `exp_Group` varchar(100) NOT NULL,
                          PRIMARY KEY (species_ID)
);

DROP TABLE IF EXISTS moves;
CREATE TABLE `moves`(
                        `move_ID` int UNSIGNED NOT NULL AUTO_INCREMENT,
                        `name` varchar(100) NOT NULL,
                        `type1` varchar(100) NOT NULL,
                        `macro_Cat` varchar(100) NOT NULL,
                        `micro_Cat` varchar(100) NOT NULL,
                        `priority` int NOT NULL,
                        `use_Points` int NOT NULL,
                        `accuracy` int NOT NULL,
                        `power` int NOT NULL,
                        `buffDebuff_Int` int NOT NULL,
                        `buffDebuff_Type` varchar(100) NOT NULL,
                        `buffDebuff_Chance` int NOT NULL,
                        `status` varchar(100) NOT NULL,
                        `status_Chance` int NOT NULL,
                        PRIMARY KEY (move_ID)
);