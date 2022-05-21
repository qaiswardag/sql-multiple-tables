USE ig_clone;

# Find the 5 oldest users
SELECT *
FROM users
ORDER BY created_at ASC
LIMIT 5;

# Which day(s) of the week do most users register on
SELECT *, DAYNAME(created_at) AS dayname, COUNT(*) AS 'total days'
FROM users
GROUP BY dayname
ORDER BY `total days` DESC
LIMIT 2;

# Find users who have never posted a photo
SELECT users.id AS id, users.username, photos.id
FROM users
         INNER JOIN
     photos
WHERE users.id = photos.user_id;

