CREATE DATABASE IF NOT EXISTS socialDB;

USE SocialDB;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
Id int(15) not null auto_increment,
Username varchar(15) not null,
Password varchar(15) not null,
Email varchar(20) not null,
Phone_number int(11) not null,
Primary key (id)
);

CREATE TABLE posts (
User_id int(15) not null,
Post_id int(15) not null auto_increment,
Post_content text(250) not null,
Time_posted datetime,
Likes int(5),
Primary key (post_id),
Foreign key (user_id) references users(id)
);


CREATE TABLE comments (
Post_id int(15) not null,
Users_id int(15) not null,
Comment_content text(150) not null,
Time_posted datetime,
Likes int(5),
Primary key (post_id , users_id),
Foreign key (post_id) references posts(post_id),
Foreign key (users_id) references users(id)
);
