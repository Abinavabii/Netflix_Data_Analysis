
SELECT * FROM netflix

SELECT COUNT(*) AS total_titles
FROM netflix;

SELECT 
    type, 
    COUNT(*) AS total,
    CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS DECIMAL(5,2)) AS percentage
FROM netflix
GROUP BY type;


SELECT TOP 1 
    release_year,
    COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY release_year DESC;

SELECT TOP 1 
    value AS genre,
    COUNT(*) AS total
FROM netflix
CROSS APPLY STRING_SPLIT(listed_in, ',')
GROUP BY value
ORDER BY total DESC;


SELECT release_year, COUNT(*) AS total_titles
FROM netflix
GROUP BY release_year
ORDER BY release_year;

SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;

SELECT value AS genre, COUNT(*) AS total
FROM netflix
CROSS APPLY STRING_SPLIT(listed_in, ',')
GROUP BY value
ORDER BY total DESC;

SELECT value AS country, COUNT(*) AS total
FROM netflix
CROSS APPLY STRING_SPLIT(country, ',')
WHERE country IS NOT NULL
GROUP BY value
ORDER BY total DESC;


SELECT 
    release_year,
    COUNT(*) AS total_titles,
    LAG(COUNT(*)) OVER (ORDER BY release_year) AS prev_year,
    COUNT(*) - LAG(COUNT(*)) OVER (ORDER BY release_year) AS growth
FROM netflix
GROUP BY release_year
ORDER BY release_year;


SELECT rating, COUNT(*) AS total
FROM netflix
GROUP BY rating
ORDER BY total DESC;

