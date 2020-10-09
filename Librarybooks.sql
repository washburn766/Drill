SELECT name, title, return_date
FROM people AS p
LEFT OUTER JOIN transactions AS t
ON p.person_id = t.person_id
LEFT OUTER JOIN books AS b
ON t.book_id = b.book_id
WHERE name = 'Connie'
AND fine > '$0.00';

SELECT name, SUM(fine) AS total_fines 
FROM people AS p 
    LEFT OUTER JOIN transactions AS t 
ON p.person_id = t.person_id 
GROUP BY name 
HAVING SUM(fine) = '$0.00';

SELECT title
FROM books AS b 
    LEFT OUTER JOIN transactions AS t 
ON b.book_id = t.book_id
WHERE return_date IS NULL
AND checkout_date IS NOT NULL;

SELECT name
FROM people AS p 
    LEFT OUTER JOIN transactions AS t 
ON p.person_id = t.book_id
WHERE name IS NULL;

SELECT genre, SUM(fine) AS total_fines
FROM books AS b 
    LEFT OUTER JOIN transactions AS t 
ON b.book_id = t.book_id
GROUP BY genre
HAVING SUM(fine) = '$0.00';

SELECT name, title 
FROM people AS p 
    LEFT OUTER JOIN transactions AS t 
        ON p.person_id = t.person_id 
    LEFT OUTER JOIN books AS b 
        ON t.book_id = b.book_id 
WHERE name = 'Pearl';

SELECT name, title, return_date
FROM people AS p 
    LEFT OUTER JOIN transactions AS t 
        ON p.person_id = t.person_id 
    LEFT OUTER JOIN books AS b 
        ON t.book_id = b.book_id
WHERE name = 'Garnet';

SELECT name, title
FROM people AS p 
    LEFT OUTER JOIN transactions AS t
        ON p.person_id = t.person_id 
    LEFT OUTER JOIN books AS b 
        ON t.book_id = b.book_id
WHERE title = 'The Hobbit';

SELECT name, SUM(fine) AS total_fines
FROM people AS p 
    LEFT OUTER JOIN transactions AS t 
        ON p.person_id = t.person_id 
    LEFT OUTER JOIN books AS b 
        ON t.book_id = b.book_id
WHERE title = 'Crazy Rich Asians'
GROUP BY name
HAVING SUM(fine) > '$0.00';