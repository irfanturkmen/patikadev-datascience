/* film tablosunda bulunan filmleri rating değerlerine göre gruplayınız. */
select rating from film group by rating


/* film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 
50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız. */
select replacement_cost, count(title) from film group by replacement_cost having count(title) > 50


/* customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? */
select store_id, sum(customer_id) from customer group by store_id


/* city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla
şehir sayısı barındıra country_id bilgisini ve şehir sayısını paylaşınız. */
select country_id, count(*) "Şehir Sayısı" from city group by country_id order by count(*) desc limit 1
