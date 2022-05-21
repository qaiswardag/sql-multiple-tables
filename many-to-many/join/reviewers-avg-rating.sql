USE tv_review_app;
# list with unique user details. Average rating, min rating, max rating, count and status
SELECT CONCAT_WS(
               ' ', first_name, last_name)     AS 'full name',
       COUNT(rating)                           AS COUNT,
       IF(COUNT(rating), MIN(rating), 0)       AS 'MIN',
       IF(COUNT(rating), MAX(rating), 0)       AS 'MAX',
       IF(COUNT(rating), AVG(rating), 0)       AS 'Average rating',
       IF(COUNT(rating), 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
         LEFT JOIN reviews
                   ON reviewers.id = reviews.reviewer_id
GROUP BY reviewer_id;


# find unreviewed series
SELECT title, rating
FROM series
         LEFT JOIN reviews
                   ON series.id = reviews.series_id
WHERE rating IS NULL;
