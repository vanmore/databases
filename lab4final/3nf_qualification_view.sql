CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf`.`3nf_qualification` AS
    SELECT 
        `2nf_teams`.`Team` AS `Team`,
        `2nf_teams`.`Method_of_qualification` AS `Method_of_qualification`,
        `2nf_teams`.`Date_of_qualification` AS `Date_of_qualification`,
        `2nf_teams`.`Finals_appearance` AS `Finals_appearance`
    FROM
        `1nf`.`2nf_teams`
