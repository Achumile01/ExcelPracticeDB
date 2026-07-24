## ExcelPracticeDB

## Overview

ExcelPracticeDB is a SQL Server project created to practice SQL queries and data analysis using a sample e-commerce dataset. The project focuses on analyzing user behavior, product performance, and marketing traffic sources.

The database demonstrates SQL skills commonly used by data analysts, including filtering, grouping, aggregations, views, and reporting.

## Objectives

- Analyze user events such as page views and purchases.
- Identify the most viewed and most purchased products.
- Measure the performance of different traffic sources.
- Create reusable SQL views for reporting.
- Practice writing SQL queries for business insights.

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Microsoft Excel (for charts and dashboards)
- GitHub


## Database Structure

The project includes the following SQL scripts:

SQL/
├── CreateDatabase.sql
├── CreateTables.sql
├── InsertData.sql
├── Views.sql
└── Queries.sql


## Views Created

The project contains several SQL views, including:

- **vw_MostPurchasedProducts**
  - Displays the products with the highest number of purchases.

- **vw_MostViewedProducts**
  - Displays the products with the highest number of page views.

- **vw_TrafficSourcePerformance**
  - Summarizes the number of page views and purchases by traffic source.

- **vw_PaidAdsProductViews**
  - Shows the products viewed through paid advertising.

## Sample SQL Analysis

Examples of analysis performed include:

- Most purchased products
- Most viewed products
- Purchases by traffic source
- Views by traffic source
- Product popularity
- Paid advertising performance
- User activity analysis

## Skills Demonstrated

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- COUNT()
- DISTINCT
- CASE
- Aggregate Functions
- SQL Views
- Data Analysis
- Reporting

## Dataset

The project uses a CSV dataset containing user interactions on an e-commerce website.

The dataset includes information such as:

- User ID
- Product ID
- Event Type (page_view, purchase, etc.)
- Traffic Source
- Timestamps

The CSV file was imported into SQL Server using the SQL Server Import and Export Wizard.

## Project Purpose

This project was created to strengthen SQL skills and build a portfolio for Data Analyst roles. It demonstrates how SQL can be used to extract meaningful business insights from user event data.

## Author

Achumile Somdaka

GitHub: https://github.com/Achumile01
