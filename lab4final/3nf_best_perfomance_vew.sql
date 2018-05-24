CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf`.`3nf_best_performance` AS
    SELECT 
        `2nf_best_performance`.`team` AS `team`,
        `2nf_best_performance`.`Previous_best_performance` AS `Previous_best_performance`,
        `2nf_best_performance`.`Previous_best_performance_year` AS `Previous_best_performance_year`
    FROM
        `1nf`.`2nf_best_performance`
