SELECT name FROM movies WHERE year=1995;

SELECT COUNT(actor_id) FROM roles
JOIN movies m
    ON m.name="Lost in Translation"
WHERE roles.movie_id=m.id;

SELECT first_name, last_name FROM actors a
    JOIN roles r
        ON r.actor_id=a.id
    JOIN movies m
        ON m.name="Lost in Translation"
WHERE r.movie_id=m.id;

SELECT first_name, last_name FROM directors d
    JOIN movies_directors md
        ON d.id=md.director_id
    JOIN movies m
        ON md.movie_id=m.id AND m.name="Fight Club";

SELECT COUNT(m.id) FROM movies m
    JOIN movies_directors md ON md.movie_id=m.id
    JOIN directors d ON d.id=md.director_id
WHERE d.first_name="Clint" AND d.last_name="Eastwood";

SELECT m.name FROM movies m
    JOIN movies_directors md ON md.movie_id=m.id
    JOIN directors d on d.id=md.director_id
WHERE d.first_name="Clint" AND d.last_name="Eastwood";

SELECT d.first_name, d.last_name FROM directors d
    JOIN movies_directors md ON md.director_id=d.id
    JOIN movies_genres mg ON mg.movie_id=md.movie_id
WHERE mg.genre="horror";

SELECT a.first_name, a.last_name FROM actors a
    JOIN roles r ON r.actor_id=a.id
    JOIN movies m ON m.id=r.movie_id
    JOIN movies_directors md ON md.movie_id=m.id
    JOIN directors d ON d.id=md.director_id
WHERE d.first_name="Christopher" AND d.last_name="Nolan";

