# Ecommerce-performance-analytics
📌 Project Overview
This project involves the development of an end-to-end data pipeline to analyze 1.3 million records of Brazilian E-commerce data (Olist). The goal was to transform raw, fragmented CSV files into a structured PostgreSQL warehouse and deliver an interactive Power BI dashboard to uncover correlations between logistics performance and customer satisfaction.

🚀 Tech Stack
Data Processing: Python (Pandas)

Database: PostgreSQL

ETL Connection: SQLAlchemy, Psycopg2

Business Intelligence: Power BI (DAX, Power Query)

Data Modeling: Star Schema (1:N Relationships)

🛠️ Data Pipeline Architecture
Extraction: Ingested 9 relational datasets (Customers, Orders, Items, Products, etc.) using Python.

Transformation (ETL):

Cleaned geospatial data by removing 700k+ duplicate zip code prefixes to enable accurate mapping.

Handled missing values in delivery timestamps to ensure calculation accuracy.

Loading: Migrated cleaned data into a PostgreSQL server using an automated Python script.

Modeling: Built a Star Schema in Power BI with a dedicated Date Table for time-intelligence analysis.

📊 Key Business Insights
Logistics Efficiency: Successfully verified a 93% On-Time Delivery Rate across all orders.

Delivery Variance: Orders are delivered an average of 10 days earlier than the estimated date, though performance varies significantly by state (e.g., SP vs. RR).

Customer Satisfaction: Identified a direct correlation between delivery delays and lower review scores (Average Rating: 4.09/5.00).

Revenue Growth: Implemented Year-over-Year (YoY) growth metrics to track e-commerce scaling trends.

📂 Repository Structure
notebooks/: Jupyter Notebook containing the initial EDA and cleaning logic.

scripts/: Python ETL script for PostgreSQL database ingestion.

sql/: SQL queries used for data verification and schema auditing.

dashboard/: The .pbix Power BI file and a PDF report of the findings.

⚙️ How to Run
Database: Create a database named olist_db in PostgreSQL.

Python: Run pip install pandas sqlalchemy psycopg2. Execute the ETL script to load CSVs into SQL.

Power BI: Open the .pbix file and update the data source settings to point to your local PostgreSQL server.

👤 Author
Sayan Bhattacharjee Microsoft Certified: Power BI Data Analyst Associate
