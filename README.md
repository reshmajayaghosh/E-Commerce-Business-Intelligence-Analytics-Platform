# E-Commerce-Business-Intelligence-Analytics-Platform

> An end-to-end Business Intelligence solution that transforms raw e-commerce transactional data into executive-level insights using Python, SQL, and Power BI.

---

# Executive Summary

This project simulates the role of a Business/Data Analyst working for a multi-category e-commerce company. The objective was to analyze business performance, identify operational inefficiencies, understand customer behavior, and provide data-driven recommendations that support executive decision-making.

The project follows a complete analytics workflow—from data cleaning and dimensional data modeling to SQL analytics and interactive Power BI dashboards—demonstrating practical Business Intelligence skills used in real-world organizations.

---

# Business Problem

The company is experiencing several business challenges:

- Growing sales but inconsistent profitability
- Delayed deliveries affecting customer satisfaction
- Difficulty identifying high-value customers
- Limited visibility into seller performance
- Lack of centralized executive reporting

The objective was to build a Business Intelligence platform that enables stakeholders to monitor key performance indicators (KPIs), identify business opportunities, and make informed strategic decisions.

---

# Business Objectives

The project was designed to answer the following business questions:

### Sales Analytics
- Which product categories generate the highest revenue?
- Which regions contribute the most sales?
- How do sales trends change over time?

### Customer Analytics
- Who are the most valuable customers?
- Which customers are at risk of churn?
- How many customers are repeat buyers?

### Operational Analytics
- Which regions experience delivery delays?
- Which sellers consistently underperform?
- How does delivery performance affect customer satisfaction?

### Profitability Analytics
- Which categories generate high revenue but low profit?
- What is the impact of freight cost on profitability?
- Which business areas require optimization?

---

# Dataset

**Dataset:** Olist Brazilian E-Commerce Dataset : https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

The dataset contains approximately 100,000+ transactional records and represents a real-world multi-category e-commerce business.

### Files Used

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews
- Geolocation
- Product Category Translation

---

# Technology Stack

| Tool | Purpose |
|------|----------|
| Python (Pandas) | Data cleaning & preprocessing |
| PostgreSQL | Data warehouse & SQL analytics |
| SQL | Data analysis |
| Power BI | Dashboard development |
| GitHub | Version control & portfolio |

---

# Project Architecture

```
Raw CSV Files
        │
        ▼
Python Data Cleaning
        │
        ▼
SQL Data Warehouse
        │
        ├── Dimension Tables
        │
        ├── Fact Table
        │
        ▼
SQL Analytics
        │
        ▼
Power BI Dashboard
        │
        ▼
Executive Business Insights
```

---

# Data Warehouse Design

The project follows a **Star Schema** to support analytical reporting.

### Fact Table

- fact_sales

### Dimension Tables

- dim_customer
- dim_product
- dim_seller
- dim_date

This structure improves query performance, simplifies reporting, and follows standard Business Intelligence practices.

---

# Data Preparation

Data preprocessing included:

- Handling missing values
- Removing duplicates
- Standardizing data formats
- Translating product categories
- Creating calculated business fields

### Derived Columns

- Delivery Days
- Late Delivery Flag
- Order Value
- Estimated Profit
- Profit Margin

Since the original dataset does not include product cost, an estimated profit metric was created using documented business assumptions.

---

# SQL Analytics

Advanced SQL was used to perform business analysis across multiple domains.

### Sales Analytics

- Monthly revenue trend
- Top-performing categories
- Regional sales analysis
- Product performance

### Customer Analytics

- RFM Analysis
- Customer segmentation
- Repeat customer analysis
- Customer lifetime insights

### Delivery Analytics

- Average delivery time
- Late delivery percentage
- Region-wise delivery performance
- Seller delivery analysis

### Profitability Analytics

- Profit by category
- Profit margin analysis
- Freight cost impact
- High revenue–low margin products

### SQL Concepts Demonstrated

- Joins
- CTEs
- Window Functions
- Aggregate Functions
- CASE Statements
- Ranking Functions
- Date Analysis
- Grouping & Filtering

---

# Power BI Dashboard

The interactive dashboard consists of five pages.

## 1. Executive Overview

KPIs

- Revenue
- Profit
- Profit Margin
- Orders
- Customers
- Average Order Value
- Average Delivery Time

Visuals

- Revenue Trend
- Profit Trend
- Regional Performance

---

## 2. Sales & Product Analytics

- Category Performance
- Product Performance
- Sales Trends
- Regional Sales

---

## 3. Customer Intelligence

- RFM Segmentation
- Repeat Customers
- Customer Distribution
- Customer Value Analysis

---

## 4. Logistics & Delivery Analytics

- Delivery Performance
- Late Deliveries
- Seller Analysis
- Shipping Performance

---

## 5. Profitability Analysis

- Profit by Category
- Margin Analysis
- Freight Cost Impact
- Strategic Recommendations

---

# Dashboard Features

- Interactive slicers
- Dynamic filtering
- Drill-through
- Tooltips
- KPI Cards
- DAX Measures
- Cross-page interactions

---

# Key Performance Indicators (KPIs)

- Revenue
- Profit
- Profit Margin
- Orders
- Customers
- Average Order Value
- Average Delivery Time
- Late Delivery Percentage
- Repeat Customers

---

# Key Business Insights

- Certain product categories generate high revenue but lower profit due to increased freight costs.
- Delivery delays negatively impact customer satisfaction and review ratings.
- A relatively small group of loyal customers contributes a significant share of revenue.
- Seller performance varies considerably across regions.
- Operational inefficiencies directly influence overall profitability.

---

# Business Recommendations

### Improve Seller Performance

Monitor underperforming sellers and establish delivery performance targets.

### Optimize Freight Costs

Reduce logistics expenses in regions with consistently high shipping costs.

### Increase Customer Retention

Target loyal and high-value customers with personalized campaigns.

### Focus on Profitability

Prioritize categories that provide sustainable profit rather than revenue alone.

### Enhance Operational Efficiency

Reduce delivery delays through logistics optimization and seller monitoring.

---

# Skills Demonstrated

### Business Intelligence

- KPI Design
- Executive Reporting
- Business Storytelling
- Decision Support

### SQL

- Data Warehousing
- Joins
- CTEs
- Window Functions
- Aggregations
- Ranking
- Data Modeling

### Python

- Data Cleaning
- Data Validation
- Feature Engineering
- Data Transformation

### Power BI

- Data Modeling
- DAX
- Interactive Dashboards
- KPI Design
- Drill-through
- Tooltips

---

# Future Enhancements

Potential future improvements include:

- Sales Forecasting
- Customer Cohort Analysis
- Automated Data Refresh
- Cloud-based Data Warehouse
- Real-time Dashboard Integration

---

# Conclusion

This project demonstrates an end-to-end Business Intelligence workflow by integrating Python, SQL, and Power BI to transform raw transactional data into actionable executive insights. It highlights practical skills in data preparation, dimensional modeling, SQL analytics, dashboard development, and business storytelling, reflecting the responsibilities of a Business/Data Analyst in a real-world environment.

---

# Contact

**Name:** Reshma P J

**LinkedIn:** [https://linkedin.com/in/yourprofile](https://www.linkedin.com/in/reshma-pj/)

**GitHub:** (https://github.com/reshmajayaghosh?tab=repositories)
