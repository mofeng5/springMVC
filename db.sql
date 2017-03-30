create database springdemo;

CREATE TABLE `user` (
  `id` int(11) unsigned not null auto_increment,
  `nickname` varchar(45) not null,
  `password` varchar(45) not null,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;


CREATE TABLE `blog` (
  `id` int(11) unsigned not null auto_increment,
  `title` varchar(100) not null,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `pub_date` date NOT NULL,
  primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

alter table blog add foreign key user_id(user_id) references user(id);