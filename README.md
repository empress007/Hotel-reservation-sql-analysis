# 🏨 Hotel Reservation Analysis

![hotel_reservation_image](https://github.com/user-attachments/assets/aa6a780a-0f8a-4edc-9c04-698ac5dabe8d)

# 💻 Table of content

- [Introduction](#introduction)
- [Dataset Overview](#dataset-overview)
- [Project Objectives](#project-objectives)
- [Data Cleaning](#data-cleaning)
- [Data Exploration and Insights](#data-exploration-and-insights)
- [Recommendation](#recommendation)
- [Conclusion](#conclusion)
- [Tech Stack](#tech-stack)
  
 --- 
 
## 📌 Introduction

The hotel industry thrives on its ability to understand guest behavior and booking patterns. This project leverages SQL to analyze a hotel reservation dataset, helping to answer key business questions such as booking trends, guest preferences, seasonal patterns, and cancellation rates. The goal is to develop practical SQL data analysis skills while uncovering insights that can optimize hotel operations and enhance guest satisfaction.

---

## 📊 Dataset Overview

The dataset used in analysis consist of 13 columns and 700 rows

![Screenshot 2025-04-26 hotel_rsrvtn](https://github.com/user-attachments/assets/a5b2fbc8-a46f-4574-8ab7-cf504999aab8)

The dataset contains detailed information about hotel reservations, including:

- **Booking_ID**: Unique identifier for each reservation.
- **no_of_adults**: Number of adults in the booking.
- **no_of_children**: Number of children in the booking.
- **no_of_weekend_nights**: Number of weekend nights stayed.
- **no_of_week_nights**: Number of weeknights stayed.
- **type_of_meal_plan**: Meal plan selected by the guests.
- **room_type_reserved**: Type of room booked.
- **lead_time**: Number of days between booking and arrival.
- **arrival_date**: Date of guest arrival.
- **market_segment_type**: Origin of the booking (e.g., online, corporate).
- **avg_price_per_room**: Average price per room.
- **booking_status**: Status of the booking (e.g., Canceled, Not_Canceled).

---

## 🎯 Project Objectives

- Clean and prepare the dataset for analysis.
- Understand guest behavior and booking trends.
- Identify the most popular services and room types.
- Analyze cancellation patterns and lead times.
- Explore the impact of booking channels on revenue.
- Provide actionable recommendations to optimize hotel management strategies.
  
## 📋 Problem Statement

You are tasked with analyzing this hotel reservation dataset using SQL. Here are 15 questions for which you will write SQL queries to gain insights:

﻿﻿﻿1.What is the total number of reservations in the dataset?
   
﻿﻿﻿2.Which meal plan is the most popular among guests?
   
﻿﻿3.What is the average price per room for reservations involving children?
  
﻿﻿﻿4.How many reservations were made for the year 20XX (replace XX with the desired year)?
   
5.﻿﻿﻿What is the most commonly booked room type?

﻿﻿﻿6.How many reservations fall on a weekend (no_of_weekend_nights > 0)?
   
7.﻿﻿﻿What is the highest and lowest lead time for reservations?

﻿﻿﻿8.What is the most common market segment type for reservations?
   
﻿﻿﻿9.How many reservations have a booking status of "Confirmed"?
   
﻿﻿﻿﻿10.What is the total number of adults and children across all reservations?
    
﻿﻿﻿﻿11.What is the average number of weekend nights for reservations involving children?
    
﻿﻿﻿﻿12.How many reservations were made in each month of the year?
    
﻿﻿﻿﻿13.What is the average number of nights (both weekend and weekday) spent by guests for each room?
    
﻿﻿﻿﻿14.For reservations involving children, what is the most common room type, and what is the average price for that room type?
    
15.﻿﻿﻿﻿Find the market segment type that generates the highest average price per room.

Good luck, and enjoy your journey into the world of data analysis!
---

## 🧹 Data Cleaning

Before performing analysis, the following cleaning steps were taken:

- **Renamed** the table from `hotel reservation dataset` to `hotel_reservation_dataset`.
- **Fixed Date Formatting**: Updated the `arrival_date` format and changed its data type to `DATE`.
- **Adjusted Price Format**: Converted `avg_price_per_room` to `DECIMAL(10,2)`.
- **Added Derived Column**: Created `reservation_date` by subtracting the lead time from the arrival date.
- **Handled Duplicates and Missing Values**: Verified dataset integrity for accurate querying.

---

## 🔍 Data Exploration and Insights

### 📈 Booking Patterns
- **Total Reservations**: Counted the total number of reservations.
- **Popular Meal Plan**: Identified the most preferred meal plan among guests.
- **Weekend vs Weekday Stays**: Analyzed reservations involving weekend stays.

### 🏨 Customer Behavior
- **Reservations with Children**: Analyzed average prices and room preferences.
- **Lead Time Trends**: Found highest and lowest lead times for bookings.
- **Common Room Types**: Identified the most commonly reserved room types.

### 💸 Revenue Insights
- **Market Segment Analysis**: Found the market segment generating the highest average price per room.
- **Reservation Sources**: Determined the most common booking channels.
- **Confirmed Bookings**: Calculated confirmed reservation counts.

### 📅 Seasonal Trends
- **Monthly Reservation Patterns**: Analyzed how reservations varied across months.
- **Stay Duration**: Calculated the average number of nights stayed per room type.

---

## ✅ Recommendation

1. **Promote Popular Meal Plans and Room Types**: Bundle popular services to maximize guest satisfaction and upsell opportunities.
2. **Optimize Pricing for High Lead Time Bookings**: Implement dynamic pricing strategies for long lead time reservations.
3. **Target High-Revenue Market Segments**: Focus marketing efforts on the market segment types that yield higher average prices.
4. **Boost Weekend Bookings**: Offer weekend stay packages to boost revenue during off-peak periods.
5. **Enhance Family Booking Experience**: Tailor offers towards family travelers as they tend to have higher retention and lower cancellation rates.

---

## 🧾 Conclusion

This hotel reservation analysis project demonstrated the power of SQL in extracting meaningful insights from real-world data. Through comprehensive data cleaning, exploration, and interpretation, the project highlights critical trends in guest behavior, booking channels, pricing, and seasonal variations. By applying these insights, hotel managers can optimize operations, improve guest experiences, and enhance overall profitability.

---

## 🛠 Tech Stack

- SQL (MySQL)
- Git & GitHub
- MySQL Workbench

---

> 📢 *Feel free to fork the repo, contribute improvements, or adapt the queries for your own hospitality datasets!*

