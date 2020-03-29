-- top 5 oldest users
SELECT * from users ORDER BY created_at limit 5;

-- what day of the week do most users register on
SELECT DAYNAME(created_at) as WeekDay, Count(DAYNAME(created_at)) as total from users
GROUP BY DAYNAME(created_at)
ORDER BY total DESC;

-- Get inactive users who have not posted any photo
SELECT
    users.id,
    username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id is NULL;

-- single most liked photo in the database
SELECT
    count(photos.id) as COUNT,
    photos.image_url
FROM photos
JOIN likes
    ON photos.id = likes.photo_id
Group BY likes.photo_id
ORDER BY COUNT DESC
limit 1;

-- Average number of post per user
SELECT
    (select count(photos.id) from photos)/(select count(users.id) from users);

-- top 5 hashtags
SELECT
    tags.id,
    tags.tag_name,
    count(tags.tag_name) as COUNT
FROM tags
INNER JOIN photo_tags
    ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY COUNT DESC
limit 5;

-- find bots, find users who have liked every single photo on the site
SELECT
    users.id,
    users.username,
    count(likes.user_id) as COUNT
FROM users
INNER JOIN likes
    ON likes.user_id = users.id
GROUP BY users.id
HAVING COUNT = (SELECT count(*) from photos);