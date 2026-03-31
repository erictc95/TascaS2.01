INSERT INTO users (username, email, password, birth_date, sex, country, postal_code)
VALUES 
('eric', 'eric@test.com', '1234', '1988-05-10', 'male', 'Spain', '08001'),
('anna', 'anna@test.com', '1234', '1995-03-22', 'female', 'Spain', '08002'),
('john', 'john@test.com', '1234', '1990-07-15', 'male', 'USA', '10001');

INSERT INTO channels (name, description, user_id)
VALUES
('Eric Tech', 'Tech tutorials', 1),
('Anna Cooking', 'Cooking recipes', 2);

INSERT INTO users_channels (user_id, channel_id)
VALUES
(2,1),
(3,1),
(1,2);

INSERT INTO videos (title, description, size, filename, duration, status, user_id)
VALUES
('SQL Basics', 'Learn SQL', 500, 'sql_basics.mp4', 600, 'public', 1),
('Advanced SQL', 'Indexes and joins', 650, 'advanced_sql.mp4', 900, 'public', 1),
('Pasta Recipe', 'Italian pasta tutorial', 400, 'pasta.mp4', 500, 'public', 2);

INSERT INTO tags (name)
VALUES
('SQL'),
('Database'),
('Cooking'),
('Pasta');

INSERT INTO video_tags (video_id, tag_id)
VALUES
(1,1),
(1,2),
(2,2),
(3,3),
(3,4);

INSERT INTO playlists (name, status, user_id)
VALUES
('SQL Learning', 'public', 2),
('Cooking Favorites', 'private', 3);

INSERT INTO playlist_videos (playlist_id, video_id)
VALUES
(1,1),
(1,2),
(2,3);

INSERT INTO comments (text, user_id, video_id)
VALUES
('Great tutorial!', 2, 1),
('Very helpful thanks', 3, 1),
('Now I want pasta!', 1, 3);

INSERT INTO video_reactions (user_id, video_id, status)
VALUES
(2,1,'like'),
(3,1,'like'),
(1,3,'like'),
(3,2,'dislike');

INSERT INTO comment_reactions (user_id, comment_id, status)
VALUES
(1,1,'like'),
(3,1,'like'),
(2,3,'dislike');

INSERT INTO video_reactions VALUES (2,1,'like',NOW());

INSERT INTO playlists (name, status, user_id)
VALUES ('SQL Learning','public',2);