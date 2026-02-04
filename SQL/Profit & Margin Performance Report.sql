-- Top Profitable Products
SELECT Product,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Product
ORDER BY ROUND(SUM(Profit)) DESC;

-- Profit Margin on Order_ID from Highest to Lowest
SELECT Order_ID, (SUM(Profit/Sales_Value)*100) as Profit_Margin FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Order_ID
ORDER BY (SUM(Profit/Sales_Value)*100) DESC;

-- Top 50 Profitable Margins in Orders with details
SELECT Order_ID,Category,Product,Sales_Representative,Region,Store,(SUM(Profit/Sales_Value)*100) as Profit_Margin 
FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Order_ID,Category,Product,Sales_Representative,Region,Store
ORDER BY (SUM(Profit/Sales_Value)*100) DESC
LIMIT 50;

-- Top 5 Profitable Products
SELECT Product,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Product
ORDER BY ROUND(SUM(Profit)) DESC
LIMIT 5;

-- Top Profitable Regions
SELECT Region,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region
ORDER BY ROUND(SUM(Profit)) DESC;

-- Top 2 Profitable Regions
SELECT Region,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region
ORDER BY ROUND(SUM(Profit)) DESC
LIMIT 2;

-- Top Profitable Sales Representatives
SELECT Sales_Representative,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Sales_Representative
ORDER BY ROUND(SUM(Profit)) DESC;

-- Top 10 Profitable Sales Representatives
SELECT Sales_Representative,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Sales_Representative
ORDER BY ROUND(SUM(Profit)) DESC
LIMIT 10;

-- Top Profitable Stores
SELECT Store,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Store
ORDER BY ROUND(SUM(Profit)) DESC;

-- Top 4 Profitable Stores
SELECT Store,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Store
ORDER BY ROUND(SUM(Profit)) DESC
LIMIT 4;

-- Top Profitable Categories
SELECT Category,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Category
ORDER BY ROUND(SUM(Profit)) DESC;

-- Best Profitable Product Group By Product,Region,& Category
SELECT Product,Region,Category,ROUND(SUM(Profit)) as Total_Profit FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region,Category,Product
ORDER BY ROUND(SUM(Profit)) DESC
LIMIT 3;

-- Discount & Profit By Group
SELECT Product,Round(SUM(Profit))as Total_Profit,Round(SUM(Sales_Value))as Total_Revenue,(SUM(Discount_Pct))as Total_Discount, Round(SUM(Sales_Value-Profit))as Total_Cost
FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Product
ORDER BY (SUM(Discount_Pct)) DESC;