DROP DATABASE IF EXISTS youtube;
CREATE DATABASE youtube;
USE youtube;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
id INT NOT NULL AUTO_INCREMENT,
username VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(120) NOT NULL UNIQUE,
password VARCHAR(100) NOT NULL,
birth_date DATE NOT NULL,
sex ENUM('male', 'female') NOT NULL,
country VARCHAR(100) NOT NULL,
postal_code VARCHAR(20),
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS videos;
CREATE TABLE videos(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
description TEXT,
size INT NOT NULL,
filename VARCHAR(255) NOT NULL,
duration INT NOT NULL,
thumbnail VARCHAR(255),
reproductions INT DEFAULT 0,
likes INT DEFAULT 0,
dislikes INT DEFAULT 0,
status ENUM('public', 'hidden', 'private') NOT NULL,
user_id INT NOT NULL,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS tags;
CREATE TABLE tags(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL UNIQUE,
PRIMARY KEY (id)
);

DROP TABLE IF EXISTS video_tags;
CREATE TABLE video_tags(
video_id INT NOT NULL,
tag_id INT NOT NULL,
PRIMARY KEY (video_id, tag_id),
FOREIGN KEY (video_id) REFERENCES videos(id),
FOREIGN KEY (tag_id) REFERENCES tags(id)
);

DROP TABLE IF EXISTS channels;
CREATE TABLE channels(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
description TEXT,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
user_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS users_channels;
CREATE TABLE users_channels(
user_id INT NOT NULL,
channel_id INT NOT NULL,
PRIMARY KEY (user_id, channel_id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (channel_id) REFERENCES channels(id)
);

DROP TABLE IF EXISTS playlists;
CREATE TABLE playlists(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
status ENUM('public', 'private') NOT NULL,
user_id INT NOT NULL,
UNIQUE (user_id, name),
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS playlist_videos;
CREATE TABLE playlist_videos(
playlist_id INT NOT NULL,
video_id INT NOT NULL,
PRIMARY KEY (playlist_id, video_id),
FOREIGN KEY (playlist_id) REFERENCES playlists(id),
FOREIGN KEY (video_id) REFERENCES videos(id)
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments(
id INT NOT NULL AUTO_INCREMENT,
text TEXT NOT NULL,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
user_id INT NOT NULL,
video_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (video_id) REFERENCES videos(id)
);

DROP TABLE IF EXISTS video_reactions;
CREATE TABLE video_reactions(
user_id INT NOT NULL,
video_id INT NOT NULL,
status ENUM('like', 'dislike') NOT NULL,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (user_id, video_id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (video_id) REFERENCES videos(id)
);

DROP TABLE IF EXISTS comment_reactions;
CREATE TABLE comment_reactions(
user_id INT NOT NULL,
comment_id INT NOT NULL,
status ENUM('like', 'dislike') NOT NULL,
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (user_id, comment_id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (comment_id) REFERENCES comments(id)
);










