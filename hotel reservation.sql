
create database hotel_reservationDb;
use hotel_reservationDb;

select * from `hotel reservation dataset`;
-- rename table name from `hotel reservation dataset` to hotel_reservation_dataset
rename table `hotel reservation dataset` to hotel_reservation_dataset;
select * from hotel_reservation_dataset;
 describe hotel_reservation_dataset;
 
-- update date to suit date format
SET SQL_SAFE_UPDATES = 0;
 update hotel_reservation_dataset set arrival_date = str_to_date(arrival_date, '%d-%m-%YYYY');

-- change date datatype
alter table hotel_reservation_dataset
modify column arrival_date Date;
select * from hotel_reservation_dataset;

-- change monetary datatype to decimal
alter table hotel_reservation_dataset
modify column avg_Price_per_room Decimal (10,2);
select * from hotel_reservation_dataset;

-- add a new column
alter table hotel_reservation_dataset
add column reservation_date date;

-- update
update hotel_reservation_dataset set reservation_date = date_sub(arrival_date, interval lead_time day);


-- ﻿﻿﻿1.What is the total number of reservations in the dataset?
select count(Booking_ID) as total_number_reserved from hotel_reservation_dataset;

-- ﻿﻿﻿2.Which meal plan is the most popular among guests?
select type_of_meal_plan, count(*) as meal_count from hotel_reservation_dataset group by 1 order by 2 desc limit 1;

-- 3.What is the average price per room for reservations involving children?
select round(avg(avg_price_per_room),2) as avg_price from hotel_reservation_dataset  where no_of_children > 0;

-- ﻿﻿﻿4.How many reservations were made for the year 20XX (replace XX with the desired year)?
select count(*) as room_reserved from hotel_reservation_dataset where Year(arrival_date) = 2018;

-- 5.﻿﻿﻿What is the most commonly booked room type?
select room_type_reserved, count(*) as room_count from hotel_reservation_dataset group by room_type_reserved order by 2 desc limit 1;

-- ﻿﻿﻿6.How many reservations fall on a weekend (no_of_weekend_nights > 0)?
select count(*) as count_reservation from hotel_reservation_dataset where no_of_weekend_nights > 0;

-- 7.﻿﻿﻿What is the highest and lowest lead time for reservations?
select max(lead_time) as highest_leadtime, min(lead_time) as lowest_leadtime from hotel_reservation_dataset;

-- ﻿﻿﻿8.What is the most common market segment type for reservations?
select market_segment_type, count(market_segment_type) as count_segment from hotel_reservation_dataset group by market_segment_type order by 2 desc limit 1;

-- ﻿﻿﻿9.How many reservations have a booking status of "Confirmed"?
select booking_status, count(*) as count_confirmed from hotel_reservation_dataset where booking_status = "Not_Canceled";

-- ﻿﻿﻿﻿10.What is the total number of adults and children across all reservations?
select sum(no_of_adults) as total_adults, sum(no_of_children) as total_children from hotel_reservation_dataset;

-- ﻿﻿﻿﻿11.What is the average number of weekend nights for reservations involving children?
select  avg(no_of_weekend_nights) as avg_weekend_night from hotel_reservation_dataset where no_of_children > 0;

-- ﻿﻿﻿﻿12.How many reservations were made in each month of the year?
select monthname(reservation_date) as month_name,  count(*) as reserved_made,  month(reservation_date) as month_no from hotel_reservation_dataset group by 1,3  order by 3;
select arrival_date, date_sub(arrival_date, interval lead_time day) as reserved_date from hotel_reservation_dataset;

-- ﻿﻿﻿﻿13.What is the average number of nights (both weekend and weekday) spent by guests for each room
select room_type_reserved, round(avg(no_of_weekend_nights + no_of_week_nights),2) as total from hotel_reservation_dataset group by room_type_reserved;

-- ﻿﻿﻿﻿14.For reservations involving children, what is the most common room type, and what is the average price for that room type?
select room_type_reserved , count(*) as count from hotel_reservation_dataset where no_of_children > 0 group by room_type_reserved order by 2 desc limit 1;
select round(avg(avg_price_per_room),2) as avg_price from hotel_reservation_dataset where no_of_children > 0 and room_type_reserved = 'Room_Type 1';

-- 15.﻿﻿﻿﻿Find the market segment type that generates the highest average price per room.
select market_segment_type, round(avg(avg_price_per_room),2) as avg_price from hotel_reservation_dataset group by 1 order by 2 desc limit 1;

