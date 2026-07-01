# Auckland-Airbnb-Data-Analytics-Project
End-to-end Data Analytics project using Excel, SQL, and Power BI.
## 📌 Project Overview

This project demonstrates an end-to-end Data Analytics workflow using **Excel**, **SQL Server**, and **Power BI**. The objective was to transform raw Airbnb listing data from Auckland, New Zealand into an interactive business intelligence dashboard that provides meaningful insights into pricing, occupancy, host performance, customer ratings, and revenue.

The project follows the complete analytics lifecycle:

- Data Cleaning
- Data Import into SQL Server
- SQL Data Analysis
- Data Modeling
- Power BI Dashboard Development
- DAX Measure Creation
- Business Insight Generation

---

# 📊 Dashboard Preview

## Executive Dashboard

<img width="1403" height="951" alt="executivedashboard" src="https://github.com/user-attachments/assets/6df25db2-0d6f-4737-b0f6-ff543de33a74" />



---

## Revenue Analysis

<img width="287" height="216" alt="totalrevenue and listing" src="https://github.com/user-attachments/assets/f32b3c1a-4550-42fa-a7fc-7b7291c9785b" />


---

## Host Performance
<img width="1413" height="910" alt="hostanalysis" src="https://github.com/user-attachments/assets/fb822756-7820-4a20-b4ed-75140717ce26" />


---

## Property Analysis

<img width="1372" height="946" alt="locationanalysis" src="https://github.com/user-attachments/assets/8096949a-7cb9-495d-a554-817855396450" />

# 🎯 Project Objectives

The main goals of this project were to:

- Clean and prepare Airbnb data
- Import cleaned data into SQL Server
- Perform exploratory data analysis using SQL
- Build an optimized Power BI data model
- Create reusable DAX measures
- Design an interactive dashboard
- Generate business insights for decision-making

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|------|----------|
| Microsoft Excel | Data Cleaning & Preparation |
| SQL Server | Database Management & Analysis |
| SQL | Data Querying |
| Power BI | Dashboard Development |
| DAX | KPI & Measure Creation |
| Git & GitHub | Version Control & Portfolio |

---

# 📂 Repository Structure

```
Auckland-Airbnb-Data-Analytics-Project
│
├── Dataset
│   ├── Auckland_Airbnb_Raw_Data.xlsx
│   └── Auckland_Airbnb_Cleaned.xlsx
│
├── SQL
│   ├── 01_Create_Table.sql
│   ├── 02_Data_Cleaning.sql
│   ├── 03_Exploratory_Analysis.sql
│   └── 04_Business_Queries.sql
│
├── PowerBI
│   ├── Auckland_Airbnb_Dashboard.pbix
│   └── Dashboard.pdf
│
├── Images
│   ├── Dashboard_Overview.png
│   ├── Revenue_Page.png
│   ├── Host_Analysis.png
│   └── Property_Analysis.png
│
├── Documentation
│   ├── DAX_Measures.md
│   ├── Data_Dictionary.md
│   └── Project_Report.pdf
│
└── README.md
```

---

# 🔄 Project Workflow

```
Raw Excel Dataset
        │
        ▼
Data Cleaning in Excel
        │
        ▼
Import into SQL Server
        │
        ▼
SQL Data Exploration
        │
        ▼
Load Data into Power BI
        │
        ▼
Create Relationships
        │
        ▼
Develop DAX Measures
        │
        ▼
Interactive Dashboard
        │
        ▼
Business Insights
```

---

# 🧹 Data Cleaning

The following preprocessing steps were performed:

- Removed duplicate records
- Handled missing values
- Corrected data types
- Standardized column names
- Removed unnecessary columns
- Verified data quality
- Prepared dataset for SQL import

---

# 🗄 SQL Analysis

The cleaned dataset was imported into SQL Server for exploratory analysis.

### SQL Tasks

- Created database tables
- 
CREATE TABLE [dbo].[AirbnbListings](
	[listing_id] [float] NULL,
	[listing_name] [nvarchar](255) NULL,
	[host_id] [float] NULL,
	[host_name] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[neighborhood] [nvarchar](255) NULL,
	[property_type] [nvarchar](255) NULL,
	[room_type] [nvarchar](255) NULL,
	[price_per_night] [money] NULL,
	[cleaning_fee] [money] NULL,
	[service_fee] [money] NULL,
	[bedrooms] [float] NULL,
	[bathrooms] [float] NULL,
	[beds] [float] NULL,
	[accommodates] [float] NULL,
	[max_nights] [float] NULL,
	[min_nights] [float] NULL,
	[booked_nights] [float] NULL,
	[availability] [float] NULL,
	[no_of_reviews] [float] NULL,
	[overall_rating] [float] NULL,
	[host_response_rate] [float] NULL,
	[superhost] [nvarchar](255) NULL,
	[amenities_count] [float] NULL,
	[last_review_date] [datetime] NULL,
	[total_fee_per_stay] [money] NULL,
	[estimated_booked_revenue] [money] NULL



- Imported Airbnb dataset
- --Import cleaned csv file to sql to practice some queries 

select * from AirbnbListings

 -- check total rows in dataset
select count (*) from AirbnbListings

--lets explore data now

select top 10 * from AirbnbListings
- 
- Performed data validation

SELECT *
FROM AirbnbListings
WHERE price_per_night IS NULL;


--any duplicate listing
SELECT
Listing_id,
COUNT(*)
FROM AirbnbListings
GROUP BY Listing_id
HAVING COUNT(*) > 1;


- Executed analytical SQL queries

### Sample Business Questions

- Which neighbourhood generates the highest revenue?
- What is the average nightly price?
- Which hosts have the highest ratings?
- Which property types are most profitable?
- What is the average occupancy rate?
- Which listings receive the most reviews?

---

# 📈 Power BI Dashboard

The SQL output was connected to Power BI where an interactive dashboard was developed.

### Dashboard Features

- KPI Cards
- Interactive Filters
- Slicers
- Bar Charts
- Line Charts
- Pie Charts
- Scatter Plots
- Drill-down Analysis
- Cross Filtering

---

# 📐 DAX Measures
<img width="912" height="732" alt="Screenshot 2026-07-02 014051" src="https://github.com/user-attachments/assets/ea3b7ac1-73c2-4ed2-9c04-3c56e6ef4410" />

Some of the measures created include:

- Total Revenue
- Total Listings
- Total Booked Nights
- Average Price
- Average Rating
- Occupancy Rate
- Revenue per Listing
- Revenue per Booked Night
- Superhost Percentage
- Average Response Rate
- Average Cleaning Fee
- Total Reviews
- Highest Revenue
- Lowest Revenue

---

# 🎛 Interactive Slicers

The dashboard includes dynamic filters for:

- Neighbourhood
- Property Type
- Room Type
- Bedrooms
- Price per Night
- Overall Rating
- Superhost Status
- Guest Capacity

---

# 💡 Key Business Insights

Some of the insights generated include:

- Auckland CBD generated the highest overall revenue.
- Entire homes achieved higher average nightly prices.
- Superhosts generally maintained higher customer ratings.
- Listings with more amenities tended to receive better reviews.
- Higher prices did not always correspond to higher occupancy.
- Certain neighbourhoods showed stronger booking demand throughout the year.

---

# 📊 Skills Demonstrated

### Data Analytics

- Data Cleaning
- Exploratory Data Analysis
- Data Validation
- Data Transformation

### SQL

- SELECT
- GROUP BY
- ORDER BY
- Aggregate Functions
- Joins

### Power BI

- Data Modeling
- Relationships
- DAX
- KPI Development
- Dashboard Design
- Interactive Reporting

### Professional Skills

- Business Intelligence
- Data Visualization
- Problem Solving
- Storytelling with Data
- Documentation

---

# 🚀 Future Improvements

Possible future enhancements include:

- Connect to live Airbnb API data
- Publish reports to Power BI Service
- Add forecasting models
- Implement Row-Level Security (RLS)
- Create advanced DAX calculations
- Automate data refresh using Power BI Gateway

---

# 📥 How to Use



1. Open the SQL scripts and execute them in SQL Server.

2. Open the Power BI (.pbix) file.

3. Refresh the data model.

4. Explore the interactive dashboard.

---

# 📚 Learning Outcomes

This project demonstrates practical experience with:

- End-to-End Data Analytics
- SQL Query Development
- Power BI Dashboard Design
- Business Intelligence Reporting
- Data Storytelling
- GitHub Portfolio Development

---

# 👨‍💻 Author

**Abhishek Thappa**

 Data Analyst intern | SQL | Power BI | Excel | Python

GitHub: https://github.com/AbhiThappa/Auckland-Airbnb-Data-Analytics-Project.git)

LinkedIn: www.linkedin.com/in/abhishek-thappa1122

---

## ⭐ If you found this project useful, consider giving it a star!
