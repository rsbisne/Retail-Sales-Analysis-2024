-- Top Performing Products
SELECT Product,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Product
ORDER BY ROUND(SUM(Sales_Value)) DESC;

-- Top 5 Performing Products
SELECT Product,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Product
ORDER BY ROUND(SUM(Sales_Value)) DESC
LIMIT 5;

-- Top Performing Regions
SELECT Region,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region
ORDER BY ROUND(SUM(Sales_Value)) DESC;

-- Top 2 Performing Regions
SELECT Region,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region
ORDER BY ROUND(SUM(Sales_Value)) DESC
LIMIT 2;

-- Top Performing Sales Representatives
SELECT Sales_Representative,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Sales_Representative
ORDER BY ROUND(SUM(Sales_Value)) DESC;

-- Top 10 Performing Sales Representatives
SELECT Sales_Representative,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Sales_Representative
ORDER BY ROUND(SUM(Sales_Value)) DESC
LIMIT 10;

-- Top Performing Stores
SELECT Store,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Store
ORDER BY ROUND(SUM(Sales_Value)) DESC;

-- Top 4 Performing Stores
SELECT Store,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Store
ORDER BY ROUND(SUM(Sales_Value)) DESC
LIMIT 4;

-- Top Performing Categories
SELECT Category,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Category
ORDER BY ROUND(SUM(Sales_Value)) DESC;

-- Best Performing Product Group By Product,Region,& Category
SELECT Product,Region,Category,ROUND(SUM(Sales_Value)) as Total_Sales_Value FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region,Category,Product
ORDER BY ROUND(SUM(Sales_Value)) DESC
LIMIT 3;