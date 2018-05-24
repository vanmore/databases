CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf`.`3nf_teams` AS
    SELECT 
        `2nf_teams`.`Championship_year` AS `Championship_year`,
        `2nf_teams`.`Country` AS `Country`,
        `2nf_teams`.`Team` AS `Team`,
        `2nf_teams`.`FIFA_Ranking` AS `FIFA_Ranking`
    FROM
        `1nf`.`2nf_teams`
