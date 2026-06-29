# 📊 Customer Behavior Analysis Dashboard

> An end-to-end data analytics project that transforms raw customer shopping data into actionable business insights using **Python, MySQL, and Power BI**.

---

## 📖 Project Overview

This project analyzes customer purchasing behavior by integrating **Python** for data cleaning, **MySQL** for data storage and business analysis, and **Power BI** for interactive dashboard visualization.

The objective is to help stakeholders understand customer demographics, spending patterns, subscription behavior, and product performance through data-driven insights.

---

## 🔄 Project Workflow

```text
Raw CSV Dataset
       │
       ▼
Python (Pandas)
Data Cleaning & Validation
       │
       ▼
MySQL
Data Storage & Business Analysis
       │
       ▼
Power BI
Interactive Dashboard & Business Insights
```

---

## 🛠️ Tech Stack

| Tool                     | Purpose                       |
| ------------------------ | ----------------------------- |
| Python (Pandas, Jupyter) | Data Cleaning & Preprocessing |
| SQLAlchemy               | Database Connectivity         |
| MySQL                    | Data Storage & SQL Analysis   |
| Power BI                 | Dashboard & Visualization     |

---

## 📂 Repository Structure

```text
customer-behavior-analysis/
│
├── data/
│   └── customer_shopping_data.csv
│
├── notebooks/
│   └── customer_behavior_analysis.ipynb
│
├── sql/
│   └── customer_behavior_kpi_analysis.sql
│
├── dashboard/
│   └── customer_behavior_dashboard.pbix
│
├── report/
│   └── Customer_Behavior_Analysis_Report.pdf
│
├── README.md
└── LICENSE
```

---

## 📊 Dataset Summary

| Feature                |                           Value |
| ---------------------- | ------------------------------: |
| Total Records          |                           3,900 |
| Total Columns          |                              18 |
| Missing Values         |                              37 |
| Missing Value Strategy | Category-wise Median Imputation |

### Dataset Includes

* Customer Demographics
* Product Categories
* Purchase Amount
* Subscription Status
* Review Ratings
* Seasonal Purchases
* Payment Methods
* Shipping Types
* Purchase Frequency

---

## 🔍 Project Workflow

### 1. Data Cleaning (Python)

* Loaded and explored the dataset using Pandas.
* Identified missing values.
* Imputed missing review ratings using category-wise median.
* Removed duplicates and validated data types.

### 2. Database Integration (MySQL)

* Connected Python to MySQL using SQLAlchemy.
* Loaded the cleaned dataset into a MySQL database.
* Verified successful data import.

### 3. Business Analysis (SQL)

Performed SQL analysis including:

* Revenue by Gender
* Customer Spending Analysis
* Subscription Behavior
* Product Performance
* Category-wise Revenue
* Top Selling Products
* Customer Purchase Trends
* Window Function Analysis

### 4. Dashboard Development (Power BI)

Developed an interactive dashboard featuring:

* KPI Cards
* Revenue Analysis
* Customer Demographics
* Category Performance
* Review Rating Analysis
* Interactive Filters & Slicers

---

## 📈 Dashboard KPIs

* 👥 Total Customers
* 💰 Average Purchase Amount
* ⭐ Average Review Rating
* 📦 Revenue by Category
* 👤 Revenue by Age Group
* 🔄 Subscription Status Analysis

---

## 💡 Key Business Insights

* The dataset contains approximately **3,900 customer transactions**.
* Average customer spending is approximately **$59.76** per purchase.
* A small number of product categories contribute the majority of revenue.
* Subscription customers show different purchasing behavior compared to non-subscribers.
* Seasonal purchasing patterns significantly influence sales.
* Customer age groups exhibit distinct spending habits.

---

## 🚀 How to Run

### Clone the Repository

```bash
git clone https://github.com/<your-username>/customer-behavior-analysis.git
cd customer-behavior-analysis
```

### Install Dependencies

```bash
pip install pandas sqlalchemy pymysql
```

### Run the Project

1. Open the Jupyter Notebook and execute all cells.
2. Load the cleaned dataset into MySQL.
3. Execute the SQL analysis scripts.
4. Open the Power BI dashboard (`.pbix`) to explore the interactive visualizations.

---

## 🎯 Skills Demonstrated

* Data Cleaning
* Data Validation
* Data Transformation
* SQL Querying
* Database Design
* Window Functions
* Business KPI Analysis
* Data Visualization
* Dashboard Development
* Business Intelligence

---

## 📌 Future Enhancements

* Predict Customer Churn
* Customer Lifetime Value (CLV) Modeling
* Sales Forecasting
* Automated ETL Pipeline
* Real-Time Dashboard Refresh

---

## 👨‍💻 Author

**Satheesh**

Aspiring Data Analyst

**Skills:** Python • MySQL • Power BI • Excel

🔗 **LinkedIn:** https://www.linkedin.com/in/satheesh-theodd1

---

## ⭐ Support

If you found this project useful, please consider giving it a **⭐ Star** on GitHub.
