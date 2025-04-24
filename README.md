# Walmart Purchase Analytics - SQL Queries

This repository contains a set of SQL queries written for analyzing customer purchasing behavior in a Walmart dataset. The queries utilize aggregate functions, subqueries, views, and indexing for performance optimization.

## Query Descriptions

### 1. **Total Purchase by Product Category**
- Filters users aged between 25 and 50.
- Groups by product category and sums total purchases.
- Sorted in descending order of purchase value.

### 2. **Gender-wise Purchase in Each City**
- Calculates total purchase amounts grouped by gender and city category.

### 3. **Age Group Wise Average and Total Purchases**
- Retrieves the average and total purchases for each age group.

### 4. **Users Who Spent More Than the Average**
- Subquery used to compare individual user spend to the overall average purchase.
- Returns users whose total purchases exceed the average.

### 5. **Create View: Age and Gender-wise Purchase**
- A view `age_gender_wise_purchase` is created to summarize purchase totals grouped by age and gender.

### 6. **Indexes to Optimize Queries**
- Indexes created on:
  - `User_ID`
  - `Product_Category`
  - `Age`
- Helps improve query performance.
- Existing indexes are also shown.

### 7. **Most Purchased Product Category by Age Group**
- Groups by age and product category.
- Shows total purchases ordered by age and then by total purchase in descending order.

### 8. **Users Who Stayed in the City > 2 Years & Spent > 500**
- Filters users based on their city stay duration and spending amount.

### 9. **Average Purchase by Occupation**
- Computes average purchase amount for each occupation.

### 10. **Age Group 25–34: Users Who Purchased More Than Group’s Average**
- For users aged 25 to 34, returns those who spent more than the average for their group.

## Notes
- These queries assume a table named `walmart` with relevant fields such as `User_ID`, `Product_Category`, `Purchase`, `Age`, `Gender`, `Occupation`, and `Stay_In_Current_City_Years`.
- Indexes are created to optimize filtering and grouping operations.


