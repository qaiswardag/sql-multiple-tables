USE tv_review_app;

SELECT title, AVG(rating) AS 'average rating'
FROM series
         JOIN reviews
              ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY `average rating` DESC;
