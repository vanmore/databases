CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf`.`3nf_consecutive_appearance` AS
    SELECT 
        `2nf_consecutive_appearance`.`id` AS `id`,
        `2nf_consecutive_appearance`.`Consecutive_appearance` AS `Consecutive_appearance`,
        `2nf_consecutive_appearance`.`Consecutive_appearance_last` AS `Consecutive_appearance_last`
    FROM
        `1nf`.`2nf_consecutive_appearance`
