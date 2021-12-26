CREATE DATABASE IF NOT EXISTS socially;
USE socially;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id int (13) not null auto_increment,
	user_name varchar (30) not null,
	password varchar (20) not null,
	first_name varchar (25) not null,
	last_name varchar (25) not null,
	email varchar (50) not null,
	primary key (user_id)
);

CREATE TABLE posts (
	post_id int(13) not null auto_increment,
	user_id int(13) not null,
	user_name varchar (30) not null,
	post_info datetime default current_timestamp,
	post varchar (360) not null,
	primary key (post_id),
	foreign key (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments (
	comment_id int(13) not null auto_increment,
	post_id int(13) not null,
	user_id int(13) not null,
	user_name varchar (30) not null,
	comment_info datetime default current_timestamp,
	comment varchar (360) not null,
	primary key (comment_id),
	foreign key (post_id) REFERENCES posts(post_id),
	foreign key (user_id) REFERENCES users(user_id)
);
