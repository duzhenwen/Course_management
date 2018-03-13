CREATE DATABASE IF NOT EXISTS course_management;

USE course_management;

CREATE TABLE course(course_id INT NOT NULL,
			name VARCHAR(20) NOT NULL,
			teacher VARCHAR(20) NOT NULL,
			students INT NOT NULL,
			time VARCHAR(20) NOT NULL,
			PRIMARY KEY(course_id))ENGINE=MyISAM DEFAULT CHARSET=utf8;
			