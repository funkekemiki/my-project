-- we are working with the sakila database
use sakila;
select* from actor;
select first_name,last_name 
from customer;
select  title 
from film;
select* from store;
select email from customer;

select * from film
where rental_rate =2.99;

select * from actor
where first_name like '%A%';


select * from film
where release_year ='2006';

select *  from customer
where last_name ='smith';

select * from film
where replacement_cost >20;

select* from film
order by rental_name asc;

select * from customer
order by last_name desc;


select actor_id, last_name
from actor
order by actor_id;

select *from film
order by lenght desc;

select * from store
order by store_id;


select *  from film
limit 10;

select * from actor 
limit 5;


select * from customer
order by customer_id
limit 3;

select * from film
limit 7
offset 4;

select * from store
order by store_id
limit 2;

select count (*) as total
from film;


select avg(rental_rate)
 from film;
 
 
 select max(length) 
 from film;
 
 
 select sum(replacement_cost) from film;
 
 select min(rental_duration) from film;
 
 
 select rating,count(*) from film
 group by rating;
 
 
 select title,sum(rental_duration)from film
 group by title;
 
 
 
 select active, count(*)
 from customer
 group by active;
 
 
 select language_id,avg(rental_rate) from film
 group by language_id;
 
 
 select last_name,count(*)as actor_count from actor
 group by last_name
 having actor_count>1;
 
 
 select c.first_name,last_name,c.store_id
 from customer c
 join store s on c.store_id = s.store_id
 where c.store_id =2;
 
 
 
 select c.category_id,c.name,f.film_id
 from category c
 join film_category fc on fc.category_id = c.category_id
 join film f on f.film_id = fc.film_id;
 
 
 select a.first_name,a.last_name,f.title
 from actor a
 join film_actor fa on a.actor_id=fa.actor_id
 join film f on fa.film_id=f.film_id;
 
 
 
 
 select c.customer_id,first_name,last_name,f.film_title
 from customer
 join rental on customer.c_id=rental.c_id
 join inventory on rental.inventory_id =inventory.inventory_id
 join film on iventory.film_id=film.film_id;
 
 
 select f.film_id,title,l.language_id,name
 from film f
 join language l on f.language_id=l.language_id
 where f.language_id;
 
 
 select f.title,f.film_id,c.name,f.rental_rate
 from film f
 join film_category fc on fc.film_id=f.film_id
 join category c on c.category_id =fc.category_id
 where f.rental_rate >3.99;
 
 
 select c.customer_id,c.first_name,c.last_name,f.length
 from customer c
 join rental r on r.customer_id = c.customer_id
 join inventory i on i.inventory_id =r.inventory_id
 join film f on f.film_id = i.film_id
 where length >120;
 
 
 select distinct first_name,last_name
 from actor a
 join film_actor fa on a.actor_id=fa.actor_id
 join film f on fa.film_id =f.film_id
 where f.rating = 'pg';
 
 
 
 
 
 
 
 
 
 
 
 
 


 
