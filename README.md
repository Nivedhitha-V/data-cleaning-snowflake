# Sales Data Cleaning & Analysis Project using Snowflake 

A simple yet powerful Data Engineering mini-project where raw, messy global sales data is **cleaned**, **transformed**, and **analyzed** using **SQL** and **Power BI**. Ideal for showcasing beginner to intermediate DE skills.

---

## Table of Contents

- [Dataset](#-dataset)
- [Cleaning Process](#-cleaning-process)
- [Analysis](#-analysis)
- [Project Files](#-project-files)
- [Tools Used](#-tools-used)
- [Connect](#-connect)

---

## Dataset

- **Type:** Global Sales Data  
- **Format:** CSV  
- **File:** `sales__data_sample.csv`  
- **Fields Include:**  
  - Order details (ID, quantity, price, etc..)  
  - Customer information  
  - Product metadata  
  - Dates in mixed formats  
  - Phone numbers  

---

## Cleaning Process

Cleaning steps performed using **SQL** in **Snowfalke**:

-  Standardized date formats (`MM/DD/YYYY`, `MM-DD-YYYY` → `YYYY-MM-DD`)
-  Converted text data (e.g., `status` column to UPPER CASE)
-  Cleaned phone numbers (removed symbols and whitespace)
-  Removed duplicates and null rows

 Output stored in: `sales_cleaned.csv`

---

## Analysis

Basic business analysis using SQL and optional Power BI dashboarding:

-  **Top 5 customers by total sales**
-  **Monthly sales trends**
-  **Sales by product line**
-  **Oders with Quantity > 50**
-  **Yearly Sales**


---

## Project Files

| File | Description |
|------|-------------|
| `sales_data_sample.csv`        | Raw input sales data |
| `sales_cleaned.csv`     | Cleaned and transformed dataset |
| `cleaning.sql`          | SQL queries for cleaning  |
| `analysing.sql`          | SQL queries for analysing |

---

##  Tools Used

-  **Snowflake SQL** – Data cleaning & querying  
-  **Power BI** – Optional business insights visualization  
-  **GitHub** – Version control & collaboration  
-  **SQL Logic** – Applied best practices for real-world data wrangling  

---

## Connect

This project demonstrates foundational Data Engineering skills, from raw file ingestion to clean, analysis-ready output.

Feel free to **star** the repo or **fork** for practice or extension!

Made with 💙 by Nivedhitha V 
[Github](https://github.com/Nivedhitha-V)
[Email](nivedhithav0407@gmail.com)
[LinkedIn](https://www.linkedin.com/in/nivedhitha-v/)
