/* city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte
görebileceğimiz LEFT JOIN sorgusunu yazınız. */
select ct.city, c.country
from city ct
left join country c
on ct.country_id = c.country_id


/* customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name
isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız. */
select p.payment_id, concat(c.first_name, ' ' , c.last_name) as "Name" 
from payment p
right join customer c
on p.customer_id = c.customer_id 


/* customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name
isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız. */
select r.rental_id, concat(c.first_name, ' ' , c.last_name) as "Name"
from rental r
full join customer c
on c.customer_id = r.customer_id

