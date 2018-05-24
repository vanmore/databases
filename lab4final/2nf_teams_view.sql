CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf`.`2nf_teams` AS
    SELECT DISTINCT
        `1nf`.`1nf_teams`.`Championship_year` AS `Championship_year`,
        `1nf`.`1nf_teams`.`Country` AS `Country`,
        `1nf`.`1nf_teams`.`Team` AS `Team`,
        `1nf`.`1nf_teams`.`Method_of_qualification` AS `Method_of_qualification`,
        `1nf`.`1nf_teams`.`Date_of_qualification` AS `Date_of_qualification`,
        `1nf`.`1nf_teams`.`Finals_appearance` AS `Finals_appearance`,
        `1nf`.`1nf_teams`.`FIFA_Ranking` AS `FIFA_Ranking`
    FROM
        `1nf`.`1nf_teams`
