# OLTP & OLAP Integrated Retail Data Warehouse

## Overview
This lab simulates a real-world retail data pipeline integrating Online Transaction Processing (OLTP) with Online Analytical Processing (OLAP). It demonstrates the full lifecycle of data from daily transactional operations to analytical insights for business intelligence.

## Project Objectives
- Design an OLTP schema optimized for daily retail operations.
- Build an OLAP star schema for fast, complex analytics.
- Perform ETL (Extract, Transform, Load) to move and transform data from OLTP to OLAP.
- Execute analytical queries to extract business insights such as sales trends and top products.

## Project Structure
- `/oltp_schema/`: SQL scripts defining the OLTP transactional database tables (customers, products, stores, transactions).
- `/sample_data/`: SQL or CSV files for inserting sample data into OLTP tables.
- `/olap_schema/`: SQL scripts defining the OLAP star schema tables (dimensions and fact tables).
- `/etl_scripts/`: SQL scripts implementing the ETL process from OLTP to OLAP.
- `/queries/`: SQL scripts for analytical queries on the OLAP data warehouse.
- `README.md`: This documentation file.
- `Questions.md`: Reflection questions related to OLTP and OLAP design considerations.

## Step-by-Step Workflow
1. **Design OLTP Schema:** Create normalized tables to capture daily sales transactions and business entities.
2. **Insert Sample Data:** Populate OLTP tables with sample customer, product, store, and transaction data.
3. **Build OLAP Star Schema:** Create denormalized dimension and fact tables optimized for analysis.
4. **Run ETL Process:** Extract data from OLTP, transform it for analytical needs, and load into OLAP tables.
5. **Run Analytical Queries:** Query the OLAP warehouse to gain insights like monthly sales trends and top-selling products.

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
