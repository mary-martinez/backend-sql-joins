-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

SELECT film.title
FROM inventory
LEFT JOIN film ON film.film_id = inventory.film_id
LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE rental.customer_id IS NULL