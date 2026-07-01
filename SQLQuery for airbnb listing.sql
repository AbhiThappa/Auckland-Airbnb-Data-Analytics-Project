
--Import cleaned csv file to sql to practice some queries 

select * from AirbnbListings

 -- check total rows in dataset
select count (*) from AirbnbListings

--lets explore data now

select top 10 * from AirbnbListings

--Checking if any missing vlaues
SELECT *
FROM AirbnbListings
WHERE price_per_night IS NULL;


--any duplicate listing
SELECT
Listing_id,
COUNT(*)
FROM AirbnbListings
GROUP BY Listing_id
HAVING COUNT(*) > 1;


--calucate revenue 
SELECT
listing_name,
price_per_night,
booked_nights,
price_per_night * booked_nights AS Revenue
FROM AirbnbListings;



--average price by neighbourhood 

SELECT
neighborhood,
AVG(price_per_night) AS AvgPrice
FROM AirbnbListings
GROUP BY neighborhood
ORDER BY AvgPrice DESC;


--top revenuew listings 
SELECT TOP 10
listing_name,
price_per_night * booked_nights AS Revenue
FROM AirbnbListings
ORDER BY Revenue DESC;
-------------------------------------------------------------------------------
select  room_type, price_per_night * booked_nights as Revenue  
from AirbnbListings
order by Revenue desc;
-
select *
from AirbnbListings
----------------------------------------------------------------------------
select distinct  neighborhood 
from AirbnbListings



--------------------------------------------------------------------------
SELECT
    neighborhood,
    SUM(price_per_night * booked_nights) AS Revenue
FROM AirbnbListings
GROUP BY neighborhood;



select * from AirbnbListings

--top 10 rated hosts

SELECT TOP 10
    host_name,
    AVG(overall_rating) AS avg_rating,
    SUM(no_of_reviews) AS total_reviews
FROM AirbnbListings
GROUP BY host_name
ORDER BY avg_rating DESC;

--find listings that made highest revenue lowest revenue

SELECT TOP 1 listing_name,
       (price_per_night * booked_nights) AS Revenue
FROM AirbnbListings
ORDER BY Revenue DESC;

SELECT TOP 1 listing_name,
       (price_per_night * booked_nights) AS Revenue
FROM AirbnbListings
ORDER BY Revenue asc;

--Rank listings by total revenue

SELECT
    listing_name,
    SUM(price_per_night * booked_nights) AS revenue,
    DENSE_RANK() OVER (
        ORDER BY SUM(price_per_night * booked_nights) DESC
    ) AS revenue_rank
FROM AirbnbListings
GROUP BY listing_name;