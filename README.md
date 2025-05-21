# Retail Data Warehouse

This project builds a mini data warehouse for a fictional retail company to analyze sales performance by product, store, and time.

## Contents

- `full_retail_dw_script.sql`: Complete script for table creation, data loading, and analytical queries.
- `*.csv`: Dimension and fact data files.

## How to Use

1.  Set up a PostgreSQL database.
2.  Ensure your CSV files (`dim_date.csv`, `dim_product.csv`, `dim_store.csv`, `fact_sales.csv`) are located in the same directory as this script, or update the paths within `full_retail_dw_script.sql`.
3.  Open `full_retail_dw_script.sql` in pgAdmin's Query Tool.
4.  Execute the entire script to drop existing tables, create new ones, load data, and run sample analytical queries.

## Team Members

- Tanveer Omar (@TanveerD1)
- Calvin Gacheru 670035 (@Campeon254)
- Samantha Masake (@SamanthaMasaki)
- Arlen Ngahu (@ArlenNgahu)
- PatriciaKiarie (@PatriciaKiarie04)

## License

MIT License
