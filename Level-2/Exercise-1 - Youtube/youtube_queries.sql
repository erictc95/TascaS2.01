SELECT 
v.id,
v.title,
u.username
FROM videos v
JOIN users u ON v.user_id = u.id;

SELECT 
v.title,
t.name AS tag
FROM videos v
JOIN video_tags vt ON v.id = vt.video_id
JOIN tags t ON vt.tag_id = t.id;

SELECT 
c.name AS channel,
u.username AS subscriber
FROM users_channels uc
JOIN users u ON uc.user_id = u.id
JOIN channels c ON uc.channel_id = c.id;

SELECT 
p.name AS playlist,
v.title
FROM playlist_videos pv
JOIN playlists p ON pv.playlist_id = p.id
JOIN videos v ON pv.video_id = v.id;

SELECT 
u.username,
v.title,
c.text
FROM comments c
JOIN users u ON c.user_id = u.id
JOIN videos v ON c.video_id = v.id;

SELECT 
u.username,
v.title,
vr.status
FROM video_reactions vr
JOIN users u ON vr.user_id = u.id
JOIN videos v ON vr.video_id = v.id;