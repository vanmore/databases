CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf`.`2nf_best_performance` AS
    SELECT 
        `1nf`.`1nf_teams`.`Team` AS `team`,
        `1nf`.`1nf_teams`.`Previous_best_performance` AS `Previous_best_performance`,
        `1nf`.`1nf_teams`.`Previous_best_performance_year` AS `Previous_best_performance_year`
    FROM
        `1nf`.`1nf_teams`
