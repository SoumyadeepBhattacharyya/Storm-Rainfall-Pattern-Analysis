CREATE DATABASE meteorology_project;
USE meteorology_project;

SELECT * FROM storm_rainfall_pattern_analysis;
SELECT * FROM storm_rainfall_pattern_analysis LIMIT 10;

-- State-wise total rainfall

SELECT State, SUM(Rainfall_mm) AS Total_Rainfall FROM storm_rainfall_pattern_analysis GROUP BY State ORDER BY Total_Rainfall DESC;

-- Average rainfall per district

SELECT District, AVG(Rainfall_mm) AS Avg_Rainfall FROM storm_rainfall_pattern_analysis GROUP BY District ORDER BY Avg_Rainfall DESC;

-- Find extreme events (heavy storms)

SELECT * FROM storm_rainfall_pattern_analysis WHERE Rainfall_Category = 'Very Heavy' ;

-- State-wise average and maximum rainfall

SELECT State, AVG(Rainfall_mm) AS Avg_Rainfall, MAX(Rainfall_mm) AS Max_Rainfall FROM storm_rainfall_pattern_analysis GROUP BY State ORDER BY Avg_Rainfall DESC;

-- Districts with zero or missing rainfall data

SELECT * FROM storm_rainfall_pattern_analysis WHERE Rainfall_mm IS NULL OR Rainfall_mm = 0;

-- Count of storm events by type

SELECT Storm_Event, COUNT(*) AS Occurrences FROM storm_rainfall_pattern_analysis GROUP BY Storm_Event ORDER BY Occurrences DESC;

-- Rainfall category distribution

SELECT Rainfall_Category, COUNT(*) AS No_of_Records FROM storm_rainfall_pattern_analysis GROUP BY Rainfall_Category ORDER BY No_of_Records DESC;

-- Top 10 districts with heaviest rainfall

SELECT District, MAX(Rainfall_mm) AS Max_Rainfall FROM storm_rainfall_pattern_analysis GROUP BY District ORDER BY Max_Rainfall DESC LIMIT 10;






