# Airline And Airport Flight Delay And Cancellation Analysis
![](images/Airline_Airport_Traffic_Delays_and_Cancellation_image.jpg)

## Table of Contents
- [Project Overview](#project-overview)
- [About The Dataset](#about-the-dataset)
- [Tools Used](#tools-used)
- [ETL Process using the Power Query Editor](#etl-process-using-the-power-query-editor)
- [Visuals in Power BI:](#visuals-in-power-bi)
- [Interact With Power BI Dashboard Report](#interact-with-power-bi-dashboard-report)
- [Recommendations Towards Mitigating The Issues of Flight Delays and Cancellations](#recommendations-towards-mitigating-the-issues-of-flight-delays-and-cancellations)

## Project Overview
### Introduction:
This is a power BI project on __Airline and Airport Flight Delay and Cancellation Analysis__. The information released for this analysis shows records for 5,000,000+ commercial airline flights in 2015, compiled for the U.S. DOT Air Travel Consumer Report. Each record represents a single flight, including the airline name, flight number, origin/destination airport and flight distance, as well as scheduled/actual departure and arrival times

### Problem Statement:
In 2015, the airline industry faced significant challenges related to flight delays and cancellations, resulting in operational disruptions, financial losses, and passenger inconvenience. Despite advances in technology and operational practices, understanding the root causes and mitigating the impact of these disruptions remains a critical concern for airlines, airports, passengers, and regulatory authorities. This analysis seeks to investigate the frequency, distribution, and underlying factors contributing to flight delays and cancellations within the airline industry during the year 2015, with the objective of identifying actionable recommendations to improve operational efficiency, enhance passenger experience, and ensure the safety and reliability of air travel. The study seeks to address the following research questions:

- How does the overall flight volume vary by month? By day of week?
- What percentage of flights experienced a departure delay in 2015? Among 
those flights, what was the average delay time, in minutes?
- How does the % of delayed flights vary throughout the year? What about for 
flights leaving from Boston (BOS) specifically?
- How many flights were cancelled in 2015? What % of cancellations were due to 
weather? What % were due to the Airline/Carrier?
- Which airlines seem to be most and least reliable, in terms of on-time departure?

### Expected Finding:

- __Monthly and Weekly Flight Volume Variation:__ Analysis is anticipated to reveal fluctuations in overall flight volume by month and day of the week. Seasonal trends may emerge, with potentially higher volumes during holiday seasons or peak travel months. Additionally, weekdays may see higher flight volumes compared to weekends due to business travel patterns.

- __Departure Delay Percentage and Average Delay Time:__ It is expected that a certain percentage of flights experienced departure delays in 2015. This percentage may vary across airlines, airports, and months. Furthermore, among delayed flights, the average delay time in minutes is expected to be calculated, providing insight into the severity of delays experienced by passengers.

- __Variation of Delayed Flights Percentage:__ Analysis is expected to uncover fluctuations in the percentage of delayed flights throughout the year. Seasonal weather patterns and increased travel demand during certain months may contribute to variations. Moreover, examining delayed flights specifically from Boston (BOS) may reveal airport-specific trends.

- __Flight Cancellations in 2015:__ The analysis is anticipated to determine the total number of flights cancelled in 2015. Additionally, the percentage of cancellations attributed to weather conditions versus those attributed to the airline or carrier is expected to be assessed. This finding will provide insights into the main reasons for flight cancellations and their impact on passenger travel.

- __Airlines' Reliability in On-Time Departure:__ The study aims to identify airlines that demonstrate high and low reliability in terms of on-time departure. Analysis is expected to reveal variations among airlines, potentially influenced by factors such as operational efficiency, fleet management, and scheduling practices. Identifying the most and least reliable airlines will assist passengers and stakeholders in making informed decisions regarding airline choices.

### About The Dataset
The dataset is made up of 4 tables which are in .csv file format and they are: 
- __flights (fact table):__ This table shows all the flight details such as the airline, departure time, arrival time, etc.
- __airlines (dimension table):__ shows the airline names and their IATA codes.
- __airports (dimension table):__ shows airport details sucu as airport, city, country, etc.
- __cancellation code (dimension table):__ displays the cancellation description and reason.

This dataset was released by [Quantum Analytics](https://www.quantumanalyticsco.org/). The airlines table can be viewed or downloaded [here](Data/airlines.csv),the airports table can also be viewd or downloaded [here](Data/airports.csv), while the cancellation code table can be viewed or downloaded [here](Data/cancellation_codes.csv). The fact table which is the "flights" was too large to be uploaded to github with a size of over 578 MB. Alternatively, you can download the table [here](https://www.dropbox.com/s/uce656ijxu8an66/flights.csv.zip?dl=0).


### Skills Utilized
1. Data Cleaning
2. Data Modelling
3. Data Visualiziation
4. Descriptive Analytics
5. Critical Thinking and Problem Solving
6. Communication and Reporting


### Tools Used
1. MS Sql Server
    - Was used to:
        1. Extract,
        2. Cleaning
        3. Transform and,
        4. Load all the datasets for this analysis.
           
2. Power BI (Was used to create reports and dashboard for this analysis)
    - The following Power BI Features were incorporated:
        1. Bookmarking,
        2. DAX,
        3. Quick Measures,
        4. Page Navigation,
        5. Modelling,
        6. Filters,
        7. Tooltips, and
        8. Button


### ETL Process using MS Sql Server:
1. Added a new column __"Month_New"__ from the __"Month"__ column in __flights__ table to display the names of the month (January - December) using the "If function".
2. Added another column __"Day_of_Week_New"__ from the __"Day_of_Week"__ column in the __flights__ table to display the days of the week (Sunday - Saturday) using the "If function".
3. Created a new column __"Merged_Date"__ in the __flight__ table which comprises of the the __"Year"__, __"Month"__ and __"Day_of_Week"__ columns merged together to have a complete date view.
4. Added another column named __"Cancellation_Reason_Details"__ in the __flights__ table which matches codes from the __"Cancellation_Reason"__ table with the description in the __"Cancellation_Description"__ column of the __"cancellation code"__ table to fill the new column.
5. Transformed the column types in all the tables to the right column types.
6. Re-ordered all the columns in the __flights__ table accordingly (Done In Power Query).
7. You can have a peep of our final MS Sql query screenshot below:

Sql Query Screenshot                                                                         |                                
:---------------------------------------------------------------------------------:|
![](images/MS_Sql_Server_Screenshot.png)   

You can preview the full MS Sql Server query [here](Airline_%26_Airport_Flight_Delay_%26_Cancellation_Project.sql)



### Data Modelling:
- In the model view, i adjusted and re-organized the relationships among the tables to remove and replace the unwanted relationships as seen below:
![](images/Data_Modelling_image.png)

- The model is a Star Schema.
- There is 1 fact table which is the "flights" table and 3 dimensions tables which are the "airlines", "airports" and the "cancellation code".

## Visuals in Power BI:
The report comprises of 2 pages:

### Report 1

![](images/Airline_%26_Airport_Flight_Delays_%26_Cancellation_Analysis_Dashboard_1.jpg)

#### Analysis:
From the analysis, we can comfortably give answers to our problem statement and more:
- From the analysis, we have __322__ Airports.
- The number of Airlines is __14.__
- A total No of __5,819,079__ flights was scheduled for the year 2015.
- The number of on-time-flight-departures is __3,693,461.__
- Number of flight delays is __2,125,618.__
- The number of cancelled flights is __89,884.__
- The percentage of Airline delays is __36.53%.__
- The average delay time is __25.27__ minutes.


- <img src="images/Total_No_of_Flights_By_Day.jpg" width="300">
- **Total Number of Flights By Day**
- From the dataset, Wednesdays has the most flight traffic with 872,521 flights, Sundays 865,543, while Thurdays follows with 862,209 flights. The least days with traffic happens to be on fridays with 700,545 flights.

- <img src="images/Top_5_Most_Reliable_Airlines.jpg" width="300">
- **Top 5 Most Reliable Airlines**
- At the top of the 5 most reliable airlines is the Southwest Airlines Co. with an on-time-departure of 695,048, followed by Delta Airlines Inc. - 593,418, American Airlines Inc. - 480,080, Skywest Airlines Inc. - 416,781, and Atlantic Southeast Airlines - 402,080.

- <img src="images/Least_5_Most_Reliable_Airlines.jpg" width="300">
- **Least 5 Most Reliable Airlines**
- At the top of the list of Airlines with the least most reliable airlines and judging from the least on-time-departures, is Virging America with 36,524 on-time-departures, followed by Frontier Airlines Inc. with 55,943, Hawaiian Airlines Inc. with 56,126, Spirit Airlines Inc. with 65,290, and Alaska Airlines Inc. with 128,955.

- <img src="images/Total_No_of_Cancelled_Flights_By_Reason.jpg" width="300">
- **Total Number of Cancelled Flights By Reason**
- Weather conditions happens to be the major reason for flight cancellation with 48,651 flights cancelled and a share of 54.35% of the time, followed by Airline/Carrier reasons with 48,651 cancelled flights and a share of 28.11% and lastly, National Air System issue causing about 25,262 cancelled flights at 17.52%.

- <img src="images/Total_No_of_Flights_By_Month.jpg" width="450">
- **Total Number of Flights By Month**
- July happens to be the month with most flights traffic with 520,718 flights, followed by August with 510,336, and March with 504,312. The month with the least flight traffic happens to be February with 429,191. February being the month with the least flight may be attributed to it being the shortest month in the year, secondly,february often experiences lower flight traffic compared to other months due to being part of the winter season in many regions. February also typically lacks major holidays or long weekends, unlike other months such as July and August. February may experience a dip in business-related travel compared to other months. July has the most flight traffic because it is a peak travel month in many regions, coinciding with the summer vacation season. Families, students, and individuals often take advantage of the warm weather and extended break periods to travel for leisure, leading to increased demand for flights. July include many holidays and it is a period for summer break when most schoold go on break. July is often filled with events, festivals, and cultural celebrations around the world. While July is primarily associated with leisure travel, it also sees significant business and conference-related travel.

- <img src="images/%25_of_Fight_Delays_By_Month.jpg" width="450">
- **Percentage of Flight Delays By Month**
- June has the highest percentage of flight delays with a 42.74%, February - 40.41%, July - 40.26%, December -39.51, down to the 2 months with the least percentage of flight delays, September at 28.52%, followed by October with 29.85%. September and October often experience more favorable weather conditions compared to other months, especially in regions where inclement weather contribute to flight delays. The months of June, July, and December also has the highest percentage of flight delay because these months coincide with peak travel seasons, characterized by increased passenger volumes and higher demand for flights. Some months may experience capacity constraints at airports and airspace due to high demand for travel and limited available slots for aircraft operations. 

  
### Report 2

![](images/Airline_%26_Airport_Flight_Delays_%26_Cancellation_Analysis_Dashboard_2.jpg)

- <img src="images/Top_6_Airports_With_Most_Cancelled_Flights.jpg" width="300">
- **Top 6 Airports With Most Cancelled Flights**
- Chicago O'Hare International Airport tops the list of Airports with most cancelled flights with a figure of 8,548, followed by Dallas/Fort Worth International Airpot with 6,254 and LaGuardia Airport (Marine Air Terminal) with 4,531 cancelled flights. Weather vulnerability of some of this airports, traffic congestion as a result of busier airports, and operational/infrastructural challenges are the most likely reasons for these high flight cancellation occurences.

- <img src="images/Top_6_Airports_With_Most_Flight_Delays.jpg" width="300">
- **Top 6 Airports With Most Flight Delays**
- For the top 6 Airports with most flight delays, Hartfield Jackson Atlanta International Airport comes top with 121,706 flight delays, followed by Chicago O'Hare International Airport with - 96,475, Denver International Airport - 89,290, Los Angeles International Airport - 81,954, and George Bush International Airport - 61,360. Similar to the reasons for flights cancellation, flight delays also occurs because of adverse weather conditions, traffic congestions, issues arising from airline operation, security procedures, and infrastructural constraints.

- <img src="images/Top_6_Airlines_With_Most_Delay_Time.jpg" width="300">
- **Top 6 Airlines With Most Delay Time**
- Southwest Airlines Co. tops the 6 Airlines with most flight delay time at 13,186,520, followed by United Airlines Inc. at 7,355,348, Delta Airlines Inc. - 6,427,294, American Airlines Inc. - 6,369,435, Atlanta Southwest Airlines Inc. - 4,857,338, and SkyWest Airlines Inc. - 4,517,510. The reasons for these delay time may be attributed to a lack of operational efficiency, a lack of fleet reliability, air traffic control issue, weather conditions, crew scheduling and availability, and other factors.


- <img src="images/Total_No_of_Cancelled_Flights_By_Month.jpg" width="450">
- **Total Number of Cancelled Flights By Month**
- For the total number of cancelled flights by month, February tops with 20,517 cancellations, followed by January with 11,982, March - 11,002, June - 9,120, December - 8,003, and down to the least month with most cancelled flights, September with 2,075. The reasons for these cancellation remains same as pointed above, adverse weather conditions, operational challenges, holiday travel, airport infrastructure constraints, air traffic control constraints, and more.


- <img src="images/%25_of_Flight_Delays_From_Boston_By_Month.jpg" width="450">
- **Percentage of Flight Delays From Boston By Month**
- For the percentage of flight delays from Boston by month, February sits at the of the chart with 48.64%, August - 39.89%, July - 39.63%, December - 39.06%, March - 37.43%, down to the month with the least percentage of flight delays from Boston, November with 28.84%. Generally, the reasons for variations in the percentage of flight delays from Boston by month can be said to be multifaceted and may include weather conditions, seasonal travel patterns, airline operations, air traffic control constraints, airport infrastructure, and operational disruptions.


## Interact With Power BI Dashboard Report
You can interact with this report [here](https://app.powerbi.com/view?r=eyJrIjoiNzc2ZTdkMDktYWQxOC00ZDBmLWEwM2QtYTEyYjQ2ZTc2ZmJhIiwidCI6IjdlYzI5NjU5LTNjZjItNGYzZi1hYmIzLWE3MjJlZGY3ZmYyZCJ9).This dashboard report displays clearly an interactive visual of this analysis in power BI.

## Recommendations Towards Mitigating The Issues of Flight Delays and Cancellations:
- __Improving Weather Forecasting and Preparedness:__ Enhance collaboration between airlines, airports, and meteorological agencies to improve weather forecasting accuracy and early warning systems. Implement proactive measures such as de-icing procedures, snow removal equipment, and contingency plans to mitigate the impact of adverse weather conditions on flight operations.

- __Investing in Airport Infrastructure:__ Upgrade and expand airport infrastructure to enhance capacity, efficiency, and resilience to weather-related disruptions. Invest in runway upgrades, taxiway expansions, and terminal renovations to minimize congestion and facilitate smoother aircraft movements during peak periods.

- __Enhancing Air Traffic Management:__ Modernize air traffic control systems and procedures to optimize airspace utilization, reduce congestion, and improve the flow of air traffic. Implement advanced technologies such as NextGen systems, satellite-based navigation, and collaborative decision-making tools to enhance safety and efficiency in the national airspace system.

- __Implementing Operational Best Practices:__ Develop and implement operational best practices for airlines, including effective fleet management, crew scheduling optimization, and contingency planning for maintenance and logistical disruptions. Emphasize proactive maintenance programs, efficient turnaround processes, and robust communication channels to minimize operational disruptions and maximize on-time performance.

- __Enhancing Customer Communication and Support:__ Improve customer communication and support mechanisms to keep passengers informed about flight delays, cancellations, and alternative travel options. Implement robust passenger assistance programs, flexible rebooking policies, and proactive notification systems to minimize inconvenience and provide timely updates to affected travelers.

- __Strengthening Regulatory Oversight:__ Enhance regulatory oversight and enforcement mechanisms to ensure compliance with safety standards, operational guidelines, and passenger rights regulations. Collaborate with industry stakeholders to develop and implement regulatory reforms aimed at improving transparency, accountability, and reliability in flight operations.

- __Promoting Collaborative Partnerships:__ Foster collaboration and partnerships among airlines, airports, air traffic control authorities, government agencies, and industry stakeholders to address systemic issues and implement holistic solutions. Establish industry-wide task forces, working groups, and forums to facilitate knowledge sharing, best practice dissemination, and collective problem-solving efforts.

- __Investing in Training and Development:__ Invest in training and development programs for aviation professionals, including pilots, air traffic controllers, maintenance technicians, and ground staff. Emphasize continuous learning, skill development, and crisis management training to enhance operational resilience and decision-making capabilities in handling flight delays and cancellations.

By implementing these recommendations, airlines, airports, regulatory authorities, and industry stakeholders can work together to address the challenges of flight delays and cancellations, improve operational efficiency, enhance passenger experience, and ensure the safety and reliability of air travel.


## Thank You For Following Through!
