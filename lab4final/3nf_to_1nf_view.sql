CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `1nf_view` AS
    SELECT 
        `3t`.`Championship_year` AS `Championship_year`,
        `3t`.`Country` AS `Country`,
        `3t`.`Team` AS `Team`,
        `3q`.`Method_of_qualification` AS `Method_of_qualification`,
        `3q`.`Date_of_qualification` AS `Date_of_qualification`,
        `3q`.`Finals_appearance` AS `Finals_appearance`,
        `3c`.`Consecutive_appearance` AS `Consecutive_appearance`,
        `3c`.`Consecutive_appearance_last` AS `Consecutive_appearance_last`,
        `3b`.`Previous_best_performance` AS `Previous_best_performance`,
        `3b`.`Previous_best_performance_year` AS `Previous_best_performance_year`,
        `3t`.`FIFA_Ranking` AS `FIFA_Ranking`,
        `3b`.`id` AS `id`
    FROM
        (((`3nf_consecutive_appearance_t` `3c`
        JOIN `3nf_teams_t` `3t` ON ((`3c`.`id` = `3t`.`Team`)))
        JOIN `3nf_best_performance_t` `3b` ON ((`3t`.`Team` = `3b`.`team`)))
        JOIN `3nf_qualification_t` `3q` ON ((`3t`.`id_qualification` = `3q`.`id`)));
