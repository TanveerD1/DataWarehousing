# Retail Data Warehouse Improvement

This project builds a mini data warehouse for a fictional retail company to analyze sales performance by product, store, and time.

## Contents

- `full_retail_dw_script.sql`: Complete script for table creation, data loading, and analytical queries.
- `*.csv`: Dimension and fact data files.
- `schema.sql`: Table creation scripts
- `load_data.sql`: SQL commands to load data from CSVs
- `queries.sql`: Sample analytical queries
- `*.csv`: Dimension and fact data

## How to Use

1.  Set up a PostgreSQL database.
2.  Ensure your CSV files (`dim_date.csv`, `dim_product.csv`, `dim_store.csv`, `fact_sales.csv`) are located in the same directory as this script, or update the paths within `full_retail_dw_script.sql`.
3.  Open `full_retail_dw_script.sql` in pgAdmin's Query Tool.
4.  Execute the entire script to drop existing tables, create new ones, load data, and run sample analytical queries.

## Connecting PostgreSQL to VS Code and Querying

VS Code can be a powerful tool for interacting with your PostgreSQL database.

### 1. Install Necessary VS Code Extensions

Open VS Code, go to the Extensions view (Ctrl+Shift+X or Cmd+Shift+X), and install:

* **PostgreSQL** (by Microsoft or by Chris Kolon)
* **SQLTools** (by Matheus Teixeira) and its **PostgreSQL/Redshift** driver.

### 2. Configure a New Database Connection (using SQLTools)

1.  Open the SQLTools view in VS Code (usually an icon in the left sidebar, or Ctrl+Alt+S / Cmd+Option+S).
2.  Click on `Add New Connection` or the `+` icon in the Connections panel.
3.  Choose `PostgreSQL/Redshift` as the database driver.
4.  Fill in your connection details:
    * **Connection Name:** Give it a descriptive name (e.g., `Retail DW Local`).
    * **Host:** `localhost` (or your PostgreSQL server IP/hostname).
    * **Port:** `5432` (default PostgreSQL port).
    * **Username:** Your PostgreSQL username (e.g., `postgres`).
    * **Password:** Your PostgreSQL password.
    * **Database:** The name of your database (e.g., `retail_dw`).
5.  Click `Test Connection` to ensure it works, then `Save Connection`.

### 3. Querying from VS Code

1.  In the SQLTools view, right-click on your newly created connection and select `Connect`.
2.  Once connected, you can:
    * **Browse Database Objects:** Expand your connection to view databases, schemas, tables, views, etc.
    * **Open a new SQL Query File:** Click the `New Query` button in the SQLTools panel, or create a new `.sql` file in your workspace (File > New File, save as `my_queries.sql`).
    * **Run Queries:** Type your SQL queries in the `.sql` file. Select the specific query you want to run, then right-click and choose `Run Query` or use the associated keyboard shortcut (often Ctrl+Enter / Cmd+Enter).
    * **View Results:** Query results will appear in a new tab or panel within VS Code.

## Team Members

-   Tanveer Omar (@TanveerD1)
-   Calvin Gacheru 670035 (@Campeon254)
-   Samantha Masake (@SamanthaMasaki)
-   Arlen Ngahu (@ArlenNgahu)
-   PatriciaKiarie (@PatriciaKiarie04)
-   Susan Otieno 670501 (@suezan884)

## License

MIT License
