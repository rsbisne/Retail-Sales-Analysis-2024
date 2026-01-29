-- What is the Total number of Orders after Data Cleaning?
SELECT COUNT(Order_ID) FROM `Annual_Analysis_Report.Annual _dataset_2024`;

-- What are the Total number of Orders in each Region and Arrange it from highest to lowest?
SELECT Region, Count(Region) as Total_Orders FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region
ORDER BY COUNT(Region) DESC;

-- How many different Products are there?
SELECT COUNT(Distinct Product) FROM `Annual_Analysis_Report.Annual _dataset_2024`;

-- How many different Categories are there?
SELECT COUNT(Distinct Category) FROM `Annual_Analysis_Report.Annual _dataset_2024`;

-- How many different Stores are there?
SELECT COUNT(Distinct Store) FROM `Annual_Analysis_Report.Annual _dataset_2024`;

-- How many Sales Representative are there?
SELECT COUNT(Distinct Sales_Representative ) FROM `Annual_Analysis_Report.Annual _dataset_2024`;

-- 5 Highest Profit Order_ID and their Details?
SELECT * FROM `Annual_Analysis_Report.Annual _dataset_2024`
ORDER BY Profit DESC
LIMIT 5;

-- 5 Lowest Profit Order_ID and their Details?
SELECT * FROM `Annual_Analysis_Report.Annual _dataset_2024`
ORDER BY Profit ASC
LIMIT 5;