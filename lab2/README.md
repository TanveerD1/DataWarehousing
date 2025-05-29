
# OLTP & OLAP Integrated Retail Data Warehouse
## Overview
This lab simulates a real-world retail data pipeline integrating Online Transaction Processing (OLTP) with Online Analytical Processing (OLAP). It demonstrates the full lifecycle of data from daily transactional operations to analytical insights for business intelligence.

## Project Objectives
- Design an OLTP schema optimized for daily retail operations.
- Build an OLAP star schema for fast, complex analytics.
- Perform ETL (Extract, Transform, Load) to move and transform data from OLTP to OLAP.
- Execute analytical queries to extract business insights such as sales trends and top products.

## Project Structure
This lab's contents are organized into the following folders and files:

- `/oltp_schema/`: Contains SQL scripts defining the OLTP transactional database tables (e.g., for customers, products, stores, transactions).
- `/sample_data/`: Contains SQL or CSV files for inserting sample data into the OLTP tables.
- `/olap_schema/`: Contains SQL scripts defining the OLAP star schema tables (e.g., dimension tables like `dim_date`, `dim_product`, `dim_store` and the `fact_sales` table).
- `/etl_scripts/`: Contains SQL scripts implementing the ETL process from OLTP to OLAP.
- `/queries/`: Contains SQL scripts for analytical queries on the OLAP data warehouse.
- `/screenshots/`: Contains image files of query results and other visual outputs.
- `README.md`: This documentation file, providing an overview of the lab.
- `Questions.md`: A Markdown file containing the reflection questions and their answers.

## Step-by-Step Workflow
1. **Design OLTP Schema:** Create normalized tables to capture daily sales transactions and business entities.
2. **Insert Sample Data:** Populate OLTP tables with sample customer, product, store, and transaction data.
3. **Build OLAP Star Schema:** Create denormalized dimension and fact tables optimized for analysis.
4. **Run ETL Process:** Extract data from OLTP, transform it for analytical needs, and load into OLAP tables.
5. **Run Analytical Queries:** Query the OLAP warehouse to gain insights like monthly sales trends and top-selling products.

## Implementation Progress

This lab has been successfully implemented, covering all stages of the data pipeline:

* **OLTP Schema Designed and Created:** The transactional database tables have been successfully designed and created using SQL scripts found in `/oltp_schema/`.
* **Sample Data Inserted:** Sample data has been loaded into the OLTP tables.
* **OLAP Star Schema Built:** The analytical data warehouse, including dimension tables and the `fact_sales` table, has been constructed using scripts in `/olap_schema/`.
* **ETL Process Executed:** The ETL script from `/etl_scripts/` has been run, successfully extracting data from the OLTP system, transforming it, and loading it into the OLAP `fact_sales` table.
* **Analytical Queries Executed:** The sample analytical queries from `/queries/` have been run against the populated OLAP data warehouse, demonstrating insightful results. Screenshots of these results (`total_revenue.png` and `total_units.png`) are included in the `/screenshots/` folder.
* **Reflection Questions Answered:** The `Questions.md` file is included in the repository, containing detailed answers to the reflection questions.

### Analytical Query Results

Screenshots demonstrating the output of the two main analytical queries (Monthly Sales Trends and Top Selling Products) from the `queries/` directory are included below to showcase the insights derived from the OLAP data warehouse. These images are located in the `screenshots/` folder within this repository.

#### 1. Monthly Sales Trends Query Result

![Monthly Sales Trends Query Result](screenshots/total_revenue.png)

#### 2. Top Selling Products Query Result

![Top Selling Products Query Result](screenshots/total_units.png)

---

## Using PostgreSQL with VS Code
- Install PostgreSQL and SQLTools extensions in VS Code.
- Configure connection settings for your local PostgreSQL database.
- Run SQL scripts and queries directly within VS Code using SQLTools.

## Contributors
- Tanveer Omar (@TanveerD1)
- Calvin Gacheru (670035) (@Campeon254)
- Samantha Masake (@SamanthaMasaki)
- Arlen Ngahu (@ArlenNgahu)
- Patricia Kiarie (@PatriciaKiarie04)
- Susan Otieno (670501) (@suezan884)

## License
This project is licensed under the MIT License.
