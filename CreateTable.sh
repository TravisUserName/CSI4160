gcloud sql connect finalprojectsql

use finalprojectdb

CREATE TABLE `environment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `temp` float NOT NULL,
  `humidity` float NOT NULL,
  `pressure` float DEFAULT NULL,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);