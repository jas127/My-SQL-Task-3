-- 1. Total Purchase by Product Category (Using GROUP BY, ORDER BY)
SELECT Product_Category, SUM(Purchase) AS total_purchase
FROM walmart
WHERE Age BETWEEN 25 AND 50
GROUP BY Product_Category
ORDER BY total_purchase DESC;

-- 2. Gender-wise Purchase in Each City (Using GROUP BY and Aggregate Function)
SELECT Gender, City_Category, SUM(Purchase) AS total_purchase
FROM walmart
GROUP BY Gender, City_Category;

-- 3. Age Group Wise Average and Total Purchases
SELECT Age, AVG(Purchase) AS avg_purchase, SUM(Purchase) AS total_purchase
FROM walmart GROUP BY Age;

-- 4. Subquery: Users Who Spent More Than the Average Purchase
SELECT User_ID, SUM(Purchase) AS total_spent
FROM walmart
GROUP BY User_ID
HAVING total_spent > (SELECT AVG(Purchase) FROM walmart);

-- 5. Create a View for Total Purchase by Age and Gender
CREATE VIEW age_gender_wise_purchase AS
SELECT Age, Gender, SUM(Purchase) AS total_purchase
FROM walmart
GROUP BY Age, Gender;

-- 6. Indexes to Optimize Queries
CREATE INDEX index_user ON walmart(User_ID);
CREATE INDEX index_product ON walmart(Product_Category);
CREATE INDEX index_age ON walmart(Age);
SHOW INDEXES FROM walmart;

-- 7. Most Purchased Product Category by Age Group
SELECT Age, Product_Category, SUM(Purchase) AS total_purchase
FROM walmart
GROUP BY Age, Product_Category
ORDER BY Age, total_purchase DESC;

-- 8. Users Who Stayed in the City > 2 Years & Spent > 500
SELECT User_ID, Stay_In_Current_City_Years, SUM(Purchase) AS total_spent
FROM walmart
WHERE Stay_In_Current_City_Years > 2
GROUP BY User_ID, Stay_In_Current_City_Years
HAVING total_spent > 500;

-- 9. Average Purchase by Occupation
SELECT Occupation, AVG(Purchase) AS avg_purchase
FROM walmart
GROUP BY Occupation;

-- 10. Age Group 25–34: Users Who Purchased More Than Their Group’s Average
SELECT User_ID, Age, SUM(Purchase) AS total_spent
FROM walmart
WHERE Age BETWEEN 25 AND 34
GROUP BY User_ID, Age
HAVING total_spent > (
    SELECT AVG(Purchase) FROM walmart WHERE Age BETWEEN 25 AND 34
);










