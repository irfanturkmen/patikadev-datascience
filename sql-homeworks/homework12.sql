/* film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film
uzunluğundan fazla kaç tane film vardır? */
select count(*) "Film Sayısı"
from film
where length >
(
	select round(avg(length))
	from film
)


/* film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır? */
select count(*) "Film Sayısı"
from film
where rental_rate = (select max(rental_rate) from film)


/* film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız. */
select rental_rate, replacement_cost
from film
where rental_rate = (select min(rental_rate) from film)
and replacement_cost = (select min(replacement_cost) from film)



/* payment tablosunda en fazla sayıda alışveriş yapan müşteriyi(customer) sıralayınız. */
select * 
from customer
where customer_id = 
(
	select count(customer_id)
	from payment
	group by customer_id
	order by count desc
	limit 1
)
