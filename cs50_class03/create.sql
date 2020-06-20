CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	origin VARCHAR NOT NULL,
	destination VARCHAR NOT NULL,
	duration INTEGER NOT NULL
);

INSERT INTO flights
	(origin, destination, duration) VALUES ('New York', 'London', 415);

SELECT * FROM flights;
SELECT origin, destination FROM flights;

SELECT * from flights WHERE id=3;
SELECT * from flights WHERE destination='New York';
SELECT * from flights WHERE duration>500;
SELECT * from flights WHERE destination='Paris' AND duration>500;

SELECT AVG(duration) from flights WHERE origin='New York';
SELECT count(*) from flights;
SELECT count(*) from flights WHERE origin='New York';
SELECT min(duration), max(duration) from flights;

SELECT * from flights WHERE origin IN ('New York', 'Lima');
SELECT * from flights WHERE origin LIKE '%a%';

UPDATE flights
	SET duration = 430
	WHERE origin = "New York"
	AND destination = "London";

DELETE FROM flights
	WHERE destination = 'Tokyo';

SELECT * FROM flights ORDER BY duraction ASC;
SELECT * FROM flights ORDER BY duraction DESC;
SELECT * FROM flights ORDER BY duraction ASC limit 3;

SELECT origin, COUNT(*) FROM flights GROUP BY origin;
SELECT origin, COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*)>1;

CREATE TABLE passengers (
	id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	flight_id INTEGER REFERENCES flights
);



