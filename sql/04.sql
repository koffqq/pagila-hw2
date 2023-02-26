/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */
SELECT title FROM (SELECT title, count(*) as title_count
    FROM film
    JOIN inventory USING (film_id)
    JOIN rental USING (inventory_id)
    JOIN customer  USING (customer_id)
    WHERE customer_id = 1
    GROUP BY title) AS titlee
WHERE title_count > 1;
