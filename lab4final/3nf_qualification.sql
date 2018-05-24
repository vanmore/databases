CREATE TABLE `3nf_qualification_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Method_of_qualification` varchar(50) NOT NULL,
  `Date_of_qualification` date NOT NULL,
  `Finals_appearance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
SELECT * FROM `3nf_qualification`;
