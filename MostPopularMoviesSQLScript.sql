--Top Trending Movies by Popularity
SELECT TOP 10 title, popularity
FROM MostPopularMoviesDB
ORDER BY popularity DESC;

--100 most popular movies all time
SELECT TOP 100
    ranking,
    title,
    popularity
FROM (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY popularity DESC) AS ranking,
        title,
        popularity
    FROM MostPopularMoviesDB
) AS RankedMovies
ORDER BY popularity DESC;

--100 most popular movies for the year 2023 until present day
SELECT TOP 100
    ranking,
    title,
    popularity,
    release_date
FROM (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY popularity DESC) AS ranking,
        title,
        popularity,
        release_date
    FROM MostPopularMoviesDB
    WHERE release_date BETWEEN '2023-01-01' AND GETDATE() -- Assuming GETDATE() gets the current date and time
) AS RankedMovies
ORDER BY popularity DESC;


--Average vote by genre
SELECT genres, AVG(vote_average) AS avg_vote
FROM MostPopularMoviesDB
GROUP BY genres
ORDER BY avg_vote DESC;

--Total amount of movies released each year
SELECT YEAR(release_date) AS release_year, COUNT(*) AS movie_count
FROM MostPopularMoviesDB
GROUP BY YEAR(release_date)
ORDER BY release_year;

--Movies with high vote counts and high ratings
SELECT title, popularity, vote_average, vote_count
FROM MostPopularMoviesDB
WHERE vote_count >= 1000 AND vote_average >= 7.5
ORDER BY popularity DESC;

