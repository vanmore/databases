CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf`.`2nf_consecutive_appearance` AS
    SELECT DISTINCT
        `1nf`.`1nf_teams`.`Team` AS `id`,
        `1nf`.`1nf_teams`.`Consecutive_appearance` AS `Consecutive_appearance`,
        `1nf`.`1nf_teams`.`Consecutive_appearance_last` AS `Consecutive_appearance_last`
    FROM
        `1nf`.`1nf_teams`
