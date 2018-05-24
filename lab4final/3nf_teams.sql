CREATE TABLE `3nf_teams_t` (
  `Championship_year` int(11) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Team` varchar(50) NOT NULL,
  `id_qualification` int(11) NOT NULL AUTO_INCREMENT,
  `FIFA_Ranking` int(11) NOT NULL,
  PRIMARY KEY (`Championship_year`,`Country`),
FOREIGN KEY (`Team`) REFERENCES `3nf_consecutive_appearance_t` (`id`),
 FOREIGN KEY (`id_qualification`) REFERENCES `3nf_qualification_t` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8
SELECT * FROM `3nf_teams`;
