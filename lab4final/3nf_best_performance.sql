CREATE TABLE `3nf_best_performance_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team` varchar(50) NOT NULL,
  `Previous_best_performance` text,
  `Previous_best_performance_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`team`) REFERENCES `3nf_teams_t` (`Team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
SELECT * FROM `3nf_best_performance`;
