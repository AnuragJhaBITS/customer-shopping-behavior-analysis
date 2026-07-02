# Customer Shopping Behavior Analysis

An end-to-end Data Analytics project that analyzes customer shopping behavior using **Python**, **PostgreSQL**, **SQL**, and **Power BI**.

The project focuses on understanding customer purchasing patterns, identifying high-value customer segments, evaluating sales trends, and generating business recommendations through interactive dashboards.

---

## Project Overview

This project analyzes over **3,900 customer purchase records** to answer key business questions related to:

- Customer demographics
- Product preferences
- Revenue analysis
- Subscription behavior
- Customer loyalty
- Discounts & promotions
- Shopping trends
- Sales performance

The objective is to transform raw transactional data into actionable business insights for decision-makers.

---

## Tech Stack

- Python
- Pandas
- NumPy
- PostgreSQL
- SQL
- Power BI
- Git & GitHub

---

## Project Workflow

```
Raw Dataset
      │
      ▼
Python
(Data Cleaning & Feature Engineering)
      │
      ▼
PostgreSQL
(Database & SQL Analysis)
      │
      ▼
Power BI
(Interactive Dashboard)
      │
      ▼
Business Insights & Recommendations
```

---

## Data Preparation (Python)

Performed data preprocessing using Pandas:

- Imported and explored the dataset
- Handled missing values
- Renamed columns using snake_case
- Feature engineering
  - Age Groups
  - Purchase Frequency
- Removed redundant features
- Loaded cleaned dataset into PostgreSQL

---

## SQL Analysis

Performed business-oriented SQL analysis including:

- Revenue by Gender
- High-Spending Discount Users
- Top Rated Products
- Shipping Type Comparison
- Subscriber vs Non-Subscriber Analysis
- Customer Segmentation
- Discount Dependency Analysis
- Revenue by Age Group
- Repeat Buyer Analysis
- Top Products by Category

---

## Power BI Dashboard

The dashboard provides interactive visualizations including:

- KPI Cards
  - Total Customers
  - Average Purchase Amount
  - Average Review Rating

- Revenue by Category
- Sales by Category
- Revenue by Age Group
- Sales by Age Group
- Subscription Distribution

Interactive slicers include:

- Gender
- Category
- Shipping Type
- Subscription Status

---

## Key Business Insights

- Clothing category generated the highest revenue.
- Loyal customers contributed significantly to overall sales.
- Express shipping customers showed slightly higher average purchase values.
- Certain products relied heavily on discounts for sales.
- Young Adults generated the highest revenue among all age groups.
- Customer subscriptions presented opportunities for increasing long-term retention.

---

## Business Recommendations

- Strengthen customer loyalty programs.
- Offer exclusive subscription benefits.
- Optimize discount strategies to protect profit margins.
- Promote top-rated products through targeted marketing.
- Personalize campaigns for high-value customer segments.

---

## Repository Structure

```
customer-shopping-behavior-analysis/
│
├── data/
│   ├── raw_dataset.csv
│   └── cleaned_dataset.csv
│
├── python/
│   ├── data_cleaning.py
│   └── feature_engineering.py
│
├── sql/
│   ├── schema.sql
│   ├── data_import.sql
│   └── business_queries.sql
│
├── powerbi/
│   └── customer_behavior_dashboard.pbix
│
├── report/
│   └── Customer Shopping Behavior Analysis.pdf
│
├── screenshots/
│   └── dashboard.png
│
├── README.md
└── requirements.txt
```

---

## Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- Feature Engineering
- SQL Query Writing
- Database Management
- Business Intelligence
- Dashboard Development
- Data Visualization
- Business Analytics
- Customer Segmentation

---

## Future Improvements

- Customer Lifetime Value (CLV) Analysis
- RFM Segmentation
- Sales Forecasting using Machine Learning
- Recommendation System
- Customer Churn Prediction
- Automated ETL Pipeline

---

## Author

**Anurag Jha**

BITS Pilani, Hyderabad Campus

Interested in:
- Data Analytics
- Business Intelligence
- Financial Analytics
- Data Science

Feel free to connect and share feedback!
