/* city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte 
görebileceğimiz INNER JOIN sorgusunu yazınız. */
select c.city, ct.country 
from city c 
inner join country ct 
on c.country_id = ct.country_id


/* customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız. */
select concat(c.first_name, ' ' , c.last_name) as "Name", p.payment_id
from customer c
inner join payment p
on c.customer_id = p.customer_id


/* customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız. */
select concat(c.first_name, ' ' , c.last_name) as "Name", r.rental_id
from customer c
inner join rental r
on c.customer_id = r.customer_id