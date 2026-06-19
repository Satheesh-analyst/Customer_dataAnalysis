**Customer Behavior Analysis Dashboard**

An end-to-end data analytics project that cleans, stores, queries, and visualizes customer purchasing data — combining Python, MySQL, and Power BI into a single interactive dashboard for stakeholder decision-making.

Show Image


Project Overview

This project analyzes ~3,900 customer transaction records to uncover patterns in demographics, spending behavior, subscription status, and product performance. The goal is to turn raw shopping data into clear, actionable insight for business stakeholders.

Workflow: Raw CSV → Python (clean & validate) → MySQL (structured storage & querying) → Power BI (interactive dashboard)


Tools & Tech Stack

ToolPurposePython (Pandas, Jupyter)Data loading, cleaning, missing-value imputationSQLAlchemyConnecting Python to MySQLMySQL / MySQL WorkbenchStructured storage and business queryingPower BIInteractive dashboard and visualization


Dataset

The dataset contains customer transaction and behavioral attributes:

Customer ID, Age, Gender, Item Purchased, Category, Purchase Amount, Location, Size, Color, Season, Review Rating, Subscription Status, Shipping Type, Discount Applied, Promo Code Used, Previous Purchases, Payment Method, Frequency of Purchases


Rows: 3,900
Columns: 18
Missing values found: 37 (in Review Rating) — imputed using category-wise median



Project Workflow

1. Data Cleaning (Python - pandas)


Loaded the raw CSV with Pandas and inspected structure (df.info(), df.head())
Identified 37 missing values in Review Rating
Imputed missing values using the category-wise median to preserve distribution
Validated data types and removed duplicates


2. Database Integration (SQLAlchemy → MySQL)


Connected to MySQL using SQLAlchemy
Loaded the cleaned DataFrame into a customer table inside the customer_behavior database
Verified the load with a direct SQL read-back


3. Business Analysis (SQL)

Key queries written in MySQL Workbench:


Revenue by Gender — total revenue grouped by customer gender
Subscription Status vs. Spend — customer count, average spend, and total revenue by subscription status
Top-Selling Items by Category — used ROW_NUMBER() OVER (PARTITION BY ...) to rank items within each category by order volume


4. Dashboard (Power BI)

An interactive dashboard built on the cleaned dataset, featuring:


KPIs: Total Customers (3.9K), Average Purchase Amount ($59.76), Average Review Rating (3.75)
Charts: Revenue by Category, Revenue by Age Group, Review Rating by Category, % of Customers by Subscription Status
Filters: Age Category, Subscription Status, Category, Shipping Type



Key Insights


The customer base totals approximately 3,900 customers
Average spend per customer is just under $60
A small set of product categories drive a disproportionate share of revenue
Subscription status correlates with measurable differences in spending behavior
Seasonal trends meaningfully affect purchase volume and timing
Age demographics reveal distinct spending segments



Repository Structure

customer-behavior-analysis/
├── report/
│   └── Customer_Behavior_Analysis_Report.docx
│── data/
│   └── customer_shopping_data.csv
├── LICENSE
├── README.md
├── notebooks/
│   └── customer_behavior_analysis.ipynb
├── dashboard/
│   └── customer_behavior_dashboard.pbix
├── sql/
    └── customer_behavior_kpi_analysis.sql


How to Run This Project


Clone the repo


bash   git clone https://github.com/<your-username>/customer-behavior-analysis.git
   cd customer-behavior-analysis


Set up Python environment


bash   pip install pandas sqlalchemy pymysql


Run the cleaning notebook
Open notebooks/data_cleaning.ipynb in Jupyter and run all cells to clean the raw CSV and load it into MySQL.
Run the SQL queries
Open sql/analysis_queries.sql in MySQL Workbench (update your connection credentials first).
Open the dashboard
Open dashboard/customer_behavior_dashboard.pbix in Power BI Desktop to explore the visuals interactively.



Full Report

A detailed write-up of the methodology, screenshots, and business recommendations is available in report/Customer_Behavior_Analysis_Report.pdf


Author

Satheesh E
Data Analyst
🔗 LinkedIn · www.linkedin.com/in/satheesh-theodd1
