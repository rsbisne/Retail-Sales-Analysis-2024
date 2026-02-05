-- Best Product
SELECT Product,COUNT(Product)as Count_of_Products ,ROUND(SUM(Sales_Value)) as Total_Sales_Value,ROUND(SUM(Profit)) as Total_Profit_Value
FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Product
ORDER BY ROUND(SUM(Profit)),ROUND(SUM(Sales_Value)),COUNT(Product) DESC
Limit 1;

-- Best Region
SELECT Region,COUNT(Region)as Count_of_Regions ,ROUND(SUM(Sales_Value)) as Total_Sales_Value,ROUND(SUM(Profit)) as Total_Profit_Value
FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Region
ORDER BY ROUND(SUM(Profit)),ROUND(SUM(Sales_Value)),COUNT(Region) DESC
Limit 1;

-- Best Category
SELECT Category, COUNT(Category) as Count_of_Category ,ROUND(SUM(Sales_Value)) as Total_Sales_Value ,ROUND(SUM(Profit)) as Total_Profit_Value
FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Category
ORDER BY ROUND(SUM(Profit)),ROUND(SUM(Sales_Value)),COUNT(Category) DESC
Limit 1;

-- Best Sales Representative
SELECT Sales_Representative,COUNT(Sales_Representative)as Count_of_Sales_Representatives, ROUND(SUM(Sales_Value))as Total_Sales_Value,
ROUND(SUM(Profit))as Total_Profit_Value
FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Sales_Representative
ORDER BY ROUND(SUM(Profit)),ROUND(SUM(Sales_Value)),COUNT(Sales_Representative) DESC
Limit 1;

-- Best Store
SELECT Store,COUNT(Store)as Number_of_Stores ,ROUND(SUM(Sales_Value)) as Total_Sales_Value,ROUND(SUM(Profit)) as Total_Profit_Value
FROM `Annual_Analysis_Report.Annual _dataset_2024`
GROUP BY Store
ORDER BY ROUND(SUM(Profit)),ROUND(SUM(Sales_Value)),COUNT(Store) DESC
Limit 1;