CREATE DATABASE `fundacao_plataforma` /*!40100 DEFAULT CHARACTER SET latin1 */;


CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id_fk` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url_youtube` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`class_id`),
  KEY `module_id_fk` (`module_id_fk`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`module_id_fk`) REFERENCES `module` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id_fk` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`module_id`),
  KEY `course_id_fk` (`course_id_fk`),
  CONSTRAINT `module_ibfk_1` FOREIGN KEY (`course_id_fk`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
