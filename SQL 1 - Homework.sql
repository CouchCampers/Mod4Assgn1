-- MODULE 4 - SQL - HOMEWORK DAY 1

-- 1. How many actors are there with the last name Wahlberg?
select last_name, first_name
from actor
where last_name = 'Wahlberg'

-- 2. How many payments were made between $3.99 and $5.99?
select amount
from payment
order by amount asc

-- 3. What film does the store have the most of? (search in inventory)
select *
from inventory

select inventory_id, film_id
from inventory
order by film_id desc 

-- 4. How many customers have the last name William?
select last_name
from customers
where last_name like 'william'

select * 
from customers

-- 5. What store employee (get the id) sold the most rentals?
select *
from rental

-- 6. How many different district names are there?

-- 7. What film has the most actors in it?
select film_id, actor_id
from film_actor
order by actor_id desc

-- 8. From store_id 1, how many customers have a last name ending with es? (use customer table)
select last_name, first_name
from customer
where last_name like '__%es'
  
-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select customer_id, rental_id, amount
from payment
where rental_id > 250
group by customer_id

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, sum(rating)
from film
group by rating


