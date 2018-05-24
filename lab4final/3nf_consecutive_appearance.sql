CREATE TABLE `3nf_consecutive_appearance_t` (
  `id` varchar(50) NOT NULL,
  `Consecutive_appearance` int(11) NOT NULL,
  `Consecutive_appearance_last` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
SELECT * FROM `3nf_consecutive_appearance`;
