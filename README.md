# Pizza_sales_dashboard

# Pizza Sales Data Analysis and Visualization

## Overview

This repository features an SQL KPI Query that serves as the foundation for a comprehensive dashboard designed to analyze and visualize pizza sales data. The dashboard incorporates insightful trends and patterns, complemented by interactive charts and graphs. The goal is to facilitate a deeper understanding and effective communication of the derived data insights.

## Key Performance Indicators (KPIs)

- Total Revenue
- Total Pizza Sold
- Average Order Value
- Total Order
- Average Pizza per Order

## Charts

- Hourly Trends for Total Orders
- Weekly Trends for Total Orders
- Percentage of Sales by Pizza Category
- Percentage of Sales by Pizza Size
- Total Pizza Sold by Pizza Category
- Top 5 Best Sellers by Revenue, Quantity, and Total Orders
- Bottom 5 Best Sellers by Revenue, Quantity, and Total Orders

## Data Analysis Using SQL

### 1. Total Revenue
```sql
SELECT SUM(total_price) AS Total_revenue FROM pizza_sales;

