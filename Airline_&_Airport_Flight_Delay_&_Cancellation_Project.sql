-- ETL Process Using MS Sql Server:
-- 1. Added a new column "Month_New" from the "Month" column in flights table to display the names of the month (January - December) using the "Update" and "Set query".
-- 2. Added another column "Day_of_Week_New" from the "Day_of_Week" column in the flights table to display the days of the week (Sunday - Saturday) using the "Update" and "Set query".
-- 3. Created a new column "Merged_Date" in the flight table which comprises of the the "YEAR", "MONTH" and "DAY_OF_WEEK" columns merged together to have a complete date view.
-- 4. Drop the "YEAR", "MONTH" and "DAY_OF_WEEK" columns.
-- 5. Added another column named "Cancellation_Reason_Details" in the flights table which matches codes from the "Cancellation_Reason" table with the description in the "Cancellation_Description" column of the "cancellation code" table to fill the new column.
-- 6. Changed all the columns to the right column types.

Select * From dbo.flights

-- 1. Added a new column __"Month_New"__ from the __"Month"__ column in __flights__ table to display the names of the 
-- month (January - December) using the "Update" and "Set query".
ALTER TABLE dbo.flights
ADD Month_New VARCHAR(20);
Select * From dbo.flights

UPDATE flights
SET Month_New = CASE Month
                    WHEN 1 THEN 'January'
                    WHEN 2 THEN 'February'
                    WHEN 3 THEN 'March'
                    WHEN 4 THEN 'April'
                    WHEN 5 THEN 'May'
                    WHEN 6 THEN 'June'
                    WHEN 7 THEN 'July'
                    WHEN 8 THEN 'August'
                    WHEN 9 THEN 'September'
                    WHEN 10 THEN 'October'
                    WHEN 11 THEN 'November'
                    WHEN 12 THEN 'December'
                    ELSE 'Unknown'
                END;
Select * From dbo.flights


-- 2. Added another column __"Day_of_Week_New"__ from the __"Day_of_Week"__ column in the __flights__ table to display the days 
-- of the week (Sunday - Saturday) using the "Update" and "Set query".
ALTER TABLE flights
ADD Day_of_Week_New VARCHAR(20);
Select * From dbo.flights

UPDATE flights
SET Day_of_Week_New = CASE Day_of_Week
                            WHEN 1 THEN 'Sunday'
                            WHEN 2 THEN 'Monday'
                            WHEN 3 THEN 'Tuesday'
                            WHEN 4 THEN 'Wednesday'
                            WHEN 5 THEN 'Thursday'
                            WHEN 6 THEN 'Friday'
                            WHEN 7 THEN 'Saturday'
                            ELSE 'Unknown'
                        END;
Select * From dbo.flights

-- 3. Created a new column "Merged_Date" in the flight table which comprises of the the "YEAR", "MONTH" and "DAY_OF_WEEK" columns merged together to have a complete date view.
ALTER TABLE flights
ADD Merged_Date DATE;

UPDATE flights
SET Merged_Date = CAST(CONCAT(YEAR, '-', MONTH, '-', DAY_OF_WEEK) AS DATE)
Select * From dbo.flights


-- 4. Drop the "YEAR", "MONTH" and "DAY_OF_WEEK" columns
ALTER TABLE flights
DROP COLUMN YEAR, MONTH, DAY_OF_WEEK
Select * From dbo.flights


-- 5. Added another column named "Cancellation_Reason_Details" in the flights table which matches codes from the "Cancellation_Reason" table with the description in the "Cancellation_Description" column of the "cancellation code" table to fill the new column.
ALTER TABLE flights
ADD Cancellation_Reason_Details VARCHAR(30)
Select * From dbo.flights

UPDATE flights
SET Cancellation_Reason_Details = CASE CANCELLATION_REASON
                                      WHEN 'A' THEN 'Airline/Carrier'
									  WHEN 'B' THEN 'Weather'
									  WHEN 'C' THEN 'National Air System'
									  WHEN 'D' THEN 'Security'
									  ELSE ' '
								  END
Select * From dbo.flights


-- 6. Changed all the columns to the right column types.
ALTER TABLE flights
ALTER COLUMN Day INT
ALTER TABLE flights
ALTER COLUMN AIRLINE TEXT
ALTER TABLE flights
ALTER COLUMN FLIGHT_NUMBER TEXT
ALTER TABLE flights
ALTER COLUMN TAIL_NUMBER TEXT
ALTER TABLE flights
ALTER COLUMN ORIGIN_AIRPORT TEXT
ALTER TABLE flights
ALTER COLUMN DESTINATION_AIRPORT TEXT
ALTER TABLE flights
ALTER COLUMN SCHEDULED_DEPARTURE INT
ALTER TABLE flights
ALTER COLUMN DEPARTURE_TIME INT
ALTER TABLE flights
ALTER COLUMN DEPARTURE_DELAY INT
ALTER TABLE flights
ALTER COLUMN TAXI_OUT INT
ALTER TABLE flights
ALTER COLUMN WHEELS_OFF INT
ALTER TABLE flights
ALTER COLUMN SCHEDULED_TIME INT
ALTER TABLE flights
ALTER COLUMN ELAPSED_TIME INT
ALTER TABLE flights
ALTER COLUMN AIR_TIME INT
ALTER TABLE flights
ALTER COLUMN DISTANCE INT
ALTER TABLE flights
ALTER COLUMN WHEELS_ON INT
ALTER TABLE flights
ALTER COLUMN TAXI_IN INT
ALTER TABLE flights
ALTER COLUMN SCHEDULED_ARRIVAL INT
ALTER TABLE flights
ALTER COLUMN ARRIVAL_TIME INT
ALTER TABLE flights
ALTER COLUMN ARRIVAL_DELAY INT
ALTER TABLE flights
ALTER COLUMN DIVERTED INT
ALTER TABLE flights
ALTER COLUMN CANCELLED INT
ALTER TABLE flights
ALTER COLUMN AIR_SYSTEM_DELAY INT
ALTER TABLE flights
ALTER COLUMN SECURITY_DELAY INT
ALTER TABLE flights
ALTER COLUMN AIRLINE_DELAY INT
ALTER TABLE flights
ALTER COLUMN LATE_AIRCRAFT_DELAY INT
ALTER TABLE flights
ALTER COLUMN WEATHER_DELAY INT
ALTER TABLE flights
ALTER COLUMN CustomerComplain INT
ALTER TABLE flights
ALTER COLUMN CustomerComplain INT
Select * From flights